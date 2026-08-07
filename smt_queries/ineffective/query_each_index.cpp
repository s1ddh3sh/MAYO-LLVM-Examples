#include "z3++.h"
#include <filesystem>
#include <fstream>
#include <iostream>
#include <regex>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vector>

using namespace z3;
using namespace std;
namespace fs = std::filesystem;

// =====================================================================
// File-text utilities
// =====================================================================

string read_file(const string &filename) {
  ifstream ifs(filename);
  if (!ifs) {
    cerr << "Cannot open: " << filename << "\n";
    exit(1);
  }
  return string((istreambuf_iterator<char>(ifs)), istreambuf_iterator<char>());
}

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
    return src;
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

static string swap_correct_faulty(const string &name) {
  string result = name;
  size_t pos = result.rfind("correct");
  if (pos == string::npos)
    throw runtime_error("Expected 'correct' in identifier: " + name);
  result.replace(pos, string("correct").size(), "faulty");
  return result;
}
static void assert_no_overlap(solver &slv, context &ctx, expr startA,
                              long long lenA, expr startB, long long lenB) {
  expr endA = startA + ctx.int_val((int)lenA);
  expr endB = startB + ctx.int_val((int)lenB);
  slv.add(endA <= startB || endB <= startA);
}
struct ArrayRegion {
  string label;
  string index_var;
  long long offset;
  long long length;
};

static const string GLOBAL_BASE_CORRECT = "Global_M_correct";
static const string GLOBAL_BASE_FAULTY = "Global_M_faulty";

static string INITIAL_VERSION_CORRECT = "c_1";
static string INITIAL_VERSION_FAULTY = "c_1";
static const string FINAL_VERSION_CORRECT = "c_93";
static const string FINAL_VERSION_FAULTY = "c_93";

static const ArrayRegion INPUT_SHARED = {"Vdec", "i_2_Vdec_correct", 780, 78};
static const ArrayRegion INPUT_VARIED = {"Ox", "i_4_Ox_correct", 780, 78};
static const ArrayRegion OUTPUT_REGION = {"s", "i_9_s_correct", 858, 78};

static string array_name(const string &version, const string &base,
                         const string &traceTag) {
  return version + "_" + base + "_" + traceTag;
}

static expr region_ptr(context &ctx, const ArrayRegion &r,
                       const string &traceTag, bool isFaultyTrace) {
  string name = isFaultyTrace ? swap_correct_faulty(r.index_var) : r.index_var;
  return ctx.int_const((name + "_" + traceTag).c_str());
}
string strip_bad_asserts(const string &src) {
  regex bad_assert(R"(\(assert\s+and\s*\)\s*)");
  return regex_replace(src, bad_assert, "");
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
    // cout << "defPos = " << defPos << "\n";
    // cout << src.substr(defPos - 100, 300) << "\n";
    size_t assertStart = src.rfind("(assert", defPos);
    if (assertStart == string::npos)
      return current;
    // cout << "assertStart = " << assertStart << "\n";

    string head = src.substr(assertStart, defPos - assertStart);
    if (head.find("(and (=>") != string::npos)
      return current; // guarded -- this is the true initial version
    // cout << "head = " << head << "\n";
    // cout << "find = " << head.find("(and (=>") << "\n";
    // cout << "npos = " << string::npos << "\n";
    int depth = 0;
    size_t end = string::npos;
    for (size_t i = assertStart; i < src.size(); i++) {
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
    string block = src.substr(assertStart, end - assertStart + 1);

    smatch m;
    // cout << "current = '" << current << "'\n";
    // cout << regex_search(current, m, numRe) << "\n";
    if (!regex_search(current, m, numRe))
      return current;
    int n = stoi(m[1].str());
    string predName = "c_" + to_string(n - 1);
    // cout << "=====================\n";
    // cout << "Current : " << current << "\n";
    // cout << "Target  : " << target << "\n";
    // cout << "Pred    : " << predName << "\n";
    // cout << "Block:\n";
    // cout << block << "\n";
    // cout << "=====================\n";
    if (block.find(predName) == string::npos)
      return current;
    current = predName;
  }
}

