//===- fault_propagation_classify.cpp -------------------------------------===//
//
// Static, execution-free classification of how a LOCAL fault (already
// confirmed to change one function's output, at the granularity of ONE
// instruction/coordinate) propagates to the entry function's output buffer
// (sig). Answers the question this project's earlier dynamic (QEMU) attempt
// couldn't afford to answer for MAYO: does this leak reach sig, in how many
// bytes, and through what kind of operation -- without ever running the
// program (no expand_sk, no valid keypair needed).
//
// Design rationale (see FaultMeter and the correction-attack paper):
//   - FaultMeter's ComputeP algorithm builds a data-dependence graph from a
//     fault site forward to the next store/branch/output and recurses through
//     store->load memory dependencies. We reuse exactly that skeleton, but
//     drop the hardware fault-activation-probability weighting (P(C2)) --
//     our fault is a deterministic skip/model, not a random bit-flip, so we
//     don't need probabilities. What we DO need, that FaultMeter doesn't
//     track, is WHICH BYTES of the output are touched and BY WHAT KIND of
//     operation, because:
//   - the correction-attack paper gives an explicit cost formula: faulting l
//     coefficients simultaneously costs q^l verification attempts (their own
//     table: l=1 trivial, l=4 -> 2^24.7, l=8 -> 2^39.7, "still practical";
//     beyond that it isn't). So "how many bytes of sig get touched" is not
//     just descriptive -- it is literally the exponent in the attack's cost,
//     and is the number this tool exists to compute.
//
// Taint seed granularity: NOT "the whole function's output changed" -- that
// overstates the spread. The original per-instruction fault affects ONE
// coordinate (e.g. mat_add's inner loop iteration 5 -> byte 5 of its output
// s). The seed here is (function, output-arg-name, byte-offset, byte-length),
// matching exactly what the earlier per-function correction/ineffective test
// actually perturbed.
//
// Method: forward taint over SSA values and memory objects (getUnderlyingObject
// + accumulated CONSTANT GEP offsets -- valid here because the base .ll is
// loop-unrolled, so every GEP index reaching sig in practice is a compile-time
// constant; a non-constant index degrades that one path to "offset
// unresolved" rather than silently guessing). Every producing instruction/call
// along a path is classified via a curated callee-name table into:
//   ADDITIVE     - add_f/sub_f/mat_add: GF(q) add/sub, 1 coordinate in -> 1
//                  coordinate out, invertible, matches the paper's own
//                  "adds r4,#1 ... eors r5,r2" listing exactly.
//   NIBBLE_PACK  - encode/decode/ef_pack_m_vec/ef_unpack_m_vec: bit-packs
//                  2 GF(16) coordinates per byte. Spreads, but only to 1
//                  neighboring coordinate, not to a whole block.
//   SPREAD       - any matrix/vector multiply (mat_mul, m_vec_mul_add,
//                  P1P1t_times_O, mul_add_mat_x_m_mat, lincomb, ...): mixes
//                  ONE input coordinate into MANY output coordinates. This is
//                  the mechanism that turns a cheap, local correction into an
//                  infeasible one.
//   ABSORBING    - shake256/keccak/AES*: algebraic structure is destroyed;
//                  propagation is cut here (the taint does not continue past
//                  a hash call), since nothing downstream is a function of
//                  the tainted bits in a way correction-style guessing can
//                  exploit.
//   PASSTHROUGH  - memcpy/memset/bitcast/gep/load/store: carries whatever
//                  classification was already accumulated, doesn't add one.
//   UNKNOWN      - any callee not in the table: conservatively treated as
//                  SPREAD (the safe direction -- see backward_slice.cpp's own
//                  "over-approximate, never silently under-approximate" rule)
//                  and reported so the table can be extended.
//
// A store that writes into sig's own underlying object, with a resolved
// offset, is a FINDING: (sig_offset, byte_length, class_sequence). The tool
// reports every finding reachable from the seed, plus a verdict per finding
// based on byte_length against the paper's own q^l practicality cutoff.
//
// Build:
//   clang++ fault_propagation_classify.cpp -o fault_propagation_classify \
//       $(llvm-config --cxxflags --ldflags --libs core irreader analysis support)
//
// Usage:
//   ./fault_propagation_classify <base.ll> <leaking_func> <output_arg_name> \
//       <byte_offset> [byte_length] [entry_func] [sig_arg_name] [field_q]
//
//   e.g. ./fault_propagation_classify full_mayo.ll mat_add s 0 1 \
//            pqmayo_MAYO_1_ref_mayo_sign_signature sig 16
//===----------------------------------------------------------------------===//

#include "llvm/Analysis/ValueTracking.h"
#include "llvm/IR/Argument.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"

#include <cmath>
#include <deque>
#include <map>
#include <optional>
#include <set>
#include <sstream>
#include <string>
#include <vector>

using namespace llvm;

// ---------------------------------------------------------------------------
// Callee classification table
// ---------------------------------------------------------------------------

enum class OpClass { ADDITIVE, NIBBLE_PACK, SPREAD, ABSORBING, PASSTHROUGH, UNKNOWN };

static const char *classToStr(OpClass c) {
  switch (c) {
  case OpClass::ADDITIVE: return "ADDITIVE";
  case OpClass::NIBBLE_PACK: return "NIBBLE_PACK";
  case OpClass::SPREAD: return "SPREAD";
  case OpClass::ABSORBING: return "ABSORBING";
  case OpClass::PASSTHROUGH: return "PASSTHROUGH";
  case OpClass::UNKNOWN: return "UNKNOWN(treated as SPREAD)";
  }
  return "?";
}

// Strips a trailing ".NN" LLVM disambiguation suffix (e.g. "mat_mul.21")
// so the table matches regardless of link-time renaming.
static std::string baseName(StringRef Name) {
  std::string S = Name.str();
  auto pos = S.rfind('.');
  if (pos != std::string::npos) {
    bool allDigits = pos + 1 < S.size();
    for (size_t i = pos + 1; i < S.size() && allDigits; ++i)
      if (!isdigit((unsigned char)S[i])) allDigits = false;
    if (allDigits) return S.substr(0, pos);
  }
  return S;
}

