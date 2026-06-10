#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"

#include "llvm/Transforms/IPO/GlobalDCE.h"
#include "llvm/Transforms/IPO/GlobalOpt.h"
#include "llvm/Transforms/InstCombine/InstCombine.h"
#include "llvm/Transforms/Scalar/ADCE.h"
#include "llvm/Transforms/Scalar/CorrelatedValuePropagation.h"
#include "llvm/Transforms/Scalar/DCE.h"
#include "llvm/Transforms/Scalar/IndVarSimplify.h"
#include "llvm/Transforms/Scalar/LoopRotation.h"
#include "llvm/Transforms/Scalar/LoopUnrollPass.h"
#include "llvm/Transforms/Scalar/SCCP.h"
#include "llvm/Transforms/Scalar/SimplifyCFG.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/Mem2Reg.h"

#include "llvm/Analysis/LoopAnalysisManager.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/IR/Analysis.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Constant.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/DebugInfo.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Support/Casting.h"
#include "llvm/Transforms/Utils/ValueMapper.h"

#include <cstdio>
#include <cstdlib>
#include <iostream>

#include <map>
#include <memory>
#include <vector>

using namespace llvm;

enum FaultMode { LOOP_SKIP = 0, FUNC_SKIP = 1 };

class FuncSkip : public PassInfoMixin<FuncSkip> {
public:
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
    auto &LI = FAM.getResult<LoopAnalysis>(F);
    auto &SE = FAM.getResult<ScalarEvolutionAnalysis>(F);

