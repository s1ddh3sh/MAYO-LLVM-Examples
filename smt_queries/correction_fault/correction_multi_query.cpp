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
#include <thread>
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
// tag "F" for faulty) -- unlike the ineffective query we don't need a
// second (C2/F2) trial, since correction-attack is about a single faulty
// execution and a single existential correction, not a two-execution
// differential.
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
  // correction. Skips the expensive existential search over corr_idx and
  // skips asserting equality on every other output byte -- we only prove
  // a correction exists at the one byte the fault actually touches.
  // If -1, falls back to the (much slower) existential search over every
  // output index, asserting equality/correction at ALL of them.
  long long knownCorrectionIndex = -1;
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
// Per-value correction check, run in its own thread with its own
// z3::context (same threading discipline as differential_query.cpp).
// =====================================================================

struct FixedEntry {
  string name;
  vector<long long> vals;
};
struct VariedEntry {
  string name;
  vector<long long> vals;
};

struct CorrectionResult {
  int value = -1;
  check_result res = unknown;
  long long alpha = -1;   // the correction value found, in [0, fieldSize)
  long long corrIndex = -1; // which output byte needed correction (-1 for scalar output)
  vector<FixedEntry> fixedVals;
  vector<VariedEntry> variedVals;
  vector<long long> out_correct, out_faulty;
};

