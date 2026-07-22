#include "z3++.h"
#include <filesystem>
#include <fstream>
#include <iostream>
#include <iterator>
#include <regex>
#include <set>
#include <stdexcept>
#include <string>
#include <vector>

using namespace z3;
using namespace std;

namespace fs = std::filesystem;

string read_file(const string &filename) {
  ifstream ifs(filename);
  if (!ifs) {
    cerr << "Cannot open: " << filename << "\n";
    exit(1);
  }
  return string((istreambuf_iterator<char>(ifs)), istreambuf_iterator<char>());
}

string strip_fn(const string &src) {
  istringstream ss(src);
  ostringstream out;
  string line;
  while (getline(ss, line)) {
    string t = line;
    t.erase(0, t.find_first_not_of(" \t"));
    if (t == "(assert (not true))")
      continue;
    out << line << '\n';
  }
  return out.str();
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

// Robust int64 extraction, independent of z3++ wrapper version quirks.
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

// Walk an index expression like `i_2_Vdec_correct` or `(+ 780 i_4_Ox_correct)`
// and split it into a literal offset plus exactly one free variable name.
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

struct InputVar {
  string full_name; // e.g. "i_2_Vdec_correct"
  long long offset; // literal offset used in *this* initializing store
};

// Find every `(= lhs (store rhs idx nonzero-numeral))` assertion. These are
// the input-initializing stores; the zero-valued stores (zero-fills, loop
// body writes with multi-variable indices) are excluded by the value check
// before we ever try to decompose their (possibly multi-variable) index.
vector<InputVar> extract_inputs(expr_vector &ev) {
  vector<InputVar> result;
  set<string> seen;

  for (expr e : ev) {
    if (!e.is_app() || e.decl().decl_kind() != Z3_OP_EQ || e.num_args() != 2)
      continue;

    expr rhs = e.arg(1);
    if (!rhs.is_app() || rhs.decl().decl_kind() != Z3_OP_STORE)
      continue;

    expr idx = rhs.arg(1);
    expr val = rhs.arg(2);
    if (!val.is_numeral() || numeral_value(val) == 0)
      continue;

    try {
      IndexParts p = decompose_index(idx);
      if (seen.insert(p.var_name).second)
        result.push_back({p.var_name, p.offset});
    } catch (...) {
      continue; // not a simple single-variable index -> not an input store
    }
  }
  return result;
}

static bool find_select(const expr &e, expr &out) {
  if (e.is_app()) {
    if (e.decl().decl_kind() == Z3_OP_SELECT) {
      out = e;
      return true;
    }
    for (unsigned i = 0; i < e.num_args(); i++)
      if (find_select(e.arg(i), out))
        return true;
  }
  return false;
}

struct OutputInfo {
  string array_name; // e.g. "c_93_Global_M_correct"
  long long offset;  // literal offset in the select's index
  string var_name;   // e.g. "i_9_s_correct"
};

// The output is defined by the LAST assertion in correct.smt2 (faulty has no
// equivalent final assertion). Find the first `select` inside it.
OutputInfo extract_output(expr_vector &ev) {
  if (ev.size() == 0)
    throw runtime_error("Empty assertion list");
  expr last = ev[ev.size() - 1];

  expr sel(ev.ctx());
  if (!find_select(last, sel))
    throw runtime_error("No select found in final assertion: " +
                        last.to_string());

  expr arr = sel.arg(0);
  expr idx = sel.arg(1);
  IndexParts p = decompose_index(idx);

  return {arr.decl().name().str(), p.offset, p.var_name};
}

string swap_tag(const string &name, const string &from, const string &to) {
  string result = name;
  size_t pos = result.rfind(from);
  if (pos == string::npos)
    throw runtime_error("Could not find tag '" + from + "' in '" + name + "'");
  result.replace(pos, from.size(), to);
  return result;
}

int main(int argc, char **argv) {

  if (argc < 2) {
    std::cerr << "Usage: ./ineffective_query <fnName>\n";
    return 1;
  }
  string fn = argv[1];
  string fn_path = "../../results/" + fn + "/";
  string correct_path = fn_path + fn + ".smt2";
  std::string faulty_dir = fn_path + "loopOrFuncSkip/";
  std::string faulty_path;

  for (const auto &entry : fs::directory_iterator(faulty_dir)) {
    if (entry.is_regular_file() && entry.path().extension() == ".smt2") {
      faulty_path = entry.path().string();
      break;
    }
  }

  if (faulty_path.empty()) {
    std::cerr << "No .smt2 file found in " << faulty_dir << "\n";
    return 1;
  }

  // ---- Pass 1: structural extraction on a single unsuffixed parse ----
  context extract_ctx;
  expr_vector correct_ev = extract_ctx.parse_file(correct_path.c_str());
  expr_vector faulty_ev = extract_ctx.parse_file(faulty_path.c_str());

  vector<InputVar> inputs_correct = extract_inputs(correct_ev);
  vector<InputVar> inputs_faulty = extract_inputs(faulty_ev);

  if (inputs_correct.size() != inputs_faulty.size())
    cerr << "Warning: correct has " << inputs_correct.size()
         << " inputs but faulty has " << inputs_faulty.size() << "\n";

  OutputInfo out_c = extract_output(correct_ev);
  string out_arr_f = swap_tag(out_c.array_name, "correct", "faulty");
  string out_var_f = swap_tag(out_c.var_name, "correct", "faulty");

  cout << "Discovered " << inputs_correct.size() << " input(s):\n";
  for (size_t i = 0; i < inputs_correct.size(); i++) {
    cout << "  " << inputs_correct[i].full_name << " (offset "
         << inputs_correct[i].offset << ")";
    if (i < inputs_faulty.size())
      cout << "  <->  " << inputs_faulty[i].full_name;
    cout << "\n";
  }
  cout << "Output: select(" << out_c.array_name << ", " << out_c.offset << " + "
       << out_c.var_name << ")  <->  select(" << out_arr_f << ", "
       << out_c.offset << " + " << out_var_f << ")\n";

  string correct_src = strip_fn(read_file(correct_path));
  string faulty_src = strip_fn(read_file(faulty_path));

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

  for (size_t i = 0; i < inputs_correct.size() && i < inputs_faulty.size(); i++) {
    expr shared1 = ctx.int_const((inputs_correct[i].full_name + "_shared1").c_str());
    expr shared2 = ctx.int_const((inputs_correct[i].full_name + "_shared2").c_str());
 
    // Domain-specific bounds (e.g. `< 256` for a byte) aren't recoverable
    // from the SMT file itself; add them here if known.
    slv.add(shared1 >= 0);
    slv.add(shared2 >= 0);
 
    slv.add(tagged(inputs_correct[i].full_name, "C1") == shared1);
    slv.add(tagged(inputs_faulty[i].full_name, "F1") == shared1);
    slv.add(tagged(inputs_correct[i].full_name, "C2") == shared2);
    slv.add(tagged(inputs_faulty[i].full_name, "F2") == shared2);
  }
  // Output selects, rebuilt directly from the extracted (array, offset, var)
  // triple -- reading the *final* array is equivalent to reading whatever
  // intermediate array actually performed the write, since each loop
  // iteration in this trace style writes a distinct literal offset and so
  // never overwrites another iteration's cell.
  z3::sort arr_sort = ctx.array_sort(ctx.int_sort(), ctx.int_sort());
 
  auto out_select = [&](const string &arrName, const string &varName, const string &tag) {
    expr arr = ctx.constant((arrName + "_" + tag).c_str(), arr_sort);
    expr idx = ctx.int_val((int)out_c.offset) + tagged(varName, tag);
    return select(arr, idx);
  };
 
  expr sC1 = out_select(out_c.array_name, out_c.var_name, "C1");
  expr sF1 = out_select(out_arr_f, out_var_f, "F1");
  expr sC2 = out_select(out_c.array_name, out_c.var_name, "C2");
  expr sF2 = out_select(out_arr_f, out_var_f, "F2");
 
  slv.add(sC1 == sF1); // execution 1: fault is masked
  slv.add(sC2 != sF2); // execution 2: fault is observable
 
  switch (slv.check()) {
  case sat: {
    cout << "SAT — found masked/effective input pair\n";
    model m = slv.get_model();
    cout << m << "\n";
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