static OpClass classifyCallee(StringRef RawName) {
  static const std::set<std::string> Additive = {
      "add_f", "sub_f", "mat_add",
  };
  static const std::set<std::string> NibblePack = {
      "encode", "decode", "ef_pack_m_vec", "ef_unpack_m_vec",
  };
  static const std::set<std::string> Spread = {
      "mat_mul", "m_vec_mul_add", "mul_add_mat_x_m_mat",
      "mul_add_m_upper_triangular_mat_x_mat_trans", "P1P1t_times_O",
      "P1_times_Vt", "vec_mul_add_u64", "lincomb", "mul_table", "mul_f",
      "mul_fx8", "transpose_16x16_nibbles", "m_extract_element", "unpack_m_vecs",
      "compute_A", "compute_M_and_VPV", "compute_rhs", "inverse_f",
      "pqmayo_MAYO_1_ref_sample_solution", "EF",
  };
  static const std::set<std::string> Absorbing = {
      "shake256", "shake256_absorb", "shake256_squeezeblocks",
      "keccak_absorb", "keccak_squeezeblocks", "KeccakF1600_StatePermute",
      "AES_128_CTR", "aes128_ctr", "aes_ctr", "AES256_CTR_DRBG_Update",
      "randombytes", "randombytes_nist", "aes_ecb", "AES_256_ECB",
  };
  static const std::set<std::string> Passthrough = {
      "mayo_memset", "memcpy", "memmove",
  };
  static const std::set<std::string> Kill = {
      "mayo_secure_clear",
  };

  std::string N = baseName(RawName);
  if (Kill.count(N)) return OpClass::PASSTHROUGH; // handled specially by caller
  if (Additive.count(N)) return OpClass::ADDITIVE;
  if (NibblePack.count(N)) return OpClass::NIBBLE_PACK;
  if (Spread.count(N)) return OpClass::SPREAD;
  if (Absorbing.count(N)) return OpClass::ABSORBING;
  if (Passthrough.count(N)) return OpClass::PASSTHROUGH;
  return OpClass::UNKNOWN;
}

static bool isKillCallee(StringRef RawName) {
  return baseName(RawName) == "mayo_secure_clear";
}

// ---------------------------------------------------------------------------
// Known exact offset semantics for bit-packing helpers.
//
// encode's induction variable is a POINTER phi advancing by 2 bytes/iteration
// in lockstep with an integer phi advancing by 1 (`%m.addr.0 = phi ptr [...],
// [%add.ptr3,...]` where `%add.ptr3 = gep %m.addr.0, i32 2`) -- a
// structurally different shape than the "integer phi * constant" arithmetic
// evalConst/bind already handle (that shape was built for mayo_sign_signature's
// own round loop, i*86, i*78, etc). Rather than build a general
// pointer-induction solver, the semantics of `menc[i] = m[2i] | (m[2i+1]<<4)`
// (confirmed against encode's actual C source) are hardcoded directly: this
// is more reliable than a generic symbolic re-derivation, at the cost of
// only covering the specific functions listed here.
// ---------------------------------------------------------------------------

struct PackTransform {
  unsigned inArg, outArg;
  std::pair<int64_t, int64_t> (*transform)(int64_t lo, int64_t hi);
};

static std::pair<int64_t, int64_t> encodeTransform(int64_t lo, int64_t hi) {
  // menc[i] = m[2i] | (m[2i+1] << 4): input byte range [lo,hi) is read by
  // output iterations i satisfying 2i < hi and 2i+2 > lo, i.e. i in
  // [lo/2, (hi-1)/2] -> output range [lo/2, (hi-1)/2 + 1).
  int64_t outLo = lo / 2;
  int64_t outHi = (hi - 1) / 2 + 1;
  return {outLo, outHi};
}
static std::pair<int64_t, int64_t> decodeTransform(int64_t lo, int64_t hi) {
  // Confirmed against decode's actual source:
  //   for (i = 0; i < mdeclen/2; ++i) { *mdec++ = m[i]&0xf; *mdec++ = m[i]>>4; }
  // m's index is the clean integer phi %i.0 directly (not pointer-walking,
  // unlike encode) -- so input byte i feeds exactly one iteration, producing
  // output bytes 2i and 2i+1. Input range [lo,hi) -> output range [2lo,2hi).
  // NOT modeled: the odd-mdeclen tail case (`if (mdeclen%2==1) *mdec++ =
  // m[i]&0xf;`), which only matters if a call site passes an odd mdeclen --
  // check the specific call site's length argument before trusting a
  // finding whose input offset lands exactly on that trailing byte.
  return {lo * 2, hi * 2};
}

static std::pair<int64_t, int64_t> identityTransform(int64_t lo, int64_t hi) {
  return {lo, hi};
}

static const std::multimap<std::string, PackTransform> &packTable() {
  static const std::multimap<std::string, PackTransform> T = {
      {"encode", {0, 1, encodeTransform}},
      {"decode", {0, 1, decodeTransform}},
      // mat_add is genuinely pointwise (c[i] = a[i] OP b[i], no mixing across
      // indices), unlike mat_mul -- when it appears as a DOWNSTREAM consumer
      // of a known range (not as the seed function itself), a known input
      // range maps straight through 1:1 rather than falling into the
      // generic (range-losing) value-taint path. Both inputs list here since
      // taint can arrive via either operand.
      {"mat_add", {0, 2, identityTransform}}, // a -> c
      {"mat_add", {1, 2, identityTransform}}, // b -> c
  };
  return T;
}

// Worse-first priority so we can report the single dominant class of a path
// as well as the full sequence.
static int classSeverity(OpClass c) {
  switch (c) {
  case OpClass::ABSORBING: return 4;
  case OpClass::SPREAD: return 3;
  case OpClass::UNKNOWN: return 3; // treated as SPREAD, same severity
  case OpClass::NIBBLE_PACK: return 2;
  case OpClass::ADDITIVE: return 1;
  case OpClass::PASSTHROUGH: return 0;
  }
  return 0;
}

// ---------------------------------------------------------------------------
// Tainted memory range: an underlying object + constant byte range (or
// "unresolved", meaning the whole object is conservatively tainted).
// ---------------------------------------------------------------------------

struct TaintRange {
  Value *Obj;
  int64_t Lo = 0, Hi = 0; // [Lo, Hi) in bytes; meaningful only if Resolved
  bool Resolved = true;
  std::vector<OpClass> Path; // classes accumulated to reach this range

  bool overlaps(const TaintRange &o) const {
    if (Obj != o.Obj) return false;
    if (!Resolved || !o.Resolved) return true; // conservative
    return Lo < o.Hi && o.Lo < Hi;
  }
};

struct Finding {
  int64_t SigOffset;
  int64_t SigLen;
  bool OffsetResolved, LenResolved;
  std::vector<OpClass> Path;
};

