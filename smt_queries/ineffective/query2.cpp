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
// File-text utilities  (unchanged from ineffective_query.cpp)
// =====================================================================

string read_file(const string &filename) {
  ifstream ifs(filename);
  if (!ifs) {
    cerr << "Cannot open: " << filename << "\n";
    exit(1);
  }
  return string((istreambuf_iterator<char>(ifs)), istreambuf_iterator<char>());
}

// Removes the LAST top-level (assert ...) s-expression (the property /
// stub assertion we don't want feeding the differential query -- e.g. the
// "(= (select c_93_... (+ 780 i_9_s_correct)) 5)" check in correct.smt2).
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

// =====================================================================
// ==================  Per-function configuration  ====================
//
// Hardcoded for now, per-function. Addresses in this dump are of the
// form  (literal_offset + pointer_var)  where pointer_var is a single
// free Int reused unchanged across every element of the array (it
// represents where the analysis placed that array relative to
// Global_M, not a loop index), and literal_offset increments by 1 per
// element. So each region needs: which pointer variable, the literal
// offset of its first element, and how many contiguous elements.
//
// To generalize later, derive all of this by inspecting the store/select
// chain structurally instead of reading it off the dump by hand.
// =====================================================================

struct ArrayRegion {
  string label;      // human-readable, e.g. "Vdec", "Ox", "s"
  string index_var;   // canonical (correct-tagged) pointer variable name
  long long offset;   // literal added to index_var for element 0
  long long length;   // number of contiguous elements this variable spans
};

// Base array identifier as it appears in the raw smt2 dump BEFORE the
// "c_<N>_" version prefix, e.g. in "c_15_Global_M_correct" the base is
// "Global_M_correct".
static const string GLOBAL_BASE_CORRECT = "Global_M_correct";
static const string GLOBAL_BASE_FAULTY  = "Global_M_faulty";


static const string INITIAL_VERSION_CORRECT = "c_1";
static const string INITIAL_VERSION_FAULTY  = "c_1";
static const string FINAL_VERSION_CORRECT   = "c_93";
static const string FINAL_VERSION_FAULTY    = "c_93"; // <-- verify per function

// Inputs, read from the INITIAL array.
static const ArrayRegion INPUT_SHARED = {"Vdec", "i_2_Vdec_correct", 780, 78};
static const ArrayRegion INPUT_VARIED = {"Ox",   "i_4_Ox_correct",   780, 78};

// Output, read from the FINAL array.
static const ArrayRegion OUTPUT_REGION = {"s", "i_9_s_correct", 858, 78};


static string array_name(const string &version, const string &base,
                          const string &traceTag) {
  return version + "_" + base + "_" + traceTag;
}

