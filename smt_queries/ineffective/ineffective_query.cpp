#include "z3++.h"
#include <filesystem>
#include <fstream>
#include <functional>
#include <iostream>
#include <map>
#include <regex>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vector>

using namespace z3;
using namespace std;
namespace fs = std::filesystem;

// =====================================================================
// File-text utilities
// =====================================================================

static string json_arr(const vector<long long> &v) {
  ostringstream oss;
  oss << "[";
  for (size_t i = 0; i < v.size(); i++) {
    if (i)
      oss << ",";
    oss << v[i];
  }
  oss << "]";
  return oss.str();
}

static long long eval_i64(model &m, const expr &e) {
  return m.eval(e, true).simplify().get_numeral_int64();
}

string read_file(const string &filename) {
  ifstream ifs(filename);
  if (!ifs) {
    cerr << "Cannot open: " << filename << "\n";
    exit(1);
  }
  return string((istreambuf_iterator<char>(ifs)), istreambuf_iterator<char>());
}

// Find the index of the ')' matching the '(' at position `open`.
// Returns string::npos if unbalanced.
static size_t match_paren(const string &s, size_t open) {
  int depth = 0;
  for (size_t i = open; i < s.size(); i++) {
    if (s[i] == '(')
      depth++;
    else if (s[i] == ')') {
      depth--;
      if (depth == 0)
        return i;
    }
  }
  return string::npos;
}

string strip_bad_asserts(const string &src) {
  regex bad_assert(R"(\(assert\s+and\s*\)\s*)");
  return regex_replace(src, bad_assert, "");
}

string write_suffixed(const string &content, const string &tag,
                       const string &outDir) {
  string result = content;
  regex ident(R"(\b((?:i|c|b)_\d+_[A-Za-z0-9_.]+)\b)");
  result = regex_replace(result, ident, "$1_" + tag);

  string path = outDir + "/" + tag + ".smt2";
  ofstream ofs(path);
  if (!ofs) {
    cerr << "Cannot write " << path << "\n";
    exit(1);
  }
  ofs << result;
  return path;
}

static string swap_correct_faulty(const string &name) {
  string result = name;
  size_t pos = result.rfind("correct");
  if (pos == string::npos)
    throw runtime_error("Expected 'correct' in identifier: " + name);
  result.replace(pos, string("correct").size(), "faulty");
  return result;
}

static void assert_no_overlap(solver &slv, context &ctx, expr startA,
                               long long lenA, expr startB, long long lenB) {
  expr endA = startA + ctx.int_val((int)lenA);
  expr endB = startB + ctx.int_val((int)lenB);
  slv.add(endA <= startB || endB <= startA);
}

static string find_initial_version(const string &src, const string &base,
                                    const string &finalVersion) {
  string current = finalVersion;
  static const regex numRe(R"(c_(\d+)$)");
  while (true) {
    string target = current + "_" + base;
    size_t defPos = src.find("(= " + target);
    if (defPos == string::npos)
      return current;
    size_t assertStart = src.rfind("(assert", defPos);
    if (assertStart == string::npos)
      return current;

    string head = src.substr(assertStart, defPos - assertStart);
    if (head.find("(and (=>") != string::npos)
      return current; // guarded -- this is the true initial version

    size_t end = match_paren(src, assertStart);
    if (end == string::npos)
      return current;
    string block = src.substr(assertStart, end - assertStart + 1);

    smatch m;
    if (!regex_search(current, m, numRe))
      return current;
    int n = stoi(m[1].str());
    string predName = "c_" + to_string(n - 1);
    if (block.find(predName) == string::npos)
      return current;
    current = predName;
  }
}