// ---------------------------------------------------------------------------
// Symbolic offset resolution for NON-unrolled loops.
//
// The module analyzed here is the original, loop-based IR (not unrolled):
// mat_add's destination inside mayo_sign_signature is
// `getelementptr i8, ptr %s, i32 %mul85` where `%mul85 = mul i32 %i69.0, 86`
// -- a value depending on the round loop's induction variable, not a literal
// ConstantInt. A plain "is this a ConstantInt" check (as an unrolled-IR tool
// would use) fails on every such GEP and silently produces zero findings,
// which is the bug this version fixes.
//
// Since MAYO's round/coordinate loops are simple affine functions of one
// induction variable (mul/shl/add built directly on a phi), we bind that phi
// to a caller-specified concrete iteration value and fold the arithmetic --
// this is a targeted constant-fold for ONE chosen iteration, not a general
// symbolic executor. A GEP index built from a DIFFERENT, unbound phi (a
// different loop entirely) correctly still fails to resolve, which is the
// safe outcome -- it must not be silently conflated with the bound one.
// ---------------------------------------------------------------------------

// CLI-derived iteration config, consulted as a FALLBACK below for any phi
// not already present in a per-call-site `bind` map. Purely additive: a phi
// explicitly pre-bound (e.g. via collectPhis on the seed's own destination
// expression) still resolves exactly as before, taking priority. Without
// this, a phi belonging to some OTHER function's internal loop -- reached
// only during propagation, never pre-scanned -- permanently fails to
// resolve even when the user's iteration spec would answer it reasonably.
static std::map<std::string, int64_t> g_namedIters;
static int64_t g_defaultIter = 0;
// Set once in main() right after callersOf is computed there. Consulted by
// ensureArgSubstFor below to populate argSubst ON DEMAND for a function we
// arrived at via UPWARD store-substitution (see that function's comment).
static std::map<Function *, std::vector<CallBase *>> g_callersOf;
static std::set<Argument *> g_argSubstAttempted;

static std::optional<int64_t> evalConst(Value *V,
                                        const std::map<PHINode *, int64_t> &bind) {
  if (auto *CI = dyn_cast<ConstantInt>(V))
    return CI->getSExtValue();
  if (auto *P = dyn_cast<PHINode>(V)) {
    auto it = bind.find(P);
    if (it != bind.end()) return it->second;
    std::string pname = P->hasName() ? P->getName().str() : "";
    auto nit = g_namedIters.find(pname);
    if (nit != g_namedIters.end()) return nit->second;
    return g_defaultIter; // fallback, not a refusal -- see comment above
  }
  if (auto *Cast = dyn_cast<CastInst>(V))
    return evalConst(Cast->getOperand(0), bind);
  if (auto *BO = dyn_cast<BinaryOperator>(V)) {
    auto L = evalConst(BO->getOperand(0), bind);
    auto R = evalConst(BO->getOperand(1), bind);
    if (!L || !R) return std::nullopt;
    switch (BO->getOpcode()) {
    case Instruction::Add: return *L + *R;
    case Instruction::Sub: return *L - *R;
    case Instruction::Mul: return *L * *R;
    case Instruction::Shl: return *L << *R;
    case Instruction::LShr: return *L >> *R;
    case Instruction::And: return *L & *R;
    case Instruction::Or: return *L | *R;
    default: return std::nullopt;
    }
  }
  return std::nullopt;
}

// Collects every PHINode feeding (transitively, through casts/binops) into a
// GEP index expression -- used to auto-detect "which loop variable(s) does
// this call site's own destination offset depend on", so the caller only has
// to say "iteration N" once rather than naming phis by hand.
static void collectPhis(Value *V, std::set<PHINode *> &out, std::set<Value *> &seen) {
  if (!seen.insert(V).second) return;
  if (auto *P = dyn_cast<PHINode>(V)) { out.insert(P); return; }
  if (auto *Cast = dyn_cast<CastInst>(V)) { collectPhis(Cast->getOperand(0), out, seen); return; }
  if (auto *BO = dyn_cast<BinaryOperator>(V)) {
    collectPhis(BO->getOperand(0), out, seen);
    collectPhis(BO->getOperand(1), out, seen);
    return;
  }
  if (auto *GEP = dyn_cast<GetElementPtrInst>(V)) {
    // Must descend into BOTH the base pointer (for nested GEPs, e.g.
    // add.ptr90 = gep(add.ptr89, 78)) and the index operand(s) -- missing
    // this case entirely was the bug: ActualOutPtr passed in here IS a GEP
    // (%add.ptr86), so without this branch the function matched nothing and
    // silently returned having looked at zero operands.
    collectPhis(GEP->getPointerOperand(), out, seen);
    for (auto &idx : GEP->indices()) collectPhis(idx.get(), out, seen);
    return;
  }
}

// Walks a (possibly nested) GEP chain back to its true base object
// (alloca/global/argument), accumulating byte offsets via evalConst at each
// step. Returns (object, offset) with offset=nullopt if any hop along the
// way used an index this binding can't resolve (a genuinely different,
// unbound loop variable, or non-affine arithmetic) -- degrading to
// "unresolved" rather than guessing, same policy as before.
static int64_t typeByteSize(Type *T) {
  if (T->isIntegerTy()) return T->getIntegerBitWidth() / 8;
  return 1; // safe fallback matching the original byte-granularity assumption
}

static std::pair<Value *, std::optional<int64_t>>
resolveOffset(Value *Ptr, const std::map<PHINode *, int64_t> &bind) {
  int64_t total = 0;
  Value *cur = Ptr;
  while (auto *GEP = dyn_cast<GetElementPtrInst>(cur)) {
    if (GEP->getNumIndices() != 1) return {getUnderlyingObject(Ptr), std::nullopt};
    auto off = evalConst(*GEP->idx_begin(), bind);
    if (!off) return {getUnderlyingObject(Ptr), std::nullopt};
    // Element size matters: every GEP seen in the flat-byte-array code
    // (mat_add, encode, mayo_sign_signature's own buffers) indexes i8, so
    // index==byte-offset there. m_vec_mul_add's `getelementptr i64, ptr
    // %acc, i32 %i.0` does NOT -- its element type is i64 (8 bytes), so
    // index 5 means byte 40, not byte 5. Without this, any limb-typed
    // (bitsliced m_vec) buffer silently gets the wrong offset instead of
    // failing loudly, which is worse. DataLayout isn't threaded in here, so
    // this covers integer element types directly via bit width; anything
    // else (struct/array/opaque) falls back to 1 and should be treated with
    // suspicion if it shows up.
    Type *ElemTy = GEP->getSourceElementType();
    int64_t elemSize = 1;
    if (ElemTy->isIntegerTy())
      elemSize = ElemTy->getIntegerBitWidth() / 8;
    total += (*off) * elemSize;
    cur = GEP->getPointerOperand();
  }
  return {cur, total};
}

