#include "z3++.h"
#include <cctype>
#include <cstring>
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

// Parse the first S-expression (atom or parenthesized list) starting at
// `start` (may have leading whitespace). Returns [begin, end) -- end is
// one past the last character of the S-expr.
static pair<size_t, size_t> first_sexpr(const string &s, size_t start) {
  size_t i = start;
  while (i < s.size() && isspace((unsigned char)s[i]))
    i++;
  size_t begin = i;
  if (i < s.size() && s[i] == '(') {
    size_t end = match_paren(s, i);
    return {begin, end + 1};
  }
  while (i < s.size() && !isspace((unsigned char)s[i]) && s[i] != '(' &&
         s[i] != ')')
    i++;
  return {begin, i};
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

// =====================================================================
// Output-assertion rewriting
//
// llvmbmc's driver always emits the final safety-check assert in one of
// two textually-different but semantically-identical shapes:
//
//   Shape B (direct):
//     (assert ... (not (or (not GUARD) (= EXPR CONST))) ...)
//
//   Shape A (let-bound):
//     (assert (let ((a!1 (or (not GUARD) (= EXPR CONST)))) (not a!1)))
//
// Both encode: GUARD && (EXPR != CONST) -- i.e. "this path was taken and
// the concrete testcase's expected output doesn't match", used to hunt
// counterexamples against ONE specific baked-in CONST.
//
// For the differential query we don't want a specific CONST at all --
// we want EXPR itself, gated by GUARD, bound to a fresh, stable symbol
// so the solver stays free to explore all completions. So we rewrite
// the whole thing to:
//
//     (=> GUARD (= __mbc_output_<tag> EXPR))
//
// which is definitionally exactly what the rest of the file already
// does for every other SSA value (guarded implications along the live
// path), and drop CONST entirely.
// =====================================================================

struct OutputAssertInfo {
  string guard;
  string expr;
  bool viaLet = false;
  string letName;
  size_t replStart = 0, replEnd = 0;   // span of the "or (not ...) (= ...)" itself
  size_t usageStart = 0, usageEnd = 0; // span of "(not <letName>)", if viaLet
};

static bool find_output_assert(const string &src, size_t searchFrom,
                                size_t searchTo, OutputAssertInfo &out) {
  size_t P = src.find("(or (not ", searchFrom);
  if (P == string::npos || P >= searchTo)
    return false;

  size_t orEnd = match_paren(src, P);
  if (orEnd == string::npos)
    return false;

  // GUARD: token right after "(or (not "
  size_t guardStart = P + strlen("(or (not ");
  size_t guardEnd = src.find(')', guardStart);
  if (guardEnd == string::npos)
    return false;
  out.guard = src.substr(guardStart, guardEnd - guardStart);

  // (= EXPR CONST): starts after guard's closing ')'
  size_t eqOpen = src.find("(= ", guardEnd);
  if (eqOpen == string::npos || eqOpen > orEnd)
    return false;
  size_t eqInnerStart = eqOpen + 3;
  auto exprSpan = first_sexpr(src, eqInnerStart);
  out.expr = src.substr(exprSpan.first, exprSpan.second - exprSpan.first);
  // (CONST follows inside the (= ...) form; we intentionally discard it.)

  // ---- Determine wrapping shape ----
  size_t k = P;
  while (k > 0 && isspace((unsigned char)src[k - 1]))
    k--;

  // Shape B: directly "(not " immediately before "(or (not ..."
  if (k >= 5 && src.compare(k - 5, 5, "(not ") == 0) {
    size_t notStart = k - 5;
    size_t notEnd = match_paren(src, notStart);
    if (notEnd != string::npos && notEnd > orEnd) {
      out.viaLet = false;
      out.replStart = notStart;
      out.replEnd = notEnd + 1;
      return true;
    }
  }

  // Shape A: "or ..." is the value half of a let-binding pair
  // "(<name> (or (not ...". `k` (computed above) already points just
  // past the end of <name> -- whitespace before "(or" was already
  // stripped -- so we scan backward from k for the name itself, then
  // confirm it's preceded by the binding-pair's opening '('.
  {
    size_t nameEnd = k;
    size_t nameStart = nameEnd;
    while (nameStart > 0 && !isspace((unsigned char)src[nameStart - 1]) &&
           src[nameStart - 1] != '(')
      nameStart--;
    if (nameStart > 0 && nameStart < nameEnd && src[nameStart - 1] == '(') {
      string name = src.substr(nameStart, nameEnd - nameStart);
      string usagePat = "(not " + name + ")";
      size_t u = src.find(usagePat, orEnd);
      if (u != string::npos) {
        out.viaLet = true;
        out.letName = name;
        out.replStart = P;
        out.replEnd = orEnd + 1;
        out.usageStart = u;
        out.usageEnd = u + usagePat.size();
        return true;
      }
    }
  }

  return false;
}

// Rewrites the final top-level (assert ...) in `src` -- the output
// safety-check emitted by the driver -- into a guarded definitional
// equation for a fresh Int constant "i_0_mbc_output_<tag>", and prepends
// its declaration. `tag` should be "correct" or "faulty" to match the
// existing naming convention (so write_suffixed's per-trial renamer
// picks it up like every other identifier in the file).
static string rewrite_output_assert(const string &src, const string &tag) {
  size_t pos = src.rfind("(assert");
  if (pos == string::npos)
    return src;
  size_t end = match_paren(src, pos);
  if (end == string::npos)
    return src;

  OutputAssertInfo info;
  if (!find_output_assert(src, pos, end, info)) {
    cerr << "[rewrite_output_assert] FATAL: could not locate the scalar "
            "output safety-check pattern in this file. This function's "
            "output was declared 'ret' (scalar) in its FunctionSpec, so "
            "there is no array fallback -- refusing to continue with a "
            "silently-broken output symbol.\n";
    exit(1);
  }

  string outSym = "i_0_mbc_output_" + tag;
  string replacement =
      "(=> " + info.guard + " (= " + outSym + " " + info.expr + "))";

  string result = src;
  if (!info.viaLet) {
    result.replace(info.replStart, info.replEnd - info.replStart, replacement);
  } else {
    // Apply the later edit first so the earlier offset stays valid.
    result.replace(info.usageStart, info.usageEnd - info.usageStart,
                    info.letName);
    result.replace(info.replStart, info.replEnd - info.replStart, replacement);
  }

  string decl = "(declare-fun " + outSym + " () Int)\n";
  return decl + result;
}

// Unconditionally deletes the last top-level (assert ...), regardless of
// its content. Used for Buffer-typed outputs, where we never need to
// parse this assert at all -- the true output value already lives at a
// known, fixed address in the final Global_M array (see FunctionSpec's
// OutputSpec), so this assert's only job is to get out of the way.
//
// Crucially this is *not* conditional on recognizing a particular shape:
// a fault can change control flow enough that llvmbmc constant-folds
// this whole check down to something like "(assert (not true))" --
// literally "assert false" -- and any fallback that leaves such a line
// in place silently forces the entire model UNSAT. Always delete it.
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
  long long fixedValue = 0; // only meaningful for role == FixedInput --
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
  //  - scalar (isScalarOutput = true): the value comes from the driver's
  //    final safety-check assert, extracted via rewrite_output_assert.
  //    Used for genuine return-value ("ret") outputs, where no memory
  //    region holds the value.
  //  - buffer (isScalarOutput = false): the value lives at a known,
  //    fixed address in Global_M, exactly like an input region. Used for
  //    both pure-output buffers ("s") and in-place input/output buffers
  //    ("acc") -- the two are identical from this point on, since we
  //    just select() the *final* array version instead of the initial
  //    one. Covers cases 2/3 from the original design discussion.
  bool isScalarOutput = true;
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
        {"pk", ArgKind::Buffer, ArgRole::FixedInput, "pk", 0, 8},
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
        {"a_buf", ArgKind::Buffer, ArgRole::FixedInput, "a_buf", 0, 8},
        // "x"/"b" region intentionally omitted here -- its access pattern
        // isn't a flat contiguous region in this function (see the
        // add.ptr.iterN chain in the smt2); model it with whatever
        // offset/length llvmbmc reports once wired up.
    };
    // lincomb returns its result by value -- no buffer holds it, so this
    // is the one case that genuinely needs rewrite_output_assert.
    spec.isScalarOutput = true;
    return spec;
  }
  throw runtime_error("No FunctionSpec registered for '" + fn + "'");
}

