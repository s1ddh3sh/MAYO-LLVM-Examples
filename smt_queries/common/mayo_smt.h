// mayo_smt.h -- shared plumbing for the MAYO ineffective/correction SMT
// queries (ineffective_multi_query.cpp / correction_multi_query.cpp).
//
// The per-function parameters come from the SAME files the Unicorn
// simulation tests read (test_qemu/dist_tests/mayo/run_combined_unicorn.sh):
//
//   mayo.json                       secret-buf / eph_secret / fixed-scalars
//   test_mayo/<fn>/qemu_witness.json  argument layout (role, length, scalars)
//   test_mayo/<fn>/active_lengths.json  bytes of each input actually read
//
// Instead of sampling a handful of public backgrounds p (one per seed),
// the queries quantify over p symbolically: every active input byte is a
// fresh 8-bit SMT variable in [0, field_mod) -- the same domain the
// simulation's uniform fill draws from -- and only the swept secret byte
// secret_buf[secret_pos] is fixed per query.
//
// To make the inputs symbolic, the driver prelude that llvmbmc encodes
// (mayo_memset -> zero-filling lambda, then `store i8 <const>` for the
// baked-in function_inputs value) is rewritten: the lambda of every input
// region yields a fresh array `__in_<region>_<correct|faulty>` over the
// region's active bytes (0 beyond), and the constant stores into input
// regions are dropped. Output-only regions keep their zero fill (matching
// the harness, which never writes them).
#pragma once

#include "z3++.h"

#include <algorithm>
#include <atomic>
#include <chrono>
#include <cctype>
#include <cstring>
#include <cstdint>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <map>
#include <mutex>
#include <regex>
#include <sys/resource.h>
#include <set>
#include <sstream>
#include <stdexcept>
#include <string>
#include <thread>
#include <tuple>
#include <unordered_set>
#include <utility>
#include <vector>

namespace mayo_smt {

using std::map;
using std::pair;
using std::runtime_error;
using std::set;
using std::string;
using std::to_string;
using std::vector;
namespace fs = std::filesystem;

// =====================================================================
// Small utilities
// =====================================================================

inline string read_file(const string &path) {
  std::ifstream ifs(path);
  if (!ifs)
    throw runtime_error("Cannot open: " + path);
  return string((std::istreambuf_iterator<char>(ifs)),
                std::istreambuf_iterator<char>());
}

inline vector<string> split_csv(const string &s) {
  vector<string> out;
  string cur;
  std::istringstream iss(s);
  while (std::getline(iss, cur, ','))
    if (!cur.empty())
      out.push_back(cur);
  return out;
}

inline bool starts_with(const string &s, const string &p) {
  return s.rfind(p, 0) == 0;
}
inline bool ends_with(const string &s, const string &suf) {
  return s.size() >= suf.size() &&
         s.compare(s.size() - suf.size(), suf.size(), suf) == 0;
}

inline string join_ints(const vector<int> &v, size_t limit = SIZE_MAX) {
  std::ostringstream o;
  o << "[";
  for (size_t i = 0; i < v.size() && i < limit; i++)
    o << (i ? ", " : "") << v[i];
  if (v.size() > limit)
    o << ", ... +" << v.size() - limit;
  o << "]";
  return o.str();
}

// Balanced-paren match starting at s[open] == '('.
inline size_t match_paren(const string &s, size_t open) {
  int depth = 0;
  for (size_t i = open; i < s.size(); i++) {
    if (s[i] == '(')
      depth++;
    else if (s[i] == ')') {
      if (--depth == 0)
        return i;
    }
  }
  return string::npos;
}

// Runs f(0..n-1) on `jobs` threads. The first exception is rethrown.
template <class F> void parallel_for(size_t n, unsigned jobs, F f) {
  std::atomic<size_t> next{0};
  std::mutex errMu;
  string err;
  unsigned nt = (unsigned)std::max<size_t>(1, std::min<size_t>(jobs, n));
  vector<std::thread> ts;
  for (unsigned j = 0; j < nt; j++)
    ts.emplace_back([&] {
      for (size_t k; (k = next++) < n;) {
        try {
          f(k);
        } catch (const std::bad_alloc &) {
          std::lock_guard<std::mutex> g(errMu);
          if (err.empty())
            err = "out of memory -- raise --mem-limit or lower --jobs";
        } catch (const z3::exception &e) {
          std::lock_guard<std::mutex> g(errMu);
          if (err.empty())
            err = string("z3: ") + e.msg();
        } catch (const std::exception &e) {
          std::lock_guard<std::mutex> g(errMu);
          if (err.empty())
            err = e.what();
        }
      }
    });
  for (auto &t : ts)
    t.join();
  if (!err.empty())
    throw runtime_error(err);
}

// --mem-limit, once parsed (0 = none): the budget mem_safe_jobs plans with.
inline size_t &g_memLimitMb() {
  static size_t mb = 0;
  return mb;
}

inline size_t mem_available_mb() {
  std::ifstream mi("/proc/meminfo");
  string key, unit;
  size_t kb = 0;
  while (mi >> key >> kb >> unit)
    if (key == "MemAvailable:")
      return kb / 1024;
  return 0;
}

// Caps `want` parallel solver instances so that their estimated footprint
// stays within 80% of the memory budget (--mem-limit, else MemAvailable).
// Measured on mat_mul: a Z3 context holding trace copies takes ~40x the SMT
// text size; 60x is used for headroom. Only an estimate -- the hard limit is
// the RLIMIT_AS set in parse_options.
inline unsigned mem_safe_jobs(unsigned want, size_t textBytesPerInstance,
                              const char *what) {
  size_t availMb = mem_available_mb();
  if (g_memLimitMb() > 0)
    availMb = std::min(availMb, g_memLimitMb());
  if (availMb == 0 || want <= 1)
    return std::max(1u, want);
  double est = 60.0 * (double)textBytesPerInstance;
  unsigned fit = (unsigned)std::max(1.0, 0.8 * availMb * 1048576.0 / est);
  if (fit < want) {
    std::cout << "[i] " << what << ": limiting to " << fit
              << " parallel job(s) (~" << (size_t)(est / (1 << 20))
              << " MB each, " << availMb << " MB budget)\n";
    return fit;
  }
  return want;
}

// =====================================================================
// Minimal JSON (objects keep insertion order -- the witness layout's
// order IS the function's parameter order).
// =====================================================================

struct Json {
  enum Type { Null, Bool, Num, Str, Arr, Obj } type = Null;
  bool b = false;
  string text; // number literal or string value
  vector<Json> arr;
  vector<pair<string, Json>> obj;

  const Json *get(const string &k) const {
    if (type != Obj)
      return nullptr;
    for (auto &kv : obj)
      if (kv.first == k)
        return &kv.second;
    return nullptr;
  }
  string str(const string &k, const string &dflt = "") const {
    const Json *v = get(k);
    return (v && v->type == Str) ? v->text : dflt;
  }
  long long integer(const string &k, long long dflt) const {
    const Json *v = get(k);
    if (!v || v->type != Num)
      return dflt;
    try {
      return std::stoll(v->text);
    } catch (...) {
      return dflt;
    }
  }
  bool boolean(const string &k) const {
    const Json *v = get(k);
    return v && v->type == Bool && v->b;
  }
};

class JsonParser {
public:
  explicit JsonParser(const string &s) : s_(s) {}
  Json parse() {
    Json v = value();
    ws();
    if (i_ != s_.size())
      fail("trailing characters");
    return v;
  }

private:
  const string &s_;
  size_t i_ = 0;