// Resolve obj/off through zero or more layers of "this Argument corresponds
// to that actual value at a specific call site" substitution. This is what's
// needed for taint that ENTERS a callee through one parameter but is WRITTEN
// OUT through a DIFFERENT parameter of the same call (e.g. encode(m, menc,
// mlen): our taint enters via 'm', gets stored into 'menc' inside encode's
// body -- but 'menc' is an Argument local to encode, never equal to anything
// outside it. Without this substitution, the taint dead-ends on 'menc'
// forever and can never be recognized as reaching sig, even though encode's
// actual second argument at the call site IS sig. argSubst is populated
// (see below) with formal->actual for EVERY pointer parameter whenever we
// descend into a call, not just the one that happened to match.
static std::pair<Value *, std::optional<int64_t>>
substituteThroughArgs(Value *obj, int64_t off,
                     std::map<Argument *, Value *> &argSubst,
                     std::map<PHINode *, int64_t> &bind) {
  std::set<Value *> seen;
  while (auto *A = dyn_cast<Argument>(obj)) {
    auto it = argSubst.find(A);
    if (it == argSubst.end()) break;
    if (!seen.insert(obj).second) return {obj, std::nullopt}; // cycle guard
    auto [obj2, off2] = resolveOffset(it->second, bind);
    if (!off2) return {obj2, std::nullopt};
    obj = obj2;
    off += *off2;
  }
  return {obj, off};
}

// Object-identity-only variant: used when the LOCAL offset inside the
// current function couldn't be resolved (e.g. a store indexed by a callee's
// own internal loop variable our bind map doesn't know about), but the
// OBJECT should still be translated back to its caller-side identity so it
// can at least be recognized (e.g. as sig) even though the precise offset
// within it stays unknown. Without this, taint permanently dead-ends on a
// callee-local Argument the moment its own indexing isn't affine-resolvable,
// which was the bug: mat_add's internal store used mat_add's OWN %i.0 (not
// bound), so the old code left r.Obj as mat_add's raw "c" Argument forever,
// instead of recognizing it as (some unresolved offset within) the caller's
// real buffer.
static Value *substituteObjOnly(Value *obj,
                                std::map<Argument *, Value *> &argSubst,
                                std::map<PHINode *, int64_t> &bind) {
  std::set<Value *> seen;
  while (auto *A = dyn_cast<Argument>(obj)) {
    auto it = argSubst.find(A);
    if (it == argSubst.end()) break;
    if (!seen.insert(obj).second) break;
    auto [obj2, off2] = resolveOffset(it->second, bind);
    obj = obj2; // take the object regardless of whether off2 resolved
    if (!off2) break; // can't chain a numeric offset further, stop here
  }
  return obj;
}


// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

