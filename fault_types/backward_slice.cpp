//===- backward_slice.cpp -------------------------------------------------===//
//
// Conservative interprocedural backward slice from the output buffer of the
// signature entry function. Answers: "which functions can influence the bytes
// written to `sig`?" Everything NOT in the result cannot affect the signature,
// so faulting it cannot be exploitable through sigma -> its faulted variants
// need not be built.
//
// Direction of error is deliberate: the slice OVER-approximates (keeps more
// than strictly necessary). A false keep costs an emulation; a false drop would
// silently hide an exploitable site, so we never want that. Memory is tracked
// coarsely by getUnderlyingObject; control dependence is NOT modelled (see
// caveat at bottom). Review `reachable_but_dropped` before trusting a prune.
//
// Build:
//   clang++ backward_slice.cpp -o backward_slice \
//       $(llvm-config --cxxflags --ldflags --libs core irreader analysis support)
//
// Usage:
//   ./backward_slice <base.ll> [entryName] [outputArgIndex] > slice.json
//     entryName      default: pqmayo_MAYO_1_ref_mayo_sign_signature
//     outputArgIndex default: 1   (the `sig` pointer parameter)
//===----------------------------------------------------------------------===//

#include "llvm/Analysis/ValueTracking.h"
#include "llvm/IR/Argument.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"

#include <deque>
#include <map>
#include <set>
#include <string>
#include <vector>

using namespace llvm;

static const char *DEFAULT_ENTRY = "pqmayo_MAYO_1_ref_mayo_sign_signature";