  [[noreturn]] void fail(const string &m) {
    throw runtime_error("JSON parse error at offset " + to_string(i_) + ": " +
                        m);
  }
  void ws() {
    while (i_ < s_.size() && isspace((unsigned char)s_[i_]))
      i_++;
  }
  string strlit() {
    if (s_[i_] != '"')
      fail("expected string");
    string out;
    for (i_++; i_ < s_.size() && s_[i_] != '"'; i_++) {
      if (s_[i_] == '\\' && i_ + 1 < s_.size())
        i_++;
      out += s_[i_];
    }
    if (i_ >= s_.size())
      fail("unterminated string");
    i_++;
    return out;
  }
  Json value() {
    ws();
    if (i_ >= s_.size())
      fail("unexpected end");
    Json v;
    char c = s_[i_];
    if (c == '{') {
      v.type = Json::Obj;
      i_++;
      ws();
      if (s_[i_] == '}') {
        i_++;
        return v;
      }
      while (true) {
        ws();
        string k = strlit();
        ws();
        if (s_[i_++] != ':')
          fail("expected ':'");
        v.obj.push_back({k, value()});
        ws();
        if (s_[i_] == ',') {
          i_++;
          continue;
        }
        if (s_[i_] == '}') {
          i_++;
          return v;
        }
        fail("expected ',' or '}'");
      }
    }
    if (c == '[') {
      v.type = Json::Arr;
      i_++;
      ws();
      if (s_[i_] == ']') {
        i_++;
        return v;
      }
      while (true) {
        v.arr.push_back(value());
        ws();
        if (s_[i_] == ',') {
          i_++;
          continue;
        }
        if (s_[i_] == ']') {
          i_++;
          return v;
        }
        fail("expected ',' or ']'");
      }
    }
    if (c == '"') {
      v.type = Json::Str;
      v.text = strlit();
      return v;
    }
    if (s_.compare(i_, 4, "true") == 0) {
      v.type = Json::Bool;
      v.b = true;
      i_ += 4;
      return v;
    }
    if (s_.compare(i_, 5, "false") == 0) {
      v.type = Json::Bool;
      i_ += 5;
      return v;
    }
    if (s_.compare(i_, 4, "null") == 0) {
      i_ += 4;
      return v;
    }
    size_t st = i_;
    while (i_ < s_.size() && (isdigit((unsigned char)s_[i_]) ||
                              strchr("+-.eE", s_[i_])))
      i_++;
    if (st == i_)
      fail("unexpected character");
    v.type = Json::Num;
    v.text = s_.substr(st, i_ - st);
    return v;
  }
};

inline Json load_json(const string &path) {
  return JsonParser(read_file(path)).parse();
}

// =====================================================================
// Trace layout (the `;; Array <name> <start> <end>` comments)
// =====================================================================

struct Region {
  string name;
  uint64_t start = 0, end = 0; // inclusive
  uint64_t size() const { return end - start + 1; }
};

struct TraceLayout {
  vector<Region> regions; // file order
  string initialMem, finalMem;

  const Region *find(const string &n) const {
    for (auto &r : regions)
      if (r.name == n)
        return &r;
    return nullptr;
  }
};

inline TraceLayout parse_trace_layout(const string &src) {
  TraceLayout L;
  static const std::regex arr(
      R"(;;\s*Array\s+([A-Za-z_][A-Za-z0-9_.]*)\s+(\d+)\s+(\d+))");
  for (auto it = std::sregex_iterator(src.begin(), src.end(), arr);
       it != std::sregex_iterator(); ++it) {
    Region r{(*it)[1].str(), std::stoull((*it)[2].str()),
             std::stoull((*it)[3].str())};
    if (r.end < r.start)
      throw runtime_error("Malformed region '" + r.name + "'");
    if (!L.find(r.name))
      L.regions.push_back(r);
  }
  if (L.regions.empty())
    throw runtime_error("No ';; Array <name> <start> <end>' comments in trace");
  std::smatch m;
  static const std::regex ini(R"(;;\s*Initial_Memory\s+(\S+))");
  static const std::regex fin(R"(;;\s*Final_Memory\s+(\S+))");
  if (std::regex_search(src, m, ini))
    L.initialMem = m[1].str();
  if (!std::regex_search(src, m, fin))
    throw runtime_error("No ';; Final_Memory <symbol>' comment in trace");
  L.finalMem = m[1].str();
  return L;
}

inline void check_layouts_match(const TraceLayout &a, const TraceLayout &b) {
  if (a.regions.size() != b.regions.size())
    throw runtime_error("correct/faulty traces declare different regions");
  for (auto &r : a.regions) {
    const Region *o = b.find(r.name);
    if (!o || o->start != r.start || o->end != r.end)
      throw runtime_error("Region '" + r.name +
                          "' differs between correct and faulty trace");
  }
}

// =====================================================================
// Function configuration: mayo.json + qemu_witness.json + active_lengths
// =====================================================================

struct InputBuf {
  string param, region;
  uint64_t start = 0, regionLen = 0, active = 0;
  bool secret = false, eph = false;
  // A scalar argument the simulation randomizes: the driver passes it from
  // __VERIFIER_nondet_iN (a bv_<N>_nondet symbol in the trace), not memory.
  bool scalar = false;
  unsigned bits = 0;
  // Name stem of this input's public SMT byte variables.
  string key() const { return scalar ? "arg_" + param : region; }
};

struct OutputBuf {
  string param, region;
  uint64_t start = 0, length = 0;
};

struct FuncConfig {
  string fn;
  string secretParam;
  uint64_t secretPos = 0;
  uint64_t secretActive = 0; // drives the number of output positions
  unsigned fieldMod = 16;
  vector<InputBuf> inputs;
  vector<OutputBuf> outputs;
  vector<string> ephParams;
  vector<string> notes;