    std::vector<Loop *> loops(LI.begin(), LI.end());
    for (Loop *L : loops) {
      unsigned tripCount = SE.getSmallConstantTripCount(L);
      if (tripCount == 0) {
        errs() << "cannot determine trip count\n";
        continue;
      }

      errs() << "Loop trip count: " << tripCount << "\n";
      addLabelNUnrollWithFuncSkip(F, L, LI, SE, tripCount, "add_f");
    }
    return PreservedAnalyses::none();
  }

  void addLabelNUnrollWithFuncSkip(Function &F, Loop *L, LoopInfo &LI,
                                   ScalarEvolution &SE, unsigned tripCount,
                                   const std::string &funcToSkip) {
    BasicBlock *header = L->getHeader();
    BasicBlock *latch = L->getLoopLatch();
    BasicBlock *preheader = L->getLoopPreheader();
    BasicBlock *exitBB = L->getUniqueExitBlock();

    if (!header || !latch || !preheader || !exitBB) {
      errs() << "Loop not in simplified form\n";
      return;
    }

    std::vector<BasicBlock *> origBlocks;
    for (BasicBlock *BB : L->blocks()) {
      origBlocks.push_back(BB);
    }

    BasicBlock *prevIterExit = preheader;
    ValueToValueMapTy cumulativeMap;

    for (unsigned i = 0; i < tripCount; i++) {
      // 1. Create start label
      BasicBlock *iterStart = BasicBlock::Create(
          F.getContext(), "iter_" + std::to_string(i) + "_start", &F);

      // 2. Resolve PHI nodes for this iteration
      std::vector<std::pair<PHINode *, Value *>> resolvedPhis;
      for (PHINode &PN : header->phis()) {
        Value *incoming;
        if (i == 0) {
          incoming = PN.getIncomingValueForBlock(preheader);
        } else {
          Value *latchVal = PN.getIncomingValueForBlock(latch);
          if (Value *mapped = cumulativeMap.lookup(latchVal))
            incoming = mapped;
          else
            incoming = latchVal;
        }
        cumulativeMap[&PN] = incoming;
        resolvedPhis.push_back({&PN, incoming});
      }

      // 3. Clone all blocks for this iteration
      std::vector<BasicBlock *> iterationCloned;
      ValueToValueMapTy iterationBlockMap;
      for (BasicBlock *BB : origBlocks) {
        BasicBlock *cloned =
            CloneBasicBlock(BB, cumulativeMap, ".iter" + std::to_string(i), &F);
        iterationCloned.push_back(cloned);
        iterationBlockMap[BB] = cloned;

        // Map individual instructions to their clones
        auto itOrig = BB->begin();
        auto itCloned = cloned->begin();
        while (itOrig != BB->end() && itCloned != cloned->end()) {
          iterationBlockMap[&*itOrig] = &*itCloned;
          // For next iteration's use
          cumulativeMap[&*itOrig] = &*itCloned;
          itOrig++;
          itCloned++;
        }
      }

      // 4. Resolve internal control flow in the cloned iteration
      for (BasicBlock *cloned : iterationCloned) {
        for (Instruction &I : *cloned) {
          RemapInstruction(&I, iterationBlockMap,
                           RF_NoModuleLevelChanges | RF_IgnoreMissingLocals);
        }

        // Skip function calls in the first iteration
        if (i == 0) {
          for (auto It = cloned->begin(); It != cloned->end();) {
            Instruction *I = &*It++;
            auto *CI = dyn_cast<CallInst>(I);
            if (!CI)
              continue;

            Function *callee = CI->getCalledFunction();
            if (callee && callee->getName() == funcToSkip) {
              outs() << "skipping fn call " << callee->getName() << "\n";
              // if (!CI->getType()->isVoidTy()) {
              Value *v = CI->getArgOperand(0);
              // Value *v = Constant::getNullValue(CI->getType());
              CI->replaceAllUsesWith(v);
              // }
              CI->eraseFromParent();
            }
          }
        }
      }

      // 5. Remove PHI nodes from the cloned header as they are now resolved
      for (auto &pair : resolvedPhis) {
        PHINode *origPhi = pair.first;
        Value *resolvedVal = pair.second;
        if (Value *clonedPhiVal = iterationBlockMap.lookup(origPhi)) {
          PHINode *clonedPhi = cast<PHINode>(clonedPhiVal);
          clonedPhi->replaceAllUsesWith(resolvedVal);
          clonedPhi->eraseFromParent();
        }
      }

      // 6. Create end label
      BasicBlock *iterEnd = BasicBlock::Create(
          F.getContext(), "iter_" + std::to_string(i) + "_end", &F);

      // 7. Connect control flow
      if (i == 0) {
        Instruction *prevTerm = preheader->getTerminator();
        BranchInst::Create(iterStart, preheader);
        prevTerm->eraseFromParent();
      } else {
        BranchInst::Create(iterStart, prevIterExit);
      }

      BranchInst::Create(iterationCloned.front(), iterStart);

      BasicBlock *clonedLatch = cast<BasicBlock>(iterationBlockMap[latch]);
      Instruction *latchTerm = clonedLatch->getTerminator();
      BranchInst::Create(iterEnd, clonedLatch);
      latchTerm->eraseFromParent();

      prevIterExit = iterEnd;
    }

    BranchInst::Create(exitBB, prevIterExit);
    for (auto it = exitBB->begin(); isa<PHINode>(it);) {
      PHINode *PN = cast<PHINode>(&*it++);
      Value *incomingVal = nullptr;

      for (unsigned j = 0; j < PN->getNumIncomingValues(); j++) {
        if (L->contains(PN->getIncomingBlock(j))) {
          incomingVal = PN->getIncomingValue(j);
          break;
        }
      }

      if (!incomingVal)
        continue;

      if (Value *mapped = cumulativeMap.lookup(incomingVal))
        incomingVal = mapped;

      while (true) {
        bool removed = false;
        for (unsigned j = 0; j < PN->getNumIncomingValues(); j++) {
          if (L->contains(PN->getIncomingBlock(j))) {
            PN->removeIncomingValue(j, false);
            removed = true;
            break;
          }
        }
        if (!removed)
          break;
      }

      PN->addIncoming(incomingVal, prevIterExit);
    }

    for (BasicBlock *BB : origBlocks) {
      BB->eraseFromParent();
    }
  }
};

void run_command(const std::string &cmd) {
  int ret = system(cmd.c_str());
  if (ret != 0) {
    std::cerr << "Command failed!\n";
    exit(1);
  }
}

void dump_module(Module &M, const std::string &filename) {
  std::error_code EC;
  raw_fd_ostream out(filename, EC);
  M.print(out, nullptr);
  out.close();
}

/// Trace a value backwards to its original AllocaInst, GlobalVariable, or
/// Constant.
Value *traceArgToRoot(Value *V) {
  std::set<Value *> visited;
  while (V && visited.insert(V).second) {
    if (auto *GEP = dyn_cast<GetElementPtrInst>(V)) {
      V = GEP->getPointerOperand();
    } else if (auto *BC = dyn_cast<BitCastInst>(V)) {
      V = BC->getOperand(0);
    } else if (auto *Arg = dyn_cast<Argument>(V)) {
      Function *F = Arg->getParent();
      bool foundCall = false;
      for (User *U : F->users()) {
        if (auto *CB = dyn_cast<CallBase>(U)) {
          if (CB->getCalledFunction() == F) {
            V = CB->getArgOperand(Arg->getArgNo());
            foundCall = true;
            break; // Just pick the first call site
          }
        }
      }
      if (!foundCall)
        break;
    } else if (auto *LI = dyn_cast<LoadInst>(V)) {
      break;
    } else {
      break;
    }
  }
  return V;
}