int main(int argc, char **argv) {
  if (argc < 2) {
    errs() << "Usage: ./backward_slice <base.ll> [entryName] [outputArgIndex]\n";
    return 1;
  }
  std::string baseFile = argv[1];
  std::string entryName = (argc >= 3) ? argv[2] : DEFAULT_ENTRY;
  unsigned outArg = (argc >= 4) ? std::stoul(argv[3]) : 1u;

  LLVMContext ctx;
  SMDiagnostic err;
  auto M = parseIRFile(baseFile, err, ctx);
  if (!M) {
    errs() << "parse error\n";
    err.print(argv[0], errs());
    return 1;
  }
  Function *Entry = M->getFunction(entryName);
  if (!Entry || Entry->isDeclaration()) {
    errs() << "entry '" << entryName << "' not defined\n";
    return 1;
  }
  if (outArg >= Entry->arg_size()) {
    errs() << "output arg index out of range\n";
    return 1;
  }

  // --- forward reachable functions from entry over the call graph ----------
  std::set<Function *> reach;
  {
    std::deque<Function *> wl{Entry};
    while (!wl.empty()) {
      Function *F = wl.front();
      wl.pop_front();
      if (!reach.insert(F).second)
        continue;
      for (BasicBlock &BB : *F)
        for (Instruction &I : BB)
          if (auto *CB = dyn_cast<CallBase>(&I))
            if (Function *C = CB->getCalledFunction())
              if (!C->isDeclaration() && !reach.count(C))
                wl.push_back(C);
    }
  }

  // --- indexes over reachable code -----------------------------------------
  std::map<Function *, std::vector<CallBase *>> callers; // callee -> callsites
  std::vector<std::pair<CallBase *, unsigned>> ptrArgs;  // (call, argNo) ptr args
  for (Function *F : reach)
    for (BasicBlock &BB : *F)
      for (Instruction &I : BB)
        if (auto *CB = dyn_cast<CallBase>(&I)) {
          if (Function *C = CB->getCalledFunction())
            if (reach.count(C))
              callers[C].push_back(CB);
          if (!isa<MemIntrinsic>(CB))
            for (unsigned a = 0; a < CB->arg_size(); ++a)
              if (CB->getArgOperand(a)->getType()->isPointerTy())
                ptrArgs.push_back({CB, a});
        }

  // --- worklists -----------------------------------------------------------
  std::set<Value *> relVal, relObj;
  std::set<Function *> relFn;
  std::deque<Value *> wlVal, wlObj;

  auto addVal = [&](Value *V) {
    if (!V)
      return;
    if (auto *GV = dyn_cast<GlobalVariable>(V)) {
      if (!GV->isConstant() && relObj.insert(GV).second)
        wlObj.push_back(GV); // mutable global: track as memory object
      return;
    }
    if (isa<Constant>(V))
      return; // leaves: constants, constexprs, function ptrs
    if (relVal.insert(V).second)
      wlVal.push_back(V);
  };
  auto addObj = [&](Value *O) {
    O = getUnderlyingObject(O);
    if (!O || isa<Constant>(O))
      return;
    if (relObj.insert(O).second)
      wlObj.push_back(O);
  };

  // seed: the output buffer of the entry
  relFn.insert(Entry);
  addObj(Entry->getArg(outArg));

  while (!wlVal.empty() || !wlObj.empty()) {
    // ---- value dependencies ----
    while (!wlVal.empty()) {
      Value *V = wlVal.front();
      wlVal.pop_front();

      if (auto *A = dyn_cast<Argument>(V)) {
        Function *F = A->getParent();
        relFn.insert(F);
        if (F == Entry)
          continue; // inputs are sources; do not climb above entry
        for (CallBase *CB : callers[F]) {
          if (A->getArgNo() >= CB->arg_size())
            continue;
          Value *actual = CB->getArgOperand(A->getArgNo());
          relFn.insert(CB->getFunction());
          addVal(actual);
          if (actual->getType()->isPointerTy())
            addObj(actual);
        }
        continue;
      }

      auto *I = dyn_cast<Instruction>(V);
      if (!I)
        continue;
      relFn.insert(I->getFunction());

      if (auto *LI = dyn_cast<LoadInst>(I)) {
        addVal(LI->getPointerOperand());
        addObj(LI->getPointerOperand()); // pull writers of this location
      } else if (auto *CB = dyn_cast<CallBase>(I)) {
        // result relevant -> callee's returned values relevant
        if (Function *C = CB->getCalledFunction())
          if (reach.count(C)) {
            relFn.insert(C);
            for (BasicBlock &BB : *C)
              if (auto *RI = dyn_cast<ReturnInst>(BB.getTerminator()))
                addVal(RI->getReturnValue());
          }
        // args are pulled via the callee's own backward pass (Argument rule)
      } else {
        for (Use &U : I->operands())
          addVal(U.get());
      }
    }

    // ---- memory-object dependencies ----
    while (!wlObj.empty()) {
      Value *O = wlObj.front();
      wlObj.pop_front();

      // writers inside reachable code that target O
      for (Function *F : reach)
        for (BasicBlock &BB : *F)
          for (Instruction &I : BB) {
            if (auto *SI = dyn_cast<StoreInst>(&I)) {
              if (getUnderlyingObject(SI->getPointerOperand()) == O) {
                relFn.insert(F);
                addVal(SI->getValueOperand());
                addVal(SI->getPointerOperand());
              }
            } else if (auto *MC = dyn_cast<MemTransferInst>(&I)) {
              if (getUnderlyingObject(MC->getRawDest()) == O) {
                relFn.insert(F);
                addVal(MC->getRawSource());
                addObj(MC->getRawSource());
                addVal(MC->getLength());
              }
            } else if (auto *MS = dyn_cast<MemSetInst>(&I)) {
              if (getUnderlyingObject(MS->getRawDest()) == O) {
                relFn.insert(F);
                addVal(MS->getValue());
              }
            }
          }

      // calls that receive O as a pointer arg may write it: descend
      for (auto &PA : ptrArgs) {
        CallBase *CB = PA.first;
        unsigned a = PA.second;
        if (getUnderlyingObject(CB->getArgOperand(a)) != O)
          continue;
        Function *C = CB->getCalledFunction();
        if (!C || !reach.count(C) || C->isDeclaration())
          continue;
        relFn.insert(C);
        relFn.insert(CB->getFunction());
        if (a < C->arg_size())
          addObj(C->getArg(a)); // callee's view of the buffer
      }
    }
  }

  // --- emit ----------------------------------------------------------------
  std::set<std::string> inSlice, dropped;
  for (Function *F : relFn)
    inSlice.insert(F->getName().str());
  for (Function *F : reach)
    if (!relFn.count(F))
      dropped.insert(F->getName().str());

  auto emit = [](raw_ostream &OS, const std::set<std::string> &S) {
    bool first = true;
    for (auto &s : S) {
      OS << (first ? "\n    \"" : ",\n    \"") << s << "\"";
      first = false;
    }
    if (!first)
      OS << "\n  ";
  };
  outs() << "{\n  \"entry\": \"" << entryName << "\",\n"
         << "  \"output_arg_index\": " << outArg << ",\n"
         << "  \"relevant_functions\": [";
  emit(outs(), inSlice);
  outs() << "],\n  \"reachable_but_dropped\": [";
  emit(outs(), dropped);
  outs() << "]\n}\n";

  errs() << "slice: " << inSlice.size() << " relevant, " << dropped.size()
         << " reachable-but-dropped, of " << reach.size() << " reachable\n";
  return 0;
}