  const InputBuf &secret() const {
    for (auto &i : inputs)
      if (i.secret)
        return i;
    throw runtime_error("no secret input");
  }
  bool hasEph() const {
    for (auto &i : inputs)
      if (i.eph)
        return true;
    return false;
  }
};

// The harness's buffers, in ascending address order == argument order.
inline vector<const Region *> buffer_regions(const TraceLayout &L) {
  vector<const Region *> out;
  for (auto &r : L.regions)
    if (!starts_with(r.name, "__mbc_") && !ends_with(r.name, "_blocker"))
      out.push_back(&r);
  std::sort(out.begin(), out.end(), [](const Region *a, const Region *b) {
    return a->start < b->start;
  });
  return out;
}

// The driver's argument buffers: the allocas of main() in the function's .ll,
// in argument order. The trace also declares regions for buffers internal to
// the function (inlined callees' locals "*.i", heap_<N> mallocs, ...), so
// region names alone cannot tell them apart. Empty if the .ll is missing.
inline vector<string> driver_allocas(const string &llPath) {
  vector<string> out;
  std::ifstream in(llPath);
  if (!in)
    return out;
  static const std::regex mainDef(R"(^define\s.*@main\()");
  static const std::regex allocaRe(R"(^\s*%([^\s=]+)\s*=\s*alloca\b)");
  string line;
  bool inMain = false;
  while (std::getline(in, line)) {
    if (!inMain) {
      inMain = std::regex_search(line, mainDef);
      continue;
    }
    if (!line.empty() && line[0] == '}')
      break;
    std::smatch m;
    if (std::regex_search(line, m, allocaRe)) {
      string n = m[1].str();
      if (n.size() > 2 && n.front() == '"' && n.back() == '"')
        n = n.substr(1, n.size() - 2);
      out.push_back(n);
    }
  }
  return out;
}

inline FuncConfig resolve_config(const string &fn, const string &mayoJsonPath,
                                 const string &witnessPath,
                                 const string &activePath,
                                 const TraceLayout &L,
                                 const string &secretOverride,
                                 uint64_t secretPos, unsigned fieldMod,
                                 const vector<string> &driverBufs = {}) {
  FuncConfig cfg;
  cfg.fn = fn;
  cfg.secretPos = secretPos;
  cfg.fieldMod = fieldMod;

  Json mayo = load_json(mayoJsonPath);
  const Json *entry = mayo.get(fn);
  if (!entry && secretOverride.empty())
    throw runtime_error("'" + fn + "' not found in " + mayoJsonPath +
                        " and no --secret-buf given");
  Json empty;
  empty.type = Json::Obj;
  if (!entry)
    entry = &empty;

  cfg.secretParam =
      secretOverride.empty() ? entry->str("secret-buf") : secretOverride;
  if (cfg.secretParam.empty())
    throw runtime_error("no secret-buf for '" + fn + "'");
  vector<string> fixedV = split_csv(entry->str("fixed-scalars"));
  set<string> fixed(fixedV.begin(), fixedV.end());
  cfg.ephParams = split_csv(entry->str("eph_secret"));
  set<string> eph(cfg.ephParams.begin(), cfg.ephParams.end());

  Json witness = load_json(witnessPath);
  const Json *layout = witness.get("layout");
  if (!layout || layout->type != Json::Obj)
    throw runtime_error(witnessPath + " has no \"layout\" object");

  Json active;
  active.type = Json::Obj;
  if (fs::exists(activePath))
    active = load_json(activePath);
  else
    cfg.notes.push_back("no " + activePath +
                        " -- using full witness lengths as active lengths");

  // Pointer parameters <-> trace buffer regions, positionally.
  vector<pair<string, const Json *>> ptrParams;
  for (auto &kv : layout->obj)
    if (kv.second.str("type") != "scalar")
      ptrParams.push_back({kv.first, &kv.second});
  vector<const Region *> bufs;
  if (!driverBufs.empty()) {
    for (auto &n : driverBufs) {
      const Region *r = L.find(n);
      if (!r)
        throw runtime_error("driver buffer '" + n +
                            "' (an alloca of main) is not a region of the "
                            "trace");
      bufs.push_back(r);
    }
  } else {
    bufs = buffer_regions(L);
    cfg.notes.push_back("no driver .ll found: guessing the argument buffers "
                        "from the trace's region names");
  }
  if (ptrParams.size() != bufs.size()) {
    string ps, rs;
    for (auto &p : ptrParams)
      ps += " " + p.first;
    for (auto *r : bufs)
      rs += " " + r->name;
    throw runtime_error("Cannot map witness pointer params (" + ps +
                        " ) onto trace buffer regions (" + rs +
                        " ): counts differ");
  }

  for (size_t i = 0; i < ptrParams.size(); i++) {
    const string &param = ptrParams[i].first;
    const Json &spec = *ptrParams[i].second;
    const Region &r = *bufs[i];
    uint64_t wlen = (uint64_t)spec.integer("length", (long long)r.size());
    if (wlen != r.size())
      cfg.notes.push_back("'" + param + "' has length " + to_string(wlen) +
                          " in the witness but region '" + r.name + "' is " +
                          to_string(r.size()) + " bytes in the trace");
    string role = spec.str("role");
    // "<buf>_pre" names the pre-call contents of an in-place buffer (as in
    // the simulation's records): <buf> is then an input as well.
    bool inPlaceSecret = cfg.secretParam == param + "_pre";
    bool asInput =
        role == "input" || spec.boolean("also_input") || inPlaceSecret;
    if (asInput) {
      InputBuf in;
      in.param = param;
      in.region = r.name;
      in.start = r.start;
      in.regionLen = r.size();
      in.active = (uint64_t)active.integer(param, (long long)wlen);
      if (in.active > r.size()) {
        cfg.notes.push_back("active length of '" + param + "' (" +
                            to_string(in.active) + ") clamped to region size " +
                            to_string(r.size()));
        in.active = r.size();
      }
      in.secret = param == cfg.secretParam || inPlaceSecret;
      if (inPlaceSecret && role == "output" && !spec.boolean("also_input"))
        cfg.notes.push_back("secret '" + cfg.secretParam + "': '" + param +
                            "' is treated as an in-place input+output buffer "
                            "(the witness marks it output only)");
      in.eph = eph.count(param) > 0;
      cfg.inputs.push_back(in);
    }
    if (role == "output")
      cfg.outputs.push_back(
          {param, r.name, r.start, std::min<uint64_t>(wlen, r.size())});
  }

  // Scalars: outputs read from their anchor region. Inputs in fixed-scalars
  // are folded to their init_value by llvmbmc (--fold-readonly-globals); the
  // others (secret included) are symbolic nondet values in traces generated
  // by the current driver -- see prepare_trace.
  for (auto &kv : layout->obj) {
    const Json &spec = kv.second;
    if (spec.str("type") != "scalar")
      continue;
    string anchor = spec.str("anchor");
    if (spec.str("role") == "output") {
      const Region *r = L.find(anchor);
      if (!r)
        throw runtime_error("scalar output '" + kv.first + "': anchor '" +
                            anchor + "' is not a region of the trace");
      uint64_t len = (uint64_t)spec.integer("length", 1);
      cfg.outputs.push_back(
          {kv.first, r->name, r->start, std::min<uint64_t>(len, r->size())});
      continue;
    }
    if (!fixed.count(kv.first) || kv.first == cfg.secretParam) {
      InputBuf in;
      in.param = kv.first;
      in.scalar = true;
      uint64_t len = (uint64_t)spec.integer("length", 4);
      in.bits = (unsigned)(8 * len);
      in.regionLen = len;
      in.active = std::min<uint64_t>(
          len, (uint64_t)active.integer(kv.first, (long long)len));
      in.secret = kv.first == cfg.secretParam;
      in.eph = eph.count(kv.first) > 0;
      cfg.inputs.push_back(in);
      continue;
    }
    if (L.find(anchor))
      cfg.notes.push_back("scalar anchor region '" + anchor +
                          "' is present in the trace; its value is not "
                          "constrained by this query");
  }

  bool found = false;
  for (auto &in : cfg.inputs)
    if (in.secret)
      found = true;
  if (!found)
    throw runtime_error("secret-buf '" + cfg.secretParam +
                        "' is not an input pointer parameter of '" + fn + "'");
  for (auto &e : cfg.ephParams) {
    bool ok = false;
    for (auto &in : cfg.inputs)
      ok |= in.param == e;
    if (!ok)
      cfg.notes.push_back("eph_secret '" + e +
                          "' is not an input buffer -- ignored");
  }
  if (cfg.outputs.empty())
    throw runtime_error("no role:output entry in " + witnessPath);

  const InputBuf &sec = cfg.secret();
  if (cfg.secretPos >= sec.active)
    throw runtime_error("--secret-pos " + to_string(cfg.secretPos) +
                        " is outside the active length (" +
                        to_string(sec.active) + ") of '" + sec.param + "'");
  // Same as run_*_paired.sh: --active-len is the secret buffer's
  // active length, later clamped to each output's length.
  cfg.secretActive = sec.active;
  return cfg;
}

inline void print_config(const FuncConfig &cfg, std::ostream &o) {
  for (auto &in : cfg.inputs)
    o << "[arg] " << in.param
      << (in.scalar ? " -> symbolic scalar (" + to_string(in.bits) + "-bit)"
                    : " -> region " + in.region + " [" + to_string(in.start) +
                          ".." + to_string(in.start + in.regionLen - 1) + "]")
      << ", " << in.active << " active byte(s)"
      << (in.secret ? "  <-- SECRET, byte " + to_string(cfg.secretPos) +
                          " swept 0.." + to_string(cfg.fieldMod - 1)
                    : string())
      << (in.eph ? "  <-- EPHEMERAL secret" : "") << "\n";
  for (auto &out : cfg.outputs)
    o << "[out] " << out.param << " -> region " << out.region << " ["
      << out.start << ".." << out.start + out.length - 1 << "]\n";
  for (auto &n : cfg.notes)
    o << "[note] " << n << "\n";
}

// =====================================================================
// Trace preparation: truncate after the definitions, make the driver's
// inputs symbolic, and remember every declared symbol for per-copy renaming.
// =====================================================================

struct PreparedTrace {
  string text;     // declarations + asserts, no commands
  string finalMem; // Final_Memory symbol (pre-renaming)
  map<string, string> inArray; // input region -> symbolic array name
  // scalar output anchor -> (final SSA bit-vector symbol, width): llvmbmc
  // keeps a scalar global such as __mbc_ret_anchor_<fn> in registers
  // (bv_<N>_<anchor>_<suffix>), not in Global_M.
  map<string, pair<string, unsigned>> scalarFinal;
  std::unordered_set<string> symbols;
  // scalar input param -> (bv_<N>_nondet symbol, width)
  map<string, pair<string, unsigned>> nondetScalar;
  // Bit-vector symbols with no defining equation (e.g. the value of an
  // `undef` fault): (name, width). One faulty binary has one such
  // behaviour, so each is shared by every trace copy as part of p.
  vector<pair<string, unsigned>> freeSymbols;
  vector<string> log;
};

inline string head_token(const string &sx) {
  size_t i = 1;
  while (i < sx.size() && isspace((unsigned char)sx[i]))
    i++;
  size_t j = i;
  while (j < sx.size() && !isspace((unsigned char)sx[j]) && sx[j] != '(' &&
         sx[j] != ')')
    j++;
  return sx.substr(i, j - i);
}

inline string second_token(const string &sx) {
  string h = head_token(sx);
  size_t i = sx.find(h) + h.size();
  while (i < sx.size() && isspace((unsigned char)sx[i]))
    i++;
  size_t j = i;
  while (j < sx.size() && !isspace((unsigned char)sx[j]) && sx[j] != '(' &&
         sx[j] != ')')
    j++;
  return sx.substr(i, j - i);
}

inline PreparedTrace prepare_trace(const string &raw, const TraceLayout &L,
                                   const FuncConfig &cfg, bool faulty) {
  PreparedTrace P;
  P.finalMem = L.finalMem;

  // ---- split into top-level s-expressions, stop at the first command ----
  vector<string> decls, asserts;
  size_t i = 0;
  while (i < raw.size()) {
    char c = raw[i];
    if (isspace((unsigned char)c)) {
      i++;
      continue;
    }
    if (c == ';') {
      while (i < raw.size() && raw[i] != '\n')
        i++;
      continue;
    }
    if (c != '(') {
      i++;
      continue;
    }
    size_t e = match_paren(raw, i);
    if (e == string::npos)
      throw runtime_error("Unbalanced parentheses in trace");
    string sx = raw.substr(i, e - i + 1);
    i = e + 1;
    string head = head_token(sx);
    if (head == "assert") {
      if (second_token(sx) == "and" && sx.find('(', 1) == string::npos)
        continue; // `(assert and)` -- empty conjunction emitted by llvmbmc
      asserts.push_back(sx);
    } else if (head == "declare-fun" || head == "declare-const") {
      P.symbols.insert(second_token(sx));
      decls.push_back(sx);
    } else if (head == "set-info" || head == "set-option" ||
               head == "set-logic" || head == "define-sort") {
      decls.push_back(sx);
    } else {
      break; // (check-sat) / (push) ...: property checks follow
    }
  }

  // Final SSA version of every scalar output anchor held as a bit-vector.
  for (auto &o : cfg.outputs) {
    std::regex re("^bv_(\\d+)_" + o.region + (faulty ? "_faulty" : "_correct") +
                  "$");
    long best = -1;
    for (auto &d : decls) {
      string name = second_token(d);
      std::smatch m;
      if (!std::regex_match(name, m, re))
        continue;
      long n = std::stol(m[1].str());
      std::smatch w;
      static const std::regex bvw(R"(\(_ BitVec (\d+)\)\)\s*$)");
      if (n > best && std::regex_search(d, w, bvw)) {
        best = n;
        P.scalarFinal[o.region] = {name, (unsigned)std::stoul(w[1].str())};
      }
    }
    if (best >= 0)
      P.log.push_back("output '" + o.param + "' read from scalar SSA symbol " +
                      P.scalarFinal[o.region].first);
  }

  const string memSortTxt = "(Array (_ BitVec 64) (_ BitVec 8))";
  if (!L.initialMem.empty()) {
    for (auto &d : decls)
      if (second_token(d) == L.initialMem && d.find(memSortTxt) == string::npos)
        throw runtime_error("Memory '" + L.initialMem + "' is not " +
                            memSortTxt +
                            " -- run llvmbmc with --memory-granularity 8");
  }

  // ---- make the driver's input buffers symbolic ----
  // main() first initializes its buffers (mayo_memset, lowered by llvmbmc to
  // a zero-filling lambda or to a chain of constant stores, then a few
  // constant `store i8`s of the baked-in function_inputs values). That
  // prelude is left as it is; the memory version it ends with, c_K, is
  // renamed c_K__drv and redefined as
  //   c_K = lambda cell. ite(cell in an input's active bytes,
  //                          select(__in_<sfx>, cell), select(c_K__drv, cell))
  // so the function body reads symbolic inputs, and everything else as the
  // driver left it. Prelude asserts write memory from constants only: they
  // mention no declared symbol but the previous and the new memory version,
  // and select only at lambda-bound cells.
  static const std::regex scalarInit(
      R"(^\(assert\s*\(=\s*bv_\S+\s+(\(_ bv\d+ \d+\)|bv_\d+_nondet)\)\)$)");
  static const std::regex memNum(R"(^c_(\d+)_Global_M_)");
  auto tokens = [](const string &a) {
    vector<string> t;
    size_t i = 0;
    while (i < a.size()) {
      char c = a[i];
      if (c == '(' || c == ')' || isspace((unsigned char)c)) {
        i++;
        continue;
      }
      size_t j = i;
      while (j < a.size() && a[j] != '(' && a[j] != ')' &&
             !isspace((unsigned char)a[j]))
        j++;
      t.push_back(a.substr(i, j - i));
      i = j;
    }
    return t;
  };
  // Returns the memory version a driver-init assert defines, or "".
  auto driver_mem_def = [&](const string &a) -> string {
    vector<string> t = tokens(a);
    string best;
    long bestN = -1;
    set<string> mems;
    for (size_t k = 0; k < t.size(); k++) {
      if (!P.symbols.count(t[k]))
        continue;
      std::smatch m;
      if (!std::regex_search(t[k], m, memNum))
        return ""; // reads a non-memory symbol: not driver init
      mems.insert(t[k]);
      long n = std::stol(m[1].str());
      if (n > bestN) {
        bestN = n;
        best = t[k];
      }
    }
    if (mems.size() != 2)
      return "";
    for (size_t p = a.find("(select "); p != string::npos;
         p = a.find("(select ", p + 1)) {
      vector<string> t2 = tokens(a.substr(p, 200));
      // t2: select, memory, index...
      if (t2.size() < 3 || P.symbols.count(t2[2]) || t2[2] == "_" ||
          a.compare(p + 8 + t2[1].size(), 2, " (") == 0)
        return ""; // a read at a constant/computed address: function body
    }
    return best;
  };

  long lastInit = -1;
  string lastMem;
  for (size_t k = 0; k < asserts.size(); k++) {
    const string &a = asserts[k];
    if (second_token(a) == "true" && a.find('(', 1) == string::npos)
      continue; // `(assert true)`
    if (a.size() < 200 && std::regex_match(a, scalarInit))
      continue; // a scalar global's initial value / nondet link
    string def = a.size() < 20000 ? driver_mem_def(a) : "";
    if (def.empty())
      break;
    lastInit = (long)k;
    lastMem = def;
  }

  bool needBufs = false;
  for (auto &in : cfg.inputs)
    needBufs |= !in.scalar && in.active > 0;
  if (needBufs) {
    if (lastInit < 0)
      throw runtime_error(string("Could not find the driver's buffer "
                                 "initialization at the start of the ") +
                          (faulty ? "faulty" : "correct") +
                          " trace, so the inputs cannot be made symbolic");
    const string drv = lastMem + "__drv";
    const string arr = string("__in_") + (faulty ? "faulty" : "correct");
    // rename the definition: only its left-hand side carries lastMem
    {
      string &a = asserts[lastInit];
      size_t p = a.rfind("(= " + lastMem + " ");
      if (p == string::npos)
        throw runtime_error("cannot locate the definition of " + lastMem);
      a.replace(p + 3, lastMem.size(), drv);
    }
    string cond;
    int nIn = 0;
    for (auto &in : cfg.inputs) {
      if (in.scalar || in.active == 0)
        continue;
      cond += " (and (bvule (_ bv" + to_string(in.start) +
              " 64) __in_cell) (bvult __in_cell (_ bv" +
              to_string(in.start + in.active) + " 64)))";
      P.inArray[in.region] = arr;
      P.log.push_back("input '" + in.param + "' (" + in.region +
                      "): symbolic over [" + to_string(in.start) + ".." +
                      to_string(in.start + in.active - 1) + "]");
      nIn++;
    }
    if (nIn > 1)
      cond = "(or" + cond + ")";
    string over = "(assert (= " + lastMem +
                  " (lambda ((__in_cell (_ BitVec 64))) (ite " + cond +
                  " (select " + arr + " __in_cell) (select " + drv +
                  " __in_cell)))))";
    asserts.insert(asserts.begin() + lastInit + 1, over);
    decls.push_back("(declare-fun " + drv + " () " + memSortTxt + ")");
    P.symbols.insert(drv);
    P.log.push_back("driver initialization ends at " + lastMem +
                    "; input bytes overridden after it");
  }
  // Symbolic scalar arguments. fault_types/bmc_variant.h reads every
  // non-fixed scalar via __VERIFIER_nondet_iN (-> bv_<K>_nondet) and stores
  // it back to its anchor, which leaves the link
  //   (= bv_<M>___mbc_arg_<fn>_<param>_<sfx> bv_<K>_nondet)
  // in the trace. A parameter without that link in a trace that has links
  // is unused there (e.g. add_f's b under an opA fault) and needs no binding.
  // Traces from before the write-back: nondets in argument order, if all
  // present. No nondet at all: the scalars were folded to constants.
  {
    static const std::regex ndDecl(
        R"(^\(declare-fun\s+(bv_(\d+)_nondet)\s+\(\)\s+\(_ BitVec (\d+)\)\)$)");
    map<string, unsigned> ndWidth;
    vector<pair<long, string>> ndOrder;
    for (auto &d : decls) {
      std::smatch m;
      if (std::regex_match(d, m, ndDecl)) {
        ndWidth[m[1].str()] = (unsigned)std::stoul(m[3].str());
        ndOrder.push_back({std::stol(m[2].str()), m[1].str()});
      }
    }
    std::sort(ndOrder.begin(), ndOrder.end());
    vector<const InputBuf *> scalars;
    for (auto &in : cfg.inputs)
      if (in.scalar)
        scalars.push_back(&in);

    const string sfx = faulty ? "_faulty" : "_correct";
    bool anyLink = false;
    for (auto *in : scalars) {
      std::regex link(R"(\(=\s+bv_\d+___mbc_arg_)" + cfg.fn + "_" + in->param +
                      sfx + R"(\s+(bv_\d+_nondet)\s*\))");
      for (auto &a : asserts) {
        std::smatch m;
        if (a.size() < 300 && std::regex_search(a, m, link)) {
          P.nondetScalar[in->param] = {m[1].str(), ndWidth[m[1].str()]};
          anyLink = true;
          break;
        }
      }
    }
    if (!anyLink && ndOrder.size() == scalars.size())
      for (size_t k = 0; k < scalars.size(); k++)
        P.nondetScalar[scalars[k]->param] = {ndOrder[k].second,
                                             ndWidth[ndOrder[k].second]};

    bool regenerated = anyLink || !ndOrder.empty();
    if (!anyLink && regenerated && ndOrder.size() != scalars.size())
      throw runtime_error(
          "trace has " + to_string(ndOrder.size()) +
          " bv_<N>_nondet symbol(s) but " + to_string(scalars.size()) +
          " non-fixed scalar argument(s), and no anchor links to map them -- "
          "regenerate the traces with the current fault_types generators");
    for (auto *in : scalars) {
      auto it = P.nondetScalar.find(in->param);
      if (it != P.nondetScalar.end()) {
        if (it->second.second != in->bits)
          throw runtime_error("nondet symbol " + it->second.first + " is " +
                              to_string(it->second.second) +
                              "-bit but scalar '" + in->param + "' is " +
                              to_string(in->bits) + "-bit");
        P.log.push_back("scalar '" + in->param +
                        "' is symbolic: " + it->second.first);
      } else if (regenerated) {
        P.log.push_back("scalar '" + in->param +
                        "' does not influence this trace (unused)");
      } else if (in->secret && !faulty) {
        throw runtime_error(
            "secret '" + in->param +
            "' is a scalar argument folded to a constant in this trace (no "
            "bv_<N>_nondet symbol). Regenerate the traces with the current "
            "fault_types generators (./run_faults.sh " + cfg.fn + ")");
      } else {
        P.log.push_back("scalar '" + in->param +
                        "' is not in fixed-scalars (the simulation randomizes "
                        "it) but is folded to a constant or unused in this "
                        "trace");
      }
    }
  }

  // Free bit-vector symbols: declared, never the left side of an equation.
  {
    static const std::regex bvDecl(
        R"(^\(declare-fun\s+(\S+)\s+\(\)\s+\(_ BitVec (\d+)\)\)$)");
    string all;
    for (auto &a : asserts)
      all += a;
    for (auto &d : decls) {
      std::smatch m;
      if (!std::regex_match(d, m, bvDecl))
        continue;
      string name = m[1].str();
      bool isOut = false;
      for (auto &kv : P.scalarFinal)
        isOut |= kv.second.first == name;
      for (auto &kv : P.nondetScalar)
        isOut |= kv.second.first == name;
      if (isOut || all.find("(= " + name + " ") != string::npos ||
          all.find("(= " + name + "\n") != string::npos ||
          all.find(name) == string::npos)
        continue;
      P.freeSymbols.push_back({name, (unsigned)std::stoul(m[2].str())});
      P.log.push_back("free symbol " + name + " (" + m[2].str() +
                      "-bit, no defining equation, e.g. an undef fault "
                      "value): shared by all copies as part of p");
    }
  }

  std::ostringstream o;
  for (auto &d : decls)
    o << d << "\n";
  set<string> arrays;
  for (auto &kv : P.inArray)
    arrays.insert(kv.second);
  for (auto &a : arrays) {
    o << "(declare-fun " << a << " () " << memSortTxt << ")\n";
    P.symbols.insert(a);
  }
  for (auto &a : asserts)
    o << a << "\n";
  P.text = o.str();
  return P;
}

// Renames every declared symbol to <symbol>__<tag>, so several copies of the
// same trace can live in one solver.
inline string rename_copy(const PreparedTrace &P, const string &tag) {
  const string &s = P.text;
  string out;
  out.reserve(s.size() + s.size() / 8);
  size_t i = 0;
  auto delim = [](char c) {
    return c == '(' || c == ')' || isspace((unsigned char)c);
  };
  while (i < s.size()) {
    if (delim(s[i])) {
      out += s[i++];
      continue;
    }
    size_t j = i;
    while (j < s.size() && !delim(s[j]))
      j++;
    string tok = s.substr(i, j - i);
    out += tok;
    if (P.symbols.count(tok))
      out += "__" + tag;
    i = j;
  }
  return out;
}

// Same formula once _correct/_faulty is normalized away -> the fault is not
// encoded in the trace at all.
inline bool traces_identical(const PreparedTrace &c, const PreparedTrace &f) {
  // Linear: in-place replace() would be quadratic on multi-MB traces.
  auto norm = [](const string &s, const string &suf) {
    string out;
    out.reserve(s.size());
    size_t p = 0;
    while (true) {
      size_t q = s.find(suf, p);
      if (q == string::npos) {
        out.append(s, p, string::npos);
        break;
      }
      out.append(s, p, q - p);
      out += "_X";
      p = q + suf.size();
    }
    return out;
  };
  return norm(c.text, "_correct") == norm(f.text, "_faulty");
}

// =====================================================================
// One solver holding one or more (correct, faulty) trace copies.
// =====================================================================

// Time limits for one faulty trace: every solver call is capped at
// timeoutMs, and once the per-fault wall-clock budget is spent no further
// calls are made -- they return UNKNOWN, reported as such.
struct Budget {
  unsigned timeoutMs = 30000;
  bool limited = false;
  std::chrono::steady_clock::time_point deadline;
  std::atomic<unsigned> timeouts{0}; // checks that hit timeoutMs
  std::atomic<unsigned> skipped{0};  // checks not run: budget exhausted

