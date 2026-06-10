#include "z3++.h"
#include <fstream>
#include <iostream>
#include <regex>
#include <sstream>
#include <string>

using namespace z3;
using namespace std;

string rewrite_to_bv(const string &filename) {
  ifstream ifs(filename);
  if (!ifs) {
    cerr << "Cannot open: " << filename << "\n";
    exit(1);
  }

  string content((istreambuf_iterator<char>(ifs)), istreambuf_iterator<char>());

  {
    istringstream ss(content);
    ostringstream out;
    string line;
    while (getline(ss, line)) {
      string t = line;
      t.erase(0, t.find_first_not_of(" \t"));
      if (t == "(assert and)")
        continue;
      if (t == "(assert (not true))")
        continue;
      if (t == "(check-sat)")
        continue;
      out << line << '\n';
    }
    content = out.str();
  }

  {
    size_t pos = 0;
    const string from = "(Array Int Int)";
    const string to = "(Array Int (_ BitVec 8))";
    while ((pos = content.find(from, pos)) != string::npos) {
      content.replace(pos, from.size(), to);
      pos += to.size();
    }
  }
  regex store_zero(R"(\(store\s+([^\s]+)\s+(.+?)\s+0\))");

  content = regex_replace(content, store_zero, "(store $1 $2 #x00)");

  // regex zero_pat(R"(\s0\)\))");
  // content = regex_replace(content, zero_pat, " #x00))");
  // int to bitvec
  // for (const string &var :
  //      {"i_5_Vdec_correct", "i_5_Vdec_faulty", "i_7_Ox_correct",
  //       "i_7_Ox_faulty", "i_9_s_correct", "i_9_s_faulty"}) {
  //   string from = "(declare-fun " + var + " () Int)";
  //   string to = "(declare-fun " + var + " () (_ BitVec 8))";
  //   size_t pos = content.find(from);
  //   if (pos != string::npos)
  //     content.replace(pos, from.size(), to);
  // }

  // removing the int2bv and bv2int
  {

    regex pat(R"(\(assert\s*\(let\s*\(\(a!1\s*\((bv\w+)\s*)"
              R"(\(\(_ int2bv 8\)\s*\(select\s+(\S+)\s+([^)]+)\)\)\s*)"
              R"(\(\(_ int2bv 8\)\s*\(select\s+\S+\s+(\([^)]*\))\)\)\)\)\)\s*)"

              R"(\(let\s*\(\(a!2\s*\(store\s+(\S+)\s+(\([^)]*\))\s*)"

              R"(\(ite\s*\(bvslt\s+a!1\s+#x00\)\s*)"
              R"(\(-\s*\(bv2int\s+a!1\)\s+256\)\s*)"
              R"(\(bv2int\s+a!1\)\)\)\)\)\s*)"

              R"(\(=\s+(\S+)\s+a!2\)\)\)\))");

    string result;
    auto it = content.cbegin();
    auto end = content.cend();
    smatch m;
    int matches = 0;
    while (regex_search(it, end, m, pat)) {
      matches++;
      result += m.prefix().str();
      string op = m[1];    // bvxor
      string mem = m[2];   // c_13_Global_M_correct
      string idx_a = m[3]; // i_5_Vdec_correct
      string idx_b = m[4]; // (+ 780 i_7_Ox_correct)
      string mem2 = m[5];  // c_13_Global_M_correct
      string idx_c = m[6]; // (+ 858 i_9_s_correct)
      string c_new = m[7];

      result += "(assert (= " + c_new + " (store " + mem2 + " " + idx_c + " (" +
                op + " (select " + mem + " " + idx_a + ")" + " (select " + mem +
                " " + idx_b + ")))))";

      it = m.suffix().first;
    }
    result += string(it, end);
    content = result;
  }

  // remove any bvint and intbv
  {
    regex bv2int_pat(R"(\(bv2int (\([^)]+\))\))");
    content = regex_replace(content, bv2int_pat, "$1");

    regex int2bv_pat(R"(\(\(_ int2bv 8\) ([^)]+)\))");
    content = regex_replace(content, int2bv_pat, "$1");
  }

  return content;
}

string write_temp(const string &content, const string &suffix) {
  string path = "/tmp/z3_bv_" + suffix + ".smt2";
  ofstream ofs(path);
  ofs << content;
  return path;
}