unsigned inferPointerAllocSize(Argument *arg, unsigned defaultSize) {
  unsigned maxOffset = 0;
  bool foundGEP = false;

  std::function<void(Value *)> scanUsers = [&](Value *V) {
    for (User *U : V->users()) {
      if (auto *GEP = dyn_cast<GetElementPtrInst>(U)) {
        APInt offset(32, 0);
        if (GEP->accumulateConstantOffset(GEP->getModule()->getDataLayout(),
                                          offset)) {
          unsigned off = (unsigned)offset.getZExtValue();
          unsigned accessSize = off + 1;
          for (User *GU : GEP->users()) {
            if (auto *LI = dyn_cast<LoadInst>(GU)) {
              unsigned elemBytes =
                  LI->getModule()->getDataLayout().getTypeStoreSize(
                      LI->getType());
              accessSize = off + elemBytes;
            } else if (auto *SI = dyn_cast<StoreInst>(GU)) {
              if (SI->getPointerOperand() == GEP) {
                unsigned elemBytes =
                    SI->getModule()->getDataLayout().getTypeStoreSize(
                        SI->getValueOperand()->getType());
                accessSize = off + elemBytes;
              }
            }
          }
          if (accessSize > maxOffset) {
            maxOffset = accessSize;
            foundGEP = true;
          }
        }
        scanUsers(GEP);
      } else if (auto *BC = dyn_cast<BitCastInst>(U)) {
        scanUsers(BC);
      }
    }
  };

  scanUsers(arg);
  return foundGEP ? maxOffset : defaultSize;
}

void createDynamicDriverFunction(Module &OriginalM, Module &ExtractedM,
                                 Function *TargetF) {
  LLVMContext &ctx = ExtractedM.getContext();

  FunctionType *driverTy = FunctionType::get(Type::getInt32Ty(ctx), false);
  Function *driver = Function::Create(driverTy, GlobalValue::ExternalLinkage,
                                      "main", &ExtractedM);

  BasicBlock *entry = BasicBlock::Create(ctx, "entry", driver);
  IRBuilder<> builder(entry);

  std::vector<Value *> callArgs;

  Function *OrigF = OriginalM.getFunction(TargetF->getName());
  CallBase *FirstCall = nullptr;
  if (OrigF) {
    for (User *U : OrigF->users()) {
      if (auto *CB = dyn_cast<CallBase>(U)) {
        if (CB->getCalledFunction() == OrigF) {
          FirstCall = CB;
          break;
        }
      }
    }
  }

  for (unsigned i = 0; i < TargetF->arg_size(); i++) {
    Argument *arg = TargetF->getArg(i);
    Type *argTy = arg->getType();

    Value *root = nullptr;
    if (FirstCall) {
      root = traceArgToRoot(FirstCall->getArgOperand(i));
    }

    if (argTy->isPointerTy()) {
      Value *ptr = nullptr;
      if (root) {
        if (auto *AI = dyn_cast<AllocaInst>(root)) {
          Type *allocTy = AI->getAllocatedType();
          std::string name = AI->getName().str();
          if (name.empty())
            name = "buf";
          AllocaInst *newAlloc = builder.CreateAlloca(allocTy, nullptr, name);
          newAlloc->setAlignment(Align(16));
          uint64_t allocSize =
              ExtractedM.getDataLayout().getTypeAllocSize(allocTy);
          builder.CreateMemSet(newAlloc, builder.getInt8(0), allocSize,
                               Align(1));
          ptr = builder.CreateBitCast(newAlloc, argTy);
          errs() << "  Arg " << i << " (" << arg->getName()
                 << "): alloca of type " << *allocTy << " named " << name
                 << "\n";
        } else if (auto *GV = dyn_cast<GlobalVariable>(root)) {
          Type *valTy = GV->getValueType();
          std::string name = GV->getName().str();
          if (name.empty())
            name = "buf";
          AllocaInst *newAlloc = builder.CreateAlloca(valTy, nullptr, name);
          newAlloc->setAlignment(Align(16));
          uint64_t allocSize =
              ExtractedM.getDataLayout().getTypeAllocSize(valTy);
          builder.CreateMemSet(newAlloc, builder.getInt8(0), allocSize,
                               Align(1));
          ptr = builder.CreateBitCast(newAlloc, argTy);
          errs() << "  Arg " << i << " (" << arg->getName()
                 << "): global of type " << *valTy << " named " << name << "\n";
        }
      }

      if (!ptr) {
        unsigned allocSize = inferPointerAllocSize(arg, 128);
        ArrayType *arrTy = ArrayType::get(Type::getInt8Ty(ctx), allocSize);
        AllocaInst *alloc =
            builder.CreateAlloca(arrTy, nullptr, arg->getName() + "_buf");
        alloc->setAlignment(Align(16));
        builder.CreateMemSet(alloc, builder.getInt8(0), allocSize, Align(1));
        ptr = builder.CreateBitCast(alloc, argTy);
        errs() << "  Arg " << i << " (" << arg->getName()
               << "): fallback -> alloca [" << allocSize << " x i8]\n";
      }
      callArgs.push_back(ptr);

    } else if (argTy->isIntegerTy()) {
      if (root && isa<ConstantInt>(root)) {
        ConstantInt *CI = cast<ConstantInt>(root);
        callArgs.push_back(ConstantInt::get(argTy, CI->getZExtValue()));
        errs() << "  Arg " << i << " (" << arg->getName() << "): constant "
               << CI->getZExtValue() << "\n";
      } else {
        callArgs.push_back(ConstantInt::get(argTy, 0));
        errs() << "  Arg " << i << " (" << arg->getName() << "): default 0\n";
      }
    } else {
      callArgs.push_back(Constant::getNullValue(argTy));
      errs() << "  Arg " << i << " (" << arg->getName()
             << "): unknown type -> null\n";
    }
  }

  CallInst *callI = builder.CreateCall(TargetF, callArgs);
  callI->setCallingConv(TargetF->getCallingConv());
  builder.CreateRet(builder.getInt32(0));

  // Prevent the driver from being optimized away or inlined
  driver->addFnAttr(Attribute::NoInline);
  driver->addFnAttr(Attribute::OptimizeNone);

  errs() << "Created driver function for " << TargetF->getName() << "\n";
}