  Budget(unsigned timeoutMs_, unsigned faultTimeoutS) : timeoutMs(timeoutMs_) {
    limited = faultTimeoutS > 0;
    deadline = std::chrono::steady_clock::now() +
               std::chrono::seconds(faultTimeoutS);
  }
  bool exhausted() const {
    return limited && std::chrono::steady_clock::now() >= deadline;
  }
  string summary() const {
    std::ostringstream o;
    if (timeouts)
      o << "[!] " << timeouts << " solver check(s) hit the per-check timeout ("
        << timeoutMs << " ms) -- raise --timeout\n";
    if (skipped)
      o << "[!] per-fault budget exhausted: " << skipped
        << " check(s) not run -- raise --fault-timeout\n";
    return o.str();
  }
};

class Instance {
public:
  z3::context ctx;
  z3::solver slv;

  // Every trace address is a constant, so simplify + solve-eqs turn the
  // memory SSA chain (stores, zero-fill lambdas) into plain bit-vector
  // terms over the input bytes before solving; far faster than giving the
  // array formula to the default solver.
  // try_for bounds the whole tactic pipeline: the solver's own "timeout"
  // parameter is not honoured by every tactic.
  static z3::solver make_solver(z3::context &c, unsigned timeoutMs) {
    z3::tactic pre = z3::tactic(c, "simplify") &
                     z3::tactic(c, "propagate-values") &
                     z3::tactic(c, "solve-eqs") & z3::tactic(c, "simplify");
    z3::tactic core = z3::cond(z3::probe(c, "is-qfbv"), z3::tactic(c, "qfbv"),
                               z3::tactic(c, "smt"));
    return z3::try_for(pre & core, timeoutMs).mk_solver();
  }

