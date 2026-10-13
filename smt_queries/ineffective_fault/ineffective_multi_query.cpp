// ineffective_multi_query.cpp -- SMT version of
// test_qemu/dist_tests/mayo/ineffective_mayo.py for one MAYO function.
//
//   ./ineffective_query <func_name> [options]      (see mayo_smt.h usage)
//
// Parameters come from mayo.json / qemu_witness.json / active_lengths.json
// exactly as in run_combined_unicorn.sh. With s = secret_buf[secret_pos]
// swept over GF(16), p = every other input byte, r = the eph_secret
// buffer(s), and d(s,p) = ((y_correct xor y_faulty) & 15) == 0 at one
// output position, the query is (dist_tests/common/ineffective.py):
//
//   no eph : forall p exists s1,s2 : d(s1,p) and not d(s2,p)
//   eph    : forall p exists s1,s2 : (forall r d(s1,r,p)) and
//                                    (forall r not d(s2,r,p))
//
// Unlike the simulation, p (and r) are not sampled: they are symbolic, so a
// LEAK verdict holds for every public background, not just the seeds tried.
//
// Stage 1 (one correct+faulty copy per s): decide for each (s, pos) whether
//   d can be true / can be false over all (p, r). An s that is ineffective
//   for every (p, r) plus one that is effective for every (p, r) proves the
//   leak directly; all-ineffective / all-effective disproves it.
// Stage 2 (only for positions stage 1 leaves open): the negation of the
//   query is   exists p : [forall s exists r : not d] or [forall s exists r : d]
//   which, s being finite, is checked as two SAT problems over one trace
//   copy per s (shared p, per-copy r):
//     A: exists p, r_s : AND_s not d(s, r_s, p)
//     B: exists p, r_s : AND_s d(s, r_s, p)
//   LEAK iff both are UNSAT. Copies already known to satisfy their
//   conjunct for every (p, r) are dropped.
#include "mayo_smt.h"

using namespace mayo_smt;
using std::cerr;
using std::cout;