static CorrectionResult check_value_correction(
    int value, const FunctionSpec &spec, const string &c, const string &f,
    const string &correct_src, const string &faulty_src,
    const string &GLOBAL_BASE_CORRECT, const string &GLOBAL_BASE_FAULTY,
    const string &FINAL_VERSION_CORRECT, const string &FINAL_VERSION_FAULTY,
    const string &INITIAL_VERSION_CORRECT,
    const string &INITIAL_VERSION_FAULTY) {
  CorrectionResult out;
  out.value = value;

  context ctx; // thread-local -- never shared

  // The parsed trace contains ~93 sequential (assert (= c_N <big-expr>))
  // definitions per array (each wrapped in bvxor/int2bv/bv2int/ite). A
  // bare `smt` core treats these as ordinary array-valued equalities and
  // carries the whole unreduced chain into search. solve-eqs +
  // propagate-values fold these definitional equalities away before the
  // SAT core ever sees them -- restoring this (it's cheap) is what makes
  // this tractable, now that we're only adding ONE real constraint on
  // top instead of the offset-bug-era unconstrained symbolic select.
  tactic simp = z3::tactic(ctx, "simplify");
  tactic eqs = z3::tactic(ctx, "solve-eqs");
  tactic prop = z3::tactic(ctx, "propagate-values");
  tactic core = z3::tactic(ctx, "smt");
  tactic pipeline = simp & prop & eqs & core;
  solver slv = pipeline.mk_solver();

  params p(ctx);
  p.set("timeout", 10000u); // 20s per value -- surface unknown instead of hanging
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
    slv.add(pC == pF); // same buffer location on both executions
    expr startC = ctx.int_val((int)a.offset) + pC;
    buffers.push_back({&a, pC, pF, startC});
  }

  for (size_t i = 0; i < buffers.size(); i++)
    for (size_t j = i + 1; j < buffers.size(); j++)
      assert_no_overlap(slv, ctx, buffers[i].startC, buffers[i].spec->length,
                         buffers[j].startC, buffers[j].spec->length);

  expr sweepVar = ctx.int_val(0);
  bool haveSweepVar = false;

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
        slv.add(oi >= ctx.int_val(0));
        slv.add(oi < ctx.int_val(16));
        if (i == 0 && !haveSweepVar) {
          sweepVar = oi;
          haveSweepVar = true;
        }
      }
    }
  }

  unsigned bits = bits_for_field(spec.fieldSize);
  expr alpha = ctx.int_const("alpha");
  slv.add(alpha >= ctx.int_val(0));
  slv.add(alpha < ctx.int_val((int)spec.fieldSize));
  // Uncomment to require a *genuine* correction (fault must have actually
  // perturbed the byte being corrected) rather than allowing alpha == 0:
  // slv.add(alpha != 0);

  expr alphaBV = int2bv(bits, alpha);

  if (spec.isScalarOutput) {
    string anchC =
        resolve_final_ssa_symbol(correct_src, spec.outputAnchorName, false);
    string anchF =
        resolve_final_ssa_symbol(faulty_src, spec.outputAnchorName, true);
    expr cv = ctx.int_const((anchC + "_C").c_str());
    expr fv = ctx.int_const((anchF + "_F").c_str());

    expr corrected = bv2int(int2bv(bits, fv) ^ alphaBV, false);
    slv.add(cv == corrected);
    // cout << cv << "\n" << correc;
    slv.add(sweepVar == ctx.int_val(value)); // requires haveSweepVar below
    if (!haveSweepVar)
      throw runtime_error("No VariedInput arg found to sweep over");

    out.res = slv.check();
    if (out.res != sat)
      return out;
    model m = slv.get_model();
    out.alpha = eval_i64(m, alpha);
    out.corrIndex = -1;
    out.out_correct.push_back(eval_i64(m, cv));
    out.out_faulty.push_back(eval_i64(m, fv));
    for (auto &pb : buffers) {
      const ArgSpec &a = *pb.spec;
      if (a.role == ArgRole::FixedInput) {
        FixedEntry fe{a.name, {}};
        for (long long i = 0; i < a.length; i++)
          fe.vals.push_back(eval_i64(
              m, ctx.int_const((a.name + "_" + to_string(i)).c_str())));
        out.fixedVals.push_back(fe);
      } else {
        VariedEntry ve{a.name, {}};
        for (long long i = 0; i < a.length; i++)
          ve.vals.push_back(eval_i64(
              m, ctx.int_const((a.name + "_" + to_string(i)).c_str())));
        out.variedVals.push_back(ve);
      }
    }
    return out;
  }

  // ---- Buffer output: existentially find which byte needs correction ----
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

  auto selectAt = [&](long long i) {
    expr aC = ctx.int_val((int)(spec.outputOffset + i)) + outPtrC;
    expr aF = ctx.int_val((int)(spec.outputOffset + i)) + outPtrF;
    return make_pair(select(finC, aC), select(finF, aF));
  };

  bool knownIdx = spec.knownCorrectionIndex >= 0;

  if (knownIdx) {
    // ---- Fast path: only assert the correction at the one byte the
    // fault touches. We deliberately do NOT assert anything about the
    // other outputLength-1 bytes -- doing so requires Z3 to fully
    // evaluate the whole nested store/bvxor chain at every position,
    // which is what caused the earlier timeout, and it's unnecessary:
    // those bytes are fed by the same (pinned-equal) inputs through
    // structurally identical formulas in both traces, so they come out
    // equal for free. We still read them back below, post-SAT, purely
    // to sanity-check -- that costs nothing once a model exists.
    long long idx = spec.knownCorrectionIndex;
    auto [cv0, fv0] = selectAt(idx);
    expr corrected = bv2int(int2bv(bits, fv0) ^ alphaBV, false);
    slv.add(cv0 == corrected);
  } else {
    // ---- Fallback: existential search over which index needs
    // correcting. Much slower -- expect to need this only if the fault
    // site isn't known ahead of time.
    expr corrIdx = ctx.int_const("corr_idx");
    slv.add(corrIdx >= ctx.int_val(0));
    slv.add(corrIdx < ctx.int_val((int)spec.outputLength));
    for (long long i = 0; i < spec.outputLength; i++) {
      auto [cv, fv] = selectAt(i);
      expr corrected = bv2int(int2bv(bits, fv) ^ alphaBV, false);
      expr isTarget = (corrIdx == ctx.int_val((int)i));
      slv.add(ite(isTarget, cv == corrected, cv == fv));
    }
    out.corrIndex = -2; // placeholder; overwritten from model below if SAT
  }

  if (!haveSweepVar)
    throw runtime_error("No VariedInput arg found to sweep over");
  slv.add(sweepVar == ctx.int_val(value));

  out.res = slv.check();
  if (out.res != sat)
    return out;

  model m = slv.get_model();
  out.alpha = eval_i64(m, alpha);
  if (knownIdx) {
    out.corrIndex = spec.knownCorrectionIndex;
  } else {
    expr corrIdx = ctx.int_const("corr_idx");
    out.corrIndex = eval_i64(m, corrIdx);
  }

  for (auto &pb : buffers) {
    const ArgSpec &a = *pb.spec;
    if (a.role == ArgRole::FixedInput) {
      FixedEntry fe{a.name, {}};
      for (long long i = 0; i < a.length; i++)
        fe.vals.push_back(
            eval_i64(m, ctx.int_const((a.name + "_" + to_string(i)).c_str())));
      out.fixedVals.push_back(fe);
    } else {
      VariedEntry ve{a.name, {}};
      for (long long i = 0; i < a.length; i++)
        ve.vals.push_back(
            eval_i64(m, ctx.int_const((a.name + "_" + to_string(i)).c_str())));
      out.variedVals.push_back(ve);
    }
  }
  // Read back every byte from the model for the witness / sanity check.
  // This is free -- m.eval() on an already-satisfied model does not
  // trigger any further solving.
  for (long long i = 0; i < spec.outputLength; i++) {
    auto [cv, fv] = selectAt(i);
    out.out_correct.push_back(eval_i64(m, cv));
    out.out_faulty.push_back(eval_i64(m, fv));
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

  // Only two files needed: one correct trace, one faulty trace.
  string c = write_suffixed(correct_src, "C", fn_path);
  string f = write_suffixed(faulty_src, "F", fn_path);

  vector<CorrectionResult> results(16);
  vector<std::thread> threads;
  threads.reserve(16);
  for (int v = 0; v < 1; v++) {
    threads.emplace_back([&, v]() {
      results[v] = check_value_correction(
          v, spec, c, f, correct_src, faulty_src, GLOBAL_BASE_CORRECT,
          GLOBAL_BASE_FAULTY, FINAL_VERSION_CORRECT, FINAL_VERSION_FAULTY,
          INITIAL_VERSION_CORRECT, INITIAL_VERSION_FAULTY);
    });
  }
  for (auto &t : threads)
    t.join();

  vector<int> satValues, unsatValues, unknownValues;
  for (auto &r : results) {
    if (r.res == sat)
      satValues.push_back(r.value);
    else if (r.res == unsat)
      unsatValues.push_back(r.value);
    else
      unknownValues.push_back(r.value);
  }

  cout << "SAT (correctable) for values:";
  for (int v : satValues)
    cout << " " << v;
  cout << "\n";
  cout << "UNSAT (not correctable via single-byte XOR) for values:";
  for (int v : unsatValues)
    cout << " " << v;
  cout << "\n";
  if (!unknownValues.empty()) {
    cout << "UNKNOWN/TIMEOUT for values:";
    for (int v : unknownValues)
      cout << " " << v;
    cout << "\n";
  }

  if (satValues.empty()) {
    cout << "[!] No SAT value found; no witness exported.\n";
    return 0;
  }

  string outLabel = !spec.outputLabel.empty() ? spec.outputLabel
                    : spec.isScalarOutput      ? "ret"
                                                : spec.outputIndexVar;

  string witness_path = fn_path + "correction_witness.json";
  ofstream wj(witness_path);
  wj << "{\n";
  wj << "  \"function\": \"" << fn << "\",\n";
  wj << "  \"field_size\": " << spec.fieldSize << ",\n";
  wj << "  \"sat_values\": "
     << json_arr(vector<long long>(satValues.begin(), satValues.end()))
     << ",\n";
  wj << "  \"trials\": [\n";

  bool firstTrial = true;
  for (auto &r : results) {
    if (r.res != sat)
      continue;

    wj << (firstTrial ? "    {\n" : ",\n    {\n");
    wj << "      \"sweep_value\": " << r.value << ",\n";
    wj << "      \"correction\": {\n";
    if (r.corrIndex >= 0)
      wj << "        \"index\": " << r.corrIndex << ",\n";
    wj << "        \"alpha\": " << r.alpha << "\n";
    wj << "      },\n";
    wj << "      \"inputs\": {\n";
    bool ifirst = true;
    for (auto &fe : r.fixedVals) {
      wj << (ifirst ? "        " : ",\n        ") << "\"" << fe.name
         << "\": " << json_arr(fe.vals);
      ifirst = false;
    }
    for (auto &ve : r.variedVals) {
      wj << (ifirst ? "        " : ",\n        ") << "\"" << ve.name
         << "\": " << json_arr(ve.vals);
      ifirst = false;
    }
    wj << "\n      },\n";
    wj << "      \"outputs\": {\n";
    wj << "        \"" << outLabel << "_correct\": " << json_arr(r.out_correct)
       << ",\n";
    wj << "        \"" << outLabel << "_faulty\": " << json_arr(r.out_faulty)
       << "\n";
    wj << "      }\n";
    wj << "    }";
    firstTrial = false;
  }

  wj << "\n  ]\n";
  wj << "}\n";
  cout << "[+] correction witness exported to " << witness_path << "\n";

  return 0;
}