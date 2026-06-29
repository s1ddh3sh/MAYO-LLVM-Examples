#include "z3++.h"
#include <fstream>
#include <iostream>
#include <regex>
#include <sstream>
#include <string>

using namespace z3;
using namespace std;

//  helpers

string strip_boilerplate(const string &src) {
  istringstream ss(src);
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
  return out.str();
}

string rewrite_to_bv(const string &filename) {
  ifstream ifs(filename);
  if (!ifs) {
    cerr << "Cannot open: " << filename << "\n";
    exit(1);
  }
  string content((istreambuf_iterator<char>(ifs)), istreambuf_iterator<char>());

  // 1. strip boilerplate
  content = strip_boilerplate(content);

  // 2. Array Int Int  →  Array Int (_ BitVec 8)
  {
    const string from = "(Array Int Int)";
    const string to = "(Array Int (_ BitVec 8))";
    size_t pos = 0;
    while ((pos = content.find(from, pos)) != string::npos) {
      content.replace(pos, from.size(), to);
      pos += to.size();
    }
  }

  {

    regex store_zero(R"(\(store\s+(\S+)\s+(\([^)]*\))\s+0\))");
    content = regex_replace(content, store_zero, "(store $1 $2 #x00)");
    // Also handle index that is a plain int var (no parens):
    regex store_zero2(R"(\(store\s+(\S+)\s+(\S+)\s+0\))");
    content = regex_replace(content, store_zero2, "(store $1 $2 #x00)");
  }

  // 4. Strip the int2bv/bv2int round-trip wrapper the LLVM→SMT tool emits
  //    for every XOR step:
  //
  //   (assert (let ((a!1 (bvxor ((_ int2bv 8) (select MEM IDX_A))
  //                             ((_ int2bv 8) (select MEM IDX_B)))))
  //     (let ((a!2 (store MEM2 IDX_C
  //                   (ite (bvslt a!1 #x00) (- (bv2int a!1) 256)
  //                                         (bv2int a!1)))))
  //       (= C_NEW a!2))))
  //
  //  →  (assert (= C_NEW (store MEM2 IDX_C
  //                          (bvxor (select MEM IDX_A) (select MEM IDX_B)))))
  //
  //  The index expressions like (+ 780 i_5_Vdec_correct) can contain spaces
  //  so we use [\s\S]*? carefully and DOTALL via a line-by-line join.
  {
    // Work on the whole file as one string.
    // Capture groups:
    //  1 = bvop (always bvxor here)
    //  2 = MEM  (source array for both selects)
    //  3 = IDX_A (first select index – may be "(+ N VAR)")
    //  4 = IDX_B (second select index)
    //  5 = MEM2 (destination array – same as MEM in practice)
    //  6 = IDX_C (store destination index)
    //  7 = C_NEW (LHS name)

    regex pat(R"(\(assert\s*\(let\s*\(\(a!1\s*\((bv\w+)\s*)"
              R"(\(\(_ int2bv 8\)\s*\(select\s+(\S+)\s+(\([^)]*\))\)\)\s*)"
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
    while (regex_search(it, end, m, pat)) {
      result += m.prefix().str();
      string op = m[1];    // bvxor
      string mem = m[2];   // source array
      string idxA = m[3];  // first index
      string idxB = m[4];  // second index
      string mem2 = m[5];  // dest array (== mem)
      string idxC = m[6];  // output index
      string c_new = m[7]; // new array name

      result += "(assert (= " + c_new + " (store " + mem2 + " " + idxC + " (" +
                op + " (select " + mem + " " + idxA + ")" + " (select " + mem +
                " " + idxB + ")))))";
      it = m.suffix().first;
    }
    result += string(it, end);
    content = result;
  }

  // 5. Remove any leftover  (bv2int (...))  and  ((_ int2bv 8) ...)
  {
    regex bv2int_pat(R"(\(bv2int (\([^)]+\))\))");
    content = regex_replace(content, bv2int_pat, "$1");

    regex int2bv_pat(R"(\(\(_ int2bv 8\) ([^)]+)\))");
    content = regex_replace(content, int2bv_pat, "$1");
  }

  return content;
}

// Append a suffix to every SMT identifier produced by our naming convention.
string write_suffixed(const string &content, const string &tag) {
  string result = content;
  regex ident(R"(\b((?:i|c|b)_\d+_[A-Za-z0-9_.]+)\b)");
  result = regex_replace(result, ident, "$1_" + tag);

  string path = "/tmp/z3_" + tag + ".smt2";
  ofstream ofs(path);
  if (!ofs) {
    cerr << "Cannot write " << path << "\n";
    exit(1);
  }
  ofs << result;
  return path;
}

int main(int argc, char **argv) {
  const char *correct_path = (argc > 1) ? argv[1] : "../correct.smt2";
  const char *faulty_path = (argc > 2) ? argv[2] : "../funcSkip.smt2";

  string correct_bv = rewrite_to_bv(correct_path);
  string faulty_bv = rewrite_to_bv(faulty_path);

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

  //  shared inputs

  // Vdec: shared row index (0..779).
  expr vdec = ctx.int_const("vdec_shared");
  s.add(vdec >= ctx.int_val(0));
  s.add(vdec < ctx.int_val(780));
  for (const char *tag : {"correct_C1", "faulty_F1", "correct_C2", "faulty_F2"})
    s.add(ctx.int_const(("i_5_Vdec_" + string(tag)).c_str()) == vdec);

  // Ox1: column tested by run pair (C1, F1).
  expr ox1 = ctx.int_const("ox1_shared");
  s.add(ox1 >= ctx.int_val(0));
  s.add(ox1 < ctx.int_val(78));
  s.add(ctx.int_const("i_7_Ox_correct_C1") == ox1);
  s.add(ctx.int_const("i_7_Ox_faulty_F1") == ox1);

  // Ox2: column tested by run pair (C2, F2).
  expr ox2 = ctx.int_const("ox2_shared");
  s.add(ox2 >= ctx.int_val(0));
  s.add(ox2 < ctx.int_val(78));
  s.add(ctx.int_const("i_7_Ox_correct_C2") == ox2);
  s.add(ctx.int_const("i_7_Ox_faulty_F2") == ox2);

  // The two columns must be distinct.
  s.add(ox1 != ox2);

  expr sv = ctx.int_const("s_shared");
  s.add(sv >= ctx.int_val(0));
  s.add(sv < ctx.int_val(78));
  for (const char *tag : {"correct_C1", "faulty_F1", "correct_C2", "faulty_F2"})
    s.add(ctx.int_const(("i_9_s_" + string(tag)).c_str()) == sv);

  //  force the path that executes the XOR block (b_12_path)
  //
  // The SMT encodes two mutually exclusive paths after the inner loop exits:
  //   b_11_path  (b_7_exit == true):  stores 0, no XOR
  //   b_12_path  (b_7_exit == false): executes the XOR / fault
  //
  // b_7_exit = (i_3_i.0.i9 != 860).
  // We force i_3_i.0.i9 = 860  ⟹  b_7_exit = false  ⟹  b_12_path is taken.
  // for (const char *tag : {"C1", "F1", "C2", "F2"}) {
  //   string pfx = (tag[0] == 'C') ? "correct_" : "faulty_";
  //   s.add(ctx.int_const(("i_3_i.0.i9_" + pfx + tag).c_str()) ==
  //         ctx.int_val(860));
  //   // Also force the outer-loop iteration variable to 0 so c_2 == c_1.
  //   s.add(ctx.int_const(("i_1_i.0.i_" + pfx + tag).c_str()) ==
  //   ctx.int_val(0));
  //   // Force b_2_path so the entry block is reachable.
  //   s.add(ctx.bool_const(("b_2_path_" + pfx + tag).c_str()));
  // }

  for (const char *tag : {"C1", "F1", "C2", "F2"}) {
    s.add(ctx.int_const((string("i_3_i.0.i9_") + tag).c_str()) ==
          ctx.int_val(860));
    s.add(ctx.int_const((string("i_1_i.0.i_") + tag).c_str()) ==
          ctx.int_val(0));
    s.add(ctx.bool_const((string("b_2_path_") + tag).c_str()));
  }

  //  same initial memory for all four runs
  expr m_c1 = ctx.constant("c_1_Global_M_correct_C1", arr);
  expr m_f1 = ctx.constant("c_1_Global_M_faulty_F1", arr);
  expr m_c2 = ctx.constant("c_1_Global_M_correct_C2", arr);
  expr m_f2 = ctx.constant("c_1_Global_M_faulty_F2", arr);
  s.add(m_c1 == m_f1);
  s.add(m_c1 == m_c2);
  s.add(m_c1 == m_f2);

  //  memory value constraints ─
  // The relevant cells must be non-zero so results are not trivially equal.
  s.add(select(m_c1, vdec) != ctx.bv_val(0, 8));
  // s.add(select(m_c1, ox1 + ctx.int_val(780)) != ctx.bv_val(0, 8));
  // s.add(select(m_c1, ox2 + ctx.int_val(780)) != ctx.bv_val(0, 8));
  // The two key cells must differ so that the XOR result distinguishes them.
  s.add(select(m_c1, ox1 + ctx.int_val(780)) !=
        select(m_c1, ox2 + ctx.int_val(780)));

  //  output observations
  // The fault lands at offset 0 of the XOR loop: index (858 + s).
  expr out_idx = sv + ctx.int_val(858);

  expr s1_c = select(ctx.constant("c_14_Global_M_correct_C1", arr), out_idx);
  expr s1_f = select(ctx.constant("c_14_Global_M_faulty_F1", arr), out_idx);
  expr s2_c = select(ctx.constant("c_14_Global_M_correct_C2", arr), out_idx);
  expr s2_f = select(ctx.constant("c_14_Global_M_faulty_F2", arr), out_idx);

  // Correct outputs must be non-zero (ensures genuine computation happened).
  s.add(s1_c != ctx.bv_val(0, 8));
  s.add(s2_c != ctx.bv_val(0, 8));

  s.add(s1_c == s1_f); // Ox1
  s.add(s2_c != s2_f); // Ox2

  if (s.check() != sat) {
    cout << "UNSAT\n";
    return 0;
  }

  model m = s.get_model();
  // cout << m << "\n";
  auto ev = [&](expr e) { return m.eval(e, true); };
  expr mem = ctx.constant("c_1_Global_M_correct_C1", arr);

  cout << "SAT — found ineffective/effective Ox pair\n\n";

  cout << "Vdec index = " << ev(vdec) << "\n";
  cout << "Ox1  index = " << ev(ox1)
       << "  (780+Ox1 = " << ev(ox1 + ctx.int_val(780)) << ")\n";
  cout << "Ox2  index = " << ev(ox2)
       << "  (780+Ox2 = " << ev(ox2 + ctx.int_val(780)) << ")\n";
  cout << "s    index = " << ev(sv)
       << "  (858+s   = " << ev(sv + ctx.int_val(858)) << ")\n\n";

  cout << "M[Vdec]    = " << ev(select(mem, vdec)) << "\n";
  cout << "M[780+Ox1] = " << ev(select(mem, ox1 + ctx.int_val(780))) << "\n";
  cout << "M[780+Ox2] = " << ev(select(mem, ox2 + ctx.int_val(780))) <<
  "\n\n";

  cout << "ineffective fault (Ox1):\n";
  cout << "  s1_correct = " << ev(s1_c) << "\n";
  cout << "  s1_faulty  = " << ev(s1_f) << "\n\n";

  cout << "effective fault (Ox2):\n";
  cout << "  s2_correct = " << ev(s2_c) << "\n";
  cout << "  s2_faulty  = " << ev(s2_f) << "\n";

  return 0;
}