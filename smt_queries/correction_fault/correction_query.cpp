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
// File-text utilities (identical to differential_query.cpp)
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

// NOTE: only ONE copy of each trace is needed here (tag "C" for correct,
// tag "F" for faulty) -- correction attack is a single faulty execution
// plus a single existential correction, not a two-execution differential.
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

static string strip_last_assert(const string &src) {
  size_t pos = src.rfind("(assert");
  if (pos == string::npos)
    return src;
  size_t end = match_paren(src, pos);
  if (end == string::npos)
    return src;
  return src.substr(0, pos) + src.substr(end + 1);
}

static unsigned bits_for_field(long long fieldSize) {
  unsigned bits = 1;
  while ((1LL << bits) < fieldSize)
    bits++;
  return bits;
}

// =====================================================================
// Function I/O specification
// =====================================================================

enum class ArgKind { Scalar, Buffer };
enum class ArgRole { FixedInput, VariedInput };

struct ArgSpec {
  string name;
  ArgKind kind;
  ArgRole role;
  string indexVar;
  long long offset = 0;
  long long length = 0;
  long long fixedValue = 11;
};

struct FunctionSpec {
  string fnName;
  vector<ArgSpec> args;

  bool isScalarOutput = true;
  string outputAnchorName;    // Scalar only
  string outputIndexVar;      // Buffer only
  long long outputOffset = 0; // Buffer only
  long long outputLength = 1; // Buffer only
  string outputLabel;

  // GF(q) the output field elements live in -- MAYO uses q=16 throughout,
  // and correction is modeled as XOR (addition in char-2 fields).
  long long fieldSize = 16;

  // If >= 0, the output byte known (from the fault site) to need
  // correction. We assert the correction ONLY at this byte, and assert
  // nothing about the rest -- proving equality at every byte of a
  // ~93-store chain is what caused earlier timeouts, and it's
  // unnecessary: the untouched bytes are fed by the same pinned-equal
  // inputs through structurally identical formulas, so they come out
  // equal for free. We still read them back post-SAT to sanity-check.
  long long knownCorrectionIndex = -1;

  // For the correction (brute-force-alpha) query: pin byte 0 of the
  // first VariedInput arg to this ONE concrete value, so correct[idx]
  // and faulty[idx] become fully determined outputs of a single
  // (simulated) signing execution -- exactly what an attacker observes
  // from one real faulty signature. Leaving this input free while
  // brute-forcing alpha is meaningless: the solver could just pick that
  // input to match whatever alpha is being tried, giving a trivial SAT
  // for every candidate. Required (>=0) for buffer outputs.
  long long variedTestValue = -1;
};

// A Buffer arg's pointer, pinned equal across correct/faulty, plus its
// region-start address (used for non-overlap).
struct PinnedBuffer {
  const ArgSpec *spec;
  expr pC, pF;
  expr startC;
};

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

static FunctionSpec get_function_spec(const string &fn) {
  if (fn == "mat_add") {
    FunctionSpec spec;
    spec.fnName = "mat_add";
    spec.args = {
        {"Vdec", ArgKind::Buffer, ArgRole::FixedInput, "Vdec", 1719, 78, 1},
        {"Ox", ArgKind::Buffer, ArgRole::VariedInput, "Ox", 1719, 78},
    };
    spec.isScalarOutput = false;
    spec.outputIndexVar = "s";
    spec.outputOffset = 858;
    spec.outputLength = 78;
    spec.fieldSize = 16;
    spec.knownCorrectionIndex = 0; // fault only ever touches s[0]
    spec.variedTestValue = 5;      // one arbitrary, fixed Ox[0] scenario
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
    spec.fieldSize = 16;
    spec.knownCorrectionIndex = 0;
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
    spec.fieldSize = 16;
    return spec;
  }
  throw runtime_error("No FunctionSpec registered for '" + fn + "'");
}