std::unique_ptr<Module> extractFunction(Module &M, Function *F) {
  auto newMod = CloneModule(M);

  std::set<std::string> keep;
  keep.insert(F->getName().str());

  std::function<void(Function *)> collectCallees = [&](Function *fn) {
    for (auto &BB : *fn) {
      for (auto &I : BB) {
        if (auto *call = dyn_cast<CallInst>(&I)) {
          Function *callee = call->getCalledFunction();
          if (callee && !callee->isDeclaration()) {
            if (keep.insert(callee->getName().str()).second) {
              collectCallees(callee);
            }
          }
        }
      }
    }
  };
  collectCallees(F);

  for (auto it = newMod->begin(); it != newMod->end();) {
    Function &F2 = *it++;
    if (F2.isDeclaration())
      continue;
    if (keep.find(F2.getName().str()) == keep.end()) {
      if (F2.use_empty())
        F2.eraseFromParent();
      else
        F2.deleteBody();
    }
  }

  return newMod;
}

class LabeledUnrollPass : public PassInfoMixin<LabeledUnrollPass> {
public:
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {

    auto &LI = FAM.getResult<LoopAnalysis>(F);
    auto &SE = FAM.getResult<ScalarEvolutionAnalysis>(F);

    std::vector<Loop *> loops(LI.begin(), LI.end());
    for (Loop *L : loops) {
      unsigned tripCount = SE.getSmallConstantTripCount(L);
      if (tripCount == 0) {
        errs() << "cannot determine trip count\n";
        continue;
      }

      errs() << "Loop trip count: " << tripCount << "\n";
      addLabelNUnroll(F, L, LI, SE, tripCount);
    }
    return PreservedAnalyses::none();
  }