// Unconditionally deletes the last top-level (assert ...), regardless of
// its content. This is llvmbmc's own final safety-check assert, and we
// never need to parse it: buffer outputs read the true value straight
// out of the final Global_M array (see FunctionSpec's outputIndexVar),
// and scalar outputs read it via the __mbc_ret_anchor_<fn> volatile-store
// anchor (see FunctionSpec's outputAnchorName) -- both survive
// regardless of whatever shape this trailing assert takes.
//
// That shape varies a lot and isn't worth trying to characterize: it can
// be the driver's real GUARD/CONST comparison, something llvmbmc
// constant-folded down to a literal boolean, or (when FUNC_SKIP mode's
// stripOutputAssertions has already removed the driver's own assert
// entirely) just llvmbmc's own generic "no safety property to check"
// boilerplate. In every case it's noise we don't need, and leaving it in
// place risks silently adding a hard, testcase-specific constraint (or
// worse, an unconditional "assert false") to the solver. Always delete
// it instead of trying to interpret it.
static string strip_last_assert(const string &src) {
  size_t pos = src.rfind("(assert");
  if (pos == string::npos)
    return src;
  size_t end = match_paren(src, pos);
  if (end == string::npos)
    return src;
  return src.substr(0, pos) + src.substr(end + 1);
}

// =====================================================================
// Function I/O specification (data-driven replacement for the old
// hardcoded INPUT_SHARED / INPUT_VARIED / OUTPUT_REGION constants).
//
// Offsets/index-vars are still hardcoded per-function for now, per your
// note -- the intent is that these come straight out of llvmbmc's own
// layout output once that's wired up. Nothing else in this file should
// need to change when that happens; only get_function_spec().
// =====================================================================

enum class ArgKind { Scalar, Buffer };
enum class ArgRole { FixedInput, VariedInput }; // buffers may combine with
                                                 // "also read as output" --
                                                 // see isOutputAliased below

struct ArgSpec {
  string name;         // human-readable / debug label
  ArgKind kind;
  ArgRole role;
  string indexVar;     // e.g. "Vdec" -> becomes i_2_Vdec_correct/_faulty in
                        // the smt2; pass the *base* identifier, i.e. the
                        // llvmbmc.var name, not the prefixed/suffixed form
  long long offset = 0;
  long long length = 0;    // only meaningful for Buffer
  long long fixedValue = 11; // only meaningful for role == FixedInput --
                             // the concrete byte value every position in
                             // this region is pinned to (mirrors the old
                             // hardcoded "slv.add(vi == ctx.int_val(1))"
                             // for Vdec). Extend to a per-index vector if
                             // a function needs non-uniform fixed bytes.
};

struct FunctionSpec {
  string fnName;
  vector<ArgSpec> args;

  // Output description. Exactly one of the two forms applies:
  //  - scalar (isScalarOutput = true): the value comes from a dedicated
  //    volatile-store anchor global ("__mbc_ret_anchor_<fn>") that the
  //    driver writes right after the call, independent of whether the
  //    driver's own assert/comparison survives fault injection -- see
  //    outputAnchorName. Used for genuine return-value ("ret") outputs,
  //    where no memory region holds the value.
  //  - buffer (isScalarOutput = false): the value lives at a known,
  //    fixed address in Global_M, exactly like an input region. Used for
  //    both pure-output buffers ("s") and in-place input/output buffers
  //    ("acc") -- the two are identical from this point on, since we
  //    just select() the *final* array version instead of the initial
  //    one. Covers cases 2/3 from the original design discussion.
  bool isScalarOutput = true;
  string outputAnchorName;    // Scalar only: e.g. "__mbc_ret_anchor_lincomb"
                               // -- the base name of the volatile-store
                               // anchor global (see createDynamicDriverFunction
                               // in loop_fn_Fault.cpp). Resolved via
                               // resolve_final_ssa_symbol, not
                               // resolve_index_var, since it's reassigned
                               // (not a fixed pointer).
  string outputIndexVar;   // Buffer only: llvmbmc.var base name
  long long outputOffset = 0; // Buffer only
  long long outputLength = 1; // Buffer only -- how many bytes of the
                               // output region to report in witness.json.
                               // NOTE: this is independent of what the
                               // differential predicate itself checks --
                               // that's still just byte 0 (matching the
                               // driver's own out_actual_i8), same as the
                               // original script. Bump this to the full
                               // buffer size to get the whole array back
                               // in the witness, exactly like the
                               // original OUTPUT_REGION.length did.
  string outputLabel;      // JSON key used in witness.json, e.g. "s" or
                            // "acc". Defaults to outputIndexVar for
                            // buffer outputs, or "ret" for scalar ones,
                            // if left blank -- see witness export below.
};

