#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"

#include "llvm/Analysis/ConstantFolding.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/Path.h"
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
#include <utility>
#include <vector>

#include "json_parser.h"

using namespace llvm;
void run_command(const std::string &cmd) {
  int ret = system(cmd.c_str());
  if (ret != 0) {
    std::cerr << "Command failed!\n";
    exit(1);
  }
}

void dump_module(llvm::Module &M, const std::string &filename) {
  // Create parent directories.
  SmallString<256> path(filename);
  sys::path::remove_filename(path);

  if (!path.empty()) {
    if (std::error_code EC = llvm::sys::fs::create_directories(path)) {
      llvm::errs() << "Failed to create directories: " << EC.message() << "\n";
      return;
    }
  }

  std::error_code EC;
  llvm::raw_fd_ostream out(filename, EC);

  if (EC) {
    llvm::errs() << "Failed to open file '" << filename << "': " << EC.message()
                 << "\n";
    return;
  }

  M.print(out, nullptr);
}

/// Trace a value backwards to its original AllocaInst, GlobalVariable, or
/// Constant.
Value *traceArgToRoot(Value *V, unsigned depth = 0) {
  // Hard depth limit — avoid stack overflow on deep call chains
  if (depth > 8)
    return V;

  std::set<Value *> Visited;

  while (V && Visited.insert(V).second) {

    if (isa<Constant>(V))
      return V;

    if (auto *GEP = dyn_cast<GetElementPtrInst>(V)) {
      V = GEP->getPointerOperand();
      continue;
    }

    if (auto *BC = dyn_cast<BitCastInst>(V)) {
      V = BC->getOperand(0);
      continue;
    }

    if (auto *CI = dyn_cast<CastInst>(V)) {
      V = CI->getOperand(0);
      continue;
    }

    if (auto *Arg = dyn_cast<Argument>(V)) {
      Function *F = Arg->getParent();

      // If multiple callers pass different values, we can't resolve
      // to a single constant — bail out early instead of recursing
      // into every call site.
      Value *ResolvedVal = nullptr;
      bool Ambiguous = false;

      for (User *U : F->users()) {
        auto *CB = dyn_cast<CallBase>(U);
        if (!CB || CB->getCalledFunction() != F)
          continue;

        Value *Operand = CB->getArgOperand(Arg->getArgNo());

        // Trace this call site's argument (with incremented depth)
        Value *Root = traceArgToRoot(Operand, depth + 1);

        if (!ResolvedVal) {
          ResolvedVal = Root;
        } else if (ResolvedVal != Root) {
          // Different call sites pass different values — ambiguous
          Ambiguous = true;
          break;
        }
      }

      if (Ambiguous || !ResolvedVal)
        return V; // Can't resolve to a single root — return the arg itself

      V = ResolvedVal;
      continue;
    }

    if (auto *I = dyn_cast<Instruction>(V)) {

      if (Constant *C =
              ConstantFoldInstruction(I, I->getModule()->getDataLayout()))
        return C;

      if (auto *BO = dyn_cast<BinaryOperator>(I)) {
        Value *L = traceArgToRoot(BO->getOperand(0), depth + 1);
        Value *R = traceArgToRoot(BO->getOperand(1), depth + 1);

        auto *LC = dyn_cast<ConstantInt>(L);
        auto *RC = dyn_cast<ConstantInt>(R);

        if (LC && RC) {
          APInt LV = LC->getValue();
          APInt RV = RC->getValue();

          switch (BO->getOpcode()) {
          case Instruction::Add:
            return ConstantInt::get(I->getType(), LV + RV);
          case Instruction::Sub:
            return ConstantInt::get(I->getType(), LV - RV);
          case Instruction::Mul:
            return ConstantInt::get(I->getType(), LV * RV);
          case Instruction::UDiv:
            if (!RV.isZero())
              return ConstantInt::get(I->getType(), LV.udiv(RV));
            break;
          case Instruction::SDiv:
            if (!RV.isZero())
              return ConstantInt::get(I->getType(), LV.sdiv(RV));
            break;
          default:
            break;
          }
        }
      }

      if (auto *PN = dyn_cast<PHINode>(I)) {
        Constant *First = nullptr;
        bool Same = true;

        for (unsigned i = 0; i < PN->getNumIncomingValues(); i++) {
          Value *Root = traceArgToRoot(PN->getIncomingValue(i), depth + 1);
          auto *C = dyn_cast<Constant>(Root);
          if (!C) {
            Same = false;
            break;
          }
          if (!First)
            First = C;
          else if (First != C) {
            Same = false;
            break;
          }
        }

        if (Same && First)
          return First;
      }

      if (auto *SI = dyn_cast<SelectInst>(I)) {
        Value *Cond = traceArgToRoot(SI->getCondition(), depth + 1);
        if (auto *CC = dyn_cast<ConstantInt>(Cond)) {
          if (CC->isZero())
            return traceArgToRoot(SI->getFalseValue(), depth + 1);
          return traceArgToRoot(SI->getTrueValue(), depth + 1);
        }
      }
    }

    return V;
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

static void emitAssert(IRBuilder<> &builder, LLVMContext &ctx, Value *cond,
                       Function *parentFn) {
  Module *M = parentFn->getParent();

  // Get or declare: void _Z6assertb(i1 noundef zeroext)
  const char *AssertName = "_Z6assertb";
  Function *AssertFn = M->getFunction(AssertName);
  if (!AssertFn) {
    FunctionType *AssertTy =
        FunctionType::get(Type::getVoidTy(ctx), {Type::getInt1Ty(ctx)}, false);
    AssertFn =
        Function::Create(AssertTy, GlobalValue::ExternalLinkage, AssertName, M);
    AssertFn->addParamAttr(0, Attribute::NoUndef);
    AssertFn->addParamAttr(0, Attribute::ZExt);
  }

  CallInst *call = builder.CreateCall(AssertFn, {cond});
  call->addParamAttr(0, Attribute::NoUndef);
  call->addParamAttr(0, Attribute::ZExt);
}

static void zeroFillThenStoreU64(IRBuilder<> &builder, LLVMContext &ctx,
                                 Value *basePtr, uint64_t allocSize,
                                 bool haveVal, uint64_t val) {
  builder.CreateMemSet(basePtr, builder.getInt8(0), allocSize, Align(1));
  if (!haveVal || allocSize == 0)
    return;

  unsigned numBytes = (unsigned)std::min<uint64_t>(allocSize, 8);
  Type *i8Ty = Type::getInt8Ty(ctx);

  for (unsigned i = 0; i < numBytes; i++) {
    uint8_t byteVal = (uint8_t)((val >> (i * 8)) & 0xFF);
    if (byteVal == 0)
      continue; // buffer is already zeroed by the memset above

    Value *bytePtr = builder.CreateInBoundsGEP(
        i8Ty, basePtr, builder.getInt32(i), "byte" + std::to_string(i));
    builder.CreateStore(builder.getInt8(byteVal), bytePtr);
  }
}

void createDynamicDriverFunction(Module &OriginalM, Module &ExtractedM,
                                 Function *TargetF,
                                 const JsonObject &testcase) {
  LLVMContext &ctx = ExtractedM.getContext();

  FunctionType *driverTy = FunctionType::get(Type::getInt32Ty(ctx), false);
  Function *driver = Function::Create(driverTy, GlobalValue::ExternalLinkage,
                                      "main", &ExtractedM);

  BasicBlock *entry = BasicBlock::Create(ctx, "entry", driver);
  IRBuilder<> builder(entry);

  std::vector<Value *> callArgs;
  std::vector<Value *> argPtrsByPos(TargetF->arg_size(), nullptr);
  std::vector<uint64_t> argAllocSizeByPos(TargetF->arg_size(), 0);

  std::vector<const JsonValue *> positionalVals;
  for (auto &kv : testcase) {
    if (kv.first == "output")
      continue;
    positionalVals.push_back(&kv.second);
  }

  if (positionalVals.size() != TargetF->arg_size()) {
    errs() << "Warning: testcase has " << positionalVals.size()
           << " positional values but " << TargetF->getName() << " has "
           << TargetF->arg_size() << " arguments. "
           << "Extra/missing args will fall back to zero.\n";
  }
  int outputArgPos = -1;
  if (jsonHas(testcase, "output")) {
    const JsonValue &outVal = jsonGet(testcase, "output");
    if (outVal.isString) {
      int pos = 0;
      for (auto &kv : testcase) {
        if (kv.first == "output")
          continue;
        if (kv.first == outVal.strVal) {
          outputArgPos = pos;
          break;
        }
        pos++;
      }
    }
  }
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

    bool haveJsonVal =
        i < positionalVals.size() && !positionalVals[i]->isString;
    uint64_t jsonVal = haveJsonVal ? positionalVals[i]->asUInt64() : 0;
    bool isOutputArg = ((int)i == outputArgPos);
    bool doStore = haveJsonVal && !isOutputArg;

    if (argTy->isPointerTy()) {
      Value *ptr = nullptr;
      uint64_t allocSize = 0;
      if (root) {
        if (auto *AI = dyn_cast<AllocaInst>(root)) {
          Type *allocTy = AI->getAllocatedType();
          std::string name = AI->getName().str();
          MDNode *N = MDNode::get(ctx, MDString::get(ctx, name));
          if (name.empty())
            name = "buf";
          AllocaInst *newAlloc = builder.CreateAlloca(allocTy, nullptr, name);
          newAlloc->setAlignment(Align(16));
          newAlloc->setMetadata("llvmbmc.var", N);
          allocSize = ExtractedM.getDataLayout().getTypeAllocSize(allocTy);

          zeroFillThenStoreU64(builder, ctx, newAlloc, allocSize, doStore,
                               jsonVal);

          // uint8_t fillByte =
          //     haveJsonVal ? (uint8_t)(jsonVal & 0xFF) : (uint8_t)0;
          // builder.CreateMemSet(newAlloc, builder.getInt8(fillByte),
          // allocSize,
          //                      Align(1));

          ptr = builder.CreateBitCast(newAlloc, argTy);
          errs() << "  Arg " << i << " (" << arg->getName()
                 << "): alloca of type " << *allocTy << " named " << name
                 << "\n";
        } else if (auto *GV = dyn_cast<GlobalVariable>(root)) {
          Type *valTy = GV->getValueType();
          std::string name = GV->getName().str();
          MDNode *N = MDNode::get(ctx, MDString::get(ctx, name));
          if (name.empty())
            name = "buf";
          AllocaInst *newAlloc = builder.CreateAlloca(valTy, nullptr, name);
          newAlloc->setAlignment(Align(16));
          newAlloc->setMetadata("llvmbmc.var", N);
          allocSize = ExtractedM.getDataLayout().getTypeAllocSize(valTy);
          zeroFillThenStoreU64(builder, ctx, newAlloc, allocSize, doStore,
                               jsonVal);
          // uint8_t fillByte =
          //     haveJsonVal ? (uint8_t)(jsonVal & 0xFF) : (uint8_t)0;
          // builder.CreateMemSet(newAlloc, builder.getInt8(fillByte),
          // allocSize,
          //                      Align(1));

          ptr = builder.CreateBitCast(newAlloc, argTy);
          errs() << "  Arg " << i << " (" << arg->getName()
                 << "): global of type " << *valTy << " named " << name << "\n";
        }
      }

      if (!ptr) {
        unsigned fallbackSize = inferPointerAllocSize(arg, 128);
        // unsigned allocSize = inferPointerAllocSize(arg, 128);
        ArrayType *arrTy = ArrayType::get(Type::getInt8Ty(ctx), fallbackSize);
        AllocaInst *alloc =
            builder.CreateAlloca(arrTy, nullptr, arg->getName() + "_buf");
        MDNode *N = MDNode::get(ctx, MDString::get(ctx, alloc->getName()));
        alloc->setAlignment(Align(16));
        alloc->setMetadata("llvmbmc.var", N);
        allocSize = fallbackSize;

        zeroFillThenStoreU64(builder, ctx, alloc, fallbackSize, doStore,
                             jsonVal);
        // uint8_t fillByte = haveJsonVal ? (uint8_t)(jsonVal & 0xFF) :
        // (uint8_t)0; builder.CreateMemSet(alloc, builder.getInt8(fillByte),
        // fallbackSize,
        //                      Align(1));

        ptr = builder.CreateBitCast(alloc, argTy);
        errs() << "  Arg " << i << " (" << arg->getName()
               << "): fallback -> alloca [" << allocSize << " x i8]\n";
      }
      callArgs.push_back(ptr);
      argPtrsByPos[i] = ptr;
      argAllocSizeByPos[i] = allocSize;

    } else if (argTy->isIntegerTy()) {
      if (haveJsonVal) {
        callArgs.push_back(ConstantInt::get(argTy, jsonVal));
        errs() << "  Arg " << i << " (" << arg->getName()
               << "): testcase value " << jsonVal << "\n";
      } else if (root && isa<ConstantInt>(root)) {
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

  // Output assertion
  if (jsonHas(testcase, "output")) {
    const JsonValue &outVal = jsonGet(testcase, "output");
    if (outVal.isString) {
      std::string outKeyName = outVal.strVal;
      if (outKeyName == "ret") {

        if (positionalVals.empty()) {
          errs() << "  Warning: 'ret' output requested but testcase has no "
                    "positional values\n";
        } else if (TargetF->getReturnType()->isVoidTy()) {
          errs() << "  Warning: 'ret' output requested but function has "
                    "void return type\n";
        } else if (!TargetF->getReturnType()->isIntegerTy()) {
          errs() << "  Warning: 'ret' output requested but return type is "
                    "not an integer\n";
        } else {
          long long expected = positionalVals.back()->asUInt64();
          Type *retTy = TargetF->getReturnType();
          Value *expectedC = ConstantInt::get(retTy, expected);
          Value *cmp = builder.CreateICmpEQ(callI, expectedC, "out_cmp");

          emitAssert(builder, ctx, cmp, driver);
          errs() << "  Inserted output assertion: return value == " << expected
                 << "\n";
        }
      } else {

        int outPos = -1;
        long long expected = 0;
        bool foundExpected = false;
        int pos = 0;
        for (auto &kv : testcase) {
          if (kv.first == "output")
            continue;
          if (kv.first == outKeyName) {
            outPos = pos;
            expected = kv.second.asUInt64();
            foundExpected = true;
          }
          pos++;
        }

        if (outPos >= 0 && foundExpected &&
            (size_t)outPos < argPtrsByPos.size() && argPtrsByPos[outPos]) {
          Value *outPtr = argPtrsByPos[outPos];
          uint64_t outAllocSize = argAllocSizeByPos[outPos];

          Value *cmp = nullptr;
          if (outAllocSize >= 8) {
            Value *i8Ptr = builder.CreateBitCast(
                outPtr, PointerType::getUnqual(Type::getInt8Ty(ctx)));
            Value *actual = builder.CreateLoad(Type::getInt8Ty(ctx), i8Ptr,
                                               "out_actual_i8");
            Value *expectedC = ConstantInt::get(Type::getInt8Ty(ctx), expected);
            cmp = builder.CreateICmpEQ(actual, expectedC, "out_cmp");
          } else if (outAllocSize > 0) {
            Type *narrowTy = Type::getIntNTy(ctx, (unsigned)outAllocSize * 8);
            Value *narrowPtr =
                builder.CreateBitCast(outPtr, PointerType::getUnqual(narrowTy));
            Value *actual =
                builder.CreateLoad(narrowTy, narrowPtr, "out_actual_narrow");
            Value *expectedC = ConstantInt::get(narrowTy, expected);
            cmp = builder.CreateICmpEQ(actual, expectedC, "out_cmp");
          }

          if (cmp) {
            emitAssert(builder, ctx, cmp, driver);
            errs() << "  Inserted output assertion: arg" << outPos << " ("
                   << outKeyName << ") i64[0] == " << expected << "\n";
          } else {
            errs() << "  Warning: output buffer for '" << outKeyName
                   << "' has zero size, skipping assertion\n";
          }
        } else {
          errs() << "  Warning: could not resolve output assertion for '"
                 << outKeyName << "' (bad position or non-pointer arg)\n";
        }
      }
    }
  }

  builder.CreateRet(builder.getInt32(0));

  // Prevent the driver from being optimized away or inlined
  driver->addFnAttr(Attribute::NoInline);
  driver->addFnAttr(Attribute::OptimizeNone);

  errs() << "Created driver function for " << TargetF->getName() << "\n";
}

std::unique_ptr<Module> extractFunction(Module &M, Function *F) {
  auto newMod = CloneModule(M);
  for (GlobalVariable &GV : newMod->globals()) {
    if (!GV.hasInitializer()) {
      // Give it a zero initializer of the correct type
      GV.setInitializer(Constant::getNullValue(GV.getValueType()));
      GV.setLinkage(GlobalValue::InternalLinkage);
    }
  }
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
    errs() << "Usage: ./mayo_pass <input.ll> [funcName]\n";
    return 1;
  }

  std::string inputFile = argv[1];
  std::string funcName = argv[2];

  LLVMContext ctx;
  SMDiagnostic err;
  auto module = parseIRFile(inputFile, err, ctx);
  if (!module) {
    err.print("Input File not found", errs());
    errs() << "Usage: ./mayo_pass <input.ll> [funcName]\n";

    return 1;
  }

  Function *target = module->getFunction(funcName);
  if (!target) {
    std::cout << "Target Function not found: " << funcName << std::endl;
    errs() << "Usage: ./mayo_pass <input.ll> [funcName]\n";

    return 1;
  }

  auto funcModule = extractFunction(*module, target);
  if (!funcModule) {
    std::cout << "Failed to create extracted module" << std::endl;
    return 1;
  }

  for (GlobalVariable &GV : funcModule->globals()) {
    if (GV.isDeclaration() || !GV.hasInitializer()) {
      GV.setInitializer(Constant::getNullValue(GV.getValueType()));
      GV.setLinkage(GlobalValue::InternalLinkage);
      GV.setConstant(false);
      GV.setExternallyInitialized(false);
    }
  }
  StripDebugInfo(*funcModule);

  if (Function *F = funcModule->getFunction(funcName)) {
    F->setLinkage(GlobalValue::ExternalLinkage);
    F->setCallingConv(CallingConv::C);
    F->removeRetAttr(Attribute::Range);
  }

  {
    Function *extractedFunc = funcModule->getFunction(funcName);
    if (extractedFunc) {

      errs() << "Creating driver function for " << funcName << "...\n";

      std::string jsonPath = "../function_inputs/" + funcName + ".json";

      std::vector<JsonObject> testcases = readJsonLines(jsonPath);
      if (testcases.empty()) {
        errs() << "No testcases found in " << jsonPath << "\n";
        return 1;
      }
      const JsonObject &testcase = testcases.front();
      createDynamicDriverFunction(*module, *funcModule, extractedFunc,
                                  testcase);
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
      // FPM.addPass(LabeledUnrollPass());
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
    errs() << "Invalid IR\n";
    return 1;
  }
  std::string fn = "../results/" + funcName + ".ll";
  dump_module(*funcModule, fn);
  outs() << "Wrote IR for " << funcName + "\n";

  return 0;
}