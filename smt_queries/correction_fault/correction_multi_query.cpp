// correction_multi_query.cpp -- SMT version of
// test_qemu/dist_tests/mayo/correction_mayo.py for one MAYO function.
//
//   ./correction_query <func_name> [options]       (see mayo_smt.h usage)
//
// Parameters come from mayo.json / qemu_witness.json / active_lengths.json
// exactly as in run_combined_unicorn.sh. With s = secret_buf[secret_pos]
// and p = every other input byte (eph_secret buffers included -- the
// simulation redraws them with every public seed, and correction_mayo.py
// treats them like p), the query per output position is
//
//   exists alpha != 0, s :  forall p :  y_correct(s,p) = y_faulty(s,p) xor alpha
//
// p is symbolic, so "forall p" is exact rather than the simulation's
// handful of seeds. Per s (one thread each): take any model to read off the
// only possible alpha = Delta(s, p0) at every position, then prove it
// constant by checking  exists p : Delta(s,p) != alpha  is UNSAT.
#include "mayo_smt.h"

using namespace mayo_smt;
using std::cerr;
using std::cout;

namespace {

enum class Corr : int8_t { Witness, NotConstant, AlphaZero, Unknown };

struct CorrCell {
  Corr c = Corr::Unknown;
  unsigned alpha = 0;
};

// cells[out][pos] for one secret value s
void correction_for_secret(const FunctionSetup &S, const FaultJob &J,
                           Budget &B, unsigned s, vector<vector<CorrCell>> &cells) {
  Instance I(S.cfg, B);
  I.add_trace(S.correct, "C");
  I.add_trace(J.trace, "F");
  I.bind_inputs(S.correct, "C", s);
  I.bind_inputs(J.trace, "F", s);

  vector<vector<z3::expr>> delta(S.outputs.size());
  for (size_t oi = 0; oi < S.outputs.size(); oi++) {
    cells[oi].assign(num_positions(S, S.outputs[oi]), CorrCell{});
    for (uint64_t pos = 0; pos < cells[oi].size(); pos++)
      delta[oi].push_back(I.out_byte(S.correct, "C", S.outputs[oi], pos) ^
                          I.out_byte(J.trace, "F", S.outputs[oi], pos));
  }

  z3::check_result r = I.check();
  if (r == z3::unsat)
    throw runtime_error("s=" + to_string(s) +
                        ": the trace is UNSAT for every input -- the trace "
                        "itself (or the input rewriting) is inconsistent");
  if (r != z3::sat)
    return; // all Unknown
  z3::model m0 = I.slv.get_model();

  for (size_t oi = 0; oi < delta.size(); oi++)
    for (size_t pos = 0; pos < delta[oi].size(); pos++) {
      CorrCell &c = cells[oi][pos];
      c.alpha = Instance::eval_u(m0, delta[oi][pos]);
      if (c.alpha == 0) {
        // alpha must equal this value if constant; 0 is excluded.
        c.c = Corr::AlphaZero;
        continue;
      }
      I.slv.push();
      I.slv.add(delta[oi][pos] != I.ctx.bv_val(c.alpha, 8));
      z3::check_result rr = I.check();
      I.slv.pop();
      c.c = rr == z3::unsat ? Corr::Witness
            : rr == z3::sat ? Corr::NotConstant
                            : Corr::Unknown;
    }
}

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

  // cells[s][out][pos]
  vector<vector<vector<CorrCell>>> cells(
      cfg.fieldMod, vector<vector<CorrCell>>(S.outputs.size()));
  cout << "[i] " << cfg.fieldMod << " secret values, " << S.opts.jobs
       << " job(s)\n"
       << std::flush;
  unsigned jobs = mem_safe_jobs(
      S.opts.jobs, S.correct.text.size() + J.trace.text.size(), "correction");
  parallel_for(cfg.fieldMod, jobs, [&](size_t s) {
    correction_for_secret(S, J, B, (unsigned)s, cells[s]);
  });

  for (size_t oi = 0; oi < S.outputs.size(); oi++) {
    const OutputBuf &o = S.outputs[oi];
    uint64_t P = num_positions(S, o);
    std::ostringstream rep;
    rep << "[i] SMT correction query: " << J.stem << ", output '" << o.param
        << "'\n"
        << "[i] " << cfg.fieldMod << " secret values of " << cfg.secretParam
        << "[" << cfg.secretPos << "] x every public background p (symbolic"
        << (cfg.hasEph() ? ", eph_secret included in p" : "") << ")\n";
    if (identical)
      rep << "[!] faulty trace identical to the correct trace\n";
    rep << B.summary();

    vector<int> witnessPos, unknownPos;
    for (uint64_t pos = 0; pos < P; pos++) {
      vector<pair<int, unsigned>> w;
      bool unk = false;
      for (unsigned s = 0; s < cfg.fieldMod; s++) {
        const CorrCell &c = cells[s][oi][pos];
        if (c.c == Corr::Witness)
          w.push_back({(int)s, c.alpha});
        unk |= c.c == Corr::Unknown;
      }
      if (!w.empty())
        witnessPos.push_back((int)pos);
      if (unk)
        unknownPos.push_back((int)pos);
      if (w.empty() && !S.opts.verbose)
        continue;
      rep << string(75, '=') << "\n"
          << "pos " << pos << ": " << w.size() << "/" << cfg.fieldMod
          << " secret values with y1 = y2 xor alpha (alpha != 0) for all p"
          << (unk ? "  [some s UNKNOWN]" : "") << "\n";
      for (size_t k = 0; k < w.size() && k < 10; k++)
        rep << "    s=" << w[k].first << ", alpha=" << w[k].second << "\n";
      if (w.size() > 10)
        rep << "    ... and " << w.size() - 10 << " more\n";
      rep << string(75, '=') << "\n";
    }
    rep << "[summary] correction witness at " << witnessPos.size() << "/" << P
        << " position(s): " << join_ints(witnessPos, 40) << "\n";
    if (!unknownPos.empty())
      rep << "[summary] UNKNOWN (timeout) for some s at " << unknownPos.size()
          << " position(s): " << join_ints(unknownPos, 40)
          << " -- raise --timeout\n";

    cout << rep.str();
    string out = result_path(S, J, o, "correction_smt_result.txt");
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
    cout << "\n=== correction SMT query complete: " << opts.fn << " ("
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