// Locate the declared SMT identifier for a given llvmbmc.var base name
// (e.g. "Vdec") within a correct/faulty source, honoring the fact that
// llvmbmc numbers these i_<N>_<name>_correct / i_<N>_<name>_faulty and N
// varies per function. We don't know N ahead of time, so search for it.
// Only safe for identifiers declared ONCE (pointers) -- see
// resolve_final_ssa_symbol for values re-assigned along the way (e.g.
// Global_M, or the scalar return-value anchor below).
static string resolve_index_var(const string &src, const string &base,
                                 bool faulty) {
  string suffix = faulty ? "_faulty" : "_correct";
  regex re("i_(\\d+)_" + base + suffix);
  smatch m;
  if (regex_search(src, m, re))
    return m[0].str();
  throw runtime_error("Could not resolve index var for '" + base +
                       "' (looked for i_<N>_" + base + suffix + ")");
}

// Like resolve_index_var, but for identifiers that get re-declared at
// multiple SSA versions as the value changes along the program's guarded
// implications (e.g. "__mbc_ret_anchor_<fn>": i_2_..._correct is its
// initial "= 0" declaration, i_55_..._correct is the final "= <the real
// computed value>" one). Returns the occurrence with the highest numeric
// version, which holds the value after every guarded assignment has had
// a chance to apply -- the same role FINAL_VERSION_CORRECT/FAULTY play
// for Global_M, just discovered dynamically instead of hardcoded.
static string resolve_final_ssa_symbol(const string &src, const string &base,
                                        bool faulty) {
  string suffix = faulty ? "_faulty" : "_correct";
  regex re("i_(\\d+)_" + base + suffix);
  auto begin = sregex_iterator(src.begin(), src.end(), re);
  auto end = sregex_iterator();
  string best;
  long bestN = -1;
  for (auto it = begin; it != end; ++it) {
    long n = stol((*it)[1].str());
    if (n > bestN) {
      bestN = n;
      best = (*it)[0].str();
    }
  }
  if (bestN < 0)
    throw runtime_error("Could not resolve any SSA version for '" + base +
                         "' (looked for i_<N>_" + base + suffix + ")");
  return best;
}

// ---- Example hardcoded specs for the three functions seen so far ----
static FunctionSpec get_function_spec(const string &fn) {
  if (fn == "mat_add") {
    FunctionSpec spec;
    spec.fnName = "mat_add";
    spec.args = {
        {"Vdec", ArgKind::Buffer, ArgRole::FixedInput, "Vdec", 780, 78, 1},
        {"Ox", ArgKind::Buffer, ArgRole::VariedInput, "Ox", 780, 78},
    };
    // "s" is a pure output buffer -- read via select() at the final
    // Global_M version, not via the (fragile, sometimes constant-folded
    // away) final safety-check assert.
    spec.isScalarOutput = false;
    spec.outputIndexVar = "s";
    spec.outputOffset = 858;
    spec.outputLength = 78; // full "s" buffer (78 bytes), for witness.json
    return spec;
  }
  if (fn == "m_vec_add") {
    FunctionSpec spec;
    spec.fnName = "m_vec_add";
    spec.args = {
        {"pk", ArgKind::Buffer, ArgRole::VariedInput, "pk", 0, 8},
        {"accumulator", ArgKind::Buffer, ArgRole::FixedInput, "pk", 0, 8},
    };
    // "accumulator" is in-place input+output: seed it as a FixedInput
    // (add it to `args` too, with its own offset, if the experiment
    // needs to constrain its starting value) and also read it back here
    // as the output -- both point at the same buffer, just at different
    // Global_M versions (init vs final).
    spec.isScalarOutput = false;
    spec.outputIndexVar = "accumulator";
    spec.outputOffset = 18705;
    spec.outputLength = 1; // driver only checks out_actual_i8
    return spec;
  }
  if (fn == "lincomb") {
    FunctionSpec spec;
    spec.fnName = "lincomb";
    spec.args = {
        {"a_buf", ArgKind::Buffer, ArgRole::FixedInput, "a_buf", 0, 8, 11},
        {"x", ArgKind::Buffer, ArgRole::VariedInput, "x", 0, 8},
        // "x"/"b" region intentionally omitted here -- its access pattern
        // isn't a flat contiguous region in this function (see the
        // add.ptr.iterN chain in the smt2); model it with whatever
        // offset/length llvmbmc reports once wired up.
    };
    // lincomb returns its result by value -- no buffer holds it, so we
    // read it back via the volatile-store anchor the driver writes right
    // after the call (see createDynamicDriverFunction), which survives
    // regardless of whether the driver's own assert/comparison does.
    spec.isScalarOutput = true;
    spec.outputAnchorName = "__mbc_ret_anchor_lincomb";
    return spec;
  }
  throw runtime_error("No FunctionSpec registered for '" + fn + "'");
}