  void addLabelNUnroll(Function &F, Loop *L, LoopInfo &LI, ScalarEvolution &SE,
                       unsigned tripCount) {
    BasicBlock *header = L->getHeader();
    BasicBlock *latch = L->getLoopLatch();
    BasicBlock *preheader = L->getLoopPreheader();
    BasicBlock *exitBB = L->getUniqueExitBlock();

    if (!header || !latch || !preheader || !exitBB) {
      errs() << "Loop not in simplified form\n";
      return;
    }

    std::vector<BasicBlock *> origBlocks;
    for (BasicBlock *BB : L->blocks()) {
      origBlocks.push_back(BB);
    }

    BasicBlock *prevIterExit = preheader;
    ValueToValueMapTy cumulativeMap;

    for (unsigned i = 0; i < tripCount; i++) {
      // 1. Create start label
      BasicBlock *iterStart = BasicBlock::Create(
          F.getContext(), "iter_" + std::to_string(i) + "_start", &F);

      // 2. Resolve PHI nodes for this iteration
      std::vector<std::pair<PHINode *, Value *>> resolvedPhis;
      for (PHINode &PN : header->phis()) {
        Value *incoming;
        if (i == 0) {
          incoming = PN.getIncomingValueForBlock(preheader);
        } else {
          Value *latchVal = PN.getIncomingValueForBlock(latch);
          if (Value *mapped = cumulativeMap.lookup(latchVal))
            incoming = mapped;
          else
            incoming = latchVal;
        }
        cumulativeMap[&PN] = incoming;
        resolvedPhis.push_back({&PN, incoming});
      }

      // 3. Clone all blocks for this iteration
      std::vector<BasicBlock *> iterationCloned;
      ValueToValueMapTy iterationBlockMap;
      for (BasicBlock *BB : origBlocks) {
        BasicBlock *cloned =
            CloneBasicBlock(BB, cumulativeMap, ".iter" + std::to_string(i), &F);
        iterationCloned.push_back(cloned);
        iterationBlockMap[BB] = cloned;

        // Map individual instructions to their clones
        auto itOrig = BB->begin();
        auto itCloned = cloned->begin();
        while (itOrig != BB->end() && itCloned != cloned->end()) {
          iterationBlockMap[&*itOrig] = &*itCloned;
          // For next iteration's use
          cumulativeMap[&*itOrig] = &*itCloned;
          itOrig++;
          itCloned++;
        }
      }

      // 4. Resolve internal control flow in the cloned iteration
      for (BasicBlock *cloned : iterationCloned) {
        for (Instruction &I : *cloned) {
          RemapInstruction(&I, iterationBlockMap,
                           RF_NoModuleLevelChanges | RF_IgnoreMissingLocals);
        }
      }

      // 5. Remove PHI nodes from the cloned header as they are now resolved
      for (auto &pair : resolvedPhis) {
        PHINode *origPhi = pair.first;
        Value *resolvedVal = pair.second;
        if (Value *clonedPhiVal = iterationBlockMap.lookup(origPhi)) {
          PHINode *clonedPhi = cast<PHINode>(clonedPhiVal);
          clonedPhi->replaceAllUsesWith(resolvedVal);
          clonedPhi->eraseFromParent();
        }
      }

      // 6. Create end label
      BasicBlock *iterEnd = BasicBlock::Create(
          F.getContext(), "iter_" + std::to_string(i) + "_end", &F);

      // 7. Connect control flow
      if (i == 0) {
        Instruction *prevTerm = preheader->getTerminator();
        BranchInst::Create(iterStart, preheader);
        prevTerm->eraseFromParent();
      } else {
        BranchInst::Create(iterStart, prevIterExit);
      }

      BranchInst::Create(iterationCloned.front(), iterStart);

      BasicBlock *clonedLatch = cast<BasicBlock>(iterationBlockMap[latch]);
      Instruction *latchTerm = clonedLatch->getTerminator();
      BranchInst::Create(iterEnd, clonedLatch);
      latchTerm->eraseFromParent();

      prevIterExit = iterEnd;
    }

    BranchInst::Create(exitBB, prevIterExit);
    for (auto it = exitBB->begin(); isa<PHINode>(it);) {
      PHINode *PN = cast<PHINode>(&*it++);
      Value *incomingVal = nullptr;

      for (unsigned j = 0; j < PN->getNumIncomingValues(); j++) {
        if (L->contains(PN->getIncomingBlock(j))) {
          incomingVal = PN->getIncomingValue(j);
          break;
        }
      }

      if (!incomingVal)
        continue;

      if (Value *mapped = cumulativeMap.lookup(incomingVal))
        incomingVal = mapped;

      while (true) {
        bool removed = false;
        for (unsigned j = 0; j < PN->getNumIncomingValues(); j++) {
          if (L->contains(PN->getIncomingBlock(j))) {
            PN->removeIncomingValue(j, false);
            removed = true;
            break;
          }
        }
        if (!removed)
          break;
      }

      PN->addIncoming(incomingVal, prevIterExit);
    }

    for (BasicBlock *BB : origBlocks) {
      BB->eraseFromParent();
    }
  }
};

Function *getOrCloneHelper(Module &M, Module &SourceM, StringRef Name) {

  if (Function *F = M.getFunction(Name))
    return F;

  Function *Src = SourceM.getFunction(Name);
  if (!Src)
    return nullptr;

  ValueToValueMapTy VMap;

  Function *NewF = Function::Create(Src->getFunctionType(), Src->getLinkage(),
                                    Src->getName(), &M);

  auto DestI = NewF->arg_begin();
  for (const Argument &Arg : Src->args()) {
    DestI->setName(Arg.getName());
    VMap[&Arg] = &*DestI++;
  }

  SmallVector<ReturnInst *, 8> Returns;

  CloneFunctionInto(NewF, Src, VMap, CloneFunctionChangeType::LocalChangesOnly,
                    Returns);

  return NewF;
}