// Peek at whether a file's final top-level assert is the degenerate
// "(assert (not true))" (or any other shape find_output_assert can't
// parse) form that results when a fault causes the ENTIRE function call
// to be skipped and replaced by a compile-time constant (DirectFuncSkip
// with a type-mismatched/null replacement), rather than an internal
// instruction skip that leaves genuine symbolic computation behind. For
// scalar-output functions there is no array to fall back on in that
// case (see rewrite_output_assert), so such fault variants should be
// skipped in favor of one that actually exercises the function's own
// logic. Does not modify `src`.
static bool has_degenerate_output_assert(const string &src) {
  size_t pos = src.rfind("(assert");
  if (pos == string::npos)
    return true;
  size_t end = match_paren(src, pos);
  if (end == string::npos)
    return true;
  OutputAssertInfo info;
  return !find_output_assert(src, pos, end, info);
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

  FunctionSpec spec = get_function_spec(fn);

  // For scalar-output functions, a fault variant whose entire call got
  // replaced by a compile-time constant (see has_degenerate_output_assert)
  // has no symbolic computation left to query -- skip past those and use
  // the first variant that actually contains an internal fault. Buffer
  // outputs never hit this problem (they never depend on the driver's
  // own assert), so any candidate works for them.
  string faulty_path;
  if (spec.isScalarOutput) {
    for (auto &cand : faultyCandidates) {
      if (!has_degenerate_output_assert(read_file(cand))) {
        faulty_path = cand;
        break;
      }
      cerr << "[note] skipping faulty variant '" << cand
           << "' -- its output check was fully constant-folded away "
              "(likely the whole call was replaced by the fault, "
              "leaving nothing symbolic to compare for a scalar "
              "output).\n";
    }
    if (faulty_path.empty()) {
      cerr << "[fatal] every faulty .smt2 for '" << fn
           << "' has a degenerate, constant-folded output check; none "
              "of them can be used for a scalar-output differential "
              "query. Check whether any of these variants actually "
              "fault *inside* the function rather than skipping the "
              "call to it entirely.\n";
      return 1;
    }
  } else {
    faulty_path = faultyCandidates.front();
  }

  // Route the output-assert handling based on output kind: only scalar
  // ("ret") outputs need the fragile parse-and-rewrite -- buffer outputs
  // just get the trailing assert unconditionally deleted (regardless of
  // whether the compiler folded it down to something degenerate like
  // "assert false"), since the real output is read directly out of
  // Global_M later via select().
  string correct_src, faulty_src;
  if (spec.isScalarOutput) {
    correct_src = strip_bad_asserts(
        rewrite_output_assert(read_file(correct_path), "correct"));
    faulty_src = strip_bad_asserts(
        rewrite_output_assert(read_file(faulty_path), "faulty"));
  } else {
    correct_src = strip_bad_asserts(strip_last_assert(read_file(correct_path)));
    faulty_src = strip_bad_asserts(strip_last_assert(read_file(faulty_path)));
  }

  static const string FINAL_VERSION_CORRECT = "c_10"; // TODO: derive, not hardcode
  static const string FINAL_VERSION_FAULTY = "c_10";
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
        if(i == 0){
          slv.add(o1i != o2i);
          slv.add(o1i == ctx.int_val(0));
        }
      }
    }
  }

  // ---- Output symbols ----
  expr c1v = ctx.int_val(0), f1v = ctx.int_val(0);
  expr c2v = ctx.int_val(0), f2v = ctx.int_val(0);

  if (spec.isScalarOutput) {
    // "ret" case: the guarded scalar produced by rewrite_output_assert().
    c1v = ctx.int_const("i_0_mbc_output_correct_C1");
    f1v = ctx.int_const("i_0_mbc_output_faulty_F1");
    c2v = ctx.int_const("i_0_mbc_output_correct_C2");
    f2v = ctx.int_const("i_0_mbc_output_faulty_F2");
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
  // slv.add(c1v == f1v);
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
          "exec1_ineffective_witness", [](VariedVals &vv) { return vv.v1; },
          out1_correct, out1_faulty);
      wj << ",\n";
      write_trial(
          "exec2_divergence_witness", [](VariedVals &vv) { return vv.v2; },
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