// Suffixed pointer constant for a region in a specific trace.
// isFaultyTrace selects whether to use the "_correct" or "_faulty"
// variant of the canonical index_var before appending the trace tag.
static expr region_ptr(context &ctx, const ArrayRegion &r,
                       const string &traceTag, bool isFaultyTrace) {
  string name = isFaultyTrace ? swap_correct_faulty(r.index_var) : r.index_var;
  return ctx.int_const((name + "_" + traceTag).c_str());
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

  // ---- Build four suffixed copies: C1/F1 = execution 1, C2/F2 = execution 2 ----
  string correct_src = strip_last_top_level_assert(read_file(correct_path));
  string faulty_src  = strip_last_top_level_assert(read_file(faulty_path));

  string c1 = write_suffixed(correct_src, "C1", fn_path);
  string f1 = write_suffixed(faulty_src,  "F1", fn_path);
  string c2 = write_suffixed(correct_src, "C2", fn_path);
  string f2 = write_suffixed(faulty_src,  "F2", fn_path);

  context ctx;
  solver slv(ctx);

  expr_vector C1 = ctx.parse_file(c1.c_str());
  expr_vector F1 = ctx.parse_file(f1.c_str());
  expr_vector C2 = ctx.parse_file(c2.c_str());
  expr_vector F2 = ctx.parse_file(f2.c_str());
  for (expr e : C1) slv.add(e);
  for (expr e : F1) slv.add(e);
  for (expr e : C2) slv.add(e);
  for (expr e : F2) slv.add(e);

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
  expr initF1 = init_arr(GLOBAL_BASE_FAULTY,  INITIAL_VERSION_FAULTY,  "F1");
  expr initC2 = init_arr(GLOBAL_BASE_CORRECT, INITIAL_VERSION_CORRECT, "C2");
  expr initF2 = init_arr(GLOBAL_BASE_FAULTY,  INITIAL_VERSION_FAULTY,  "F2");

  expr finC1 = final_arr(GLOBAL_BASE_CORRECT, FINAL_VERSION_CORRECT, "C1");
  expr finF1 = final_arr(GLOBAL_BASE_FAULTY,  FINAL_VERSION_FAULTY,  "F1");
  expr finC2 = final_arr(GLOBAL_BASE_CORRECT, FINAL_VERSION_CORRECT, "C2");
  expr finF2 = final_arr(GLOBAL_BASE_FAULTY,  FINAL_VERSION_FAULTY,  "F2");

  // Correct/faulty must start from literally the same memory image within
  // each execution -- only the injected fault (later in the trace) may
  // cause divergence.
  slv.add(initC1 == initF1);
  slv.add(initC2 == initF2);

  // Pin each region's base pointer to the SAME value across all four
  // traces. These pointers describe where an array lives relative to
  // Global_M -- a fixed property of the binary/analysis -- not something
  // the differential search should be free to vary. Without this the
  // solver could satisfy the query by "moving" arrays around instead of
  // changing their contents.
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
  expr oxPtr   = pin_pointer(INPUT_VARIED);
  expr sPtr    = pin_pointer(OUTPUT_REGION);

  // ---- Shared input: identical value at every address, across BOTH executions ----
  for (long long i = 0; i < INPUT_SHARED.length; i++) {
    expr addr = ctx.int_val((int)(INPUT_SHARED.offset + i)) + vdecPtr;
    expr vi = ctx.int_const(("V_" + to_string(i)).c_str());
    slv.add(select(initC1, addr) == vi);
    slv.add(select(initC2, addr) == vi); // same value in execution 2
  }

  // ---- Varied (fault-affected) input: constant within an execution, free
  // to differ BETWEEN execution 1 and 2, and required to actually differ
  // in at least one position. ----
  expr_vector inputDiffs(ctx);
  for (long long i = 0; i < INPUT_VARIED.length; i++) {
    expr addr = ctx.int_val((int)(INPUT_VARIED.offset + i)) + oxPtr;
    expr o1i = ctx.int_const(("O1_" + to_string(i)).c_str());
    expr o2i = ctx.int_const(("O2_" + to_string(i)).c_str());
    slv.add(select(initC1, addr) == o1i);
    slv.add(select(initC2, addr) == o2i);
    inputDiffs.push_back(o1i != o2i);
  }
  slv.add(mk_or(inputDiffs)); // at least one element of the varied input differs

  // ---- Output comparison, over the WHOLE output region, on the FINAL array ----

  // Execution 1: fault is masked -- correct and faulty outputs match at
  // EVERY address in the output region.
  for (long long i = 0; i < OUTPUT_REGION.length; i++) {
    expr addr = ctx.int_val((int)(OUTPUT_REGION.offset + i)) + sPtr;
    slv.add(select(finC1, addr) == select(finF1, addr));
  }

  // Execution 2: fault is observable -- outputs differ at at least one
  // address in the output region.
  expr_vector outputDiffs(ctx);
  for (long long i = 0; i < OUTPUT_REGION.length; i++) {
    expr addr = ctx.int_val((int)(OUTPUT_REGION.offset + i)) + sPtr;
    outputDiffs.push_back(select(finC2, addr) != select(finF2, addr));
  }
  slv.add(mk_or(outputDiffs));

  switch (slv.check()) {
  case sat: {
    cout << "SAT — found ineffective/effective " << INPUT_VARIED.label
         << " pair\n\n";
    model m = slv.get_model();
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

    cout << "\n-- Output region, execution 1 (masked) --\n";
    for (long long i = 0; i < OUTPUT_REGION.length; i++) {
      expr addr = ctx.int_val((int)(OUTPUT_REGION.offset + i)) + sPtr;
      expr cv = ev(select(finC1, addr));
      expr fv = ev(select(finF1, addr));
      cout << "  [" << i << "] correct=" << cv << " faulty=" << fv
           << (z3::eq(cv, fv) ? "" : "  <-- DIFFERS") << "\n";
    }

    cout << "\n-- Output region, execution 2 (observable) --\n";
    for (long long i = 0; i < OUTPUT_REGION.length; i++) {
      expr addr = ctx.int_val((int)(OUTPUT_REGION.offset + i)) + sPtr;
      expr cv = ev(select(finC2, addr));
      expr fv = ev(select(finF2, addr));
      cout << "  [" << i << "] correct=" << cv << " faulty=" << fv
           << (z3::eq(cv, fv) ? "" : "  <-- DIFFERS") << "\n";
    }
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