int main(int argc, char **argv) {
  if (argc < 2) {
    cerr << "Usage: ./differential_query <fnName>\n";
    return 1;
  }
  string fn = argv[1];
  string fn_path = "../../results/" + fn + "/";
  string correct_path = fn_path + fn + ".smt2";
  string faulty_dir = fn_path + "loopOrFuncSkip/";

  vector<string> faultyCandidates;
  for (const auto &entry : fs::directory_iterator(faulty_dir))
    if (entry.is_regular_file() && entry.path().extension() == ".smt2")
      faultyCandidates.push_back(entry.path().string());
  if (faultyCandidates.empty()) {
    cerr << "No .smt2 file found in " << faulty_dir << "\n";
    return 1;
  }
  // Any candidate works now: buffer outputs are read straight out of
  // Global_M (never depend on the driver's assert), and scalar outputs
  // are read via the __mbc_ret_anchor_<fn> volatile-store anchor, which
  // is written unconditionally right after the call regardless of
  // whether the driver's own comparison survives fault injection (it
  // never does for FUNC_SKIP mode -- stripOutputAssertions runs
  // unconditionally there, not just for whole-call-skip faults as
  // originally assumed). So there's no more need to peek at each
  // candidate's final assert and skip "degenerate" ones.
  string faulty_path = faultyCandidates.front();

  FunctionSpec spec = get_function_spec(fn);

  // The trailing assert is always just noise now -- for buffer outputs
  // it never mattered, and for scalar outputs the anchor makes it
  // irrelevant too (whether it's a real comparison, a constant-folded
  // one, or llvmbmc's own "(assert (not true))" boilerplate for
  // programs with no explicit safety property). Always strip it so it
  // can never sneak in as a hard constraint.
  string correct_src =
      strip_bad_asserts(strip_last_assert(read_file(correct_path)));
  string faulty_src =
      strip_bad_asserts(strip_last_assert(read_file(faulty_path)));

  static const string FINAL_VERSION_CORRECT = "c_93"; // TODO: derive, not hardcode
  static const string FINAL_VERSION_FAULTY = "c_93";
  static const string GLOBAL_BASE_CORRECT = "Global_M_correct";
  static const string GLOBAL_BASE_FAULTY = "Global_M_faulty";

  string INITIAL_VERSION_CORRECT =
      find_initial_version(correct_src, GLOBAL_BASE_CORRECT, FINAL_VERSION_CORRECT);
  string INITIAL_VERSION_FAULTY =
      find_initial_version(faulty_src, GLOBAL_BASE_FAULTY, FINAL_VERSION_FAULTY);

  string c1 = write_suffixed(correct_src, "C1", fn_path);
  string f1 = write_suffixed(faulty_src, "F1", fn_path);
  string c2 = write_suffixed(correct_src, "C2", fn_path);
  string f2 = write_suffixed(faulty_src, "F2", fn_path);

  context ctx;
  tactic simp = z3::tactic(ctx, "simplify");
  tactic eqs = z3::tactic(ctx, "solve-eqs");
  tactic prop = z3::tactic(ctx, "propagate-values");
  tactic core = z3::tactic(ctx, "smt");
  tactic pipeline = simp & prop & eqs & core;

  solver slv = pipeline.mk_solver();

  expr_vector C1 = ctx.parse_file(c1.c_str());
  expr_vector F1 = ctx.parse_file(f1.c_str());
  expr_vector C2 = ctx.parse_file(c2.c_str());
  expr_vector F2 = ctx.parse_file(f2.c_str());
  for (expr e : C1) slv.add(e);
  for (expr e : F1) slv.add(e);
  for (expr e : C2) slv.add(e);
  for (expr e : F2) slv.add(e);

  z3::sort arr_sort = ctx.array_sort(ctx.int_sort(), ctx.int_sort());

  auto init_arr = [&](const string &base, const string &initVer,
                       const string &tag) {
    return ctx.constant((initVer + "_" + base + "_" + tag).c_str(), arr_sort);
  };

  expr initC1 = init_arr(GLOBAL_BASE_CORRECT, INITIAL_VERSION_CORRECT, "C1");
  expr initF1 = init_arr(GLOBAL_BASE_FAULTY, INITIAL_VERSION_FAULTY, "F1");
  expr initC2 = init_arr(GLOBAL_BASE_CORRECT, INITIAL_VERSION_CORRECT, "C2");
  expr initF2 = init_arr(GLOBAL_BASE_FAULTY, INITIAL_VERSION_FAULTY, "F2");

  slv.add(initC1 == initF1);
  slv.add(initC2 == initF2);

  // ---- Pin each Buffer arg's pointer equal across correct/faulty and
  //      across trials 1/2, exactly as the old pin_pointer() did ----
  struct PinnedBuffer {
    const ArgSpec *spec;
    expr pC1, pF1, pC2, pF2;   // pointer values
    expr startC1;              // offset + pointer, used for non-overlap
  };
  vector<PinnedBuffer> buffers;

  for (auto &a : spec.args) {
    if (a.kind != ArgKind::Buffer)
      continue;
    string ivC = resolve_index_var(correct_src, a.indexVar, false);
    string ivF = resolve_index_var(faulty_src, a.indexVar, true);
    expr pC1 = ctx.int_const((ivC + "_C1").c_str());
    expr pF1 = ctx.int_const((ivF + "_F1").c_str());
    expr pC2 = ctx.int_const((ivC + "_C2").c_str());
    expr pF2 = ctx.int_const((ivF + "_F2").c_str());
    slv.add(pC1 == pF1);
    slv.add(pC1 == pC2);
    slv.add(pC1 == pF2);
    expr startC1 = ctx.int_val((int)a.offset) + pC1;
    buffers.push_back({&a, pC1, pF1, pC2, pF2, startC1});
  }

  // Non-overlap between every pair of buffer regions.
  for (size_t i = 0; i < buffers.size(); i++)
    for (size_t j = i + 1; j < buffers.size(); j++)
      assert_no_overlap(slv, ctx, buffers[i].startC1, buffers[i].spec->length,
                         buffers[j].startC1, buffers[j].spec->length);

  // ---- Seed input values per role ----
  expr_vector inputDiffs(ctx);
  for (auto &pb : buffers) {
    const ArgSpec &a = *pb.spec;
    expr startC1 = pb.startC1;

    if (a.role == ArgRole::FixedInput) {
      for (long long i = 0; i < a.length; i++) {
        expr addr = ctx.int_val((int)(a.offset + i)) + pb.pC1;
        expr vi = ctx.int_const((a.name + "_" + to_string(i)).c_str());
        slv.add(select(initC1, addr) == vi);
        slv.add(select(initC2, addr) == vi);
        slv.add(vi == ctx.int_val((int)a.fixedValue)); // was missing --
        // this is what pins e.g. Vdec's bytes to 1, matching the original
        // hardcoded behavior. Without it every FixedInput byte is a free
        // variable, which silently changes what the query is actually
        // asking (usually toward trivial SAT, not UNSAT -- see note below
        // on why the *other* bug was the one that flipped this to UNSAT).
      }
    } else { // VariedInput
      for (long long i = 0; i < a.length; i++) {
        expr addr = ctx.int_val((int)(a.offset + i)) + pb.pC1;
        expr o1i = ctx.int_const((a.name + "_1_" + to_string(i)).c_str());
        expr o2i = ctx.int_const((a.name + "_2_" + to_string(i)).c_str());
        slv.add(select(initC1, addr) == o1i);
        slv.add(select(initC2, addr) == o2i);
        slv.add(o1i >= ctx.int_val(0));
        slv.add(o1i < ctx.int_val(16));
        slv.add(o2i >= ctx.int_val(0));
        slv.add(o2i < ctx.int_val(16));
        if(i==0){
          slv.add(o1i == ctx.int_val(0));
        }
      }
    }
  }

  // ---- Output symbols ----
  expr c1v = ctx.int_val(0), f1v = ctx.int_val(0);
  expr c2v = ctx.int_val(0), f2v = ctx.int_val(0);

  if (spec.isScalarOutput) {
    // "ret" case: read back via the volatile-store anchor -- resolve
    // its FINAL SSA version (it's reassigned along the guarded chain
    // just like Global_M is, so the first regex match would give the
    // initial "= 0" declaration, not the real value).
    string anchC = resolve_final_ssa_symbol(correct_src, spec.outputAnchorName, false);
    string anchF = resolve_final_ssa_symbol(faulty_src, spec.outputAnchorName, true);
    c1v = ctx.int_const((anchC + "_C1").c_str());
    f1v = ctx.int_const((anchF + "_F1").c_str());
    c2v = ctx.int_const((anchC + "_C2").c_str());
    f2v = ctx.int_const((anchF + "_F2").c_str());
  } else {
    // Buffer case: read directly from the final Global_M version, at
    // the output's own (possibly in-place-aliased) pointer + offset --
    // exactly like the original OUTPUT_REGION handling, just data-driven
    // off FunctionSpec instead of a hardcoded ArrayRegion constant.
    string ovC = resolve_index_var(correct_src, spec.outputIndexVar, false);
    string ovF = resolve_index_var(faulty_src, spec.outputIndexVar, true);
    expr outPtrC1 = ctx.int_const((ovC + "_C1").c_str());
    expr outPtrF1 = ctx.int_const((ovF + "_F1").c_str());
    expr outPtrC2 = ctx.int_const((ovC + "_C2").c_str());
    expr outPtrF2 = ctx.int_const((ovF + "_F2").c_str());
    // Same buffer must resolve to the same pointer across trials, same
    // as every other pinned buffer above.
    slv.add(outPtrC1 == outPtrF1);
    slv.add(outPtrC1 == outPtrC2);
    slv.add(outPtrC1 == outPtrF2);

    auto final_arr = [&](const string &base, const string &finVer,
                          const string &tag) {
      return ctx.constant((finVer + "_" + base + "_" + tag).c_str(), arr_sort);
    };
    expr finC1 = final_arr(GLOBAL_BASE_CORRECT, FINAL_VERSION_CORRECT, "C1");
    expr finF1 = final_arr(GLOBAL_BASE_FAULTY, FINAL_VERSION_FAULTY, "F1");
    expr finC2 = final_arr(GLOBAL_BASE_CORRECT, FINAL_VERSION_CORRECT, "C2");
    expr finF2 = final_arr(GLOBAL_BASE_FAULTY, FINAL_VERSION_FAULTY, "F2");

    expr addrC1 = ctx.int_val((int)spec.outputOffset) + outPtrC1;
    expr addrF1 = ctx.int_val((int)spec.outputOffset) + outPtrF1;
    expr addrC2 = ctx.int_val((int)spec.outputOffset) + outPtrC2;
    expr addrF2 = ctx.int_val((int)spec.outputOffset) + outPtrF2;

    c1v = select(finC1, addrC1);
    f1v = select(finF1, addrF1);
    c2v = select(finC2, addrC2);
    f2v = select(finF2, addrF2);
  }

  // Example differential condition (same intent as the original
  // ineffective_query): fault masked in trial 1, diverges in trial 2.
  slv.add(c1v == f1v);
  // slv.add(c2v != f2v);

  cout << "================ SOLVER ================\n";
  cout << slv.assertions().size() << endl;
  check_result res = slv.check();

  if (res == sat) {
    cout << "SAT!\n";
    model m = slv.get_model();
    auto ev = [&](const expr &e) { return m.eval(e, true).simplify(); };

    cout << "-- Output values --\n";
    cout << "  correct[1] = " << ev(c1v) << "  faulty[1] = " << ev(f1v) << "\n";
    cout << "  correct[2] = " << ev(c2v) << "  faulty[2] = " << ev(f2v) << "\n";

    for (auto &pb : buffers) {
      const ArgSpec &a = *pb.spec;
      cout << "\n-- " << a.name << " (role="
           << (a.role == ArgRole::FixedInput ? "fixed" : "varied") << ") --\n";
      if (a.role == ArgRole::FixedInput) {
        for (long long i = 0; i < a.length; i++) {
          expr vi = ctx.int_const((a.name + "_" + to_string(i)).c_str());
          cout << "  [" << i << "] " << ev(vi) << "\n";
        }
      } else {
        for (long long i = 0; i < a.length; i++) {
          expr o1i = ctx.int_const((a.name + "_1_" + to_string(i)).c_str());
          expr o2i = ctx.int_const((a.name + "_2_" + to_string(i)).c_str());
          cout << "  [" << i << "] trial1=" << ev(o1i)
               << " trial2=" << ev(o2i) << "\n";
        }
      }
    }

    // ---------------- witness JSON export ----------------
    // Generalized replacement for the original script's hardcoded
    // Vdec/Ox/s witness block: walks whatever ArgSpecs and output kind
    // this FunctionSpec declares, rather than assuming exactly one
    // fixed input, one varied input, and one buffer output.
    {
      struct FixedVals {
        string name;
        vector<long long> vals;
      };
      struct VariedVals {
        string name;
        vector<long long> v1, v2;
      };
      vector<FixedVals> fixedInputs;
      vector<VariedVals> variedInputs;

      for (auto &pb : buffers) {
        const ArgSpec &a = *pb.spec;
        if (a.role == ArgRole::FixedInput) {
          FixedVals fv{a.name, {}};
          for (long long i = 0; i < a.length; i++)
            fv.vals.push_back(
                eval_i64(m, ctx.int_const((a.name + "_" + to_string(i)).c_str())));
          fixedInputs.push_back(fv);
        } else {
          VariedVals vv{a.name, {}, {}};
          for (long long i = 0; i < a.length; i++) {
            vv.v1.push_back(eval_i64(
                m, ctx.int_const((a.name + "_1_" + to_string(i)).c_str())));
            vv.v2.push_back(eval_i64(
                m, ctx.int_const((a.name + "_2_" + to_string(i)).c_str())));
          }
          variedInputs.push_back(vv);
        }
      }

      // Output values per trial. For scalar ("ret") output this is a
      // single-element list; for buffer output it's outputLength bytes
      // starting at the known offset -- note c1v/f1v/c2v/f2v above only
      // ever captured ONE byte of that region (matching what the
      // driver's own out_actual_i8 checked), so for outputLength > 1 we
      // re-derive the same addressing here to walk every byte.
      vector<long long> out1_correct, out1_faulty, out2_correct, out2_faulty;
      if (spec.isScalarOutput) {
        out1_correct.push_back(eval_i64(m, c1v));
        out1_faulty.push_back(eval_i64(m, f1v));
        out2_correct.push_back(eval_i64(m, c2v));
        out2_faulty.push_back(eval_i64(m, f2v));
      } else {
        string ovC = resolve_index_var(correct_src, spec.outputIndexVar, false);
        string ovF = resolve_index_var(faulty_src, spec.outputIndexVar, true);
        expr outPtrC1 = ctx.int_const((ovC + "_C1").c_str());
        expr outPtrF1 = ctx.int_const((ovF + "_F1").c_str());
        expr outPtrC2 = ctx.int_const((ovC + "_C2").c_str());
        expr outPtrF2 = ctx.int_const((ovF + "_F2").c_str());
        auto final_arr2 = [&](const string &base, const string &finVer,
                               const string &tag) {
          return ctx.constant((finVer + "_" + base + "_" + tag).c_str(),
                               arr_sort);
        };
        expr finC1b = final_arr2(GLOBAL_BASE_CORRECT, FINAL_VERSION_CORRECT, "C1");
        expr finF1b = final_arr2(GLOBAL_BASE_FAULTY, FINAL_VERSION_FAULTY, "F1");
        expr finC2b = final_arr2(GLOBAL_BASE_CORRECT, FINAL_VERSION_CORRECT, "C2");
        expr finF2b = final_arr2(GLOBAL_BASE_FAULTY, FINAL_VERSION_FAULTY, "F2");
        for (long long i = 0; i < spec.outputLength; i++) {
          expr aC1 = ctx.int_val((int)(spec.outputOffset + i)) + outPtrC1;
          expr aF1 = ctx.int_val((int)(spec.outputOffset + i)) + outPtrF1;
          expr aC2 = ctx.int_val((int)(spec.outputOffset + i)) + outPtrC2;
          expr aF2 = ctx.int_val((int)(spec.outputOffset + i)) + outPtrF2;
          out1_correct.push_back(eval_i64(m, select(finC1b, aC1)));
          out1_faulty.push_back(eval_i64(m, select(finF1b, aF1)));
          out2_correct.push_back(eval_i64(m, select(finC2b, aC2)));
          out2_faulty.push_back(eval_i64(m, select(finF2b, aF2)));
        }
      }

      // Label used for the output's JSON key(s), e.g. "s_correct" /
      // "s_faulty" for mat_add, matching the original script's naming.
      string outLabel = !spec.outputLabel.empty() ? spec.outputLabel
                         : spec.isScalarOutput      ? "ret"
                                                     : spec.outputIndexVar;

      string witness_path = fn_path + "witness.json";
      ofstream wj(witness_path);
      wj << "{\n";
      wj << "  \"function\": \"" << fn << "\",\n";
      wj << "  \"layout\": {\n";

      bool lfirst = true;
      for (auto &fv : fixedInputs) {
        wj << (lfirst ? "    " : ",\n    ") << "\"" << fv.name
           << "\": {\"role\": \"input\", \"length\": " << fv.vals.size() << "}";
        lfirst = false;
      }
      for (auto &vv : variedInputs) {
        wj << (lfirst ? "    " : ",\n    ") << "\"" << vv.name
           << "\": {\"role\": \"input\", \"length\": " << vv.v1.size() << "}";
        lfirst = false;
      }
      wj << (lfirst ? "    " : ",\n    ") << "\"" << outLabel
         << "\": {\"role\": \"output\", \"length\": "
         << (spec.isScalarOutput ? 1 : spec.outputLength) << "}\n";
      wj << "  },\n";
      wj << "  \"trials\": [\n";

      auto write_trial = [&](const string &trialId,
                              std::function<vector<long long>(VariedVals &)> pick,
                              vector<long long> &outCorrect,
                              vector<long long> &outFaulty) {
        wj << "    {\n";
        wj << "      \"trial_id\": \"" << trialId << "\",\n";
        wj << "      \"inputs\": {\n";
        bool ifirst = true;
        for (auto &fv : fixedInputs) {
          wj << (ifirst ? "        " : ",\n        ") << "\"" << fv.name
             << "\": " << json_arr(fv.vals);
          ifirst = false;
        }
        for (auto &vv : variedInputs) {
          wj << (ifirst ? "        " : ",\n        ") << "\"" << vv.name
             << "\": " << json_arr(pick(vv));
          ifirst = false;
        }
        wj << "\n      },\n";
        wj << "      \"expected\": {\n";
        wj << "        \"" << outLabel
           << "_correct\": " << json_arr(outCorrect) << ",\n";
        wj << "        \"" << outLabel
           << "_faulty\": " << json_arr(outFaulty) << "\n";
        wj << "      }\n";
        wj << "    }";
      };

      write_trial(
          "exec1_ineffective", [](VariedVals &vv) { return vv.v1; },
          out1_correct, out1_faulty);
      wj << ",\n";
      write_trial(
          "exec2", [](VariedVals &vv) { return vv.v2; },
          out2_correct, out2_faulty);
      wj << "\n";

      wj << "  ]\n";
      wj << "}\n";
      cout << "\n[+] witness exported to " << witness_path << "\n";
    }
  } else if (res == unsat) {
    cout << "UNSAT\n";
    cout << "[!] No differential pair found satisfying the requested "
            "masking/divergence pattern for '" << fn << "'.\n";
  } else {
    cout << "UNKNOWN / TIMEOUT\n";
  }

  return 0;
}