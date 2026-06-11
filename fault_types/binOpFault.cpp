#include "llvm/IR/Constants.h"
#include "llvm/IR/DebugInfo.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/Path.h"
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

#include <array>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <llvm-20/llvm/ADT/SmallVector.h>
#include <llvm-20/llvm/IR/Function.h>
#include <llvm-20/llvm/IR/InstrTypes.h>
#include <llvm-20/llvm/IR/Instruction.h>
#include <llvm-20/llvm/Support/Casting.h>
#include <llvm-20/llvm/Transforms/Utils/ValueMapper.h>

#include <memory>

using namespace llvm;
void run_command(const std::string &cmd) {
  int ret = system(cmd.c_str());
  if (ret != 0) {
    std::cerr << "Command failed!\n";
    exit(1);
  }
}

std::string run_command_capture(const std::string &cmd, int &exitCode) {
  std::string fullCmd = cmd + " 2>&1";
  FILE *pipe = popen(fullCmd.c_str(), "r");
  if (!pipe) {
    exitCode = -1;
    return "file open failed";
  }
  std::string output;
  std::array<char, 256> buf;
  while (fgets(buf.data(), buf.size(), pipe)) {
    output += buf.data();
  }
  int status = pclose(pipe);
  exitCode = WIFEXITED(status) ? WEXITSTATUS(status) : -1;
  return output;
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

enum class FaultModel { Undef, Zero, OpB, OpC };

class SkipBinOpPass : public PassInfoMixin<SkipBinOpPass> {
  FaultModel FM;
  int line;
  static std::string valueName(Value *V) {
    if (V->hasName())
      return "%" + V->getName().str();
    std::string s;
    raw_string_ostream os(s);
    V->printAsOperand(os, false);
    return os.str();
  }
static Instruction *getInst(Function &F, unsigned targetInst) {
  unsigned idx = 0;

  for (BasicBlock &BB : F) {
    for (Instruction &I : BB) {
      if (idx == targetInst)
        return &I;
      ++idx;
    }
  }

  return nullptr;
}

public:
  explicit SkipBinOpPass(FaultModel FM = FaultModel::OpB, int line = 0)
      : FM(FM), line(line) {}

  PreservedAnalyses run(Function &F, FunctionAnalysisManager &) {

    bool modified = false;

    Instruction *I = getInst(F, line);
    // outs() << *I;
    if (!I) {
      errs() << "No instruction found at line " << line << "\n";
      // errs() << M;
      return PreservedAnalyses::all();
    }
    if (auto *binOp = dyn_cast<BinaryOperator>(I)) {

      Value *b = binOp->getOperand(0);
      Value *c = binOp->getOperand(1);
      Type *ty = binOp->getType();

      Value *faulty = nullptr;

      switch (FM) {
      case FaultModel::Undef:
        faulty = UndefValue::get(ty);
        binOp->replaceAllUsesWith(faulty);
        binOp->eraseFromParent();
        modified = true;
        break;
      case FaultModel::Zero:
        faulty = ConstantInt::get(ty, 0);
        binOp->replaceAllUsesWith(faulty);
        binOp->eraseFromParent();
        modified = true;
        break;
      case FaultModel::OpB:
        binOp->setOperand(0, UndefValue::get(b->getType()));
        modified = true;
        goto done;
        break;
      case FaultModel::OpC:
        binOp->setOperand(1, UndefValue::get(c->getType()));
        modified = true;
        goto done;
      }
    }

  done:
    if (modified)
      return PreservedAnalyses::none();
    else
      return PreservedAnalyses::all();
  }
};

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

  if (argc < 4) {
    std::cerr << "Usage: ./binOpFault <input.ll> <function> <line>\n";
    return 1;
  }

  std::string inputFile = argv[1];
  std::string funcName = argv[2];
  int line = atoi(argv[3]);
  LLVMContext ctx;
  SMDiagnostic err;

  auto module = parseIRFile(inputFile, err, ctx);
  if (!module) {
    err.print("error", errs());
    return 1;
  }

  Function *target = module->getFunction(funcName);
  if (!target) {
    errs() << "Function  not found in input module\n";
    errs() << "Available functions:\n";
    for (Function &F : *module) {
      errs() << "  " << F.getName() << (F.isDeclaration() ? " [decl]" : "")
             << "\n";
    }
    return 1;
  }

  auto funcModule = extractFunction(*module, target);
  if (!funcModule) {
    errs() << "Failed to create extracted module\n";
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
  // outs() << *funcModule;
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
    {
      FunctionPassManager FPM;
      FPM.addPass(LoopSimplifyPass());
      FPM.addPass(LCSSAPass());
      FPM.addPass(createFunctionToLoopPassAdaptor(LoopRotatePass()));
      FPM.addPass(createFunctionToLoopPassAdaptor(IndVarSimplifyPass()));
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
  // outs() << *funcModule;
  if (verifyModule(*funcModule, &errs())) {
    errs() << "Invalid IR\n";
    return 1;
  }

  dump_module(*funcModule, "../results/original.ll");
  outs() << "Wrote original.ll\n";

  // auto mod = parseIRFile("original.ll", err, ctx);
  // outs() << *funcModule;

  // run_command("../../llvmbmc ../original.ll --dump-solver-query -f main");
  // run_command("cp /tmp/test.smt2 ../correct.smt2");
  struct FaultEntry {
    FaultModel model;
    const char *name;
  };

  FaultEntry faults[] = {
      {FaultModel::Undef, "undef"},
      {FaultModel::Zero, "zero"},
      {FaultModel::OpB, "opB"},
      {FaultModel::OpC, "opC"},
  };

  for (auto &fe : faults) {

    auto cloned = CloneModule(*funcModule);

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

    FunctionPassManager FPM;
    FPM.addPass(PromotePass());
    FPM.addPass(SkipBinOpPass(fe.model, line));
    Function *TargetF = cloned->getFunction(funcName);

    if (!TargetF) {
      errs() << "Function not found: " << funcName << "\n";
      continue;
    }

    FPM.run(*TargetF, FAM);

    std::string llFile =
        std::string("../results/binOpSkip/faulty_") + fe.name + ".ll";
    std::string smt2File =
        std::string("../results/binOpSkip/faulty_") + fe.name + ".smt2";

    dump_module(*cloned, llFile);
    outs() << "Wrote " << llFile << "\n";
    // std::string bmcOutput = run_command_capture(
    //     "../llvmbmc " + llFile + " --dump-solver-query -f main", exitCode);
    // run_command("cp /tmp/test.smt2 " + smt2File);
  }

  return 0;
}