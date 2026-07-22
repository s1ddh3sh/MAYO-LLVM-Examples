#include "z3++.h"
#include <filesystem>
#include <fstream>
#include <iostream>
#include <iterator>
#include <regex>
#include <stdexcept>
#include <string>
#include <vector>

using namespace z3;
using namespace std;

namespace fs = std::filesystem;
string strip_fn(const string &filename) {
  ifstream ifs(filename);
  if (!ifs) {
    cerr << "Cannot open: " << filename << "\n";
    exit(1);
  }
  string src((istreambuf_iterator<char>(ifs)), istreambuf_iterator<char>());

  istringstream ss(src);
  ostringstream out;
  string line;
  while (getline(ss, line)) {
    string t = line;
    t.erase(0, t.find_first_not_of(" \t"));
    // if (t == "(assert and)")
    //   continue;
    if (t == "(assert (not true))")
      continue;
    // if (t == "(check-sat)")
    //   continue;
    out << line << '\n';
  }
  return out.str();
}


string write_suffixed(const string &content, const string &tag) {
  string result = content;
  regex ident(R"(\b((?:i|c|b)_\d+_[A-Za-z0-9_.]+)\b)");
  result = regex_replace(result, ident, "$1_" + tag);

  string path = "../" + tag + ".smt2";
  ofstream ofs(path);
  if (!ofs) {
    cerr << "Cannot write " << path << "\n";
    exit(1);
  }
  ofs << result;
  return path;
}



int main(int argc, char **argv) {
  context ctx;
  solver slv(ctx);
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

  string correct_smt = strip_fn(correct_path);
  string faulty_smt = strip_fn(faulty_path);

  
  string c1 = write_suffixed(correct_smt, "C1");
  string f1 = write_suffixed(faulty_smt, "F1");
  string c2 = write_suffixed(correct_smt, "C2");
  string f2 = write_suffixed(faulty_smt, "F2");



  
  return 0;
}