  Instance(const FuncConfig &cfg, Budget &budget)
      : slv(make_solver(ctx, budget.timeoutMs)),
        memSort_(ctx.array_sort(ctx.bv_sort(64), ctx.bv_sort(8))),
        cfg_(cfg), budget_(budget) {
    z3::params p(ctx);
    p.set("timeout", budget.timeoutMs);
    slv.set(p);
  }

  // slv.check() under the time limits; a timeout or a skipped check is
  // UNKNOWN.
  z3::check_result check() {
    if (budget_.exhausted()) {
      budget_.skipped++;
      return z3::unknown;
    }
    z3::check_result r;
    try {
      r = slv.check();
    } catch (const z3::exception &) {
      r = z3::unknown; // tactic failure, e.g. try_for timeout
    }
    if (r == z3::unknown)
      budget_.timeouts++;
    return r;
  }

  void add_trace(const PreparedTrace &P, const string &tag) {
    string t = rename_copy(P, tag);
    z3::expr_vector v = ctx.parse_string(t.c_str());
    for (unsigned i = 0; i < v.size(); i++)
      slv.add(v[i]);
    for (auto &fs_ : P.freeSymbols) {
      z3::expr shared = ctx.bv_const(("u_" + fs_.first).c_str(), fs_.second);
      slv.add(ctx.bv_const((fs_.first + "__" + tag).c_str(), fs_.second) ==
              shared);
    }
  }

