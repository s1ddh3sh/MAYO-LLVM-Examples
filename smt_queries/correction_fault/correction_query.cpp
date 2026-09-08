#include "z3++.h"
#include <algorithm>
#include <cctype>
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

static string read_file(const string &filename) {
  ifstream ifs(filename);
  if (!ifs) {
    cerr << "Cannot open: " << filename << "\n";
    exit(1);
  }
  return string((istreambuf_iterator<char>(ifs)), istreambuf_iterator<char>());
}

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

static string strip_bad_asserts(const string &src) {
  regex bad_assert(R"(\(assert\s+and\s*\)\s*)");
  return regex_replace(src, bad_assert, "");
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

// NOTE: only ONE copy of each trace is needed here (tag "C" for correct,
// tag "F" for faulty) -- a correction attack is a single faulty execution
// plus a single correction, not a two-execution differential.
static string write_suffixed(const string &content, const string &tag,
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

static unsigned bits_for_field(long long fieldSize) {
  unsigned bits = 1;
  while ((1LL << bits) < fieldSize)
    bits++;
  return bits;
}

// =====================================================================
// Memory layout, parsed from the trace's own comments.
//
//     ;; Array Vdec 0 779
//     ;; Initial_Memory c_1_Global_M_correct
//     ;; Final_Memory   c_93_Global_M_correct
//
// Ranges are ABSOLUTE indices into the single Global_M array, so there
// are no per-argument pointer symbols to resolve or pin.
// =====================================================================

struct MemRegion {
  string name;
  long long start = 0;
  long long end = 0; // inclusive
  long long size() const { return end - start + 1; }
};

struct MemoryLayout {
  map<string, MemRegion> regions;
  string initialMem;
  string finalMem;
};

static string parse_tagged_symbol(const string &src, const string &tag) {
  regex re(";;\\s*" + tag + "\\s+([A-Za-z0-9_.]+)");
  smatch m;
  if (!regex_search(src, m, re))
    throw runtime_error("Could not find ';; " + tag +
                        " <symbol>' comment in trace");
  return m[1].str();
}

static MemoryLayout parse_layout(const string &src) {
  MemoryLayout L;
  static const regex re(
      R"(;;\s*Array\s+([A-Za-z_][A-Za-z0-9_.]*)\s+(-?\d+)\s+(-?\d+))");
  for (auto it = sregex_iterator(src.begin(), src.end(), re),
            e = sregex_iterator();
       it != e; ++it) {
    MemRegion r;
    r.name = (*it)[1].str();
    r.start = stoll((*it)[2].str());
    r.end = stoll((*it)[3].str());
    if (r.end < r.start)
      throw runtime_error("Malformed region for '" + r.name + "'");
    L.regions[r.name] = r;
  }
  if (L.regions.empty())
    throw runtime_error("No ';; Array <name> <start> <end>' comments found");

  L.initialMem = parse_tagged_symbol(src, "Initial_Memory");
  L.finalMem = parse_tagged_symbol(src, "Final_Memory");
  return L;
}

static void split_mem_symbol(const string &sym, string &ver, string &base) {
  static const regex re(R"(^(c_\d+)_(.+)$)");
  smatch m;
  if (!regex_match(sym, m, re))
    throw runtime_error("Unexpected memory symbol '" + sym + "'");
  ver = m[1].str();
  base = m[2].str();
}

// The ';; Initial_Memory' comment names the formal entry memory, but in
// these traces the prologue blocks that would copy it forward sit behind
// path guards that are never asserted true, leaving the whole chain
// unconstrained. Seeding there has no effect on the computation. Walk back
// from Final_Memory through the UNGUARDED store chain instead and stop at
// the first guarded definition: that version is the real input to the
// straight-line region, and is where inputs must be seeded.
static string find_effective_initial(const string &src,
                                     const string &finalSym) {
  string current, base;
  split_mem_symbol(finalSym, current, base);
  static const regex numRe(R"(c_(\d+)$)");
  while (true) {
    string target = current + "_" + base;
    size_t defPos = src.find("(= " + target);
    if (defPos == string::npos)
      return target;
    size_t assertStart = src.rfind("(assert", defPos);
    if (assertStart == string::npos)
      return target;

    string head = src.substr(assertStart, defPos - assertStart);
    if (head.find("(and (=>") != string::npos)
      return target; // guarded -- this is the effective initial version

    size_t end = match_paren(src, assertStart);
    if (end == string::npos)
      return target;
    string block = src.substr(assertStart, end - assertStart + 1);

    smatch m;
    if (!regex_search(current, m, numRe))
      return target;
    string predName = "c_" + to_string(stoi(m[1].str()) - 1);
    if (block.find(predName) == string::npos)
      return target;
    current = predName;
  }
}

static void check_layouts_match(const MemoryLayout &a, const MemoryLayout &b) {
  if (a.regions.size() != b.regions.size())
    throw runtime_error(
        "correct/faulty traces declare different region counts");
  for (auto &kv : a.regions) {
    auto it = b.regions.find(kv.first);
    if (it == b.regions.end())
      throw runtime_error("Region '" + kv.first +
                          "' missing from faulty trace");
    if (it->second.start != kv.second.start || it->second.end != kv.second.end)
      throw runtime_error("Region '" + kv.first +
                          "' has different bounds in correct vs faulty trace");
  }
}

static void print_layout(const MemoryLayout &L, const string &which) {
  cout << "[layout:" << which << "] initial=" << L.initialMem
       << " final=" << L.finalMem << "\n";
  for (auto &kv : L.regions)
    cout << "    " << kv.first << " [" << kv.second.start << ".."
         << kv.second.end << "] (" << kv.second.size() << " bytes)\n";
}

static const MemRegion &lookup_region(const MemoryLayout &L,
                                      const string &name) {
  auto it = L.regions.find(name);
  if (it == L.regions.end()) {
    string known;
    for (auto &kv : L.regions)
      known += " " + kv.first;
    throw runtime_error(
        "Array '" + name +
        "' is not declared in the trace. Known regions:" + known);
  }
  return it->second;
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

// The trace pins its own scalar args, e.g.
//     (assert (= i_1___mbc_arg_mat_add_m_correct 78))
// We don't re-assert these -- we only check the JSON agrees, so a stale
// function_inputs file is caught loudly.
static bool trace_scalar_arg(const string &src, const string &fn,
                             const string &key, bool faulty, long long &out) {
  string suffix = faulty ? "_faulty" : "_correct";
  regex re("\\(assert\\s*\\(=\\s*i_\\d+___mbc_arg_" + fn + "_" + key + suffix +
           "\\s+(-?\\d+)\\)\\)");
  smatch m;
  if (!regex_search(src, m, re))
    return false;
  out = stoll(m[1].str());
  return true;
}

// =====================================================================
// Minimal flat-JSON reader for function_inputs/<fn>.json
//     {"output":"s","Vdec":12,"Ox":11,"s":7,"m":78,"n":1}
// =====================================================================

struct JsonValue {
  bool isString = false;
  string s;
  long long i = 0;
};

static map<string, JsonValue> parse_flat_json(const string &text) {
  map<string, JsonValue> out;
  size_t i = 0;
  auto skipws = [&] {
    while (i < text.size() && isspace((unsigned char)text[i]))
      i++;
  };

  skipws();
  if (i >= text.size() || text[i] != '{')
    throw runtime_error("JSON: expected '{'");
  i++;
  skipws();
  if (i < text.size() && text[i] == '}')
    return out;

  while (true) {
    skipws();
    if (i >= text.size() || text[i] != '"')
      throw runtime_error("JSON: expected a quoted key");
    size_t e = text.find('"', i + 1);
    if (e == string::npos)
      throw runtime_error("JSON: unterminated key");
    string key = text.substr(i + 1, e - i - 1);
    i = e + 1;

    skipws();
    if (i >= text.size() || text[i] != ':')
      throw runtime_error("JSON: expected ':' after key '" + key + "'");
    i++;
    skipws();

    JsonValue v;
    if (i < text.size() && text[i] == '"') {
      size_t se = text.find('"', i + 1);
      if (se == string::npos)
        throw runtime_error("JSON: unterminated string for key '" + key + "'");
      v.isString = true;
      v.s = text.substr(i + 1, se - i - 1);
      i = se + 1;
    } else {
      size_t st = i;
      if (i < text.size() && (text[i] == '-' || text[i] == '+'))
        i++;
      while (i < text.size() && isdigit((unsigned char)text[i]))
        i++;
      if (st == i)
        throw runtime_error("JSON: expected a number or string for key '" +
                            key + "'");
      v.isString = false;
      v.s = text.substr(st, i - st);
      v.i = stoll(v.s);
    }
    out[key] = v;

    skipws();
    if (i < text.size() && text[i] == ',') {
      i++;
      continue;
    }
    if (i < text.size() && text[i] == '}')
      break;
    throw runtime_error("JSON: expected ',' or '}'");
  }
  return out;
}

// =====================================================================
// Function spec: roles and concrete values from the JSON, addresses and
// lengths from the trace comments. No per-function code.
//
// Recognised keys:
//   "output"  (string)  name of the output region, OR the scalar return
//                       anchor base name when it isn't a declared region
//   "length"  (int)     optional; clamp every buffer to this many bytes
//   "index"   (int)     optional; the output byte known (from the fault
//                       site) to need correction. Default 0.
//   "q"       (int)     optional; field size. Default 16.
//   <region>  (int)     byte fill value for that input region
//   <output>  (int)     expected output value (cross-checked, not asserted)
//   <scalar>  (int)     value of __mbc_arg_<fn>_<key> (cross-checked)
//
// A "varied" key, if present (the differential query uses it), is ignored
// here: brute-forcing alpha against a free input is meaningless, since the
// solver could pick that input to match whatever alpha is being tried and
// every candidate would look correctable. Every input is pinned.
// =====================================================================

struct ResolvedArg {
  string name;
  long long start = 0;
  long long length = 0;
  long long fillValue = 0;
};

struct ResolvedOutput {
  bool scalar = true;
  string label;
  string anchorName; // scalar only
  long long start = 0;
  long long length = 1;
  long long correctionIndex = 0;
  bool hasExpected = false;
  long long expected = 0;
};

struct FunctionSpec {
  string fnName;
  vector<ResolvedArg> args;
  ResolvedOutput out;
  long long fieldSize = 16;
};

static FunctionSpec load_function_spec(const string &fn, const string &jsonPath,
                                       const MemoryLayout &L,
                                       const string &correct_src) {
  map<string, JsonValue> j = parse_flat_json(read_file(jsonPath));

  FunctionSpec spec;
  spec.fnName = fn;

  auto getStr = [&](const string &k, string &dst) {
    auto it = j.find(k);
    if (it == j.end())
      return false;
    if (!it->second.isString)
      throw runtime_error("JSON key '" + k + "' must be a string");
    dst = it->second.s;
    return true;
  };
  auto getInt = [&](const string &k, long long &dst) {
    auto it = j.find(k);
    if (it == j.end())
      return false;
    if (it->second.isString)
      throw runtime_error("JSON key '" + k + "' must be an integer");
    dst = it->second.i;
    return true;
  };

  string outputName;
  if (!getStr("output", outputName))
    throw runtime_error("function_inputs JSON must contain \"output\"");

  long long clampLength = 0;
  getInt("length", clampLength);
  getInt("q", spec.fieldSize);
  if (spec.fieldSize < 2)
    throw runtime_error("Field size q must be >= 2");

  long long correctionIndex = 0;
  getInt("index", correctionIndex);

  // ---- output ----
  spec.out.label = outputName;
  spec.out.correctionIndex = correctionIndex;
  if (L.regions.count(outputName)) {
    const MemRegion &r = lookup_region(L, outputName);
    spec.out.scalar = false;
    spec.out.start = r.start;
    spec.out.length = clampLength > 0 ? min(clampLength, r.size()) : r.size();
  } else {
    spec.out.scalar = true;
    spec.out.anchorName = outputName;
    spec.out.length = 1;
    spec.out.correctionIndex = 0;
  }
  {
    auto it = j.find(outputName);
    if (it != j.end() && !it->second.isString) {
      spec.out.hasExpected = true;
      spec.out.expected = it->second.i;
    }
  }
  if (spec.out.correctionIndex < 0 ||
      spec.out.correctionIndex >= spec.out.length)
    throw runtime_error("\"index\" out of range for output '" + outputName +
                        "'");

  // ---- inputs and scalar args ----
  static const vector<string> reserved = {"output", "varied", "length", "index",
                                          "q"};
  for (auto &kv : j) {
    const string &key = kv.first;
    if (find(reserved.begin(), reserved.end(), key) != reserved.end())
      continue;
    if (key == outputName)
      continue; // expected-output value, handled above

    if (L.regions.count(key)) {
      if (kv.second.isString)
        throw runtime_error("Input '" + key + "' must have an integer value");
      const MemRegion &r = lookup_region(L, key);
      ResolvedArg a;
      a.name = key;
      a.start = r.start;
      a.length = clampLength > 0 ? min(clampLength, r.size()) : r.size();
      a.fillValue = kv.second.i;
      spec.args.push_back(a);
      continue;
    }

    string scalarRegion = "__mbc_arg_" + fn + "_" + key;
    if (L.regions.count(scalarRegion)) {
      long long fromTrace = 0;
      if (trace_scalar_arg(correct_src, fn, key, false, fromTrace)) {
        if (!kv.second.isString && fromTrace != kv.second.i)
          throw runtime_error("Scalar arg '" + key + "' is " +
                              to_string(kv.second.i) + " in " + jsonPath +
                              " but " + to_string(fromTrace) +
                              " in the trace -- stale function_inputs file?");
        cout << "[scalar] " << key << " = " << fromTrace
             << " (asserted by the trace)\n";
      } else {
        cout << "[scalar] " << key
             << " declared but not pinned in the trace; ignoring\n";
      }
      continue;
    }

    string known;
    for (auto &r : L.regions)
      known += " " + r.first;
    throw runtime_error("JSON key '" + key +
                        "' matches neither a declared region nor "
                        "__mbc_arg_" +
                        fn + "_" + key + ". Known regions:" + known);
  }

  if (spec.args.empty())
    throw runtime_error("No input regions found in " + jsonPath);

  std::sort(spec.args.begin(), spec.args.end(),
            [](const ResolvedArg &a, const ResolvedArg &b) {
              return a.start < b.start;
            });

  for (size_t i = 0; i + 1 < spec.args.size(); i++)
    if (spec.args[i].start + spec.args[i].length > spec.args[i + 1].start)
      throw runtime_error("Inputs '" + spec.args[i].name + "' and '" +
                          spec.args[i + 1].name + "' overlap in memory");

  return spec;
}

// =====================================================================
// Brute force: try every alpha in GF(q). Each candidate gets a FRESH
// context + FRESH solver, with every constraint added in one shot (file
// assertions, input seeding, the correction equation). No push()/pop(),
// no split preprocessing: those paths risk decoupling constraints added
// in different phases from the tactic-transformed goal, which is the
// likely reason earlier attempts silently lost satisfiability. Sequential
// (not threaded) so we don't hit CPU contention across q concurrent Z3
// contexts either.
//
// Only the byte at "index" is constrained. Proving equality at every byte
// of a ~93-store chain is what caused earlier timeouts, and it's
// unnecessary: the untouched bytes are fed by the same pinned inputs
// through structurally identical formulas, so they come out equal for
// free. We still read them back post-SAT to sanity-check.
// =====================================================================

struct InputVals {
  string name;
  vector<long long> vals;
};

struct CorrectionResult {
  int value = -1;
  check_result res = unknown;
  long long alpha = -1;
  long long corrIndex = -1;
  vector<InputVals> inputs;
  vector<long long> out_correct, out_faulty;
};

static CorrectionResult check_value_correction(
    int alphaCandidate, const FunctionSpec &spec, const string &c,
    const string &f, const string &correct_src, const string &faulty_src,
    const MemoryLayout &layoutC, const MemoryLayout &layoutF, const string &effInitC, const string &effInitF) {
  const ResolvedOutput &out = spec.out;
  CorrectionResult res;
  res.value = alphaCandidate;

  context ctx; // fresh context per candidate -- z3 objects aren't shareable

  tactic simp = z3::tactic(ctx, "simplify");
  tactic eqs = z3::tactic(ctx, "solve-eqs");
  tactic prop = z3::tactic(ctx, "propagate-values");
  tactic core = z3::tactic(ctx, "smt");
  tactic pipeline = simp & prop & eqs & core;
  solver slv = pipeline.mk_solver();

  //   params p(ctx);
  //   p.set("timeout", 120000u);
  //   slv.set(p);

  expr_vector C = ctx.parse_file(c.c_str());
  expr_vector F = ctx.parse_file(f.c_str());
  for (expr e : C)
    slv.add(e);
  for (expr e : F)
    slv.add(e);

  z3::sort arr_sort = ctx.array_sort(ctx.int_sort(), ctx.int_sort());
  auto mem = [&](const string &sym, const string &tag) {
    return ctx.constant((sym + "_" + tag).c_str(), arr_sort);
  };

  expr initC = mem(effInitC, "C");
  expr initF = mem(effInitF, "F");
  slv.add(initC == initF);

  for (auto &a : spec.args) {
    for (long long i = 0; i < a.length; i++) {
      expr addr = ctx.int_val((int)(a.start + i));
      expr vi = ctx.int_const((a.name + "_" + to_string(i)).c_str());
      slv.add(select(initC, addr) == vi);
      slv.add(vi == ctx.int_val((int)a.fillValue));
    }
  }

  unsigned bits = bits_for_field(spec.fieldSize);
  // alpha is a GROUND constant supplied by the outer brute-force loop,
  // not a free/existential Z3 variable -- each check is a plain equality
  // test between two fully-determined values (given the pinned inputs
  // above), mirroring how the ineffective-query sweep trades one hard
  // existential search for many cheap concrete checks.
  expr alpha = ctx.int_val(alphaCandidate);
  expr alphaBV = int2bv(bits, alpha);

  expr finC = mem(layoutC.finalMem, "C");
  expr finF = mem(layoutF.finalMem, "F");

  expr cv0 = ctx.int_val(0), fv0 = ctx.int_val(0);
  if (out.scalar) {
    string anchC = resolve_final_ssa_symbol(correct_src, out.anchorName, false);
    string anchF = resolve_final_ssa_symbol(faulty_src, out.anchorName, true);
    cv0 = ctx.int_const((anchC + "_C").c_str());
    fv0 = ctx.int_const((anchF + "_F").c_str());
  } else {
    expr addr = ctx.int_val((int)(out.start + out.correctionIndex));
    cv0 = select(finC, addr);
    fv0 = select(finF, addr);
  }

  expr corrected = bv2int(int2bv(bits, fv0) ^ alphaBV, false);
  slv.add(cv0 == corrected);

  res.res = slv.check();
  if (res.res != sat)
    return res;

  model m = slv.get_model();
  res.alpha = alphaCandidate;
  res.corrIndex = out.scalar ? -1 : out.correctionIndex;

  for (auto &a : spec.args) {
    InputVals iv{a.name, {}};
    for (long long i = 0; i < a.length; i++)
      iv.vals.push_back(
          eval_i64(m, ctx.int_const((a.name + "_" + to_string(i)).c_str())));
    res.inputs.push_back(iv);
  }

  if (out.scalar) {
    res.out_correct.push_back(eval_i64(m, cv0));
    res.out_faulty.push_back(eval_i64(m, fv0));
  } else {
    for (long long i = 0; i < out.length; i++) {
      expr addr = ctx.int_val((int)(out.start + i));
      res.out_correct.push_back(eval_i64(m, select(finC, addr)));
      res.out_faulty.push_back(eval_i64(m, select(finF, addr)));
    }
  }

  return res;
}

int main(int argc, char **argv) {
  if (argc < 2) {
    cerr << "Usage: ./correction_query <fnName> [function_inputs.json]\n";
    return 1;
  }
  string fn = argv[1];
  string fn_path = "../../test_mayo/" + fn + "/";
  string correct_path = fn_path + fn + ".smt2";
  string faulty_dir = fn_path + "loopOrFuncSkip/";
  string spec_path =
      argc > 2 ? argv[2] : ("../../function_inputs/" + fn + ".json");

  vector<string> faultyCandidates;
  for (const auto &entry : fs::directory_iterator(faulty_dir))
    if (entry.is_regular_file() && entry.path().extension() == ".smt2")
      faultyCandidates.push_back(entry.path().string());
  if (faultyCandidates.empty()) {
    cerr << "No .smt2 file found in " << faulty_dir << "\n";
    return 1;
  }
  std::sort(faultyCandidates.begin(), faultyCandidates.end());
  string faulty_path = faultyCandidates.front();
  cout << "[+] correct trace: " << correct_path << "\n";
  cout << "[+] faulty  trace: " << faulty_path << "\n";
  cout << "[+] spec:          " << spec_path << "\n";

  string correct_raw = read_file(correct_path);
  string faulty_raw = read_file(faulty_path);

  MemoryLayout layoutC = parse_layout(correct_raw);
  MemoryLayout layoutF = parse_layout(faulty_raw);
  check_layouts_match(layoutC, layoutF);
  print_layout(layoutC, "correct");
  print_layout(layoutF, "faulty");

  FunctionSpec spec = load_function_spec(fn, spec_path, layoutC, correct_raw);
  const ResolvedOutput &out = spec.out;

  for (auto &a : spec.args)
    cout << "[arg] " << a.name << " = " << a.fillValue << " [" << a.start
         << ".." << a.start + a.length - 1 << "]\n";
  if (out.scalar)
    cout << "[out] scalar via anchor " << out.anchorName << "\n";
  else
    cout << "[out] " << out.label << " [" << out.start << ".."
         << out.start + out.length - 1 << "], correcting byte "
         << out.start + out.correctionIndex << "\n";

  string correct_src = strip_bad_asserts(strip_last_assert(correct_raw));
  string faulty_src = strip_bad_asserts(strip_last_assert(faulty_raw));

  string effInitC = find_effective_initial(correct_src, layoutC.finalMem);
  string effInitF = find_effective_initial(faulty_src, layoutF.finalMem);
  cout << "[mem] seeding at " << effInitC << " / " << effInitF
       << " (comment says " << layoutC.initialMem << ")\n";

  string c = write_suffixed(correct_src, "C", fn_path);
  string f = write_suffixed(faulty_src, "F", fn_path);

  vector<int> satValues, unsatValues, unknownValues;
  ostringstream trialsJson;
  bool firstTrial = true;

  cout << "Brute-forcing alpha in F_" << spec.fieldSize
       << " against the single fixed scenario in " << spec_path << "\n";

  for (int alphaCandidate = 0; alphaCandidate < spec.fieldSize;
       alphaCandidate++) {
    cout << "\n================ alpha = " << alphaCandidate
         << " ================\n";
    CorrectionResult r = check_value_correction(
        alphaCandidate, spec, c, f, correct_src, faulty_src, layoutC, layoutF, effInitC, effInitF);

    int v = alphaCandidate;
    if (r.res == sat) {
      satValues.push_back(v);
      cout << "  -> SAT   correction index = " << r.corrIndex
           << "  alpha = " << r.alpha << "\n";

      if (out.hasExpected) {
        long long got = r.out_correct[out.scalar ? 0 : out.correctionIndex];
        if (got != out.expected)
          cout << "  [!] expected " << out.label << "[" << out.correctionIndex
               << "] = " << out.expected << " per function_inputs, got " << got
               << " from the correct trace\n";
      }

      if (!out.scalar) {
        bool mismatchElsewhere = false;
        for (long long i = 0; i < out.length; i++) {
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
          cout << "  (all other " << out.length - 1
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
      for (auto &iv : r.inputs) {
        trialsJson << (ifirst ? "        " : ",\n        ") << "\"" << iv.name
                   << "\": " << json_arr(iv.vals);
        ifirst = false;
      }
      trialsJson << "\n      },\n";
      trialsJson << "      \"outputs\": {\n";
      trialsJson << "        \"" << out.label
                 << "_correct\": " << json_arr(r.out_correct) << ",\n";
      trialsJson << "        \"" << out.label
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

  // string witness_path = fn_path + "correction_witness.json";
  // ofstream wj(witness_path);
  // wj << "{\n";
  // wj << "  \"function\": \"" << fn << "\",\n";
  // wj << "  \"field_size\": " << spec.fieldSize << ",\n";
  // wj << "  \"sat_alpha_candidates\": "
  //    << json_arr(vector<long long>(satValues.begin(), satValues.end())) <<
  //    ",\n";
  // wj << "  \"trials\": [\n";
  // wj << trialsJson.str() << "\n";
  // wj << "  ]\n";
  // wj << "}\n";
  // cout << "[+] correction witness exported to " << witness_path << "\n";

  return 0;
}