// =====================================================================
// Sweep: try every value 0..15 for `sweepVar` (byte 0 of the first
// VariedInput). Each value gets a FRESH context + FRESH solver, with
// every constraint added in one shot (file assertions, buffer pinning,
// input seeding, the alpha/correction equation) -- exactly the
// construction that already produced a correct SAT for value 0 in the
// threaded version. No push()/pop(), no split preprocessing: those
// paths risk decoupling constraints added in different phases from the
// tactic-transformed goal, which is the likely reason earlier attempts
// silently lost satisfiability. Sequential (not threaded) so we don't
// hit CPU contention across 16 concurrent Z3 contexts either.
// =====================================================================

struct FixedVals {
  string name;
  vector<long long> vals;
};
struct VariedVals {
  string name;
  vector<long long> vals;
};

struct CorrectionResult {
  int value = -1;
  check_result res = unknown;
  long long alpha = -1;
  long long corrIndex = -1;
  vector<FixedVals> fixedVals;
  vector<VariedVals> variedVals;
  vector<long long> out_correct, out_faulty;
};

static CorrectionResult check_value_correction(
    int alphaCandidate, const FunctionSpec &spec, const string &c,
    const string &f, const string &correct_src, const string &faulty_src,
    const string &GLOBAL_BASE_CORRECT, const string &GLOBAL_BASE_FAULTY,
    const string &FINAL_VERSION_CORRECT, const string &FINAL_VERSION_FAULTY,
    const string &INITIAL_VERSION_CORRECT,
    const string &INITIAL_VERSION_FAULTY) {
  CorrectionResult out;
  out.value = alphaCandidate;

  context ctx; // fresh context per value -- z3 objects aren't shareable

  tactic simp = z3::tactic(ctx, "simplify");
  tactic eqs = z3::tactic(ctx, "solve-eqs");
  tactic prop = z3::tactic(ctx, "propagate-values");
  tactic core = z3::tactic(ctx, "smt");
  tactic pipeline = simp & prop & eqs & core;
  solver slv = pipeline.mk_solver();

  params p(ctx);
  p.set("timeout", 30000u);
  slv.set(p);

  expr_vector C = ctx.parse_file(c.c_str());
  expr_vector F = ctx.parse_file(f.c_str());
  for (expr e : C)
    slv.add(e);
  for (expr e : F)
    slv.add(e);

  z3::sort arr_sort = ctx.array_sort(ctx.int_sort(), ctx.int_sort());
  auto init_arr = [&](const string &base, const string &initVer,
                       const string &tag) {
    return ctx.constant((initVer + "_" + base + "_" + tag).c_str(), arr_sort);
  };
  expr initC = init_arr(GLOBAL_BASE_CORRECT, INITIAL_VERSION_CORRECT, "C");
  expr initF = init_arr(GLOBAL_BASE_FAULTY, INITIAL_VERSION_FAULTY, "F");
  slv.add(initC == initF);

  vector<PinnedBuffer> buffers;
  for (auto &a : spec.args) {
    if (a.kind != ArgKind::Buffer)
      continue;
    string ivC = resolve_index_var(correct_src, a.indexVar, false);
    string ivF = resolve_index_var(faulty_src, a.indexVar, true);
    expr pC = ctx.int_const((ivC + "_C").c_str());
    expr pF = ctx.int_const((ivF + "_F").c_str());
    slv.add(pC == pF);
    expr startC = ctx.int_val((int)a.offset) + pC;
    buffers.push_back({&a, pC, pF, startC});
  }

  for (size_t i = 0; i < buffers.size(); i++)
    for (size_t j = i + 1; j < buffers.size(); j++)
      assert_no_overlap(slv, ctx, buffers[i].startC, buffers[i].spec->length,
                         buffers[j].startC, buffers[j].spec->length);

  for (auto &pb : buffers) {
    const ArgSpec &a = *pb.spec;
    if (a.role == ArgRole::FixedInput) {
      for (long long i = 0; i < a.length; i++) {
        expr addr = ctx.int_val((int)(a.offset + i)) + pb.pC;
        expr vi = ctx.int_const((a.name + "_" + to_string(i)).c_str());
        slv.add(select(initC, addr) == vi);
        slv.add(vi == ctx.int_val((int)a.fixedValue));
      }
    } else { // VariedInput
      for (long long i = 0; i < a.length; i++) {
        expr addr = ctx.int_val((int)(a.offset + i)) + pb.pC;
        expr oi = ctx.int_const((a.name + "_" + to_string(i)).c_str());
        slv.add(select(initC, addr) == oi);
        if (i == 0 && spec.variedTestValue >= 0) {
          // Pin this to ONE concrete value -- this is what makes the
          // "brute-force alpha against a fixed observed signature" check
          // meaningful. Left free, the solver could pick this input to
          // match whatever alpha we're trying, making every alpha look
          // like a valid correction.
          slv.add(oi == ctx.int_val((int)spec.variedTestValue));
        } else {
          slv.add(oi >= ctx.int_val(0));
          slv.add(oi < ctx.int_val(16));
        }
      }
    }
  }

  unsigned bits = bits_for_field(spec.fieldSize);
  // alpha is now a GROUND constant supplied by the outer brute-force loop,
  // not a free/existential Z3 variable -- each check is now a plain
  // equality test between two fully-determined values (given the pinned
  // inputs above), exactly mirroring how the ineffective-query sweep
  // trades one hard existential search for many cheap concrete checks.
  expr alpha = ctx.int_val(alphaCandidate);
  expr alphaBV = int2bv(bits, alpha);

  expr cv0 = ctx.int_val(0), fv0 = ctx.int_val(0);
  long long corrIndexUsed = spec.knownCorrectionIndex;

  if (spec.isScalarOutput) {
    string anchC =
        resolve_final_ssa_symbol(correct_src, spec.outputAnchorName, false);
    string anchF =
        resolve_final_ssa_symbol(faulty_src, spec.outputAnchorName, true);
    cv0 = ctx.int_const((anchC + "_C").c_str());
    fv0 = ctx.int_const((anchF + "_F").c_str());
    corrIndexUsed = -1;
  } else {
    string ovC = resolve_index_var(correct_src, spec.outputIndexVar, false);
    string ovF = resolve_index_var(faulty_src, spec.outputIndexVar, true);
    expr outPtrC = ctx.int_const((ovC + "_C").c_str());
    expr outPtrF = ctx.int_const((ovF + "_F").c_str());
    slv.add(outPtrC == outPtrF);

    expr outStartC = ctx.int_val((int)spec.outputOffset) + outPtrC;
    for (auto &pb : buffers)
      assert_no_overlap(slv, ctx, outStartC, spec.outputLength, pb.startC,
                         pb.spec->length);

    auto final_arr = [&](const string &base, const string &finVer,
                          const string &tag) {
      return ctx.constant((finVer + "_" + base + "_" + tag).c_str(), arr_sort);
    };
    expr finC = final_arr(GLOBAL_BASE_CORRECT, FINAL_VERSION_CORRECT, "C");
    expr finF = final_arr(GLOBAL_BASE_FAULTY, FINAL_VERSION_FAULTY, "F");

    expr aC = ctx.int_val((int)(spec.outputOffset + corrIndexUsed)) + outPtrC;
    expr aF = ctx.int_val((int)(spec.outputOffset + corrIndexUsed)) + outPtrF;
    cv0 = select(finC, aC);
    fv0 = select(finF, aF);
  }

  expr corrected = bv2int(int2bv(bits, fv0) ^ alphaBV, false);
  slv.add(cv0 == corrected);

  out.res = slv.check();
  if (out.res != sat)
    return out;

  model m = slv.get_model();
  out.alpha = eval_i64(m, alpha);
  out.corrIndex = corrIndexUsed;

  for (auto &pb : buffers) {
    const ArgSpec &a = *pb.spec;
    if (a.role == ArgRole::FixedInput) {
      FixedVals fv{a.name, {}};
      for (long long i = 0; i < a.length; i++)
        fv.vals.push_back(
            eval_i64(m, ctx.int_const((a.name + "_" + to_string(i)).c_str())));
      out.fixedVals.push_back(fv);
    } else {
      VariedVals vv{a.name, {}};
      for (long long i = 0; i < a.length; i++)
        vv.vals.push_back(
            eval_i64(m, ctx.int_const((a.name + "_" + to_string(i)).c_str())));
      out.variedVals.push_back(vv);
    }
  }

  if (spec.isScalarOutput) {
    out.out_correct.push_back(eval_i64(m, cv0));
    out.out_faulty.push_back(eval_i64(m, fv0));
  } else {
    string ovC = resolve_index_var(correct_src, spec.outputIndexVar, false);
    string ovF = resolve_index_var(faulty_src, spec.outputIndexVar, true);
    expr outPtrC = ctx.int_const((ovC + "_C").c_str());
    expr outPtrF = ctx.int_const((ovF + "_F").c_str());
    auto final_arr2 = [&](const string &base, const string &finVer,
                           const string &tag) {
      return ctx.constant((finVer + "_" + base + "_" + tag).c_str(), arr_sort);
    };
    expr finC = final_arr2(GLOBAL_BASE_CORRECT, FINAL_VERSION_CORRECT, "C");
    expr finF = final_arr2(GLOBAL_BASE_FAULTY, FINAL_VERSION_FAULTY, "F");
    for (long long i = 0; i < spec.outputLength; i++) {
      expr aC = ctx.int_val((int)(spec.outputOffset + i)) + outPtrC;
      expr aF = ctx.int_val((int)(spec.outputOffset + i)) + outPtrF;
      out.out_correct.push_back(eval_i64(m, select(finC, aC)));
      out.out_faulty.push_back(eval_i64(m, select(finF, aF)));
    }
  }

  return out;
}