  // The public background of a model: active bytes of every non-swept input
  // (shared p variables only), as "<region>=[..]" lists.
  string describe_p(const z3::model &m, size_t perRegion = 16) {
    std::ostringstream o;
    for (auto &in : cfg_.inputs) {
      if (in.eph)
        continue;
      o << " " << in.param << "=[";
      for (uint64_t i = 0; i < in.active && i < perRegion; i++) {
        auto it = vars_.find("p_" + in.key() + "_" + to_string(i));
        o << (i ? ", " : "")
          << (it == vars_.end() ? string("s") // the swept secret byte
                                : to_string(eval_u(m, it->second)));
      }
      if (in.active > perRegion)
        o << ", ... +" << in.active - perRegion;
      o << "]";
    }
    return o.str();
  }

  // Binds every active input byte of copy `tag`. The swept secret byte is
  // the constant sval; ephemeral buffers use variables prefixed by ephKey
  // (one set per copy in the ineffective eph query), everything else uses
  // the shared public variables p_<region>_<i>.
  void bind_inputs(const PreparedTrace &P, const string &tag, unsigned sval,
                   const string &ephKey = "") {
    for (auto &in : cfg_.inputs) {
      if (in.active == 0)
        continue;
      string prefix = (in.eph && !ephKey.empty()) ? ephKey + "_" : "p_";
      if (in.scalar) {
        auto nd = P.nondetScalar.find(in.param);
        if (nd == P.nondetScalar.end())
          continue; // folded to a constant in this trace
        z3::expr v = ctx.bv_const((nd->second.first + "__" + tag).c_str(),
                                  nd->second.second);
        // Little-endian bytes, as the harness writes them; bytes beyond the
        // active length are 0.
        for (uint64_t i = 0; i < in.regionLen; i++) {
          z3::expr byte = v.extract((unsigned)(8 * i + 7), (unsigned)(8 * i));
          z3::expr val = i >= in.active ? ctx.bv_val(0, 8)
                         : (in.secret && i == cfg_.secretPos)
                             ? ctx.bv_val(sval, 8)
                             : byte_var(prefix + in.key() + "_" + to_string(i));
          slv.add(byte == val);
        }
        continue;
      }
      z3::expr arr = mem(P.inArray.at(in.region) + "__" + tag);
      for (uint64_t i = 0; i < in.active; i++) {
        z3::expr val = (in.secret && i == cfg_.secretPos)
                           ? ctx.bv_val(sval, 8)
                           : byte_var(prefix + in.region + "_" + to_string(i));
        slv.add(z3::select(arr, ctx.bv_val((uint64_t)(in.start + i), 64)) ==
                val);
      }
    }
  }