void replaceMemoryIntrinsics(Module &M, Module &SourceM) {

  Function *MayoMemset = getOrCloneHelper(M, SourceM, "mayo_memset");

  Function *MayoMemcpy = getOrCloneHelper(M, SourceM, "mayo_memcpy");

  SmallVector<CallInst *, 64> Worklist;

  for (Function &F : M) {
    for (BasicBlock &BB : F) {
      for (Instruction &I : BB) {

        auto *CI = dyn_cast<CallInst>(&I);
        if (!CI)
          continue;

        Function *Callee = CI->getCalledFunction();

        if (!Callee || !Callee->isIntrinsic())
          continue;

        Intrinsic::ID ID = Callee->getIntrinsicID();

        if (ID == Intrinsic::memset || ID == Intrinsic::memcpy)
          Worklist.push_back(CI);
      }
    }
  }

  for (CallInst *CI : Worklist) {

    IRBuilder<> B(CI);

    Function *Callee = CI->getCalledFunction();

    switch (Callee->getIntrinsicID()) {

    case Intrinsic::memset: {

      auto *MSI = cast<MemSetInst>(CI);

      B.CreateCall(MayoMemset,
                   {MSI->getDest(), MSI->getValue(),
                    B.CreateIntCast(MSI->getLength(),
                                    Type::getInt32Ty(M.getContext()), false)});

      CI->eraseFromParent();
      break;
    }

    case Intrinsic::memcpy: {

      auto *MCI = cast<MemCpyInst>(CI);

      B.CreateCall(MayoMemcpy,
                   {MCI->getDest(), MCI->getSource(),
                    B.CreateIntCast(MCI->getLength(),
                                    Type::getInt32Ty(M.getContext()), false)});

      CI->eraseFromParent();
      break;
    }

    default:
      break;
    }
  }
}