int main(int argc, char **argv) {
  if (argc < 5) {
    errs() << "Usage: ./fault_propagation_classify <base.ll> <leaking_func> "
              "<output_arg_name> <byte_offset> [byte_length] [iteration_spec] "
              "[entry_func] [sig_arg_name] [field_q]\n"
              "  iteration_spec: either a plain integer applied to every\n"
              "  detected loop variable at each call site (default 0, works\n"
              "  for single-loop call sites like mat_add/mat_mul), or\n"
              "  \"name=value,name=value\" (e.g. \"i69.0=0\") to bind specific\n"
              "  phis by name -- required when a call site sits inside\n"
              "  NESTED loops with independent induction variables, since\n"
              "  forcing all of them to the same value is usually wrong.\n"
              "  For a gated fault with __fi_target_<f>=N (1-indexed, Nth\n"
              "  dynamic call), the relevant phi should be bound to N-1.\n";
    return 1;
  }
  std::string baseFile = argv[1];
  std::string leakFunc = argv[2];
  std::string outArgName = argv[3];
  int64_t seedOffset = std::stoll(argv[4]);
  int64_t seedLen = (argc >= 6) ? std::stoll(argv[5]) : 1;
  // Accepts either a plain integer ("0" -- apply to every detected loop
  // variable, the original single-loop behaviour) or "name=value,name=value"
  // pairs (e.g. "i69.0=0,j.0=3") for call sites nested inside multiple
  // INDEPENDENT loops, where forcing every induction variable to the same
  // scalar is wrong. Any detected phi not named in a name=value spec falls
  // back to defaultIter.
  std::string iterSpec = (argc >= 7) ? argv[6] : "0";
  int64_t defaultIter = 0;
  std::map<std::string, int64_t> namedIters;
  if (iterSpec.find('=') == std::string::npos) {
    defaultIter = std::stoll(iterSpec);
  } else {
    std::stringstream ss(iterSpec);
    std::string tok;
    while (std::getline(ss, tok, ',')) {
      auto eq = tok.find('=');
      if (eq == std::string::npos) continue;
      namedIters[tok.substr(0, eq)] = std::stoll(tok.substr(eq + 1));
    }
  }
  std::string entryName = (argc >= 8) ? argv[7] : "pqmayo_MAYO_1_ref_mayo_sign_signature";
  std::string sigArgName = (argc >= 9) ? argv[8] : "sig";
  int fieldQ = (argc >= 10) ? std::stoi(argv[9]) : 16;
  g_namedIters = namedIters;
  g_defaultIter = defaultIter;

  // "$return" as output_arg_name means: seed on the leaking function's
  // RETURN VALUE instead of a named pointer output argument -- needed for
  // functions like lincomb() that return a scalar (unsigned char) rather
  // than writing through an output pointer. In this mode byte_offset/
  // byte_length are ignored (a scalar return has no byte-offset concept);
  // the whole return value is treated as tainted, and it enters the
  // propagation via the VALUE worklist (not memWL), since there is no
  // memory range to speak of at the seed itself -- only once it's stored
  // somewhere does it become a memory-range fact, same as any other
  // scalar (compare add_f's return inside mat_add's own body).
  bool seedIsReturn = (outArgName == "$return");

  LLVMContext ctx;
  SMDiagnostic err;
  auto M = parseIRFile(baseFile, err, ctx);
  if (!M) {
    err.print(argv[0], errs());
    return 1;
  }

  Function *F = M->getFunction(leakFunc);
  if (!F || F->isDeclaration()) {
    errs() << "'" << leakFunc << "' not defined with a body\n";
    return 1;
  }
  Function *Entry = M->getFunction(entryName);
  if (!Entry || Entry->isDeclaration()) {
    errs() << "entry '" << entryName << "' not defined with a body\n";
    return 1;
  }

  Argument *OutArg = nullptr;
  if (!seedIsReturn) {
    for (Argument &A : F->args())
      if (A.hasName() && A.getName() == outArgName) { OutArg = &A; break; }
    if (!OutArg) {
      errs() << "'" << leakFunc << "' has no argument named '" << outArgName
             << "'. Its arguments are:";
      for (Argument &A : F->args()) errs() << " " << A.getName();
      errs() << " (or pass \"$return\" to seed on its return value instead)\n";
      return 1;
    }
  } else if (F->getReturnType()->isVoidTy()) {
    errs() << "'" << leakFunc << "' returns void; \"$return\" seeding needs "
           << "a non-void return type\n";
    return 1;
  }

  Argument *SigArg = nullptr;
  for (Argument &A : Entry->args())
    if (A.hasName() && A.getName() == sigArgName) { SigArg = &A; break; }
  if (!SigArg) {
    errs() << "entry '" << entryName << "' has no argument named '"
           << sigArgName << "'. Its arguments are:";
    for (Argument &A : Entry->args()) errs() << " " << A.getName();
    errs() << "\n";
    return 1;
  }

  // Forward-reachable functions from the ENTRY, restricting analysis to code
  // that can actually execute on the signing path (mirrors backward_slice.cpp).
  std::set<Function *> reach;
  {
    std::deque<Function *> wl{Entry};
    while (!wl.empty()) {
      Function *Fn = wl.front(); wl.pop_front();
      if (!reach.insert(Fn).second) continue;
      for (BasicBlock &BB : *Fn)
        for (Instruction &I : BB)
          if (auto *CB = dyn_cast<CallBase>(&I))
            if (Function *C = CB->getCalledFunction())
              if (!C->isDeclaration() && !reach.count(C))
                wl.push_back(C);
    }
  }
  if (!reach.count(F))
    errs() << "[!] warning: '" << leakFunc << "' is not reachable from '"
           << entryName << "' at all in this module -- check function names\n";

  // Map: callee Function* -> its call sites (within reach), for argument-taint
  // propagation and for finding "who calls F".
  std::map<Function *, std::vector<CallBase *>> callersOf;
  for (Function *Fn : reach)
    for (BasicBlock &BB : *Fn)
      for (Instruction &I : BB)
        if (auto *CB = dyn_cast<CallBase>(&I))
          if (Function *C = CB->getCalledFunction())
            if (reach.count(C))
              callersOf[C].push_back(CB);

  std::vector<Finding> findings;
  std::set<std::string> unknownCallees;
  size_t nSteps = 0;
  const size_t kStepLimit = 2'000'000; // guard against unexpected explosion

  // Per (call-site) worklist: we track taint starting from EACH call site of
  // leakFunc separately, since each occurrence (e.g. each k-round call) is a
  // structurally distinct site in the unrolled IR and may reach a DIFFERENT
  // sig offset. This directly gives a per-occurrence report.
  auto callSites = callersOf.find(F) != callersOf.end() ? callersOf[F]
                                                        : std::vector<CallBase *>{};
  if (callSites.empty())
    errs() << "[!] '" << leakFunc << "' has no call sites reachable from '"
           << entryName << "'\n";

  for (CallBase *Site : callSites) {
    std::vector<TaintRange> memWL;
    std::vector<std::pair<Value *, std::vector<OpClass>>> valWL;
    std::map<Argument *, Value *> argSubst;
    std::map<PHINode *, int64_t> bind; // populated below only in argument mode

    if (seedIsReturn) {
      // No destination pointer to inspect for phis -- any loop variable
      // encountered later during propagation resolves via the global
      // g_namedIters/g_defaultIter fallback in evalConst instead.
      errs() << "[dbg] seed placed: return value of call to '" << leakFunc
             << "' tainted as a scalar (no byte-offset concept)\n";
      valWL.push_back({Site, {}});
    } else {
      unsigned argNo = OutArg->getArgNo();
      if (argNo >= Site->arg_size()) continue;
      Value *ActualOutPtr = Site->getArgOperand(argNo);

      // Auto-detect which loop variable(s) this call site's own destination
      // offset depends on, and bind them all to the requested iteration. This
      // is what was missing before: the seed must be placed at the CALL
      // SITE'S OWN position within the caller's buffer (e.g. s[i*86 : i*86+78]
      // for round i), not at byte_offset relative to the whole buffer.
      std::set<PHINode *> phis;
      {
        std::set<Value *> seen;
        collectPhis(ActualOutPtr, phis, seen);
      }
      for (PHINode *P : phis) {
        std::string pname = P->hasName() ? P->getName().str() : "";
        auto it = namedIters.find(pname);
        bind[P] = (it != namedIters.end()) ? it->second : defaultIter;
      }
      if (!namedIters.empty()) {
        errs() << "[dbg] phi bindings for this call site:";
        for (PHINode *P : phis)
          errs() << " " << (P->hasName() ? P->getName() : "<unnamed>") << "="
                 << bind[P];
        errs() << "\n";
      }

      auto [baseObj, baseOff] = resolveOffset(ActualOutPtr, bind);
      if (!baseOff) {
        errs() << "[!] call site of " << leakFunc << " has a destination "
               << "offset this tool couldn't resolve with the current phi "
               << "binding(s) (";
        for (PHINode *P : phis)
          errs() << (P->hasName() ? P->getName() : "<unnamed>") << "="
                 << bind[P] << " ";
        errs() << ") -- if this site sits inside NESTED loops, pass distinct "
               << "values via name=value pairs (e.g. \"i.0=0,j.0=3\") instead "
               << "of a single iteration number; otherwise check manually\n";
        continue;
      }

      TaintRange seed;
      seed.Obj = baseObj;
      seed.Lo = *baseOff + seedOffset;
      seed.Hi = *baseOff + seedOffset + seedLen;
      seed.Resolved = true;
      seed.Path = {};
      memWL.push_back(seed);
      errs() << "[dbg] seed placed: obj=" << seed.Obj->getName()
             << " range=[" << seed.Lo << "," << seed.Hi << ") (bound "
             << phis.size() << " phi(s), default=" << defaultIter << ")\n";
    }

    std::set<Instruction *> visitedInsts; // avoid reprocessing within this site's pass

    while (!memWL.empty() || !valWL.empty()) {
      if (++nSteps > kStepLimit) {
        errs() << "[!] step limit hit for a call site of " << leakFunc
               << " -- analysis truncated, results below are incomplete\n";
        break;
      }

      // ---- drain value worklist: propagate through SSA users ----
      while (!valWL.empty()) {
        auto [V, path] = valWL.back(); valWL.pop_back();

        for (User *U : V->users()) {
          auto *I = dyn_cast<Instruction>(U);
          if (!I || !reach.count(I->getFunction())) continue;
          if (!visitedInsts.insert(I).second) continue;

          if (isa<ICmpInst>(I) || isa<BranchInst>(I) || isa<SwitchInst>(I)) {
            // Control-dependence only: do NOT taint further values from
            // here (see file header -- kept structurally separate from data
            // taint, matching FaultMeter's own branch/data distinction).
            // Not tracked further in this tool's output; a control-only
            // effect needs the ineffective-style statistical test instead,
            // not a correction/offset analysis.
            continue;
          }

          if (auto *GEP = dyn_cast<GetElementPtrInst>(I)) {
            valWL.push_back({GEP, path});
            continue;
          }

          if (auto *SI = dyn_cast<StoreInst>(I)) {
            if (SI->getValueOperand() != V) continue; // taint via address, not value: skip
            auto [obj0, off0] = resolveOffset(SI->getPointerOperand(), bind);
            int64_t width = typeByteSize(SI->getValueOperand()->getType());
            TaintRange r;
            if (off0) {
              auto [obj, off] = substituteThroughArgs(obj0, *off0, argSubst, bind);
              r.Obj = obj;
              if (off) { r.Lo = *off; r.Hi = *off + width; r.Resolved = true; }
              else { r.Resolved = false; }
            } else {
              r.Obj = substituteObjOnly(obj0, argSubst, bind);
              r.Resolved = false;
            }
            r.Path = path;
            errs() << "[dbg]   value-taint store in '" << I->getFunction()->getName()
                   << "': obj=" << r.Obj->getName() << " range=["
                   << r.Lo << "," << r.Hi << ") resolved=" << r.Resolved << "\n";
            memWL.push_back(r);
            continue;
          }

          if (auto *CB = dyn_cast<CallBase>(I)) {
            Function *Callee = CB->getCalledFunction();
            if (!Callee) { unknownCallees.insert("<indirect call>"); continue; }
            if (!reach.count(Callee)) {
              errs() << "[dbg]   value-taint reaches call to '"
                     << Callee->getName() << "' -- SKIPPED: not in reachable "
                     << "set (" << (Callee->isDeclaration() ? "declaration, "
                     "no body in this .ll" : "unreached function") << ")\n";
              continue;
            }

            if (isKillCallee(Callee->getName())) continue; // secure_clear: taint dies

            OpClass cls = classifyCallee(Callee->getName());
            if (cls == OpClass::UNKNOWN)
              unknownCallees.insert(baseName(Callee->getName()));
            errs() << "[dbg]   value-taint into call '" << Callee->getName()
                   << "' classified " << classToStr(cls) << "\n";

            std::vector<OpClass> newPath = path;
            if (cls != OpClass::PASSTHROUGH) newPath.push_back(cls);

            if (cls == OpClass::ABSORBING)
              continue; // propagation cut: algebraic structure destroyed

            // Record formal<->actual for EVERY pointer parameter of this
            // call, not just the one that matched -- this is what lets a
            // later store to a DIFFERENT parameter of the same callee (e.g.
            // encode's output 'menc') be traced back to the real caller-side
            // object (e.g. 'sig') instead of dead-ending on a callee-local
            // Argument. See substituteThroughArgs's comment for why.
            if (!Callee->isDeclaration())
              for (unsigned a2 = 0; a2 < CB->arg_size() && a2 < Callee->arg_size(); ++a2)
                if (CB->getArgOperand(a2)->getType()->isPointerTy())
                  argSubst[Callee->getArg(a2)] = CB->getArgOperand(a2);

            // Which argument of the call is V? Taint that formal parameter's
            // pointee (if pointer) or propagate to return (if scalar and the
            // callee is a pure value-returning helper like add_f/mul_f).
            for (unsigned a = 0; a < CB->arg_size(); ++a) {
              if (CB->getArgOperand(a) != V) continue;
              if (Callee->isDeclaration()) continue;
              if (a >= Callee->arg_size()) continue;
              Argument *FormalArg = Callee->getArg(a);
              if (FormalArg->getType()->isPointerTy()) {
                TaintRange r;
                r.Obj = FormalArg; // symbolic: resolved further inside callee
                r.Lo = 0; r.Hi = 0; r.Resolved = false;
                r.Path = newPath;
                // Descend: treat the formal argument itself as a tainted
                // value inside the callee so its own stores get picked up.
                valWL.push_back({FormalArg, newPath});
              }
            }
            // Scalar return: if callee returns non-void and isn't a known
            // pure-passthrough, conservatively taint the call's result.
            if (!CB->getType()->isVoidTy())
              valWL.push_back({CB, newPath});
            continue;
          }

          if (isa<LoadInst>(I) || isa<CastInst>(I) || isa<BinaryOperator>(I) ||
              isa<PHINode>(I) || isa<SelectInst>(I)) {
            valWL.push_back({I, path});
            continue;
          }
          // Anything else (returns, etc.): stop this branch quietly.
        }
      }

      // ---- drain memory worklist: find loads/further stores/sig hits ----
      while (!memWL.empty()) {
        TaintRange R = memWL.back(); memWL.pop_back();
        errs() << "[dbg] draining mem range: obj=" << R.Obj->getName()
               << " range=[" << R.Lo << "," << R.Hi << ") resolved="
               << R.Resolved << " path_len=" << R.Path.size() << "\n";

        // Is this range (part of) sig?
        if (R.Obj == SigArg || R.Obj == getUnderlyingObject(SigArg)) {
          errs() << "[dbg]   -> MATCHES sig, recording finding\n";
          Finding f;
          f.SigOffset = R.Lo; f.SigLen = R.Hi - R.Lo;
          f.OffsetResolved = R.Resolved; f.LenResolved = R.Resolved;
          f.Path = R.Path;
          findings.push_back(f);
          continue; // a write to sig is a leaf; don't keep chasing past it
        }

        // Find loads elsewhere in reachable code whose pointer resolves to
        // (an overlapping slice of) this object -- store-to-load taint.
        for (Function *Fn : reach) {
          for (BasicBlock &BB : *Fn) {
            for (Instruction &I : BB) {
              auto *LI = dyn_cast<LoadInst>(&I);
              if (!LI) continue;
              auto [base, lresolved] = resolveOffset(LI->getPointerOperand(), bind);
              if (base != R.Obj) continue;
              int64_t lo = 0, hi = 0; bool resolved = (bool)lresolved;
              if (resolved) { lo = *lresolved; hi = *lresolved + typeByteSize(LI->getType()); }
              if (resolved && R.Resolved && !(lo < R.Hi && R.Lo < hi))
                continue; // definitely disjoint, skip
              if (!visitedInsts.insert(LI).second) continue;
              valWL.push_back({LI, R.Path});
            }
          }
        }

        // Calls elsewhere receiving this object as a pointer arg: recurse in,
        // same as backward_slice.cpp's memory-object worklist.
        for (Function *Fn : reach) {
          for (BasicBlock &BB : *Fn) {
            for (Instruction &I : BB) {
              auto *CB = dyn_cast<CallBase>(&I);
              if (!CB) continue;
              Function *Callee = CB->getCalledFunction();
              if (!Callee) continue;
              bool argMatches = false;
              for (unsigned a = 0; a < CB->arg_size(); ++a)
                if (getUnderlyingObject(CB->getArgOperand(a)) == R.Obj) argMatches = true;
              if (!argMatches) continue;

              // memcpy/memmove: copy semantics are known regardless of
              // whether a body is available (they're always declarations
              // here, so the ordinary reach/declaration check below would
              // otherwise SKIP them and silently drop this propagation --
              // e.g. `memcpy(s+i*n+(n-o), x+i*o, o)` and
              // `memcpy(sig+sig_bytes-salt_bytes, salt, salt_bytes)` in
              // mayo_sign_signature are exactly this shape and are real
              // paths to sig, not edge cases). Intercept BEFORE the reach
              // check since no body is needed to model a straight copy.
              std::string bn = baseName(Callee->getName());
              if ((bn == "memcpy" || bn == "memmove") && CB->arg_size() >= 2) {
                auto [srcObj, srcOff] = resolveOffset(CB->getArgOperand(1), bind);
                if (srcObj == R.Obj) {
                  auto [dstObj, dstOff] = resolveOffset(CB->getArgOperand(0), bind);
                  TaintRange outR;
                  outR.Path = R.Path; // pure copy: no class appended
                  if (srcOff && dstOff && R.Resolved) {
                    int64_t relLo = R.Lo - *srcOff, relHi = R.Hi - *srcOff;
                    outR.Obj = dstObj;
                    outR.Lo = *dstOff + relLo;
                    outR.Hi = *dstOff + relHi;
                    outR.Resolved = true;
                  } else {
                    outR.Obj = dstObj;
                    outR.Resolved = false;
                  }
                  errs() << "[dbg]     -> " << bn << ": src=[" << R.Lo << ","
                         << R.Hi << ") -> dst=[" << outR.Lo << "," << outR.Hi
                         << ") resolved=" << outR.Resolved << "\n";
                  memWL.push_back(outR);
                  continue;
                }
              }

              errs() << "[dbg]   call to '" << Callee->getName()
                     << "' in '" << Fn->getName() << "' receives this object";
              if (!reach.count(Callee)) {
                errs() << " -- SKIPPED: '" << Callee->getName()
                       << "' is not in the reachable set (likely a "
                       << (Callee->isDeclaration() ? "declaration with no body "
                                                   "in this .ll -- propagation "
                                                   "cannot see inside it"
                                                   : "function not reached from "
                                                   "entry via the call graph")
                       << ")\n";
                continue;
              }
              errs() << "\n";

              if (!Callee->isDeclaration())
                for (unsigned a2 = 0; a2 < CB->arg_size() && a2 < Callee->arg_size(); ++a2)
                  if (CB->getArgOperand(a2)->getType()->isPointerTy())
                    argSubst[Callee->getArg(a2)] = CB->getArgOperand(a2);

              for (unsigned a = 0; a < CB->arg_size(); ++a) {
                auto [argObj, argOff] = resolveOffset(CB->getArgOperand(a), bind);
                if (argObj != R.Obj) continue;
                if (a >= Callee->arg_size()) continue;
                if (!visitedInsts.insert(CB).second) continue;

                // Relative to the CALLEE's own view (offset 0 = the pointer
                // value it received), our tainted range is R shifted by
                // -argOff -- e.g. mat_add(vi, Ox, s+i*n, ...): if R lives in
                // 's' at [i*n+5, i*n+6) and this call passes 's+i*n' as the
                // argument, argOff=i*n and the callee-relative range is
                // [5,6), not [i*n+5,i*n+6). Getting this wrong was silently
                // fine before only because packTable's transforms assumed
                // argOff==0 (true for encode/mat_add's actual call sites,
                // by luck, not by design) -- it is NOT generally true.
                bool relResolved = R.Resolved && (bool)argOff;
                int64_t relLo = relResolved ? R.Lo - *argOff : 0;
                int64_t relHi = relResolved ? R.Hi - *argOff : 0;

                // Known exact-semantics helper (bit-packing or pointwise)
                // AND this is one of its documented input args: compute the
                // output range DIRECTLY and re-seed on the call's actual
                // output argument, bypassing symbolic tracing into the
                // callee's body (either because its induction variable isn't
                // modelable -- encode/decode -- or purely to avoid the
                // generic path's loss of positional precision -- mat_add).
                auto range = packTable().equal_range(baseName(Callee->getName()));
                bool handledByTable = false;
                for (auto it = range.first; it != range.second; ++it) {
                  if (a != it->second.inArg || !relResolved) continue;
                  auto [outLo, outHi] = it->second.transform(relLo, relHi);
                  Value *outActual = CB->getArgOperand(it->second.outArg);
                  auto [outObj, outOffBase] = resolveOffset(outActual, bind);
                  TaintRange outR;
                  std::vector<OpClass> np = R.Path;
                  OpClass cls0 = classifyCallee(Callee->getName());
                  if (cls0 != OpClass::PASSTHROUGH) np.push_back(cls0);
                  outR.Path = np;
                  if (outOffBase) {
                    outR.Obj = outObj;
                    outR.Lo = *outOffBase + outLo;
                    outR.Hi = *outOffBase + outHi;
                    outR.Resolved = true;
                  } else {
                    outR.Obj = outObj;
                    outR.Resolved = false;
                  }
                  errs() << "[dbg]     -> known transform '"
                         << Callee->getName() << "' (in arg #" << a
                         << "): input=[" << relLo << "," << relHi
                         << ") -> output=[" << outLo << "," << outHi
                         << ") relative to arg #" << it->second.outArg
                         << " (resolved=" << outR.Resolved << ")\n";
                  memWL.push_back(outR);
                  handledByTable = true;
                }
                if (handledByTable) continue; // don't ALSO do generic tracing

                OpClass cls = classifyCallee(Callee->getName());
                if (cls == OpClass::UNKNOWN)
                  unknownCallees.insert(baseName(Callee->getName()));
                if (isKillCallee(Callee->getName())) {
                  errs() << "[dbg]     -> mayo_secure_clear: taint killed here\n";
                  continue;
                }
                if (cls == OpClass::ABSORBING) {
                  errs() << "[dbg]     -> ABSORBING: propagation cut\n";
                  continue;
                }

                // THE CORE FIX: this argument is a POINTER carrying a known
                // (or at least identified) memory range into a callee we
                // have no exact model for. The old behaviour pushed the
                // formal Argument onto the VALUE worklist, as if it were an
                // ordinary scalar to trace through SSA use-def -- but a
                // pointer to tainted memory is not itself a tainted value,
                // and any use of it purely as an ADDRESS (a GEP base, a
                // store destination) is explicitly NOT treated as data-flow
                // by the value-worklist's own store handler. That combination
                // meant the memory-range fact evaporated the instant it
                // crossed into any function not hand-modeled in packTable --
                // which was every function except mat_add/mat_mul/encode/
                // decode. The correct default is to re-seed a NEW memory
                // range on the callee's formal parameter (rebased via
                // argOff), so it flows through the SAME memory-worklist
                // machinery the original seed did -- not the value worklist.
                if (Callee->getArg(a)->getType()->isPointerTy() &&
                    !Callee->isDeclaration()) {
                  TaintRange nr;
                  nr.Obj = Callee->getArg(a);
                  if (relResolved) { nr.Lo = relLo; nr.Hi = relHi; nr.Resolved = true; }
                  else { nr.Resolved = false; }
                  std::vector<OpClass> newPath = R.Path;
                  if (cls != OpClass::PASSTHROUGH) newPath.push_back(cls);
                  nr.Path = newPath;
                  errs() << "[dbg]     -> classified " << classToStr(cls)
                         << ", re-seeding formal arg #" << a << " ('"
                         << Callee->getArg(a)->getName() << "') inside '"
                         << Callee->getName() << "' as MEMORY range ["
                         << nr.Lo << "," << nr.Hi << ") resolved="
                         << nr.Resolved << "\n";
                  memWL.push_back(nr);
                  continue;
                }

                // Fallback for the rare case of a non-pointer formal param
                // (shouldn't normally trigger, since argMatches implies a
                // pointer-typed caller-side value) or a declaration-only
                // callee slipping through: old value-taint behaviour, kept
                // as a safety net rather than dropping the taint entirely.
                errs() << "[dbg]     -> classified " << classToStr(cls)
                       << ", tainting formal arg #" << a << " ('"
                       << Callee->getArg(a)->getName() << "') inside '"
                       << Callee->getName() << "' (VALUE fallback, not a "
                       << "resolved pointer memory re-seed)\n";
                std::vector<OpClass> newPath = R.Path;
                if (cls != OpClass::PASSTHROUGH) newPath.push_back(cls);
                valWL.push_back({Callee->getArg(a), newPath});
              }
            }
          }
        }
      }
    }
  }

  // ---------------------------------------------------------------------
  // Report
  // ---------------------------------------------------------------------
  outs() << "{\n";
  outs() << "  \"leaking_function\": \"" << leakFunc << "\",\n";
  outs() << "  \"seed\": {\"arg\": \"" << outArgName << "\", \"offset\": "
         << seedOffset << ", \"length\": " << seedLen << "},\n";
  outs() << "  \"entry\": \"" << entryName << "\", \"sig_arg\": \"" << sigArgName
         << "\", \"call_sites_analyzed\": " << callSites.size() << ",\n";
  outs() << "  \"findings\": [";
  bool first = true;
  for (auto &f : findings) {
    if (!first) outs() << ","; first = false;
    int worst = 0;
    for (auto c : f.Path) worst = std::max(worst, classSeverity(c));
    std::string verdict;
    double cost_log2 = f.LenResolved ? f.SigLen * std::log2((double)fieldQ) : -1;
    if (worst >= 4) verdict = "ABSORBED (not algebraically exploitable; check ineffective-style leakage only)";
    else if (!f.OffsetResolved || !f.LenResolved)
      verdict = "OFFSET_UNRESOLVED (manual check needed -- non-constant index on this path)";
    else if (f.SigLen <= 8)
      verdict = "LIKELY_CORRECTABLE (l=" + std::to_string(f.SigLen) +
               " bytes, ~2^" + std::to_string((int)std::round(cost_log2)) +
               " verifications -- within the paper's practical range)";
    else
      verdict = "SPREAD_TOO_WIDE (l=" + std::to_string(f.SigLen) +
               " bytes, ~2^" + std::to_string((int)std::round(cost_log2)) +
               " verifications -- brute-force correction infeasible; would "
               "need linear-algebra recovery, not guess-and-check)";

    outs() << "\n    {\"sig_offset\": " << f.SigOffset << ", \"sig_len\": "
           << f.SigLen << ", \"offset_resolved\": "
           << (f.OffsetResolved ? "true" : "false") << ", \"path\": [";
    bool firstc = true;
    for (auto c : f.Path) {
      if (!firstc) outs() << ", "; firstc = false;
      outs() << "\"" << classToStr(c) << "\"";
    }
    outs() << "], \"verdict\": \"" << verdict << "\"}";
  }
  outs() << "\n  ],\n";
  outs() << "  \"unclassified_callees_seen\": [";
  first = true;
  for (auto &n : unknownCallees) {
    if (!first) outs() << ","; first = false;
    outs() << "\"" << n << "\"";
  }
  outs() << "]\n}\n";

  errs() << "\n[i] " << findings.size() << " finding(s) across "
         << callSites.size() << " call site(s) of " << leakFunc
         << "; " << unknownCallees.size()
         << " unclassified callee(s) encountered (treated as SPREAD -- "
            "extend the table in this tool if that's too conservative)\n";
  return 0;
}