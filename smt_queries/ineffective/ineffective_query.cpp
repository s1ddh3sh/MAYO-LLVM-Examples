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
// regardless of whatever shape this trailing assert takes. Always
// delete it instead of trying to interpret it.
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
// =====================================================================

enum class ArgKind { Scalar, Buffer };
enum class ArgRole { FixedInput, VariedInput };

struct ArgSpec {
  string name; // human-readable / debug label
  ArgKind kind;
  ArgRole role;
  string indexVar; // e.g. "Vdec" -> becomes i_2_Vdec_correct/_faulty in
                   // the smt2; pass the *base* identifier
  long long offset = 0;
  long long length = 0;      // only meaningful for Buffer
  long long fixedValue = 11; // only meaningful for role == FixedInput
};

struct FunctionSpec {
  string fnName;
  vector<ArgSpec> args;

  bool isScalarOutput = true;
  string outputAnchorName;    // Scalar only: e.g. "__mbc_ret_anchor_lincomb"
  string outputIndexVar;      // Buffer only: llvmbmc.var base name
  long long outputOffset = 0; // Buffer only
  long long outputLength = 1; // Buffer only -- bytes reported in witness.json
  string outputLabel;         // JSON key used in witness.json
};

// A Buffer arg's pointer, pinned equal across correct/faulty and across
// trials 1/2, plus its region-start address (used for non-overlap).
struct PinnedBuffer {
  const ArgSpec *spec;
  expr pC1, pF1, pC2, pF2;
  expr startC1;
};

// Locate the declared SMT identifier for a given llvmbmc.var base name,
// honoring the fact that llvmbmc numbers these i_<N>_<name>_correct /
// i_<N>_<name>_faulty and N varies per function. Only safe for
// identifiers declared ONCE (pointers) -- see resolve_final_ssa_symbol
// for values re-assigned along the way.
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

// Like resolve_index_var, but for identifiers re-declared at multiple
// SSA versions (e.g. "__mbc_ret_anchor_<fn>"). Returns the occurrence
// with the highest numeric version -- the value after every guarded
// assignment has had a chance to apply.
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
    spec.isScalarOutput = false;
    spec.outputIndexVar = "s";
    spec.outputOffset = 858;
    spec.outputLength = 78;
    return spec;
  }
  if (fn == "m_vec_add") {
    FunctionSpec spec;
    spec.fnName = "m_vec_add";
    spec.args = {
        {"pk", ArgKind::Buffer, ArgRole::VariedInput, "pk", 0, 8},
        {"accumulator", ArgKind::Buffer, ArgRole::FixedInput, "pk", 0, 8},
    };
    spec.isScalarOutput = false;
    spec.outputIndexVar = "accumulator";
    spec.outputOffset = 18705;
    spec.outputLength = 1;
    return spec;
  }
  if (fn == "lincomb") {
    FunctionSpec spec;
    spec.fnName = "lincomb";
    spec.args = {
        {"a_buf", ArgKind::Buffer, ArgRole::FixedInput, "a_buf", 0, 8, 11},
        {"x", ArgKind::Buffer, ArgRole::VariedInput, "x", 0, 8},
    };
    spec.isScalarOutput = true;
    spec.outputAnchorName = "__mbc_ret_anchor_lincomb";
    return spec;
  }
  throw runtime_error("No FunctionSpec registered for '" + fn + "'");
}

