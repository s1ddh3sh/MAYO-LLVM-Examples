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
#include <utility>
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

// NOTE the trailing `*` (was `+`): llvmbmc emits anonymous temporaries named
// `i_7_`, `i_12_`, ... with nothing after the final underscore. With `+`
// those names were left UNSUFFIXED, so the C1/F1/C2/F2 copies collapsed onto
// the same Z3 constant and were silently forced equal across executions.
static string write_suffixed(const string &content, const string &tag,
                             const string &outDir) {
  string result = content;
  regex ident(R"(\b((?:i|c|b)_\d+_[A-Za-z0-9_.]*)\b)");
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

// =====================================================================
// Memory layout, parsed from the trace's own comments. `order` keeps the
// declaration order of the ';; Array' lines, which is the order llvmbmc
// laid the call's arguments out -- that ordering is what lets us match
// callee parameter names to caller-side region names below.
// =====================================================================

struct MemRegion {
  string name;
  long long start = 0;
  long long end = 0; // inclusive
  long long size() const { return end - start + 1; }
};

struct MemoryLayout {
  map<string, MemRegion> regions;
  vector<string> order;
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
    if (!L.regions.count(r.name))
      L.order.push_back(r.name);
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

// The ';; Initial_Memory' comment names the formal entry memory, but the
// prologue blocks that would copy it forward sit behind path guards that
// are never asserted true, leaving that chain unconstrained. Walk back from
// `startSym` through the UNGUARDED store chain and stop at the first guarded
// definition: that version is the real input to the straight-line region.
static string find_effective_initial(const string &src,
                                     const string &startSym) {
  string current, base;
  split_mem_symbol(startSym, current, base);
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
      return target; // guarded -- the effective initial version

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

// For a SCALAR output the seed point cannot be derived from Final_Memory:
// the anchor is computed in a block that may be a sibling of the final store
// chain rather than an ancestor of it (lincomb reads c_10 while Final_Memory
// is c_9, both branching off c_5). Take the lowest memory version appearing
// in the anchor's own defining assert and seed from there.
static string find_output_read_memory(const string &src,
                                      const string &anchorSym,
                                      const string &memBase) {
  size_t defPos = src.rfind("(= " + anchorSym);
  if (defPos == string::npos)
    throw runtime_error("Could not find the defining assert for '" + anchorSym +
                        "'");
  size_t assertStart = src.rfind("(assert", defPos);
  if (assertStart == string::npos)
    throw runtime_error("Malformed assert around '" + anchorSym + "'");
  size_t end = match_paren(src, assertStart);
  if (end == string::npos)
    throw runtime_error("Unbalanced assert around '" + anchorSym + "'");
  string block = src.substr(assertStart, end - assertStart + 1);

  regex re("c_(\\d+)_" + memBase);
  long bestN = -1;
  string best;
  for (auto it = sregex_iterator(block.begin(), block.end(), re),
            e = sregex_iterator();
       it != e; ++it) {
    long n = stol((*it)[1].str());
    if (bestN < 0 || n < bestN) {
      bestN = n;
      best = (*it)[0].str();
    }
  }
  if (bestN < 0)
    throw runtime_error("The defining assert for '" + anchorSym +
                        "' reads no " + memBase + " version");
  return best;
}

static void check_layouts_match(const MemoryLayout &a, const MemoryLayout &b) {
  if (a.regions.size() != b.regions.size())
    throw runtime_error("correct/faulty traces declare different region counts");
  for (auto &kv : a.regions) {
    auto it = b.regions.find(kv.first);
    if (it == b.regions.end())
      throw runtime_error("Region '" + kv.first + "' missing from faulty trace");
    if (it->second.start != kv.second.start || it->second.end != kv.second.end)
      throw runtime_error("Region '" + kv.first +
                          "' has different bounds in correct vs faulty trace");
  }
}

static void print_layout(const MemoryLayout &L, const string &which) {
  cout << "[layout:" << which << "] initial=" << L.initialMem
       << " final=" << L.finalMem << "\n";
  for (auto &n : L.order) {
    const MemRegion &r = L.regions.at(n);
    cout << "    " << n << " [" << r.start << ".." << r.end << "] ("
         << r.size() << " bytes)\n";
  }
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

// A value the trace pins itself, e.g.
//     (assert (= i_2___mbc_arg_lincomb_n_correct 81))
//     (assert (= i_1_pqmayo_..._blocker_correct 0))
// Some of these also have a declared region, but they are scalars, not
// buffers -- seeding them through memory would be wrong.
static bool trace_pinned_scalar(const string &src, const string &base,
                                bool faulty, long long &out) {
  string suffix = faulty ? "_faulty" : "_correct";
  regex re("\\(assert\\s*\\(=\\s*i_\\d+_" + base + suffix +
           "\\s+(-?\\d+)\\)\\)");
  smatch m;
  if (!regex_search(src, m, re))
    return false;
  out = stoll(m[1].str());
  return true;
}

// =====================================================================
// Minimal flat-JSON reader. Insertion order is PRESERVED -- the callee
// parameter order in active_lengths.json is what we zip against the
// region declaration order, so it must not be sorted away.
// =====================================================================

struct JsonValue {
  bool isString = false;
  string s;
  long long i = 0;
};
using JsonObj = vector<pair<string, JsonValue>>;

static const JsonValue *json_find(const JsonObj &o, const string &key) {
  for (auto &kv : o)
    if (kv.first == key)
      return &kv.second;
  return nullptr;
}

static JsonObj parse_flat_json(const string &text) {
  JsonObj out;
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
    out.push_back({key, v});

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
// Parameter <-> region mapping.
//
// The SMT regions carry CALLER-side argument names (a_buf, x) while
// active_lengths.json carries CALLEE parameter names (a, b), because the
// two sides of the call use different identifiers:
//     define ... @lincomb(ptr %a, ptr %b, i32 %n, i32 %m)
//     call    ... @lincomb(ptr %a_buf, ptr %x, i32 %n_val, i32 %m_val)
//
// Scalars need no matching: llvmbmc names their regions after the CALLEE
// parameter already (__mbc_arg_lincomb_n <- %n). Pointer parameters are
// matched POSITIONALLY: buffer regions in ';; Array' declaration order are
// zipped against the non-scalar entries of active_lengths.json in file
// order. Hence the order-preserving JSON reader above.
// =====================================================================

struct ArgMap {
  map<string, string> paramToRegion; // "a" -> "a_buf"
  map<string, string> regionToParam; // "a_buf" -> "a"
  map<string, long long> activeLen;  // region name -> active bytes
};

static bool is_internal_region(const string &name, const string &fn,
                               const string &src) {
  if (name == "__mbc_ret_anchor_" + fn)
    return true;
  if (name.rfind("__mbc_arg_", 0) == 0)
    return true;
  long long dummy;
  return trace_pinned_scalar(src, name, false, dummy); // e.g. the blocker
}

static ArgMap build_arg_map(const string &fn, const string &activePath,
                            const MemoryLayout &L, const string &src,
                            const string &outputRegionExclude) {
  ArgMap M;

  // active_lengths.json enumerates the function's CALL arguments as the
  // qemu pipeline observed them; an output buffer that the function writes
  // rather than reads an "active length" from is often absent from it even
  // though it has its own ';; Array' region. Exclude it up front so the
  // positional zip below only has to account for true inputs.
  vector<string> bufferRegions;
  for (auto &n : L.order)
    if (!is_internal_region(n, fn, src) && n != outputRegionExclude)
      bufferRegions.push_back(n);

  if (!fs::exists(activePath)) {
    cout << "[note] no " << activePath
         << " -- using region names as-is and full region lengths\n";
    for (auto &n : bufferRegions) {
      M.paramToRegion[n] = n;
      M.regionToParam[n] = n;
    }
    return M;
  }

  JsonObj act = parse_flat_json(read_file(activePath));

  vector<pair<string, long long>> bufferParams;
  for (auto &kv : act) {
    if (kv.second.isString)
      throw runtime_error("active_lengths: '" + kv.first +
                          "' must be an integer");
    long long dummy;
    bool isScalar =
        L.regions.count("__mbc_arg_" + fn + "_" + kv.first) ||
        trace_pinned_scalar(src, "__mbc_arg_" + fn + "_" + kv.first, false,
                            dummy);
    if (isScalar) {
      M.paramToRegion[kv.first] = "__mbc_arg_" + fn + "_" + kv.first;
      continue; // scalar: matched by name, length irrelevant
    }
    bufferParams.push_back({kv.first, kv.second.i});
  }

  if (bufferParams.size() != bufferRegions.size()) {
    string ps, rs;
    for (auto &p : bufferParams)
      ps += " " + p.first;
    for (auto &r : bufferRegions)
      rs += " " + r;
    throw runtime_error(
        "Cannot match parameters to regions positionally: " + activePath +
        " has " + to_string(bufferParams.size()) + " buffer parameter(s) (" +
        ps + " ) but the trace declares " + to_string(bufferRegions.size()) +
        " buffer region(s) (" + rs + " )");
  }

  for (size_t i = 0; i < bufferParams.size(); i++) {
    const string &param = bufferParams[i].first;
    const string &region = bufferRegions[i];
    M.paramToRegion[param] = region;
    M.regionToParam[region] = param;
    long long len = bufferParams[i].second;
    const MemRegion &r = L.regions.at(region);
    if (len <= 0 || len > r.size())
      throw runtime_error("Active length " + to_string(len) + " for '" + param +
                          "' does not fit region '" + region + "' (" +
                          to_string(r.size()) + " bytes)");
    M.activeLen[region] = len;
    cout << "[map] " << param << " -> " << region << " (" << len
         << " active bytes of " << r.size() << ")\n";
  }
  return M;
}

// =====================================================================
// Function spec
// =====================================================================

enum class ArgRole { FixedInput, VariedInput };

struct ResolvedArg {
  string name; // region name
  string param;
  ArgRole role;
  long long start = 0;
  long long length = 0;
  long long fillValue = 0;
};

struct ResolvedOutput {
  bool scalar = true;
  string label;
  string anchorName;
  long long start = 0;
  long long length = 1;
  long long compareIndex = 0;
  bool hasExpected = false;
  long long expected = 0;
};

struct FunctionSpec {
  string fnName;
  vector<ResolvedArg> args;
  ResolvedOutput out;
  long long fieldSize = 16;
  bool hasVaried = false;
};

// A JSON key may name either the callee parameter or the region.
static string resolve_region_name(const string &key, const ArgMap &M,
                                  const MemoryLayout &L) {
  auto it = M.paramToRegion.find(key);
  if (it != M.paramToRegion.end())
    return it->second;
  if (L.regions.count(key))
    return key;
  return "";
}

static FunctionSpec load_function_spec(const string &fn, const string &jsonPath,
                                       const MemoryLayout &L,
                                       const string &correct_src,
                                       const ArgMap &M,
                                       const string &variedOverride) {
  JsonObj j = parse_flat_json(read_file(jsonPath));

  FunctionSpec spec;
  spec.fnName = fn;
  const string anchorRegion = "__mbc_ret_anchor_" + fn;

  auto getStr = [&](const string &k, string &dst) {
    const JsonValue *v = json_find(j, k);
    if (!v)
      return false;
    if (!v->isString)
      throw runtime_error("JSON key '" + k + "' must be a string");
    dst = v->s;
    return true;
  };
  auto getInt = [&](const string &k, long long &dst) {
    const JsonValue *v = json_find(j, k);
    if (!v)
      return false;
    if (v->isString)
      throw runtime_error("JSON key '" + k + "' must be an integer");
    dst = v->i;
    return true;
  };

  string outputName;
  if (!getStr("output", outputName))
    throw runtime_error("function_inputs JSON must contain \"output\"");

  string variedName;
  spec.hasVaried = getStr("varied", variedName);
  if (!variedOverride.empty()) {
    if (spec.hasVaried && variedName != variedOverride)
      cout << "[note] varying '" << variedOverride
           << "' from the command line, overriding \"varied\":\"" << variedName
           << "\"\n";
    variedName = variedOverride;
    spec.hasVaried = true;
  }
  string variedRegion =
      spec.hasVaried ? resolve_region_name(variedName, M, L) : "";

  long long clampLength = 0; // optional global override
  getInt("length", clampLength);
  getInt("q", spec.fieldSize);
  if (spec.fieldSize < 2)
    throw runtime_error("Field size q must be >= 2");

  long long compareIndex = 0;
  getInt("index", compareIndex);

  auto lengthFor = [&](const string &region) {
    const MemRegion &r = L.regions.at(region);
    if (clampLength > 0)
      return min(clampLength, r.size());
    auto it = M.activeLen.find(region);
    if (it != M.activeLen.end())
      return it->second;
    return r.size();
  };

  // ---- output ----
  string outRegion = resolve_region_name(outputName, M, L);
  spec.out.label = outputName;
  spec.out.compareIndex = compareIndex;
  bool outIsAnchor = outRegion.empty() || outRegion == anchorRegion;
  if (outIsAnchor) {
    // A scalar function has exactly one possible return anchor, so
    // whatever label the JSON used ("c", "ret", ...) is purely cosmetic --
    // always resolve to the trace's real anchor region, never the literal
    // string the caller wrote.
    spec.out.scalar = true;
    spec.out.anchorName = anchorRegion;
    spec.out.length = 1;
    spec.out.compareIndex = 0;
  } else {
    const MemRegion &r = L.regions.at(outRegion);
    spec.out.scalar = false;
    spec.out.start = r.start;
    spec.out.length = lengthFor(outRegion);
  }
  {
    const JsonValue *v = json_find(j, outputName);
    if (v && !v->isString) {
      spec.out.hasExpected = true;
      spec.out.expected = v->i;
    }
  }
  if (spec.out.compareIndex < 0 || spec.out.compareIndex >= spec.out.length)
    throw runtime_error("\"index\" out of range for output '" + outputName +
                        "'");
  if (spec.hasVaried && !outIsAnchor && variedRegion == outRegion)
    throw runtime_error("Cannot vary '" + variedName + "' -- it is the output");

  // ---- inputs and scalars ----
  static const vector<string> reserved = {"output", "varied", "length", "index",
                                          "q"};
  bool sawVaried = false;
  for (auto &kv : j) {
    const string &key = kv.first;
    if (find(reserved.begin(), reserved.end(), key) != reserved.end())
      continue;
    if (key == outputName || key == anchorRegion)
      continue;

    // 1. scalar pinned by the trace (by param name or __mbc_arg_<fn>_<key>)
    long long fromTrace = 0;
    string scalarBase;
    if (trace_pinned_scalar(correct_src, key, false, fromTrace))
      scalarBase = key;
    else if (trace_pinned_scalar(correct_src, "__mbc_arg_" + fn + "_" + key,
                                 false, fromTrace))
      scalarBase = "__mbc_arg_" + fn + "_" + key;
    if (!scalarBase.empty()) {
      if (!kv.second.isString && fromTrace != kv.second.i)
        throw runtime_error("Scalar '" + key + "' is " +
                            to_string(kv.second.i) + " in " + jsonPath +
                            " but " + to_string(fromTrace) +
                            " in the trace -- stale function_inputs file?");
      cout << "[scalar] " << key << " = " << fromTrace << " (pinned as "
           << scalarBase << ")\n";
      continue;
    }

    // 2. buffer, named either by callee parameter or by region
    string region = resolve_region_name(key, M, L);
    if (!region.empty()) {
      if (kv.second.isString)
        throw runtime_error("Input '" + key + "' must have an integer value");
      const MemRegion &r = L.regions.at(region);
      ResolvedArg a;
      a.name = region;
      auto pit = M.regionToParam.find(region);
      a.param = pit != M.regionToParam.end() ? pit->second : region;
      a.role = (spec.hasVaried && region == variedRegion)
                   ? ArgRole::VariedInput
                   : ArgRole::FixedInput;
      if (a.role == ArgRole::VariedInput)
        sawVaried = true;
      a.start = r.start;
      a.length = lengthFor(region);
      a.fillValue = kv.second.i;
      spec.args.push_back(a);
      continue;
    }

    string known;
    for (auto &n : L.order)
      known += " " + n;
    throw runtime_error("JSON key '" + key +
                        "' is neither a trace-pinned scalar nor a known "
                        "parameter/region. Regions:" +
                        known);
  }

  if (spec.hasVaried && !sawVaried) {
    string inputs;
    for (auto &a : spec.args)
      inputs += " " + a.param + "(" + a.name + ")";
    throw runtime_error("'" + variedName + "' does not name an input. Inputs:" +
                        inputs);
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
// Sweep over the varied input's byte 0. Trades one hard existential search
// for q cheap, fully case-split checks -- each hands the solver a concrete
// substitution instead of asking it to find one. Treat each SAT as a
// confirmed witness for that value, not as evidence the solver searched.
// =====================================================================

struct SweepEnv {
  const FunctionSpec *spec;
  expr c1v, f1v, c2v, f2v;
  expr finC1, finF1, finC2, finF2;
};

static void run_sweep(context &ctx, solver &slv, const expr &sweepVar,
                      const SweepEnv &env, const string &fn,
                      const string &fn_path) {
  struct FixedVals {
    string name;
    vector<long long> vals;
  };
  struct VariedVals {
    string name;
    vector<long long> v1, v2;
  };

  const FunctionSpec &spec = *env.spec;
  const ResolvedOutput &out = spec.out;

  vector<int> satValues, unsatValues;
  ostringstream trialsJson;
  bool firstTrial = true;

  for (int v = 0; v < (int)spec.fieldSize; v++) {
    slv.push();
    slv.add(sweepVar == ctx.int_val(v));

    cout << "\n================ value " << v << " ================\n";
    check_result res = slv.check();

    if (res == sat) {
      satValues.push_back(v);
      model m = slv.get_model();
      auto ev = [&](const expr &e) { return m.eval(e, true).simplify(); };

      cout << "  -> SAT\n";
      cout << "  correct[1] = " << ev(env.c1v) << "  faulty[1] = " << ev(env.f1v)
           << "\n";
      cout << "  correct[2] = " << ev(env.c2v) << "  faulty[2] = " << ev(env.f2v)
           << "\n";

      vector<FixedVals> fixedInputs;
      vector<VariedVals> variedInputs;
      for (auto &a : spec.args) {
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
      if (out.scalar) {
        out1_correct.push_back(eval_i64(m, env.c1v));
        out1_faulty.push_back(eval_i64(m, env.f1v));
        out2_correct.push_back(eval_i64(m, env.c2v));
        out2_faulty.push_back(eval_i64(m, env.f2v));
      } else {
        for (long long i = 0; i < out.length; i++) {
          expr a = ctx.int_val((int)(out.start + i));
          out1_correct.push_back(eval_i64(m, select(env.finC1, a)));
          out1_faulty.push_back(eval_i64(m, select(env.finF1, a)));
          out2_correct.push_back(eval_i64(m, select(env.finC2, a)));
          out2_faulty.push_back(eval_i64(m, select(env.finF2, a)));
        }
      }

      if (out.hasExpected) {
        long long got = out1_correct[out.compareIndex];
        if (got != out.expected)
          cout << "  [!] expected " << out.label << "[" << out.compareIndex
               << "] = " << out.expected << " per function_inputs, got " << got
               << " from the correct trace\n";
      }

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
      trialsJson << "          \"" << out.label
                 << "_correct\": " << json_arr(out1_correct) << ",\n";
      trialsJson << "          \"" << out.label
                 << "_faulty\": " << json_arr(out1_faulty) << "\n";
      trialsJson << "        }\n";
      trialsJson << "      },\n";
      trialsJson << "      \"exec2\": {\n";
      writeInputsObj([](VariedVals &vv) { return vv.v2; });
      trialsJson << ",\n";
      trialsJson << "        \"expected\": {\n";
      trialsJson << "          \"" << out.label
                 << "_correct\": " << json_arr(out2_correct) << ",\n";
      trialsJson << "          \"" << out.label
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

  cout << "\n================ SWEEP SUMMARY ================\n";
  if (satValues.empty()) {
    cout << "No value in [0," << spec.fieldSize << ") was SAT for '" << fn
         << "'.\n";
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
  if ((long long)satValues.size() == spec.fieldSize)
    cout << "[!] every value was SAT -- the compared outputs are probably not "
            "determined by the seeded inputs; check the seed point and look "
            "for unconstrained i_<N>_ temporaries in the trace.\n";

  string witness_path = fn_path + "witness.json";
  ofstream wj(witness_path);
  wj << "{\n";
  wj << "  \"function\": \"" << fn << "\",\n";
  wj << "  \"sat_values\": "
     << json_arr(vector<long long>(satValues.begin(), satValues.end())) << ",\n";
  wj << "  \"trials\": [\n";
  wj << trialsJson.str() << "\n";
  wj << "  ]\n";
  wj << "}\n";
  cout << "[+] witness exported to " << witness_path << "\n";
}

static bool ends_with(const string &s, const string &suf) {
  return s.size() >= suf.size() &&
         s.compare(s.size() - suf.size(), suf.size(), suf) == 0;
}

int main(int argc, char **argv) {
  if (argc < 2) {
    cerr << "Usage: ./ineffective_query <fnName> [variedInput] "
            "[function_inputs.json]\n"
            "  e.g. ./ineffective_query lincomb b\n";
    return 1;
  }
  string fn = argv[1];

  string variedOverride, spec_path;
  for (int i = 2; i < argc; i++) {
    string a = argv[i];
    if (ends_with(a, ".json") || a.find('/') != string::npos) {
      if (!spec_path.empty()) {
        cerr << "Two spec files given: " << spec_path << " and " << a << "\n";
        return 1;
      }
      spec_path = a;
    } else {
      if (!variedOverride.empty()) {
        cerr << "Only one input can be varied (got '" << variedOverride
             << "' and '" << a << "')\n";
        return 1;
      }
      variedOverride = a;
    }
  }
  if (spec_path.empty())
    spec_path = "../../function_inputs/" + fn + ".json";

  string fn_path = "../../test_mayo/" + fn + "/";
  string correct_path = fn_path + fn + ".smt2";
  string faulty_dir = fn_path + "loopOrFuncSkip/";
  string active_path = fn_path + "active_lengths.json";

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
  cout << "[+] correct trace:  " << correct_path << "\n";
  cout << "[+] faulty  trace:  " << faulty_path << "\n";
  cout << "[+] spec:           " << spec_path << "\n";
  cout << "[+] active lengths: " << active_path << "\n";
  if (!variedOverride.empty())
    cout << "[+] varying:        " << variedOverride << "\n";

  string correct_raw = read_file(correct_path);
  string faulty_raw = read_file(faulty_path);

  MemoryLayout layoutC = parse_layout(correct_raw);
  MemoryLayout layoutF = parse_layout(faulty_raw);
  check_layouts_match(layoutC, layoutF);
  print_layout(layoutC, "correct");
  print_layout(layoutF, "faulty");

  // Peek at "output" before building the arg map, so a buffer output that
  // shares its region's exact name can be excluded from the positional
  // input-parameter match (see build_arg_map).
  string outputRegionExclude;
  {
    JsonObj peek = parse_flat_json(read_file(spec_path));
    const JsonValue *v = json_find(peek, "output");
    if (v && v->isString && layoutC.regions.count(v->s)) {
      outputRegionExclude = v->s;
      cout << "[note] excluding output region '" << outputRegionExclude
           << "' from positional input matching\n";
    }
  }

  ArgMap argMap = build_arg_map(fn, active_path, layoutC, correct_raw,
                                outputRegionExclude);
  FunctionSpec spec = load_function_spec(fn, spec_path, layoutC, correct_raw,
                                         argMap, variedOverride);

  for (auto &a : spec.args)
    cout << "[arg] " << a.param << " (" << a.name << ") "
         << (a.role == ArgRole::FixedInput ? "fixed=" + to_string(a.fillValue)
                                           : string("varied"))
         << " [" << a.start << ".." << a.start + a.length - 1 << "]\n";
  if (spec.out.scalar)
    cout << "[out] scalar via anchor " << spec.out.anchorName << "\n";
  else
    cout << "[out] " << spec.out.label << " [" << spec.out.start << ".."
         << spec.out.start + spec.out.length - 1 << "], compare byte "
         << spec.out.start + spec.out.compareIndex << "\n";

  string correct_src = strip_bad_asserts(strip_last_assert(correct_raw));
  string faulty_src = strip_bad_asserts(strip_last_assert(faulty_raw));

  string anchC, anchF;
  string seedStartC = layoutC.finalMem, seedStartF = layoutF.finalMem;
  if (spec.out.scalar) {
    anchC = resolve_final_ssa_symbol(correct_src, spec.out.anchorName, false);
    anchF = resolve_final_ssa_symbol(faulty_src, spec.out.anchorName, true);
    string verC, baseC, verF, baseF;
    split_mem_symbol(layoutC.finalMem, verC, baseC);
    split_mem_symbol(layoutF.finalMem, verF, baseF);
    seedStartC = find_output_read_memory(correct_src, anchC, baseC);
    seedStartF = find_output_read_memory(faulty_src, anchF, baseF);
    cout << "[mem] anchor " << anchC << " reads " << seedStartC << "\n";
  }
  string effInitC = find_effective_initial(correct_src, seedStartC);
  string effInitF = find_effective_initial(faulty_src, seedStartF);
  cout << "[mem] seeding at " << effInitC << " / " << effInitF
       << " (comment says " << layoutC.initialMem << ")\n";

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
  auto mem = [&](const string &sym, const string &tag) {
    return ctx.constant((sym + "_" + tag).c_str(), arr_sort);
  };

  expr initC1 = mem(effInitC, "C1");
  expr initF1 = mem(effInitF, "F1");
  expr initC2 = mem(effInitC, "C2");
  expr initF2 = mem(effInitF, "F2");

  slv.add(initC1 == initF1);
  slv.add(initC2 == initF2);

  expr sweepVar = ctx.int_val(0);
  bool haveSweepVar = false;

  for (auto &a : spec.args) {
    for (long long i = 0; i < a.length; i++) {
      expr addr = ctx.int_val((int)(a.start + i));
      if (a.role == ArgRole::FixedInput) {
        expr vi = ctx.int_const((a.name + "_" + to_string(i)).c_str());
        slv.add(select(initC1, addr) == vi);
        slv.add(select(initC2, addr) == vi);
        slv.add(vi == ctx.int_val((int)a.fillValue));
      } else {
        expr o1i = ctx.int_const((a.name + "_1_" + to_string(i)).c_str());
        expr o2i = ctx.int_const((a.name + "_2_" + to_string(i)).c_str());
        slv.add(select(initC1, addr) == o1i);
        slv.add(select(initC2, addr) == o2i);
        slv.add(o1i >= ctx.int_val(0));
        slv.add(o1i < ctx.int_val((int)spec.fieldSize));
        slv.add(o2i >= ctx.int_val(0));
        slv.add(o2i < ctx.int_val((int)spec.fieldSize));
        if (i == 0 && !haveSweepVar) {
          sweepVar = o1i;
          haveSweepVar = true;
        }
      }
    }
  }

  expr finC1 = mem(layoutC.finalMem, "C1");
  expr finF1 = mem(layoutF.finalMem, "F1");
  expr finC2 = mem(layoutC.finalMem, "C2");
  expr finF2 = mem(layoutF.finalMem, "F2");

  expr c1v = ctx.int_val(0), f1v = ctx.int_val(0);
  expr c2v = ctx.int_val(0), f2v = ctx.int_val(0);

  if (spec.out.scalar) {
    c1v = ctx.int_const((anchC + "_C1").c_str());
    f1v = ctx.int_const((anchF + "_F1").c_str());
    c2v = ctx.int_const((anchC + "_C2").c_str());
    f2v = ctx.int_const((anchF + "_F2").c_str());
  } else {
    expr addr = ctx.int_val((int)(spec.out.start + spec.out.compareIndex));
    c1v = select(finC1, addr);
    f1v = select(finF1, addr);
    c2v = select(finC2, addr);
    f2v = select(finF2, addr);
  }

  // Ineffective-fault condition: fault masked in trial 1.
  slv.add(c1v == f1v);
  // slv.add(c2v != f2v);   // ... and observable in trial 2

  cout << "================ SOLVER ================\n";
  cout << slv.assertions().size() << " assertions\n";

  if (!haveSweepVar) {
    cout << "[note] no input to vary -- running a single fully-concrete "
            "check instead of a sweep.\n";
    check_result res = slv.check();
    cout << (res == sat ? "SAT!\n" : res == unsat ? "UNSAT\n" : "UNKNOWN\n");
    return res == sat ? 0 : 1;
  }

  SweepEnv env{&spec, c1v, f1v, c2v, f2v, finC1, finF1, finC2, finF2};
  run_sweep(ctx, slv, sweepVar, env, fn, fn_path);
  return 0;
}