int main(int argc, char **argv) {
  if (argc < 2) {
    cerr << "Usage: ./differential_query <fnName>\n";
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

  string correct_src =
      strip_bad_asserts(strip_last_top_level_assert(read_file(correct_path)));
  string faulty_src =
      strip_bad_asserts(strip_last_top_level_assert(read_file(faulty_path)));

  INITIAL_VERSION_CORRECT = find_initial_version(
      correct_src, GLOBAL_BASE_CORRECT, FINAL_VERSION_CORRECT);
  INITIAL_VERSION_FAULTY = find_initial_version(faulty_src, GLOBAL_BASE_FAULTY,
                                                FINAL_VERSION_FAULTY);
  // cout << INITIAL_VERSION_CORRECT << INITIAL_VERSION_FAULTY << "\n"
  string c1 = write_suffixed(correct_src, "C1", fn_path);
  string f1 = write_suffixed(faulty_src, "F1", fn_path);
  string c2 = write_suffixed(correct_src, "C2", fn_path);
  string f2 = write_suffixed(faulty_src, "F2", fn_path);

  context ctx;
  z3::set_param("verbose", "1");
  // params p(ctx);
  // p.set("timeout", 300000u);
  tactic simp = z3::tactic(ctx, "simplify");
  tactic eqs = z3::tactic(ctx, "solve-eqs");
  tactic prop = z3::tactic(ctx, "propagate-values");
  tactic core = z3::tactic(ctx, "smt");
  tactic pipeline = simp & prop & eqs & core;

  solver slv = pipeline.mk_solver();
  // solver slv(ctx);
  // solver slv(ctx, "QF_AUFLIA");

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

  auto init_arr = [&](const string &base, const string &initVer,
                      const string &tag) {
    return ctx.constant(array_name(initVer, base, tag).c_str(), arr_sort);
  };
  auto final_arr = [&](const string &base, const string &finVer,
                       const string &tag) {
    return ctx.constant(array_name(finVer, base, tag).c_str(), arr_sort);
  };

  expr initC1 = init_arr(GLOBAL_BASE_CORRECT, INITIAL_VERSION_CORRECT, "C1");
  expr initF1 = init_arr(GLOBAL_BASE_FAULTY, INITIAL_VERSION_FAULTY, "F1");
  expr initC2 = init_arr(GLOBAL_BASE_CORRECT, INITIAL_VERSION_CORRECT, "C2");
  expr initF2 = init_arr(GLOBAL_BASE_FAULTY, INITIAL_VERSION_FAULTY, "F2");

  expr finC1 = final_arr(GLOBAL_BASE_CORRECT, FINAL_VERSION_CORRECT, "C1");
  expr finF1 = final_arr(GLOBAL_BASE_FAULTY, FINAL_VERSION_FAULTY, "F1");
  expr finC2 = final_arr(GLOBAL_BASE_CORRECT, FINAL_VERSION_CORRECT, "C2");
  expr finF2 = final_arr(GLOBAL_BASE_FAULTY, FINAL_VERSION_FAULTY, "F2");

  slv.add(initC1 == initF1);
  slv.add(initC2 == initF2);

  auto pin_pointer = [&](const ArrayRegion &r) {
    expr pC1 = region_ptr(ctx, r, "C1", false);
    expr pF1 = region_ptr(ctx, r, "F1", true);
    expr pC2 = region_ptr(ctx, r, "C2", false);
    expr pF2 = region_ptr(ctx, r, "F2", true);
    slv.add(pC1 == pF1);
    slv.add(pC1 == pC2);
    slv.add(pC1 == pF2);
    return pC1;
  };

  expr vdecPtr = pin_pointer(INPUT_SHARED);
  expr oxPtr = pin_pointer(INPUT_VARIED);
  expr sPtr = pin_pointer(OUTPUT_REGION);
  expr vdecStart = ctx.int_val((int)INPUT_SHARED.offset) + vdecPtr;
  expr oxStart = ctx.int_val((int)INPUT_VARIED.offset) + oxPtr;
  expr sStart = ctx.int_val((int)OUTPUT_REGION.offset) + sPtr;

  assert_no_overlap(slv, ctx, vdecStart, INPUT_SHARED.length, oxStart,
                    INPUT_VARIED.length);
  assert_no_overlap(slv, ctx, vdecStart, INPUT_SHARED.length, sStart,
                    OUTPUT_REGION.length);
  assert_no_overlap(slv, ctx, oxStart, INPUT_VARIED.length, sStart,
                    OUTPUT_REGION.length);
  // ---- Shared input setup ----
  for (long long i = 0; i < INPUT_SHARED.length; i++) {
    expr addr = ctx.int_val((int)(INPUT_SHARED.offset + i)) + vdecPtr;
    expr vi = ctx.int_const(("V_" + to_string(i)).c_str());
    slv.add(select(initC1, addr) == vi);
    slv.add(select(initC2, addr) == vi);
    slv.add(vi == ctx.int_val(1));
    // slv.add(vi >= ctx.int_val(0));
    // slv.add(vi < ctx.int_val(256));
  }

  // ---- Varied input setup ----
  expr_vector inputDiffs(ctx);
  for (long long i = 0; i < INPUT_VARIED.length; i++) {
    expr addr = ctx.int_val((int)(INPUT_VARIED.offset + i)) + oxPtr;
    expr o1i = ctx.int_const(("O1_" + to_string(i)).c_str());
    expr o2i = ctx.int_const(("O2_" + to_string(i)).c_str());
    slv.add(select(initC1, addr) == o1i);
    slv.add(select(initC2, addr) == o2i);
    slv.add(o1i >= ctx.int_val(0));
    slv.add(o1i < ctx.int_val(256));
    slv.add(o2i >= ctx.int_val(0));
    slv.add(o2i < ctx.int_val(256));
    // if (i == 0) {
    inputDiffs.push_back(o1i != o2i);
    // } else {
    // slv.add(o1i != o2i);
    // }
  }
  slv.add(mk_or(inputDiffs));

  // ---- Output 1 ----
  for (long long i = 0; i < OUTPUT_REGION.length; i++) {
    expr addr = ctx.int_val((int)(OUTPUT_REGION.offset + i)) + sPtr;
    expr c1v = select(finC1, addr);
    expr f1v = select(finF1, addr);
    if (i == 0) {
      slv.add(c1v == f1v);
      // cout << "Added: " << (c1v == f1v) << endl;
    }

    // cout << "Constraint:\n";
    // cout << (c1v == f1v) << endl;
    slv.add(c1v >= ctx.int_val(0));
    slv.add(c1v < ctx.int_val(256));
    slv.add(f1v >= ctx.int_val(0));
    slv.add(f1v < ctx.int_val(256));
  }

  for (long long i = 0; i < OUTPUT_REGION.length; i++) {
    expr addr = ctx.int_val((int)(OUTPUT_REGION.offset + i)) + sPtr;

    expr c2v = select(finC2, addr);
    expr f2v = select(finF2, addr);
    if (i == 0)
      slv.add(c2v != f2v);

    slv.add(c2v >= ctx.int_val(0));
    slv.add(c2v < ctx.int_val(256));
    slv.add(f2v >= ctx.int_val(0));
    slv.add(f2v < ctx.int_val(256));
  }

  // 1. Check if the baseline setup itself is SAT without forcing any output
  // divergence
  // slv.push();
  // check_result base_res = slv.check();
  // cout << "Baseline setup SAT check (no divergence forced): "
  //      << (base_res == sat ? "SAT" : (base_res == unsat ? "UNSAT" :
  //      "TIMEOUT"))
  //      << "\n";

  // if (base_res != sat) {
  //   cout << "[!] CRITICAL ERROR: The base 4-trace framework is UNSAT or "
  //           "TIMEOUT before adding any output divergence!\n";
  //   cout << "    This means input setup, trace concatenation, or pointer "
  //           "pinning creates a contradiction.\n";
  //   slv.pop();
  //   return 1;
  // }
  // slv.pop();

  // 2. Print exact AST expressions being evaluated for Index [0]
  expr addr_0 = ctx.int_val((int)(OUTPUT_REGION.offset + 0)) + sPtr;
  expr sel_C2_0 = select(finC2, addr_0);
  expr sel_F2_0 = select(finF2, addr_0);

  cout << "\nIndex [0] Address Expression:\n  " << addr_0 << "\n";
  cout << "Index [0] Array Select (Correct C2):\n  " << sel_C2_0 << "\n";
  cout << "Index [0] Array Select (Faulty F2):\n  " << sel_F2_0 << "\n";
 
  cout << "================ SOLVER ================\n";
  // cout << slv << endl;
  cout << slv.assertions().size() << endl;
  check_result res = slv.check();

  if (res == sat) {
    cout << "SAT!\n";
    cout << "\n======================================================\n";
    cout << "SAT — found divergence target at output index [0]\n";
    cout << "======================================================\n\n";
    cout << slv.assertions().size() << endl;
    model m = slv.get_model();
    // cout << "================ MODEL ================\n";

    // cout << m << "\n";
    expr_vector bad(ctx);

    for (unsigned i = 0; i < slv.assertions().size(); i++) {
      expr a = slv.assertions()[i];
      expr v = m.eval(a, true);

      if (!v.is_true()) {
        cout << "FAILED ASSERTION:\n";
        cout << a << endl;
        cout << "evaluates to " << v << endl;
        break;
      }
    }

    auto ev = [&](const expr &e) { return m.eval(e, true).simplify(); };
   

    cout << "-- " << INPUT_SHARED.label << " (shared, both executions) --\n";
    for (long long i = 0; i < INPUT_SHARED.length; i++) {
      expr vi = ctx.int_const(("V_" + to_string(i)).c_str());
      cout << "  [" << i << "] " << ev(vi) << "\n";
    }

    cout << "\n-- " << INPUT_VARIED.label << " execution 1 --\n";
    for (long long i = 0; i < INPUT_VARIED.length; i++) {
      expr o1i = ctx.int_const(("O1_" + to_string(i)).c_str());
      cout << "  [" << i << "] " << ev(o1i) << "\n";
    }

    cout << "\n-- " << INPUT_VARIED.label << " execution 2 --\n";
    for (long long i = 0; i < INPUT_VARIED.length; i++) {
      expr o2i = ctx.int_const(("O2_" + to_string(i)).c_str());
      cout << "  [" << i << "] " << ev(o2i) << "\n";
    }

    cout << "\n-- Output region, execution 1 --\n";
    for (long long i = 0; i < OUTPUT_REGION.length; i++) {
      expr addr = ctx.int_val((int)(OUTPUT_REGION.offset + i)) + sPtr;
      // expr cv = ev(select(finC1, addr));

      expr cv = m.eval(select(finC1, addr), true);

      // cout << cv << endl;
      // cout << "is numeral = " << cv.is_numeral() << endl;
      expr fv = ev(select(finF1, addr));
      // cout << "addr = " << ev(addr) << endl;
      // cout << "pointer = " << ev(sPtr) << endl;
      // cout << "i_9_s_correct_C1 = " << ev(ctx.int_const("i_9_s_correct_C1"))
      //      << endl;
      cout << "  [" << i << "] correct=" << cv << " faulty=" << fv
           << (z3::eq(cv, fv) ? "" : "  <-- DIFFERS") << "\n";
    }

    cout << "\n-- Output region, execution 2 --\n";
    for (long long i = 0; i < OUTPUT_REGION.length; i++) {
      expr addr = ctx.int_val((int)(OUTPUT_REGION.offset + i)) + sPtr;
      expr cv = ev(select(finC2, addr));
      expr fv = ev(select(finF2, addr));
      cout << "  [" << i << "] correct=" << cv << " faulty=" << fv
           << (z3::eq(cv, fv) ? "" : "  <-- DIFFERS") << "\n";
    }
  } else if (res == unsat) {
    cout << "UNSAT\n";
    cout << "[!] No differential pair found where index [0] specifically "
            "diverges,\n"
         << "    given: same shared input, some differing varied input, and "
            "full\n"
         << "    masking at every output index in execution 1.\n";
  } else {
    cout << "UNKNOWN / TIMEOUT\n";
  }

  // slv.pop();

  return 0;
}