void cleanup(Module &M) {
  for (auto FI = M.begin(); FI != M.end();) {

    Function &F = *FI++;

    if (F.isDeclaration() && F.use_empty())
      F.eraseFromParent();
  }
  for (auto GI = M.global_begin(); GI != M.global_end();) {
    GlobalVariable *GV = &*GI++;
    if (GV->use_empty())
      GV->eraseFromParent();
  }
}
int main(int argc, char **argv) {
  if (argc < 3) {
    errs() << "Usage: loopSkip <input.ll> <mode> [funcName]\n";
    errs() << "0 => loopSkip\n";
    errs() << "1 => funcSkip\n";
    return 1;
  }

  std::string inputFile = argv[1];
  int mode = std::stoi(argv[2]);
  std::string funcName = "main";
  if (argc >= 4) {
    funcName = argv[3];
  }

  LLVMContext ctx;
  SMDiagnostic err;
  auto module = parseIRFile(inputFile, err, ctx);
  if (!module) {
    err.print("error", errs());
    return 1;
  }

  Function *target = module->getFunction(funcName);
  if (!target) {
    std::cout << "Function not found: " << funcName << std::endl;
    return 1;
  }

  auto funcModule = extractFunction(*module, target);
  if (!funcModule) {
    std::cout << "Failed to create extracted module" << std::endl;
    return 1;
  }

  if (Function *F = funcModule->getFunction(funcName))
    F->setLinkage(GlobalValue::ExternalLinkage);

  {
    Function *extractedFunc = funcModule->getFunction(funcName);
    if (extractedFunc) {
      errs() << "Creating driver function for " << funcName << "...\n";
      createDynamicDriverFunction(*module, *funcModule, extractedFunc);
    }
  }

  auto makePB = [&](Module &M, auto buildPipeline) {
    LoopAnalysisManager LAM;
    FunctionAnalysisManager FAM;
    CGSCCAnalysisManager CGAM;
    ModuleAnalysisManager MAM;
    PassBuilder PB;
    PB.registerModuleAnalyses(MAM);
    PB.registerCGSCCAnalyses(CGAM);
    PB.registerFunctionAnalyses(FAM);
    PB.registerLoopAnalyses(LAM);
    PB.crossRegisterProxies(LAM, FAM, CGAM, MAM);

    ModulePassManager MPM;
    buildPipeline(MPM);
    MPM.run(M, MAM);
  };

  std::unique_ptr<Module> preUnrollClone;
  if (mode == FUNC_SKIP) {
    preUnrollClone = CloneModule(*funcModule);
  }

  // Unroll for original.ll
  for (Function &F : *funcModule) {
    F.removeFnAttr(Attribute::NoInline);
    F.removeFnAttr(Attribute::OptimizeNone);
    if (!F.isDeclaration())
      F.addFnAttr(Attribute::InlineHint);
  }

  makePB(*funcModule, [](ModulePassManager &MPM) {
    {
      InlineParams IP;
      IP.DefaultThreshold = 10000;
      MPM.addPass(ModuleInlinerPass(IP));
    }
    // Constant-prop + simplify
    {
      FunctionPassManager FPM;
      FPM.addPass(PromotePass());
      FPM.addPass(SCCPPass());
      FPM.addPass(CorrelatedValuePropagationPass());
      FPM.addPass(InstCombinePass());
      FPM.addPass(SimplifyCFGPass());
      MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));
    }
    // Loop unroll (no fault)
    {
      FunctionPassManager FPM;
      FPM.addPass(LoopSimplifyPass());
      FPM.addPass(LCSSAPass());
      FPM.addPass(createFunctionToLoopPassAdaptor(LoopRotatePass()));
      FPM.addPass(createFunctionToLoopPassAdaptor(IndVarSimplifyPass()));
      FPM.addPass(LabeledUnrollPass());
      FPM.addPass(SCCPPass());
      FPM.addPass(PromotePass());
      MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));
    }
    MPM.addPass(GlobalOptPass());
  });
  replaceMemoryIntrinsics(*funcModule, *module);
  cleanup(*funcModule);
  {
    LoopAnalysisManager LAM;
    FunctionAnalysisManager FAM;
    CGSCCAnalysisManager CGAM;
    ModuleAnalysisManager MAM;

    PassBuilder PB;

    PB.registerModuleAnalyses(MAM);
    PB.registerCGSCCAnalyses(CGAM);
    PB.registerFunctionAnalyses(FAM);
    PB.registerLoopAnalyses(LAM);
    PB.crossRegisterProxies(LAM, FAM, CGAM, MAM);

    ModulePassManager MPM;

    MPM.addPass(GlobalDCEPass());

    FunctionPassManager FPM;
    FPM.addPass(ADCEPass());
    FPM.addPass(DCEPass());

    MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));

    MPM.run(*funcModule, MAM);
  }
  StripDebugInfo(*funcModule);

  if (verifyModule(*funcModule, &errs())) {
    errs() << "Invalid IR after LabeledUnrollPass\n";
    return 1;
  }

  dump_module(*funcModule, "../original.ll");
  outs() << "Wrote original.ll\n";

  // Clone and inject fault

  if (mode == LOOP_SKIP) {
    auto faultModule = CloneModule(*funcModule);

    unsigned skipIter = 1;
    Function *faultFunc = faultModule->getFunction(funcName);
    if (faultFunc) {
      std::string srcName = "iter_" + std::to_string(skipIter - 1) + "_end";
      std::string newTarget = "iter_" + std::to_string(skipIter + 1) + "_start";
      std::string skippedSuffix = ".iter" + std::to_string(skipIter);
      std::string prevSuffix = ".iter" + std::to_string(skipIter - 1);

      std::string skipStartName = "iter_" + std::to_string(skipIter) + "_start";
      std::string skipEndName = "iter_" + std::to_string(skipIter) + "_end";

      std::vector<BasicBlock *> skippedBlocks;
      BasicBlock *srcBB = nullptr, *newTargetBB = nullptr;
      bool inSkipped = false;

      for (BasicBlock &BB : *faultFunc) {
        if (BB.getName() == srcName)
          srcBB = &BB;
        if (BB.getName() == newTarget)
          newTargetBB = &BB;
        if (BB.getName() == skipStartName)
          inSkipped = true;
        if (inSkipped)
          skippedBlocks.push_back(&BB);
        if (BB.getName() == skipEndName)
          inSkipped = false;
      }

      if (srcBB && newTargetBB) {

        std::map<Value *, Value *> remap;
        for (BasicBlock *BB : skippedBlocks) {
          for (Instruction &I : *BB) {
            std::string iName = I.getName().str();
            if (iName.empty())
              continue;

            size_t pos = iName.rfind(skippedSuffix);
            if (pos == std::string::npos)
              continue;

            std::string prevName = iName.substr(0, pos) + prevSuffix;
            for (BasicBlock &searchBB : *faultFunc) {
              for (Instruction &searchI : searchBB) {
                if (searchI.getName() == prevName) {
                  remap[&I] = &searchI;
                  break;
                }
              }
              if (remap.count(&I))
                break;
            }
          }
        }

        // Replace uses of skipped-iteration values outside the skipped blocks
        for (auto &[skippedVal, prevVal] : remap) {
          std::vector<Use *> usesToReplace;
          for (Use &U : skippedVal->uses()) {
            Instruction *user = dyn_cast<Instruction>(U.getUser());
            if (!user)
              continue;
            BasicBlock *userBB = user->getParent();
            bool isInSkipped = false;
            for (BasicBlock *sBB : skippedBlocks) {
              if (sBB == userBB) {
                isInSkipped = true;
                break;
              }
            }
            if (!isInSkipped)
              usesToReplace.push_back(&U);
          }
          for (Use *U : usesToReplace)
            U->set(prevVal);
        }

        // Redirect the branch from iter_(N-1)_end to iter_(N+1)_start
        Instruction *term = srcBB->getTerminator();
        if (auto *br = dyn_cast<BranchInst>(term)) {
          BranchInst::Create(newTargetBB, srcBB);
          br->eraseFromParent();
          outs() << "Fault injected: " << srcName << " -> " << newTarget
                 << " (skipping iteration " << skipIter << ")\n";
        }

        for (BasicBlock *BB : skippedBlocks)
          BB->dropAllReferences();
        for (BasicBlock *BB : skippedBlocks)
          BB->eraseFromParent();

      } else {
        errs() << "Could not find blocks for fault injection\n";
      }
    }

    if (verifyModule(*faultModule, &errs())) {
      errs() << "Fault module has invalid IR\n";
    } else {
      dump_module(*faultModule, "../loopSkip.ll");
      outs() << "Wrote loopSkip.ll\n";
    }

  } else if (mode == FUNC_SKIP) {
    for (Function &F : *preUnrollClone) {
      F.removeFnAttr(Attribute::NoInline);
      F.removeFnAttr(Attribute::OptimizeNone);
      if (!F.isDeclaration())
        F.addFnAttr(Attribute::InlineHint);
    }

    makePB(*preUnrollClone, [](ModulePassManager &MPM) {
      {
        FunctionPassManager FPM;
        FPM.addPass(LoopSimplifyPass());
        FPM.addPass(LCSSAPass());
        FPM.addPass(createFunctionToLoopPassAdaptor(LoopRotatePass()));
        FPM.addPass(createFunctionToLoopPassAdaptor(IndVarSimplifyPass()));
        FPM.addPass(FuncSkip());
        FPM.addPass(SCCPPass());
        FPM.addPass(PromotePass());
        MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));
      }

      {
        InlineParams IP;
        IP.DefaultThreshold = 10000;
        MPM.addPass(ModuleInlinerPass(IP));
      }
      MPM.addPass(GlobalOptPass());
    });
    replaceMemoryIntrinsics(*preUnrollClone, *module);
    cleanup(*preUnrollClone);
    {
      LoopAnalysisManager LAM;
      FunctionAnalysisManager FAM;
      CGSCCAnalysisManager CGAM;
      ModuleAnalysisManager MAM;

      PassBuilder PB;

      PB.registerModuleAnalyses(MAM);
      PB.registerCGSCCAnalyses(CGAM);
      PB.registerFunctionAnalyses(FAM);
      PB.registerLoopAnalyses(LAM);
      PB.crossRegisterProxies(LAM, FAM, CGAM, MAM);

      ModulePassManager MPM;

      MPM.addPass(GlobalDCEPass());

      FunctionPassManager FPM;
      FPM.addPass(ADCEPass());
      FPM.addPass(DCEPass());

      MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));

      MPM.run(*preUnrollClone, MAM);
    }
    StripDebugInfo(*preUnrollClone);
    if (verifyModule(*preUnrollClone, &errs())) {
      errs() << "Fault module has invalid IR\n";
    } else {
      dump_module(*preUnrollClone, "../funcSkip.ll");
      outs() << "Wrote funcSkip.ll\n";
    }

  } else {
    errs() << "Invalid mode. Use 0 or 1\n";
    return 1;
  }

  std::string bmcCmdCorrect = "../llvmbmc ../original.ll --dump-solver-query "
                              "-f main --var-suffix correct ";
  run_command(bmcCmdCorrect);
  run_command("cp /tmp/test.smt2 ../correct.smt2");
  if (mode == LOOP_SKIP) {
    std::string bmcCmdFaulty = "../llvmbmc ../loopSkip.ll --dump-solver-query "
                               "-f main --var-suffix faulty ";
    run_command(bmcCmdFaulty);
    run_command("cp /tmp/test.smt2 ../loopFault.smt2");
  } else {
    std::string bmcCmdFaulty = "../llvmbmc ../funcSkip.ll --dump-solver-query "
                               "-f main --var-suffix faulty ";
    run_command(bmcCmdFaulty);
    run_command("cp /tmp/test.smt2 ../funcSkip.smt2");
  }

  return 0;
}