  z3::expr out_byte(const PreparedTrace &P, const string &tag,
                    const OutputBuf &o, uint64_t pos) {
    auto sc = P.scalarFinal.find(o.region);
    if (sc != P.scalarFinal.end()) {
      if (8 * (pos + 1) > sc->second.second)
        throw runtime_error("output position " + to_string(pos) +
                            " is beyond scalar " + sc->second.first);
      z3::expr v = ctx.bv_const((sc->second.first + "__" + tag).c_str(),
                                sc->second.second);
      return sc->second.second == 8
                 ? v
                 : v.extract((unsigned)(8 * pos + 7), (unsigned)(8 * pos));
    }
    return z3::select(mem(P.finalMem + "__" + tag),
                      ctx.bv_val((uint64_t)(o.start + pos), 64));
  }

  static unsigned eval_u(const z3::model &m, const z3::expr &e) {
    return (unsigned)m.eval(e, true).get_numeral_uint64();
  }

private:
  z3::sort memSort_;
  const FuncConfig &cfg_;
  Budget &budget_;
  map<string, z3::expr> vars_;

  z3::expr mem(const string &name) {
    return ctx.constant(name.c_str(), memSort_);
  }
  z3::expr byte_var(const string &name) {
    auto it = vars_.find(name);
    if (it != vars_.end())
      return it->second;
    z3::expr v = ctx.bv_const(name.c_str(), 8);
    slv.add(z3::ult(v, ctx.bv_val(cfg_.fieldMod, 8)));
    vars_.emplace(name, v);
    return v;
  }
};

inline const char *res_str(z3::check_result r) {
  return r == z3::sat ? "SAT" : r == z3::unsat ? "UNSAT" : "UNKNOWN";
}

// =====================================================================
// Command line + per-function driver shared by both queries
// =====================================================================

struct Options {
  string fn;
  string testDir = "../../test_mayo";
  string mayoJson = "../../../test_qemu/mayo.json";
  string secretBuf;
  uint64_t secretPos = 0;
  string outBuf;
  string faultFilter;
  long long positions = -1;
  unsigned fieldMod = 16;
  unsigned jobs = 16;
  unsigned timeoutMs = 30000;    // per solver check
  unsigned faultTimeoutS = 300; // per faulty trace, 0 = unlimited
  long long memLimitMb = -1;    // Z3 hard cap; -1 = 60% of MemAvailable
  bool verbose = false;
};

inline string usage(const string &prog) {
  return "Usage: " + prog +
         " <func_name> [--secret-buf NAME] [--secret-pos POS] [--out-buf NAME]\n"
         "       [--fault SUBSTR] [--positions N] [--field-mod N] [--jobs N]\n"
         "       [--timeout MS (per check, default 30000)]\n"
         "       [--fault-timeout S (per faulty trace, default 300, 0 = none)]\n"
         "       [--mem-limit MB (all solvers together; default 60% of free "
         "memory, 0 = none)]\n"
         "       [--test-dir DIR] [--mayo-json PATH] "
         "[--verbose]\n"
         "  secret-buf / eph_secret / fixed-scalars come from mayo.json,\n"
         "  layout from <test-dir>/<fn>/qemu_witness.json and active_lengths.json\n";
}

inline Options parse_options(int argc, char **argv) {
  if (argc < 2 || string(argv[1]).rfind("-", 0) == 0)
    throw runtime_error(usage(argv[0]));
  Options o;
  o.fn = argv[1];
  for (int i = 2; i < argc; i++) {
    string a = argv[i];
    auto val = [&]() -> string {
      if (i + 1 >= argc)
        throw runtime_error("missing value for " + a);
      return argv[++i];
    };
    if (a == "--secret-buf")
      o.secretBuf = val();
    else if (a == "--secret-pos")
      o.secretPos = std::stoull(val());
    else if (a == "--out-buf")
      o.outBuf = val();
    else if (a == "--fault")
      o.faultFilter = val();
    else if (a == "--positions")
      o.positions = std::stoll(val());
    else if (a == "--field-mod")
      o.fieldMod = (unsigned)std::stoul(val());
    else if (a == "--jobs")
      o.jobs = (unsigned)std::stoul(val());
    else if (a == "--timeout")
      o.timeoutMs = (unsigned)std::stoul(val());
    else if (a == "--mem-limit")
      o.memLimitMb = std::stoll(val());
    else if (a == "--fault-timeout")
      o.faultTimeoutS = (unsigned)std::stoul(val());
    else if (a == "--test-dir")
      o.testDir = val();
    else if (a == "--mayo-json")
      o.mayoJson = val();
    else if (a == "--verbose")
      o.verbose = true;
    else
      throw runtime_error("unrecognized argument: " + a + "\n" +
                          usage(argv[0]));
  }
  if (o.fieldMod < 2 || o.fieldMod > 256)
    throw runtime_error("--field-mod must be in [2, 256]");
  if (o.jobs == 0)
    o.jobs = 1;

  // Hard cap on Z3's memory, shared by every solver of the process: beyond
  // it a check fails with "out of memory" (reported as UNKNOWN / a failed
  // fault) instead of the kernel's OOM killer taking down the session.
  if (o.memLimitMb < 0)
    o.memLimitMb = (long long)(mem_available_mb() * 6 / 10);
  if (o.memLimitMb > 0) {
    z3::set_param("memory_max_size", (int)o.memLimitMb);
    // Z3's own cap is approximate and does not see the trace text copies, so
    // the address space of the whole process is capped too (+2 GB for thread
    // stacks and allocator arenas): past it allocations fail inside this
    // process -- reported as "out of memory" -- and nothing else is hit.
    rlim_t bytes = (rlim_t)(o.memLimitMb + 2048) << 20;
    struct rlimit rl {bytes, bytes};
    setrlimit(RLIMIT_AS, &rl);
    g_memLimitMb() = (size_t)o.memLimitMb;
    std::cout << "[i] memory limit: " << o.memLimitMb
              << " MB for the solvers (--mem-limit)\n";
  }
  return o;
}

struct FaultJob {
  string path;   // faulty .smt2
  string stem;   // e.g. loadStoreSkip/mat_add_line5_mem
  PreparedTrace trace;
};

struct FunctionSetup {
  Options opts;
  string fnDir;
  FuncConfig cfg;
  TraceLayout layout; // of the correct trace
  PreparedTrace correct;
  vector<string> faultyPaths;
  vector<OutputBuf> outputs; // after --out-buf filtering
};

inline FunctionSetup load_function(const Options &opts) {
  FunctionSetup S;
  S.opts = opts;
  S.fnDir = (fs::path(opts.testDir) / opts.fn).string();
  string correctPath = (fs::path(S.fnDir) / (opts.fn + ".smt2")).string();
  string witnessPath = (fs::path(S.fnDir) / "qemu_witness.json").string();
  string activePath = (fs::path(S.fnDir) / "active_lengths.json").string();

  std::cout << "[i] function:       " << opts.fn << "\n"
            << "[i] correct trace:  " << correctPath << "\n"
            << "[i] mayo.json:      " << opts.mayoJson << "\n"
            << "[i] witness:        " << witnessPath << "\n"
            << "[i] active lengths: " << activePath << "\n";

  string raw = read_file(correctPath);
  TraceLayout L = parse_trace_layout(raw);
  S.layout = L;
  vector<string> drv =
      driver_allocas((fs::path(S.fnDir) / (opts.fn + ".ll")).string());
  S.cfg = resolve_config(opts.fn, opts.mayoJson, witnessPath, activePath, L,
                         opts.secretBuf, opts.secretPos, opts.fieldMod, drv);
  print_config(S.cfg, std::cout);

  S.correct = prepare_trace(raw, L, S.cfg, false);
  for (auto &l : S.correct.log)
    std::cout << "[trace] " << l << "\n";

  for (auto &o : S.cfg.outputs)
    if (opts.outBuf.empty() || o.param == opts.outBuf)
      S.outputs.push_back(o);
  if (S.outputs.empty())
    throw runtime_error("--out-buf '" + opts.outBuf + "' is not an output");

  // Faulty traces: every .smt2 under the fault-category directories
  // (recursively), skipping whole-program gated builds -- the same set
  // run_combined_unicorn.sh discovers as faulty ELFs.
  static const vector<string> cats = {"loopOrFuncSkip", "binOpFault",
                                      "loadStoreSkip"};
  for (auto &c : cats) {
    fs::path d = fs::path(S.fnDir) / c;
    if (!fs::is_directory(d))
      continue;
    for (auto &e : fs::recursive_directory_iterator(d)) {
      string p = e.path().string();
      if (!e.is_regular_file() || e.path().extension() != ".smt2" ||
          p.find("full_mayo_gated") != string::npos)
        continue;
      if (!opts.faultFilter.empty() &&
          p.find(opts.faultFilter) == string::npos)
        continue;
      S.faultyPaths.push_back(p);
    }
  }
  std::sort(S.faultyPaths.begin(), S.faultyPaths.end());
  if (S.faultyPaths.empty())
    throw runtime_error("no faulty .smt2 traces found under " + S.fnDir +
                        "/{loopOrFuncSkip,binOpFault,loadStoreSkip}");
  std::cout << "[i] faulty traces:  " << S.faultyPaths.size() << "\n";
  for (auto &p : S.faultyPaths)
    std::cout << "      - " << fs::relative(p, S.fnDir).string() << "\n";
  return S;
}

inline FaultJob load_fault(const FunctionSetup &S, const string &path) {
  FaultJob J;
  J.path = path;
  string rel = fs::relative(path, S.fnDir).string();
  J.stem = rel.substr(0, rel.size() - 5); // drop .smt2
  string raw = read_file(path);
  TraceLayout Lf = parse_trace_layout(raw);
  check_layouts_match(S.layout, Lf);
  J.trace = prepare_trace(raw, Lf, S.cfg, true);
  return J;
}

// Number of output positions analysed -- identical to the Python tests:
// min(active length of the secret buffer, output length), unless overridden.
inline uint64_t num_positions(const FunctionSetup &S, const OutputBuf &o) {
  uint64_t n = std::min<uint64_t>(S.cfg.secretActive, o.length);
  if (S.opts.positions >= 0)
    n = std::min<uint64_t>(n, (uint64_t)S.opts.positions);
  return n;
}

// <fnDir>/<fault stem>[_<out>]/<name> -- next to the simulation's
// *_paired_result.txt for the same fault.
inline string result_path(const FunctionSetup &S, const FaultJob &J,
                          const OutputBuf &o, const string &name) {
  string dir = J.stem;
  if (S.cfg.outputs.size() > 1)
    dir += "_" + o.param;
  fs::path d = fs::path(S.fnDir) / dir;
  fs::create_directories(d);
  return (d / name).string();
}

} // namespace mayo_smt