int main(int argc, char *argv[]) {
  string correct_file = (argc > 1) ? argv[1] : "../correct.smt2";
  string faulty_file = (argc > 2) ? argv[2] : "../funcSkip.smt2";

  string correct_tmp = write_temp(rewrite_to_bv(correct_file), "correct");
  string faulty_tmp = write_temp(rewrite_to_bv(faulty_file), "faulty");

  cout << "Written to " << correct_tmp << " and " << faulty_tmp << "\n";

  context ctx;
  solver s(ctx);

  expr_vector correct_exprs = ctx.parse_file(correct_tmp.c_str());
  expr_vector faulty_exprs = ctx.parse_file(faulty_tmp.c_str());

  for (expr e : correct_exprs)
    s.add(e);
  for (expr e : faulty_exprs)
    s.add(e);

  cout << "Loaded " << correct_exprs.size() << " correct + "
       << faulty_exprs.size() << " faulty assertions\n";

  // z3::sort bv8 = ctx.bv_sort(32);
  z3::sort int_sort = ctx.int_sort();
  z3::sort bv8 = ctx.bv_sort(8);
  z3::sort arr = ctx.array_sort(int_sort, bv8);

  // for (int i = 1; i <= 235; i++) {
  //   string name = "b_" + to_string(i) + "_path";
  //   s.add(ctx.bool_const(name.c_str()));
  // }
  // cout << "Forced 235 path booleans true\n";

  // Same inputs
  // s.add(ctx.constant("i_5_Vdec_correct", bv8) ==
  //       ctx.constant("i_5_Vdec_faulty", bv8));

  // s.add(ctx.constant("i_7_Ox_correct", bv8) ==
  //       ctx.constant("i_7_Ox_faulty", bv8));

  // s.add(ctx.constant("i_9_s_correct", bv8) ==
  //       ctx.constant("i_9_s_faulty", bv8));
  // s.add(ctx.constant("c_1_Global_M_correct", arr) ==
  //       ctx.constant("c_1_Global_M_faulty", arr));

  expr vdec_c = ctx.int_const("i_5_Vdec_correct");
  expr vdec_f = ctx.int_const("i_5_Vdec_faulty");

  expr ox_c = ctx.int_const("i_7_Ox_correct");
  expr ox_f = ctx.int_const("i_7_Ox_faulty");

  expr s_c = ctx.int_const("i_9_s_correct");
  expr s_f = ctx.int_const("i_9_s_faulty");

  s.add(vdec_c == vdec_f);
  s.add(ox_c == ox_f);
  s.add(s_c == s_f);
  s.add(ctx.constant("c_1_Global_M_correct", arr) ==
        ctx.constant("c_1_Global_M_faulty", arr));

  s.add(vdec_c >= ctx.int_val(0));
  s.add(vdec_c < ctx.int_val(780)); // must be in Vdec region

  s.add(ox_c >= ctx.int_val(0));
  s.add(ox_c < ctx.int_val(78)); // Ox range (loop bound was 78)

  s.add(s_c >= ctx.int_val(0));
  s.add(s_c < ctx.int_val(860));

  expr mem = ctx.constant("c_1_Global_M_correct", arr);
  s.add(select(mem, vdec_c) != ctx.bv_val(0, 8));
  s.add(select(mem, ox_c + ctx.int_val(780)) != ctx.bv_val(0, 8));

  expr mem_f = ctx.constant("c_91_Global_M_faulty", arr);
  expr mem_c = ctx.constant("c_91_Global_M_correct", arr);

  s.add(mem_c != mem_f);
  // Output differs
  // s.add(ctx.constant("c_91_Global_M_correct", arr) !=
  //       ctx.constant("c_91_Global_M_faulty", arr));

  // cout << "Running Z3...\n";
  // cout << s;
  check_result result = s.check();

  if (result == sat) {
    cout << "Result: SAT,\n\n";
    model m = s.get_model();

    expr v = ctx.constant("i_5_Vdec_correct", int_sort);
    expr ox = ctx.constant("i_7_Ox_correct", int_sort);
    expr sidx = ctx.constant("i_9_s_correct", int_sort);

    auto ev = [&](expr e) { return m.eval(e, true); };

    // Also show faulty output for comparison
    // z3::sort arr_f = ctx.array_sort(int_sort, bv8);
    // cout << m << endl;
    // cout << m[mem_c];
    // cout << m[mem_f];
    expr vdec_v = ev(v);
    expr ox_v = ev(ox);
    expr s_v = ev(sidx);

    // cout << "Vdec = " << vdec_v << "\n";
    // cout << "Ox   = " << ox_v << "\n";
    // cout << "s    = " << s_v << "\n\n";

    // Show initial memory values at operand locations
    cout << "M_init[Vdec]   = " << ev(select(mem, v)) << "\n";
    cout << "M_init[780+Ox] = " << ev(select(mem, ox + ctx.int_val(780)))
         << "\n\n";

    // Compute write index concretely
    expr write_idx = sidx + ctx.int_val(3);
    cout << "Write index (858+s) = " << ev(write_idx) << "\n\n";

    // Final outputs at the write location
    cout << "c_91[858+s] correct = " << ev(select(mem_c, write_idx)) << "\n";
    cout << "c_91[858+s] faulty  = " << ev(select(mem_f, write_idx)) << "\n";

  } else if (result == unsat) {
    cout << "Result: UNSAT\n";
  } else {
    cout << "Result: UNKNOWN " << s.reason_unknown() << "\n";
  }

  return 0;
}