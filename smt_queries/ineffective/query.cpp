#include "z3++.h"
#include <filesystem>
#include <fstream>
#include <iostream>
#include <regex>
#include <set>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vector>

using namespace z3;
using namespace std;
namespace fs = std::filesystem;

// ---------------------------------------------------------------------
// File-text utilities
// ---------------------------------------------------------------------

string read_file(const string &filename) {
  ifstream ifs(filename);
  if (!ifs) {
    cerr << "Cannot open: " << filename << "\n";
    exit(1);
  }
  return string((istreambuf_iterator<char>(ifs)), istreambuf_iterator<char>());
}

// Removes the LAST top-level (assert ...) s-expression appearing in the
// text, found via balanced-paren scanning (robust to arbitrary formatting).
// In correct.smt2 this is the final property assertion (the "== 5" style
// check) which we don't want to impose on the differential query. In
// faulty.smt2 this is the trivial "(assert (not true))" stub. Either way,
// it's the assertion we don't want feeding into the solver.
string strip_last_top_level_assert(const string &src) {
  size_t pos = src.rfind("(assert");
  if (pos == string::npos)
    return src;

  int depth = 0;
  size_t end = string::npos;
  for (size_t i = pos; i < src.size(); i++) {
    if (src[i] == '(')
      depth++;
    else if (src[i] == ')') {
      depth--;
      if (depth == 0) {
        end = i;
        break;
      }
    }
  }
  if (end == string::npos)
    return src; // malformed; leave untouched
  return src.substr(0, pos) + src.substr(end + 1);
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

// ---------------------------------------------------------------------
// Structural extraction over parsed Z3 exprs (no name hardcoding)
// ---------------------------------------------------------------------

long long numeral_value(const expr &e) {
  __int64_t v;
  if (Z3_get_numeral_int64(e.ctx(), e, &v))
    return v;
  throw runtime_error("Numeral doesn't fit in int64: " + e.to_string());
}

struct IndexParts {
  long long offset = 0;
  string var_name;
};

static void collect_index(const expr &e, long long &offset,
                          vector<string> &vars) {
  if (e.is_numeral()) {
    offset += numeral_value(e);
    return;
  }
  if (e.is_app() && e.num_args() == 0) { // free (uninterpreted) constant
    vars.push_back(e.decl().name().str());
    return;
  }
  if (e.is_app()) {
    for (unsigned i = 0; i < e.num_args(); i++)
      collect_index(e.arg(i), offset, vars);
    return;
  }
  throw runtime_error("Unsupported index expression: " + e.to_string());
}

IndexParts decompose_index(const expr &idx) {
  long long offset = 0;
  vector<string> vars;
  collect_index(idx, offset, vars);
  if (vars.size() != 1)
    throw runtime_error("Expected exactly one free variable in index (got " +
                        to_string(vars.size()) + "): " + idx.to_string());
  return {offset, vars[0]};
}

// The first assertion of the form `(= c_N (store c_{N-1} idx val))` where
// `val` is NOT a plain numeral. Every input-initializing store and every
// zero-fill store has a numeral value, so this is guaranteed to land on the
// first genuine computation step -- the point where two (or more) earlier
// inputs first get combined (the "c_16" step in the worked example),
// located here without hardcoding its name.
expr find_first_computation_store(expr_vector &ev) {
  for (expr e : ev) {
    if (!e.is_app() || e.decl().decl_kind() != Z3_OP_EQ || e.num_args() != 2)
      continue;
    expr rhs = e.arg(1);
    if (!rhs.is_app() || rhs.decl().decl_kind() != Z3_OP_STORE)
      continue;
    if (rhs.arg(2).is_numeral())
      continue; // input-init store or zero-fill; not a computation
    return rhs;
  }
  throw runtime_error("No computation store found");
}

static void collect_all(const expr &e, Z3_decl_kind kind, vector<expr> &out) {
  if (e.is_app()) {
    if (e.decl().decl_kind() == kind)
      out.push_back(e);
    for (unsigned i = 0; i < e.num_args(); i++)
      collect_all(e.arg(i), kind, out);
  }
}

struct SelectAddr {
  long long offset;
  string var_name;
};

// All distinct `select` sub-expressions inside a value expression, each
// decomposed into (offset, free-variable-name).
vector<SelectAddr> extract_select_addrs(const expr &val_expr) {
  vector<expr> selects;
  collect_all(val_expr, Z3_OP_SELECT, selects);

  vector<expr> unique_selects;
  for (expr &s : selects) {
    bool found = false;
    for (expr &u : unique_selects)
      if (z3::eq(s, u)) {
        found = true;
        break;
      }
    if (!found)
      unique_selects.push_back(s);
  }

  vector<SelectAddr> out;
  for (expr &s : unique_selects) {
    IndexParts p = decompose_index(s.arg(1));
    out.push_back({p.offset, p.var_name});
  }
  return out;
}

// correct.smt2 and faulty.smt2 use identical structure/names except for a
// trailing "correct"/"faulty" tag.
string swap_tag(const string &name, const string &from, const string &to) {
  string result = name;
  size_t pos = result.rfind(from);
  if (pos == string::npos)
    throw runtime_error("Could not find tag '" + from + "' in '" + name + "'");
  result.replace(pos, from.size(), to);
  return result;
}

// Every array in this dump is named `c_<N>_<base>`
string root_array_name(const string &any_array_name) {
  static const regex idx_prefix(R"(^c_\d+_(.+)$)");
  smatch m;
  if (!regex_match(any_array_name, m, idx_prefix))
    throw runtime_error("Array name doesn't match c_<N>_<base>: " +
                        any_array_name);
  return "c_1_" + m[1].str();
}

vector<expr> get_unique_selects(const expr &value) {
  vector<expr> all;
  collect_all(value, Z3_OP_SELECT, all);

  vector<expr> unique;

  for (expr &s : all) {
    bool found = false;

    for (expr &u : unique) {
      if (z3::eq(s, u)) {
        found = true;
        break;
      }
    }

    if (!found)
      unique.push_back(s);
  }

  return unique;
}

expr find_matching_select(const expr &value, const SelectAddr &target) {
  vector<expr> sels;
  collect_all(value, Z3_OP_SELECT, sels);

  for (expr &sel : sels) {
    try {
      IndexParts p = decompose_index(sel.arg(1));

      if (p.offset == target.offset && p.var_name == target.var_name)
        return sel;

    } catch (...) {
    }
  }

  throw runtime_error("Could not find matching select for " + target.var_name);
}

SelectAddr with_tag(const SelectAddr &x, const string &tag) {
  return {x.offset, x.var_name + "_" + tag};
}
SelectAddr faulty_version(const SelectAddr &x, const string &tag) {
  return {x.offset, swap_tag(x.var_name, "correct", "faulty") + "_" + tag};
}

static string to_hex(long long v) {
  ostringstream oss;
  oss << "0x" << hex << uppercase << v;
  return oss.str();
}

static long long model_int64(const model &m, const expr &e) {
  expr v = m.eval(e, true).simplify();

  __int64_t n;
  if (Z3_get_numeral_int64(v.ctx(), v, &n))
    return static_cast<long long>(n);

  throw runtime_error("Expected concrete integer, got: " + v.to_string());
}

// Prints an integer-valued expression in decimal + hex.
static void print_int_dec_hex(const string &label, const model &m,
                              const expr &e) {
  expr v = m.eval(e, true).simplify();

  cout << label << v;

  __int64_t n;
  if (Z3_get_numeral_int64(v.ctx(), v, &n))
    cout << " (" << to_hex(static_cast<long long>(n)) << ")";

  cout << "\n";
}

// Output expressions may be Int or BitVec because the correct computation
// can contain int2bv/bvxor/bv2int.
static void print_value_dec_hex(const string &label, const model &m,
                                const expr &e) {
  expr v = m.eval(e, true).simplify();

  cout << label << v;

  uint64_t n = 0;
  bool ok = false;

  if (v.is_numeral()) {
    if (v.is_int()) {
      __int64_t x;
      if (Z3_get_numeral_int64(v.ctx(), v, &x)) {
        n = static_cast<uint64_t>(x);
        ok = true;
      }
    } else if (v.is_bv()) {
      uint64_t x;
      if (Z3_get_numeral_uint64(v.ctx(), v, &x)) {
        n = x;
        ok = true;
      }
    }
  }

  if (ok)
    cout << " (0x" << hex << uppercase << n << dec << ")";

  cout << "\n";
}

int main(int argc, char **argv) {
  if (argc < 2) {
    cerr << "Usage: ./ineffective_query <fnName>\n";
    return 1;
  }
  string fn = argv[1];
  string fn_path = "../../results/" + fn + "/";
  string correct_path = fn_path + fn + ".smt2";
  string faulty_dir = fn_path + "loopOrFuncSkip/";
  string faulty_path;

  for (const auto &entry : fs::directory_iterator(faulty_dir)) {
    if (entry.is_regular_file() && entry.path().extension() == ".smt2") {
      faulty_path = entry.path().string();
      break;
    }
  }
  if (faulty_path.empty()) {
    cerr << "No .smt2 file found in " << faulty_dir << "\n";
    return 1;
  }

  // ---- Pass 1: structural extraction on a single unsuffixed parse ----
  context extract_ctx;
  expr_vector correct_ev = extract_ctx.parse_file(correct_path.c_str());
  expr_vector faulty_ev = extract_ctx.parse_file(faulty_path.c_str());

  expr fc_correct = find_first_computation_store(correct_ev);
  expr fc_faulty = find_first_computation_store(faulty_ev);

  vector<SelectAddr> correct_selects = extract_select_addrs(fc_correct.arg(2));
  vector<SelectAddr> faulty_selects = extract_select_addrs(fc_faulty.arg(2));

  set<string> faulty_as_correct;
  for (auto &fs_ : faulty_selects)
    faulty_as_correct.insert(swap_tag(fs_.var_name, "faulty", "correct"));

  vector<SelectAddr>
      shared_inputs; // survive in faulty  -> held equal across both executions
  vector<SelectAddr>
      varied_inputs; // dropped by faulty  -> the fault-affected operand(s)
  for (auto &cs : correct_selects) {
    if (faulty_as_correct.count(cs.var_name))
      shared_inputs.push_back(cs);
    else
      varied_inputs.push_back(cs);
  }
  if (shared_inputs.empty() || varied_inputs.empty())
    throw runtime_error("Could not separate shared vs fault-affected operands");

  string root_correct = root_array_name(fc_correct.arg(0).decl().name().str());
  string root_faulty = root_array_name(fc_faulty.arg(0).decl().name().str());

//   cout << "Shared (fault-surviving) input(s):\n";
//   for (auto &s : shared_inputs)
//     cout << "  " << s.var_name << " (offset " << s.offset << ")\n";
//   cout << "Fault-affected (varied) input(s):\n";
//   for (auto &v : varied_inputs)
//     cout << "  " << v.var_name << " (offset " << v.offset << ")\n";

  // ---- Pass 2: build the differential query over four suffixed copies ----
  string correct_src = strip_last_top_level_assert(read_file(correct_path));
  string faulty_src = strip_last_top_level_assert(read_file(faulty_path));

  string c1 = write_suffixed(correct_src, "C1", fn_path);
  string f1 = write_suffixed(faulty_src, "F1", fn_path);
  string c2 = write_suffixed(correct_src, "C2", fn_path);
  string f2 = write_suffixed(faulty_src, "F2", fn_path);

  context ctx;
  solver slv(ctx);

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

  auto tagged = [&](const string &base, const string &tag) {
    return ctx.int_const((base + "_" + tag).c_str());
  };

  // Link the root/initial memory array across all four traces -- without
  // this, C1/F1/C2/F2 are independent symbolic arrays with nothing tying
  // them together.
  z3::sort arr_sort = ctx.array_sort(ctx.int_sort(), ctx.int_sort());
  expr M1 = ctx.constant((root_correct + "_C1").c_str(), arr_sort);
  slv.add(M1 == ctx.constant((root_faulty + "_F1").c_str(), arr_sort));
  slv.add(M1 == ctx.constant((root_correct + "_C2").c_str(), arr_sort));
  slv.add(M1 == ctx.constant((root_faulty + "_F2").c_str(), arr_sort));

  // Shared inputs (e.g. "Vdec"): identical value across ALL four traces.
  for (auto &si : shared_inputs) {
    expr v = ctx.int_const((si.var_name + "_shared").c_str());
    slv.add(v > 0);
    string faulty_name = swap_tag(si.var_name, "correct", "faulty");
    slv.add(tagged(si.var_name, "C1") == v);
    slv.add(tagged(faulty_name, "F1") == v);
    slv.add(tagged(si.var_name, "C2") == v);
    slv.add(tagged(faulty_name, "F2") == v);
  }

  // Fault-affected inputs (e.g. "Ox"): same within each execution's
  // correct/faulty pair, but free to differ BETWEEN execution 1 and 2 --
  // that's what lets the solver search for a masked vs. observable pair.
  for (auto &vi : varied_inputs) {
    expr o1 = ctx.int_const((vi.var_name + "_shared1").c_str());
    expr o2 = ctx.int_const((vi.var_name + "_shared2").c_str());
    slv.add(o1 >= 0);
    slv.add(o2 >= 0);
    string faulty_name = swap_tag(vi.var_name, "correct", "faulty");
    slv.add(tagged(vi.var_name, "C1") == o1);
    slv.add(tagged(faulty_name, "F1") == o1);
    slv.add(tagged(vi.var_name, "C2") == o2);
    slv.add(tagged(faulty_name, "F2") == o2);
    slv.add(o1 != o2);
  }

  // Re-locate the (now suffixed) first-computation store in each of the
  // four traces and compare the values it computes directly -- this is
  // exactly the byte the fault does or doesn't corrupt.
  expr store_C1 = find_first_computation_store(C1);
  expr store_F1 = find_first_computation_store(F1);
  expr store_C2 = find_first_computation_store(C2);
  expr store_F2 = find_first_computation_store(F2);

  vector<expr> selsC1 = get_unique_selects(store_C1.arg(2));
  vector<expr> selsF1 = get_unique_selects(store_F1.arg(2));
  vector<expr> selsC2 = get_unique_selects(store_C2.arg(2));
  vector<expr> selsF2 = get_unique_selects(store_F2.arg(2));

  expr vC1 =
      find_matching_select(store_C1.arg(2), with_tag(shared_inputs[0], "C1"));

  expr vF1 = find_matching_select(store_F1.arg(2),
                                  faulty_version(shared_inputs[0], "F1"));

  expr vC2 =
      find_matching_select(store_C2.arg(2), with_tag(shared_inputs[0], "C2"));

  expr vF2 = find_matching_select(store_F2.arg(2),
                                  faulty_version(shared_inputs[0], "F2"));
  //   cout << store_C1 << endl;
  //   cout << store_F1 << endl;

  expr oC1 =
      find_matching_select(store_C1.arg(2), with_tag(varied_inputs[0], "C1"));

  expr oC2 =
      find_matching_select(store_C2.arg(2), with_tag(varied_inputs[0], "C2"));

  expr V = ctx.int_const("shared_input");
  expr O1 = ctx.int_const("varied_input_1");
  expr O2 = ctx.int_const("varied_input_2");

  slv.add(V >= 0);
  slv.add(O1 >= 0);
  slv.add(O2 >= 0);

  // Actual VALUES, not index variables.
  slv.add(vC1 == V);
  slv.add(vF1 == V);
  slv.add(vC2 == V);
  slv.add(vF2 == V);

  slv.add(oC1 == O1);
  slv.add(oC2 == O2);

  slv.add(O1 != O2);

  expr sC1 = store_C1.arg(2);
  expr sF1 = store_F1.arg(2);
  expr sC2 = store_C2.arg(2);
  expr sF2 = store_F2.arg(2);
//   cout << sC1 << endl;
//   cout << sF1 << endl;

  slv.add(sC1 == sF1); // execution 1: fault is masked
  slv.add(sC2 != sF2); // execution 2: fault is observable

  switch (slv.check()) {
  case sat: {
  cout << "SAT — found ineffective/effective Ox pair\n\n";

  model m = slv.get_model();

  // -------------------------------------------------------
  // Helpers
  // -------------------------------------------------------

  auto ev = [&](const expr &e) {
    return m.eval(e, true).simplify();
  };

  auto bv8 = [&](const expr &e) {
    // Convert Int -> BV8.
    // This preserves the low 8 bits, e.g.
    //   126  -> #x7e
    //   -256 -> #x00
    //   -2   -> #xfe
    return ev(z3::int2bv(8, e));
  };

  auto model_int = [&](const expr &e) -> long long {
    expr v = ev(e);

    __int64_t n;
    if (!Z3_get_numeral_int64(v.ctx(), v, &n))
      throw runtime_error(
          "Expected concrete Int: " + v.to_string());

    return static_cast<long long>(n);
  };


  // -------------------------------------------------------
  // Input metadata
  //
  // shared_inputs[0] = fault-surviving operand, e.g. Vdec
  // varied_inputs[0] = fault-affected operand, e.g. Ox
  // -------------------------------------------------------

  const SelectAddr &vInfo  = shared_inputs[0];
  const SelectAddr &oxInfo = varied_inputs[0];

  // Index variables.
  expr vIdxC1 =
      tagged(vInfo.var_name, "C1");

  expr oxIdxC1 =
      tagged(oxInfo.var_name, "C1");

  expr oxIdxC2 =
      tagged(oxInfo.var_name, "C2");


  expr sIdxExpr = store_C1.arg(1);


  IndexParts sParts = decompose_index(sIdxExpr);

  expr sIdxVar =
      ctx.int_const(sParts.var_name.c_str());


  // -------------------------------------------------------
  // Evaluate indices
  // -------------------------------------------------------

  long long vIdx  = model_int(vIdxC1);
  long long ox1Idx = model_int(oxIdxC1);
  long long ox2Idx = model_int(oxIdxC2);
  long long sIdx  = model_int(sIdxVar);

  // Effective memory addresses.
  long long vAddr   = vInfo.offset  + vIdx;
  long long ox1Addr = oxInfo.offset + ox1Idx;
  long long ox2Addr = oxInfo.offset + ox2Idx;
  long long sAddr   = sParts.offset + sIdx;


  // -------------------------------------------------------
  // Shared indices / addresses
  // -------------------------------------------------------

  cout << "Shared indices\n";

  cout << "Vdec index = "
       << vIdx << "\n";

  cout << "Ox1  index = "
       << ox1Idx
       << "  (addr = "
       << ox1Addr
       << ")\n";

  cout << "Ox2  index = "
       << ox2Idx
       << "  (addr = "
       << ox2Addr
       << ")\n";

  cout << "s    index = "
       << sIdx
       << "  (addr = "
       << sAddr
       << ")\n";


  // -------------------------------------------------------
  // Input bytes
  // -------------------------------------------------------

  cout << "\n------------------------------\n";
  cout << "Input bytes\n";

  cout << "Vdec = "
       << ev(V)
       << "  (BV = "
       << bv8(V)
       << ")\n";

  cout << "Ox1  = "
       << ev(O1)
       << "  (BV = "
       << bv8(O1)
       << ")\n";

  cout << "Ox2  = "
       << ev(O2)
       << "  (BV = "
       << bv8(O2)
       << ")\n";


  // -------------------------------------------------------
  // Execution 1
  // -------------------------------------------------------

  cout << "\n------------------------------\n";
  cout << "Execution 1 (ineffective fault)\n";

  cout << "Correct output = "
       << ev(sC1)
       << "\n";

  cout << "Faulty  output = "
       << ev(sF1)
       << "\n";

  // Compute the expected correct XOR directly from input bytes.
  expr xor1 =
      z3::int2bv(8, V) ^
      z3::int2bv(8, O1);

  cout << "(BV8) = "
       << ev(xor1)
       << "\n";


  // -------------------------------------------------------
  // Execution 2
  // -------------------------------------------------------

  cout << "\n------------------------------\n";
  cout << "Execution 2 (effective fault)\n";

  cout << "Correct output = "
       << ev(sC2)
       << "\n";

  cout << "Faulty  output = "
       << ev(sF2)
       << "\n";

  expr xor2 =
      z3::int2bv(8, V) ^
      z3::int2bv(8, O2);

  cout << "(BV8) = "
       << ev(xor2)
       << "\n";

  break;
}
  case unsat:
    cout << "UNSAT\n";
    break;
  case unknown:
    cout << "UNKNOWN\n";
    break;
  }
  return 0;
}