int main(int argc, char **argv) {
  if (argc < 2) {
    cerr << "Usage: ./correction_query <fnName>\n";
    return 1;
  }
  string fn = argv[1];
  string fn_path = "../../test_mayo/" + fn + "/";
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
  if (!spec.isScalarOutput && spec.knownCorrectionIndex < 0)
    throw runtime_error(
        "correction_query requires spec.knownCorrectionIndex to be set "
        "for buffer outputs (the byte the fault touches must be known)");
  if (spec.variedTestValue < 0)
    throw runtime_error(
        "correction_query requires spec.variedTestValue to be set -- "
        "brute-forcing alpha against a free/unconstrained input is "
        "meaningless (every alpha would look correctable)");

  string correct_src =
      strip_bad_asserts(strip_last_assert(read_file(correct_path)));
  string faulty_src =
      strip_bad_asserts(strip_last_assert(read_file(faulty_path)));

  static const string FINAL_VERSION_CORRECT = "c_93"; // TODO: derive, not hardcode
  static const string FINAL_VERSION_FAULTY = "c_93";
  static const string GLOBAL_BASE_CORRECT = "Global_M_correct";
  static const string GLOBAL_BASE_FAULTY = "Global_M_faulty";

  string INITIAL_VERSION_CORRECT = find_initial_version(
      correct_src, GLOBAL_BASE_CORRECT, FINAL_VERSION_CORRECT);
  string INITIAL_VERSION_FAULTY = find_initial_version(
      faulty_src, GLOBAL_BASE_FAULTY, FINAL_VERSION_FAULTY);

  string c = write_suffixed(correct_src, "C", fn_path);
  string f = write_suffixed(faulty_src, "F", fn_path);

  string outLabel = !spec.outputLabel.empty() ? spec.outputLabel
                    : spec.isScalarOutput      ? "ret"
                                                : spec.outputIndexVar;

  vector<int> satValues, unsatValues, unknownValues;
  ostringstream trialsJson;
  bool firstTrial = true;

  cout << "Brute-forcing alpha in F_" << spec.fieldSize
       << " against ONE fixed scenario (variedTestValue = "
       << spec.variedTestValue << ")\n";

  for (int alphaCandidate = 0; alphaCandidate < spec.fieldSize;
       alphaCandidate++) {
    cout << "\n================ alpha = " << alphaCandidate
         << " ================\n";
    CorrectionResult r = check_value_correction(
        alphaCandidate, spec, c, f, correct_src, faulty_src,
        GLOBAL_BASE_CORRECT, GLOBAL_BASE_FAULTY, FINAL_VERSION_CORRECT,
        FINAL_VERSION_FAULTY, INITIAL_VERSION_CORRECT,
        INITIAL_VERSION_FAULTY);

    int v = alphaCandidate;
    if (r.res == sat) {
      satValues.push_back(v);
      cout << "  -> SAT   correction index = " << r.corrIndex
           << "  alpha = " << r.alpha << "\n";

      if (!spec.isScalarOutput) {
        bool mismatchElsewhere = false;
        for (long long i = 0; i < spec.outputLength; i++) {
          if (i == r.corrIndex)
            continue;
          if (r.out_correct[i] != r.out_faulty[i]) {
            mismatchElsewhere = true;
            cout << "  [!] unexpected mismatch at index " << i
                 << ": correct=" << r.out_correct[i]
                 << " faulty=" << r.out_faulty[i] << "\n";
          }
        }
        if (!mismatchElsewhere)
          cout << "  (all other " << spec.outputLength - 1
               << " bytes matched correct/faulty with no correction, as "
                  "expected)\n";
      }

      trialsJson << (firstTrial ? "" : ",\n") << "    {\n";
      trialsJson << "      \"alpha_candidate\": " << v << ",\n";
      trialsJson << "      \"correction\": {\n";
      trialsJson << "        \"index\": " << r.corrIndex << ",\n";
      trialsJson << "        \"alpha\": " << r.alpha << "\n";
      trialsJson << "      },\n";
      trialsJson << "      \"inputs\": {\n";
      bool ifirst = true;
      for (auto &fv : r.fixedVals) {
        trialsJson << (ifirst ? "        " : ",\n        ") << "\"" << fv.name
                   << "\": " << json_arr(fv.vals);
        ifirst = false;
      }
      for (auto &vv : r.variedVals) {
        trialsJson << (ifirst ? "        " : ",\n        ") << "\"" << vv.name
                   << "\": " << json_arr(vv.vals);
        ifirst = false;
      }
      trialsJson << "\n      },\n";
      trialsJson << "      \"outputs\": {\n";
      trialsJson << "        \"" << outLabel
                 << "_correct\": " << json_arr(r.out_correct) << ",\n";
      trialsJson << "        \"" << outLabel
                 << "_faulty\": " << json_arr(r.out_faulty) << "\n";
      trialsJson << "      }\n";
      trialsJson << "    }";
      firstTrial = false;

    } else if (r.res == unsat) {
      unsatValues.push_back(v);
      cout << "  -> UNSAT (not correctable via single-byte XOR)\n";
    } else {
      unknownValues.push_back(v);
      cout << "  -> UNKNOWN / TIMEOUT\n";
    }
  }

  cout << "\n================ BRUTE-FORCE SUMMARY ================\n";
  cout << "SAT (correct alpha found) for candidates:";
  for (int v : satValues)
    cout << " " << v;
  cout << "\n";
  cout << "UNSAT for candidates:";
  for (int v : unsatValues)
    cout << " " << v;
  cout << "\n";
  if (!unknownValues.empty()) {
    cout << "UNKNOWN/TIMEOUT for candidates:";
    for (int v : unknownValues)
      cout << " " << v;
    cout << "\n";
  }

  if (satValues.empty()) {
    cout << "[!] No SAT alpha found; no witness exported.\n";
    return 0;
  }

  string witness_path = fn_path + "correction_witness.json";
  ofstream wj(witness_path);
  wj << "{\n";
  wj << "  \"function\": \"" << fn << "\",\n";
  wj << "  \"field_size\": " << spec.fieldSize << ",\n";
  wj << "  \"sat_alpha_candidates\": "
     << json_arr(vector<long long>(satValues.begin(), satValues.end()))
     << ",\n";
  wj << "  \"trials\": [\n";
  wj << trialsJson.str() << "\n";
  wj << "  ]\n";
  wj << "}\n";
  cout << "[+] correction witness exported to " << witness_path << "\n";

  return 0;
}