namespace {

enum Tri : int8_t { T_NO = 0, T_YES = 1, T_UNK = 2, T_UNSET = 3 };

struct PosFlags {
  Tri canIneff = T_UNSET; // exists (p, r): d
  Tri canEff = T_UNSET;   // exists (p, r): not d
};

// flags[s][out][pos]
using Stage1 = vector<vector<vector<PosFlags>>>;

z3::expr nibble_delta(Instance &I, const PreparedTrace &C, const string &ct,
                      const PreparedTrace &F, const string &ft,
                      const OutputBuf &o, uint64_t pos) {
  return (I.out_byte(C, ct, o, pos) ^ I.out_byte(F, ft, o, pos)).extract(3, 0);
}

void stage1_for_secret(const FunctionSetup &S, const FaultJob &J, Budget &B,
                       unsigned s, vector<vector<PosFlags>> &flags) {
  const FuncConfig &cfg = S.cfg;
  Instance I(cfg, B);
  I.add_trace(S.correct, "C");
  I.add_trace(J.trace, "F");
  I.bind_inputs(S.correct, "C", s);
  I.bind_inputs(J.trace, "F", s);

  vector<vector<z3::expr>> d(S.outputs.size());
  for (size_t oi = 0; oi < S.outputs.size(); oi++) {
    flags[oi].assign(num_positions(S, S.outputs[oi]), PosFlags{});
    for (uint64_t pos = 0; pos < flags[oi].size(); pos++)
      d[oi].push_back(nibble_delta(I, S.correct, "C", J.trace, "F",
                                   S.outputs[oi], pos));
  }
  z3::expr zero = I.ctx.bv_val(0, 4);

  // Every SAT model is a concrete (p, r): record what it shows everywhere.
  auto absorb = [&](const z3::model &m) {
    for (size_t oi = 0; oi < d.size(); oi++)
      for (size_t pos = 0; pos < d[oi].size(); pos++) {
        if (Instance::eval_u(m, d[oi][pos]) == 0)
          flags[oi][pos].canIneff = T_YES;
        else
          flags[oi][pos].canEff = T_YES;
      }
  };

  z3::check_result r = I.check();
  if (r == z3::unsat)
    throw runtime_error("s=" + to_string(s) +
                        ": the trace is UNSAT for every input -- the trace "
                        "itself (or the input rewriting) is inconsistent");
  if (r == z3::sat)
    absorb(I.slv.get_model());

  for (size_t oi = 0; oi < d.size(); oi++)
    for (size_t pos = 0; pos < d[oi].size(); pos++) {
      PosFlags &f = flags[oi][pos];
      for (int which = 0; which < 2; which++) {
        Tri &t = which == 0 ? f.canIneff : f.canEff;
        if (t != T_UNSET)
          continue;
        I.slv.push();
        I.slv.add(which == 0 ? d[oi][pos] == zero : d[oi][pos] != zero);
        z3::check_result rr = I.check();
        if (rr == z3::sat)
          absorb(I.slv.get_model());
        else
          t = rr == z3::unsat ? T_NO : T_UNK;
        I.slv.pop();
      }
    }
}

// A (wantIneff=false): exists p, r_s: AND_s not d    B: AND_s d
z3::check_result stage2_check(const FunctionSetup &S, const FaultJob &J,
                              Budget &B, const OutputBuf &o, uint64_t pos,
                              const vector<int> &copies, bool wantIneff,
                              string &counterexample) {
  Instance I(S.cfg, B);
  z3::expr zero = I.ctx.bv_val(0, 4);
  for (int s : copies) {
    string ct = "C" + to_string(s), ft = "F" + to_string(s);
    string ephKey = "e" + to_string(s);
    I.add_trace(S.correct, ct);
    I.add_trace(J.trace, ft);
    I.bind_inputs(S.correct, ct, (unsigned)s, ephKey);
    I.bind_inputs(J.trace, ft, (unsigned)s, ephKey);
    z3::expr d = nibble_delta(I, S.correct, ct, J.trace, ft, o, pos);
    I.slv.add(wantIneff ? d == zero : d != zero);
  }
  z3::check_result r = I.check();
  if (r == z3::sat)
    counterexample = I.describe_p(I.slv.get_model());
  if (r == z3::unknown)
    std::cout << "[!] stage2 check at pos " << pos << " UNKNOWN (timeout)\n"
              << std::flush;
  return r;
}

enum class Verdict { LeakUniform, LeakPDependent, NoLeak, Unknown };

struct PosResult {
  Verdict v = Verdict::Unknown;
  vector<int> alwaysIneff, alwaysEff;
  string reason;
};

struct Stage2Task {
  size_t oi;
  uint64_t pos;
  bool wantIneff;
  vector<int> copies;
  z3::check_result res = z3::unknown;
  string counterexample;
};

void run_fault(const FunctionSetup &S, const string &path) {
  const FuncConfig &cfg = S.cfg;
  FaultJob J = load_fault(S, path);
  cout << "\n########################################\n"
       << "# faulty trace: " << J.stem << "\n"
       << "########################################\n";
  for (auto &l : J.trace.log)
    cout << "[trace] " << l << "\n";
  bool identical = traces_identical(S.correct, J.trace);
  if (identical)
    cout << "[!] WARNING: this faulty trace is IDENTICAL to the correct one "
            "once _correct/_faulty is normalized -- the fault is not encoded "
            "in the SMT file; check trace generation for this fault site.\n";

  Budget B(S.opts.timeoutMs, S.opts.faultTimeoutS);

  // ---- stage 1 ----
  Stage1 st1(cfg.fieldMod, vector<vector<PosFlags>>(S.outputs.size()));
  cout << "[stage1] " << cfg.fieldMod << " secret values x 1 copy, "
       << S.opts.jobs << " job(s)\n"
       << std::flush;
  size_t pairBytes = S.correct.text.size() + J.trace.text.size();
  unsigned jobs1 = mem_safe_jobs(S.opts.jobs, pairBytes, "stage1");
  parallel_for(cfg.fieldMod, jobs1, [&](size_t s) {
    stage1_for_secret(S, J, B, (unsigned)s, st1[s]);
  });

  // ---- per-position decision, collecting stage-2 work ----
  vector<vector<PosResult>> results(S.outputs.size());
  vector<Stage2Task> tasks;
  for (size_t oi = 0; oi < S.outputs.size(); oi++) {
    uint64_t P = num_positions(S, S.outputs[oi]);
    results[oi].resize(P);
    for (uint64_t pos = 0; pos < P; pos++) {
      PosResult &R = results[oi][pos];
      vector<int> SA, SB; // copies for check A / B
      for (unsigned s = 0; s < cfg.fieldMod; s++) {
        const PosFlags &f = st1[s][oi][pos];
        if (f.canEff == T_NO)
          R.alwaysIneff.push_back((int)s);
        if (f.canIneff == T_NO)
          R.alwaysEff.push_back((int)s);
        if (f.canIneff != T_NO)
          SA.push_back((int)s);
        if (f.canEff != T_NO)
          SB.push_back((int)s);
      }
      if (!R.alwaysIneff.empty() && !R.alwaysEff.empty()) {
        R.v = Verdict::LeakUniform;
        continue;
      }
      if (R.alwaysIneff.size() == cfg.fieldMod) {
        R.v = Verdict::NoLeak;
        R.reason = "every s is ineffective for every p";
        continue;
      }
      if (R.alwaysEff.size() == cfg.fieldMod) {
        R.v = Verdict::NoLeak;
        R.reason = "every s is effective for every p";
        continue;
      }
      // A is already UNSAT if some s is always ineffective, B if some s is
      // always effective; a single remaining copy is decided by stage 1.
      bool needA = R.alwaysIneff.empty(), needB = R.alwaysEff.empty();
      if (needA && SA.size() == 1 && st1[SA[0]][oi][pos].canEff == T_YES) {
        R.v = Verdict::NoLeak;
        R.reason = "a p exists for which every s is effective";
        continue;
      }
      if (needB && SB.size() == 1 && st1[SB[0]][oi][pos].canIneff == T_YES) {
        R.v = Verdict::NoLeak;
        R.reason = "a p exists for which every s is ineffective";
        continue;
      }
      if (needA)
        tasks.push_back({oi, pos, false, SA});
      if (needB)
        tasks.push_back({oi, pos, true, SB});
    }
  }

  // ---- stage 2 ----
  if (!tasks.empty()) {
    cout << "[stage2] " << tasks.size()
         << " multi-copy check(s) for positions stage 1 left open\n"
         << std::flush;
    size_t maxCopies = 0;
    for (auto &t : tasks)
      maxCopies = std::max(maxCopies, t.copies.size());
    unsigned jobs2 =
        mem_safe_jobs(S.opts.jobs, pairBytes * maxCopies, "stage2");
    parallel_for(tasks.size(), jobs2, [&](size_t k) {
      Stage2Task &t = tasks[k];
      t.res = stage2_check(S, J, B, S.outputs[t.oi], t.pos, t.copies,
                           t.wantIneff, t.counterexample);
    });
  }
  map<pair<size_t, uint64_t>, vector<const Stage2Task *>> byPos;
  for (auto &t : tasks)
    byPos[{t.oi, t.pos}].push_back(&t);
  for (auto &kv : byPos) {
    PosResult &R = results[kv.first.first][kv.first.second];
    bool anySat = false, anyUnk = false;
    for (auto *t : kv.second) {
      if (t->res == z3::sat) {
        anySat = true;
        R.reason = string(t->wantIneff
                              ? "a p exists for which every s is ineffective"
                              : "a p exists for which every s is effective") +
                   ", e.g. p:" + t->counterexample;
      }
      anyUnk |= t->res == z3::unknown;
    }
    R.v = anySat    ? Verdict::NoLeak
          : anyUnk  ? Verdict::Unknown
                    : Verdict::LeakPDependent;
  }

  // ---- report ----
  for (size_t oi = 0; oi < S.outputs.size(); oi++) {
    const OutputBuf &o = S.outputs[oi];
    std::ostringstream rep;
    uint64_t P = results[oi].size();
    rep << "[i] SMT ineffective query: " << J.stem << ", output '" << o.param
        << "'\n"
        << "[i] secret " << cfg.secretParam << "[" << cfg.secretPos
        << "] swept over " << cfg.fieldMod << " values x every public "
        << "background p (symbolic) -- "
        << (cfg.hasEph()
                ? "eph: s1 ineffective & s2 effective for every r"
                : "per-p pair (forall p exists s1,s2)")
        << "\n";
    if (identical)
      rep << "[!] faulty trace identical to the correct trace\n";
    rep << B.summary();

    vector<int> leaks, unknowns;
    size_t neverAffected = 0;
    for (uint64_t pos = 0; pos < P; pos++) {
      const PosResult &R = results[oi][pos];
      if (R.alwaysIneff.size() == cfg.fieldMod)
        neverAffected++;
      bool leak =
          R.v == Verdict::LeakUniform || R.v == Verdict::LeakPDependent;
      if (leak)
        leaks.push_back((int)pos);
      if (R.v == Verdict::Unknown)
        unknowns.push_back((int)pos);
      if (!leak && !S.opts.verbose)
        continue;
      rep << string(75, '=') << "\n";
      if (R.v == Verdict::LeakUniform) {
        rep << "pos " << pos << ": LEAK (holds for every p"
            << (cfg.hasEph() ? " and r" : "") << ")\n"
            << "    s1 ineffective for all p: " << join_ints(R.alwaysIneff, 10)
            << "\n"
            << "    s2 effective   for all p: " << join_ints(R.alwaysEff, 10)
            << "\n";
      } else if (R.v == Verdict::LeakPDependent) {
        rep << "pos " << pos
            << ": LEAK (for every p some s1 is ineffective and some s2 "
               "effective; the pair depends on p)\n";
      } else if (R.v == Verdict::NoLeak) {
        rep << "pos " << pos << ": no leak -- " << R.reason << "\n";
      } else {
        rep << "pos " << pos << ": UNKNOWN (solver timeout)\n";
      }
      rep << string(75, '=') << "\n";
    }
    rep << "[summary] leak at " << leaks.size() << "/" << P
        << " position(s): " << join_ints(leaks, 40) << "\n";
    if (!unknowns.empty())
      rep << "[summary] UNKNOWN (timeout) at " << unknowns.size()
          << " position(s): " << join_ints(unknowns, 40)
          << " -- raise --timeout\n";
    if (neverAffected == P)
      rep << "[summary] the fault never changes '" << o.param
          << "' (low nibble) at the analysed positions, for any input\n";

    cout << rep.str();
    string out = result_path(S, J, o, "ineffective_smt_result.txt");
    std::ofstream(out) << rep.str();
    cout << "[+] written " << out << "\n";
  }
}

} // namespace

int main(int argc, char **argv) {
  try {
    Options opts = parse_options(argc, argv);
    FunctionSetup S = load_function(opts);
    int failures = 0;
    for (auto &p : S.faultyPaths) {
      try {
        run_fault(S, p);
      } catch (const z3::exception &e) {
        cerr << "[!] " << p << ": z3: " << e.msg() << "\n";
        failures++;
      } catch (const std::exception &e) {
        cerr << "[!] " << p << ": " << e.what() << "\n";
        failures++;
      }
    }
    cout << "\n=== ineffective SMT query complete: " << opts.fn << " ("
         << S.faultyPaths.size() << " fault(s), " << failures
         << " failed) ===\n";
    return failures ? 1 : 0;
  } catch (const z3::exception &e) {
    cerr << "[!] z3: " << e.msg() << "\n";
  } catch (const std::exception &e) {
    cerr << "[!] " << e.what() << "\n";
  }
  return 1;
}
