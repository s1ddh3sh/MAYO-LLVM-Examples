#include "z3++.h"
#include <algorithm>
#include <fstream>
#include <iostream>
#include <regex>
#include <string>

using namespace z3;
using namespace std;
string write_suffixed(const string &content, const string &tag) {
  // Replace all SMT identifiers that start with our naming convention
  string result = content;
  // Match i_N_name, c_N_name, b_N_name patterns
  regex ident(R"(\b((?:i|c|b)_\d+_[A-Za-z0-9_.]+)\b)");
  result = regex_replace(result, ident, "$1_" + tag);

  string path = "/tmp/z3_" + tag + ".smt2";
  ofstream ofs(path);
  ofs << result;
  return path;
}

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
int main() {
  string correct_bv = rewrite_to_bv("../correct.smt2");
  string faulty_bv = rewrite_to_bv("../funcSkip.smt2");

  string c_ox1 = write_suffixed(correct_bv, "C1");
  string f_ox1 = write_suffixed(faulty_bv, "F1");
  string c_ox2 = write_suffixed(correct_bv, "C2");
  string f_ox2 = write_suffixed(faulty_bv, "F2");

  context ctx;
  solver s(ctx);

  for (auto &f : {c_ox1, f_ox1, c_ox2, f_ox2})
    for (expr e : ctx.parse_file(f.c_str()))
      s.add(e);

  z3::sort int_sort = ctx.int_sort();
  z3::sort bv8 = ctx.bv_sort(8);
  z3::sort arr = ctx.array_sort(int_sort, bv8);

  // Shared Vdec
  expr vdec = ctx.int_const("vdec_shared");
  s.add(vdec >= ctx.int_val(0));
  s.add(vdec < ctx.int_val(780));

  s.add(ctx.int_const("i_5_Vdec_correct_C1") == vdec);
  s.add(ctx.int_const("i_5_Vdec_faulty_F1") == vdec);
  s.add(ctx.int_const("i_5_Vdec_correct_C2") == vdec);
  s.add(ctx.int_const("i_5_Vdec_faulty_F2") == vdec);

  // Ox1
  expr ox1 = ctx.int_const("ox1_shared");
  s.add(ox1 >= ctx.int_val(0));
  s.add(ox1 < ctx.int_val(78));
  s.add(ctx.int_const("i_7_Ox_correct_C1") == ox1);
  s.add(ctx.int_const("i_7_Ox_faulty_F1") == ox1);

  // Ox2:
  expr ox2 = ctx.int_const("ox2_shared");
  s.add(ox2 >= ctx.int_val(0));
  s.add(ox2 < ctx.int_val(78));
  s.add(ctx.int_const("i_7_Ox_correct_C2") == ox2);
  s.add(ctx.int_const("i_7_Ox_faulty_F2") == ox2);

  // s index
  expr sv = ctx.int_const("s_shared");
  s.add(sv >= ctx.int_val(0));
  s.add(sv < ctx.int_val(860));
  s.add(ctx.int_const("i_9_s_correct_C1") == sv);
  s.add(ctx.int_const("i_9_s_faulty_F1") == sv);
  s.add(ctx.int_const("i_9_s_correct_C2") == sv);
  s.add(ctx.int_const("i_9_s_faulty_F2") == sv);

  // Same initial memory
  expr m_c1 = ctx.constant("c_1_Global_M_correct_C1", arr);
  expr m_f1 = ctx.constant("c_1_Global_M_faulty_F1", arr);
  expr m_c2 = ctx.constant("c_1_Global_M_correct_C2", arr);
  expr m_f2 = ctx.constant("c_1_Global_M_faulty_F2", arr);
  s.add(m_c1 == m_f1);
  s.add(m_c1 == m_c2);
  s.add(m_c1 == m_f2);

  // for (auto &tag : {"C1", "F1", "C2", "F2"}) {
  //   string t = tag;
  //   for (auto &p : {"b_2_path", "b_3_path", "b_5_path", "b_6_path",
  //   "b_8_path",
  //                   "b_12_path"})
  //     s.add(ctx.bool_const((string(p) + "_" + t).c_str()));
  //   for (auto &p : {"b_1_exit", "b_4_exit", "b_7_exit", "b_9_path",
  //   "b_10_path",
  //                   "b_11_path"})
  //     s.add(!ctx.bool_const((string(p) + "_" + t).c_str()));
  // }

  s.add(select(m_c1, vdec) != ctx.bv_val(0, 8));
  s.add(select(m_c1, ox1 + ctx.int_val(780)) != ctx.bv_val(0, 8));
  s.add(select(m_c1, ox2 + ctx.int_val(780)) != ctx.bv_val(0, 8));

  expr out_idx = sv + ctx.int_val(858);

  expr s1_c = select(ctx.constant("c_91_Global_M_correct_C1", arr), out_idx);
  expr s1_f = select(ctx.constant("c_91_Global_M_faulty_F1", arr), out_idx);
  expr s2_c = select(ctx.constant("c_91_Global_M_correct_C2", arr), out_idx);
  expr s2_f = select(ctx.constant("c_91_Global_M_faulty_F2", arr), out_idx);

  s.add(s1_c == s1_f); // Ox1
  s.add(s2_c != s2_f); // Ox2

  if (s.check() == sat) {
    model m = s.get_model();
    // cout << m;
    auto ev = [&](expr e) { return m.eval(e, true); };
    expr mem = ctx.constant("c_1_Global_M_correct_C1", arr);
    expr vdec_idx = ev(vdec);
    expr ox1_idx = ev(ox1);
    expr ox2_idx = ev(ox2);
    expr s_idx = ev(sv);

    // actual byte values from initial memory
    expr M_vdec = ev(select(mem, vdec));
    expr M_ox1 = ev(select(mem, ox1 + ctx.int_val(780)));
    expr M_ox2 = ev(select(mem, ox2 + ctx.int_val(780)));

    cout << "SAT found Ox pair\n";

    cout << "Vdec index = " << vdec_idx << "\n";
    cout << "Ox1  index = " << ox1_idx
         << "  (780+Ox1 = " << ev(ox1 + ctx.int_val(780)) << ")\n";
    cout << "Ox2  index = " << ox2_idx
         << "  (780+Ox2 = " << ev(ox2 + ctx.int_val(780)) << ")\n";
    cout << "s    index = " << s_idx
         << "  (858+s   = " << ev(sv + ctx.int_val(858)) << ")\n\n";

    cout << "M[Vdec]      = " << M_vdec << "\n";
    cout << "M[780+Ox1]   = " << M_ox1 << "\n";
    cout << "M[780+Ox2]   = " << M_ox2 << "\n\n";

    cout << "ineffective fault(Ox1) \n";
    cout << "  s1_correct = " << ev(s1_c) << "\n";
    cout << "  s1_faulty  = " << ev(s1_f) << "\n";
    
    cout << "effective fault(Ox2) \n";
    cout << "  s2_correct = " << ev(s2_c) << "\n";
    cout << "  s2_faulty  = " << ev(s2_f) << "\n";

  } else {
    cout << "UNSAT \n";
  }
}