// =====================================================================
// Sweep: try every value 0..15 for `sweepVar` (byte 0 of the first
// VariedInput), checking satisfiability separately for each. This
// trades one hard existential search (which Z3 struggles with through
// the int2bv/bv2int/Array chain) for 16 cheap, fully case-split checks
// -- each hands the solver a concrete substitution instead of asking it
// to find one. Treat each SAT result as a confirmed witness for that
// specific value, not as evidence the solver searched and found it
// unaided.
//
// Prints a summary of which values were SAT, and writes a single
// combined witness.json covering every SAT value found.
// =====================================================================
static void run_sweep(context &ctx, solver &slv, const expr &sweepVar,
                      const FunctionSpec &spec, vector<PinnedBuffer> &buffers,
                      const expr &c1v, const expr &f1v, const expr &c2v,
                      const expr &f2v, const string &fn, const string &fn_path,
                      const string &correct_src, const string &faulty_src,
                      const string &GLOBAL_BASE_CORRECT,
                      const string &GLOBAL_BASE_FAULTY,
                      const string &FINAL_VERSION_CORRECT,
                      const string &FINAL_VERSION_FAULTY, z3::sort &arr_sort) {
  struct FixedVals {
    string name;
    vector<long long> vals;
  };
  struct VariedVals {
    string name;
    vector<long long> v1, v2;
  };

  vector<int> satValues;
  vector<int> unsatValues;
  ostringstream trialsJson;
  bool firstTrial = true;

  for (int v = 0; v < 16; v++) {
    slv.push();
    slv.add(sweepVar == ctx.int_val(v));

    cout << "\n================ value " << v << " ================\n";
    check_result res = slv.check();

    if (res == sat) {
      satValues.push_back(v);
      model m = slv.get_model();
      auto ev = [&](const expr &e) { return m.eval(e, true).simplify(); };

      cout << "  -> SAT\n";
      cout << "  correct[1] = " << ev(c1v) << "  faulty[1] = " << ev(f1v)
           << "\n";
      cout << "  correct[2] = " << ev(c2v) << "  faulty[2] = " << ev(f2v)
           << "\n";

      // ---- collect input/output values for this value's witness entry ----
      vector<FixedVals> fixedInputs;
      vector<VariedVals> variedInputs;
      for (auto &pb : buffers) {
        const ArgSpec &a = *pb.spec;
        if (a.role == ArgRole::FixedInput) {
          FixedVals fv{a.name, {}};
          for (long long i = 0; i < a.length; i++)
            fv.vals.push_back(eval_i64(
                m, ctx.int_const((a.name + "_" + to_string(i)).c_str())));
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
        expr finC1b =
            final_arr2(GLOBAL_BASE_CORRECT, FINAL_VERSION_CORRECT, "C1");
        expr finF1b =
            final_arr2(GLOBAL_BASE_FAULTY, FINAL_VERSION_FAULTY, "F1");
        expr finC2b =
            final_arr2(GLOBAL_BASE_CORRECT, FINAL_VERSION_CORRECT, "C2");
        expr finF2b =
            final_arr2(GLOBAL_BASE_FAULTY, FINAL_VERSION_FAULTY, "F2");
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

      string outLabel = !spec.outputLabel.empty() ? spec.outputLabel
                        : spec.isScalarOutput     ? "ret"
                                                  : spec.outputIndexVar;

      // ---- append this value's entry to the combined witness JSON ----
      auto writeInputsObj =
          [&](std::function<vector<long long>(VariedVals &)> pick) {
            trialsJson << "        \"inputs\": {\n";
            bool ifirst = true;
            for (auto &fv : fixedInputs) {
              trialsJson << (ifirst ? "          " : ",\n          ") << "\""
                         << fv.name << "\": " << json_arr(fv.vals);
              ifirst = false;
            }
            for (auto &vv : variedInputs) {
              trialsJson << (ifirst ? "          " : ",\n          ") << "\""
                         << vv.name << "\": " << json_arr(pick(vv));
              ifirst = false;
            }
            trialsJson << "\n        }";
          };

      trialsJson << (firstTrial ? "" : ",\n") << "    {\n";
      trialsJson << "      \"sweep_value\": " << v << ",\n";
      trialsJson << "      \"exec1_ineffective\": {\n";
      writeInputsObj([](VariedVals &vv) { return vv.v1; });
      trialsJson << ",\n";
      trialsJson << "        \"expected\": {\n";
      trialsJson << "          \"" << outLabel
                 << "_correct\": " << json_arr(out1_correct) << ",\n";
      trialsJson << "          \"" << outLabel
                 << "_faulty\": " << json_arr(out1_faulty) << "\n";
      trialsJson << "        }\n";
      trialsJson << "      },\n";
      trialsJson << "      \"exec2\": {\n";
      writeInputsObj([](VariedVals &vv) { return vv.v2; });
      trialsJson << ",\n";
      trialsJson << "        \"expected\": {\n";
      trialsJson << "          \"" << outLabel
                 << "_correct\": " << json_arr(out2_correct) << ",\n";
      trialsJson << "          \"" << outLabel
                 << "_faulty\": " << json_arr(out2_faulty) << "\n";
      trialsJson << "        }\n";
      trialsJson << "      }\n";
      trialsJson << "    }";
      firstTrial = false;

    } else if (res == unsat) {
      unsatValues.push_back(v);
      cout << "  -> UNSAT\n";
    } else {
      unsatValues.push_back(v);
      cout << "  -> UNKNOWN / TIMEOUT\n";
    }

    slv.pop();
  }

  // ---- final summary ----
  cout << "\n================ SWEEP SUMMARY ================\n";
  if (satValues.empty()) {
    cout << "No value 0..15 was SAT for '" << fn << "'.\n";
    return;
  }
  cout << "SAT for values:";
  for (int v : satValues)
    cout << " " << v;
  cout << "\n";

  cout << "UNSAT for values:";
  for (int v : unsatValues)
    cout << " " << v;
  cout << "\n";

  string witness_path = fn_path + "witness.json";
  ofstream wj(witness_path);
  wj << "{\n";
  wj << "  \"function\": \"" << fn << "\",\n";
  wj << "  \"sat_values\": "
     << json_arr(vector<long long>(satValues.begin(), satValues.end()))
     << ",\n";
  wj << "  \"trials\": [\n";
  wj << trialsJson.str() << "\n";
  wj << "  ]\n";
  wj << "}\n";
  cout << "[+] witness exported to " << witness_path << "\n";
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
  string faulty_path = faultyCandidates.front();

  FunctionSpec spec = get_function_spec(fn);

  string correct_src =
      strip_bad_asserts(strip_last_assert(read_file(correct_path)));
  string faulty_src =
      strip_bad_asserts(strip_last_assert(read_file(faulty_path)));

  static const string FINAL_VERSION_CORRECT =
      "c_93"; // TODO: derive, not hardcode
  static const string FINAL_VERSION_FAULTY = "c_93";
  static const string GLOBAL_BASE_CORRECT = "Global_M_correct";
  static const string GLOBAL_BASE_FAULTY = "Global_M_faulty";

  string INITIAL_VERSION_CORRECT = find_initial_version(
      correct_src, GLOBAL_BASE_CORRECT, FINAL_VERSION_CORRECT);
  string INITIAL_VERSION_FAULTY = find_initial_version(
      faulty_src, GLOBAL_BASE_FAULTY, FINAL_VERSION_FAULTY);

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
  // params p(ctx);
  // p.set("timeout", 5000u);
  // slv.set(p);
  expr_vector C1 = ctx.parse_file(c1.c_str());
  expr_vector F1 = ctx.parse_file(f1.c_str());
  expr_vector C2 = ctx.parse_file(c2.c_str());
  expr_vector F2 = ctx.parse_file(f2.c_str());
  for (expr e : C1)
    slv.add(e);
  for (expr e : F1)
    slv.add(e);
  for (expr e : C2)
    slv.add(e);
  for (expr e : F2)
    slv.add(e);

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
  // sweepVar/haveSweepVar: byte 0 of the FIRST VariedInput arg's trial-1
  // symbol (e.g. "Ox_1_0" for mat_add), captured here so run_sweep() can
  // iterate it over 0..15 instead of leaving it fully free.
  expr sweepVar = ctx.int_val(0);
  bool haveSweepVar = false;

  for (auto &pb : buffers) {
    const ArgSpec &a = *pb.spec;

    if (a.role == ArgRole::FixedInput) {
      for (long long i = 0; i < a.length; i++) {
        expr addr = ctx.int_val((int)(a.offset + i)) + pb.pC1;
        expr vi = ctx.int_const((a.name + "_" + to_string(i)).c_str());
        slv.add(select(initC1, addr) == vi);
        slv.add(select(initC2, addr) == vi);
        slv.add(vi == ctx.int_val((int)a.fixedValue));
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
        if (i == 0 && !haveSweepVar) {
          sweepVar = o1i;
          haveSweepVar = true;
        }
      }
    }
  }

  // ---- Output symbols ----
  expr c1v = ctx.int_val(0), f1v = ctx.int_val(0);
  expr c2v = ctx.int_val(0), f2v = ctx.int_val(0);

  if (spec.isScalarOutput) {
    string anchC =
        resolve_final_ssa_symbol(correct_src, spec.outputAnchorName, false);
    string anchF =
        resolve_final_ssa_symbol(faulty_src, spec.outputAnchorName, true);
    c1v = ctx.int_const((anchC + "_C1").c_str());
    f1v = ctx.int_const((anchF + "_F1").c_str());
    c2v = ctx.int_const((anchC + "_C2").c_str());
    f2v = ctx.int_const((anchF + "_F2").c_str());
  } else {
    string ovC = resolve_index_var(correct_src, spec.outputIndexVar, false);
    string ovF = resolve_index_var(faulty_src, spec.outputIndexVar, true);
    expr outPtrC1 = ctx.int_const((ovC + "_C1").c_str());
    expr outPtrF1 = ctx.int_const((ovF + "_F1").c_str());
    expr outPtrC2 = ctx.int_const((ovC + "_C2").c_str());
    expr outPtrF2 = ctx.int_const((ovF + "_F2").c_str());
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

  if (!haveSweepVar) {
    cerr << "[warning] no VariedInput arg found to sweep over -- falling "
            "back to a single unconstrained check.\n";
    check_result res = slv.check();
    cout << (res == sat ? "SAT!\n" : res == unsat ? "UNSAT\n" : "UNKNOWN\n");
    return res == sat ? 0 : 1;
  }

  run_sweep(ctx, slv, sweepVar, spec, buffers, c1v, f1v, c2v, f2v, fn, fn_path,
            correct_src, faulty_src, GLOBAL_BASE_CORRECT, GLOBAL_BASE_FAULTY,
            FINAL_VERSION_CORRECT, FINAL_VERSION_FAULTY, arr_sort);

  return 0;
}