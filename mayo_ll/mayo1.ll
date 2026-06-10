; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

%struct.AES256_CTR_DRBG_struct = type { [32 x i8], [16 x i8], i32 }
%struct.shake128incctx = type { ptr }

@__const.example_mayo.msg = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 14, [31 x i8] zeroinitializer }>, align 1
@f_tail = internal unnamed_addr constant [4 x i8] c"\08\01\01\00", align 1, !dbg !0
@pqmayo_MAYO_1_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41
@pqmayo_MAYO_1_ref_uint64_t_blocker = dso_local global i64 0, align 8, !dbg !56
@pqmayo_MAYO_1_ref_unsigned_char_blocker = dso_local global i8 0, align 1, !dbg !60
@KeccakF_RoundConstants = internal unnamed_addr constant [24 x i64] [i64 1, i64 32898, i64 -9223372036854742902, i64 -9223372034707259392, i64 32907, i64 2147483649, i64 -9223372034707259263, i64 -9223372036854743031, i64 138, i64 136, i64 2147516425, i64 2147483658, i64 2147516555, i64 -9223372036854775669, i64 -9223372036854742903, i64 -9223372036854743037, i64 -9223372036854743038, i64 -9223372036854775680, i64 32778, i64 -9223372034707292150, i64 -9223372034707259263, i64 -9223372036854742912, i64 2147483649, i64 -9223372034707259384], align 8, !dbg !64
@Rcon = internal unnamed_addr constant [10 x i8] c"\01\02\04\08\10 @\80\1B6", align 1, !dbg !75
@mayo_secure_free.memset_func = internal global ptr @memset, align 4, !dbg !84
@mayo_secure_clear.memset_func = internal global ptr @memset, align 4, !dbg !92
@DRBG_ctx = dso_local global %struct.AES256_CTR_DRBG_struct zeroinitializer, align 4, !dbg !102

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @main() local_unnamed_addr #0 !dbg !128 {
entry:
  %call = call fastcc i32 @example_mayo(ptr noundef null) #4, !dbg !132
  ret i32 %call, !dbg !133
}

; Function Attrs: nounwind
define internal fastcc range(i32 -1, 1) i32 @example_mayo(ptr noundef %p) unnamed_addr #0 !dbg !134 {
entry:
  %msglen = alloca i32, align 4
  %smlen = alloca i32, align 4
  %epk = alloca [18705 x i64], align 8
  %esk = alloca [18603 x i64], align 8
  %msg = alloca [32 x i8], align 1
  %msg2 = alloca [32 x i8], align 1
    #dbg_value(ptr null, !168, !DIExpression(), !169)
    #dbg_value(i32 32, !170, !DIExpression(), !169)
  store i32 32, ptr %msglen, align 4, !dbg !171
    #dbg_value(i32 32, !170, !DIExpression(), !169)
    #dbg_value(i32 486, !172, !DIExpression(), !169)
  store i32 486, ptr %smlen, align 4, !dbg !173
  %call = call dereferenceable_or_null(1420) ptr @calloc(i32 noundef 1420, i32 noundef 1) #5, !dbg !174
    #dbg_value(ptr %call, !175, !DIExpression(), !169)
  %call1 = call dereferenceable_or_null(24) ptr @calloc(i32 noundef 24, i32 noundef 1) #5, !dbg !176
    #dbg_value(ptr %call1, !177, !DIExpression(), !169)
    #dbg_declare(ptr %epk, !178, !DIExpression(), !183)
    #dbg_declare(ptr %esk, !184, !DIExpression(), !189)
  %0 = load i32, ptr %msglen, align 4, !dbg !190
    #dbg_value(i32 %0, !170, !DIExpression(), !169)
  %add2 = add i32 %0, 454, !dbg !191
  %call3 = call ptr @calloc(i32 noundef %add2, i32 noundef 1) #5, !dbg !192
    #dbg_value(ptr %call3, !193, !DIExpression(), !169)
    #dbg_declare(ptr %msg, !194, !DIExpression(), !195)
  call void @mayo_memcpy(ptr %msg, ptr @__const.example_mayo.msg, i32 32), !dbg !195
    #dbg_declare(ptr %msg2, !196, !DIExpression(), !197)
  call void @mayo_memset(ptr %msg2, i8 0, i32 32), !dbg !197
  %call4 = call i32 @pqmayo_MAYO_1_ref_mayo_keypair(ptr noundef null, ptr noundef %call, ptr noundef %call1) #4, !dbg !198
    #dbg_value(i32 0, !199, !DIExpression(), !169)
  %call5 = call i32 @pqmayo_MAYO_1_ref_mayo_expand_sk(ptr noundef null, ptr noundef %call1, ptr noundef nonnull %esk) #4, !dbg !200
    #dbg_value(i32 0, !199, !DIExpression(), !169)
  %call11 = call i32 @pqmayo_MAYO_1_ref_mayo_expand_pk(ptr noundef null, ptr noundef %call, ptr noundef nonnull %epk) #4, !dbg !201
    #dbg_value(i32 0, !199, !DIExpression(), !169)
  %1 = load i32, ptr %msglen, align 4, !dbg !202
    #dbg_value(i32 %1, !170, !DIExpression(), !169)
    #dbg_value(ptr %smlen, !172, !DIExpression(DW_OP_deref), !169)
  %call17 = call i32 @pqmayo_MAYO_1_ref_mayo_sign(ptr noundef null, ptr noundef %call3, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #4, !dbg !203
    #dbg_value(i32 0, !199, !DIExpression(), !169)
  %2 = load i32, ptr %smlen, align 4, !dbg !204
    #dbg_value(i32 %2, !172, !DIExpression(), !169)
    #dbg_value(ptr %msglen, !170, !DIExpression(DW_OP_deref), !169)
  %call23 = call i32 @pqmayo_MAYO_1_ref_mayo_open(ptr noundef null, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call3, i32 noundef %2, ptr noundef %call) #4, !dbg !205
    #dbg_value(i32 %call23, !199, !DIExpression(), !169)
  %cmp24.not = icmp eq i32 %call23, 0, !dbg !206
  br i1 %cmp24.not, label %lor.lhs.false, label %err, !dbg !208

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %msglen, align 4, !dbg !209
    #dbg_value(i32 %3, !170, !DIExpression(), !169)
  %call27 = call i32 @memcmp(ptr noundef nonnull %msg, ptr noundef nonnull %msg2, i32 noundef %3) #6, !dbg !210
  %tobool.not = icmp eq i32 %call27, 0, !dbg !210
  br i1 %tobool.not, label %if.end30, label %err, !dbg !208

if.end30:                                         ; preds = %lor.lhs.false
    #dbg_value(i32 0, !199, !DIExpression(), !169)
  %4 = load i32, ptr %msglen, align 4, !dbg !211
    #dbg_value(i32 %4, !170, !DIExpression(), !169)
  %call32 = call i32 @pqmayo_MAYO_1_ref_mayo_verify(ptr noundef null, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call3, ptr noundef %call) #4, !dbg !212
    #dbg_value(i32 %call32, !199, !DIExpression(), !169)
  %sext = sub nsw i32 0, %call32, !dbg !213
  br label %err, !dbg !213

err:                                              ; preds = %if.end30, %entry, %lor.lhs.false
  %res.0 = phi i32 [ -1, %lor.lhs.false ], [ -1, %entry ], [ %sext, %if.end30 ], !dbg !169
    #dbg_value(i32 %res.0, !199, !DIExpression(), !169)
    #dbg_label(!215, !216)
  call void @free(ptr noundef %call) #6, !dbg !217
  call void @mayo_secure_free(ptr noundef %call1, i32 noundef 24) #4, !dbg !218
  call void @free(ptr noundef %call3) #6, !dbg !219
  ret i32 %res.0, !dbg !220
}

; Function Attrs: allocsize(0,1)
declare dso_local ptr @calloc(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local void @mayo_memset(ptr noundef %dst, i8 noundef zeroext %val, i32 noundef %len) local_unnamed_addr #0 !dbg !221 {
entry:
    #dbg_value(ptr %dst, !225, !DIExpression(), !226)
    #dbg_value(i8 %val, !227, !DIExpression(), !226)
    #dbg_value(i32 %len, !228, !DIExpression(), !226)
    #dbg_value(ptr %dst, !229, !DIExpression(), !226)
    #dbg_value(i32 0, !230, !DIExpression(), !232)
  br label %for.cond, !dbg !233

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !234
    #dbg_value(i32 %i.0, !230, !DIExpression(), !232)
  %exitcond = icmp ne i32 %i.0, %len, !dbg !235
  br i1 %exitcond, label %for.body, label %for.end, !dbg !237

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %dst, i32 %i.0, !dbg !238
  store i8 %val, ptr %arrayidx, align 1, !dbg !239
  %inc = add i32 %i.0, 1, !dbg !240
    #dbg_value(i32 %inc, !230, !DIExpression(), !232)
  br label %for.cond, !dbg !241, !llvm.loop !242

for.end:                                          ; preds = %for.cond
  ret void, !dbg !245
}

; Function Attrs: nounwind
define dso_local void @mayo_memcpy(ptr noundef %dst, ptr noundef %src, i32 noundef %len) local_unnamed_addr #0 !dbg !246 {
entry:
    #dbg_value(ptr %dst, !251, !DIExpression(), !252)
    #dbg_value(ptr %src, !253, !DIExpression(), !252)
    #dbg_value(i32 %len, !254, !DIExpression(), !252)
    #dbg_value(ptr %dst, !255, !DIExpression(), !252)
    #dbg_value(ptr %src, !256, !DIExpression(), !252)
    #dbg_value(i32 0, !259, !DIExpression(), !261)
  br label %for.cond, !dbg !262

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !263
    #dbg_value(i32 %i.0, !259, !DIExpression(), !261)
  %exitcond = icmp ne i32 %i.0, %len, !dbg !264
  br i1 %exitcond, label %for.body, label %for.end, !dbg !266

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %src, i32 %i.0, !dbg !267
  %0 = load i8, ptr %arrayidx, align 1, !dbg !267
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %dst, i32 %i.0, !dbg !268
  store i8 %0, ptr %arrayidx1, align 1, !dbg !269
  %inc = add i32 %i.0, 1, !dbg !270
    #dbg_value(i32 %inc, !259, !DIExpression(), !261)
  br label %for.cond, !dbg !271, !llvm.loop !272

for.end:                                          ; preds = %for.cond
  ret void, !dbg !274
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !275 {
entry:
    #dbg_value(ptr %p, !306, !DIExpression(), !307)
    #dbg_value(ptr %pk, !308, !DIExpression(), !307)
    #dbg_value(ptr %sk, !309, !DIExpression(), !307)
    #dbg_value(i32 0, !310, !DIExpression(), !307)
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #4, !dbg !311
    #dbg_value(i32 0, !310, !DIExpression(), !307)
    #dbg_label(!312, !313)
  ret i32 0, !dbg !314
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !315 {
entry:
  %S = alloca [328 x i8], align 1
  %P = alloca [18525 x i64], align 8
  %P3 = alloca [320 x i64], align 8
  %O = alloca [624 x i8], align 1
  %P3_upper = alloca [180 x i64], align 8
    #dbg_value(ptr %p, !316, !DIExpression(), !317)
    #dbg_value(ptr %cpk, !318, !DIExpression(), !317)
    #dbg_value(ptr %csk, !319, !DIExpression(), !317)
    #dbg_value(i32 0, !320, !DIExpression(), !317)
    #dbg_value(ptr %csk, !321, !DIExpression(), !317)
    #dbg_declare(ptr %S, !322, !DIExpression(), !326)
    #dbg_declare(ptr %P, !327, !DIExpression(), !331)
    #dbg_declare(ptr %P3, !332, !DIExpression(), !336)
  call void @mayo_memset(ptr %P3, i8 0, i32 2560), !dbg !336
    #dbg_declare(ptr %O, !337, !DIExpression(), !341)
    #dbg_value(i32 5, !342, !DIExpression(), !317)
    #dbg_value(i32 78, !344, !DIExpression(), !317)
    #dbg_value(i32 78, !345, !DIExpression(), !317)
    #dbg_value(i32 8, !346, !DIExpression(), !317)
    #dbg_value(i32 312, !347, !DIExpression(), !317)
    #dbg_value(i32 15405, !348, !DIExpression(), !317)
    #dbg_value(i32 180, !349, !DIExpression(), !317)
    #dbg_value(i32 16, !350, !DIExpression(), !317)
    #dbg_value(i32 24, !351, !DIExpression(), !317)
    #dbg_value(ptr %P, !352, !DIExpression(), !317)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 123240, !dbg !353
    #dbg_value(ptr %add.ptr, !354, !DIExpression(), !317)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 24) #4, !dbg !355
    #dbg_value(ptr %P, !352, !DIExpression(), !317)
  call void @shake256(ptr noundef nonnull %S, i32 noundef 328, ptr noundef %csk, i32 noundef 24) #4, !dbg !357
    #dbg_value(ptr %S, !358, !DIExpression(), !317)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !359
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 624) #4, !dbg !360
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #4, !dbg !361
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #4, !dbg !362
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #6, !dbg !363
    #dbg_declare(ptr %P3_upper, !364, !DIExpression(), !368)
  call void @pqmayo_MAYO_1_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 8) #4, !dbg !369
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !370
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 36, i32 noundef 78) #4, !dbg !371
    #dbg_value(i32 0, !320, !DIExpression(), !317)
    #dbg_label(!372, !373)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 624) #4, !dbg !374
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 24960) #4, !dbg !375
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 2560) #4, !dbg !376
  ret i32 0, !dbg !377
}

; Function Attrs: nounwind
define internal fastcc void @decode(ptr noundef %m, ptr noundef %mdec, i32 noundef range(i32 -2147483567, -2147483648) %mdeclen) unnamed_addr #0 !dbg !378 {
entry:
    #dbg_value(ptr %m, !381, !DIExpression(), !382)
    #dbg_value(ptr %mdec, !383, !DIExpression(), !382)
    #dbg_value(i32 %mdeclen, !384, !DIExpression(), !382)
    #dbg_value(i32 0, !385, !DIExpression(), !382)
  br label %for.cond, !dbg !386

for.cond:                                         ; preds = %for.body, %entry
  %mdec.addr.0 = phi ptr [ %mdec, %entry ], [ %incdec.ptr5, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !388
    #dbg_value(i32 %i.0, !385, !DIExpression(), !382)
    #dbg_value(ptr %mdec.addr.0, !383, !DIExpression(), !382)
  %div = sdiv i32 %mdeclen, 2, !dbg !389
  %cmp = icmp slt i32 %i.0, %div, !dbg !391
  br i1 %cmp, label %for.body, label %for.end, !dbg !392

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %m, i32 %i.0, !dbg !393
  %0 = load i8, ptr %arrayidx, align 1, !dbg !393
  %1 = and i8 %0, 15, !dbg !395
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %mdec.addr.0, i32 1, !dbg !396
    #dbg_value(ptr %incdec.ptr, !383, !DIExpression(), !382)
  store i8 %1, ptr %mdec.addr.0, align 1, !dbg !397
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %m, i32 %i.0, !dbg !398
  %2 = load i8, ptr %arrayidx2, align 1, !dbg !398
  %3 = lshr i8 %2, 4, !dbg !399
    #dbg_value(ptr %incdec.ptr, !383, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !382)
  store i8 %3, ptr %incdec.ptr, align 1, !dbg !400
  %incdec.ptr5 = getelementptr inbounds nuw i8, ptr %mdec.addr.0, i32 2, !dbg !401
    #dbg_value(ptr %incdec.ptr5, !383, !DIExpression(), !382)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !402
    #dbg_value(i32 %inc, !385, !DIExpression(), !382)
  br label %for.cond, !dbg !403, !llvm.loop !404

for.end:                                          ; preds = %for.cond
  %mdec.addr.0.lcssa = phi ptr [ %mdec.addr.0, %for.cond ]
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !388
  %4 = and i32 %mdeclen, -2147483647, !dbg !406
  %cmp6 = icmp eq i32 %4, 1, !dbg !406
  br i1 %cmp6, label %if.then, label %if.end, !dbg !406

if.then:                                          ; preds = %for.end
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %m, i32 %i.0.lcssa, !dbg !408
  %5 = load i8, ptr %arrayidx8, align 1, !dbg !408
  %6 = and i8 %5, 15, !dbg !410
    #dbg_value(ptr %mdec.addr.0.lcssa, !383, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !382)
  store i8 %6, ptr %mdec.addr.0.lcssa, align 1, !dbg !411
  br label %if.end, !dbg !412

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !413
}

; Function Attrs: nounwind
define internal fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %P, ptr noundef %seed_pk) unnamed_addr #0 !dbg !414 {
entry:
    #dbg_value(ptr %p, !417, !DIExpression(), !418)
    #dbg_value(ptr %P, !419, !DIExpression(), !418)
    #dbg_value(ptr %seed_pk, !420, !DIExpression(), !418)
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 144495, ptr noundef %seed_pk, i32 noundef 16) #4, !dbg !421
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 3705, i32 noundef 78) #4, !dbg !422
  ret void, !dbg !423
}

; Function Attrs: nounwind
define internal fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %O, ptr noundef nonnull %P3) unnamed_addr #0 !dbg !424 {
entry:
    #dbg_value(ptr %p, !429, !DIExpression(), !430)
    #dbg_value(ptr %P1, !431, !DIExpression(), !430)
    #dbg_value(ptr %P2, !432, !DIExpression(), !430)
    #dbg_value(ptr %O, !433, !DIExpression(), !430)
    #dbg_value(ptr %P3, !434, !DIExpression(), !430)
    #dbg_value(i32 5, !435, !DIExpression(), !430)
    #dbg_value(i32 78, !436, !DIExpression(), !430)
    #dbg_value(i32 8, !437, !DIExpression(), !430)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #4, !dbg !438
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 5, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 78, i32 noundef 8, i32 noundef 8) #4, !dbg !439
  ret void, !dbg !440
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @pack_m_vecs(ptr noundef nonnull %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) unnamed_addr #0 !dbg !441 {
entry:
    #dbg_value(ptr %in, !444, !DIExpression(), !445)
    #dbg_value(ptr %out, !446, !DIExpression(), !445)
    #dbg_value(i32 36, !447, !DIExpression(), !445)
    #dbg_value(i32 78, !448, !DIExpression(), !445)
    #dbg_value(i32 5, !449, !DIExpression(), !445)
    #dbg_value(ptr %in, !450, !DIExpression(), !445)
    #dbg_value(i32 0, !451, !DIExpression(), !453)
  br label %for.cond, !dbg !454

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !455
    #dbg_value(i32 %i.0, !451, !DIExpression(), !453)
  %exitcond = icmp ne i32 %i.0, 36, !dbg !456
  br i1 %exitcond, label %for.body, label %for.end, !dbg !458

for.body:                                         ; preds = %for.cond
  %div1 = mul nuw nsw i32 %i.0, 39, !dbg !459
  %add.ptr = getelementptr inbounds nuw i8, ptr %out, i32 %div1, !dbg !461
  %mul3 = mul nuw nsw i32 %i.0, 40, !dbg !462
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %in, i32 %mul3, !dbg !463
  %call = call ptr @memmove(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr4, i32 noundef 39) #6, !dbg !464
  %inc = add nuw nsw i32 %i.0, 1, !dbg !465
    #dbg_value(i32 %inc, !451, !DIExpression(), !453)
  br label %for.cond, !dbg !466, !llvm.loop !467

for.end:                                          ; preds = %for.cond
  ret void, !dbg !469
}

declare dso_local ptr @memmove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @P1_times_O(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %O, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !470 {
entry:
    #dbg_value(ptr %p, !473, !DIExpression(), !474)
    #dbg_value(ptr %P1, !475, !DIExpression(), !474)
    #dbg_value(ptr %O, !476, !DIExpression(), !474)
    #dbg_value(ptr %acc, !477, !DIExpression(), !474)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 5, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 78, i32 noundef 78, i32 noundef 8, i32 noundef 1) #4, !dbg !478
  ret void, !dbg !479
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !480 {
entry:
    #dbg_value(i32 5, !483, !DIExpression(), !484)
    #dbg_value(ptr %mat, !485, !DIExpression(), !484)
    #dbg_value(ptr %bs_mat, !486, !DIExpression(), !484)
    #dbg_value(ptr %acc, !487, !DIExpression(), !484)
    #dbg_value(i32 78, !488, !DIExpression(), !484)
    #dbg_value(i32 8, !489, !DIExpression(), !484)
    #dbg_value(i32 8, !490, !DIExpression(), !484)
    #dbg_value(i32 0, !491, !DIExpression(), !493)
  br label %for.cond, !dbg !494

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !495
    #dbg_value(i32 %r.0, !491, !DIExpression(), !493)
  %exitcond2 = icmp ne i32 %r.0, 8, !dbg !496
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !498

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !499

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !502
    #dbg_value(i32 %c.0, !503, !DIExpression(), !504)
  %exitcond1 = icmp ne i32 %c.0, 78, !dbg !505
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !499

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !507

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !510
    #dbg_value(i32 %k.0, !511, !DIExpression(), !512)
  %exitcond = icmp ne i32 %k.0, 8, !dbg !513
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !507

for.body6:                                        ; preds = %for.cond4
  %mul = shl nuw nsw i32 %c.0, 3, !dbg !515
  %add = or disjoint i32 %mul, %k.0, !dbg !517
  %add.ptr.idx = mul nuw nsw i32 %add, 40, !dbg !518
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !518
  %mul8 = shl nuw nsw i32 %c.0, 3, !dbg !519
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !520
  %arrayidx = getelementptr i8, ptr %0, i32 %r.0, !dbg !520
  %1 = load i8, ptr %arrayidx, align 1, !dbg !520
  %mul10 = shl nuw nsw i32 %r.0, 3, !dbg !521
  %add11 = or disjoint i32 %mul10, %k.0, !dbg !522
  %add.ptr13.idx = mul nuw nsw i32 %add11, 40, !dbg !523
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !523
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #4, !dbg !524
  %add14 = add nuw nsw i32 %k.0, 1, !dbg !525
    #dbg_value(i32 %add14, !511, !DIExpression(), !512)
  br label %for.cond4, !dbg !526, !llvm.loop !527

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %c.0, 1, !dbg !529
    #dbg_value(i32 %inc, !503, !DIExpression(), !504)
  br label %for.cond1, !dbg !530, !llvm.loop !531

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !533
    #dbg_value(i32 %inc18, !491, !DIExpression(), !493)
  br label %for.cond, !dbg !534, !llvm.loop !535

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !537
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %in, i8 noundef zeroext %a, ptr noundef %acc) unnamed_addr #0 !dbg !538 {
entry:
    #dbg_value(i32 %m_vec_limbs, !542, !DIExpression(), !543)
    #dbg_value(ptr %in, !544, !DIExpression(), !543)
    #dbg_value(i8 %a, !545, !DIExpression(), !543)
    #dbg_value(ptr %acc, !546, !DIExpression(), !543)
  %call = call fastcc i32 @mul_table(i8 noundef zeroext %a) #4, !dbg !547
    #dbg_value(i32 %call, !548, !DIExpression(), !543)
    #dbg_value(i64 1229782938247303441, !549, !DIExpression(), !543)
    #dbg_value(i32 0, !550, !DIExpression(), !552)
  br label %for.cond, !dbg !553

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !554
    #dbg_value(i32 %i.0, !550, !DIExpression(), !552)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !555
  br i1 %exitcond, label %for.body, label %for.end, !dbg !557

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !558
  %0 = load i64, ptr %arrayidx, align 8, !dbg !558
  %and = and i64 %0, 1229782938247303441, !dbg !560
  %and1 = and i32 %call, 255, !dbg !561
  %conv = zext nneg i32 %and1 to i64, !dbg !562
  %mul = mul i64 %and, %conv, !dbg !563
  %shr = lshr i64 %0, 1, !dbg !564
  %and3 = and i64 %shr, 1229782938247303441, !dbg !565
  %shr4 = lshr i32 %call, 8, !dbg !566
  %and5 = and i32 %shr4, 15, !dbg !567
  %conv6 = zext nneg i32 %and5 to i64, !dbg !568
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !569
  %xor = xor i64 %mul, %mul7, !dbg !570
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !571
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !571
  %shr9 = lshr i64 %1, 2, !dbg !572
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !573
  %shr11 = lshr i32 %call, 16, !dbg !574
  %and12 = and i32 %shr11, 15, !dbg !575
  %conv13 = zext nneg i32 %and12 to i64, !dbg !576
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !577
  %xor15 = xor i64 %xor, %mul14, !dbg !578
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !579
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !579
  %shr17 = lshr i64 %2, 3, !dbg !580
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !581
  %shr19 = lshr i32 %call, 24, !dbg !582
  %and20 = and i32 %shr19, 15, !dbg !583
  %conv21 = zext nneg i32 %and20 to i64, !dbg !584
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !585
  %xor23 = xor i64 %xor15, %mul22, !dbg !586
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !587
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !588
  %xor25 = xor i64 %3, %xor23, !dbg !588
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !588
  %inc = add nuw nsw i32 %i.0, 1, !dbg !589
    #dbg_value(i32 %inc, !550, !DIExpression(), !552)
  br label %for.cond, !dbg !590, !llvm.loop !591

for.end:                                          ; preds = %for.cond
  ret void, !dbg !593
}

; Function Attrs: nounwind
define internal fastcc i32 @mul_table(i8 noundef zeroext %b) unnamed_addr #0 !dbg !594 {
entry:
    #dbg_value(i8 %b, !598, !DIExpression(), !599)
  %conv = zext i8 %b to i32, !dbg !600
  %mul = mul i32 %conv, 134480385, !dbg !601
    #dbg_value(i32 %mul, !602, !DIExpression(), !599)
    #dbg_value(i32 -252645136, !603, !DIExpression(), !599)
  %and = and i32 %mul, -252645136, !dbg !604
    #dbg_value(i32 %and, !605, !DIExpression(), !599)
  %shr = lshr exact i32 %and, 4, !dbg !606
  %shr1 = lshr exact i32 %and, 3, !dbg !607
  %0 = xor i32 %shr, %shr1, !dbg !608
  %xor2 = xor i32 %0, %mul, !dbg !608
  ret i32 %xor2, !dbg !609
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_cols, i32 noundef %triangular) unnamed_addr #0 !dbg !610 {
entry:
    #dbg_value(i32 5, !613, !DIExpression(), !614)
    #dbg_value(ptr %bs_mat, !615, !DIExpression(), !614)
    #dbg_value(ptr %mat, !616, !DIExpression(), !614)
    #dbg_value(ptr %acc, !617, !DIExpression(), !614)
    #dbg_value(i32 78, !618, !DIExpression(), !614)
    #dbg_value(i32 78, !619, !DIExpression(), !614)
    #dbg_value(i32 8, !620, !DIExpression(), !614)
    #dbg_value(i32 1, !621, !DIExpression(), !614)
    #dbg_value(i32 0, !622, !DIExpression(), !614)
    #dbg_value(i32 0, !623, !DIExpression(), !625)
  br label %for.cond, !dbg !626

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 78, %entry ], !dbg !627
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !627
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !628
    #dbg_value(i32 %r.0, !623, !DIExpression(), !625)
    #dbg_value(i32 %bs_mat_entries_used.0, !622, !DIExpression(), !614)
  %exitcond2 = icmp ne i32 %r.0, 78, !dbg !629
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !631

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !632
  br label %for.cond1, !dbg !632

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %bs_mat_entries_used.1 = phi i32 [ %add14, %for.inc15 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !614
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ %r.0, %for.cond1.preheader ], !dbg !635
    #dbg_value(i32 %c.0, !636, !DIExpression(), !637)
    #dbg_value(i32 %bs_mat_entries_used.1, !622, !DIExpression(), !614)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !638
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !632

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !640

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !643
    #dbg_value(i32 %k.0, !644, !DIExpression(), !645)
  %exitcond = icmp ne i32 %k.0, 8, !dbg !646
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !640

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !648
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !648
  %mul8 = shl nuw nsw i32 %c.0, 3, !dbg !650
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !651
  %arrayidx = getelementptr i8, ptr %1, i32 %k.0, !dbg !651
  %2 = load i8, ptr %arrayidx, align 1, !dbg !651
  %mul9 = shl nuw nsw i32 %r.0, 3, !dbg !652
  %add10 = or disjoint i32 %mul9, %k.0, !dbg !653
  %add.ptr12.idx = mul nuw nsw i32 %add10, 40, !dbg !654
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !654
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #4, !dbg !655
  %add13 = add nuw nsw i32 %k.0, 1, !dbg !656
    #dbg_value(i32 %add13, !644, !DIExpression(), !645)
  br label %for.cond4, !dbg !657, !llvm.loop !658

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !622, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !614)
  %add14 = add i32 %bs_mat_entries_used.1, 1, !dbg !660
    #dbg_value(i32 %add14, !622, !DIExpression(), !614)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !661
    #dbg_value(i32 %inc, !636, !DIExpression(), !637)
  br label %for.cond1, !dbg !662, !llvm.loop !663

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !614
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !665
    #dbg_value(i32 %inc18, !623, !DIExpression(), !625)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !666
  br label %for.cond, !dbg !666, !llvm.loop !667

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !669
}

; Function Attrs: nounwind
define internal fastcc void @unpack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef range(i32 36, 3706) %vecs, i32 noundef %m) unnamed_addr #0 !dbg !670 {
entry:
  %tmp = alloca [5 x i64], align 8
    #dbg_value(ptr %in, !673, !DIExpression(), !674)
    #dbg_value(ptr %out, !675, !DIExpression(), !674)
    #dbg_value(i32 %vecs, !676, !DIExpression(), !674)
    #dbg_value(i32 78, !677, !DIExpression(), !674)
    #dbg_value(i32 5, !678, !DIExpression(), !674)
    #dbg_value(ptr %out, !679, !DIExpression(), !674)
    #dbg_declare(ptr %tmp, !680, !DIExpression(), !684)
  call void @mayo_memset(ptr %tmp, i8 0, i32 40), !dbg !684
    #dbg_value(i32 %vecs, !685, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !687)
  br label %for.cond, !dbg !688

for.cond:                                         ; preds = %for.body, %entry
  %i.0.in = phi i32 [ %vecs, %entry ], [ %i.0, %for.body ]
    #dbg_value(i32 %i.0.in, !685, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !687)
  %cmp = icmp sgt i32 %i.0.in, 0, !dbg !689
  br i1 %cmp, label %for.body, label %for.end, !dbg !691

for.body:                                         ; preds = %for.cond
  %i.0 = add nsw i32 %i.0.in, -1, !dbg !692
    #dbg_value(i32 %i.0, !685, !DIExpression(), !687)
  %div1 = mul nsw i32 %i.0, 39, !dbg !693
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %div1, !dbg !695
  %call = call ptr @memcpy(ptr noundef nonnull %tmp, ptr noundef %add.ptr, i32 noundef 39) #6, !dbg !696
  %mul4 = mul nsw i32 %i.0, 40, !dbg !697
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %out, i32 %mul4, !dbg !698
  %call8 = call ptr @memcpy(ptr noundef %add.ptr5, ptr noundef nonnull %tmp, i32 noundef 40) #6, !dbg !699
    #dbg_value(i32 %i.0, !685, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !687)
  br label %for.cond, !dbg !700, !llvm.loop !701

for.end:                                          ; preds = %for.cond
  ret void, !dbg !703
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !704 {
entry:
  %S = alloca [328 x i8], align 1
    #dbg_value(ptr %p, !707, !DIExpression(), !708)
    #dbg_value(ptr %csk, !709, !DIExpression(), !708)
    #dbg_value(ptr %sk, !710, !DIExpression(), !708)
    #dbg_value(i32 0, !711, !DIExpression(), !708)
    #dbg_declare(ptr %S, !712, !DIExpression(), !713)
    #dbg_value(ptr %sk, !714, !DIExpression(), !708)
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sk, i32 148200, !dbg !715
    #dbg_value(ptr %add.ptr1, !716, !DIExpression(), !708)
    #dbg_value(i32 8, !717, !DIExpression(), !708)
    #dbg_value(i32 78, !718, !DIExpression(), !708)
    #dbg_value(i32 312, !719, !DIExpression(), !708)
    #dbg_value(i32 16, !720, !DIExpression(), !708)
    #dbg_value(i32 24, !721, !DIExpression(), !708)
    #dbg_value(ptr %csk, !722, !DIExpression(), !708)
    #dbg_value(ptr %S, !723, !DIExpression(), !708)
  call void @shake256(ptr noundef nonnull %S, i32 noundef 328, ptr noundef %csk, i32 noundef 24) #4, !dbg !724
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !725
  call fastcc void @decode(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr1, i32 noundef 624) #4, !dbg !726
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #4, !dbg !727
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %sk, i32 123240, !dbg !728
    #dbg_value(ptr %add.ptr5, !729, !DIExpression(), !708)
    #dbg_value(ptr %sk, !730, !DIExpression(), !708)
    #dbg_value(ptr %add.ptr5, !731, !DIExpression(), !708)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %add.ptr1, ptr noundef nonnull %add.ptr5) #4, !dbg !732
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 328) #4, !dbg !733
  ret i32 0, !dbg !734
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !735 {
entry:
    #dbg_value(ptr %p, !736, !DIExpression(), !737)
    #dbg_value(ptr %P1, !738, !DIExpression(), !737)
    #dbg_value(ptr %O, !739, !DIExpression(), !737)
    #dbg_value(ptr %acc, !740, !DIExpression(), !737)
    #dbg_value(i32 8, !741, !DIExpression(), !737)
    #dbg_value(i32 78, !742, !DIExpression(), !737)
    #dbg_value(i32 5, !743, !DIExpression(), !737)
    #dbg_value(i32 0, !744, !DIExpression(), !737)
    #dbg_value(i32 0, !745, !DIExpression(), !747)
  br label %for.cond, !dbg !748

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 78, %entry ], !dbg !749
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc27 ], !dbg !749
  %r.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !dbg !750
    #dbg_value(i32 %r.0, !745, !DIExpression(), !747)
    #dbg_value(i32 %bs_mat_entries_used.0, !744, !DIExpression(), !737)
  %exitcond2 = icmp ne i32 %r.0, 78, !dbg !751
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end29, !dbg !753

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !754
  br label %for.cond1, !dbg !754

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc25
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.2, %for.inc25 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !737
  %c.0 = phi i32 [ %inc, %for.inc25 ], [ %r.0, %for.cond1.preheader ], !dbg !757
    #dbg_value(i32 %c.0, !758, !DIExpression(), !759)
    #dbg_value(i32 %bs_mat_entries_used.1, !744, !DIExpression(), !737)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !760
  br i1 %exitcond1, label %for.body3, label %for.inc27, !dbg !754

for.body3:                                        ; preds = %for.cond1
  %cmp4 = icmp eq i32 %c.0, %r.0, !dbg !762
  br i1 %cmp4, label %for.inc25, label %for.cond5.preheader, !dbg !762

for.cond5.preheader:                              ; preds = %for.body3
  br label %for.cond5, !dbg !765

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %k.0 = phi i32 [ %add23, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !767
    #dbg_value(i32 %k.0, !768, !DIExpression(), !769)
  %exitcond = icmp ne i32 %k.0, 8, !dbg !770
  br i1 %exitcond, label %for.body7, label %for.inc25.loopexit, !dbg !765

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !772
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !772
  %mul8 = shl nuw nsw i32 %c.0, 3, !dbg !774
  %add9 = or disjoint i32 %mul8, %k.0, !dbg !775
  %arrayidx = getelementptr inbounds nuw i8, ptr %O, i32 %add9, !dbg !776
  %1 = load i8, ptr %arrayidx, align 1, !dbg !776
  %mul10 = shl nuw nsw i32 %r.0, 3, !dbg !777
  %add11 = or disjoint i32 %mul10, %k.0, !dbg !778
  %add.ptr13.idx = mul nuw nsw i32 %add11, 40, !dbg !779
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !779
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr13) #4, !dbg !780
  %add.ptr15.idx = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !781
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !781
  %mul16 = shl nuw nsw i32 %r.0, 3, !dbg !782
  %add17 = or disjoint i32 %mul16, %k.0, !dbg !783
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %O, i32 %add17, !dbg !784
  %2 = load i8, ptr %arrayidx18, align 1, !dbg !784
  %mul19 = shl nuw nsw i32 %c.0, 3, !dbg !785
  %add20 = or disjoint i32 %mul19, %k.0, !dbg !786
  %add.ptr22.idx = mul nuw nsw i32 %add20, 40, !dbg !787
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !787
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef %add.ptr15, i8 noundef zeroext %2, ptr noundef %add.ptr22) #4, !dbg !788
  %add23 = add nuw nsw i32 %k.0, 1, !dbg !789
    #dbg_value(i32 %add23, !768, !DIExpression(), !769)
  br label %for.cond5, !dbg !790, !llvm.loop !791

for.inc25.loopexit:                               ; preds = %for.cond5
  br label %for.inc25, !dbg !793

for.inc25:                                        ; preds = %for.inc25.loopexit, %for.body3
  %bs_mat_entries_used.2 = add i32 %bs_mat_entries_used.1, 1, !dbg !793
    #dbg_value(i32 %bs_mat_entries_used.2, !744, !DIExpression(), !737)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !794
    #dbg_value(i32 %inc, !758, !DIExpression(), !759)
  br label %for.cond1, !dbg !795, !llvm.loop !796

for.inc27:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !737
  %inc28 = add nuw nsw i32 %r.0, 1, !dbg !798
    #dbg_value(i32 %inc28, !745, !DIExpression(), !747)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !799
  br label %for.cond, !dbg !799, !llvm.loop !800

for.end29:                                        ; preds = %for.cond
  ret void, !dbg !802
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !803 {
entry:
  %tenc = alloca [39 x i8], align 1
  %t = alloca [78 x i8], align 1
  %y = alloca [78 x i8], align 1
  %salt = alloca [24 x i8], align 1
  %V = alloca [430 x i8], align 1
  %Vdec = alloca [780 x i8], align 1
  %A = alloca [6480 x i8], align 1
  %x = alloca [860 x i8], align 1
  %r = alloca [81 x i8], align 1
  %s = alloca [860 x i8], align 1
  %sk = alloca [18603 x i64], align 32
  %Ox = alloca [78 x i8], align 1
  %tmp = alloca [81 x i8], align 1
  %Mtmp = alloca [400 x i64], align 8
    #dbg_value(ptr %p, !807, !DIExpression(), !808)
    #dbg_value(ptr %sig, !809, !DIExpression(), !808)
    #dbg_value(ptr %siglen, !810, !DIExpression(), !808)
    #dbg_value(ptr %m, !811, !DIExpression(), !808)
    #dbg_value(i32 %mlen, !812, !DIExpression(), !808)
    #dbg_value(ptr %csk, !813, !DIExpression(), !808)
    #dbg_value(i32 0, !814, !DIExpression(), !808)
    #dbg_declare(ptr %tenc, !815, !DIExpression(), !819)
    #dbg_declare(ptr %t, !820, !DIExpression(), !824)
    #dbg_declare(ptr %y, !825, !DIExpression(), !826)
    #dbg_declare(ptr %salt, !827, !DIExpression(), !829)
    #dbg_declare(ptr %V, !830, !DIExpression(), !834)
    #dbg_declare(ptr %Vdec, !835, !DIExpression(), !839)
    #dbg_declare(ptr %A, !840, !DIExpression(), !844)
  call void @mayo_memset(ptr %A, i8 0, i32 6480), !dbg !844
    #dbg_declare(ptr %x, !845, !DIExpression(), !849)
    #dbg_declare(ptr %r, !850, !DIExpression(), !854)
  call void @mayo_memset(ptr %r, i8 0, i32 81), !dbg !854
    #dbg_declare(ptr %s, !855, !DIExpression(), !856)
    #dbg_declare(ptr %sk, !857, !DIExpression(), !858)
    #dbg_declare(ptr %Ox, !859, !DIExpression(), !860)
    #dbg_declare(ptr %tmp, !861, !DIExpression(), !862)
    #dbg_value(i32 78, !863, !DIExpression(), !808)
    #dbg_value(i32 86, !864, !DIExpression(), !808)
    #dbg_value(i32 8, !865, !DIExpression(), !808)
    #dbg_value(i32 10, !866, !DIExpression(), !808)
    #dbg_value(i32 78, !867, !DIExpression(), !808)
    #dbg_value(i32 39, !868, !DIExpression(), !808)
    #dbg_value(i32 39, !869, !DIExpression(), !808)
    #dbg_value(i32 40, !870, !DIExpression(), !808)
    #dbg_value(i32 454, !871, !DIExpression(), !808)
    #dbg_value(i32 81, !872, !DIExpression(), !808)
    #dbg_value(i32 32, !873, !DIExpression(), !808)
    #dbg_value(i32 24, !874, !DIExpression(), !808)
    #dbg_value(i32 24, !875, !DIExpression(), !808)
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #4, !dbg !876
    #dbg_value(i32 0, !814, !DIExpression(), !808)
    #dbg_value(ptr %csk, !877, !DIExpression(), !808)
  call void @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #4, !dbg !878
    #dbg_value(ptr %sk, !879, !DIExpression(), !808)
    #dbg_value(ptr %add.ptr, !880, !DIExpression(), !808)
    #dbg_declare(ptr %Mtmp, !881, !DIExpression(), !885)
  call void @mayo_memset(ptr %Mtmp, i8 0, i32 3200), !dbg !885
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !886
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 24) #4, !dbg !888
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 56, !dbg !889
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 24) #6, !dbg !890
  call void @shake256(ptr noundef nonnull %salt, i32 noundef 24, ptr noundef nonnull %tmp, i32 noundef 80) #4, !dbg !891
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !892
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 24) #6, !dbg !893
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 80, !dbg !894
    #dbg_value(ptr %add.ptr24, !895, !DIExpression(), !808)
  call void @shake256(ptr noundef nonnull %tenc, i32 noundef 39, ptr noundef nonnull %tmp, i32 noundef 56) #4, !dbg !896
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 78) #4, !dbg !897
  store i8 0, ptr %add.ptr24, align 1, !dbg !898
  call void @shake256(ptr noundef nonnull %V, i32 noundef 430, ptr noundef nonnull %tmp, i32 noundef 81) #4, !dbg !899
    #dbg_value(i32 0, !900, !DIExpression(), !902)
  br label %for.cond, !dbg !903

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !904
    #dbg_value(i32 %i.0, !900, !DIExpression(), !902)
  %exitcond = icmp ne i32 %i.0, 10, !dbg !905
  br i1 %exitcond, label %for.body, label %for.end, !dbg !907

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 39, !dbg !908
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !910
  %mul37 = mul nuw nsw i32 %i.0, 78, !dbg !911
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul37, !dbg !912
  call fastcc void @decode(ptr noundef nonnull %add.ptr35, ptr noundef nonnull %add.ptr38, i32 noundef 78) #4, !dbg !913
  %inc = add nuw nsw i32 %i.0, 1, !dbg !914
    #dbg_value(i32 %inc, !900, !DIExpression(), !902)
  br label %for.cond, !dbg !915, !llvm.loop !916

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 123240, !dbg !918
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #4, !dbg !919
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #4, !dbg !920
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #4, !dbg !921
    #dbg_value(i32 0, !922, !DIExpression(), !924)
  br label %for.cond48, !dbg !925

for.cond48:                                       ; preds = %for.body50, %for.end
  %i47.0 = phi i32 [ 0, %for.end ], [ %inc53, %for.body50 ], !dbg !926
    #dbg_value(i32 %i47.0, !922, !DIExpression(), !924)
  %exitcond1 = icmp ne i32 %i47.0, 78, !dbg !927
  br i1 %exitcond1, label %for.body50, label %for.end54, !dbg !929

for.body50:                                       ; preds = %for.cond48
  %0 = mul nuw nsw i32 %i47.0, 81, !dbg !930
  %sub = add nuw nsw i32 %0, 80, !dbg !932
  %arrayidx = getelementptr inbounds nuw [6480 x i8], ptr %A, i32 0, i32 %sub, !dbg !933
  store i8 0, ptr %arrayidx, align 1, !dbg !934
  %inc53 = add nuw nsw i32 %i47.0, 1, !dbg !935
    #dbg_value(i32 %inc53, !922, !DIExpression(), !924)
  br label %for.cond48, !dbg !936, !llvm.loop !937

for.end54:                                        ; preds = %for.cond48
  %add.ptr56 = getelementptr inbounds nuw i8, ptr %V, i32 390, !dbg !939
  call fastcc void @decode(ptr noundef nonnull %add.ptr56, ptr noundef nonnull %r, i32 noundef 80) #4, !dbg !940
  %call62 = call i32 @pqmayo_MAYO_1_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 10, i32 noundef 8, i32 noundef 78, i32 noundef 81) #4, !dbg !941
  %tobool.not = icmp eq i32 %call62, 0, !dbg !941
  br i1 %tobool.not, label %if.else, label %if.end68, !dbg !941

if.else:                                          ; preds = %for.end54
  %call65 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 3200) #6, !dbg !943
  %call67 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 6480) #6, !dbg !945
  br label %if.end68

if.end68:                                         ; preds = %for.end54, %if.else
    #dbg_value(i32 0, !946, !DIExpression(), !948)
  br label %for.cond70, !dbg !949

for.cond70:                                       ; preds = %for.body72, %if.end68
  %i69.0 = phi i32 [ 0, %if.end68 ], [ %inc96, %for.body72 ], !dbg !950
    #dbg_value(i32 %i69.0, !946, !DIExpression(), !948)
  %exitcond2 = icmp ne i32 %i69.0, 10, !dbg !951
  br i1 %exitcond2, label %for.body72, label %for.end97, !dbg !953

for.body72:                                       ; preds = %for.cond70
  %mul74 = mul nuw nsw i32 %i69.0, 78, !dbg !954
  %add.ptr75 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul74, !dbg !956
    #dbg_value(ptr %add.ptr75, !957, !DIExpression(), !808)
  %add.ptr78 = getelementptr inbounds nuw i8, ptr %sk, i32 148200, !dbg !958
  %mul80 = shl nuw nsw i32 %i69.0, 3, !dbg !959
  %add.ptr81 = getelementptr inbounds nuw i8, ptr %x, i32 %mul80, !dbg !960
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr78, ptr noundef nonnull %add.ptr81, ptr noundef nonnull %Ox, i32 noundef 8, i32 noundef 78, i32 noundef 1) #4, !dbg !961
  %mul85 = mul nuw nsw i32 %i69.0, 86, !dbg !962
  %add.ptr86 = getelementptr inbounds nuw i8, ptr %s, i32 %mul85, !dbg !963
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr75, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr86, i32 noundef 78, i32 noundef 1) #4, !dbg !964
  %mul88 = mul nuw nsw i32 %i69.0, 86, !dbg !965
  %add.ptr89 = getelementptr inbounds nuw i8, ptr %s, i32 %mul88, !dbg !966
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %add.ptr89, i32 78, !dbg !967
  %mul92 = shl nuw nsw i32 %i69.0, 3, !dbg !968
  %add.ptr93 = getelementptr inbounds nuw i8, ptr %x, i32 %mul92, !dbg !969
  %call94 = call ptr @memcpy(ptr noundef nonnull %add.ptr90, ptr noundef nonnull %add.ptr93, i32 noundef 8) #6, !dbg !970
  %inc96 = add nuw nsw i32 %i69.0, 1, !dbg !971
    #dbg_value(i32 %inc96, !946, !DIExpression(), !948)
  br label %for.cond70, !dbg !972, !llvm.loop !973

for.end97:                                        ; preds = %for.cond70
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 860) #4, !dbg !975
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %sig, i32 430, !dbg !976
  %call102 = call ptr @memcpy(ptr noundef nonnull %add.ptr100, ptr noundef nonnull %salt, i32 noundef 24) #6, !dbg !977
  store i32 454, ptr %siglen, align 4, !dbg !978
    #dbg_value(i32 0, !814, !DIExpression(), !808)
    #dbg_label(!979, !980)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 430) #4, !dbg !981
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 780) #4, !dbg !982
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 6480) #4, !dbg !983
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 81) #4, !dbg !984
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sk, i32 148200, !dbg !985
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr109, i32 noundef 624) #4, !dbg !986
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 148824) #4, !dbg !987
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 78) #4, !dbg !988
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 81) #4, !dbg !989
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 3200) #4, !dbg !990
  ret i32 0, !dbg !991
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %L, ptr noundef nonnull %P1, ptr noundef nonnull %VL, ptr noundef nonnull %VP1V) unnamed_addr #0 !dbg !992 {
entry:
  %Pv = alloca [3900 x i64], align 8
    #dbg_value(ptr %p, !995, !DIExpression(), !996)
    #dbg_value(ptr %Vdec, !997, !DIExpression(), !996)
    #dbg_value(ptr %L, !998, !DIExpression(), !996)
    #dbg_value(ptr %P1, !999, !DIExpression(), !996)
    #dbg_value(ptr %VL, !1000, !DIExpression(), !996)
    #dbg_value(ptr %VP1V, !1001, !DIExpression(), !996)
    #dbg_value(i32 10, !1002, !DIExpression(), !996)
    #dbg_value(i32 78, !1003, !DIExpression(), !996)
    #dbg_value(i32 8, !1004, !DIExpression(), !996)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 5, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 10, i32 noundef 78, i32 noundef 8) #4, !dbg !1005
    #dbg_declare(ptr %Pv, !1006, !DIExpression(), !1010)
  call void @mayo_memset(ptr %Pv, i8 0, i32 31200), !dbg !1010
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #4, !dbg !1011
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 5, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 10, i32 noundef 78, i32 noundef 10) #4, !dbg !1012
  ret void, !dbg !1013
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %vPv, ptr noundef nonnull %t, ptr noundef nonnull %y) unnamed_addr #0 !dbg !1014 {
entry:
  %temp = alloca [5 x i64], align 8
    #dbg_value(ptr %p, !1017, !DIExpression(), !1018)
    #dbg_value(ptr %vPv, !1019, !DIExpression(), !1018)
    #dbg_value(ptr %t, !1020, !DIExpression(), !1018)
    #dbg_value(ptr %y, !1021, !DIExpression(), !1018)
    #dbg_value(i32 52, !1022, !DIExpression(), !1018)
    #dbg_value(i32 5, !1024, !DIExpression(), !1018)
    #dbg_value(i64 1, !1025, !DIExpression(), !1028)
    #dbg_value(i64 72057594037927936, !1025, !DIExpression(), !1028)
    #dbg_value(i64 72057594037927935, !1025, !DIExpression(), !1028)
    #dbg_value(i32 0, !1029, !DIExpression(), !1031)
  br label %for.cond, !dbg !1032

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1033
    #dbg_value(i32 %i.0, !1029, !DIExpression(), !1031)
  %exitcond = icmp ne i32 %i.0, 100, !dbg !1034
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1036

for.body:                                         ; preds = %for.cond
  %.idx7 = mul nuw nsw i32 %i.0, 40, !dbg !1037
  %0 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx7, !dbg !1037
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 32, !dbg !1037
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1039
  %and = and i64 %1, 72057594037927935, !dbg !1039
  store i64 %and, ptr %arrayidx, align 8, !dbg !1039
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1040
    #dbg_value(i32 %inc, !1029, !DIExpression(), !1031)
  br label %for.cond, !dbg !1041, !llvm.loop !1042

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %temp, !1044, !DIExpression(), !1045)
  call void @mayo_memset(ptr %temp, i8 0, i32 40), !dbg !1045
    #dbg_value(ptr %temp, !1046, !DIExpression(), !1018)
    #dbg_value(i32 9, !1047, !DIExpression(), !1049)
  br label %for.cond3, !dbg !1050

for.cond3:                                        ; preds = %for.inc77, %for.end
  %i2.0 = phi i32 [ 9, %for.end ], [ %dec78, %for.inc77 ], !dbg !1051
    #dbg_value(i32 %i2.0, !1047, !DIExpression(), !1049)
  %cmp4 = icmp sgt i32 %i2.0, -1, !dbg !1052
  br i1 %cmp4, label %for.cond6.preheader, label %for.cond81.preheader, !dbg !1054

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1055

for.cond81.preheader:                             ; preds = %for.cond3
  br label %for.cond81, !dbg !1058

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc74
  %j.0 = phi i32 [ %inc75, %for.inc74 ], [ %i2.0, %for.cond6.preheader ], !dbg !1060
    #dbg_value(i32 %j.0, !1061, !DIExpression(), !1062)
  %exitcond10 = icmp ne i32 %j.0, 10, !dbg !1063
  br i1 %exitcond10, label %for.body8, label %for.inc77, !dbg !1055

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !1065
  %2 = load i64, ptr %arrayidx9, align 8, !dbg !1065
  %shr = lshr i64 %2, 52, !dbg !1067
  %rem.lhs.trunc = trunc i64 %shr to i8, !dbg !1068
    #dbg_value(i8 %rem1, !1069, !DIExpression(), !1070)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !1071
  %shl11 = shl i64 %2, 4, !dbg !1072
  store i64 %shl11, ptr %arrayidx10, align 8, !dbg !1072
    #dbg_value(i32 3, !1073, !DIExpression(), !1075)
  br label %for.cond12, !dbg !1076

for.cond12:                                       ; preds = %for.body15, %for.body8
  %k.0 = phi i32 [ 3, %for.body8 ], [ %dec, %for.body15 ], !dbg !1077
    #dbg_value(i32 %k.0, !1073, !DIExpression(), !1075)
  %cmp13 = icmp sgt i32 %k.0, -1, !dbg !1078
  br i1 %cmp13, label %for.body15, label %for.cond24.preheader, !dbg !1080

for.cond24.preheader:                             ; preds = %for.cond12
  %rem1 = and i8 %rem.lhs.trunc, 15, !dbg !1068
  br label %for.cond24, !dbg !1081

for.body15:                                       ; preds = %for.cond12
  %arrayidx16 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1083
  %3 = load i64, ptr %arrayidx16, align 8, !dbg !1083
  %shr17 = lshr i64 %3, 60, !dbg !1085
  %add18 = add nuw nsw i32 %k.0, 1, !dbg !1086
  %arrayidx19 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %add18, !dbg !1087
  %4 = load i64, ptr %arrayidx19, align 8, !dbg !1088
  %xor = xor i64 %4, %shr17, !dbg !1088
  store i64 %xor, ptr %arrayidx19, align 8, !dbg !1088
  %arrayidx20 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1089
  %5 = load i64, ptr %arrayidx20, align 8, !dbg !1090
  %shl21 = shl i64 %5, 4, !dbg !1090
  store i64 %shl21, ptr %arrayidx20, align 8, !dbg !1090
  %dec = add nsw i32 %k.0, -1, !dbg !1091
    #dbg_value(i32 %dec, !1073, !DIExpression(), !1075)
  br label %for.cond12, !dbg !1092, !llvm.loop !1093

for.cond24:                                       ; preds = %for.cond24.preheader, %for.inc46
  %jj.0 = phi i32 [ %inc47, %for.inc46 ], [ 0, %for.cond24.preheader ], !dbg !1095
    #dbg_value(i32 %jj.0, !1096, !DIExpression(), !1097)
  %exitcond8 = icmp ne i32 %jj.0, 4, !dbg !1098
  br i1 %exitcond8, label %for.body27, label %for.cond50.preheader, !dbg !1081

for.cond50.preheader:                             ; preds = %for.cond24
  br label %for.cond50, !dbg !1100

for.body27:                                       ; preds = %for.cond24
  %rem28 = and i32 %jj.0, 1, !dbg !1102
  %cmp29 = icmp eq i32 %rem28, 0, !dbg !1105
  br i1 %cmp29, label %if.then, label %if.else, !dbg !1105

if.then:                                          ; preds = %for.body27
  %arrayidx31 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1106
  %6 = load i8, ptr %arrayidx31, align 1, !dbg !1106
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %6) #4, !dbg !1108
  %div = lshr exact i32 %jj.0, 1, !dbg !1109
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %temp, i32 %div, !dbg !1110
  %7 = load i8, ptr %arrayidx33, align 1, !dbg !1111
  %xor356 = xor i8 %7, %call, !dbg !1111
  store i8 %xor356, ptr %arrayidx33, align 1, !dbg !1111
  br label %for.inc46, !dbg !1112

if.else:                                          ; preds = %for.body27
  %arrayidx37 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1113
  %8 = load i8, ptr %arrayidx37, align 1, !dbg !1113
  %call38 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %8) #4, !dbg !1115
  %shl40 = shl nuw i8 %call38, 4, !dbg !1116
  %div415 = lshr i32 %jj.0, 1, !dbg !1117
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %temp, i32 %div415, !dbg !1118
  %9 = load i8, ptr %arrayidx42, align 1, !dbg !1119
  %xor44 = xor i8 %shl40, %9, !dbg !1119
  store i8 %xor44, ptr %arrayidx42, align 1, !dbg !1119
  br label %for.inc46

for.inc46:                                        ; preds = %if.then, %if.else
  %inc47 = add nuw nsw i32 %jj.0, 1, !dbg !1120
    #dbg_value(i32 %inc47, !1096, !DIExpression(), !1097)
  br label %for.cond24, !dbg !1121, !llvm.loop !1122

for.cond50:                                       ; preds = %for.cond50.preheader, %for.body53
  %k49.0 = phi i32 [ %inc72, %for.body53 ], [ 0, %for.cond50.preheader ], !dbg !1124
    #dbg_value(i32 %k49.0, !1125, !DIExpression(), !1126)
  %exitcond9 = icmp ne i32 %k49.0, 5, !dbg !1127
  br i1 %exitcond9, label %for.body53, label %for.inc74, !dbg !1100

for.body53:                                       ; preds = %for.cond50
  %mul54 = mul nuw nsw i32 %i2.0, 10, !dbg !1129
  %add55 = add nuw nsw i32 %mul54, %j.0, !dbg !1131
  %.idx = mul nsw i32 %add55, 40, !dbg !1132
  %10 = getelementptr i8, ptr %vPv, i32 %.idx, !dbg !1132
  %arrayidx58 = getelementptr i64, ptr %10, i32 %k49.0, !dbg !1132
  %11 = load i64, ptr %arrayidx58, align 8, !dbg !1132
  %cmp59.not = icmp eq i32 %i2.0, %j.0, !dbg !1133
  %mul62 = mul nuw nsw i32 %j.0, 10, !dbg !1134
  %add63 = add nuw nsw i32 %mul62, %i2.0, !dbg !1135
  %.idx4 = mul nsw i32 %add63, 40, !dbg !1136
  %12 = getelementptr i8, ptr %vPv, i32 %.idx4, !dbg !1136
  %arrayidx66 = getelementptr i64, ptr %12, i32 %k49.0, !dbg !1136
  %13 = load i64, ptr %arrayidx66, align 8, !dbg !1136
  %mul67 = select i1 %cmp59.not, i64 0, i64 %13, !dbg !1137
  %xor68 = xor i64 %11, %mul67, !dbg !1138
  %arrayidx69 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %k49.0, !dbg !1139
  %14 = load i64, ptr %arrayidx69, align 8, !dbg !1140
  %xor70 = xor i64 %14, %xor68, !dbg !1140
  store i64 %xor70, ptr %arrayidx69, align 8, !dbg !1140
  %inc72 = add nuw nsw i32 %k49.0, 1, !dbg !1141
    #dbg_value(i32 %inc72, !1125, !DIExpression(), !1126)
  br label %for.cond50, !dbg !1142, !llvm.loop !1143

for.inc74:                                        ; preds = %for.cond50
  %inc75 = add nuw nsw i32 %j.0, 1, !dbg !1145
    #dbg_value(i32 %inc75, !1061, !DIExpression(), !1062)
  br label %for.cond6, !dbg !1146, !llvm.loop !1147

for.inc77:                                        ; preds = %for.cond6
  %dec78 = add nsw i32 %i2.0, -1, !dbg !1149
    #dbg_value(i32 %dec78, !1047, !DIExpression(), !1049)
  br label %for.cond3, !dbg !1150, !llvm.loop !1151

for.cond81:                                       ; preds = %for.cond81.preheader, %for.body84
  %i80.0 = phi i32 [ %add106, %for.body84 ], [ 0, %for.cond81.preheader ], !dbg !1153
    #dbg_value(i32 %i80.0, !1154, !DIExpression(), !1155)
  %cmp82 = icmp samesign ult i32 %i80.0, 78, !dbg !1156
  br i1 %cmp82, label %for.body84, label %for.end107, !dbg !1058

for.body84:                                       ; preds = %for.cond81
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %t, i32 %i80.0, !dbg !1158
  %15 = load i8, ptr %arrayidx85, align 1, !dbg !1158
  %div87 = lshr exact i32 %i80.0, 1, !dbg !1160
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87, !dbg !1161
  %16 = load i8, ptr %arrayidx88, align 1, !dbg !1161
  %17 = and i8 %16, 15, !dbg !1162
  %xor912 = xor i8 %15, %17, !dbg !1163
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %y, i32 %i80.0, !dbg !1164
  store i8 %xor912, ptr %arrayidx93, align 1, !dbg !1165
  %add94 = or disjoint i32 %i80.0, 1, !dbg !1166
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %t, i32 %add94, !dbg !1167
  %18 = load i8, ptr %arrayidx95, align 1, !dbg !1167
  %div97 = lshr exact i32 %i80.0, 1, !dbg !1168
  %arrayidx98 = getelementptr inbounds nuw i8, ptr %temp, i32 %div97, !dbg !1169
  %19 = load i8, ptr %arrayidx98, align 1, !dbg !1169
  %20 = lshr i8 %19, 4, !dbg !1170
  %xor1013 = xor i8 %18, %20, !dbg !1171
  %add103 = or disjoint i32 %i80.0, 1, !dbg !1172
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %y, i32 %add103, !dbg !1173
  store i8 %xor1013, ptr %arrayidx104, align 1, !dbg !1174
  %add106 = add nuw nsw i32 %i80.0, 2, !dbg !1175
    #dbg_value(i32 %add106, !1154, !DIExpression(), !1155)
  br label %for.cond81, !dbg !1176, !llvm.loop !1177

for.end107:                                       ; preds = %for.cond81
  ret void, !dbg !1179
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %VtL, ptr noundef nonnull %A_out) unnamed_addr #0 !dbg !1180 {
entry:
  %A = alloca [800 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1183, !DIExpression(), !1184)
    #dbg_value(ptr %VtL, !1185, !DIExpression(), !1184)
    #dbg_value(ptr %A_out, !1186, !DIExpression(), !1184)
    #dbg_value(i32 0, !1187, !DIExpression(), !1184)
    #dbg_value(i32 0, !1188, !DIExpression(), !1184)
    #dbg_value(i32 5, !1189, !DIExpression(), !1184)
    #dbg_declare(ptr %A, !1190, !DIExpression(), !1194)
  call void @mayo_memset(ptr %A, i8 0, i32 6400), !dbg !1194
    #dbg_value(i32 80, !1195, !DIExpression(), !1184)
    #dbg_value(i64 1, !1196, !DIExpression(), !1199)
    #dbg_value(i64 72057594037927936, !1196, !DIExpression(), !1199)
    #dbg_value(i64 72057594037927935, !1196, !DIExpression(), !1199)
    #dbg_value(i32 0, !1200, !DIExpression(), !1202)
  br label %for.cond, !dbg !1203

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1204
    #dbg_value(i32 %i.0, !1200, !DIExpression(), !1202)
  %exitcond = icmp ne i32 %i.0, 80, !dbg !1205
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !1207

for.cond3.preheader:                              ; preds = %for.cond
  br label %for.cond3, !dbg !1208

for.body:                                         ; preds = %for.cond
  %.idx = mul nuw nsw i32 %i.0, 40, !dbg !1210
  %0 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx, !dbg !1210
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 32, !dbg !1210
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1212
  %and = and i64 %1, 72057594037927935, !dbg !1212
  store i64 %and, ptr %arrayidx, align 8, !dbg !1212
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1213
    #dbg_value(i32 %inc, !1200, !DIExpression(), !1202)
  br label %for.cond, !dbg !1214, !llvm.loop !1215

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc103
  %i2.0 = phi i32 [ %inc104, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1217
  %words_to_shift.0 = phi i32 [ %words_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1218
  %bits_to_shift.0 = phi i32 [ %bits_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1219
    #dbg_value(i32 %bits_to_shift.0, !1187, !DIExpression(), !1184)
    #dbg_value(i32 %words_to_shift.0, !1188, !DIExpression(), !1184)
    #dbg_value(i32 %i2.0, !1220, !DIExpression(), !1221)
  %exitcond8 = icmp ne i32 %i2.0, 10, !dbg !1222
  br i1 %exitcond8, label %for.cond6.preheader, label %for.cond107.preheader, !dbg !1208

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1224

for.cond107.preheader:                            ; preds = %for.cond3
  br label %for.cond107, !dbg !1227

for.cond6:                                        ; preds = %for.cond6.preheader, %if.end95
  %j.0 = phi i32 [ %dec, %if.end95 ], [ 9, %for.cond6.preheader ], !dbg !1229
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end95 ], [ %words_to_shift.0, %for.cond6.preheader ], !dbg !1184
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end95 ], [ %bits_to_shift.0, %for.cond6.preheader ], !dbg !1184
    #dbg_value(i32 %bits_to_shift.1, !1187, !DIExpression(), !1184)
    #dbg_value(i32 %words_to_shift.1, !1188, !DIExpression(), !1184)
    #dbg_value(i32 %j.0, !1230, !DIExpression(), !1231)
  %cmp7.not = icmp slt i32 %j.0, %i2.0, !dbg !1232
  br i1 %cmp7.not, label %for.inc103, label %for.body8, !dbg !1224

for.body8:                                        ; preds = %for.cond6
  %add.ptr.idx = mul nsw i32 %j.0, 320, !dbg !1234
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1234
    #dbg_value(ptr %add.ptr, !1236, !DIExpression(), !1184)
    #dbg_value(i32 0, !1237, !DIExpression(), !1239)
  br label %for.cond11, !dbg !1240

for.cond11:                                       ; preds = %for.inc44, %for.body8
  %c.0 = phi i32 [ 0, %for.body8 ], [ %inc45, %for.inc44 ], !dbg !1241
    #dbg_value(i32 %c.0, !1237, !DIExpression(), !1239)
  %exitcond5 = icmp ne i32 %c.0, 8, !dbg !1242
  br i1 %exitcond5, label %for.cond14.preheader, label %for.end46, !dbg !1244

for.cond14.preheader:                             ; preds = %for.cond11
  br label %for.cond14, !dbg !1245

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc41
  %k.0 = phi i32 [ %inc42, %for.inc41 ], [ 0, %for.cond14.preheader ], !dbg !1248
    #dbg_value(i32 %k.0, !1249, !DIExpression(), !1250)
  %exitcond4 = icmp ne i32 %k.0, 5, !dbg !1251
  br i1 %exitcond4, label %for.body16, label %for.inc44, !dbg !1245

for.body16:                                       ; preds = %for.cond14
  %2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1253
  %arrayidx19.idx = mul nuw nsw i32 %c.0, 40, !dbg !1253
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %2, i32 %arrayidx19.idx, !dbg !1253
  %3 = load i64, ptr %arrayidx19, align 8, !dbg !1253
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1255
  %shl20 = shl i64 %3, %sh_prom, !dbg !1255
  %mul21 = shl nuw nsw i32 %i2.0, 3, !dbg !1256
  %add22 = or disjoint i32 %mul21, %c.0, !dbg !1257
  %add23 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1258
  %mul24 = mul i32 %add23, 80, !dbg !1259
  %add25 = add i32 %add22, %mul24, !dbg !1260
  %arrayidx26 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add25, !dbg !1261
  %4 = load i64, ptr %arrayidx26, align 8, !dbg !1262
  %xor = xor i64 %4, %shl20, !dbg !1262
  store i64 %xor, ptr %arrayidx26, align 8, !dbg !1262
  %cmp27 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1263
  br i1 %cmp27, label %if.then, label %for.inc41, !dbg !1263

if.then:                                          ; preds = %for.body16
  %5 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1265
  %arrayidx30.idx = mul nuw nsw i32 %c.0, 40, !dbg !1265
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %5, i32 %arrayidx30.idx, !dbg !1265
  %6 = load i64, ptr %arrayidx30, align 8, !dbg !1265
  %sub31 = sub nsw i32 64, %bits_to_shift.1, !dbg !1267
  %sh_prom32 = zext nneg i32 %sub31 to i64, !dbg !1268
  %shr = lshr i64 %6, %sh_prom32, !dbg !1268
  %mul33 = shl nuw nsw i32 %i2.0, 3, !dbg !1269
  %add34 = or disjoint i32 %mul33, %c.0, !dbg !1270
  %add35 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1271
  %7 = mul i32 %add35, 80, !dbg !1272
  %mul37 = add i32 %7, 80, !dbg !1272
  %add38 = add i32 %add34, %mul37, !dbg !1273
  %arrayidx39 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add38, !dbg !1274
  %8 = load i64, ptr %arrayidx39, align 8, !dbg !1275
  %xor40 = xor i64 %8, %shr, !dbg !1275
  store i64 %xor40, ptr %arrayidx39, align 8, !dbg !1275
  br label %for.inc41, !dbg !1276

for.inc41:                                        ; preds = %for.body16, %if.then
  %inc42 = add nuw nsw i32 %k.0, 1, !dbg !1277
    #dbg_value(i32 %inc42, !1249, !DIExpression(), !1250)
  br label %for.cond14, !dbg !1278, !llvm.loop !1279

for.inc44:                                        ; preds = %for.cond14
  %inc45 = add nuw nsw i32 %c.0, 1, !dbg !1281
    #dbg_value(i32 %inc45, !1237, !DIExpression(), !1239)
  br label %for.cond11, !dbg !1282, !llvm.loop !1283

for.end46:                                        ; preds = %for.cond11
  %cmp47.not = icmp eq i32 %i2.0, %j.0, !dbg !1285
  br i1 %cmp47.not, label %if.end95, label %if.then48, !dbg !1285

if.then48:                                        ; preds = %for.end46
  %add.ptr51.idx = mul nuw nsw i32 %i2.0, 320, !dbg !1287
  %add.ptr51 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr51.idx, !dbg !1287
    #dbg_value(ptr %add.ptr51, !1289, !DIExpression(), !1184)
    #dbg_value(i32 0, !1290, !DIExpression(), !1292)
  br label %for.cond53, !dbg !1293

for.cond53:                                       ; preds = %for.inc92, %if.then48
  %c52.0 = phi i32 [ 0, %if.then48 ], [ %inc93, %for.inc92 ], !dbg !1294
    #dbg_value(i32 %c52.0, !1290, !DIExpression(), !1292)
  %exitcond7 = icmp ne i32 %c52.0, 8, !dbg !1295
  br i1 %exitcond7, label %for.cond57.preheader, label %if.end95.loopexit, !dbg !1297

for.cond57.preheader:                             ; preds = %for.cond53
  br label %for.cond57, !dbg !1298

for.cond57:                                       ; preds = %for.cond57.preheader, %for.inc89
  %k56.0 = phi i32 [ %inc90, %for.inc89 ], [ 0, %for.cond57.preheader ], !dbg !1301
    #dbg_value(i32 %k56.0, !1302, !DIExpression(), !1303)
  %exitcond6 = icmp ne i32 %k56.0, 5, !dbg !1304
  br i1 %exitcond6, label %for.body59, label %for.inc92, !dbg !1298

for.body59:                                       ; preds = %for.cond57
  %9 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1306
  %arrayidx62.idx = mul nuw nsw i32 %c52.0, 40, !dbg !1306
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %9, i32 %arrayidx62.idx, !dbg !1306
  %10 = load i64, ptr %arrayidx62, align 8, !dbg !1306
  %sh_prom63 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1308
  %shl64 = shl i64 %10, %sh_prom63, !dbg !1308
  %mul65 = shl nsw i32 %j.0, 3, !dbg !1309
  %add66 = or disjoint i32 %mul65, %c52.0, !dbg !1310
  %add67 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1311
  %mul68 = mul i32 %add67, 80, !dbg !1312
  %add69 = add i32 %add66, %mul68, !dbg !1313
  %arrayidx70 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add69, !dbg !1314
  %11 = load i64, ptr %arrayidx70, align 8, !dbg !1315
  %xor71 = xor i64 %11, %shl64, !dbg !1315
  store i64 %xor71, ptr %arrayidx70, align 8, !dbg !1315
  %cmp72 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1316
  br i1 %cmp72, label %if.then73, label %for.inc89, !dbg !1316

if.then73:                                        ; preds = %for.body59
  %12 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1318
  %arrayidx76.idx = mul nuw nsw i32 %c52.0, 40, !dbg !1318
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %12, i32 %arrayidx76.idx, !dbg !1318
  %13 = load i64, ptr %arrayidx76, align 8, !dbg !1318
  %sub77 = sub nsw i32 64, %bits_to_shift.1, !dbg !1320
  %sh_prom78 = zext nneg i32 %sub77 to i64, !dbg !1321
  %shr79 = lshr i64 %13, %sh_prom78, !dbg !1321
  %mul80 = shl nsw i32 %j.0, 3, !dbg !1322
  %add81 = or disjoint i32 %mul80, %c52.0, !dbg !1323
  %add82 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1324
  %14 = mul i32 %add82, 80, !dbg !1325
  %mul84 = add i32 %14, 80, !dbg !1325
  %add85 = add i32 %add81, %mul84, !dbg !1326
  %arrayidx86 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add85, !dbg !1327
  %15 = load i64, ptr %arrayidx86, align 8, !dbg !1328
  %xor87 = xor i64 %15, %shr79, !dbg !1328
  store i64 %xor87, ptr %arrayidx86, align 8, !dbg !1328
  br label %for.inc89, !dbg !1329

for.inc89:                                        ; preds = %for.body59, %if.then73
  %inc90 = add nuw nsw i32 %k56.0, 1, !dbg !1330
    #dbg_value(i32 %inc90, !1302, !DIExpression(), !1303)
  br label %for.cond57, !dbg !1331, !llvm.loop !1332

for.inc92:                                        ; preds = %for.cond57
  %inc93 = add nuw nsw i32 %c52.0, 1, !dbg !1334
    #dbg_value(i32 %inc93, !1290, !DIExpression(), !1292)
  br label %for.cond53, !dbg !1335, !llvm.loop !1336

if.end95.loopexit:                                ; preds = %for.cond53
  br label %if.end95, !dbg !1338

if.end95:                                         ; preds = %if.end95.loopexit, %for.end46
  %add96 = add nsw i32 %bits_to_shift.1, 4, !dbg !1338
    #dbg_value(i32 %add96, !1187, !DIExpression(), !1184)
  %cmp97 = icmp eq i32 %add96, 64, !dbg !1339
  %inc99 = zext i1 %cmp97 to i32, !dbg !1339
  %spec.select = add nsw i32 %words_to_shift.1, %inc99, !dbg !1339
  %spec.select3 = select i1 %cmp97, i32 0, i32 %add96, !dbg !1339
    #dbg_value(i32 %spec.select3, !1187, !DIExpression(), !1184)
    #dbg_value(i32 %spec.select, !1188, !DIExpression(), !1184)
  %dec = add nsw i32 %j.0, -1, !dbg !1341
    #dbg_value(i32 %dec, !1230, !DIExpression(), !1231)
  br label %for.cond6, !dbg !1342, !llvm.loop !1343

for.inc103:                                       ; preds = %for.cond6
  %words_to_shift.1.lcssa = phi i32 [ %words_to_shift.1, %for.cond6 ], !dbg !1184
  %bits_to_shift.1.lcssa = phi i32 [ %bits_to_shift.1, %for.cond6 ], !dbg !1184
  %inc104 = add nuw nsw i32 %i2.0, 1, !dbg !1345
    #dbg_value(i32 %inc104, !1220, !DIExpression(), !1221)
  br label %for.cond3, !dbg !1346, !llvm.loop !1347

for.cond107:                                      ; preds = %for.cond107.preheader, %for.body110
  %c106.0 = phi i32 [ %add113, %for.body110 ], [ 0, %for.cond107.preheader ], !dbg !1349
    #dbg_value(i32 %c106.0, !1350, !DIExpression(), !1351)
  %cmp109 = icmp samesign ult i32 %c106.0, 720, !dbg !1352
  br i1 %cmp109, label %for.body110, label %for.end114, !dbg !1227

for.body110:                                      ; preds = %for.cond107
  %add.ptr111 = getelementptr inbounds nuw i64, ptr %A, i32 %c106.0, !dbg !1354
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr111) #4, !dbg !1356
  %add113 = add nuw nsw i32 %c106.0, 16, !dbg !1357
    #dbg_value(i32 %add113, !1350, !DIExpression(), !1351)
  br label %for.cond107, !dbg !1358, !llvm.loop !1359

for.end114:                                       ; preds = %for.cond107
    #dbg_declare(ptr %tab, !1361, !DIExpression(), !1362)
  call void @mayo_memset(ptr %tab, i8 0, i32 16), !dbg !1362
    #dbg_value(i32 0, !1363, !DIExpression(), !1365)
  br label %for.cond116, !dbg !1366

for.cond116:                                      ; preds = %for.body118, %for.end114
  %i115.0 = phi i32 [ 0, %for.end114 ], [ %inc138, %for.body118 ], !dbg !1367
    #dbg_value(i32 %i115.0, !1363, !DIExpression(), !1365)
  %exitcond9 = icmp ne i32 %i115.0, 4, !dbg !1368
  br i1 %exitcond9, label %for.body118, label %for.cond141.preheader, !dbg !1370

for.cond141.preheader:                            ; preds = %for.cond116
  br label %for.cond141, !dbg !1371

for.body118:                                      ; preds = %for.cond116
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1373
  %16 = load i8, ptr %arrayidx119, align 1, !dbg !1373
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 1) #4, !dbg !1375
  %mul120 = shl nuw nsw i32 %i115.0, 2, !dbg !1376
  %arrayidx121 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120, !dbg !1377
  store i8 %call, ptr %arrayidx121, align 1, !dbg !1378
  %call123 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 2) #4, !dbg !1379
  %mul124 = shl nuw nsw i32 %i115.0, 2, !dbg !1380
  %add125 = or disjoint i32 %mul124, 1, !dbg !1381
  %arrayidx126 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125, !dbg !1382
  store i8 %call123, ptr %arrayidx126, align 1, !dbg !1383
  %arrayidx127 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1384
  %17 = load i8, ptr %arrayidx127, align 1, !dbg !1384
  %call128 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %17, i8 noundef zeroext 4) #4, !dbg !1385
  %mul129 = shl nuw nsw i32 %i115.0, 2, !dbg !1386
  %add130 = or disjoint i32 %mul129, 2, !dbg !1387
  %arrayidx131 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130, !dbg !1388
  store i8 %call128, ptr %arrayidx131, align 1, !dbg !1389
  %arrayidx132 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1390
  %18 = load i8, ptr %arrayidx132, align 1, !dbg !1390
  %call133 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %18, i8 noundef zeroext 8) #4, !dbg !1391
  %mul134 = shl nuw nsw i32 %i115.0, 2, !dbg !1392
  %add135 = or disjoint i32 %mul134, 3, !dbg !1393
  %arrayidx136 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135, !dbg !1394
  store i8 %call133, ptr %arrayidx136, align 1, !dbg !1395
  %inc138 = add nuw nsw i32 %i115.0, 1, !dbg !1396
    #dbg_value(i32 %inc138, !1363, !DIExpression(), !1365)
  br label %for.cond116, !dbg !1397, !llvm.loop !1398

for.cond141:                                      ; preds = %for.cond141.preheader, %for.inc203
  %c140.0 = phi i32 [ %add204, %for.inc203 ], [ 0, %for.cond141.preheader ], !dbg !1400
    #dbg_value(i32 %c140.0, !1401, !DIExpression(), !1402)
  %cmp142 = icmp samesign ult i32 %c140.0, 80, !dbg !1403
  br i1 %cmp142, label %for.cond144.preheader, label %for.cond207.preheader, !dbg !1371

for.cond144.preheader:                            ; preds = %for.cond141
  br label %for.cond144, !dbg !1405

for.cond207.preheader:                            ; preds = %for.cond141
  br label %for.cond207, !dbg !1408

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc200
  %r.0 = phi i32 [ %inc201, %for.inc200 ], [ 78, %for.cond144.preheader ], !dbg !1410
    #dbg_value(i32 %r.0, !1411, !DIExpression(), !1412)
  %exitcond11 = icmp ne i32 %r.0, 133, !dbg !1413
  br i1 %exitcond11, label %for.body146, label %for.inc203, !dbg !1405

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1415
  %mul147 = mul nuw nsw i32 %div1, 80, !dbg !1417
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1418
  %rem = and i32 %r.0, 15, !dbg !1419
  %add149 = or disjoint i32 %add148, %rem, !dbg !1420
    #dbg_value(i32 %add149, !1421, !DIExpression(), !1422)
  %arrayidx150 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add149, !dbg !1423
  %19 = load i64, ptr %arrayidx150, align 8, !dbg !1423
  %and151 = and i64 %19, 1229782938247303441, !dbg !1424
    #dbg_value(i64 %and151, !1425, !DIExpression(), !1422)
  %shr153 = lshr i64 %19, 1, !dbg !1426
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1427
    #dbg_value(i64 %and154, !1428, !DIExpression(), !1422)
  %shr156 = lshr i64 %19, 2, !dbg !1429
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1430
    #dbg_value(i64 %and157, !1431, !DIExpression(), !1422)
  %arrayidx158 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add149, !dbg !1432
  %20 = load i64, ptr %arrayidx158, align 8, !dbg !1432
  %shr159 = lshr i64 %20, 3, !dbg !1433
  %and160 = and i64 %shr159, 1229782938247303441, !dbg !1434
    #dbg_value(i64 %and160, !1435, !DIExpression(), !1422)
    #dbg_value(i32 0, !1436, !DIExpression(), !1438)
  br label %for.cond161, !dbg !1439

for.cond161:                                      ; preds = %for.body163, %for.body146
  %t.0 = phi i32 [ 0, %for.body146 ], [ %inc198, %for.body163 ], !dbg !1440
    #dbg_value(i32 %t.0, !1436, !DIExpression(), !1438)
  %exitcond10 = icmp ne i32 %t.0, 4, !dbg !1441
  br i1 %exitcond10, label %for.body163, label %for.inc200, !dbg !1443

for.body163:                                      ; preds = %for.cond161
  %mul164 = shl nuw nsw i32 %t.0, 2, !dbg !1444
  %arrayidx166 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul164, !dbg !1446
  %21 = load i8, ptr %arrayidx166, align 1, !dbg !1446
  %conv = zext i8 %21 to i64, !dbg !1446
  %mul167 = mul i64 %and151, %conv, !dbg !1447
  %mul168 = shl nuw nsw i32 %t.0, 2, !dbg !1448
  %add169 = or disjoint i32 %mul168, 1, !dbg !1449
  %arrayidx170 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add169, !dbg !1450
  %22 = load i8, ptr %arrayidx170, align 1, !dbg !1450
  %conv171 = zext i8 %22 to i64, !dbg !1450
  %mul172 = mul i64 %and154, %conv171, !dbg !1451
  %xor173 = xor i64 %mul167, %mul172, !dbg !1452
  %mul174 = shl nuw nsw i32 %t.0, 2, !dbg !1453
  %add175 = or disjoint i32 %mul174, 2, !dbg !1454
  %arrayidx176 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add175, !dbg !1455
  %23 = load i8, ptr %arrayidx176, align 1, !dbg !1455
  %conv177 = zext i8 %23 to i64, !dbg !1455
  %mul178 = mul i64 %and157, %conv177, !dbg !1456
  %xor179 = xor i64 %xor173, %mul178, !dbg !1457
  %mul180 = shl nuw nsw i32 %t.0, 2, !dbg !1458
  %add181 = or disjoint i32 %mul180, 3, !dbg !1459
  %arrayidx182 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add181, !dbg !1460
  %24 = load i8, ptr %arrayidx182, align 1, !dbg !1460
  %conv183 = zext i8 %24 to i64, !dbg !1460
  %mul184 = mul i64 %and160, %conv183, !dbg !1461
  %xor185 = xor i64 %xor179, %mul184, !dbg !1462
  %add186 = add nuw nsw i32 %r.0, %t.0, !dbg !1463
  %sub187 = add nsw i32 %add186, -78, !dbg !1464
  %div1882 = lshr i32 %sub187, 4, !dbg !1465
  %mul189 = mul i32 %div1882, 80, !dbg !1466
  %add190 = add i32 %mul189, %c140.0, !dbg !1467
  %add191 = add nuw nsw i32 %r.0, %t.0, !dbg !1468
  %sub192 = add nuw nsw i32 %add191, 2, !dbg !1469
  %rem193 = and i32 %sub192, 15, !dbg !1470
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1471
  %arrayidx195 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add194, !dbg !1472
  %25 = load i64, ptr %arrayidx195, align 8, !dbg !1473
  %xor196 = xor i64 %25, %xor185, !dbg !1473
  store i64 %xor196, ptr %arrayidx195, align 8, !dbg !1473
  %inc198 = add nuw nsw i32 %t.0, 1, !dbg !1474
    #dbg_value(i32 %inc198, !1436, !DIExpression(), !1438)
  br label %for.cond161, !dbg !1475, !llvm.loop !1476

for.inc200:                                       ; preds = %for.cond161
  %inc201 = add nuw nsw i32 %r.0, 1, !dbg !1478
    #dbg_value(i32 %inc201, !1411, !DIExpression(), !1412)
  br label %for.cond144, !dbg !1479, !llvm.loop !1480

for.inc203:                                       ; preds = %for.cond144
  %add204 = add nuw nsw i32 %c140.0, 16, !dbg !1482
    #dbg_value(i32 %add204, !1401, !DIExpression(), !1402)
  br label %for.cond141, !dbg !1483, !llvm.loop !1484

for.cond207:                                      ; preds = %for.cond207.preheader, %for.inc241
  %indvars.iv = phi i32 [ 78, %for.cond207.preheader ], [ %indvars.iv.next, %for.inc241 ], !dbg !1486
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond207.preheader ], !dbg !1486
    #dbg_value(i32 %r206.0, !1487, !DIExpression(), !1488)
  %cmp208 = icmp samesign ult i32 %r206.0, 78, !dbg !1489
  br i1 %cmp208, label %for.cond212.preheader, label %for.end243, !dbg !1408

for.cond212.preheader:                            ; preds = %for.cond207
  br label %for.cond212, !dbg !1491

for.cond212:                                      ; preds = %for.cond212.preheader, %for.inc238
  %c211.0 = phi i32 [ %add239, %for.inc238 ], [ 0, %for.cond212.preheader ], !dbg !1494
    #dbg_value(i32 %c211.0, !1495, !DIExpression(), !1496)
  %cmp213 = icmp samesign ult i32 %c211.0, 80, !dbg !1497
  br i1 %cmp213, label %for.cond217.preheader, label %for.inc241, !dbg !1491

for.cond217.preheader:                            ; preds = %for.cond212
  br label %for.cond217, !dbg !1499

for.cond217:                                      ; preds = %for.cond217.preheader, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond217.preheader ], !dbg !1502
    #dbg_value(i32 %i216.0, !1503, !DIExpression(), !1504)
  %exitcond12 = icmp ne i32 %i216.0, %indvars.iv, !dbg !1505
  br i1 %exitcond12, label %for.body221, label %for.inc238, !dbg !1499

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 5, !dbg !1507
  %add224 = add nuw nsw i32 %div223, %c211.0, !dbg !1509
  %add225 = add nuw nsw i32 %add224, %i216.0, !dbg !1510
  %arrayidx226 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add225, !dbg !1511
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1512
  %mul228 = mul nuw nsw i32 %add227, 81, !dbg !1513
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1514
  %add.ptr230 = getelementptr inbounds nuw i8, ptr %add.ptr229, i32 %c211.0, !dbg !1515
  %cmp232 = icmp samesign ult i32 %c211.0, 64, !dbg !1516
  %sub234 = sub nuw nsw i32 80, %c211.0, !dbg !1516
  %cond = select i1 %cmp232, i32 16, i32 %sub234, !dbg !1516
  call fastcc void @decode(ptr noundef nonnull %arrayidx226, ptr noundef nonnull %add.ptr230, i32 noundef %cond) #4, !dbg !1517
  %inc236 = add nuw nsw i32 %i216.0, 1, !dbg !1518
    #dbg_value(i32 %inc236, !1503, !DIExpression(), !1504)
  br label %for.cond217, !dbg !1519, !llvm.loop !1520

for.inc238:                                       ; preds = %for.cond217
  %add239 = add nuw nsw i32 %c211.0, 16, !dbg !1522
    #dbg_value(i32 %add239, !1495, !DIExpression(), !1496)
  br label %for.cond212, !dbg !1523, !llvm.loop !1524

for.inc241:                                       ; preds = %for.cond212
  %add242 = add nuw nsw i32 %r206.0, 16, !dbg !1526
    #dbg_value(i32 %add242, !1487, !DIExpression(), !1488)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1527
  br label %for.cond207, !dbg !1527, !llvm.loop !1528

for.end243:                                       ; preds = %for.cond207
  ret void, !dbg !1530
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1531 {
entry:
    #dbg_value(ptr %a, !1534, !DIExpression(), !1535)
    #dbg_value(ptr %b, !1536, !DIExpression(), !1535)
    #dbg_value(ptr %c, !1537, !DIExpression(), !1535)
    #dbg_value(i32 8, !1538, !DIExpression(), !1535)
    #dbg_value(i32 78, !1539, !DIExpression(), !1535)
    #dbg_value(i32 1, !1540, !DIExpression(), !1535)
    #dbg_value(i32 0, !1541, !DIExpression(), !1543)
  br label %for.cond, !dbg !1544

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1545
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1534, !DIExpression(), !1535)
    #dbg_value(ptr %c.addr.0, !1537, !DIExpression(), !1535)
    #dbg_value(i32 %i.0, !1541, !DIExpression(), !1543)
  %exitcond = icmp ne i32 %i.0, 78, !dbg !1546
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !1548

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1549

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !1552
    #dbg_value(i32 poison, !1553, !DIExpression(), !1554)
    #dbg_value(ptr %c.addr.1, !1537, !DIExpression(), !1535)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !1549

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef 8, i32 noundef 1) #4, !dbg !1555
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1558
    #dbg_value(i32 1, !1553, !DIExpression(), !1554)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1559
    #dbg_value(ptr %incdec.ptr, !1537, !DIExpression(), !1535)
  br label %for.cond1, !dbg !1560, !llvm.loop !1561

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw nsw i32 %i.0, 1, !dbg !1563
    #dbg_value(i32 %inc5, !1541, !DIExpression(), !1543)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %a.addr.0, i32 8, !dbg !1564
    #dbg_value(ptr %add.ptr6, !1534, !DIExpression(), !1535)
  br label %for.cond, !dbg !1565, !llvm.loop !1566

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1568
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1569 {
entry:
    #dbg_value(ptr %a, !1572, !DIExpression(), !1573)
    #dbg_value(ptr %b, !1574, !DIExpression(), !1573)
    #dbg_value(ptr %c, !1575, !DIExpression(), !1573)
    #dbg_value(i32 78, !1576, !DIExpression(), !1573)
    #dbg_value(i32 1, !1577, !DIExpression(), !1573)
    #dbg_value(i32 0, !1578, !DIExpression(), !1580)
  br label %for.cond, !dbg !1581

for.cond:                                         ; preds = %for.body3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ], !dbg !1582
    #dbg_value(i32 %i.0, !1578, !DIExpression(), !1580)
  %exitcond = icmp ne i32 %i.0, 78, !dbg !1583
  br i1 %exitcond, label %for.body3, label %for.end13, !dbg !1585

for.body3:                                        ; preds = %for.cond
    #dbg_value(i32 poison, !1586, !DIExpression(), !1589)
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1590
  %0 = load i8, ptr %add.ptr, align 1, !dbg !1593
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %b, i32 %i.0, !dbg !1594
  %1 = load i8, ptr %add.ptr6, align 1, !dbg !1595
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #4, !dbg !1596
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !1597
  store i8 %call, ptr %add.ptr9, align 1, !dbg !1598
    #dbg_value(i32 1, !1586, !DIExpression(), !1589)
    #dbg_value(i32 poison, !1586, !DIExpression(), !1589)
  %inc12 = add nuw nsw i32 %i.0, 1, !dbg !1599
    #dbg_value(i32 %inc12, !1578, !DIExpression(), !1580)
  br label %for.cond, !dbg !1600, !llvm.loop !1601

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1603
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef nonnull %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1604 {
entry:
    #dbg_value(ptr %m, !1605, !DIExpression(), !1606)
    #dbg_value(ptr %menc, !1607, !DIExpression(), !1606)
    #dbg_value(i32 860, !1608, !DIExpression(), !1606)
    #dbg_value(i32 0, !1609, !DIExpression(), !1606)
  br label %for.cond, !dbg !1610

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1612
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1605, !DIExpression(), !1606)
    #dbg_value(i32 %i.0, !1609, !DIExpression(), !1606)
  %exitcond = icmp ne i32 %i.0, 430, !dbg !1613
  br i1 %exitcond, label %for.body, label %if.end, !dbg !1615

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1616
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1618
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1619
  %shl = shl i8 %1, 4, !dbg !1620
  %or = or i8 %shl, %0, !dbg !1621
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1622
  store i8 %or, ptr %arrayidx, align 1, !dbg !1623
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1624
    #dbg_value(i32 %inc, !1609, !DIExpression(), !1606)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1625
    #dbg_value(ptr %add.ptr3, !1605, !DIExpression(), !1606)
  br label %for.cond, !dbg !1626, !llvm.loop !1627

if.end:                                           ; preds = %for.cond
  ret void, !dbg !1629
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1630 {
entry:
    #dbg_value(i8 %a, !1633, !DIExpression(), !1634)
    #dbg_value(i8 %b, !1635, !DIExpression(), !1634)
  %xor1 = xor i8 %a, %b, !dbg !1636
  ret i8 %xor1, !dbg !1637
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef nonnull %a, ptr noundef nonnull %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1638 {
entry:
    #dbg_value(ptr %a, !1641, !DIExpression(), !1642)
    #dbg_value(ptr %b, !1643, !DIExpression(), !1642)
    #dbg_value(i32 8, !1644, !DIExpression(), !1642)
    #dbg_value(i32 1, !1645, !DIExpression(), !1642)
    #dbg_value(i8 0, !1646, !DIExpression(), !1642)
    #dbg_value(i32 0, !1647, !DIExpression(), !1649)
  br label %for.cond, !dbg !1650

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1642
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1651
    #dbg_value(i32 %i.0, !1647, !DIExpression(), !1649)
    #dbg_value(ptr %b.addr.0, !1643, !DIExpression(), !1642)
    #dbg_value(i8 %ret.0, !1646, !DIExpression(), !1642)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1652
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1654

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1655
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1655
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1657
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #4, !dbg !1658
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #4, !dbg !1659
    #dbg_value(i8 %call1, !1646, !DIExpression(), !1642)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1660
    #dbg_value(i32 %inc, !1647, !DIExpression(), !1649)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !1661
    #dbg_value(ptr %add.ptr, !1643, !DIExpression(), !1642)
  br label %for.cond, !dbg !1662, !llvm.loop !1663

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1642
  ret i8 %ret.0.lcssa, !dbg !1665
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1666 {
entry:
    #dbg_value(i8 %a, !1667, !DIExpression(), !1668)
    #dbg_value(i8 %b, !1669, !DIExpression(), !1668)
  %0 = load volatile i8, ptr @pqmayo_MAYO_1_ref_unsigned_char_blocker, align 1, !dbg !1670
  %xor1 = xor i8 %a, %0, !dbg !1671
    #dbg_value(i8 %xor1, !1667, !DIExpression(), !1668)
  %1 = trunc i8 %xor1 to i1, !dbg !1672
    #dbg_value(i8 poison, !1673, !DIExpression(), !1668)
  %2 = and i8 %xor1, 2, !dbg !1674
  %mul9 = mul i8 %2, %b, !dbg !1675
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1672
  %xor11 = xor i8 %conv10, %mul9, !dbg !1676
    #dbg_value(i8 %xor11, !1673, !DIExpression(), !1668)
  %3 = and i8 %xor1, 4, !dbg !1677
  %mul16 = mul i8 %3, %b, !dbg !1678
  %xor18 = xor i8 %mul16, %xor11, !dbg !1679
    #dbg_value(i8 %xor18, !1673, !DIExpression(), !1668)
  %4 = and i8 %xor1, 8, !dbg !1680
  %mul23 = mul i8 %4, %b, !dbg !1681
  %xor25 = xor i8 %mul23, %xor18, !dbg !1682
    #dbg_value(i8 %xor25, !1673, !DIExpression(), !1668)
    #dbg_value(i8 %xor25, !1683, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1668)
  %5 = lshr i8 %xor25, 4, !dbg !1684
  %6 = lshr i8 %xor25, 3, !dbg !1685
  %7 = and i8 %6, 14, !dbg !1685
  %8 = xor i8 %5, %7, !dbg !1686
  %xor25.masked = and i8 %xor25, 15, !dbg !1687
  %9 = xor i8 %8, %xor25.masked, !dbg !1687
    #dbg_value(i8 %9, !1688, !DIExpression(), !1668)
  ret i8 %9, !dbg !1689
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1690, !DIExpression(), !1691)
    #dbg_value(i32 0, !1692, !DIExpression(), !1694)
  br label %for.cond, !dbg !1695

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1696
    #dbg_value(i32 %i.0, !1692, !DIExpression(), !1694)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1697
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1699

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1700

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1702
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1702
  %shr = lshr i64 %0, 4, !dbg !1704
  %add = or disjoint i32 %i.0, 1, !dbg !1705
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1706
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1706
  %xor = xor i64 %shr, %1, !dbg !1707
  %and = and i64 %xor, 1085102592571150095, !dbg !1708
    #dbg_value(i64 %and, !1709, !DIExpression(), !1710)
  %shl = shl nuw i64 %and, 4, !dbg !1711
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1712
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1713
  %xor3 = xor i64 %2, %shl, !dbg !1713
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1713
  %add4 = or disjoint i32 %i.0, 1, !dbg !1714
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1715
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1716
  %xor6 = xor i64 %3, %and, !dbg !1716
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1716
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1717
    #dbg_value(i32 %add7, !1692, !DIExpression(), !1694)
  br label %for.cond, !dbg !1718, !llvm.loop !1719

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1721
    #dbg_value(i32 %i8.0, !1722, !DIExpression(), !1723)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1724
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1700

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1726

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1728
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1728
  %shr13 = lshr i64 %4, 8, !dbg !1730
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1731
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1732
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1732
  %xor16 = xor i64 %shr13, %5, !dbg !1733
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1734
    #dbg_value(i64 %and17, !1735, !DIExpression(), !1736)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1737
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1738
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1738
  %shr20 = lshr i64 %6, 8, !dbg !1739
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1740
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1741
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1741
  %xor23 = xor i64 %shr20, %7, !dbg !1742
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1743
    #dbg_value(i64 %and24, !1744, !DIExpression(), !1736)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1745
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1746
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1747
  %xor27 = xor i64 %8, %shl25, !dbg !1747
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1747
  %shl28 = shl nuw i64 %and24, 8, !dbg !1748
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1749
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1750
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1751
  %xor31 = xor i64 %9, %shl28, !dbg !1751
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1751
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1752
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1753
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1754
  %xor34 = xor i64 %10, %and17, !dbg !1754
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1754
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1755
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1756
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1757
  %xor37 = xor i64 %11, %and24, !dbg !1757
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1757
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1758
    #dbg_value(i32 %add39, !1722, !DIExpression(), !1723)
  br label %for.cond9, !dbg !1759, !llvm.loop !1760

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1762
    #dbg_value(i32 %i41.0, !1763, !DIExpression(), !1764)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1765
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1726

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1767

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1769
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1769
  %shr47 = lshr i64 %12, 16, !dbg !1771
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1772
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1773
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1773
  %xor50 = xor i64 %shr47, %13, !dbg !1774
  %and51 = and i64 %xor50, 281470681808895, !dbg !1775
    #dbg_value(i64 %and51, !1776, !DIExpression(), !1777)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1778
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1779
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1779
  %shr55 = lshr i64 %14, 16, !dbg !1780
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1781
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1782
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1782
  %xor58 = xor i64 %shr55, %15, !dbg !1783
  %and59 = and i64 %xor58, 281470681808895, !dbg !1784
    #dbg_value(i64 %and59, !1785, !DIExpression(), !1777)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1786
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1787
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1788
  %xor62 = xor i64 %16, %shl60, !dbg !1788
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1788
  %shl63 = shl nuw i64 %and59, 16, !dbg !1789
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1790
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1791
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1792
  %xor66 = xor i64 %17, %shl63, !dbg !1792
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1792
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1793
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1794
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1795
  %xor69 = xor i64 %18, %and51, !dbg !1795
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1795
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1796
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1797
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1798
  %xor72 = xor i64 %19, %and59, !dbg !1798
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1798
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1799
    #dbg_value(i32 %inc, !1763, !DIExpression(), !1764)
  br label %for.cond42, !dbg !1800, !llvm.loop !1801

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1803
    #dbg_value(i32 %i75.0, !1804, !DIExpression(), !1805)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1806
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1767

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1808
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1808
  %shr81 = lshr i64 %20, 32, !dbg !1810
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1811
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1812
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1812
  %.masked = and i64 %21, 4294967295, !dbg !1813
  %and85 = xor i64 %shr81, %.masked, !dbg !1813
    #dbg_value(i64 %and85, !1814, !DIExpression(), !1815)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1816
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1817
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1818
  %xor88 = xor i64 %22, %shl86, !dbg !1818
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1818
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1819
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1820
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1821
  %xor91 = xor i64 %23, %and85, !dbg !1821
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1821
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1822
    #dbg_value(i32 %inc93, !1804, !DIExpression(), !1805)
  br label %for.cond76, !dbg !1823, !llvm.loop !1824

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1826
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef range(i32 8, 11) %bs_mat_cols) unnamed_addr #0 !dbg !1827 {
entry:
    #dbg_value(i32 5, !1828, !DIExpression(), !1829)
    #dbg_value(ptr %mat, !1830, !DIExpression(), !1829)
    #dbg_value(ptr %bs_mat, !1831, !DIExpression(), !1829)
    #dbg_value(ptr %acc, !1832, !DIExpression(), !1829)
    #dbg_value(i32 10, !1833, !DIExpression(), !1829)
    #dbg_value(i32 78, !1834, !DIExpression(), !1829)
    #dbg_value(i32 %bs_mat_cols, !1835, !DIExpression(), !1829)
    #dbg_value(i32 0, !1836, !DIExpression(), !1838)
  br label %for.cond, !dbg !1839

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1840
    #dbg_value(i32 %r.0, !1836, !DIExpression(), !1838)
  %exitcond2 = icmp ne i32 %r.0, 10, !dbg !1841
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1843

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1844

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1847
    #dbg_value(i32 %c.0, !1848, !DIExpression(), !1849)
  %exitcond1 = icmp ne i32 %c.0, 78, !dbg !1850
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1844

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1852

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1855
    #dbg_value(i32 %k.0, !1856, !DIExpression(), !1857)
  %exitcond = icmp ne i32 %k.0, %bs_mat_cols, !dbg !1858
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1852

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, %bs_mat_cols, !dbg !1860
  %add = add nuw nsw i32 %mul, %k.0, !dbg !1862
  %add.ptr.idx = mul nuw nsw i32 %add, 40, !dbg !1863
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1863
  %mul8 = mul nuw nsw i32 %r.0, 78, !dbg !1864
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1865
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1865
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1865
  %mul10 = mul nuw nsw i32 %r.0, %bs_mat_cols, !dbg !1866
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !1867
  %add.ptr13.idx = mul nuw nsw i32 %add11, 40, !dbg !1868
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !1868
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #4, !dbg !1869
  %add14 = add nuw nsw i32 %k.0, 1, !dbg !1870
    #dbg_value(i32 %add14, !1856, !DIExpression(), !1857)
  br label %for.cond4, !dbg !1871, !llvm.loop !1872

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1874
    #dbg_value(i32 %inc, !1848, !DIExpression(), !1849)
  br label %for.cond1, !dbg !1875, !llvm.loop !1876

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1878
    #dbg_value(i32 %inc18, !1836, !DIExpression(), !1838)
  br label %for.cond, !dbg !1879, !llvm.loop !1880

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1882
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %V, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !1883 {
entry:
    #dbg_value(ptr %p, !1884, !DIExpression(), !1885)
    #dbg_value(ptr %P1, !1886, !DIExpression(), !1885)
    #dbg_value(ptr %V, !1887, !DIExpression(), !1885)
    #dbg_value(ptr %acc, !1888, !DIExpression(), !1885)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 5, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 78, i32 noundef 78, i32 noundef 10, i32 noundef 1) #4, !dbg !1889
  ret void, !dbg !1890
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1891 {
entry:
    #dbg_value(i32 5, !1892, !DIExpression(), !1893)
    #dbg_value(ptr %bs_mat, !1894, !DIExpression(), !1893)
    #dbg_value(ptr %mat, !1895, !DIExpression(), !1893)
    #dbg_value(ptr %acc, !1896, !DIExpression(), !1893)
    #dbg_value(i32 78, !1897, !DIExpression(), !1893)
    #dbg_value(i32 78, !1898, !DIExpression(), !1893)
    #dbg_value(i32 10, !1899, !DIExpression(), !1893)
    #dbg_value(i32 1, !1900, !DIExpression(), !1893)
    #dbg_value(i32 0, !1901, !DIExpression(), !1893)
    #dbg_value(i32 0, !1902, !DIExpression(), !1904)
  br label %for.cond, !dbg !1905

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 78, %entry ], !dbg !1906
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1906
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1907
    #dbg_value(i32 %r.0, !1902, !DIExpression(), !1904)
    #dbg_value(i32 %bs_mat_entries_used.0, !1901, !DIExpression(), !1893)
  %exitcond2 = icmp ne i32 %r.0, 78, !dbg !1908
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1910

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !1911
  br label %for.cond1, !dbg !1911

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %bs_mat_entries_used.1 = phi i32 [ %add14, %for.inc15 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !1893
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ %r.0, %for.cond1.preheader ], !dbg !1914
    #dbg_value(i32 %c.0, !1915, !DIExpression(), !1916)
    #dbg_value(i32 %bs_mat_entries_used.1, !1901, !DIExpression(), !1893)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !1917
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1911

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1919

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1922
    #dbg_value(i32 %k.0, !1923, !DIExpression(), !1924)
  %exitcond = icmp ne i32 %k.0, 10, !dbg !1925
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1919

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !1927
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1927
  %mul8 = mul nuw nsw i32 %k.0, 78, !dbg !1929
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1930
  %arrayidx = getelementptr i8, ptr %1, i32 %c.0, !dbg !1930
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1930
  %mul9 = mul nuw nsw i32 %r.0, 10, !dbg !1931
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !1932
  %add.ptr12.idx = mul nuw nsw i32 %add10, 40, !dbg !1933
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !1933
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #4, !dbg !1934
  %add13 = add nuw nsw i32 %k.0, 1, !dbg !1935
    #dbg_value(i32 %add13, !1923, !DIExpression(), !1924)
  br label %for.cond4, !dbg !1936, !llvm.loop !1937

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1901, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1893)
  %add14 = add i32 %bs_mat_entries_used.1, 1, !dbg !1939
    #dbg_value(i32 %add14, !1901, !DIExpression(), !1893)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1940
    #dbg_value(i32 %inc, !1915, !DIExpression(), !1916)
  br label %for.cond1, !dbg !1941, !llvm.loop !1942

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1893
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1944
    #dbg_value(i32 %inc18, !1902, !DIExpression(), !1904)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !1945
  br label %for.cond, !dbg !1945, !llvm.loop !1946

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1948
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1949 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1950, !DIExpression(), !1951)
    #dbg_value(ptr %sm, !1952, !DIExpression(), !1951)
    #dbg_value(ptr %smlen, !1953, !DIExpression(), !1951)
    #dbg_value(ptr %m, !1954, !DIExpression(), !1951)
    #dbg_value(i32 %mlen, !1955, !DIExpression(), !1951)
    #dbg_value(ptr %csk, !1956, !DIExpression(), !1951)
    #dbg_value(i32 0, !1957, !DIExpression(), !1951)
    #dbg_value(i32 454, !1958, !DIExpression(), !1951)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1959
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #6, !dbg !1960
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1961
    #dbg_value(ptr %siglen, !1962, !DIExpression(DW_OP_deref), !1951)
  %call2 = call i32 @pqmayo_MAYO_1_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #4, !dbg !1963
    #dbg_value(i32 0, !1957, !DIExpression(), !1951)
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1962, !DIExpression(), !1951)
  %cmp3.not = icmp eq i32 %0, 454
  br i1 %cmp3.not, label %if.end, label %if.then, !dbg !1964

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1966
    #dbg_value(i32 %1, !1962, !DIExpression(), !1951)
  %add = add i32 %1, %mlen, !dbg !1968
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #6, !dbg !1969
  br label %err, !dbg !1970

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1971
    #dbg_value(i32 %2, !1962, !DIExpression(), !1951)
  %add5 = add i32 %2, %mlen, !dbg !1972
  store i32 %add5, ptr %smlen, align 4, !dbg !1973
  br label %err, !dbg !1974

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1975, !1976)
  ret i32 0, !dbg !1977
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1978 {
entry:
    #dbg_value(ptr %p, !1979, !DIExpression(), !1980)
    #dbg_value(ptr %m, !1981, !DIExpression(), !1980)
    #dbg_value(ptr %mlen, !1982, !DIExpression(), !1980)
    #dbg_value(ptr %sm, !1983, !DIExpression(), !1980)
    #dbg_value(i32 %smlen, !1984, !DIExpression(), !1980)
    #dbg_value(ptr %pk, !1985, !DIExpression(), !1980)
    #dbg_value(i32 454, !1986, !DIExpression(), !1980)
  %cmp = icmp ult i32 %smlen, 454, !dbg !1987
  br i1 %cmp, label %return, label %if.end, !dbg !1987

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1989
  %sub = add i32 %smlen, -454, !dbg !1990
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #4, !dbg !1991
    #dbg_value(i32 %call, !1992, !DIExpression(), !1980)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1993
  br i1 %cmp1, label %if.then2, label %return, !dbg !1993

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -454, !dbg !1995
  store i32 %sub3, ptr %mlen, align 4, !dbg !1997
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1998
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #6, !dbg !1999
  br label %return, !dbg !2000

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ %call, %if.end ], !dbg !1980
  ret i32 %retval.0, !dbg !2001
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !2002 {
entry:
  %tEnc = alloca [39 x i8], align 1
  %t = alloca [78 x i8], align 1
  %y = alloca [156 x i8], align 1
  %s = alloca [860 x i8], align 1
  %pk = alloca [18705 x i64], align 8
  %tmp = alloca [56 x i8], align 1
    #dbg_value(ptr %p, !2005, !DIExpression(), !2006)
    #dbg_value(ptr %m, !2007, !DIExpression(), !2006)
    #dbg_value(i32 %mlen, !2008, !DIExpression(), !2006)
    #dbg_value(ptr %sig, !2009, !DIExpression(), !2006)
    #dbg_value(ptr %cpk, !2010, !DIExpression(), !2006)
    #dbg_declare(ptr %tEnc, !2011, !DIExpression(), !2012)
    #dbg_declare(ptr %t, !2013, !DIExpression(), !2014)
    #dbg_declare(ptr %y, !2015, !DIExpression(), !2019)
  call void @mayo_memset(ptr %y, i8 0, i32 156), !dbg !2019
    #dbg_declare(ptr %s, !2020, !DIExpression(), !2021)
    #dbg_declare(ptr %pk, !2022, !DIExpression(), !2023)
  call void @mayo_memset(ptr %pk, i8 0, i32 149640), !dbg !2023
    #dbg_declare(ptr %tmp, !2024, !DIExpression(), !2028)
    #dbg_value(i32 78, !2029, !DIExpression(), !2006)
    #dbg_value(i32 86, !2030, !DIExpression(), !2006)
    #dbg_value(i32 10, !2031, !DIExpression(), !2006)
    #dbg_value(i32 39, !2032, !DIExpression(), !2006)
    #dbg_value(i32 454, !2033, !DIExpression(), !2006)
    #dbg_value(i32 32, !2034, !DIExpression(), !2006)
    #dbg_value(i32 24, !2035, !DIExpression(), !2006)
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #4, !dbg !2036
    #dbg_value(i32 0, !2037, !DIExpression(), !2006)
    #dbg_value(ptr %pk, !2038, !DIExpression(), !2006)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 123240, !dbg !2039
    #dbg_value(ptr %add.ptr, !2040, !DIExpression(), !2006)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 148200, !dbg !2041
    #dbg_value(ptr %add.ptr2, !2042, !DIExpression(), !2006)
  call void @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #4, !dbg !2043
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !2044
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 430, !dbg !2045
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 24) #6, !dbg !2046
  call void @shake256(ptr noundef nonnull %tEnc, i32 noundef 39, ptr noundef nonnull %tmp, i32 noundef 56) #4, !dbg !2047
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 78) #4, !dbg !2048
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 860) #4, !dbg !2049
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #4, !dbg !2050
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 78) #6, !dbg !2051
  %cmp21 = icmp ne i32 %call20, 0, !dbg !2053
  %. = zext i1 %cmp21 to i32, !dbg !2006
  ret i32 %., !dbg !2054
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !2055 {
entry:
    #dbg_value(ptr %p, !2056, !DIExpression(), !2057)
    #dbg_value(ptr %cpk, !2058, !DIExpression(), !2057)
    #dbg_value(ptr %pk, !2059, !DIExpression(), !2057)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #4, !dbg !2060
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !2061
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 148200, !dbg !2062
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 36, i32 noundef 78) #4, !dbg !2063
  ret i32 0, !dbg !2064
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %eval) unnamed_addr #0 !dbg !2065 {
entry:
  %SPS = alloca [500 x i64], align 8
  %zero = alloca [78 x i8], align 1
    #dbg_value(ptr %p, !2068, !DIExpression(), !2069)
    #dbg_value(ptr %s, !2070, !DIExpression(), !2069)
    #dbg_value(ptr %P1, !2071, !DIExpression(), !2069)
    #dbg_value(ptr %P2, !2072, !DIExpression(), !2069)
    #dbg_value(ptr %P3, !2073, !DIExpression(), !2069)
    #dbg_value(ptr %eval, !2074, !DIExpression(), !2069)
    #dbg_declare(ptr %SPS, !2075, !DIExpression(), !2079)
  call void @mayo_memset(ptr %SPS, i8 0, i32 4000), !dbg !2079
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #4, !dbg !2080
    #dbg_declare(ptr %zero, !2081, !DIExpression(), !2082)
  call void @mayo_memset(ptr %zero, i8 0, i32 78), !dbg !2082
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #4, !dbg !2083
  ret void, !dbg !2084
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %s, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2085 {
entry:
  %PS = alloca [4300 x i64], align 8
    #dbg_value(ptr %p, !2088, !DIExpression(), !2089)
    #dbg_value(ptr %P1, !2090, !DIExpression(), !2089)
    #dbg_value(ptr %P2, !2091, !DIExpression(), !2089)
    #dbg_value(ptr %P3, !2092, !DIExpression(), !2089)
    #dbg_value(ptr %s, !2093, !DIExpression(), !2089)
    #dbg_value(ptr %SPS, !2094, !DIExpression(), !2089)
    #dbg_declare(ptr %PS, !2095, !DIExpression(), !2099)
  call void @mayo_memset(ptr %PS, i8 0, i32 34400), !dbg !2099
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 78, i32 noundef 78, i32 noundef 8, i32 noundef 10, ptr noundef nonnull %PS) #4, !dbg !2100
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 78, i32 noundef 10, i32 noundef 86, ptr noundef %SPS) #4, !dbg !2101
  ret void, !dbg !2102
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef nonnull %PS) unnamed_addr #0 !dbg !2103 {
entry:
  %accumulator = alloca [68800 x i64], align 8
    #dbg_value(ptr %P1, !2106, !DIExpression(), !2107)
    #dbg_value(ptr %P2, !2108, !DIExpression(), !2107)
    #dbg_value(ptr %P3, !2109, !DIExpression(), !2107)
    #dbg_value(ptr %S, !2110, !DIExpression(), !2107)
    #dbg_value(i32 78, !2111, !DIExpression(), !2107)
    #dbg_value(i32 78, !2112, !DIExpression(), !2107)
    #dbg_value(i32 8, !2113, !DIExpression(), !2107)
    #dbg_value(i32 10, !2114, !DIExpression(), !2107)
    #dbg_value(ptr %PS, !2115, !DIExpression(), !2107)
    #dbg_value(i32 86, !2116, !DIExpression(), !2107)
    #dbg_value(i32 5, !2117, !DIExpression(), !2107)
    #dbg_declare(ptr %accumulator, !2118, !DIExpression(), !2122)
  call void @mayo_memset(ptr %accumulator, i8 0, i32 550400), !dbg !2122
    #dbg_value(i32 0, !2123, !DIExpression(), !2107)
    #dbg_value(i32 0, !2124, !DIExpression(), !2126)
  br label %for.cond, !dbg !2127

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ 78, %entry ], !dbg !2128
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2128
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2129
    #dbg_value(i32 %row.0, !2124, !DIExpression(), !2126)
    #dbg_value(i32 %P1_used.0, !2123, !DIExpression(), !2107)
  %exitcond4 = icmp ne i32 %row.0, 78, !dbg !2130
  br i1 %exitcond4, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2132

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2133
  br label %for.cond2, !dbg !2133

for.cond56.preheader:                             ; preds = %for.cond
  br label %for.cond56, !dbg !2136

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !2107
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2138
    #dbg_value(i32 %j.0, !2139, !DIExpression(), !2140)
    #dbg_value(i32 %P1_used.1, !2123, !DIExpression(), !2107)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2141
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2133

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !2107
  br label %for.cond21, !dbg !2143

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2145

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2148
    #dbg_value(i32 %col.0, !2149, !DIExpression(), !2150)
  %exitcond = icmp ne i32 %col.0, 10, !dbg !2151
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2145

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %P1_used.1, 40, !dbg !2153
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !2153
  %mul8 = mul nuw nsw i32 %row.0, 10, !dbg !2155
  %add9 = add nuw nsw i32 %mul8, %col.0, !dbg !2156
  %mul10 = shl nuw nsw i32 %add9, 4, !dbg !2157
  %mul11 = mul nuw nsw i32 %col.0, 86, !dbg !2158
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2159
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2159
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2159
  %conv = zext i8 %2 to i32, !dbg !2159
  %add13 = add nuw nsw i32 %mul10, %conv, !dbg !2160
  %add.ptr15.idx = mul nuw nsw i32 %add13, 40, !dbg !2161
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr15.idx, !dbg !2161
  call fastcc void @m_vec_add(i32 noundef 5, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #4, !dbg !2162
  %inc = add nuw nsw i32 %col.0, 1, !dbg !2163
    #dbg_value(i32 %inc, !2149, !DIExpression(), !2150)
  br label %for.cond5, !dbg !2164, !llvm.loop !2165

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2123, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2107)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2167
    #dbg_value(i32 %inc16, !2123, !DIExpression(), !2107)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2168
    #dbg_value(i32 %inc18, !2139, !DIExpression(), !2140)
  br label %for.cond2, !dbg !2169, !llvm.loop !2170

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2172
    #dbg_value(i32 %j20.0, !2173, !DIExpression(), !2174)
  %exitcond3 = icmp ne i32 %j20.0, 8, !dbg !2175
  br i1 %exitcond3, label %for.cond26.preheader, label %for.inc52, !dbg !2143

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2177

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2180
    #dbg_value(i32 %col25.0, !2181, !DIExpression(), !2182)
  %exitcond2 = icmp ne i32 %col25.0, 10, !dbg !2183
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2177

for.body29:                                       ; preds = %for.cond26
  %mul30 = shl nuw nsw i32 %row.0, 3, !dbg !2185
  %add31 = or disjoint i32 %mul30, %j20.0, !dbg !2187
  %add.ptr33.idx = mul nuw nsw i32 %add31, 40, !dbg !2188
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr33.idx, !dbg !2188
  %mul35 = mul nuw nsw i32 %row.0, 10, !dbg !2189
  %add36 = add nuw nsw i32 %mul35, %col25.0, !dbg !2190
  %mul37 = shl nuw nsw i32 %add36, 4, !dbg !2191
  %mul38 = mul nuw nsw i32 %col25.0, 86, !dbg !2192
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2193
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2193
  %arrayidx41 = getelementptr i8, ptr %4, i32 78, !dbg !2193
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2193
  %conv42 = zext i8 %5 to i32, !dbg !2193
  %add43 = add nuw nsw i32 %mul37, %conv42, !dbg !2194
  %add.ptr45.idx = mul nuw nsw i32 %add43, 40, !dbg !2195
  %add.ptr45 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr45.idx, !dbg !2195
  call fastcc void @m_vec_add(i32 noundef 5, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #4, !dbg !2196
  %inc47 = add nuw nsw i32 %col25.0, 1, !dbg !2197
    #dbg_value(i32 %inc47, !2181, !DIExpression(), !2182)
  br label %for.cond26, !dbg !2198, !llvm.loop !2199

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw nsw i32 %j20.0, 1, !dbg !2201
    #dbg_value(i32 %inc50, !2173, !DIExpression(), !2174)
  br label %for.cond21, !dbg !2202, !llvm.loop !2203

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw nsw i32 %row.0, 1, !dbg !2205
    #dbg_value(i32 %inc53, !2124, !DIExpression(), !2126)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !2206
  br label %for.cond, !dbg !2206, !llvm.loop !2207

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %indvars.iv6 = phi i32 [ 8, %for.cond56.preheader ], [ %indvars.iv.next7, %for.inc90 ], !dbg !2209
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2209
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ 78, %for.cond56.preheader ], !dbg !2210
    #dbg_value(i32 %row55.0, !2211, !DIExpression(), !2212)
    #dbg_value(i32 %P3_used.0, !2213, !DIExpression(), !2107)
  %exitcond9 = icmp ne i32 %row55.0, 86, !dbg !2214
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2136

for.cond61.preheader:                             ; preds = %for.cond56
  %6 = add i32 %P3_used.0, %indvars.iv6, !dbg !2216
  br label %for.cond61, !dbg !2216

while.cond.preheader:                             ; preds = %for.cond56
  br label %while.cond, !dbg !2219

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !2107
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2220
    #dbg_value(i32 %j60.0, !2221, !DIExpression(), !2222)
    #dbg_value(i32 %P3_used.1, !2213, !DIExpression(), !2107)
  %exitcond8 = icmp ne i32 %P3_used.1, %6, !dbg !2223
  br i1 %exitcond8, label %for.cond66.preheader, label %for.inc90, !dbg !2216

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2225

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2228
    #dbg_value(i32 %col65.0, !2229, !DIExpression(), !2230)
  %exitcond5 = icmp ne i32 %col65.0, 10, !dbg !2231
  br i1 %exitcond5, label %for.body69, label %for.inc87, !dbg !2225

for.body69:                                       ; preds = %for.cond66
  %add.ptr71.idx = mul nsw i32 %P3_used.1, 40, !dbg !2233
  %add.ptr71 = getelementptr inbounds i8, ptr %P3, i32 %add.ptr71.idx, !dbg !2233
  %mul73 = mul nuw nsw i32 %row55.0, 10, !dbg !2235
  %add74 = add nuw nsw i32 %mul73, %col65.0, !dbg !2236
  %mul75 = shl nuw nsw i32 %add74, 4, !dbg !2237
  %mul76 = mul nuw nsw i32 %col65.0, 86, !dbg !2238
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2239
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2239
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2239
  %conv79 = zext i8 %8 to i32, !dbg !2239
  %add80 = add nuw nsw i32 %mul75, %conv79, !dbg !2240
  %add.ptr82.idx = mul nuw nsw i32 %add80, 40, !dbg !2241
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr82.idx, !dbg !2241
  call fastcc void @m_vec_add(i32 noundef 5, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #4, !dbg !2242
  %inc84 = add nuw nsw i32 %col65.0, 1, !dbg !2243
    #dbg_value(i32 %inc84, !2229, !DIExpression(), !2230)
  br label %for.cond66, !dbg !2244, !llvm.loop !2245

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2213, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2107)
  %inc86 = add i32 %P3_used.1, 1, !dbg !2247
    #dbg_value(i32 %inc86, !2213, !DIExpression(), !2107)
  %inc88 = add nuw nsw i32 %j60.0, 1, !dbg !2248
    #dbg_value(i32 %inc88, !2221, !DIExpression(), !2222)
  br label %for.cond61, !dbg !2249, !llvm.loop !2250

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !2107
  %inc91 = add nuw nsw i32 %row55.0, 1, !dbg !2252
    #dbg_value(i32 %inc91, !2211, !DIExpression(), !2212)
  %indvars.iv.next7 = add nsw i32 %indvars.iv6, -1, !dbg !2253
  br label %for.cond56, !dbg !2253, !llvm.loop !2254

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !2107
    #dbg_value(i32 %i.0, !2256, !DIExpression(), !2107)
  %exitcond10 = icmp ne i32 %i.0, 860, !dbg !2257
  br i1 %exitcond10, label %while.body, label %while.end, !dbg !2219

while.body:                                       ; preds = %while.cond
  %add.ptr99.idx = mul nuw nsw i32 %i.0, 640, !dbg !2258
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr99.idx, !dbg !2258
  %add.ptr101.idx = mul nuw nsw i32 %i.0, 40, !dbg !2260
  %add.ptr101 = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr101.idx, !dbg !2260
  call fastcc void @m_vec_multiply_bins(i32 noundef 5, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #4, !dbg !2261
  %inc102 = add nuw nsw i32 %i.0, 1, !dbg !2262
    #dbg_value(i32 %inc102, !2256, !DIExpression(), !2107)
  br label %while.cond, !dbg !2219, !llvm.loop !2263

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2265
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2266 {
entry:
  %accumulator = alloca [8000 x i64], align 8
    #dbg_value(ptr %PS, !2269, !DIExpression(), !2270)
    #dbg_value(ptr %S, !2271, !DIExpression(), !2270)
    #dbg_value(i32 78, !2272, !DIExpression(), !2270)
    #dbg_value(i32 10, !2273, !DIExpression(), !2270)
    #dbg_value(i32 86, !2274, !DIExpression(), !2270)
    #dbg_value(ptr %SPS, !2275, !DIExpression(), !2270)
    #dbg_declare(ptr %accumulator, !2276, !DIExpression(), !2280)
  call void @mayo_memset(ptr %accumulator, i8 0, i32 64000), !dbg !2280
    #dbg_value(i32 5, !2281, !DIExpression(), !2270)
    #dbg_value(i32 0, !2282, !DIExpression(), !2284)
  br label %for.cond, !dbg !2285

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2286
    #dbg_value(i32 %row.0, !2282, !DIExpression(), !2284)
  %exitcond2 = icmp ne i32 %row.0, 10, !dbg !2287
  br i1 %exitcond2, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2289

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2290

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !2293

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2294
    #dbg_value(i32 %j.0, !2295, !DIExpression(), !2296)
  %exitcond1 = icmp ne i32 %j.0, 86, !dbg !2297
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2290

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2299

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2302
    #dbg_value(i32 %col.0, !2303, !DIExpression(), !2304)
  %exitcond = icmp ne i32 %col.0, 10, !dbg !2305
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2299

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %j.0, 10, !dbg !2307
  %add7 = add nuw nsw i32 %mul, %col.0, !dbg !2309
  %add.ptr.idx = mul nuw nsw i32 %add7, 40, !dbg !2310
  %add.ptr = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr.idx, !dbg !2310
  %mul9 = mul nuw nsw i32 %row.0, 10, !dbg !2311
  %add10 = add nuw nsw i32 %mul9, %col.0, !dbg !2312
  %mul11 = shl nuw nsw i32 %add10, 4, !dbg !2313
  %mul12 = mul nuw nsw i32 %row.0, 86, !dbg !2314
  %0 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2315
  %arrayidx = getelementptr i8, ptr %0, i32 %j.0, !dbg !2315
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2315
  %conv = zext i8 %1 to i32, !dbg !2315
  %add14 = add nuw nsw i32 %mul11, %conv, !dbg !2316
  %add.ptr16.idx = mul nuw nsw i32 %add14, 40, !dbg !2317
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr16.idx, !dbg !2317
  call fastcc void @m_vec_add(i32 noundef 5, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #4, !dbg !2318
  %add17 = add nuw nsw i32 %col.0, 1, !dbg !2319
    #dbg_value(i32 %add17, !2303, !DIExpression(), !2304)
  br label %for.cond4, !dbg !2320, !llvm.loop !2321

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %j.0, 1, !dbg !2323
    #dbg_value(i32 %inc, !2295, !DIExpression(), !2296)
  br label %for.cond1, !dbg !2324, !llvm.loop !2325

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw nsw i32 %row.0, 1, !dbg !2327
    #dbg_value(i32 %inc21, !2282, !DIExpression(), !2284)
  br label %for.cond, !dbg !2328, !llvm.loop !2329

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2270
    #dbg_value(i32 %i.0, !2331, !DIExpression(), !2270)
  %exitcond3 = icmp ne i32 %i.0, 100, !dbg !2332
  br i1 %exitcond3, label %while.body, label %while.end, !dbg !2293

while.body:                                       ; preds = %while.cond
  %add.ptr29.idx = mul nuw nsw i32 %i.0, 640, !dbg !2333
  %add.ptr29 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr29.idx, !dbg !2333
  %add.ptr31.idx = mul nuw nsw i32 %i.0, 40, !dbg !2335
  %add.ptr31 = getelementptr inbounds nuw i8, ptr %SPS, i32 %add.ptr31.idx, !dbg !2335
  call fastcc void @m_vec_multiply_bins(i32 noundef 5, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #4, !dbg !2336
  %inc32 = add nuw nsw i32 %i.0, 1, !dbg !2337
    #dbg_value(i32 %inc32, !2331, !DIExpression(), !2270)
  br label %while.cond, !dbg !2293, !llvm.loop !2338

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2340
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2341 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2344, !DIExpression(), !2345)
    #dbg_value(ptr %in, !2346, !DIExpression(), !2345)
    #dbg_value(ptr %acc, !2347, !DIExpression(), !2345)
    #dbg_value(i32 0, !2348, !DIExpression(), !2350)
  br label %for.cond, !dbg !2351

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2352
    #dbg_value(i32 %i.0, !2348, !DIExpression(), !2350)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2353
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2355

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2356
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2356
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2358
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2359
  %xor = xor i64 %1, %0, !dbg !2359
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2359
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2360
    #dbg_value(i32 %inc, !2348, !DIExpression(), !2350)
  br label %for.cond, !dbg !2361, !llvm.loop !2362

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2364
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef nonnull %bins, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2365 {
entry:
    #dbg_value(i32 5, !2368, !DIExpression(), !2369)
    #dbg_value(ptr %bins, !2370, !DIExpression(), !2369)
    #dbg_value(ptr %out, !2371, !DIExpression(), !2369)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 200, !dbg !2372
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 400, !dbg !2373
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #4, !dbg !2374
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 440, !dbg !2375
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2376
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #4, !dbg !2377
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 400, !dbg !2378
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 280, !dbg !2379
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #4, !dbg !2380
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2381
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 240, !dbg !2382
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #4, !dbg !2383
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 280, !dbg !2384
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2385
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #4, !dbg !2386
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 240, !dbg !2387
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 120, !dbg !2388
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #4, !dbg !2389
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2390
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 600, !dbg !2391
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #4, !dbg !2392
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 120, !dbg !2393
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2394
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #4, !dbg !2395
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 600, !dbg !2396
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 520, !dbg !2397
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #4, !dbg !2398
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2399
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 160, !dbg !2400
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #4, !dbg !2401
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 520, !dbg !2402
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 360, !dbg !2403
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #4, !dbg !2404
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 160, !dbg !2405
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 80, !dbg !2406
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #4, !dbg !2407
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 360, !dbg !2408
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 40, !dbg !2409
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 5, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #4, !dbg !2410
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 80, !dbg !2411
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 40, !dbg !2412
  call fastcc void @m_vec_mul_add_x(i32 noundef 5, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #4, !dbg !2413
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 40, !dbg !2414
  call fastcc void @m_vec_copy(i32 noundef 5, ptr noundef nonnull %add.ptr28, ptr noundef %out) #4, !dbg !2415
  ret void, !dbg !2416
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2417 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2418, !DIExpression(), !2419)
    #dbg_value(ptr %in, !2420, !DIExpression(), !2419)
    #dbg_value(ptr %acc, !2421, !DIExpression(), !2419)
    #dbg_value(i64 1229782938247303441, !2422, !DIExpression(), !2419)
    #dbg_value(i32 0, !2423, !DIExpression(), !2425)
  br label %for.cond, !dbg !2426

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2427
    #dbg_value(i32 %i.0, !2423, !DIExpression(), !2425)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2428
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2430

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2431
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2431
  %and = and i64 %0, 1229782938247303441, !dbg !2433
    #dbg_value(i64 %and, !2434, !DIExpression(), !2435)
  %xor = lshr i64 %0, 1, !dbg !2436
  %shr = and i64 %xor, 8608480567731124087, !dbg !2436
  %mul = mul nuw i64 %and, 9, !dbg !2437
  %xor2 = xor i64 %shr, %mul, !dbg !2438
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2439
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2440
  %xor4 = xor i64 %1, %xor2, !dbg !2440
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2440
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2441
    #dbg_value(i32 %inc, !2423, !DIExpression(), !2425)
  br label %for.cond, !dbg !2442, !llvm.loop !2443

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2445
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2446 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2447, !DIExpression(), !2448)
    #dbg_value(ptr %in, !2449, !DIExpression(), !2448)
    #dbg_value(ptr %acc, !2450, !DIExpression(), !2448)
    #dbg_value(i64 -8608480567731124088, !2451, !DIExpression(), !2448)
    #dbg_value(i32 0, !2452, !DIExpression(), !2454)
  br label %for.cond, !dbg !2455

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2456
    #dbg_value(i32 %i.0, !2452, !DIExpression(), !2454)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2457
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2459

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2460
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2460
    #dbg_value(i64 %0, !2462, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2463)
  %xor = shl i64 %0, 1, !dbg !2464
  %shl = and i64 %xor, -1229782938247303442, !dbg !2464
  %and = lshr i64 %0, 3, !dbg !2465
  %shr = and i64 %and, 1229782938247303441, !dbg !2465
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2466
  %xor2 = xor i64 %shl, %mul, !dbg !2467
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2468
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2469
  %xor4 = xor i64 %1, %xor2, !dbg !2469
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2469
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2470
    #dbg_value(i32 %inc, !2452, !DIExpression(), !2454)
  br label %for.cond, !dbg !2471, !llvm.loop !2472

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2474
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2475 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2476, !DIExpression(), !2477)
    #dbg_value(ptr %in, !2478, !DIExpression(), !2477)
    #dbg_value(ptr %out, !2479, !DIExpression(), !2477)
    #dbg_value(i32 0, !2480, !DIExpression(), !2482)
  br label %for.cond, !dbg !2483

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2484
    #dbg_value(i32 %i.0, !2480, !DIExpression(), !2482)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2485
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2487

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2488
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2488
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2490
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2491
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2492
    #dbg_value(i32 %inc, !2480, !DIExpression(), !2482)
  br label %for.cond, !dbg !2493, !llvm.loop !2494

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2496
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_1_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2497 {
entry:
    #dbg_value(ptr %p, !2528, !DIExpression(), !2529)
    #dbg_value(ptr %in, !2530, !DIExpression(), !2529)
    #dbg_value(ptr %out, !2531, !DIExpression(), !2529)
    #dbg_value(i32 %size, !2532, !DIExpression(), !2529)
    #dbg_value(i32 5, !2533, !DIExpression(), !2529)
    #dbg_value(i32 0, !2534, !DIExpression(), !2529)
    #dbg_value(i32 0, !2535, !DIExpression(), !2537)
  %0 = icmp sgt i32 %size, 0, !dbg !2538
  %1 = select i1 %0, i32 %size, i32 0, !dbg !2538
  br label %for.cond, !dbg !2538

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2539
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2539
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2540
    #dbg_value(i32 %r.0, !2535, !DIExpression(), !2537)
    #dbg_value(i32 %m_vecs_stored.0, !2534, !DIExpression(), !2529)
  %exitcond1 = icmp ne i32 %r.0, %1, !dbg !2541
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2543

for.cond1.preheader:                              ; preds = %for.cond
  %2 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2544
  br label %for.cond1, !dbg !2544

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2529
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2547
    #dbg_value(i32 %c.0, !2548, !DIExpression(), !2549)
    #dbg_value(i32 %m_vecs_stored.1, !2534, !DIExpression(), !2529)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %2, !dbg !2550
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2544

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2552
  %add = add nsw i32 %mul, %c.0, !dbg !2554
  %add.ptr.idx = mul nsw i32 %add, 40, !dbg !2555
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2555
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 40, !dbg !2556
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2556
  call fastcc void @m_vec_copy.17(i32 noundef 5, ptr noundef %add.ptr, ptr noundef %add.ptr6) #4, !dbg !2557
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2558
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2558

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2560
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2562
  %add.ptr11.idx = mul nsw i32 %add9, 40, !dbg !2563
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2563
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 40, !dbg !2564
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2564
  call fastcc void @m_vec_add.18(i32 noundef 5, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #4, !dbg !2565
  br label %for.inc, !dbg !2566

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2534, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2529)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2567
    #dbg_value(i32 %inc, !2534, !DIExpression(), !2529)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2568
    #dbg_value(i32 %inc14, !2548, !DIExpression(), !2549)
  br label %for.cond1, !dbg !2569, !llvm.loop !2570

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2529
  %inc16 = add nuw i32 %r.0, 1, !dbg !2572
    #dbg_value(i32 %inc16, !2535, !DIExpression(), !2537)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2573
  br label %for.cond, !dbg !2573, !llvm.loop !2574

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2576
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2577 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2578, !DIExpression(), !2579)
    #dbg_value(ptr %in, !2580, !DIExpression(), !2579)
    #dbg_value(ptr %out, !2581, !DIExpression(), !2579)
    #dbg_value(i32 0, !2582, !DIExpression(), !2584)
  br label %for.cond, !dbg !2585

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2586
    #dbg_value(i32 %i.0, !2582, !DIExpression(), !2584)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2587
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2589

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2590
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2590
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2592
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2593
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2594
    #dbg_value(i32 %inc, !2582, !DIExpression(), !2584)
  br label %for.cond, !dbg !2595, !llvm.loop !2596

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2598
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2599 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2600, !DIExpression(), !2601)
    #dbg_value(ptr %in, !2602, !DIExpression(), !2601)
    #dbg_value(ptr %acc, !2603, !DIExpression(), !2601)
    #dbg_value(i32 0, !2604, !DIExpression(), !2606)
  br label %for.cond, !dbg !2607

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2608
    #dbg_value(i32 %i.0, !2604, !DIExpression(), !2606)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2609
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2611

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2612
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2612
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2614
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2615
  %xor = xor i64 %1, %0, !dbg !2615
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2615
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2616
    #dbg_value(i32 %inc, !2604, !DIExpression(), !2606)
  br label %for.cond, !dbg !2617, !llvm.loop !2618

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2620
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2621 {
entry:
  %Ar = alloca [78 x i8], align 1
    #dbg_value(ptr %p, !2624, !DIExpression(), !2625)
    #dbg_value(ptr %A, !2626, !DIExpression(), !2625)
    #dbg_value(ptr %y, !2627, !DIExpression(), !2625)
    #dbg_value(ptr %r, !2628, !DIExpression(), !2625)
    #dbg_value(ptr %x, !2629, !DIExpression(), !2625)
    #dbg_value(i32 %k, !2630, !DIExpression(), !2625)
    #dbg_value(i32 %o, !2631, !DIExpression(), !2625)
    #dbg_value(i32 %m, !2632, !DIExpression(), !2625)
    #dbg_value(i32 %A_cols, !2633, !DIExpression(), !2625)
    #dbg_value(i32 0, !2634, !DIExpression(), !2636)
  %0 = mul nsw i32 %o, %k, !dbg !2637
  %1 = icmp sgt i32 %0, 0, !dbg !2637
  %2 = select i1 %1, i32 %0, i32 0, !dbg !2637
  br label %for.cond, !dbg !2637

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2638
    #dbg_value(i32 %i.0, !2634, !DIExpression(), !2636)
  %exitcond = icmp ne i32 %i.0, %2, !dbg !2639
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2641

for.cond3.preheader:                              ; preds = %for.cond
  %3 = icmp sgt i32 %m, 0, !dbg !2642
  %4 = select i1 %3, i32 %m, i32 0, !dbg !2642
  br label %for.cond3, !dbg !2642

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2644
  %5 = load i8, ptr %arrayidx, align 1, !dbg !2644
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2646
  store i8 %5, ptr %arrayidx1, align 1, !dbg !2647
  %inc = add nuw i32 %i.0, 1, !dbg !2648
    #dbg_value(i32 %inc, !2634, !DIExpression(), !2636)
  br label %for.cond, !dbg !2649, !llvm.loop !2650

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2652
    #dbg_value(i32 %i2.0, !2653, !DIExpression(), !2654)
  %exitcond14 = icmp ne i32 %i2.0, %4, !dbg !2655
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2642

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2657
  %mul7 = mul nsw i32 %k, %o, !dbg !2659
  %add = add nsw i32 %mul7, 1, !dbg !2660
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2661
  %6 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2662
  %arrayidx10 = getelementptr i8, ptr %6, i32 %mul8, !dbg !2662
  store i8 0, ptr %arrayidx10, align 1, !dbg !2663
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2664
    #dbg_value(i32 %inc12, !2653, !DIExpression(), !2654)
  br label %for.cond3, !dbg !2665, !llvm.loop !2666

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2668
  %add15 = add nsw i32 %mul14, 1, !dbg !2669
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #4, !dbg !2670
    #dbg_value(i32 0, !2671, !DIExpression(), !2673)
  br label %for.cond17, !dbg !2674

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2675
    #dbg_value(i32 %i16.0, !2671, !DIExpression(), !2673)
  %exitcond15 = icmp ne i32 %i16.0, %4, !dbg !2676
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2678

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2679
  %7 = load i8, ptr %arrayidx20, align 1, !dbg !2679
  %arrayidx21 = getelementptr inbounds nuw [78 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2681
  %8 = load i8, ptr %arrayidx21, align 1, !dbg !2681
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %7, i8 noundef zeroext %8) #4, !dbg !2682
  %mul22 = mul nsw i32 %k, %o, !dbg !2683
  %mul23 = mul nsw i32 %k, %o, !dbg !2684
  %add24 = add nsw i32 %mul23, 1, !dbg !2685
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2686
  %9 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2687
  %arrayidx27 = getelementptr i8, ptr %9, i32 %mul25, !dbg !2687
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2688
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2689
    #dbg_value(i32 %inc29, !2671, !DIExpression(), !2673)
  br label %for.cond17, !dbg !2690, !llvm.loop !2691

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2693
  %add32 = add nsw i32 %mul31, 1, !dbg !2694
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #4, !dbg !2695
    #dbg_value(i8 0, !2696, !DIExpression(), !2625)
    #dbg_value(i32 0, !2697, !DIExpression(), !2699)
  %10 = add i32 %A_cols, -1, !dbg !2700
  %11 = icmp sgt i32 %10, 0, !dbg !2700
  %12 = select i1 %11, i32 %10, i32 0, !dbg !2700
  br label %for.cond34, !dbg !2700

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2625
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2701
    #dbg_value(i32 %i33.0, !2697, !DIExpression(), !2699)
    #dbg_value(i8 %full_rank.0, !2696, !DIExpression(), !2625)
  %exitcond17 = icmp ne i32 %i33.0, %12, !dbg !2702
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2704

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2696, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2625)
  %sub37 = add nsw i32 %m, -1, !dbg !2705
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2707
  %13 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2708
  %arrayidx40 = getelementptr i8, ptr %13, i32 %i33.0, !dbg !2708
  %14 = load i8, ptr %arrayidx40, align 1, !dbg !2708
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %14), !2696, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2625)
  %or12 = or i8 %full_rank.0, %14, !dbg !2709
    #dbg_value(i8 %or12, !2696, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2625)
    #dbg_value(i8 %or12, !2696, !DIExpression(), !2625)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2710
    #dbg_value(i32 %inc44, !2697, !DIExpression(), !2699)
  br label %for.cond34, !dbg !2711, !llvm.loop !2712

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2625
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2714
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2714

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2716

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2716, !llvm.loop !2718

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2720
    #dbg_value(i32 %row.0, !2721, !DIExpression(), !2722)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2723
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2716

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2725, !DIExpression(), !2625)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2726
  %div = sdiv i32 32, %sub54, !dbg !2726
  %add55 = add nsw i32 %row.0, %div, !dbg !2726
  %mul56 = mul nsw i32 %k, %o, !dbg !2726
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2726
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2726

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2726
  %div60 = sdiv i32 32, %sub59, !dbg !2726
  %add61 = add nsw i32 %row.0, %div60, !dbg !2726
  br label %cond.end, !dbg !2726

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2726
  br label %cond.end, !dbg !2726

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2726
    #dbg_value(i32 %cond, !2728, !DIExpression(), !2625)
    #dbg_value(i32 %row.0, !2729, !DIExpression(), !2731)
  br label %for.cond63, !dbg !2732

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2733
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2734
    #dbg_value(i32 %col.0, !2729, !DIExpression(), !2731)
    #dbg_value(i8 %finished.0, !2725, !DIExpression(), !2625)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2735
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2737

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2738
  %15 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2740
  %arrayidx69 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2740
  %16 = load i8, ptr %arrayidx69, align 1, !dbg !2740
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %16, i8 noundef zeroext 0) #4, !dbg !2741
  %not = xor i8 %finished.0, -1, !dbg !2742
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2743, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2625)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2744
  %17 = getelementptr i8, ptr %A, i32 %add76, !dbg !2745
  %arrayidx78 = getelementptr i8, ptr %17, i32 -1, !dbg !2745
  %18 = load i8, ptr %arrayidx78, align 1, !dbg !2745
  %19 = and i8 %18, %not, !dbg !2746
  %and801 = and i8 %19, %call70, !dbg !2746
    #dbg_value(i8 %and801, !2747, !DIExpression(), !2748)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2749
  %20 = load i8, ptr %arrayidx83, align 1, !dbg !2750
  %xor2 = xor i8 %20, %and801, !dbg !2750
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2750
    #dbg_value(i32 0, !2751, !DIExpression(), !2753)
  br label %for.cond87, !dbg !2754

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2755
    #dbg_value(i32 %i86.0, !2751, !DIExpression(), !2753)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2756
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2758

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2759
  %21 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2761
  %arrayidx93 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2761
  %22 = load i8, ptr %arrayidx93, align 1, !dbg !2761
  %conv94 = zext i8 %22 to i64, !dbg !2762
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2763
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2764
  %23 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2765
  %arrayidx98 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2765
  %24 = load i8, ptr %arrayidx98, align 1, !dbg !2765
  %conv99 = zext i8 %24 to i64, !dbg !2766
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2767
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2768
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2769
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2770
  %25 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2771
  %arrayidx105 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2771
  %26 = load i8, ptr %arrayidx105, align 1, !dbg !2771
  %conv106 = zext i8 %26 to i64, !dbg !2772
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2773
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2774
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2775
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2776
  %27 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2777
  %arrayidx112 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2777
  %28 = load i8, ptr %arrayidx112, align 1, !dbg !2777
  %conv113 = zext i8 %28 to i64, !dbg !2778
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2779
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2780
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2781
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2782
  %29 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2783
  %arrayidx119 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2783
  %30 = load i8, ptr %arrayidx119, align 1, !dbg !2783
  %conv120 = zext i8 %30 to i64, !dbg !2784
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2785
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2786
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2787
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2788
  %31 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2789
  %arrayidx126 = getelementptr i8, ptr %31, i32 %col.0, !dbg !2789
  %32 = load i8, ptr %arrayidx126, align 1, !dbg !2789
  %conv127 = zext i8 %32 to i64, !dbg !2790
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2791
  %xor129 = xor i64 %xor122, %shl128, !dbg !2792
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2793
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2794
  %33 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2795
  %arrayidx133 = getelementptr i8, ptr %33, i32 %col.0, !dbg !2795
  %34 = load i8, ptr %arrayidx133, align 1, !dbg !2795
  %conv134 = zext i8 %34 to i64, !dbg !2796
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2797
  %xor136 = xor i64 %xor129, %shl135, !dbg !2798
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2799
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2800
  %35 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2801
  %arrayidx140 = getelementptr i8, ptr %35, i32 %col.0, !dbg !2801
  %36 = load i8, ptr %arrayidx140, align 1, !dbg !2801
  %conv141 = zext i8 %36 to i64, !dbg !2802
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2803
  %xor143 = xor i64 %xor136, %shl142, !dbg !2804
    #dbg_value(i64 %xor143, !2805, !DIExpression(), !2806)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #4, !dbg !2807
    #dbg_value(i64 %call144, !2805, !DIExpression(), !2806)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2808
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2808
  %37 = getelementptr i8, ptr %A, i32 %add147, !dbg !2809
  %arrayidx149 = getelementptr i8, ptr %37, i32 -1, !dbg !2809
  %38 = load i8, ptr %arrayidx149, align 1, !dbg !2810
  %39 = trunc i64 %call144 to i8, !dbg !2810
  %40 = and i8 %39, 15, !dbg !2810
  %conv152 = xor i8 %40, %38, !dbg !2810
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2810
  %shr = lshr i64 %call144, 8, !dbg !2811
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2812
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2812
  %41 = getelementptr i8, ptr %A, i32 %add156, !dbg !2813
  %arrayidx158 = getelementptr i8, ptr %41, i32 -1, !dbg !2813
  %42 = load i8, ptr %arrayidx158, align 1, !dbg !2814
  %43 = trunc i64 %shr to i8, !dbg !2814
  %44 = and i8 %43, 15, !dbg !2814
  %conv161 = xor i8 %44, %42, !dbg !2814
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2814
  %shr162 = lshr i64 %call144, 16, !dbg !2815
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2816
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2816
  %45 = getelementptr i8, ptr %A, i32 %add166, !dbg !2817
  %arrayidx168 = getelementptr i8, ptr %45, i32 -1, !dbg !2817
  %46 = load i8, ptr %arrayidx168, align 1, !dbg !2818
  %47 = trunc i64 %shr162 to i8, !dbg !2818
  %48 = and i8 %47, 15, !dbg !2818
  %conv171 = xor i8 %48, %46, !dbg !2818
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2818
  %shr172 = lshr i64 %call144, 24, !dbg !2819
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2820
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2820
  %49 = getelementptr i8, ptr %A, i32 %add176, !dbg !2821
  %arrayidx178 = getelementptr i8, ptr %49, i32 -1, !dbg !2821
  %50 = load i8, ptr %arrayidx178, align 1, !dbg !2822
  %51 = trunc i64 %shr172 to i8, !dbg !2822
  %52 = and i8 %51, 15, !dbg !2822
  %conv181 = xor i8 %52, %50, !dbg !2822
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2822
  %shr182 = lshr i64 %call144, 32, !dbg !2823
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2824
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2824
  %53 = getelementptr i8, ptr %A, i32 %add186, !dbg !2825
  %arrayidx188 = getelementptr i8, ptr %53, i32 -1, !dbg !2825
  %54 = load i8, ptr %arrayidx188, align 1, !dbg !2826
  %55 = trunc i64 %shr182 to i8, !dbg !2826
  %56 = and i8 %55, 15, !dbg !2826
  %conv191 = xor i8 %56, %54, !dbg !2826
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2826
  %shr192 = lshr i64 %call144, 40, !dbg !2827
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2828
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2828
  %57 = getelementptr i8, ptr %A, i32 %add196, !dbg !2829
  %arrayidx198 = getelementptr i8, ptr %57, i32 -1, !dbg !2829
  %58 = load i8, ptr %arrayidx198, align 1, !dbg !2830
  %59 = trunc i64 %shr192 to i8, !dbg !2830
  %60 = and i8 %59, 15, !dbg !2830
  %conv201 = xor i8 %60, %58, !dbg !2830
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2830
  %shr202 = lshr i64 %call144, 48, !dbg !2831
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2832
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2832
  %61 = getelementptr i8, ptr %A, i32 %add206, !dbg !2833
  %arrayidx208 = getelementptr i8, ptr %61, i32 -1, !dbg !2833
  %62 = load i8, ptr %arrayidx208, align 1, !dbg !2834
  %63 = trunc i64 %shr202 to i8, !dbg !2834
  %64 = and i8 %63, 15, !dbg !2834
  %conv211 = xor i8 %64, %62, !dbg !2834
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2834
  %shr212 = lshr i64 %call144, 56, !dbg !2835
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2836
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2836
  %65 = getelementptr i8, ptr %A, i32 %add216, !dbg !2837
  %arrayidx218 = getelementptr i8, ptr %65, i32 -1, !dbg !2837
  %66 = load i8, ptr %arrayidx218, align 1, !dbg !2838
  %67 = trunc nuw nsw i64 %shr212 to i8, !dbg !2838
  %conv221 = xor i8 %66, %67, !dbg !2838
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2838
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2839
    #dbg_value(i32 %add223, !2751, !DIExpression(), !2753)
  br label %for.cond87, !dbg !2840, !llvm.loop !2841

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2725, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2625)
  %or2273 = or i8 %finished.0, %call70, !dbg !2843
    #dbg_value(i8 %or2273, !2725, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2625)
    #dbg_value(i8 %or2273, !2725, !DIExpression(), !2625)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2844
    #dbg_value(i32 %inc230, !2729, !DIExpression(), !2731)
  br label %for.cond63, !dbg !2845, !llvm.loop !2846

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2848

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2625
  ret i32 %retval.0, !dbg !2848
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef nonnull %c, i32 noundef range(i32 -2147483647, -2147483648) %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2849 {
entry:
    #dbg_value(ptr %a, !2850, !DIExpression(), !2851)
    #dbg_value(ptr %b, !2852, !DIExpression(), !2851)
    #dbg_value(ptr %c, !2853, !DIExpression(), !2851)
    #dbg_value(i32 %colrow_ab, !2854, !DIExpression(), !2851)
    #dbg_value(i32 %row_a, !2855, !DIExpression(), !2851)
    #dbg_value(i32 1, !2856, !DIExpression(), !2851)
    #dbg_value(i32 0, !2857, !DIExpression(), !2859)
  %0 = icmp sgt i32 %row_a, 0, !dbg !2860
  %1 = select i1 %0, i32 %row_a, i32 0, !dbg !2860
  br label %for.cond, !dbg !2860

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2861
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2850, !DIExpression(), !2851)
    #dbg_value(ptr %c.addr.0, !2853, !DIExpression(), !2851)
    #dbg_value(i32 %i.0, !2857, !DIExpression(), !2859)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !2862
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !2864

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2865

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !2868
    #dbg_value(i32 poison, !2869, !DIExpression(), !2870)
    #dbg_value(ptr %c.addr.1, !2853, !DIExpression(), !2851)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !2865

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef %colrow_ab, i32 noundef 1) #4, !dbg !2871
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2874
    #dbg_value(i32 1, !2869, !DIExpression(), !2870)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2875
    #dbg_value(ptr %incdec.ptr, !2853, !DIExpression(), !2851)
  br label %for.cond1, !dbg !2876, !llvm.loop !2877

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2879
    #dbg_value(i32 %inc5, !2857, !DIExpression(), !2859)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2880
    #dbg_value(ptr %add.ptr6, !2850, !DIExpression(), !2851)
  br label %for.cond, !dbg !2881, !llvm.loop !2882

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2884
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2885 {
entry:
    #dbg_value(i8 %a, !2886, !DIExpression(), !2887)
    #dbg_value(i8 %b, !2888, !DIExpression(), !2887)
  %xor1 = xor i8 %a, %b, !dbg !2889
  ret i8 %xor1, !dbg !2890
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !2891 {
entry:
  %_pivot_row = alloca [6 x i64], align 32
  %_pivot_row2 = alloca [6 x i64], align 32
  %packed_A = alloca [468 x i64], align 32
  %temp = alloca [96 x i8], align 1
    #dbg_value(ptr %A, !2895, !DIExpression(), !2896)
    #dbg_value(i32 %nrows, !2897, !DIExpression(), !2896)
    #dbg_value(i32 %ncols, !2898, !DIExpression(), !2896)
    #dbg_declare(ptr %_pivot_row, !2899, !DIExpression(), !2903)
    #dbg_declare(ptr %_pivot_row2, !2904, !DIExpression(), !2905)
    #dbg_declare(ptr %packed_A, !2906, !DIExpression(), !2910)
  call void @mayo_memset(ptr %packed_A, i8 0, i32 3744), !dbg !2910
  %add = add nsw i32 %ncols, 15, !dbg !2911
  %div = sdiv i32 %add, 16, !dbg !2912
    #dbg_value(i32 %div, !2913, !DIExpression(), !2896)
    #dbg_value(i32 0, !2914, !DIExpression(), !2916)
  %0 = icmp sgt i32 %nrows, 0, !dbg !2917
  %1 = select i1 %0, i32 %nrows, i32 0, !dbg !2917
  br label %for.cond, !dbg !2917

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2918
    #dbg_value(i32 %i.0, !2914, !DIExpression(), !2916)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !2919
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2921

for.cond3.preheader:                              ; preds = %for.cond
  %2 = icmp sgt i32 %div, 0, !dbg !2922
  %3 = select i1 %2, i32 %div, i32 0, !dbg !2922
  %4 = icmp sgt i32 %ncols, 0, !dbg !2922
  %5 = select i1 %4, i32 %ncols, i32 0, !dbg !2922
  br label %for.cond3, !dbg !2922

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2924
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2926
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2927
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2928
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #4, !dbg !2929
  %inc = add nuw i32 %i.0, 1, !dbg !2930
    #dbg_value(i32 %inc, !2914, !DIExpression(), !2916)
  br label %for.cond, !dbg !2931, !llvm.loop !2932

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2934
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2896
    #dbg_value(i32 %pivot_row.0, !2935, !DIExpression(), !2896)
    #dbg_value(i32 %pivot_col.0, !2936, !DIExpression(), !2937)
  %exitcond6 = icmp ne i32 %pivot_col.0, %5, !dbg !2938
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2922

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2940

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2942
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2942
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2942
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2942
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2942
    #dbg_value(i32 %cond, !2944, !DIExpression(), !2945)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2946
    #dbg_value(i32 %cond16, !2947, !DIExpression(), !2945)
    #dbg_value(i32 0, !2948, !DIExpression(), !2950)
  br label %for.cond18, !dbg !2951

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2952
    #dbg_value(i32 %i17.0, !2948, !DIExpression(), !2950)
  %exitcond2 = icmp ne i32 %i17.0, %3, !dbg !2953
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !2955

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2946
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2946
  br label %for.cond25, !dbg !2956

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2958
  store i64 0, ptr %arrayidx, align 8, !dbg !2960
  %arrayidx21 = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2961
  store i64 0, ptr %arrayidx21, align 8, !dbg !2962
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2963
    #dbg_value(i32 %inc23, !2948, !DIExpression(), !2950)
  br label %for.cond18, !dbg !2964, !llvm.loop !2965

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2945
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2945
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2967
    #dbg_value(i32 %row.0, !2968, !DIExpression(), !2967)
    #dbg_value(i8 %pivot.0, !2969, !DIExpression(), !2945)
    #dbg_value(i64 %pivot_is_zero.0, !2970, !DIExpression(), !2945)
  %add27 = add nsw i32 %cond16, 32, !dbg !2971
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2971
  %sub30 = add nsw i32 %nrows, -1, !dbg !2971
  %add32 = add nsw i32 %cond16, 32, !dbg !2971
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2971
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2973
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2956

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #4, !dbg !2974
  %not = xor i64 %call, -1, !dbg !2976
    #dbg_value(i64 %not, !2977, !DIExpression(), !2978)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #4, !dbg !2979
    #dbg_value(i64 %call37, !2980, !DIExpression(), !2978)
    #dbg_value(i32 0, !2981, !DIExpression(), !2983)
  br label %for.cond38, !dbg !2984

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2985
    #dbg_value(i32 %j.0, !2981, !DIExpression(), !2983)
  %exitcond3 = icmp ne i32 %j.0, %3, !dbg !2986
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !2988

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2989
  %or = or i64 %and, %not, !dbg !2991
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2992
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2993
  %arrayidx43 = getelementptr inbounds [468 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2994
  %6 = load i64, ptr %arrayidx43, align 8, !dbg !2994
  %and44 = and i64 %or, %6, !dbg !2995
  %arrayidx45 = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2996
  %7 = load i64, ptr %arrayidx45, align 8, !dbg !2997
  %xor = xor i64 %7, %and44, !dbg !2997
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2997
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2998
    #dbg_value(i32 %inc47, !2981, !DIExpression(), !2983)
  br label %for.cond38, !dbg !2999, !llvm.loop !3000

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #4, !dbg !3002
    #dbg_value(i8 %call50, !2969, !DIExpression(), !2945)
  %conv = zext nneg i8 %call50 to i32, !dbg !3003
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #4, !dbg !3004
    #dbg_value(i64 %call51, !2970, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2945)
  %not52 = xor i64 %call51, -1, !dbg !3005
    #dbg_value(i64 %not52, !2970, !DIExpression(), !2945)
  %inc54 = add nsw i32 %row.0, 1, !dbg !3006
    #dbg_value(i32 %inc54, !2968, !DIExpression(), !2967)
  br label %for.cond25, !dbg !3007, !llvm.loop !3008

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2945
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2945
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #4, !dbg !3010
    #dbg_value(i8 %call56, !3011, !DIExpression(), !2896)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #4, !dbg !3012
    #dbg_value(i32 %cond, !3013, !DIExpression(), !3015)
  br label %for.cond60, !dbg !3016

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !3017
    #dbg_value(i32 %row59.0, !3013, !DIExpression(), !3015)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !3018
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !3020

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !3021

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #4, !dbg !3023
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !3025
  %and67 = xor i64 %and67.demorgan, -1, !dbg !3025
    #dbg_value(i64 %and67, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %and67.demorgan, !3028, !DIExpression(), !3027)
    #dbg_value(i32 0, !3029, !DIExpression(), !3031)
  br label %for.cond69, !dbg !3032

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !3033
    #dbg_value(i32 %col.0, !3029, !DIExpression(), !3031)
  %exitcond4 = icmp ne i32 %col.0, %3, !dbg !3034
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !3036

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !3037
  %add74 = add nsw i32 %mul73, %col.0, !dbg !3039
  %arrayidx75 = getelementptr inbounds [468 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !3040
  %8 = load i64, ptr %arrayidx75, align 8, !dbg !3040
  %and76 = and i64 %and67.demorgan, %8, !dbg !3041
  %arrayidx77 = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !3042
  %9 = load i64, ptr %arrayidx77, align 8, !dbg !3042
  %and78 = and i64 %9, %and67, !dbg !3043
  %add79 = add i64 %and76, %and78, !dbg !3044
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !3045
  %add81 = add nsw i32 %mul80, %col.0, !dbg !3046
  %arrayidx82 = getelementptr inbounds [468 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !3047
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !3048
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !3049
    #dbg_value(i32 %inc84, !3029, !DIExpression(), !3031)
  br label %for.cond69, !dbg !3050, !llvm.loop !3051

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !3053
    #dbg_value(i32 %inc87, !3013, !DIExpression(), !3015)
  br label %for.cond60, !dbg !3054, !llvm.loop !3055

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !3057
    #dbg_value(i32 %row89.0, !3058, !DIExpression(), !3059)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !3060
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !3021

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !3062
    #dbg_value(i1 %cmp94, !3064, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3065)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !3066
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !3067
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #4, !dbg !3068
    #dbg_value(i8 %call100, !3069, !DIExpression(), !3065)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !3070
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !3071
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !3072
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #4, !dbg !3073
  %inc110 = add nsw i32 %row89.0, 1, !dbg !3074
    #dbg_value(i32 %inc110, !3058, !DIExpression(), !3059)
  br label %for.cond90, !dbg !3075, !llvm.loop !3076

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2935, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2896)
  %10 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !3078
  %11 = add i32 %10, 1, !dbg !3078
  %conv116 = add i32 %11, %pivot_row.0, !dbg !3078
    #dbg_value(i32 %conv116, !2935, !DIExpression(), !2896)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !3079
    #dbg_value(i32 %inc118, !2936, !DIExpression(), !2937)
  br label %for.cond3, !dbg !3080, !llvm.loop !3081

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !3083
    #dbg_value(i32 %i120.0, !3084, !DIExpression(), !3085)
  %exitcond8 = icmp ne i32 %i120.0, %1, !dbg !3086
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2940

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !3088
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !3090
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #4, !dbg !3091
    #dbg_value(i32 0, !3092, !DIExpression(), !3094)
  br label %for.cond130, !dbg !3095

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !3096
    #dbg_value(i32 %j129.0, !3092, !DIExpression(), !3094)
  %exitcond7 = icmp ne i32 %j129.0, %5, !dbg !3097
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !3099

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [96 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !3100
  %12 = load i8, ptr %arrayidx134, align 1, !dbg !3100
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !3102
  %13 = getelementptr i8, ptr %A, i32 %mul135, !dbg !3103
  %arrayidx137 = getelementptr i8, ptr %13, i32 %j129.0, !dbg !3103
  store i8 %12, ptr %arrayidx137, align 1, !dbg !3104
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3105
    #dbg_value(i32 %inc139, !3092, !DIExpression(), !3094)
  br label %for.cond130, !dbg !3106, !llvm.loop !3107

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3109
    #dbg_value(i32 %inc142, !3084, !DIExpression(), !3085)
  br label %for.cond121, !dbg !3110, !llvm.loop !3111

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 96) #4, !dbg !3113
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 48) #4, !dbg !3114
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 48) #4, !dbg !3115
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 3744) #4, !dbg !3116
  ret void, !dbg !3117
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3118 {
entry:
    #dbg_value(i8 %a, !3120, !DIExpression(), !3121)
    #dbg_value(i8 0, !3122, !DIExpression(), !3121)
  %0 = icmp ne i8 %a, 0, !dbg !3123
  %conv3 = sext i1 %0 to i8, !dbg !3124
  %1 = load volatile i8, ptr @pqmayo_MAYO_1_ref_unsigned_char_blocker, align 1, !dbg !3125
  %xor5 = xor i8 %1, %conv3, !dbg !3126
  ret i8 %xor5, !dbg !3127
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3128 {
entry:
    #dbg_value(i8 %a, !3131, !DIExpression(), !3132)
    #dbg_value(i64 %b, !3133, !DIExpression(), !3132)
  %0 = and i8 %a, 1, !dbg !3134
  %conv1 = zext nneg i8 %0 to i64, !dbg !3135
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3136
    #dbg_value(i64 %mul, !3137, !DIExpression(), !3132)
  %1 = and i8 %a, 2, !dbg !3138
  %conv4 = zext nneg i8 %1 to i64, !dbg !3139
  %mul5 = mul i64 %b, %conv4, !dbg !3140
  %xor = xor i64 %mul, %mul5, !dbg !3141
    #dbg_value(i64 %xor, !3137, !DIExpression(), !3132)
  %2 = and i8 %a, 4, !dbg !3142
  %conv8 = zext nneg i8 %2 to i64, !dbg !3143
  %mul9 = mul i64 %b, %conv8, !dbg !3144
  %xor10 = xor i64 %xor, %mul9, !dbg !3145
    #dbg_value(i64 %xor10, !3137, !DIExpression(), !3132)
  %3 = and i8 %a, 8, !dbg !3146
  %conv13 = zext nneg i8 %3 to i64, !dbg !3147
  %mul14 = mul i64 %b, %conv13, !dbg !3148
  %xor15 = xor i64 %xor10, %mul14, !dbg !3149
    #dbg_value(i64 %xor15, !3137, !DIExpression(), !3132)
    #dbg_value(i64 %xor15, !3150, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3132)
  %shr = lshr i64 %xor15, 4, !dbg !3151
  %and16 = lshr i64 %xor15, 3, !dbg !3152
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3152
  %4 = xor i64 %shr, %shr18, !dbg !3153
  %xor19 = xor i64 %4, %xor15, !dbg !3153
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3154
    #dbg_value(i64 %and20, !3155, !DIExpression(), !3132)
  ret i64 %and20, !dbg !3156
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef nonnull %out, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !3157 {
entry:
    #dbg_value(ptr %in, !3160, !DIExpression(), !3161)
    #dbg_value(ptr %out, !3162, !DIExpression(), !3161)
    #dbg_value(i32 %ncols, !3163, !DIExpression(), !3161)
    #dbg_value(ptr %out, !3164, !DIExpression(), !3161)
    #dbg_value(i32 0, !3165, !DIExpression(), !3161)
  br label %for.cond, !dbg !3166

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3168
    #dbg_value(i32 %i.0, !3165, !DIExpression(), !3161)
  %add = or disjoint i32 %i.0, 1, !dbg !3169
  %cmp = icmp slt i32 %add, %ncols, !dbg !3171
  br i1 %cmp, label %for.body, label %for.end, !dbg !3172

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3173
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3173
  %add2 = or disjoint i32 %i.0, 1, !dbg !3175
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3176
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3176
  %shl5 = shl i8 %1, 4, !dbg !3177
  %or = or i8 %shl5, %0, !dbg !3178
  %div = lshr exact i32 %i.0, 1, !dbg !3179
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3180
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3181
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3182
    #dbg_value(i32 %add8, !3165, !DIExpression(), !3161)
  br label %for.cond, !dbg !3183, !llvm.loop !3184

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3168
  %2 = and i32 %ncols, -2147483647, !dbg !3186
  %cmp9 = icmp eq i32 %2, 1, !dbg !3186
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3186

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3188
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3188
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3190
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3191
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3192
  br label %if.end, !dbg !3193

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3194
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3195 {
entry:
    #dbg_value(i32 %a, !3198, !DIExpression(), !3199)
    #dbg_value(i32 %b, !3200, !DIExpression(), !3199)
  %xor = xor i32 %a, %b, !dbg !3201
  %0 = icmp sgt i32 %xor, 0, !dbg !3202
  %shr = sext i1 %0 to i64, !dbg !3202
  %1 = load volatile i64, ptr @pqmayo_MAYO_1_ref_uint64_t_blocker, align 8, !dbg !3203
  %xor1 = xor i64 %1, %shr, !dbg !3204
  ret i64 %xor1, !dbg !3205
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3206 {
entry:
    #dbg_value(i32 %a, !3207, !DIExpression(), !3208)
    #dbg_value(i32 %b, !3209, !DIExpression(), !3208)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3210, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3208)
  %0 = icmp slt i32 %b, %a, !dbg !3211
  %shr = sext i1 %0 to i64, !dbg !3211
  %1 = load volatile i64, ptr @pqmayo_MAYO_1_ref_uint64_t_blocker, align 8, !dbg !3212
  %xor = xor i64 %1, %shr, !dbg !3213
  ret i64 %xor, !dbg !3214
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef nonnull %in, i32 noundef range(i32 -2147483648, 2147483647) %index) unnamed_addr #0 !dbg !3215 {
entry:
    #dbg_value(ptr %in, !3218, !DIExpression(), !3219)
    #dbg_value(i32 %index, !3220, !DIExpression(), !3219)
  %div = sdiv i32 %index, 16, !dbg !3221
    #dbg_value(i32 %div, !3222, !DIExpression(), !3219)
  %rem = srem i32 %index, 16, !dbg !3223
    #dbg_value(i32 %rem, !3224, !DIExpression(), !3219)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3225
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3225
  %mul = shl nsw i32 %rem, 2, !dbg !3226
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3227
  %shr = lshr i64 %0, %sh_prom, !dbg !3227
  %1 = trunc i64 %shr to i8, !dbg !3228
  %conv = and i8 %1, 15, !dbg !3228
  ret i8 %conv, !dbg !3229
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext range(i8 0, 16) %a) unnamed_addr #0 !dbg !3230 {
entry:
    #dbg_value(i8 %a, !3233, !DIExpression(), !3234)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #4, !dbg !3235
    #dbg_value(i8 %call, !3236, !DIExpression(), !3234)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #4, !dbg !3237
    #dbg_value(i8 %call1, !3238, !DIExpression(), !3234)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #4, !dbg !3239
    #dbg_value(i8 %call2, !3240, !DIExpression(), !3234)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #4, !dbg !3241
    #dbg_value(i8 %call3, !3242, !DIExpression(), !3234)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #4, !dbg !3243
    #dbg_value(i8 %call4, !3244, !DIExpression(), !3234)
  ret i8 %call4, !dbg !3245
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, i8 noundef zeroext range(i8 0, 16) %a, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !3246 {
entry:
    #dbg_value(i32 %legs, !3249, !DIExpression(), !3250)
    #dbg_value(ptr %in, !3251, !DIExpression(), !3250)
    #dbg_value(i8 %a, !3252, !DIExpression(), !3250)
    #dbg_value(ptr %acc, !3253, !DIExpression(), !3250)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #4, !dbg !3254
    #dbg_value(i32 %call, !3255, !DIExpression(), !3250)
    #dbg_value(i64 1229782938247303441, !3256, !DIExpression(), !3250)
    #dbg_value(i32 0, !3257, !DIExpression(), !3259)
  %0 = icmp sgt i32 %legs, 0, !dbg !3260
  %1 = select i1 %0, i32 %legs, i32 0, !dbg !3260
  br label %for.cond, !dbg !3260

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3261
    #dbg_value(i32 %i.0, !3257, !DIExpression(), !3259)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !3262
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3264

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3265
  %2 = load i64, ptr %arrayidx, align 8, !dbg !3265
  %and = and i64 %2, 1229782938247303441, !dbg !3267
  %and1 = and i32 %call, 255, !dbg !3268
  %conv = zext nneg i32 %and1 to i64, !dbg !3269
  %mul = mul i64 %and, %conv, !dbg !3270
  %shr = lshr i64 %2, 1, !dbg !3271
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3272
  %shr4 = lshr i32 %call, 8, !dbg !3273
  %and5 = and i32 %shr4, 15, !dbg !3274
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3275
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3276
  %xor = xor i64 %mul, %mul7, !dbg !3277
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3278
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !3278
  %shr9 = lshr i64 %3, 2, !dbg !3279
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3280
  %shr11 = lshr i32 %call, 16, !dbg !3281
  %and12 = and i32 %shr11, 15, !dbg !3282
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3283
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3284
  %xor15 = xor i64 %xor, %mul14, !dbg !3285
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3286
  %4 = load i64, ptr %arrayidx16, align 8, !dbg !3286
  %shr17 = lshr i64 %4, 3, !dbg !3287
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3288
  %shr19 = lshr i32 %call, 24, !dbg !3289
  %and20 = and i32 %shr19, 15, !dbg !3290
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3291
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3292
  %xor23 = xor i64 %xor15, %mul22, !dbg !3293
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3294
  %5 = load i64, ptr %arrayidx24, align 8, !dbg !3295
  %xor25 = xor i64 %5, %xor23, !dbg !3295
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3295
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3296
    #dbg_value(i32 %inc, !3257, !DIExpression(), !3259)
  br label %for.cond, !dbg !3297, !llvm.loop !3298

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3300
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !3301 {
entry:
    #dbg_value(i32 %legs, !3304, !DIExpression(), !3305)
    #dbg_value(ptr %in, !3306, !DIExpression(), !3305)
    #dbg_value(ptr %out, !3307, !DIExpression(), !3305)
    #dbg_value(ptr %in, !3308, !DIExpression(), !3305)
    #dbg_value(i32 0, !3309, !DIExpression(), !3311)
  br label %for.cond, !dbg !3312

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3313
    #dbg_value(i32 %i.0, !3309, !DIExpression(), !3311)
  %mul = shl nsw i32 %legs, 4, !dbg !3314
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3316
  br i1 %cmp, label %for.body, label %for.end, !dbg !3317

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3318
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3320
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3320
  %1 = and i8 %0, 15, !dbg !3321
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3322
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3323
  %div3 = lshr exact i32 %i.0, 1, !dbg !3324
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3325
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3325
  %3 = lshr i8 %2, 4, !dbg !3326
  %add = or disjoint i32 %i.0, 1, !dbg !3327
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3328
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3329
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3330
    #dbg_value(i32 %add8, !3309, !DIExpression(), !3311)
  br label %for.cond, !dbg !3331, !llvm.loop !3332

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3334
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, -2147483648) i32 @mul_table.22(i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3335 {
entry:
    #dbg_value(i8 %b, !3336, !DIExpression(), !3337)
  %conv = zext nneg i8 %b to i32, !dbg !3338
  %mul = mul nuw nsw i32 %conv, 134480385, !dbg !3339
    #dbg_value(i32 %mul, !3340, !DIExpression(), !3337)
    #dbg_value(i32 -252645136, !3341, !DIExpression(), !3337)
  %and = and i32 %mul, 1894838512, !dbg !3342
    #dbg_value(i32 %and, !3343, !DIExpression(), !3337)
  %shr = lshr exact i32 %and, 4, !dbg !3344
  %shr1 = lshr exact i32 %and, 3, !dbg !3345
  %0 = xor i32 %shr, %shr1, !dbg !3346
  %xor2 = xor i32 %0, %mul, !dbg !3346
  ret i32 %xor2, !dbg !3347
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3348 {
entry:
    #dbg_value(i8 %a, !3349, !DIExpression(), !3350)
    #dbg_value(i8 %b, !3351, !DIExpression(), !3350)
  %0 = load volatile i8, ptr @pqmayo_MAYO_1_ref_unsigned_char_blocker, align 1, !dbg !3352
  %xor1 = xor i8 %a, %0, !dbg !3353
    #dbg_value(i8 %xor1, !3349, !DIExpression(), !3350)
  %1 = trunc i8 %xor1 to i1, !dbg !3354
    #dbg_value(i8 poison, !3355, !DIExpression(), !3350)
  %2 = and i8 %xor1, 2, !dbg !3356
  %mul9 = mul i8 %2, %b, !dbg !3357
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3354
  %xor11 = xor i8 %conv10, %mul9, !dbg !3358
    #dbg_value(i8 %xor11, !3355, !DIExpression(), !3350)
  %3 = and i8 %xor1, 4, !dbg !3359
  %mul16 = mul i8 %3, %b, !dbg !3360
  %xor18 = xor i8 %mul16, %xor11, !dbg !3361
    #dbg_value(i8 %xor18, !3355, !DIExpression(), !3350)
  %4 = and i8 %xor1, 8, !dbg !3362
  %mul23 = mul i8 %4, %b, !dbg !3363
  %xor25 = xor i8 %mul23, %xor18, !dbg !3364
    #dbg_value(i8 %xor25, !3355, !DIExpression(), !3350)
    #dbg_value(i8 %xor25, !3365, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3350)
  %5 = lshr i8 %xor25, 4, !dbg !3366
  %6 = lshr i8 %xor25, 3, !dbg !3367
  %7 = and i8 %6, 14, !dbg !3367
  %8 = xor i8 %5, %7, !dbg !3368
  %xor25.masked = and i8 %xor25, 15, !dbg !3369
  %9 = xor i8 %8, %xor25.masked, !dbg !3369
    #dbg_value(i8 %9, !3370, !DIExpression(), !3350)
  ret i8 %9, !dbg !3371
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef range(i32 -2147483647, -2147483648) %n, i32 noundef %m) unnamed_addr #0 !dbg !3372 {
entry:
    #dbg_value(ptr %a, !3373, !DIExpression(), !3374)
    #dbg_value(ptr %b, !3375, !DIExpression(), !3374)
    #dbg_value(i32 %n, !3376, !DIExpression(), !3374)
    #dbg_value(i32 1, !3377, !DIExpression(), !3374)
    #dbg_value(i8 0, !3378, !DIExpression(), !3374)
    #dbg_value(i32 0, !3379, !DIExpression(), !3381)
  %0 = icmp sgt i32 %n, 0, !dbg !3382
  %1 = select i1 %0, i32 %n, i32 0, !dbg !3382
  br label %for.cond, !dbg !3382

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3374
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3383
    #dbg_value(i32 %i.0, !3379, !DIExpression(), !3381)
    #dbg_value(ptr %b.addr.0, !3375, !DIExpression(), !3374)
    #dbg_value(i8 %ret.0, !3378, !DIExpression(), !3374)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !3384
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3386

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3387
  %2 = load i8, ptr %arrayidx, align 1, !dbg !3387
  %3 = load i8, ptr %b.addr.0, align 1, !dbg !3389
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %2, i8 noundef zeroext %3) #4, !dbg !3390
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #4, !dbg !3391
    #dbg_value(i8 %call1, !3378, !DIExpression(), !3374)
  %inc = add nuw i32 %i.0, 1, !dbg !3392
    #dbg_value(i32 %inc, !3379, !DIExpression(), !3381)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !3393
    #dbg_value(ptr %add.ptr, !3375, !DIExpression(), !3374)
  br label %for.cond, !dbg !3394, !llvm.loop !3395

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3374
  ret i8 %ret.0.lcssa, !dbg !3397
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @add_f.25(i8 noundef zeroext range(i8 0, 16) %a, i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3398 {
entry:
    #dbg_value(i8 %a, !3399, !DIExpression(), !3400)
    #dbg_value(i8 %b, !3401, !DIExpression(), !3400)
  %xor1 = xor i8 %a, %b, !dbg !3402
  ret i8 %xor1, !dbg !3403
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !3404 {
entry:
    #dbg_value(ptr %state, !3412, !DIExpression(), !3413)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !3414
  store ptr %call, ptr %state, align 4, !dbg !3415
  %cmp = icmp eq ptr %call, null, !dbg !3416
  br i1 %cmp, label %if.then, label %if.end, !dbg !3416

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !3418
  br label %if.end, !dbg !3420

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !3421
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !3422
  ret void, !dbg !3423
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i32 noundef) local_unnamed_addr #3

declare dso_local void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_init(ptr noundef %s_inc) unnamed_addr #0 !dbg !3424 {
entry:
    #dbg_value(ptr %s_inc, !3425, !DIExpression(), !3426)
    #dbg_value(i32 0, !3427, !DIExpression(), !3426)
  br label %for.cond, !dbg !3428

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3430
    #dbg_value(i32 %i.0, !3427, !DIExpression(), !3426)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !3431
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3433

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s_inc, i32 %i.0, !dbg !3434
  store i64 0, ptr %arrayidx, align 8, !dbg !3436
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3437
    #dbg_value(i32 %inc, !3427, !DIExpression(), !3426)
  br label %for.cond, !dbg !3438, !llvm.loop !3439

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3441
  store i64 0, ptr %arrayidx1, align 8, !dbg !3442
  ret void, !dbg !3443
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3444 {
entry:
    #dbg_value(ptr %state, !3447, !DIExpression(), !3448)
    #dbg_value(ptr %input, !3449, !DIExpression(), !3448)
    #dbg_value(i32 %inlen, !3450, !DIExpression(), !3448)
  %0 = load ptr, ptr %state, align 4, !dbg !3451
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen) #4, !dbg !3452
  ret void, !dbg !3453
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_absorb(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen) unnamed_addr #0 !dbg !3454 {
entry:
    #dbg_value(ptr %s_inc, !3457, !DIExpression(), !3458)
    #dbg_value(i32 %r, !3459, !DIExpression(), !3458)
    #dbg_value(ptr %m, !3460, !DIExpression(), !3458)
    #dbg_value(i32 %mlen, !3461, !DIExpression(), !3458)
  br label %while.cond, !dbg !3462

while.cond:                                       ; preds = %for.end, %entry
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr, %for.end ]
  %mlen.addr.0 = phi i32 [ %mlen, %entry ], [ %sub20, %for.end ]
    #dbg_value(i32 %mlen.addr.0, !3461, !DIExpression(), !3458)
    #dbg_value(ptr %m.addr.0, !3460, !DIExpression(), !3458)
  %conv = zext i32 %mlen.addr.0 to i64, !dbg !3463
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3464
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3464
  %add = add i64 %0, %conv, !dbg !3465
  %conv1 = zext nneg i32 %r to i64, !dbg !3466
  %cmp.not = icmp ult i64 %add, %conv1, !dbg !3467
  br i1 %cmp.not, label %for.cond25.preheader, label %for.cond.preheader, !dbg !3462

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !3468

for.cond25.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa1 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  %mlen.addr.0.lcssa = phi i32 [ %mlen.addr.0, %while.cond ]
  br label %for.cond25, !dbg !3471

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !3473
    #dbg_value(i32 %i.0, !3474, !DIExpression(), !3458)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3475
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !3475
  %conv4 = trunc i64 %1 to i32, !dbg !3477
  %sub = sub i32 %r, %conv4, !dbg !3478
  %cmp5 = icmp ult i32 %i.0, %sub, !dbg !3479
  br i1 %cmp5, label %for.body, label %for.end, !dbg !3468

for.body:                                         ; preds = %for.cond
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %i.0, !dbg !3480
  %2 = load i8, ptr %arrayidx7, align 1, !dbg !3480
  %conv8 = zext i8 %2 to i64, !dbg !3482
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3483
  %3 = load i64, ptr %arrayidx9, align 8, !dbg !3483
  %conv10 = zext i32 %i.0 to i64, !dbg !3484
  %add11 = add i64 %3, %conv10, !dbg !3485
  %and = shl i64 %add11, 3, !dbg !3486
  %mul = and i64 %and, 56, !dbg !3486
  %shl = shl nuw i64 %conv8, %mul, !dbg !3487
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3488
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !3488
  %conv13 = zext i32 %i.0 to i64, !dbg !3489
  %add14 = add i64 %4, %conv13, !dbg !3490
  %shr = lshr i64 %add14, 3, !dbg !3491
  %idxprom = trunc i64 %shr to i32, !dbg !3492
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3492
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !3493
  %xor = xor i64 %5, %shl, !dbg !3493
  store i64 %xor, ptr %arrayidx15, align 8, !dbg !3493
  %inc = add nuw i32 %i.0, 1, !dbg !3494
    #dbg_value(i32 %inc, !3474, !DIExpression(), !3458)
  br label %for.cond, !dbg !3495, !llvm.loop !3496

for.end:                                          ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3498
  %6 = load i64, ptr %arrayidx17, align 8, !dbg !3498
  %7 = trunc i64 %6 to i32, !dbg !3499
  %conv19.neg = sub i32 %7, %r, !dbg !3499
  %sub20 = add i32 %conv19.neg, %mlen.addr.0, !dbg !3500
    #dbg_value(i32 %sub20, !3461, !DIExpression(), !3458)
  %8 = trunc i64 %6 to i32, !dbg !3501
  %idx.ext = sub i32 %r, %8, !dbg !3501
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %idx.ext, !dbg !3501
    #dbg_value(ptr %add.ptr, !3460, !DIExpression(), !3458)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3502
  store i64 0, ptr %arrayidx24, align 8, !dbg !3503
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #4, !dbg !3504
  br label %while.cond, !dbg !3462, !llvm.loop !3505

for.cond25:                                       ; preds = %for.cond25.preheader, %for.body28
  %i.1 = phi i32 [ %inc45, %for.body28 ], [ 0, %for.cond25.preheader ], !dbg !3507
    #dbg_value(i32 %i.1, !3474, !DIExpression(), !3458)
  %exitcond = icmp ne i32 %i.1, %mlen.addr.0.lcssa1, !dbg !3508
  br i1 %exitcond, label %for.body28, label %for.end46, !dbg !3471

for.body28:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.1, !dbg !3510
  %9 = load i8, ptr %arrayidx29, align 1, !dbg !3510
  %conv30 = zext i8 %9 to i64, !dbg !3512
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3513
  %10 = load i64, ptr %arrayidx31, align 8, !dbg !3513
  %conv32 = zext i32 %i.1 to i64, !dbg !3514
  %add33 = add i64 %10, %conv32, !dbg !3515
  %and34 = shl i64 %add33, 3, !dbg !3516
  %mul35 = and i64 %and34, 56, !dbg !3516
  %shl36 = shl nuw i64 %conv30, %mul35, !dbg !3517
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3518
  %11 = load i64, ptr %arrayidx37, align 8, !dbg !3518
  %conv38 = zext i32 %i.1 to i64, !dbg !3519
  %add39 = add i64 %11, %conv38, !dbg !3520
  %shr40 = lshr i64 %add39, 3, !dbg !3521
  %idxprom41 = trunc i64 %shr40 to i32, !dbg !3522
  %arrayidx42 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom41, !dbg !3522
  %12 = load i64, ptr %arrayidx42, align 8, !dbg !3523
  %xor43 = xor i64 %12, %shl36, !dbg !3523
  store i64 %xor43, ptr %arrayidx42, align 8, !dbg !3523
  %inc45 = add i32 %i.1, 1, !dbg !3524
    #dbg_value(i32 %inc45, !3474, !DIExpression(), !3458)
  br label %for.cond25, !dbg !3525, !llvm.loop !3526

for.end46:                                        ; preds = %for.cond25
  %conv47 = zext i32 %mlen.addr.0.lcssa to i64, !dbg !3528
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3529
  %13 = load i64, ptr %arrayidx48, align 8, !dbg !3530
  %add49 = add i64 %13, %conv47, !dbg !3530
  store i64 %add49, ptr %arrayidx48, align 8, !dbg !3530
  ret void, !dbg !3531
}

; Function Attrs: nounwind
define internal fastcc void @KeccakF1600_StatePermute(ptr noundef %state) unnamed_addr #0 !dbg !3532 {
entry:
    #dbg_value(ptr %state, !3533, !DIExpression(), !3534)
  %0 = load i64, ptr %state, align 8, !dbg !3535
    #dbg_value(i64 %0, !3536, !DIExpression(), !3534)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3537
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !3537
    #dbg_value(i64 %1, !3538, !DIExpression(), !3534)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3539
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !3539
    #dbg_value(i64 %2, !3540, !DIExpression(), !3534)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3541
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !3541
    #dbg_value(i64 %3, !3542, !DIExpression(), !3534)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3543
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !3543
    #dbg_value(i64 %4, !3544, !DIExpression(), !3534)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3545
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !3545
    #dbg_value(i64 %5, !3546, !DIExpression(), !3534)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3547
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !3547
    #dbg_value(i64 %6, !3548, !DIExpression(), !3534)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3549
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !3549
    #dbg_value(i64 %7, !3550, !DIExpression(), !3534)
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3551
  %8 = load i64, ptr %arrayidx8, align 8, !dbg !3551
    #dbg_value(i64 %8, !3552, !DIExpression(), !3534)
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3553
  %9 = load i64, ptr %arrayidx9, align 8, !dbg !3553
    #dbg_value(i64 %9, !3554, !DIExpression(), !3534)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3555
  %10 = load i64, ptr %arrayidx10, align 8, !dbg !3555
    #dbg_value(i64 %10, !3556, !DIExpression(), !3534)
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3557
  %11 = load i64, ptr %arrayidx11, align 8, !dbg !3557
    #dbg_value(i64 %11, !3558, !DIExpression(), !3534)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3559
  %12 = load i64, ptr %arrayidx12, align 8, !dbg !3559
    #dbg_value(i64 %12, !3560, !DIExpression(), !3534)
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3561
  %13 = load i64, ptr %arrayidx13, align 8, !dbg !3561
    #dbg_value(i64 %13, !3562, !DIExpression(), !3534)
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3563
  %14 = load i64, ptr %arrayidx14, align 8, !dbg !3563
    #dbg_value(i64 %14, !3564, !DIExpression(), !3534)
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3565
  %15 = load i64, ptr %arrayidx15, align 8, !dbg !3565
    #dbg_value(i64 %15, !3566, !DIExpression(), !3534)
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3567
  %16 = load i64, ptr %arrayidx16, align 8, !dbg !3567
    #dbg_value(i64 %16, !3568, !DIExpression(), !3534)
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3569
  %17 = load i64, ptr %arrayidx17, align 8, !dbg !3569
    #dbg_value(i64 %17, !3570, !DIExpression(), !3534)
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3571
  %18 = load i64, ptr %arrayidx18, align 8, !dbg !3571
    #dbg_value(i64 %18, !3572, !DIExpression(), !3534)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3573
  %19 = load i64, ptr %arrayidx19, align 8, !dbg !3573
    #dbg_value(i64 %19, !3574, !DIExpression(), !3534)
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3575
  %20 = load i64, ptr %arrayidx20, align 8, !dbg !3575
    #dbg_value(i64 %20, !3576, !DIExpression(), !3534)
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3577
  %21 = load i64, ptr %arrayidx21, align 8, !dbg !3577
    #dbg_value(i64 %21, !3578, !DIExpression(), !3534)
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3579
  %22 = load i64, ptr %arrayidx22, align 8, !dbg !3579
    #dbg_value(i64 %22, !3580, !DIExpression(), !3534)
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3581
  %23 = load i64, ptr %arrayidx23, align 8, !dbg !3581
    #dbg_value(i64 %23, !3582, !DIExpression(), !3534)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3583
  %24 = load i64, ptr %arrayidx24, align 8, !dbg !3583
    #dbg_value(i64 %24, !3584, !DIExpression(), !3534)
    #dbg_value(i32 0, !3585, !DIExpression(), !3534)
  br label %for.cond, !dbg !3586

for.cond:                                         ; preds = %for.inc, %entry
  %Aso.0 = phi i64 [ %23, %entry ], [ %xor444, %for.inc ], !dbg !3534
  %Asi.0 = phi i64 [ %22, %entry ], [ %xor441, %for.inc ], !dbg !3534
  %Ase.0 = phi i64 [ %21, %entry ], [ %xor438, %for.inc ], !dbg !3534
  %Asa.0 = phi i64 [ %20, %entry ], [ %xor435, %for.inc ], !dbg !3534
  %Amu.0 = phi i64 [ %19, %entry ], [ %xor412, %for.inc ], !dbg !3534
  %Amo.0 = phi i64 [ %18, %entry ], [ %xor409, %for.inc ], !dbg !3534
  %Ami.0 = phi i64 [ %17, %entry ], [ %xor406, %for.inc ], !dbg !3534
  %Ame.0 = phi i64 [ %16, %entry ], [ %xor403, %for.inc ], !dbg !3534
  %Ama.0 = phi i64 [ %15, %entry ], [ %xor400, %for.inc ], !dbg !3534
  %Aku.0 = phi i64 [ %14, %entry ], [ %xor377, %for.inc ], !dbg !3534
  %Ako.0 = phi i64 [ %13, %entry ], [ %xor374, %for.inc ], !dbg !3534
  %Aki.0 = phi i64 [ %12, %entry ], [ %xor371, %for.inc ], !dbg !3534
  %Ake.0 = phi i64 [ %11, %entry ], [ %xor368, %for.inc ], !dbg !3534
  %Aka.0 = phi i64 [ %10, %entry ], [ %xor365, %for.inc ], !dbg !3534
  %Agu.0 = phi i64 [ %9, %entry ], [ %xor342, %for.inc ], !dbg !3534
  %Ago.0 = phi i64 [ %8, %entry ], [ %xor339, %for.inc ], !dbg !3534
  %Agi.0 = phi i64 [ %7, %entry ], [ %xor336, %for.inc ], !dbg !3534
  %Age.0 = phi i64 [ %6, %entry ], [ %xor333, %for.inc ], !dbg !3534
  %Aga.0 = phi i64 [ %5, %entry ], [ %xor330, %for.inc ], !dbg !3534
  %Abu.0 = phi i64 [ %4, %entry ], [ %xor307, %for.inc ], !dbg !3534
  %Abo.0 = phi i64 [ %3, %entry ], [ %xor304, %for.inc ], !dbg !3534
  %Abi.0 = phi i64 [ %2, %entry ], [ %xor301, %for.inc ], !dbg !3534
  %Abe.0 = phi i64 [ %1, %entry ], [ %xor298, %for.inc ], !dbg !3534
  %Aba.0 = phi i64 [ %0, %entry ], [ %xor295, %for.inc ], !dbg !3534
  %round.0 = phi i32 [ 0, %entry ], [ %add448, %for.inc ], !dbg !3588
  %Asu.0 = phi i64 [ %24, %entry ], [ %xor447, %for.inc ], !dbg !3534
    #dbg_value(i64 %Asu.0, !3584, !DIExpression(), !3534)
    #dbg_value(i32 %round.0, !3585, !DIExpression(), !3534)
    #dbg_value(i64 %Aba.0, !3536, !DIExpression(), !3534)
    #dbg_value(i64 %Abe.0, !3538, !DIExpression(), !3534)
    #dbg_value(i64 %Abi.0, !3540, !DIExpression(), !3534)
    #dbg_value(i64 %Abo.0, !3542, !DIExpression(), !3534)
    #dbg_value(i64 %Abu.0, !3544, !DIExpression(), !3534)
    #dbg_value(i64 %Aga.0, !3546, !DIExpression(), !3534)
    #dbg_value(i64 %Age.0, !3548, !DIExpression(), !3534)
    #dbg_value(i64 %Agi.0, !3550, !DIExpression(), !3534)
    #dbg_value(i64 %Ago.0, !3552, !DIExpression(), !3534)
    #dbg_value(i64 %Agu.0, !3554, !DIExpression(), !3534)
    #dbg_value(i64 %Aka.0, !3556, !DIExpression(), !3534)
    #dbg_value(i64 %Ake.0, !3558, !DIExpression(), !3534)
    #dbg_value(i64 %Aki.0, !3560, !DIExpression(), !3534)
    #dbg_value(i64 %Ako.0, !3562, !DIExpression(), !3534)
    #dbg_value(i64 %Aku.0, !3564, !DIExpression(), !3534)
    #dbg_value(i64 %Ama.0, !3566, !DIExpression(), !3534)
    #dbg_value(i64 %Ame.0, !3568, !DIExpression(), !3534)
    #dbg_value(i64 %Ami.0, !3570, !DIExpression(), !3534)
    #dbg_value(i64 %Amo.0, !3572, !DIExpression(), !3534)
    #dbg_value(i64 %Amu.0, !3574, !DIExpression(), !3534)
    #dbg_value(i64 %Asa.0, !3576, !DIExpression(), !3534)
    #dbg_value(i64 %Ase.0, !3578, !DIExpression(), !3534)
    #dbg_value(i64 %Asi.0, !3580, !DIExpression(), !3534)
    #dbg_value(i64 %Aso.0, !3582, !DIExpression(), !3534)
  %cmp = icmp samesign ult i32 %round.0, 24, !dbg !3589
  br i1 %cmp, label %for.inc, label %for.end, !dbg !3591

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0, i64 %Aga.0), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0, i64 %Age.0), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0, i64 %Agi.0), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0, i64 %Ago.0), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0, i64 %Agu.0), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3594, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3595, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3596, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3592, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3594, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3595, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3596, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3592, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3594, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3595, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3576, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3596, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3592, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3594, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3595, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3596, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3592, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3594, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3595, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3578, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3596, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3622, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3623, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3624, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3625, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3626, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3594, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3595, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3626, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3596, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3592, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3594, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3595, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3624, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3596, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3592, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3594, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3595, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3622, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3596, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3592, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3594, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3595, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3625, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3596, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3592, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3594, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3595, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3623, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 poison, !3596, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3576, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3578, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor32 = xor i64 %Abi.0, %Agi.0, !dbg !3627
    #dbg_value(!DIArgList(i64 %xor32, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor33 = xor i64 %xor32, %Aki.0, !dbg !3629
    #dbg_value(!DIArgList(i64 %xor33, i64 %Asi.0, i64 %Ami.0), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor34 = xor i64 %xor33, %Ami.0, !dbg !3630
    #dbg_value(!DIArgList(i64 %xor34, i64 %Asi.0), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor35 = xor i64 %xor34, %Asi.0, !dbg !3631
    #dbg_value(i64 %xor35, !3594, !DIExpression(), !3534)
  %xor40 = xor i64 %Abu.0, %Agu.0, !dbg !3632
    #dbg_value(!DIArgList(i64 %xor40, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor41 = xor i64 %xor40, %Aku.0, !dbg !3633
    #dbg_value(!DIArgList(i64 %xor41, i64 %Asu.0, i64 %Amu.0), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor42 = xor i64 %xor41, %Amu.0, !dbg !3634
    #dbg_value(!DIArgList(i64 %xor42, i64 %Asu.0), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor43 = xor i64 %xor42, %Asu.0, !dbg !3635
    #dbg_value(i64 %xor43, !3596, !DIExpression(), !3534)
  %25 = shl i64 %xor43, 1, !dbg !3636
  %26 = lshr i64 %xor43, 63, !dbg !3636
  %27 = or i64 %25, %26, !dbg !3636
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor35, i64 %27), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor35, i64 %27), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor35, i64 %27), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor35, i64 %27), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor35, i64 %27), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor35, i64 %27), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor57 = xor i64 %xor35, %27, !dbg !3637
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor57), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor57), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor57), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor57), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor57), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 %xor57, !3600, !DIExpression(), !3534)
  %xor203 = xor i64 %Ago.0, %xor57, !dbg !3638
    #dbg_value(i64 %xor203, !3552, !DIExpression(), !3534)
  %28 = shl i64 %xor203, 55, !dbg !3639
  %29 = lshr i64 %xor203, 9, !dbg !3639
  %30 = or i64 %28, %29, !dbg !3639
    #dbg_value(i64 %30, !3593, !DIExpression(), !3534)
  %xor28 = xor i64 %Abe.0, %Age.0, !dbg !3640
    #dbg_value(!DIArgList(i64 %xor28, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor29 = xor i64 %xor28, %Ake.0, !dbg !3641
    #dbg_value(!DIArgList(i64 %xor29, i64 %Ase.0, i64 %Ame.0), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor30 = xor i64 %xor29, %Ame.0, !dbg !3642
    #dbg_value(!DIArgList(i64 %xor30, i64 %Ase.0), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor31 = xor i64 %xor30, %Ase.0, !dbg !3643
    #dbg_value(i64 %xor31, !3593, !DIExpression(), !3534)
  %31 = shl i64 %xor31, 1, !dbg !3644
  %32 = lshr i64 %xor31, 63, !dbg !3644
  %33 = or i64 %31, %32, !dbg !3644
    #dbg_value(!DIArgList(i64 %xor43, i64 %33), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor43, i64 %33), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor43, i64 %33), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor43, i64 %33), !3576, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor43, i64 %33), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor45 = xor i64 %xor43, %33, !dbg !3645
    #dbg_value(i64 %xor45, !3597, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor45), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor45), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor45), !3576, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor45), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor211 = xor i64 %Ama.0, %xor45, !dbg !3646
    #dbg_value(i64 %xor211, !3566, !DIExpression(), !3534)
  %34 = shl i64 %xor211, 41, !dbg !3647
  %35 = lshr i64 %xor211, 23, !dbg !3647
  %36 = or i64 %34, %35, !dbg !3647
    #dbg_value(i64 %36, !3595, !DIExpression(), !3534)
  %xor36 = xor i64 %Abo.0, %Ago.0, !dbg !3648
    #dbg_value(!DIArgList(i64 %xor36, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor37 = xor i64 %xor36, %Ako.0, !dbg !3649
    #dbg_value(!DIArgList(i64 %xor37, i64 %Aso.0, i64 %Amo.0), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor38 = xor i64 %xor37, %Amo.0, !dbg !3650
    #dbg_value(!DIArgList(i64 %xor38, i64 %Aso.0), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor39 = xor i64 %xor38, %Aso.0, !dbg !3651
    #dbg_value(i64 %xor39, !3595, !DIExpression(), !3534)
  %xor = xor i64 %Aba.0, %Aga.0, !dbg !3652
    #dbg_value(!DIArgList(i64 %xor, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor25 = xor i64 %xor, %Aka.0, !dbg !3653
    #dbg_value(!DIArgList(i64 %xor25, i64 %Asa.0, i64 %Ama.0), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor26 = xor i64 %xor25, %Ama.0, !dbg !3654
    #dbg_value(!DIArgList(i64 %xor26, i64 %Asa.0), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor27 = xor i64 %xor26, %Asa.0, !dbg !3655
    #dbg_value(i64 %xor27, !3592, !DIExpression(), !3534)
  %37 = shl i64 %xor27, 1, !dbg !3656
  %38 = lshr i64 %xor27, 63, !dbg !3656
  %39 = or i64 %37, %38, !dbg !3656
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor39, i64 %39), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor39, i64 %39), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor39, i64 %39), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor39, i64 %39), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor39, i64 %39), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor39, i64 %39), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor61 = xor i64 %xor39, %39, !dbg !3657
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor61), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor61), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor61), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor61), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 %xor61, !3601, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor61), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor207 = xor i64 %Aku.0, %xor61, !dbg !3658
    #dbg_value(i64 %xor207, !3564, !DIExpression(), !3534)
  %40 = shl i64 %xor207, 39, !dbg !3659
  %41 = lshr i64 %xor207, 25, !dbg !3659
  %42 = or i64 %40, %41, !dbg !3659
    #dbg_value(i64 %42, !3594, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %42), !3623, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not222 = xor i64 %42, -1, !dbg !3660
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %not222), !3623, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and223 = and i64 %36, %not222, !dbg !3661
    #dbg_value(!DIArgList(i64 %30, i64 %and223), !3623, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor224 = xor i64 %30, %and223, !dbg !3662
    #dbg_value(i64 %xor224, !3623, !DIExpression(), !3534)
  %43 = shl i64 %xor39, 1, !dbg !3663
  %44 = lshr i64 %xor39, 63, !dbg !3663
  %45 = or i64 %43, %44, !dbg !3663
    #dbg_value(!DIArgList(i64 %xor31, i64 %45), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor31, i64 %45), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor31, i64 %45), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor31, i64 %45), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor31, i64 %45), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor31, i64 %45), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor53 = xor i64 %xor31, %45, !dbg !3664
    #dbg_value(i64 %xor53, !3599, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor53), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor53), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor53), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor53), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor53), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor67 = xor i64 %Aki.0, %xor53, !dbg !3665
    #dbg_value(i64 %xor67, !3560, !DIExpression(), !3534)
  %46 = shl i64 %xor67, 43, !dbg !3666
  %47 = lshr i64 %xor67, 21, !dbg !3666
  %48 = or i64 %46, %47, !dbg !3666
    #dbg_value(i64 %48, !3594, !DIExpression(), !3534)
  %49 = shl i64 %xor35, 1, !dbg !3667
  %50 = lshr i64 %xor35, 63, !dbg !3667
  %51 = or i64 %49, %50, !dbg !3667
    #dbg_value(!DIArgList(i64 %xor27, i64 %51), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor27, i64 %51), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor27, i64 %51), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor27, i64 %51), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor27, i64 %51), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor27, i64 %51), !3578, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor49 = xor i64 %xor27, %51, !dbg !3668
    #dbg_value(i64 %xor49, !3598, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor49), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor49), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor49), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor49), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor49), !3578, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor63 = xor i64 %Age.0, %xor49, !dbg !3669
    #dbg_value(i64 %xor63, !3548, !DIExpression(), !3534)
  %52 = shl i64 %xor63, 44, !dbg !3670
  %53 = lshr i64 %xor63, 20, !dbg !3670
  %54 = or i64 %52, %53, !dbg !3670
    #dbg_value(i64 %54, !3593, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %54), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not = xor i64 %54, -1, !dbg !3671
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %not), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and = and i64 %48, %not, !dbg !3672
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %and, i64 %xor45), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %arrayidx80 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %round.0, !dbg !3673
  %55 = load i64, ptr %arrayidx80, align 8, !dbg !3673
    #dbg_value(!DIArgList(i64 %and, i64 %Aba.0, i64 %xor45, i64 %55), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %56 = xor i64 %and, %55, !dbg !3674
    #dbg_value(!DIArgList(i64 %56, i64 %Aba.0, i64 %xor45), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor62 = xor i64 %Aba.0, %xor45, !dbg !3675
    #dbg_value(i64 %xor62, !3536, !DIExpression(), !3534)
    #dbg_value(i64 %xor62, !3592, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %56, i64 %xor62), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor81 = xor i64 %56, %xor62, !dbg !3674
    #dbg_value(i64 %xor81, !3602, !DIExpression(), !3534)
  %xor94 = xor i64 %Abo.0, %xor57, !dbg !3676
    #dbg_value(i64 %xor94, !3542, !DIExpression(), !3534)
  %57 = shl i64 %xor94, 28, !dbg !3677
  %58 = lshr i64 %xor94, 36, !dbg !3677
  %59 = or i64 %57, %58, !dbg !3677
    #dbg_value(i64 %59, !3592, !DIExpression(), !3534)
  %xor102 = xor i64 %Aka.0, %xor45, !dbg !3678
    #dbg_value(i64 %xor102, !3556, !DIExpression(), !3534)
  %60 = shl i64 %xor102, 3, !dbg !3679
  %61 = lshr i64 %xor102, 61, !dbg !3679
  %62 = or i64 %60, %61, !dbg !3679
    #dbg_value(i64 %62, !3594, !DIExpression(), !3534)
  %xor98 = xor i64 %Agu.0, %xor61, !dbg !3680
    #dbg_value(i64 %xor98, !3554, !DIExpression(), !3534)
  %63 = shl i64 %xor98, 20, !dbg !3681
  %64 = lshr i64 %xor98, 44, !dbg !3681
  %65 = or i64 %63, %64, !dbg !3681
    #dbg_value(i64 %65, !3593, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %65), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not114 = xor i64 %65, -1, !dbg !3682
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %not114), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and115 = and i64 %62, %not114, !dbg !3683
    #dbg_value(!DIArgList(i64 %59, i64 %and115), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor116 = xor i64 %59, %and115, !dbg !3684
    #dbg_value(i64 %xor116, !3607, !DIExpression(), !3534)
  %xor234 = xor i64 %xor81, %xor116, !dbg !3685
  %xor129 = xor i64 %Abe.0, %xor49, !dbg !3686
    #dbg_value(i64 %xor129, !3538, !DIExpression(), !3534)
  %66 = shl i64 %xor129, 1, !dbg !3687
  %67 = lshr i64 %xor129, 63, !dbg !3687
  %68 = or i64 %66, %67, !dbg !3687
    #dbg_value(i64 %68, !3592, !DIExpression(), !3534)
  %xor137 = xor i64 %Ako.0, %xor57, !dbg !3688
    #dbg_value(i64 %xor137, !3562, !DIExpression(), !3534)
  %69 = shl i64 %xor137, 25, !dbg !3689
  %70 = lshr i64 %xor137, 39, !dbg !3689
  %71 = or i64 %69, %70, !dbg !3689
    #dbg_value(i64 %71, !3594, !DIExpression(), !3534)
  %xor133 = xor i64 %Agi.0, %xor53, !dbg !3690
    #dbg_value(i64 %xor133, !3550, !DIExpression(), !3534)
  %72 = shl i64 %xor133, 6, !dbg !3691
  %73 = lshr i64 %xor133, 58, !dbg !3691
  %74 = or i64 %72, %73, !dbg !3691
    #dbg_value(i64 %74, !3593, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %74), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not149 = xor i64 %74, -1, !dbg !3692
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %not149), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and150 = and i64 %71, %not149, !dbg !3693
    #dbg_value(!DIArgList(i64 %68, i64 %and150), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor151 = xor i64 %68, %and150, !dbg !3694
    #dbg_value(i64 %xor151, !3612, !DIExpression(), !3534)
  %xor235 = xor i64 %xor234, %xor151, !dbg !3695
  %xor164 = xor i64 %Abu.0, %xor61, !dbg !3696
    #dbg_value(i64 %xor164, !3544, !DIExpression(), !3534)
  %75 = shl i64 %xor164, 27, !dbg !3697
  %76 = lshr i64 %xor164, 37, !dbg !3697
  %77 = or i64 %75, %76, !dbg !3697
    #dbg_value(i64 %77, !3592, !DIExpression(), !3534)
  %xor172 = xor i64 %Ake.0, %xor49, !dbg !3698
    #dbg_value(i64 %xor172, !3558, !DIExpression(), !3534)
  %78 = shl i64 %xor172, 10, !dbg !3699
  %79 = lshr i64 %xor172, 54, !dbg !3699
  %80 = or i64 %78, %79, !dbg !3699
    #dbg_value(i64 %80, !3594, !DIExpression(), !3534)
  %xor168 = xor i64 %Aga.0, %xor45, !dbg !3700
    #dbg_value(i64 %xor168, !3546, !DIExpression(), !3534)
  %81 = shl i64 %xor168, 36, !dbg !3701
  %82 = lshr i64 %xor168, 28, !dbg !3701
  %83 = or i64 %81, %82, !dbg !3701
    #dbg_value(i64 %83, !3593, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %83), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not184 = xor i64 %83, -1, !dbg !3702
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %not184), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and185 = and i64 %80, %not184, !dbg !3703
    #dbg_value(!DIArgList(i64 %77, i64 %and185), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor186 = xor i64 %77, %and185, !dbg !3704
    #dbg_value(i64 %xor186, !3617, !DIExpression(), !3534)
  %xor236 = xor i64 %xor235, %xor186, !dbg !3705
  %xor199 = xor i64 %Abi.0, %xor53, !dbg !3706
    #dbg_value(i64 %xor199, !3540, !DIExpression(), !3534)
  %84 = shl i64 %xor199, 62, !dbg !3707
  %85 = lshr i64 %xor199, 2, !dbg !3707
  %86 = or i64 %84, %85, !dbg !3707
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %30), !3622, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %30), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %not219 = xor i64 %30, -1, !dbg !3708
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %not219), !3622, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %not219), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %and220 = and i64 %42, %not219, !dbg !3709
    #dbg_value(!DIArgList(i64 %86, i64 %and220), !3622, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %and220), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor221 = xor i64 %86, %and220, !dbg !3710
    #dbg_value(i64 %xor221, !3622, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor221), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor237 = xor i64 %xor236, %xor221, !dbg !3711
    #dbg_value(i64 %xor237, !3592, !DIExpression(), !3534)
  %xor75 = xor i64 %Asu.0, %xor61, !dbg !3712
    #dbg_value(i64 %xor75, !3584, !DIExpression(), !3534)
  %87 = shl i64 %xor75, 14, !dbg !3713
  %88 = lshr i64 %xor75, 50, !dbg !3713
  %89 = or i64 %87, %88, !dbg !3713
    #dbg_value(i64 %89, !3596, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %xor62), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor71 = xor i64 %Amo.0, %xor57, !dbg !3714
    #dbg_value(i64 %xor71, !3572, !DIExpression(), !3534)
  %90 = shl i64 %xor71, 21, !dbg !3715
  %91 = lshr i64 %xor71, 43, !dbg !3715
  %92 = or i64 %90, %91, !dbg !3715
    #dbg_value(i64 %92, !3595, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %92), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %54, i64 %92, i64 %48), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %92, i64 %xor62, i64 %89), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not85 = xor i64 %92, -1, !dbg !3716
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %not85), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and86 = and i64 %89, %not85, !dbg !3717
    #dbg_value(!DIArgList(i64 %48, i64 %and86), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor87 = xor i64 %48, %and86, !dbg !3718
    #dbg_value(i64 %xor87, !3604, !DIExpression(), !3534)
  %xor110 = xor i64 %Asi.0, %xor53, !dbg !3719
    #dbg_value(i64 %xor110, !3580, !DIExpression(), !3534)
  %93 = shl i64 %xor110, 61, !dbg !3720
  %94 = lshr i64 %xor110, 3, !dbg !3720
  %95 = or i64 %93, %94, !dbg !3720
    #dbg_value(i64 %95, !3596, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %59), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor106 = xor i64 %Ame.0, %xor49, !dbg !3721
    #dbg_value(i64 %xor106, !3568, !DIExpression(), !3534)
  %96 = shl i64 %xor106, 45, !dbg !3722
  %97 = lshr i64 %xor106, 19, !dbg !3722
  %98 = or i64 %96, %97, !dbg !3722
    #dbg_value(i64 %98, !3595, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %98), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %95), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %65, i64 %98, i64 %62), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not120 = xor i64 %98, -1, !dbg !3723
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %not120), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and121 = and i64 %95, %not120, !dbg !3724
    #dbg_value(!DIArgList(i64 %62, i64 %and121), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor122 = xor i64 %62, %and121, !dbg !3725
    #dbg_value(i64 %xor122, !3609, !DIExpression(), !3534)
  %xor242 = xor i64 %xor87, %xor122, !dbg !3726
  %xor145 = xor i64 %Asa.0, %xor45, !dbg !3727
    #dbg_value(i64 %xor145, !3576, !DIExpression(), !3534)
  %99 = shl i64 %xor145, 18, !dbg !3728
  %100 = lshr i64 %xor145, 46, !dbg !3728
  %101 = or i64 %99, %100, !dbg !3728
    #dbg_value(i64 %101, !3596, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %68), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor141 = xor i64 %Amu.0, %xor61, !dbg !3729
    #dbg_value(i64 %xor141, !3574, !DIExpression(), !3534)
  %102 = shl i64 %xor141, 8, !dbg !3730
  %103 = lshr i64 %xor141, 56, !dbg !3730
  %104 = or i64 %102, %103, !dbg !3730
    #dbg_value(i64 %104, !3595, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %104), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %74, i64 %104, i64 %71), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %104, i64 %68, i64 %101), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not155 = xor i64 %104, -1, !dbg !3731
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %not155), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and156 = and i64 %101, %not155, !dbg !3732
    #dbg_value(!DIArgList(i64 %71, i64 %and156), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor157 = xor i64 %71, %and156, !dbg !3733
    #dbg_value(i64 %xor157, !3614, !DIExpression(), !3534)
  %xor243 = xor i64 %xor242, %xor157, !dbg !3734
  %xor180 = xor i64 %Aso.0, %xor57, !dbg !3735
    #dbg_value(i64 %xor180, !3582, !DIExpression(), !3534)
  %105 = shl i64 %xor180, 56, !dbg !3736
  %106 = lshr i64 %xor180, 8, !dbg !3736
  %107 = or i64 %105, %106, !dbg !3736
    #dbg_value(i64 %107, !3596, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %77), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor176 = xor i64 %Ami.0, %xor53, !dbg !3737
    #dbg_value(i64 %xor176, !3570, !DIExpression(), !3534)
  %108 = shl i64 %xor176, 15, !dbg !3738
  %109 = lshr i64 %xor176, 49, !dbg !3738
  %110 = or i64 %108, %109, !dbg !3738
    #dbg_value(i64 %110, !3595, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %110), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %83, i64 %110, i64 %80), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %110, i64 %77, i64 %107), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %48), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %not190 = xor i64 %110, -1, !dbg !3739
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %not190), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and191 = and i64 %107, %not190, !dbg !3740
    #dbg_value(!DIArgList(i64 %80, i64 %and191), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor192 = xor i64 %80, %and191, !dbg !3741
    #dbg_value(i64 %xor192, !3619, !DIExpression(), !3534)
  %xor244 = xor i64 %xor243, %xor192, !dbg !3742
  %xor215 = xor i64 %Ase.0, %xor49, !dbg !3743
    #dbg_value(i64 %xor215, !3578, !DIExpression(), !3534)
  %111 = shl i64 %xor215, 2, !dbg !3744
  %112 = lshr i64 %xor215, 62, !dbg !3744
  %113 = or i64 %111, %112, !dbg !3744
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %36), !3624, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %86), !3626, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %36, i64 %86, i64 %113), !3625, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %36), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %95), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %xor62), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %not225 = xor i64 %36, -1, !dbg !3745
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %not225), !3624, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %not225), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %and226 = and i64 %113, %not225, !dbg !3746
    #dbg_value(!DIArgList(i64 %42, i64 %and226), !3624, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %and226), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor227 = xor i64 %42, %and226, !dbg !3747
    #dbg_value(i64 %xor227, !3624, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor227), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor245 = xor i64 %xor244, %xor227, !dbg !3748
    #dbg_value(i64 %xor245, !3594, !DIExpression(), !3534)
  %114 = shl i64 %xor245, 1, !dbg !3749
  %115 = lshr i64 %xor245, 63, !dbg !3749
  %116 = or i64 %114, %115, !dbg !3749
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor237, i64 %116), !3623, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %54, i64 %xor237, i64 %92, i64 %48, i64 %116), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %65, i64 %xor237, i64 %98, i64 %62, i64 %116), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %74, i64 %xor237, i64 %104, i64 %71, i64 %116), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %83, i64 %xor237, i64 %110, i64 %80, i64 %116), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor237, i64 %116), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor261 = xor i64 %xor237, %116, !dbg !3750
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor261), !3623, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %48), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %62), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %71), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %80), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 %xor261, !3598, !DIExpression(), !3534)
  %xor429 = xor i64 %xor224, %xor261, !dbg !3751
    #dbg_value(i64 %xor429, !3623, !DIExpression(), !3534)
  %117 = shl i64 %xor429, 2, !dbg !3752
  %118 = lshr i64 %xor429, 62, !dbg !3752
  %119 = or i64 %117, %118, !dbg !3752
    #dbg_value(i64 %119, !3596, !DIExpression(), !3534)
  %not123 = xor i64 %95, -1, !dbg !3753
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %not123), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %not123), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %and124 = and i64 %59, %not123, !dbg !3754
    #dbg_value(!DIArgList(i64 %98, i64 %and124), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %and124), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor125 = xor i64 %98, %and124, !dbg !3755
    #dbg_value(i64 %xor125, !3610, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %89), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %not91 = xor i64 %xor62, -1, !dbg !3756
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %not91), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %not91), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %and92 = and i64 %54, %not91, !dbg !3757
    #dbg_value(!DIArgList(i64 %89, i64 %and92), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %and92), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor93 = xor i64 %89, %and92, !dbg !3758
    #dbg_value(i64 %xor93, !3606, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %not126 = xor i64 %59, -1, !dbg !3759
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %not126), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %not126), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %and127 = and i64 %65, %not126, !dbg !3760
    #dbg_value(!DIArgList(i64 %95, i64 %and127), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %and127), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor128 = xor i64 %95, %and127, !dbg !3761
    #dbg_value(i64 %xor128, !3611, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %xor128), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor250 = xor i64 %xor93, %xor128, !dbg !3762
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %not161 = xor i64 %68, -1, !dbg !3763
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %not161), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %not161), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %and162 = and i64 %74, %not161, !dbg !3764
    #dbg_value(!DIArgList(i64 %101, i64 %and162), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %and162), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor163 = xor i64 %101, %and162, !dbg !3765
    #dbg_value(i64 %xor163, !3616, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %xor163), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor251 = xor i64 %xor250, %xor163, !dbg !3766
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %not196 = xor i64 %77, -1, !dbg !3767
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %not196), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %not196), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %and197 = and i64 %83, %not196, !dbg !3768
    #dbg_value(!DIArgList(i64 %107, i64 %and197), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %and197), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor198 = xor i64 %107, %and197, !dbg !3769
    #dbg_value(i64 %xor198, !3621, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %xor198), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor252 = xor i64 %xor251, %xor198, !dbg !3770
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %86), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %not231 = xor i64 %86, -1, !dbg !3771
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %not231), !3626, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %not231), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %and232 = and i64 %30, %not231, !dbg !3772
    #dbg_value(!DIArgList(i64 %113, i64 %and232), !3626, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %and232), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor233 = xor i64 %113, %and232, !dbg !3773
    #dbg_value(i64 %xor233, !3626, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor233), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor253 = xor i64 %xor252, %xor233, !dbg !3774
    #dbg_value(i64 %xor253, !3596, !DIExpression(), !3534)
  %120 = shl i64 %xor253, 1, !dbg !3775
  %121 = lshr i64 %xor253, 63, !dbg !3775
  %122 = or i64 %120, %121, !dbg !3775
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor245, i64 %122), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %92, i64 %xor245, i64 %xor62, i64 %89, i64 %122), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %104, i64 %xor245, i64 %68, i64 %101, i64 %122), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %110, i64 %xor245, i64 %77, i64 %107, i64 %122), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %36, i64 %xor245, i64 %86, i64 %113, i64 %122), !3625, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor245, i64 %122), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor269 = xor i64 %xor245, %122, !dbg !3776
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor269), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %89), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %101), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %107), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %113), !3625, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 %xor269, !3600, !DIExpression(), !3534)
  %xor417 = xor i64 %xor125, %xor269, !dbg !3777
    #dbg_value(i64 %xor417, !3610, !DIExpression(), !3534)
  %123 = shl i64 %xor417, 55, !dbg !3778
  %124 = lshr i64 %xor417, 9, !dbg !3778
  %125 = or i64 %123, %124, !dbg !3778
    #dbg_value(i64 %125, !3593, !DIExpression(), !3534)
  %not82 = xor i64 %48, -1, !dbg !3779
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %not82), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %not82), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %and83 = and i64 %92, %not82, !dbg !3780
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %and83), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %and83), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor84 = xor i64 %54, %and83, !dbg !3781
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor261), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %not117 = xor i64 %62, -1, !dbg !3782
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %not117), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %not117), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %and118 = and i64 %98, %not117, !dbg !3783
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %and118), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %and118), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor119 = xor i64 %65, %and118, !dbg !3784
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %xor119), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor119, i64 %xor261), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor238 = xor i64 %xor84, %xor119, !dbg !3785
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %not152 = xor i64 %71, -1, !dbg !3786
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %not152), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %not152), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %and153 = and i64 %104, %not152, !dbg !3787
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %and153), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %and153), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor154 = xor i64 %74, %and153, !dbg !3788
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %xor154), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor154, i64 %xor261), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor239 = xor i64 %xor238, %xor154, !dbg !3789
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %80), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %not187 = xor i64 %80, -1, !dbg !3790
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %not187), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %not187), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %and188 = and i64 %110, %not187, !dbg !3791
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %and188), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %and188), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor189 = xor i64 %83, %and188, !dbg !3792
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor189), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor189, i64 %xor261), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor240 = xor i64 %xor239, %xor189, !dbg !3793
    #dbg_value(!DIArgList(i64 %xor240, i64 %xor224), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor241 = xor i64 %xor240, %xor224, !dbg !3794
    #dbg_value(i64 %xor241, !3593, !DIExpression(), !3534)
  %not88 = xor i64 %89, -1, !dbg !3795
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %not88), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %not88), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %and89 = and i64 %xor62, %not88, !dbg !3796
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %and89), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %and89), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor90 = xor i64 %92, %and89, !dbg !3797
    #dbg_value(!DIArgList(i64 %xor90, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor90, i64 %xor269), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor246 = xor i64 %xor90, %xor125, !dbg !3798
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %not158 = xor i64 %101, -1, !dbg !3799
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %not158), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %not158), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %and159 = and i64 %68, %not158, !dbg !3800
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %and159), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %and159), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor160 = xor i64 %104, %and159, !dbg !3801
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %xor160), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor160, i64 %xor269), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor247 = xor i64 %xor246, %xor160, !dbg !3802
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %not193 = xor i64 %107, -1, !dbg !3803
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %not193), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %not193), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %and194 = and i64 %77, %not193, !dbg !3804
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %and194), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %and194), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor195 = xor i64 %110, %and194, !dbg !3805
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %xor195), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor195, i64 %xor269), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor248 = xor i64 %xor247, %xor195, !dbg !3806
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %113), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %not228 = xor i64 %113, -1, !dbg !3807
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %not228), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %not228), !3625, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %and229 = and i64 %86, %not228, !dbg !3808
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %and229), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %and229), !3625, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor230 = xor i64 %36, %and229, !dbg !3809
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor230), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor230, i64 %xor269), !3625, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor249 = xor i64 %xor248, %xor230, !dbg !3810
    #dbg_value(i64 %xor249, !3595, !DIExpression(), !3534)
  %126 = shl i64 %xor249, 1, !dbg !3811
  %127 = lshr i64 %xor249, 63, !dbg !3811
  %128 = or i64 %126, %127, !dbg !3811
    #dbg_value(!DIArgList(i64 %xor241, i64 %128), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor241, i64 %128), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor241, i64 %128), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor241, i64 %128), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor241, i64 %128), !3624, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor241, i64 %128), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor265 = xor i64 %xor241, %128, !dbg !3812
    #dbg_value(i64 %xor265, !3599, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor265), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor265), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor265), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor265), !3624, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor265), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor413 = xor i64 %xor87, %xor265, !dbg !3813
    #dbg_value(i64 %xor413, !3604, !DIExpression(), !3534)
  %129 = shl i64 %xor413, 62, !dbg !3814
  %130 = lshr i64 %xor413, 2, !dbg !3814
  %131 = or i64 %129, %130, !dbg !3814
    #dbg_value(i64 %131, !3592, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %131), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not445 = xor i64 %131, -1, !dbg !3815
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %not445), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and446 = and i64 %125, %not445, !dbg !3816
    #dbg_value(!DIArgList(i64 %119, i64 %and446), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor447 = xor i64 %119, %and446, !dbg !3817
    #dbg_value(i64 %xor447, !3584, !DIExpression(), !3534)
  %132 = shl i64 %xor241, 1, !dbg !3818
  %133 = lshr i64 %xor241, 63, !dbg !3818
  %134 = or i64 %132, %133, !dbg !3818
    #dbg_value(!DIArgList(i64 %xor253, i64 %134), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor253, i64 %134), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor253, i64 %134), !3622, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor253, i64 %134), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor253, i64 %134), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor257 = xor i64 %xor253, %134, !dbg !3819
    #dbg_value(i64 %xor257, !3597, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor257), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor257), !3622, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor257), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor257), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor425 = xor i64 %xor186, %xor257, !dbg !3820
    #dbg_value(i64 %xor425, !3617, !DIExpression(), !3534)
  %135 = shl i64 %xor425, 41, !dbg !3821
  %136 = lshr i64 %xor425, 23, !dbg !3821
  %137 = or i64 %135, %136, !dbg !3821
    #dbg_value(i64 %137, !3595, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %119), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not442 = xor i64 %119, -1, !dbg !3822
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %not442), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and443 = and i64 %131, %not442, !dbg !3823
    #dbg_value(!DIArgList(i64 %137, i64 %and443), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor444 = xor i64 %137, %and443, !dbg !3824
    #dbg_value(i64 %xor444, !3582, !DIExpression(), !3534)
  %138 = shl i64 %xor237, 1, !dbg !3825
  %139 = lshr i64 %xor237, 63, !dbg !3825
  %140 = or i64 %138, %139, !dbg !3825
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor249, i64 %140), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor249, i64 %140), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor249, i64 %140), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor249, i64 %140), !3626, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor249, i64 %140), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor249, i64 %140), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor273 = xor i64 %xor249, %140, !dbg !3826
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor273), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor273), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor273), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor273), !3626, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(i64 %xor273, !3601, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor273), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor421 = xor i64 %xor163, %xor273, !dbg !3827
    #dbg_value(i64 %xor421, !3616, !DIExpression(), !3534)
  %141 = shl i64 %xor421, 39, !dbg !3828
  %142 = lshr i64 %xor421, 25, !dbg !3828
  %143 = or i64 %141, %142, !dbg !3828
    #dbg_value(i64 %143, !3594, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %137), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %143), !3578, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %125), !3576, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not439 = xor i64 %137, -1, !dbg !3829
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %not439), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and440 = and i64 %119, %not439, !dbg !3830
    #dbg_value(!DIArgList(i64 %143, i64 %and440), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor441 = xor i64 %143, %and440, !dbg !3831
    #dbg_value(i64 %xor441, !3580, !DIExpression(), !3534)
  %not436 = xor i64 %143, -1, !dbg !3832
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %not436), !3578, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and437 = and i64 %137, %not436, !dbg !3833
    #dbg_value(!DIArgList(i64 %125, i64 %and437), !3578, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor438 = xor i64 %125, %and437, !dbg !3834
    #dbg_value(i64 %xor438, !3578, !DIExpression(), !3534)
  %not433 = xor i64 %125, -1, !dbg !3835
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %not433), !3576, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and434 = and i64 %143, %not433, !dbg !3836
    #dbg_value(!DIArgList(i64 %131, i64 %and434), !3576, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor435 = xor i64 %131, %and434, !dbg !3837
    #dbg_value(i64 %xor435, !3576, !DIExpression(), !3534)
  %xor394 = xor i64 %xor230, %xor269, !dbg !3838
    #dbg_value(i64 %xor394, !3625, !DIExpression(), !3534)
  %144 = shl i64 %xor394, 56, !dbg !3839
  %145 = lshr i64 %xor394, 8, !dbg !3839
  %146 = or i64 %144, %145, !dbg !3839
    #dbg_value(i64 %146, !3596, !DIExpression(), !3534)
  %xor382 = xor i64 %xor116, %xor257, !dbg !3840
    #dbg_value(i64 %xor382, !3607, !DIExpression(), !3534)
  %147 = shl i64 %xor382, 36, !dbg !3841
  %148 = lshr i64 %xor382, 28, !dbg !3841
  %149 = or i64 %147, %148, !dbg !3841
    #dbg_value(i64 %149, !3593, !DIExpression(), !3534)
  %xor378 = xor i64 %xor93, %xor273, !dbg !3842
    #dbg_value(i64 %xor378, !3606, !DIExpression(), !3534)
  %150 = shl i64 %xor378, 27, !dbg !3843
  %151 = lshr i64 %xor378, 37, !dbg !3843
  %152 = or i64 %150, %151, !dbg !3843
    #dbg_value(i64 %152, !3592, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %152), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not410 = xor i64 %152, -1, !dbg !3844
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %not410), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and411 = and i64 %149, %not410, !dbg !3845
    #dbg_value(!DIArgList(i64 %146, i64 %and411), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor412 = xor i64 %146, %and411, !dbg !3846
    #dbg_value(i64 %xor412, !3574, !DIExpression(), !3534)
  %xor390 = xor i64 %xor192, %xor265, !dbg !3847
    #dbg_value(i64 %xor390, !3619, !DIExpression(), !3534)
  %153 = shl i64 %xor390, 15, !dbg !3848
  %154 = lshr i64 %xor390, 49, !dbg !3848
  %155 = or i64 %153, %154, !dbg !3848
    #dbg_value(i64 %155, !3595, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %146), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not407 = xor i64 %146, -1, !dbg !3849
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %not407), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and408 = and i64 %152, %not407, !dbg !3850
    #dbg_value(!DIArgList(i64 %155, i64 %and408), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor409 = xor i64 %155, %and408, !dbg !3851
    #dbg_value(i64 %xor409, !3572, !DIExpression(), !3534)
  %xor386 = xor i64 %xor154, %xor261, !dbg !3852
    #dbg_value(i64 %xor386, !3613, !DIExpression(), !3534)
  %156 = shl i64 %xor386, 10, !dbg !3853
  %157 = lshr i64 %xor386, 54, !dbg !3853
  %158 = or i64 %156, %157, !dbg !3853
    #dbg_value(i64 %158, !3594, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %155), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %158), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %149), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not404 = xor i64 %155, -1, !dbg !3854
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %not404), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and405 = and i64 %146, %not404, !dbg !3855
    #dbg_value(!DIArgList(i64 %158, i64 %and405), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor406 = xor i64 %158, %and405, !dbg !3856
    #dbg_value(i64 %xor406, !3570, !DIExpression(), !3534)
  %not401 = xor i64 %158, -1, !dbg !3857
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %not401), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and402 = and i64 %155, %not401, !dbg !3858
    #dbg_value(!DIArgList(i64 %149, i64 %and402), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor403 = xor i64 %149, %and402, !dbg !3859
    #dbg_value(i64 %xor403, !3568, !DIExpression(), !3534)
  %not398 = xor i64 %149, -1, !dbg !3860
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %not398), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and399 = and i64 %158, %not398, !dbg !3861
    #dbg_value(!DIArgList(i64 %152, i64 %and399), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor400 = xor i64 %152, %and399, !dbg !3862
    #dbg_value(i64 %xor400, !3566, !DIExpression(), !3534)
  %xor359 = xor i64 %xor221, %xor257, !dbg !3863
    #dbg_value(i64 %xor359, !3622, !DIExpression(), !3534)
  %159 = shl i64 %xor359, 18, !dbg !3864
  %160 = lshr i64 %xor359, 46, !dbg !3864
  %161 = or i64 %159, %160, !dbg !3864
    #dbg_value(i64 %161, !3596, !DIExpression(), !3534)
  %xor347 = xor i64 %xor122, %xor265, !dbg !3865
    #dbg_value(i64 %xor347, !3609, !DIExpression(), !3534)
  %162 = shl i64 %xor347, 6, !dbg !3866
  %163 = lshr i64 %xor347, 58, !dbg !3866
  %164 = or i64 %162, %163, !dbg !3866
    #dbg_value(i64 %164, !3593, !DIExpression(), !3534)
  %xor343 = xor i64 %xor84, %xor261, !dbg !3867
    #dbg_value(i64 %xor343, !3603, !DIExpression(), !3534)
  %165 = shl i64 %xor343, 1, !dbg !3868
  %166 = lshr i64 %xor343, 63, !dbg !3868
  %167 = or i64 %165, %166, !dbg !3868
    #dbg_value(i64 %167, !3592, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %167), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not375 = xor i64 %167, -1, !dbg !3869
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %not375), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and376 = and i64 %164, %not375, !dbg !3870
    #dbg_value(!DIArgList(i64 %161, i64 %and376), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor377 = xor i64 %161, %and376, !dbg !3871
    #dbg_value(i64 %xor377, !3564, !DIExpression(), !3534)
  %xor355 = xor i64 %xor198, %xor273, !dbg !3872
    #dbg_value(i64 %xor355, !3621, !DIExpression(), !3534)
  %168 = shl i64 %xor355, 8, !dbg !3873
  %169 = lshr i64 %xor355, 56, !dbg !3873
  %170 = or i64 %168, %169, !dbg !3873
    #dbg_value(i64 %170, !3595, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %161), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not372 = xor i64 %161, -1, !dbg !3874
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %not372), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and373 = and i64 %167, %not372, !dbg !3875
    #dbg_value(!DIArgList(i64 %170, i64 %and373), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor374 = xor i64 %170, %and373, !dbg !3876
    #dbg_value(i64 %xor374, !3562, !DIExpression(), !3534)
  %xor351 = xor i64 %xor160, %xor269, !dbg !3877
    #dbg_value(i64 %xor351, !3615, !DIExpression(), !3534)
  %171 = shl i64 %xor351, 25, !dbg !3878
  %172 = lshr i64 %xor351, 39, !dbg !3878
  %173 = or i64 %171, %172, !dbg !3878
    #dbg_value(i64 %173, !3594, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %170), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %173), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %164), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not369 = xor i64 %170, -1, !dbg !3879
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %not369), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and370 = and i64 %161, %not369, !dbg !3880
    #dbg_value(!DIArgList(i64 %173, i64 %and370), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor371 = xor i64 %173, %and370, !dbg !3881
    #dbg_value(i64 %xor371, !3560, !DIExpression(), !3534)
  %not366 = xor i64 %173, -1, !dbg !3882
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %not366), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and367 = and i64 %170, %not366, !dbg !3883
    #dbg_value(!DIArgList(i64 %164, i64 %and367), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor368 = xor i64 %164, %and367, !dbg !3884
    #dbg_value(i64 %xor368, !3558, !DIExpression(), !3534)
  %not363 = xor i64 %164, -1, !dbg !3885
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %not363), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and364 = and i64 %173, %not363, !dbg !3886
    #dbg_value(!DIArgList(i64 %167, i64 %and364), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor365 = xor i64 %167, %and364, !dbg !3887
    #dbg_value(i64 %xor365, !3556, !DIExpression(), !3534)
  %xor324 = xor i64 %xor227, %xor265, !dbg !3888
    #dbg_value(i64 %xor324, !3624, !DIExpression(), !3534)
  %174 = shl i64 %xor324, 61, !dbg !3889
  %175 = lshr i64 %xor324, 3, !dbg !3889
  %176 = or i64 %174, %175, !dbg !3889
    #dbg_value(i64 %176, !3596, !DIExpression(), !3534)
  %xor312 = xor i64 %xor128, %xor273, !dbg !3890
    #dbg_value(i64 %xor312, !3611, !DIExpression(), !3534)
  %177 = shl i64 %xor312, 20, !dbg !3891
  %178 = lshr i64 %xor312, 44, !dbg !3891
  %179 = or i64 %177, %178, !dbg !3891
    #dbg_value(i64 %179, !3593, !DIExpression(), !3534)
  %xor308 = xor i64 %xor90, %xor269, !dbg !3892
    #dbg_value(i64 %xor308, !3605, !DIExpression(), !3534)
  %180 = shl i64 %xor308, 28, !dbg !3893
  %181 = lshr i64 %xor308, 36, !dbg !3893
  %182 = or i64 %180, %181, !dbg !3893
    #dbg_value(i64 %182, !3592, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %182), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not340 = xor i64 %182, -1, !dbg !3894
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %not340), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and341 = and i64 %179, %not340, !dbg !3895
    #dbg_value(!DIArgList(i64 %176, i64 %and341), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor342 = xor i64 %176, %and341, !dbg !3896
    #dbg_value(i64 %xor342, !3554, !DIExpression(), !3534)
  %xor320 = xor i64 %xor189, %xor261, !dbg !3897
    #dbg_value(i64 %xor320, !3618, !DIExpression(), !3534)
  %183 = shl i64 %xor320, 45, !dbg !3898
  %184 = lshr i64 %xor320, 19, !dbg !3898
  %185 = or i64 %183, %184, !dbg !3898
    #dbg_value(i64 %185, !3595, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %176), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not337 = xor i64 %176, -1, !dbg !3899
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %not337), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and338 = and i64 %182, %not337, !dbg !3900
    #dbg_value(!DIArgList(i64 %185, i64 %and338), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor339 = xor i64 %185, %and338, !dbg !3901
    #dbg_value(i64 %xor339, !3552, !DIExpression(), !3534)
  %xor316 = xor i64 %xor151, %xor257, !dbg !3902
    #dbg_value(i64 %xor316, !3612, !DIExpression(), !3534)
  %186 = shl i64 %xor316, 3, !dbg !3903
  %187 = lshr i64 %xor316, 61, !dbg !3903
  %188 = or i64 %186, %187, !dbg !3903
    #dbg_value(i64 %188, !3594, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %185), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %188), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %179), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not334 = xor i64 %185, -1, !dbg !3904
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %not334), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and335 = and i64 %176, %not334, !dbg !3905
    #dbg_value(!DIArgList(i64 %188, i64 %and335), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor336 = xor i64 %188, %and335, !dbg !3906
    #dbg_value(i64 %xor336, !3550, !DIExpression(), !3534)
  %not331 = xor i64 %188, -1, !dbg !3907
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %not331), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and332 = and i64 %185, %not331, !dbg !3908
    #dbg_value(!DIArgList(i64 %179, i64 %and332), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor333 = xor i64 %179, %and332, !dbg !3909
    #dbg_value(i64 %xor333, !3548, !DIExpression(), !3534)
  %not328 = xor i64 %179, -1, !dbg !3910
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %not328), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and329 = and i64 %188, %not328, !dbg !3911
    #dbg_value(!DIArgList(i64 %182, i64 %and329), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor330 = xor i64 %182, %and329, !dbg !3912
    #dbg_value(i64 %xor330, !3546, !DIExpression(), !3534)
  %xor287 = xor i64 %xor233, %xor273, !dbg !3913
    #dbg_value(i64 %xor287, !3626, !DIExpression(), !3534)
  %189 = shl i64 %xor287, 14, !dbg !3914
  %190 = lshr i64 %xor287, 50, !dbg !3914
  %191 = or i64 %189, %190, !dbg !3914
    #dbg_value(i64 %191, !3596, !DIExpression(), !3534)
  %xor275 = xor i64 %xor119, %xor261, !dbg !3915
    #dbg_value(i64 %xor275, !3608, !DIExpression(), !3534)
  %192 = shl i64 %xor275, 44, !dbg !3916
  %193 = lshr i64 %xor275, 20, !dbg !3916
  %194 = or i64 %192, %193, !dbg !3916
    #dbg_value(i64 %194, !3593, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor81, i64 %xor257), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor274 = xor i64 %xor81, %xor257, !dbg !3917
    #dbg_value(i64 %xor274, !3602, !DIExpression(), !3534)
    #dbg_value(i64 %xor274, !3592, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor274), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not305 = xor i64 %xor274, -1, !dbg !3918
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %not305), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and306 = and i64 %194, %not305, !dbg !3919
    #dbg_value(!DIArgList(i64 %191, i64 %and306), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor307 = xor i64 %191, %and306, !dbg !3920
    #dbg_value(i64 %xor307, !3544, !DIExpression(), !3534)
  %xor283 = xor i64 %xor195, %xor269, !dbg !3921
    #dbg_value(i64 %xor283, !3620, !DIExpression(), !3534)
  %195 = shl i64 %xor283, 21, !dbg !3922
  %196 = lshr i64 %xor283, 43, !dbg !3922
  %197 = or i64 %195, %196, !dbg !3922
    #dbg_value(i64 %197, !3595, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %191), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not302 = xor i64 %191, -1, !dbg !3923
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %not302), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and303 = and i64 %xor274, %not302, !dbg !3924
    #dbg_value(!DIArgList(i64 %197, i64 %and303), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor304 = xor i64 %197, %and303, !dbg !3925
    #dbg_value(i64 %xor304, !3542, !DIExpression(), !3534)
  %xor279 = xor i64 %xor157, %xor265, !dbg !3926
    #dbg_value(i64 %xor279, !3614, !DIExpression(), !3534)
  %198 = shl i64 %xor279, 43, !dbg !3927
  %199 = lshr i64 %xor279, 21, !dbg !3927
  %200 = or i64 %198, %199, !dbg !3927
    #dbg_value(i64 %200, !3594, !DIExpression(), !3534)
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %197), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %200), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
    #dbg_value(!DIArgList(i64 %xor274, i64 %200, i64 %194), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %not299 = xor i64 %197, -1, !dbg !3928
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %not299), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and300 = and i64 %191, %not299, !dbg !3929
    #dbg_value(!DIArgList(i64 %200, i64 %and300), !3540, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor301 = xor i64 %200, %and300, !dbg !3930
    #dbg_value(i64 %xor301, !3540, !DIExpression(), !3534)
  %not296 = xor i64 %200, -1, !dbg !3931
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %not296), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3534)
  %and297 = and i64 %197, %not296, !dbg !3932
    #dbg_value(!DIArgList(i64 %194, i64 %and297), !3538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %xor298 = xor i64 %194, %and297, !dbg !3933
    #dbg_value(i64 %xor298, !3538, !DIExpression(), !3534)
  %add = or disjoint i32 %round.0, 1, !dbg !3934
  %arrayidx294 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %add, !dbg !3935
  %201 = load i64, ptr %arrayidx294, align 8, !dbg !3935
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %194), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %not291 = xor i64 %194, -1, !dbg !3936
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %not291), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %and292 = and i64 %200, %not291, !dbg !3937
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %and292), !3536, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3534)
  %202 = xor i64 %and292, %201, !dbg !3938
  %xor295 = xor i64 %202, %xor274, !dbg !3938
    #dbg_value(i64 %xor295, !3536, !DIExpression(), !3534)
  %add448 = add nuw nsw i32 %round.0, 2, !dbg !3939
    #dbg_value(i32 %add448, !3585, !DIExpression(), !3534)
  br label %for.cond, !dbg !3940, !llvm.loop !3941

for.end:                                          ; preds = %for.cond
  %Aso.0.lcssa = phi i64 [ %Aso.0, %for.cond ], !dbg !3534
  %Asi.0.lcssa = phi i64 [ %Asi.0, %for.cond ], !dbg !3534
  %Ase.0.lcssa = phi i64 [ %Ase.0, %for.cond ], !dbg !3534
  %Asa.0.lcssa = phi i64 [ %Asa.0, %for.cond ], !dbg !3534
  %Amu.0.lcssa = phi i64 [ %Amu.0, %for.cond ], !dbg !3534
  %Amo.0.lcssa = phi i64 [ %Amo.0, %for.cond ], !dbg !3534
  %Ami.0.lcssa = phi i64 [ %Ami.0, %for.cond ], !dbg !3534
  %Ame.0.lcssa = phi i64 [ %Ame.0, %for.cond ], !dbg !3534
  %Ama.0.lcssa = phi i64 [ %Ama.0, %for.cond ], !dbg !3534
  %Aku.0.lcssa = phi i64 [ %Aku.0, %for.cond ], !dbg !3534
  %Ako.0.lcssa = phi i64 [ %Ako.0, %for.cond ], !dbg !3534
  %Aki.0.lcssa = phi i64 [ %Aki.0, %for.cond ], !dbg !3534
  %Ake.0.lcssa = phi i64 [ %Ake.0, %for.cond ], !dbg !3534
  %Aka.0.lcssa = phi i64 [ %Aka.0, %for.cond ], !dbg !3534
  %Agu.0.lcssa = phi i64 [ %Agu.0, %for.cond ], !dbg !3534
  %Ago.0.lcssa = phi i64 [ %Ago.0, %for.cond ], !dbg !3534
  %Agi.0.lcssa = phi i64 [ %Agi.0, %for.cond ], !dbg !3534
  %Age.0.lcssa = phi i64 [ %Age.0, %for.cond ], !dbg !3534
  %Aga.0.lcssa = phi i64 [ %Aga.0, %for.cond ], !dbg !3534
  %Abu.0.lcssa = phi i64 [ %Abu.0, %for.cond ], !dbg !3534
  %Abo.0.lcssa = phi i64 [ %Abo.0, %for.cond ], !dbg !3534
  %Abi.0.lcssa = phi i64 [ %Abi.0, %for.cond ], !dbg !3534
  %Abe.0.lcssa = phi i64 [ %Abe.0, %for.cond ], !dbg !3534
  %Aba.0.lcssa = phi i64 [ %Aba.0, %for.cond ], !dbg !3534
  %Asu.0.lcssa = phi i64 [ %Asu.0, %for.cond ], !dbg !3534
  store i64 %Aba.0.lcssa, ptr %state, align 8, !dbg !3943
  %arrayidx450 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3944
  store i64 %Abe.0.lcssa, ptr %arrayidx450, align 8, !dbg !3945
  %arrayidx451 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3946
  store i64 %Abi.0.lcssa, ptr %arrayidx451, align 8, !dbg !3947
  %arrayidx452 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3948
  store i64 %Abo.0.lcssa, ptr %arrayidx452, align 8, !dbg !3949
  %arrayidx453 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3950
  store i64 %Abu.0.lcssa, ptr %arrayidx453, align 8, !dbg !3951
  %arrayidx454 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3952
  store i64 %Aga.0.lcssa, ptr %arrayidx454, align 8, !dbg !3953
  %arrayidx455 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3954
  store i64 %Age.0.lcssa, ptr %arrayidx455, align 8, !dbg !3955
  %arrayidx456 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3956
  store i64 %Agi.0.lcssa, ptr %arrayidx456, align 8, !dbg !3957
  %arrayidx457 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3958
  store i64 %Ago.0.lcssa, ptr %arrayidx457, align 8, !dbg !3959
  %arrayidx458 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3960
  store i64 %Agu.0.lcssa, ptr %arrayidx458, align 8, !dbg !3961
  %arrayidx459 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3962
  store i64 %Aka.0.lcssa, ptr %arrayidx459, align 8, !dbg !3963
  %arrayidx460 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3964
  store i64 %Ake.0.lcssa, ptr %arrayidx460, align 8, !dbg !3965
  %arrayidx461 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3966
  store i64 %Aki.0.lcssa, ptr %arrayidx461, align 8, !dbg !3967
  %arrayidx462 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3968
  store i64 %Ako.0.lcssa, ptr %arrayidx462, align 8, !dbg !3969
  %arrayidx463 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3970
  store i64 %Aku.0.lcssa, ptr %arrayidx463, align 8, !dbg !3971
  %arrayidx464 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3972
  store i64 %Ama.0.lcssa, ptr %arrayidx464, align 8, !dbg !3973
  %arrayidx465 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3974
  store i64 %Ame.0.lcssa, ptr %arrayidx465, align 8, !dbg !3975
  %arrayidx466 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3976
  store i64 %Ami.0.lcssa, ptr %arrayidx466, align 8, !dbg !3977
  %arrayidx467 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3978
  store i64 %Amo.0.lcssa, ptr %arrayidx467, align 8, !dbg !3979
  %arrayidx468 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3980
  store i64 %Amu.0.lcssa, ptr %arrayidx468, align 8, !dbg !3981
  %arrayidx469 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3982
  store i64 %Asa.0.lcssa, ptr %arrayidx469, align 8, !dbg !3983
  %arrayidx470 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3984
  store i64 %Ase.0.lcssa, ptr %arrayidx470, align 8, !dbg !3985
  %arrayidx471 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3986
  store i64 %Asi.0.lcssa, ptr %arrayidx471, align 8, !dbg !3987
  %arrayidx472 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3988
  store i64 %Aso.0.lcssa, ptr %arrayidx472, align 8, !dbg !3989
  %arrayidx473 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3990
  store i64 %Asu.0.lcssa, ptr %arrayidx473, align 8, !dbg !3991
  ret void, !dbg !3992
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !3993 {
entry:
    #dbg_value(ptr %state, !3994, !DIExpression(), !3995)
  %0 = load ptr, ptr %state, align 4, !dbg !3996
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 168, i8 noundef zeroext 31) #4, !dbg !3997
  ret void, !dbg !3998
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_finalize(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !3999 {
entry:
    #dbg_value(ptr %s_inc, !4002, !DIExpression(), !4003)
    #dbg_value(i32 %r, !4004, !DIExpression(), !4003)
    #dbg_value(i8 %p, !4005, !DIExpression(), !4003)
  %conv = zext nneg i8 %p to i64, !dbg !4006
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4007
  %0 = load i64, ptr %arrayidx, align 8, !dbg !4007
  %and = shl i64 %0, 3, !dbg !4008
  %mul = and i64 %and, 56, !dbg !4008
  %shl = shl nuw nsw i64 %conv, %mul, !dbg !4009
  %shr = lshr i64 %0, 3, !dbg !4010
  %idxprom = trunc i64 %shr to i32, !dbg !4011
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !4011
  %1 = load i64, ptr %arrayidx2, align 8, !dbg !4012
  %xor = xor i64 %1, %shl, !dbg !4012
  store i64 %xor, ptr %arrayidx2, align 8, !dbg !4012
  %sub = shl nuw nsw i32 %r, 3, !dbg !4013
  %and3 = add nuw nsw i32 %sub, 56, !dbg !4013
  %mul4 = and i32 %and3, 56, !dbg !4013
  %sh_prom = zext nneg i32 %mul4 to i64, !dbg !4014
  %shl5 = shl nuw i64 128, %sh_prom, !dbg !4014
  %sub6 = add nsw i32 %r, -1, !dbg !4015
  %shr7 = lshr i32 %sub6, 3, !dbg !4016
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr7, !dbg !4017
  %2 = load i64, ptr %arrayidx8, align 8, !dbg !4018
  %xor9 = xor i64 %2, %shl5, !dbg !4018
  store i64 %xor9, ptr %arrayidx8, align 8, !dbg !4018
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4019
  store i64 0, ptr %arrayidx10, align 8, !dbg !4020
  ret void, !dbg !4021
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !4022 {
entry:
    #dbg_value(ptr %output, !4025, !DIExpression(), !4026)
    #dbg_value(i32 %outlen, !4027, !DIExpression(), !4026)
    #dbg_value(ptr %state, !4028, !DIExpression(), !4026)
  %0 = load ptr, ptr %state, align 4, !dbg !4029
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 168) #4, !dbg !4030
  ret void, !dbg !4031
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_squeeze(ptr noundef %h, i32 noundef %outlen, ptr noundef %s_inc, i32 noundef range(i32 136, 169) %r) unnamed_addr #0 !dbg !4032 {
entry:
    #dbg_value(ptr %h, !4035, !DIExpression(), !4036)
    #dbg_value(i32 %outlen, !4037, !DIExpression(), !4036)
    #dbg_value(ptr %s_inc, !4038, !DIExpression(), !4036)
    #dbg_value(i32 %r, !4039, !DIExpression(), !4036)
    #dbg_value(i32 0, !4040, !DIExpression(), !4036)
  br label %for.cond, !dbg !4041

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4043
    #dbg_value(i32 %i.0, !4040, !DIExpression(), !4036)
  %exitcond = icmp ne i32 %i.0, %outlen, !dbg !4044
  br i1 %exitcond, label %land.rhs, label %for.end, !dbg !4046

land.rhs:                                         ; preds = %for.cond
  %conv = zext i32 %i.0 to i64, !dbg !4047
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4048
  %0 = load i64, ptr %arrayidx, align 8, !dbg !4048
  %cmp1 = icmp ugt i64 %0, %conv, !dbg !4049
  br i1 %cmp1, label %for.body, label %for.end, !dbg !4050

for.body:                                         ; preds = %land.rhs
  %conv3 = zext nneg i32 %r to i64, !dbg !4051
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4053
  %1 = load i64, ptr %arrayidx4, align 8, !dbg !4053
  %sub = sub i64 %conv3, %1, !dbg !4054
  %conv5 = zext i32 %i.0 to i64, !dbg !4055
  %add = add i64 %sub, %conv5, !dbg !4056
  %shr = lshr i64 %add, 3, !dbg !4057
  %idxprom = trunc i64 %shr to i32, !dbg !4058
  %arrayidx6 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !4058
  %2 = load i64, ptr %arrayidx6, align 8, !dbg !4058
  %conv7 = zext nneg i32 %r to i64, !dbg !4059
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4060
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !4060
  %sub9 = sub i64 %conv7, %3, !dbg !4061
  %conv10 = zext i32 %i.0 to i64, !dbg !4062
  %add11 = add i64 %sub9, %conv10, !dbg !4063
  %and = shl i64 %add11, 3, !dbg !4064
  %mul = and i64 %and, 56, !dbg !4064
  %shr12 = lshr i64 %2, %mul, !dbg !4065
  %conv13 = trunc i64 %shr12 to i8, !dbg !4066
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %h, i32 %i.0, !dbg !4067
  store i8 %conv13, ptr %arrayidx14, align 1, !dbg !4068
  %inc = add i32 %i.0, 1, !dbg !4069
    #dbg_value(i32 %inc, !4040, !DIExpression(), !4036)
  br label %for.cond, !dbg !4070, !llvm.loop !4071

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %outlen, %for.cond ], [ %i.0, %land.rhs ], !dbg !4043
  %add.ptr = getelementptr inbounds nuw i8, ptr %h, i32 %i.0.lcssa, !dbg !4073
    #dbg_value(ptr %add.ptr, !4035, !DIExpression(), !4036)
  %sub15 = sub i32 %outlen, %i.0.lcssa, !dbg !4074
    #dbg_value(i32 %sub15, !4037, !DIExpression(), !4036)
  %conv16 = zext i32 %i.0.lcssa to i64, !dbg !4075
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4076
  %4 = load i64, ptr %arrayidx17, align 8, !dbg !4077
  %sub18 = sub i64 %4, %conv16, !dbg !4077
  store i64 %sub18, ptr %arrayidx17, align 8, !dbg !4077
  br label %while.cond, !dbg !4078

while.cond:                                       ; preds = %for.end38, %for.end
  %outlen.addr.0 = phi i32 [ %sub15, %for.end ], [ %sub40, %for.end38 ], !dbg !4036
  %h.addr.0 = phi ptr [ %add.ptr, %for.end ], [ %add.ptr39, %for.end38 ], !dbg !4036
    #dbg_value(ptr %h.addr.0, !4035, !DIExpression(), !4036)
    #dbg_value(i32 %outlen.addr.0, !4037, !DIExpression(), !4036)
  %cmp19.not = icmp eq i32 %outlen.addr.0, 0, !dbg !4079
  br i1 %cmp19.not, label %while.end, label %while.body, !dbg !4078

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #4, !dbg !4080
    #dbg_value(i32 0, !4040, !DIExpression(), !4036)
  %5 = icmp ult i32 %outlen.addr.0, %r, !dbg !4082
  %6 = select i1 %5, i32 %outlen.addr.0, i32 %r, !dbg !4082
  br label %for.cond21, !dbg !4082

for.cond21:                                       ; preds = %for.body28, %while.body
  %i.1 = phi i32 [ 0, %while.body ], [ %inc37, %for.body28 ], !dbg !4084
    #dbg_value(i32 %i.1, !4040, !DIExpression(), !4036)
  %exitcond1 = icmp ne i32 %i.1, %6, !dbg !4085
  br i1 %exitcond1, label %for.body28, label %for.end38, !dbg !4087

for.body28:                                       ; preds = %for.cond21
  %shr29 = lshr i32 %i.1, 3, !dbg !4088
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr29, !dbg !4090
  %7 = load i64, ptr %arrayidx30, align 8, !dbg !4090
  %and31 = shl nuw nsw i32 %i.1, 3, !dbg !4091
  %mul32 = and i32 %and31, 56, !dbg !4091
  %sh_prom = zext nneg i32 %mul32 to i64, !dbg !4092
  %shr33 = lshr i64 %7, %sh_prom, !dbg !4092
  %conv34 = trunc i64 %shr33 to i8, !dbg !4093
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1, !dbg !4094
  store i8 %conv34, ptr %arrayidx35, align 1, !dbg !4095
  %inc37 = add nuw nsw i32 %i.1, 1, !dbg !4096
    #dbg_value(i32 %inc37, !4040, !DIExpression(), !4036)
  br label %for.cond21, !dbg !4097, !llvm.loop !4098

for.end38:                                        ; preds = %for.cond21
  %i.1.lcssa = phi i32 [ %i.1, %for.cond21 ], !dbg !4084
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1.lcssa, !dbg !4100
    #dbg_value(ptr %add.ptr39, !4035, !DIExpression(), !4036)
  %sub40 = sub i32 %outlen.addr.0, %i.1.lcssa, !dbg !4101
    #dbg_value(i32 %sub40, !4037, !DIExpression(), !4036)
  %sub41 = sub nsw i32 %r, %i.1.lcssa, !dbg !4102
  %conv42 = zext i32 %sub41 to i64, !dbg !4103
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4104
  store i64 %conv42, ptr %arrayidx43, align 8, !dbg !4105
  br label %while.cond, !dbg !4078, !llvm.loop !4106

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4108
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4109 {
entry:
    #dbg_value(ptr %dest, !4114, !DIExpression(), !4115)
    #dbg_value(ptr %src, !4116, !DIExpression(), !4115)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4117
  store ptr %call, ptr %dest, align 4, !dbg !4118
  %cmp = icmp eq ptr %call, null, !dbg !4119
  br i1 %cmp, label %if.then, label %if.end, !dbg !4119

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4121
  br label %if.end, !dbg !4123

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4124
  %1 = load ptr, ptr %src, align 4, !dbg !4125
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4126
  ret void, !dbg !4127
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4128 {
entry:
    #dbg_value(ptr %state, !4129, !DIExpression(), !4130)
  %0 = load ptr, ptr %state, align 4, !dbg !4131
  call void @free(ptr noundef %0) #6, !dbg !4132
  ret void, !dbg !4133
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4134 {
entry:
    #dbg_value(ptr %state, !4142, !DIExpression(), !4143)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4144
  store ptr %call, ptr %state, align 4, !dbg !4145
  %cmp = icmp eq ptr %call, null, !dbg !4146
  br i1 %cmp, label %if.then, label %if.end, !dbg !4146

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4148
  br label %if.end, !dbg !4150

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4151
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4152
  ret void, !dbg !4153
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4154 {
entry:
    #dbg_value(ptr %state, !4157, !DIExpression(), !4158)
    #dbg_value(ptr %input, !4159, !DIExpression(), !4158)
    #dbg_value(i32 %inlen, !4160, !DIExpression(), !4158)
  %0 = load ptr, ptr %state, align 4, !dbg !4161
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4162
  ret void, !dbg !4163
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !4164 {
entry:
    #dbg_value(ptr %state, !4165, !DIExpression(), !4166)
  %0 = load ptr, ptr %state, align 4, !dbg !4167
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 31) #4, !dbg !4168
  ret void, !dbg !4169
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !4170 {
entry:
    #dbg_value(ptr %output, !4173, !DIExpression(), !4174)
    #dbg_value(i32 %outlen, !4175, !DIExpression(), !4174)
    #dbg_value(ptr %state, !4176, !DIExpression(), !4174)
  %0 = load ptr, ptr %state, align 4, !dbg !4177
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 136) #4, !dbg !4178
  ret void, !dbg !4179
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4180 {
entry:
    #dbg_value(ptr %dest, !4185, !DIExpression(), !4186)
    #dbg_value(ptr %src, !4187, !DIExpression(), !4186)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4188
  store ptr %call, ptr %dest, align 4, !dbg !4189
  %cmp = icmp eq ptr %call, null, !dbg !4190
  br i1 %cmp, label %if.then, label %if.end, !dbg !4190

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4192
  br label %if.end, !dbg !4194

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4195
  %1 = load ptr, ptr %src, align 4, !dbg !4196
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4197
  ret void, !dbg !4198
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4199 {
entry:
    #dbg_value(ptr %state, !4200, !DIExpression(), !4201)
  %0 = load ptr, ptr %state, align 4, !dbg !4202
  call void @free(ptr noundef %0) #6, !dbg !4203
  ret void, !dbg !4204
}

; Function Attrs: nounwind
define dso_local void @shake128_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4205 {
entry:
    #dbg_value(ptr %state, !4213, !DIExpression(), !4214)
    #dbg_value(ptr %input, !4215, !DIExpression(), !4214)
    #dbg_value(i32 %inlen, !4216, !DIExpression(), !4214)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4217
  store ptr %call, ptr %state, align 4, !dbg !4218
  %cmp = icmp eq ptr %call, null, !dbg !4219
  br i1 %cmp, label %if.then, label %if.end, !dbg !4219

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4221
  br label %if.end, !dbg !4223

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4224
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !4225
  ret void, !dbg !4226
}

; Function Attrs: nounwind
define internal fastcc void @keccak_absorb(ptr noundef %s, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !4227 {
entry:
  %t = alloca [200 x i8], align 1
    #dbg_value(ptr %s, !4230, !DIExpression(), !4231)
    #dbg_value(i32 %r, !4232, !DIExpression(), !4231)
    #dbg_value(ptr %m, !4233, !DIExpression(), !4231)
    #dbg_value(i32 %mlen, !4234, !DIExpression(), !4231)
    #dbg_value(i8 %p, !4235, !DIExpression(), !4231)
    #dbg_declare(ptr %t, !4236, !DIExpression(), !4240)
    #dbg_value(i32 0, !4241, !DIExpression(), !4231)
  br label %for.cond, !dbg !4242

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4244
    #dbg_value(i32 %i.0, !4241, !DIExpression(), !4231)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !4245
  br i1 %exitcond, label %for.body, label %while.cond.preheader, !dbg !4247

while.cond.preheader:                             ; preds = %for.cond
  %0 = lshr i32 %r, 3, !dbg !4248
  br label %while.cond, !dbg !4248

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4249
  store i64 0, ptr %arrayidx, align 8, !dbg !4251
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4252
    #dbg_value(i32 %inc, !4241, !DIExpression(), !4231)
  br label %for.cond, !dbg !4253, !llvm.loop !4254

while.cond:                                       ; preds = %while.cond.preheader, %for.end8
  %m.addr.0 = phi ptr [ %add.ptr9, %for.end8 ], [ %m, %while.cond.preheader ]
  %mlen.addr.0 = phi i32 [ %sub, %for.end8 ], [ %mlen, %while.cond.preheader ]
    #dbg_value(i32 %mlen.addr.0, !4234, !DIExpression(), !4231)
    #dbg_value(ptr %m.addr.0, !4233, !DIExpression(), !4231)
  %cmp1.not = icmp ult i32 %mlen.addr.0, %r, !dbg !4256
  br i1 %cmp1.not, label %for.cond10.preheader, label %for.cond2.preheader, !dbg !4248

for.cond2.preheader:                              ; preds = %while.cond
  br label %for.cond2, !dbg !4257

for.cond10.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa5 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  br label %for.cond10, !dbg !4260

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %i.1 = phi i32 [ %inc7, %for.body4 ], [ 0, %for.cond2.preheader ], !dbg !4262
    #dbg_value(i32 %i.1, !4241, !DIExpression(), !4231)
  %exitcond3 = icmp ne i32 %i.1, %0, !dbg !4263
  br i1 %exitcond3, label %for.body4, label %for.end8, !dbg !4257

for.body4:                                        ; preds = %for.cond2
  %mul = shl nuw nsw i32 %i.1, 3, !dbg !4265
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %mul, !dbg !4267
  %call = call fastcc i64 @load64(ptr noundef %add.ptr) #4, !dbg !4268
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %s, i32 %i.1, !dbg !4269
  %1 = load i64, ptr %arrayidx5, align 8, !dbg !4270
  %xor = xor i64 %1, %call, !dbg !4270
  store i64 %xor, ptr %arrayidx5, align 8, !dbg !4270
  %inc7 = add nuw nsw i32 %i.1, 1, !dbg !4271
    #dbg_value(i32 %inc7, !4241, !DIExpression(), !4231)
  br label %for.cond2, !dbg !4272, !llvm.loop !4273

for.end8:                                         ; preds = %for.cond2
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !4275
  %sub = sub i32 %mlen.addr.0, %r, !dbg !4276
    #dbg_value(i32 %sub, !4234, !DIExpression(), !4231)
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %r, !dbg !4277
    #dbg_value(ptr %add.ptr9, !4233, !DIExpression(), !4231)
  br label %while.cond, !dbg !4248, !llvm.loop !4278

for.cond10:                                       ; preds = %for.cond10.preheader, %for.body12
  %i.2 = phi i32 [ %inc15, %for.body12 ], [ 0, %for.cond10.preheader ], !dbg !4280
    #dbg_value(i32 %i.2, !4241, !DIExpression(), !4231)
  %exitcond4 = icmp ne i32 %i.2, %r, !dbg !4281
  br i1 %exitcond4, label %for.body12, label %for.cond17.preheader, !dbg !4260

for.cond17.preheader:                             ; preds = %for.cond10
  br label %for.cond17, !dbg !4283

for.body12:                                       ; preds = %for.cond10
  %arrayidx13 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.2, !dbg !4285
  store i8 0, ptr %arrayidx13, align 1, !dbg !4287
  %inc15 = add nuw nsw i32 %i.2, 1, !dbg !4288
    #dbg_value(i32 %inc15, !4241, !DIExpression(), !4231)
  br label %for.cond10, !dbg !4289, !llvm.loop !4290

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body19
  %i.3 = phi i32 [ %inc23, %for.body19 ], [ 0, %for.cond17.preheader ], !dbg !4292
    #dbg_value(i32 %i.3, !4241, !DIExpression(), !4231)
  %exitcond6 = icmp ne i32 %i.3, %mlen.addr.0.lcssa5, !dbg !4293
  br i1 %exitcond6, label %for.body19, label %for.end24, !dbg !4283

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.3, !dbg !4295
  %2 = load i8, ptr %arrayidx20, align 1, !dbg !4295
  %arrayidx21 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3, !dbg !4297
  store i8 %2, ptr %arrayidx21, align 1, !dbg !4298
  %inc23 = add i32 %i.3, 1, !dbg !4299
    #dbg_value(i32 %inc23, !4241, !DIExpression(), !4231)
  br label %for.cond17, !dbg !4300, !llvm.loop !4301

for.end24:                                        ; preds = %for.cond17
  %i.3.lcssa = phi i32 [ %i.3, %for.cond17 ], !dbg !4292
  %arrayidx25 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3.lcssa, !dbg !4303
  store i8 %p, ptr %arrayidx25, align 1, !dbg !4304
  %sub26 = add nsw i32 %r, -1, !dbg !4305
  %arrayidx27 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %sub26, !dbg !4306
  %3 = load i8, ptr %arrayidx27, align 1, !dbg !4307
  %4 = or i8 %3, -128, !dbg !4307
  store i8 %4, ptr %arrayidx27, align 1, !dbg !4307
    #dbg_value(i32 0, !4241, !DIExpression(), !4231)
  br label %for.cond29, !dbg !4308

for.cond29:                                       ; preds = %for.body33, %for.end24
  %i.4 = phi i32 [ 0, %for.end24 ], [ %inc40, %for.body33 ], !dbg !4310
    #dbg_value(i32 %i.4, !4241, !DIExpression(), !4231)
  %exitcond7 = icmp ne i32 %i.4, %0, !dbg !4311
  br i1 %exitcond7, label %for.body33, label %for.end41, !dbg !4313

for.body33:                                       ; preds = %for.cond29
  %mul34 = shl nuw nsw i32 %i.4, 3, !dbg !4314
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %t, i32 %mul34, !dbg !4316
  %call36 = call fastcc i64 @load64(ptr noundef nonnull %add.ptr35) #4, !dbg !4317
  %arrayidx37 = getelementptr inbounds nuw i64, ptr %s, i32 %i.4, !dbg !4318
  %5 = load i64, ptr %arrayidx37, align 8, !dbg !4319
  %xor38 = xor i64 %5, %call36, !dbg !4319
  store i64 %xor38, ptr %arrayidx37, align 8, !dbg !4319
  %inc40 = add nuw nsw i32 %i.4, 1, !dbg !4320
    #dbg_value(i32 %inc40, !4241, !DIExpression(), !4231)
  br label %for.cond29, !dbg !4321, !llvm.loop !4322

for.end41:                                        ; preds = %for.cond29
  ret void, !dbg !4324
}

; Function Attrs: nounwind
define internal fastcc i64 @load64(ptr noundef %x) unnamed_addr #0 !dbg !4325 {
entry:
    #dbg_value(ptr %x, !4328, !DIExpression(), !4329)
    #dbg_value(i64 0, !4330, !DIExpression(), !4329)
    #dbg_value(i32 0, !4331, !DIExpression(), !4333)
  br label %for.cond, !dbg !4334

for.cond:                                         ; preds = %for.inc, %entry
  %r.0 = phi i64 [ 0, %entry ], [ %or, %for.inc ], !dbg !4329
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !4335
    #dbg_value(i32 %i.0, !4331, !DIExpression(), !4333)
    #dbg_value(i64 %r.0, !4330, !DIExpression(), !4329)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4336
  br i1 %exitcond, label %for.inc, label %for.end, !dbg !4338

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 poison, i8 poison, i32 poison), !4330, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4329)
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4339
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4339
    #dbg_value(!DIArgList(i64 %r.0, i8 %0, i32 %i.0), !4330, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4329)
  %conv = zext i8 %0 to i64, !dbg !4341
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %i.0), !4330, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4329)
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4342
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %mul), !4330, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4329)
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4343
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i64 %sh_prom), !4330, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4329)
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !4343
    #dbg_value(!DIArgList(i64 %r.0, i64 %shl), !4330, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !4329)
  %or = or i64 %r.0, %shl, !dbg !4344
    #dbg_value(i64 %or, !4330, !DIExpression(), !4329)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4345
    #dbg_value(i32 %inc, !4331, !DIExpression(), !4333)
  br label %for.cond, !dbg !4346, !llvm.loop !4347

for.end:                                          ; preds = %for.cond
  %r.0.lcssa = phi i64 [ %r.0, %for.cond ], !dbg !4329
  ret i64 %r.0.lcssa, !dbg !4349
}

; Function Attrs: nounwind
define dso_local void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4350 {
entry:
    #dbg_value(ptr %output, !4353, !DIExpression(), !4354)
    #dbg_value(i32 %nblocks, !4355, !DIExpression(), !4354)
    #dbg_value(ptr %state, !4356, !DIExpression(), !4354)
  %0 = load ptr, ptr %state, align 4, !dbg !4357
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 168) #4, !dbg !4358
  ret void, !dbg !4359
}

; Function Attrs: nounwind
define internal fastcc void @keccak_squeezeblocks(ptr noundef %h, i32 noundef %nblocks, ptr noundef %s, i32 noundef range(i32 72, 169) %r) unnamed_addr #0 !dbg !4360 {
entry:
    #dbg_value(ptr %h, !4361, !DIExpression(), !4362)
    #dbg_value(i32 %nblocks, !4363, !DIExpression(), !4362)
    #dbg_value(ptr %s, !4364, !DIExpression(), !4362)
    #dbg_value(i32 %r, !4365, !DIExpression(), !4362)
  %0 = lshr i32 %r, 3, !dbg !4366
  br label %while.cond, !dbg !4366

while.cond:                                       ; preds = %for.end, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %dec, %for.end ]
  %h.addr.0 = phi ptr [ %h, %entry ], [ %add.ptr2, %for.end ]
    #dbg_value(ptr %h.addr.0, !4361, !DIExpression(), !4362)
    #dbg_value(i32 %nblocks.addr.0, !4363, !DIExpression(), !4362)
  %cmp.not = icmp eq i32 %nblocks.addr.0, 0, !dbg !4367
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !4366

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !4368
    #dbg_value(i32 0, !4370, !DIExpression(), !4372)
  br label %for.cond, !dbg !4373

for.cond:                                         ; preds = %for.body, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc, %for.body ], !dbg !4374
    #dbg_value(i32 %i.0, !4370, !DIExpression(), !4372)
  %exitcond = icmp ne i32 %i.0, %0, !dbg !4375
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4377

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4378
  %add.ptr = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %mul, !dbg !4380
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4381
  %1 = load i64, ptr %arrayidx, align 8, !dbg !4381
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %1) #4, !dbg !4382
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4383
    #dbg_value(i32 %inc, !4370, !DIExpression(), !4372)
  br label %for.cond, !dbg !4384, !llvm.loop !4385

for.end:                                          ; preds = %for.cond
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %r, !dbg !4387
    #dbg_value(ptr %add.ptr2, !4361, !DIExpression(), !4362)
  %dec = add i32 %nblocks.addr.0, -1, !dbg !4388
    #dbg_value(i32 %dec, !4363, !DIExpression(), !4362)
  br label %while.cond, !dbg !4366, !llvm.loop !4389

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4391
}

; Function Attrs: nounwind
define internal fastcc void @store64(ptr noundef %x, i64 noundef %u) unnamed_addr #0 !dbg !4392 {
entry:
    #dbg_value(ptr %x, !4395, !DIExpression(), !4396)
    #dbg_value(i64 %u, !4397, !DIExpression(), !4396)
    #dbg_value(i32 0, !4398, !DIExpression(), !4400)
  br label %for.cond, !dbg !4401

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4402
    #dbg_value(i32 %i.0, !4398, !DIExpression(), !4400)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4403
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4405

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4406
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4408
  %shr = lshr i64 %u, %sh_prom, !dbg !4408
  %conv = trunc i64 %shr to i8, !dbg !4409
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4410
  store i8 %conv, ptr %arrayidx, align 1, !dbg !4411
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4412
    #dbg_value(i32 %inc, !4398, !DIExpression(), !4400)
  br label %for.cond, !dbg !4413, !llvm.loop !4414

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4416
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4417 {
entry:
    #dbg_value(ptr %dest, !4422, !DIExpression(), !4423)
    #dbg_value(ptr %src, !4424, !DIExpression(), !4423)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4425
  store ptr %call, ptr %dest, align 4, !dbg !4426
  %cmp = icmp eq ptr %call, null, !dbg !4427
  br i1 %cmp, label %if.then, label %if.end, !dbg !4427

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4429
  br label %if.end, !dbg !4431

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4432
  %1 = load ptr, ptr %src, align 4, !dbg !4433
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #6, !dbg !4434
  ret void, !dbg !4435
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4436 {
entry:
    #dbg_value(ptr %state, !4439, !DIExpression(), !4440)
  %0 = load ptr, ptr %state, align 4, !dbg !4441
  call void @free(ptr noundef %0) #6, !dbg !4442
  ret void, !dbg !4443
}

; Function Attrs: nounwind
define dso_local void @shake256_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4444 {
entry:
    #dbg_value(ptr %state, !4452, !DIExpression(), !4453)
    #dbg_value(ptr %input, !4454, !DIExpression(), !4453)
    #dbg_value(i32 %inlen, !4455, !DIExpression(), !4453)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4456
  store ptr %call, ptr %state, align 4, !dbg !4457
  %cmp = icmp eq ptr %call, null, !dbg !4458
  br i1 %cmp, label %if.then, label %if.end, !dbg !4458

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4460
  br label %if.end, !dbg !4462

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4463
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !4464
  ret void, !dbg !4465
}

; Function Attrs: nounwind
define dso_local void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4466 {
entry:
    #dbg_value(ptr %output, !4469, !DIExpression(), !4470)
    #dbg_value(i32 %nblocks, !4471, !DIExpression(), !4470)
    #dbg_value(ptr %state, !4472, !DIExpression(), !4470)
  %0 = load ptr, ptr %state, align 4, !dbg !4473
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 136) #4, !dbg !4474
  ret void, !dbg !4475
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4476 {
entry:
    #dbg_value(ptr %dest, !4481, !DIExpression(), !4482)
    #dbg_value(ptr %src, !4483, !DIExpression(), !4482)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4484
  store ptr %call, ptr %dest, align 4, !dbg !4485
  %cmp = icmp eq ptr %call, null, !dbg !4486
  br i1 %cmp, label %if.then, label %if.end, !dbg !4486

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4488
  br label %if.end, !dbg !4490

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4491
  %1 = load ptr, ptr %src, align 4, !dbg !4492
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #6, !dbg !4493
  ret void, !dbg !4494
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4495 {
entry:
    #dbg_value(ptr %state, !4498, !DIExpression(), !4499)
  %0 = load ptr, ptr %state, align 4, !dbg !4500
  call void @free(ptr noundef %0) #6, !dbg !4501
  ret void, !dbg !4502
}

; Function Attrs: nounwind
define dso_local void @shake128(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4503 {
entry:
  %t = alloca [168 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4506, !DIExpression(), !4507)
    #dbg_value(i32 %outlen, !4508, !DIExpression(), !4507)
    #dbg_value(ptr %input, !4509, !DIExpression(), !4507)
    #dbg_value(i32 %inlen, !4510, !DIExpression(), !4507)
  %div = udiv i32 %outlen, 168, !dbg !4511
    #dbg_value(i32 %div, !4512, !DIExpression(), !4507)
    #dbg_declare(ptr %t, !4513, !DIExpression(), !4517)
    #dbg_declare(ptr %s, !4518, !DIExpression(), !4519)
  call void @shake128_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4520
  call void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #4, !dbg !4521
  %mul = mul nuw i32 %div, 168, !dbg !4522
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4523
    #dbg_value(ptr %add.ptr, !4506, !DIExpression(), !4507)
  %mul1.neg = mul i32 %div, -168, !dbg !4524
  %sub = add i32 %mul1.neg, %outlen, !dbg !4525
    #dbg_value(i32 %sub, !4508, !DIExpression(), !4507)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4526
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4526

if.then:                                          ; preds = %entry
  call void @shake128_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #4, !dbg !4528
    #dbg_value(i32 0, !4530, !DIExpression(), !4532)
  br label %for.cond, !dbg !4533

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4534
    #dbg_value(i32 %i.0, !4530, !DIExpression(), !4532)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4535
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4537

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [168 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4538
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4538
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4540
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4541
  %inc = add i32 %i.0, 1, !dbg !4542
    #dbg_value(i32 %inc, !4530, !DIExpression(), !4532)
  br label %for.cond, !dbg !4543, !llvm.loop !4544

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4546

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake128_ctx_release(ptr noundef nonnull %s) #4, !dbg !4546
  ret void, !dbg !4547
}

; Function Attrs: nounwind
define dso_local void @shake256(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4548 {
entry:
  %t = alloca [136 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4549, !DIExpression(), !4550)
    #dbg_value(i32 %outlen, !4551, !DIExpression(), !4550)
    #dbg_value(ptr %input, !4552, !DIExpression(), !4550)
    #dbg_value(i32 %inlen, !4553, !DIExpression(), !4550)
  %div = udiv i32 %outlen, 136, !dbg !4554
    #dbg_value(i32 %div, !4555, !DIExpression(), !4550)
    #dbg_declare(ptr %t, !4556, !DIExpression(), !4560)
    #dbg_declare(ptr %s, !4561, !DIExpression(), !4562)
  call void @shake256_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4563
  call void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #4, !dbg !4564
  %mul = mul nuw i32 %div, 136, !dbg !4565
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4566
    #dbg_value(ptr %add.ptr, !4549, !DIExpression(), !4550)
  %mul1.neg = mul i32 %div, -136, !dbg !4567
  %sub = add i32 %mul1.neg, %outlen, !dbg !4568
    #dbg_value(i32 %sub, !4551, !DIExpression(), !4550)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4569
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4569

if.then:                                          ; preds = %entry
  call void @shake256_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #4, !dbg !4571
    #dbg_value(i32 0, !4573, !DIExpression(), !4575)
  br label %for.cond, !dbg !4576

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4577
    #dbg_value(i32 %i.0, !4573, !DIExpression(), !4575)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4578
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4580

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4581
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4581
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4583
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4584
  %inc = add i32 %i.0, 1, !dbg !4585
    #dbg_value(i32 %inc, !4573, !DIExpression(), !4575)
  br label %for.cond, !dbg !4586, !llvm.loop !4587

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4589

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake256_ctx_release(ptr noundef nonnull %s) #4, !dbg !4589
  ret void, !dbg !4590
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4591 {
entry:
    #dbg_value(ptr %state, !4599, !DIExpression(), !4600)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4601
  store ptr %call, ptr %state, align 4, !dbg !4602
  %cmp = icmp eq ptr %call, null, !dbg !4603
  br i1 %cmp, label %if.then, label %if.end, !dbg !4603

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4605
  br label %if.end, !dbg !4607

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4608
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4609
  ret void, !dbg !4610
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4611 {
entry:
    #dbg_value(ptr %dest, !4616, !DIExpression(), !4617)
    #dbg_value(ptr %src, !4618, !DIExpression(), !4617)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4619
  store ptr %call, ptr %dest, align 4, !dbg !4620
  %cmp = icmp eq ptr %call, null, !dbg !4621
  br i1 %cmp, label %if.then, label %if.end, !dbg !4621

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4623
  br label %if.end, !dbg !4625

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4626
  %1 = load ptr, ptr %src, align 4, !dbg !4627
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4628
  ret void, !dbg !4629
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4630 {
entry:
    #dbg_value(ptr %state, !4631, !DIExpression(), !4632)
  %0 = load ptr, ptr %state, align 4, !dbg !4633
  call void @free(ptr noundef %0) #6, !dbg !4634
  ret void, !dbg !4635
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4636 {
entry:
    #dbg_value(ptr %state, !4639, !DIExpression(), !4640)
    #dbg_value(ptr %input, !4641, !DIExpression(), !4640)
    #dbg_value(i32 %inlen, !4642, !DIExpression(), !4640)
  %0 = load ptr, ptr %state, align 4, !dbg !4643
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4644
  ret void, !dbg !4645
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4646 {
entry:
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4649, !DIExpression(), !4650)
    #dbg_value(ptr %state, !4651, !DIExpression(), !4650)
    #dbg_declare(ptr %t, !4652, !DIExpression(), !4653)
  %0 = load ptr, ptr %state, align 4, !dbg !4654
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 6) #4, !dbg !4655
  %1 = load ptr, ptr %state, align 4, !dbg !4656
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 136) #4, !dbg !4657
  call void @sha3_256_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4658
    #dbg_value(i32 0, !4659, !DIExpression(), !4661)
  br label %for.cond, !dbg !4662

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4663
    #dbg_value(i32 %i.0, !4659, !DIExpression(), !4661)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4664
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4666

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4667
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4667
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4669
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4670
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4671
    #dbg_value(i32 %inc, !4659, !DIExpression(), !4661)
  br label %for.cond, !dbg !4672, !llvm.loop !4673

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4675
}

; Function Attrs: nounwind
define dso_local void @sha3_256(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4676 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4679, !DIExpression(), !4680)
    #dbg_value(ptr %input, !4681, !DIExpression(), !4680)
    #dbg_value(i32 %inlen, !4682, !DIExpression(), !4680)
    #dbg_declare(ptr %s, !4683, !DIExpression(), !4687)
    #dbg_declare(ptr %t, !4688, !DIExpression(), !4689)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4690
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 136) #4, !dbg !4691
    #dbg_value(i32 0, !4692, !DIExpression(), !4694)
  br label %for.cond, !dbg !4695

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4696
    #dbg_value(i32 %i.0, !4692, !DIExpression(), !4694)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4697
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4699

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4700
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4700
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4702
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4703
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4704
    #dbg_value(i32 %inc, !4692, !DIExpression(), !4694)
  br label %for.cond, !dbg !4705, !llvm.loop !4706

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4708
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4709 {
entry:
    #dbg_value(ptr %state, !4717, !DIExpression(), !4718)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4719
  store ptr %call, ptr %state, align 4, !dbg !4720
  %cmp = icmp eq ptr %call, null, !dbg !4721
  br i1 %cmp, label %if.then, label %if.end, !dbg !4721

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4723
  br label %if.end, !dbg !4725

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4726
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4727
  ret void, !dbg !4728
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4729 {
entry:
    #dbg_value(ptr %dest, !4734, !DIExpression(), !4735)
    #dbg_value(ptr %src, !4736, !DIExpression(), !4735)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4737
  store ptr %call, ptr %dest, align 4, !dbg !4738
  %cmp = icmp eq ptr %call, null, !dbg !4739
  br i1 %cmp, label %if.then, label %if.end, !dbg !4739

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4741
  br label %if.end, !dbg !4743

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4744
  %1 = load ptr, ptr %src, align 4, !dbg !4745
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4746
  ret void, !dbg !4747
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4748 {
entry:
    #dbg_value(ptr %state, !4751, !DIExpression(), !4752)
    #dbg_value(ptr %input, !4753, !DIExpression(), !4752)
    #dbg_value(i32 %inlen, !4754, !DIExpression(), !4752)
  %0 = load ptr, ptr %state, align 4, !dbg !4755
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 104, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4756
  ret void, !dbg !4757
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4758 {
entry:
    #dbg_value(ptr %state, !4759, !DIExpression(), !4760)
  %0 = load ptr, ptr %state, align 4, !dbg !4761
  call void @free(ptr noundef %0) #6, !dbg !4762
  ret void, !dbg !4763
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4764 {
entry:
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4767, !DIExpression(), !4768)
    #dbg_value(ptr %state, !4769, !DIExpression(), !4768)
    #dbg_declare(ptr %t, !4770, !DIExpression(), !4774)
  %0 = load ptr, ptr %state, align 4, !dbg !4775
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 104, i8 noundef zeroext 6) #4, !dbg !4776
  %1 = load ptr, ptr %state, align 4, !dbg !4777
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 104) #4, !dbg !4778
  call void @sha3_384_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4779
    #dbg_value(i32 0, !4780, !DIExpression(), !4782)
  br label %for.cond, !dbg !4783

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4784
    #dbg_value(i32 %i.0, !4780, !DIExpression(), !4782)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4785
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4787

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4788
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4788
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4790
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4791
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4792
    #dbg_value(i32 %inc, !4780, !DIExpression(), !4782)
  br label %for.cond, !dbg !4793, !llvm.loop !4794

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4796
}

; Function Attrs: nounwind
define dso_local void @sha3_384(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4797 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4798, !DIExpression(), !4799)
    #dbg_value(ptr %input, !4800, !DIExpression(), !4799)
    #dbg_value(i32 %inlen, !4801, !DIExpression(), !4799)
    #dbg_declare(ptr %s, !4802, !DIExpression(), !4803)
    #dbg_declare(ptr %t, !4804, !DIExpression(), !4805)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 104, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4806
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 104) #4, !dbg !4807
    #dbg_value(i32 0, !4808, !DIExpression(), !4810)
  br label %for.cond, !dbg !4811

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4812
    #dbg_value(i32 %i.0, !4808, !DIExpression(), !4810)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4813
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4815

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4816
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4816
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4818
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4819
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4820
    #dbg_value(i32 %inc, !4808, !DIExpression(), !4810)
  br label %for.cond, !dbg !4821, !llvm.loop !4822

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4824
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4825 {
entry:
    #dbg_value(ptr %state, !4833, !DIExpression(), !4834)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4835
  store ptr %call, ptr %state, align 4, !dbg !4836
  %cmp = icmp eq ptr %call, null, !dbg !4837
  br i1 %cmp, label %if.then, label %if.end, !dbg !4837

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4839
  br label %if.end, !dbg !4841

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4842
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4843
  ret void, !dbg !4844
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4845 {
entry:
    #dbg_value(ptr %dest, !4850, !DIExpression(), !4851)
    #dbg_value(ptr %src, !4852, !DIExpression(), !4851)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4853
  store ptr %call, ptr %dest, align 4, !dbg !4854
  %cmp = icmp eq ptr %call, null, !dbg !4855
  br i1 %cmp, label %if.then, label %if.end, !dbg !4855

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4857
  br label %if.end, !dbg !4859

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4860
  %1 = load ptr, ptr %src, align 4, !dbg !4861
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4862
  ret void, !dbg !4863
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4864 {
entry:
    #dbg_value(ptr %state, !4867, !DIExpression(), !4868)
    #dbg_value(ptr %input, !4869, !DIExpression(), !4868)
    #dbg_value(i32 %inlen, !4870, !DIExpression(), !4868)
  %0 = load ptr, ptr %state, align 4, !dbg !4871
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 72, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4872
  ret void, !dbg !4873
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4874 {
entry:
    #dbg_value(ptr %state, !4875, !DIExpression(), !4876)
  %0 = load ptr, ptr %state, align 4, !dbg !4877
  call void @free(ptr noundef %0) #6, !dbg !4878
  ret void, !dbg !4879
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4880 {
entry:
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4883, !DIExpression(), !4884)
    #dbg_value(ptr %state, !4885, !DIExpression(), !4884)
    #dbg_declare(ptr %t, !4886, !DIExpression(), !4890)
  %0 = load ptr, ptr %state, align 4, !dbg !4891
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 72, i8 noundef zeroext 6) #4, !dbg !4892
  %1 = load ptr, ptr %state, align 4, !dbg !4893
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 72) #4, !dbg !4894
  call void @sha3_512_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4895
    #dbg_value(i32 0, !4896, !DIExpression(), !4898)
  br label %for.cond, !dbg !4899

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4900
    #dbg_value(i32 %i.0, !4896, !DIExpression(), !4898)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4901
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4903

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4904
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4904
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4906
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4907
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4908
    #dbg_value(i32 %inc, !4896, !DIExpression(), !4898)
  br label %for.cond, !dbg !4909, !llvm.loop !4910

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4912
}

; Function Attrs: nounwind
define dso_local void @sha3_512(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4913 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4914, !DIExpression(), !4915)
    #dbg_value(ptr %input, !4916, !DIExpression(), !4915)
    #dbg_value(i32 %inlen, !4917, !DIExpression(), !4915)
    #dbg_declare(ptr %s, !4918, !DIExpression(), !4919)
    #dbg_declare(ptr %t, !4920, !DIExpression(), !4921)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 72, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4922
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 72) #4, !dbg !4923
    #dbg_value(i32 0, !4924, !DIExpression(), !4926)
  br label %for.cond, !dbg !4927

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4928
    #dbg_value(i32 %i.0, !4924, !DIExpression(), !4926)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4929
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4931

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4932
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4932
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4934
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4935
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4936
    #dbg_value(i32 %inc, !4924, !DIExpression(), !4926)
  br label %for.cond, !dbg !4937, !llvm.loop !4938

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4940
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !4941 {
entry:
  %skey = alloca [22 x i64], align 8
    #dbg_value(ptr %r, !4949, !DIExpression(), !4950)
    #dbg_value(ptr %key, !4951, !DIExpression(), !4950)
    #dbg_declare(ptr %skey, !4952, !DIExpression(), !4956)
  %call = call dereferenceable_or_null(704) ptr @malloc(i32 noundef 704) #7, !dbg !4957
  store ptr %call, ptr %r, align 4, !dbg !4958
  %cmp = icmp eq ptr %call, null, !dbg !4959
  br i1 %cmp, label %if.then, label %if.end, !dbg !4959

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4961
  br label %if.end, !dbg !4963

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 16) #4, !dbg !4964
  %0 = load ptr, ptr %r, align 4, !dbg !4965
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 10) #4, !dbg !4966
  ret void, !dbg !4967
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %comp_skey, ptr noundef %key, i32 noundef range(i32 16, 33) %key_len) unnamed_addr #0 !dbg !4968 {
entry:
  %skey = alloca [60 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %comp_skey, !4971, !DIExpression(), !4972)
    #dbg_value(ptr %key, !4973, !DIExpression(), !4972)
    #dbg_value(i32 %key_len, !4974, !DIExpression(), !4972)
    #dbg_declare(ptr %skey, !4975, !DIExpression(), !4979)
  %0 = and i32 %key_len, 60, !dbg !4980
    #dbg_value(i32 %key_len, !4981, !DIExpression(DW_OP_constu, 16, DW_OP_minus, DW_OP_constu, 2, DW_OP_shr, DW_OP_plus_uconst, 10, DW_OP_stack_value), !4972)
  %shr1 = lshr i32 %key_len, 2, !dbg !4982
    #dbg_value(i32 %shr1, !4983, !DIExpression(), !4972)
  %shl = add nuw nsw i32 %0, 28, !dbg !4980
    #dbg_value(i32 %shl, !4984, !DIExpression(), !4972)
  %shr3 = lshr i32 %key_len, 2, !dbg !4985
  call fastcc void @br_range_dec32le(ptr noundef nonnull %skey, i32 noundef %shr3, ptr noundef %key) #4, !dbg !4986
  %shr4 = lshr i32 %key_len, 2, !dbg !4987
  %sub5 = add nsw i32 %shr4, -1, !dbg !4988
  %arrayidx = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub5, !dbg !4989
  %1 = load i32, ptr %arrayidx, align 4, !dbg !4989
    #dbg_value(i32 %1, !4990, !DIExpression(), !4972)
    #dbg_value(i32 %shr1, !4991, !DIExpression(), !4972)
    #dbg_value(i32 0, !4992, !DIExpression(), !4972)
    #dbg_value(i32 0, !4993, !DIExpression(), !4972)
  br label %for.cond, !dbg !4994

for.cond:                                         ; preds = %if.end16, %entry
  %i.0 = phi i32 [ %shr1, %entry ], [ %inc26, %if.end16 ], !dbg !4996
  %j.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end16 ], !dbg !4997
  %k.0 = phi i32 [ 0, %entry ], [ %spec.select1, %if.end16 ], !dbg !4997
  %tmp.0 = phi i32 [ %1, %entry ], [ %xor19, %if.end16 ], !dbg !4972
    #dbg_value(i32 %tmp.0, !4990, !DIExpression(), !4972)
    #dbg_value(i32 %k.0, !4993, !DIExpression(), !4972)
    #dbg_value(i32 %j.0, !4992, !DIExpression(), !4972)
    #dbg_value(i32 %i.0, !4991, !DIExpression(), !4972)
  %exitcond = icmp ne i32 %i.0, %shl, !dbg !4998
  br i1 %exitcond, label %for.body, label %for.cond27.preheader, !dbg !5000

for.cond27.preheader:                             ; preds = %for.cond
  br label %for.cond27, !dbg !5001

for.body:                                         ; preds = %for.cond
  %cmp6 = icmp eq i32 %j.0, 0, !dbg !5003
  br i1 %cmp6, label %if.then, label %if.else, !dbg !5003

if.then:                                          ; preds = %for.body
  %2 = shl i32 %tmp.0, 24, !dbg !5006
  %3 = lshr i32 %tmp.0, 8, !dbg !5006
  %4 = or i32 %2, %3, !dbg !5006
    #dbg_value(i32 %4, !4990, !DIExpression(), !4972)
  %call = call fastcc i32 @sub_word(i32 noundef %4) #4, !dbg !5008
  %arrayidx9 = getelementptr inbounds nuw [10 x i8], ptr @Rcon, i32 0, i32 %k.0, !dbg !5009
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !5009
  %conv = zext i8 %5 to i32, !dbg !5009
  %xor = xor i32 %call, %conv, !dbg !5010
    #dbg_value(i32 %xor, !4990, !DIExpression(), !4972)
  br label %if.end16, !dbg !5011

if.else:                                          ; preds = %for.body
  %cmp10 = icmp samesign ugt i32 %key_len, 27, !dbg !5012
  %cmp12 = icmp eq i32 %j.0, 4
  %or.cond = and i1 %cmp10, %cmp12, !dbg !5014
  br i1 %or.cond, label %if.then14, label %if.end16, !dbg !5014

if.then14:                                        ; preds = %if.else
  %call15 = call fastcc i32 @sub_word(i32 noundef %tmp.0) #4, !dbg !5015
    #dbg_value(i32 %call15, !4990, !DIExpression(), !4972)
  br label %if.end16, !dbg !5017

if.end16:                                         ; preds = %if.else, %if.then14, %if.then
  %tmp.2 = phi i32 [ %xor, %if.then ], [ %call15, %if.then14 ], [ %tmp.0, %if.else ], !dbg !5018
    #dbg_value(i32 %tmp.2, !4990, !DIExpression(), !4972)
  %sub17 = sub nuw nsw i32 %i.0, %shr1, !dbg !5019
  %arrayidx18 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub17, !dbg !5020
  %6 = load i32, ptr %arrayidx18, align 4, !dbg !5020
  %xor19 = xor i32 %tmp.2, %6, !dbg !5021
    #dbg_value(i32 %xor19, !4990, !DIExpression(), !4972)
  %arrayidx20 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %i.0, !dbg !5022
  store i32 %xor19, ptr %arrayidx20, align 4, !dbg !5023
  %inc = add i32 %j.0, 1, !dbg !5024
    #dbg_value(i32 %inc, !4992, !DIExpression(), !4972)
  %cmp21 = icmp eq i32 %inc, %shr1, !dbg !5026
  %spec.select = select i1 %cmp21, i32 0, i32 %inc, !dbg !5026
  %inc24 = zext i1 %cmp21 to i32, !dbg !5026
  %spec.select1 = add i32 %k.0, %inc24, !dbg !5026
    #dbg_value(i32 %spec.select1, !4993, !DIExpression(), !4972)
    #dbg_value(i32 %spec.select, !4992, !DIExpression(), !4972)
  %inc26 = add nuw nsw i32 %i.0, 1, !dbg !5027
    #dbg_value(i32 %inc26, !4991, !DIExpression(), !4972)
  br label %for.cond, !dbg !5028, !llvm.loop !5029

for.cond27:                                       ; preds = %for.cond27.preheader, %for.body30
  %i.1 = phi i32 [ %add73, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !5031
  %j.2 = phi i32 [ %add74, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !5031
    #dbg_value(i32 %j.2, !4992, !DIExpression(), !4972)
    #dbg_value(i32 %i.1, !4991, !DIExpression(), !4972)
  %cmp28 = icmp samesign ult i32 %i.1, %shl, !dbg !5032
  br i1 %cmp28, label %for.body30, label %for.end75, !dbg !5001

for.body30:                                       ; preds = %for.cond27
    #dbg_declare(ptr %q, !5034, !DIExpression(), !5039)
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5040
  %add.ptr = getelementptr inbounds nuw i32, ptr %skey, i32 %i.1, !dbg !5041
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q, ptr noundef nonnull %arrayidx32, ptr noundef nonnull %add.ptr) #4, !dbg !5042
  %7 = load i64, ptr %q, align 8, !dbg !5043
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5044
  store i64 %7, ptr %arrayidx35, align 8, !dbg !5045
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5046
  store i64 %7, ptr %arrayidx37, align 8, !dbg !5047
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5048
  store i64 %7, ptr %arrayidx39, align 8, !dbg !5049
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5050
  %8 = load i64, ptr %arrayidx40, align 8, !dbg !5050
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5051
  store i64 %8, ptr %arrayidx41, align 8, !dbg !5052
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5053
  store i64 %8, ptr %arrayidx43, align 8, !dbg !5054
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5055
  store i64 %8, ptr %arrayidx45, align 8, !dbg !5056
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5057
  %9 = load i64, ptr %q, align 8, !dbg !5058
  %and = and i64 %9, 1229782938247303441, !dbg !5059
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5060
  %10 = load i64, ptr %arrayidx48, align 8, !dbg !5060
  %and49 = and i64 %10, 2459565876494606882, !dbg !5061
  %or50 = or disjoint i64 %and, %and49, !dbg !5062
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5063
  %11 = load i64, ptr %arrayidx51, align 8, !dbg !5063
  %and52 = and i64 %11, 4919131752989213764, !dbg !5064
  %or53 = or disjoint i64 %or50, %and52, !dbg !5065
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5066
  %12 = load i64, ptr %arrayidx54, align 8, !dbg !5066
  %and55 = and i64 %12, -8608480567731124088, !dbg !5067
  %or56 = or disjoint i64 %or53, %and55, !dbg !5068
  %arrayidx58 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %j.2, !dbg !5069
  store i64 %or56, ptr %arrayidx58, align 8, !dbg !5070
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5071
  %13 = load i64, ptr %arrayidx59, align 8, !dbg !5071
  %and60 = and i64 %13, 1229782938247303441, !dbg !5072
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5073
  %14 = load i64, ptr %arrayidx61, align 8, !dbg !5073
  %and62 = and i64 %14, 2459565876494606882, !dbg !5074
  %or63 = or disjoint i64 %and60, %and62, !dbg !5075
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5076
  %15 = load i64, ptr %arrayidx64, align 8, !dbg !5076
  %and65 = and i64 %15, 4919131752989213764, !dbg !5077
  %or66 = or disjoint i64 %or63, %and65, !dbg !5078
  %arrayidx67 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5079
  %16 = load i64, ptr %arrayidx67, align 8, !dbg !5079
  %and68 = and i64 %16, -8608480567731124088, !dbg !5080
  %or69 = or disjoint i64 %or66, %and68, !dbg !5081
  %add70 = or disjoint i32 %j.2, 1, !dbg !5082
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %add70, !dbg !5083
  store i64 %or69, ptr %arrayidx71, align 8, !dbg !5084
  %add73 = add nuw nsw i32 %i.1, 4, !dbg !5085
    #dbg_value(i32 %add73, !4991, !DIExpression(), !4972)
  %add74 = add nuw nsw i32 %j.2, 2, !dbg !5086
    #dbg_value(i32 %add74, !4992, !DIExpression(), !4972)
  br label %for.cond27, !dbg !5087, !llvm.loop !5088

for.end75:                                        ; preds = %for.cond27
  ret void, !dbg !5090
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_skey_expand(ptr noundef %skey, ptr noundef nonnull %comp_skey, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5091 {
entry:
    #dbg_value(ptr %skey, !5094, !DIExpression(), !5095)
    #dbg_value(ptr %comp_skey, !5096, !DIExpression(), !5095)
    #dbg_value(i32 %nrounds, !5097, !DIExpression(), !5095)
  %add = shl nuw nsw i32 %nrounds, 1, !dbg !5098
  %shl = add nuw nsw i32 %add, 2, !dbg !5098
    #dbg_value(i32 %shl, !5099, !DIExpression(), !5095)
    #dbg_value(i32 0, !5100, !DIExpression(), !5095)
    #dbg_value(i32 0, !5101, !DIExpression(), !5095)
  br label %for.cond, !dbg !5102

for.cond:                                         ; preds = %for.body, %entry
  %u.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5104
  %v.0 = phi i32 [ 0, %entry ], [ %add21, %for.body ], !dbg !5104
    #dbg_value(i32 %v.0, !5101, !DIExpression(), !5095)
    #dbg_value(i32 %u.0, !5100, !DIExpression(), !5095)
  %exitcond = icmp ne i32 %u.0, %shl, !dbg !5105
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5107

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %u.0, !dbg !5108
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5108
    #dbg_value(i64 %0, !5110, !DIExpression(), !5111)
    #dbg_value(i64 %0, !5112, !DIExpression(), !5111)
    #dbg_value(i64 %0, !5113, !DIExpression(), !5111)
    #dbg_value(i64 %0, !5114, !DIExpression(), !5111)
  %and = and i64 %0, 1229782938247303441, !dbg !5115
    #dbg_value(i64 %and, !5114, !DIExpression(), !5111)
    #dbg_value(i64 %0, !5113, !DIExpression(DW_OP_constu, 2459565876494606882, DW_OP_and, DW_OP_stack_value), !5111)
    #dbg_value(i64 %0, !5112, !DIExpression(DW_OP_constu, 4919131752989213764, DW_OP_and, DW_OP_stack_value), !5111)
    #dbg_value(i64 %0, !5110, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !5111)
  %and1 = lshr i64 %0, 1, !dbg !5116
  %shr = and i64 %and1, 1229782938247303441, !dbg !5116
    #dbg_value(i64 %shr, !5113, !DIExpression(), !5111)
  %and2 = lshr i64 %0, 2, !dbg !5117
  %shr4 = and i64 %and2, 1229782938247303441, !dbg !5117
    #dbg_value(i64 %shr4, !5112, !DIExpression(), !5111)
  %and3 = lshr i64 %0, 3, !dbg !5118
  %shr5 = and i64 %and3, 1229782938247303441, !dbg !5118
    #dbg_value(i64 %shr5, !5110, !DIExpression(), !5111)
  %sub = mul nuw i64 %and, 15, !dbg !5119
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %skey, i32 %v.0, !dbg !5120
  store i64 %sub, ptr %arrayidx8, align 8, !dbg !5121
  %sub10 = mul nuw i64 %shr, 15, !dbg !5122
  %add11 = or disjoint i32 %v.0, 1, !dbg !5123
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %skey, i32 %add11, !dbg !5124
  store i64 %sub10, ptr %arrayidx12, align 8, !dbg !5125
  %sub14 = mul nuw i64 %shr4, 15, !dbg !5126
  %add15 = or disjoint i32 %v.0, 2, !dbg !5127
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %skey, i32 %add15, !dbg !5128
  store i64 %sub14, ptr %arrayidx16, align 8, !dbg !5129
  %sub18 = mul nuw i64 %shr5, 15, !dbg !5130
  %add19 = or disjoint i32 %v.0, 3, !dbg !5131
  %arrayidx20 = getelementptr inbounds nuw i64, ptr %skey, i32 %add19, !dbg !5132
  store i64 %sub18, ptr %arrayidx20, align 8, !dbg !5133
  %inc = add nuw nsw i32 %u.0, 1, !dbg !5134
    #dbg_value(i32 %inc, !5100, !DIExpression(), !5095)
  %add21 = add nuw nsw i32 %v.0, 4, !dbg !5135
    #dbg_value(i32 %add21, !5101, !DIExpression(), !5095)
  br label %for.cond, !dbg !5136, !llvm.loop !5137

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5139
}

; Function Attrs: nounwind
define internal fastcc void @br_range_dec32le(ptr noundef nonnull %v, i32 noundef range(i32 3, 17) %num, ptr noundef %src) unnamed_addr #0 !dbg !5140 {
entry:
    #dbg_value(ptr %v, !5144, !DIExpression(), !5145)
    #dbg_value(i32 %num, !5146, !DIExpression(), !5145)
    #dbg_value(ptr %src, !5147, !DIExpression(), !5145)
  br label %while.cond, !dbg !5148

while.cond:                                       ; preds = %while.body, %entry
  %src.addr.0 = phi ptr [ %src, %entry ], [ %add.ptr, %while.body ]
  %num.addr.0 = phi i32 [ %num, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
    #dbg_value(ptr %v.addr.0, !5144, !DIExpression(), !5145)
    #dbg_value(i32 %num.addr.0, !5146, !DIExpression(), !5145)
    #dbg_value(ptr %src.addr.0, !5147, !DIExpression(), !5145)
    #dbg_value(i32 %num.addr.0, !5146, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5145)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5149
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5148

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5150
    #dbg_value(i32 %dec, !5146, !DIExpression(), !5145)
  %call = call fastcc i32 @br_dec32le(ptr noundef %src.addr.0) #4, !dbg !5151
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5153
    #dbg_value(ptr %incdec.ptr, !5144, !DIExpression(), !5145)
  store i32 %call, ptr %v.addr.0, align 4, !dbg !5154
  %add.ptr = getelementptr inbounds nuw i8, ptr %src.addr.0, i32 4, !dbg !5155
    #dbg_value(ptr %add.ptr, !5147, !DIExpression(), !5145)
  br label %while.cond, !dbg !5148, !llvm.loop !5156

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5158
}

; Function Attrs: nounwind
define internal fastcc i32 @sub_word(i32 noundef %x) unnamed_addr #0 !dbg !5159 {
entry:
  %q = alloca [8 x i64], align 8
    #dbg_value(i32 %x, !5162, !DIExpression(), !5163)
    #dbg_declare(ptr %q, !5164, !DIExpression(), !5165)
  %call = call ptr @memset(ptr noundef nonnull %q, i32 noundef 0, i32 noundef 64) #6, !dbg !5166
  %conv = zext i32 %x to i64, !dbg !5167
  store i64 %conv, ptr %q, align 8, !dbg !5168
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5169
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5170
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5171
  %0 = load i64, ptr %q, align 8, !dbg !5172
  %conv5 = trunc i64 %0 to i32, !dbg !5173
  ret i32 %conv5, !dbg !5174
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q0, ptr noundef nonnull %q1, ptr noundef nonnull %w) unnamed_addr #0 !dbg !5175 {
entry:
    #dbg_value(ptr %q0, !5180, !DIExpression(), !5181)
    #dbg_value(ptr %q1, !5182, !DIExpression(), !5181)
    #dbg_value(ptr %w, !5183, !DIExpression(), !5181)
  %0 = load i32, ptr %w, align 4, !dbg !5184
  %conv = zext i32 %0 to i64, !dbg !5184
    #dbg_value(i64 %conv, !5185, !DIExpression(), !5181)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5186
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !5186
  %conv2 = zext i32 %1 to i64, !dbg !5186
    #dbg_value(i64 %conv2, !5187, !DIExpression(), !5181)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5188
  %2 = load i32, ptr %arrayidx3, align 4, !dbg !5188
  %conv4 = zext i32 %2 to i64, !dbg !5188
    #dbg_value(i64 %conv4, !5189, !DIExpression(), !5181)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5190
  %3 = load i32, ptr %arrayidx5, align 4, !dbg !5190
  %conv6 = zext i32 %3 to i64, !dbg !5190
    #dbg_value(i64 %conv6, !5191, !DIExpression(), !5181)
  %shl = shl nuw nsw i64 %conv, 16, !dbg !5192
  %or = or i64 %shl, %conv, !dbg !5193
    #dbg_value(i64 %or, !5185, !DIExpression(), !5181)
  %shl7 = shl nuw nsw i64 %conv2, 16, !dbg !5194
  %or8 = or i64 %shl7, %conv2, !dbg !5195
    #dbg_value(i64 %or8, !5187, !DIExpression(), !5181)
  %shl9 = shl nuw nsw i64 %conv4, 16, !dbg !5196
  %or10 = or i64 %shl9, %conv4, !dbg !5197
    #dbg_value(i64 %or10, !5189, !DIExpression(), !5181)
  %shl11 = shl nuw nsw i64 %conv6, 16, !dbg !5198
  %or12 = or i64 %shl11, %conv6, !dbg !5199
    #dbg_value(i64 %or12, !5191, !DIExpression(), !5181)
  %and = and i64 %or, 281470681808895, !dbg !5200
    #dbg_value(i64 %and, !5185, !DIExpression(), !5181)
  %and13 = and i64 %or8, 281470681808895, !dbg !5201
    #dbg_value(i64 %and13, !5187, !DIExpression(), !5181)
  %and14 = and i64 %or10, 281470681808895, !dbg !5202
    #dbg_value(i64 %and14, !5189, !DIExpression(), !5181)
  %and15 = and i64 %or12, 281470681808895, !dbg !5203
    #dbg_value(i64 %and15, !5191, !DIExpression(), !5181)
  %shl16 = shl nuw nsw i64 %and, 8, !dbg !5204
  %or17 = or i64 %and, %shl16, !dbg !5205
    #dbg_value(i64 %or17, !5185, !DIExpression(), !5181)
  %shl18 = shl nuw nsw i64 %and13, 8, !dbg !5206
  %or19 = or i64 %and13, %shl18, !dbg !5207
    #dbg_value(i64 %or19, !5187, !DIExpression(), !5181)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5189, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5181)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5191, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5181)
  %and24 = and i64 %or17, 71777214294589695, !dbg !5208
    #dbg_value(i64 %and24, !5185, !DIExpression(), !5181)
  %and25 = and i64 %or19, 71777214294589695, !dbg !5209
    #dbg_value(i64 %and25, !5187, !DIExpression(), !5181)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5189, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5181)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5191, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5181)
  %4 = shl nuw i64 %and14, 16, !dbg !5210
  %5 = shl nuw nsw i64 %and14, 8, !dbg !5210
  %and26 = or i64 %4, %5, !dbg !5210
  %shl28 = and i64 %and26, -71777214294589696, !dbg !5210
  %or29 = or disjoint i64 %and24, %shl28, !dbg !5211
  store i64 %or29, ptr %q0, align 8, !dbg !5212
  %6 = shl nuw i64 %and15, 16, !dbg !5213
  %7 = shl nuw nsw i64 %and15, 8, !dbg !5213
  %and27 = or i64 %6, %7, !dbg !5213
  %shl30 = and i64 %and27, -71777214294589696, !dbg !5213
  %or31 = or disjoint i64 %and25, %shl30, !dbg !5214
  store i64 %or31, ptr %q1, align 8, !dbg !5215
  ret void, !dbg !5216
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5217 {
entry:
    #dbg_value(ptr %q, !5218, !DIExpression(), !5219)
  %0 = load i64, ptr %q, align 8, !dbg !5220
    #dbg_value(i64 %0, !5222, !DIExpression(), !5223)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5220
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5220
    #dbg_value(i64 %1, !5224, !DIExpression(), !5223)
  %and = and i64 %0, 6148914691236517205, !dbg !5220
  %and2 = shl i64 %1, 1, !dbg !5220
  %shl = and i64 %and2, -6148914691236517206, !dbg !5220
  %or = or disjoint i64 %and, %shl, !dbg !5220
  store i64 %or, ptr %q, align 8, !dbg !5220
  %and4 = lshr i64 %0, 1, !dbg !5220
  %shr = and i64 %and4, 6148914691236517205, !dbg !5220
  %and5 = and i64 %1, -6148914691236517206, !dbg !5220
  %or6 = or disjoint i64 %shr, %and5, !dbg !5220
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5220
  store i64 %or6, ptr %arrayidx7, align 8, !dbg !5220
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5225
  %2 = load i64, ptr %arrayidx11, align 8, !dbg !5225
    #dbg_value(i64 %2, !5227, !DIExpression(), !5228)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5225
  %3 = load i64, ptr %arrayidx12, align 8, !dbg !5225
    #dbg_value(i64 %3, !5229, !DIExpression(), !5228)
  %and13 = and i64 %2, 6148914691236517205, !dbg !5225
  %and14 = shl i64 %3, 1, !dbg !5225
  %shl15 = and i64 %and14, -6148914691236517206, !dbg !5225
  %or16 = or disjoint i64 %and13, %shl15, !dbg !5225
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5225
  store i64 %or16, ptr %arrayidx17, align 8, !dbg !5225
  %and18 = lshr i64 %2, 1, !dbg !5225
  %shr19 = and i64 %and18, 6148914691236517205, !dbg !5225
  %and20 = and i64 %3, -6148914691236517206, !dbg !5225
  %or21 = or disjoint i64 %shr19, %and20, !dbg !5225
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5225
  store i64 %or21, ptr %arrayidx22, align 8, !dbg !5225
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5230
  %4 = load i64, ptr %arrayidx27, align 8, !dbg !5230
    #dbg_value(i64 %4, !5232, !DIExpression(), !5233)
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5230
  %5 = load i64, ptr %arrayidx28, align 8, !dbg !5230
    #dbg_value(i64 %5, !5234, !DIExpression(), !5233)
  %and29 = and i64 %4, 6148914691236517205, !dbg !5230
  %and30 = shl i64 %5, 1, !dbg !5230
  %shl31 = and i64 %and30, -6148914691236517206, !dbg !5230
  %or32 = or disjoint i64 %and29, %shl31, !dbg !5230
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5230
  store i64 %or32, ptr %arrayidx33, align 8, !dbg !5230
  %and34 = lshr i64 %4, 1, !dbg !5230
  %shr35 = and i64 %and34, 6148914691236517205, !dbg !5230
  %and36 = and i64 %5, -6148914691236517206, !dbg !5230
  %or37 = or disjoint i64 %shr35, %and36, !dbg !5230
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5230
  store i64 %or37, ptr %arrayidx38, align 8, !dbg !5230
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5235
  %6 = load i64, ptr %arrayidx43, align 8, !dbg !5235
    #dbg_value(i64 %6, !5237, !DIExpression(), !5238)
  %arrayidx44 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5235
  %7 = load i64, ptr %arrayidx44, align 8, !dbg !5235
    #dbg_value(i64 %7, !5239, !DIExpression(), !5238)
  %and45 = and i64 %6, 6148914691236517205, !dbg !5235
  %and46 = shl i64 %7, 1, !dbg !5235
  %shl47 = and i64 %and46, -6148914691236517206, !dbg !5235
  %or48 = or disjoint i64 %and45, %shl47, !dbg !5235
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5235
  store i64 %or48, ptr %arrayidx49, align 8, !dbg !5235
  %and50 = lshr i64 %6, 1, !dbg !5235
  %shr51 = and i64 %and50, 6148914691236517205, !dbg !5235
  %and52 = and i64 %7, -6148914691236517206, !dbg !5235
  %or53 = or disjoint i64 %shr51, %and52, !dbg !5235
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5235
  store i64 %or53, ptr %arrayidx54, align 8, !dbg !5235
  %8 = load i64, ptr %q, align 8, !dbg !5240
    #dbg_value(i64 %8, !5242, !DIExpression(), !5243)
  %arrayidx60 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5240
  %9 = load i64, ptr %arrayidx60, align 8, !dbg !5240
    #dbg_value(i64 %9, !5244, !DIExpression(), !5243)
  %and61 = and i64 %8, 3689348814741910323, !dbg !5240
  %and62 = shl i64 %9, 2, !dbg !5240
  %shl63 = and i64 %and62, -3689348814741910324, !dbg !5240
  %or64 = or disjoint i64 %and61, %shl63, !dbg !5240
  store i64 %or64, ptr %q, align 8, !dbg !5240
  %and66 = lshr i64 %8, 2, !dbg !5240
  %shr67 = and i64 %and66, 3689348814741910323, !dbg !5240
  %and68 = and i64 %9, -3689348814741910324, !dbg !5240
  %or69 = or disjoint i64 %shr67, %and68, !dbg !5240
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5240
  store i64 %or69, ptr %arrayidx70, align 8, !dbg !5240
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5245
  %10 = load i64, ptr %arrayidx75, align 8, !dbg !5245
    #dbg_value(i64 %10, !5247, !DIExpression(), !5248)
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5245
  %11 = load i64, ptr %arrayidx76, align 8, !dbg !5245
    #dbg_value(i64 %11, !5249, !DIExpression(), !5248)
  %and77 = and i64 %10, 3689348814741910323, !dbg !5245
  %and78 = shl i64 %11, 2, !dbg !5245
  %shl79 = and i64 %and78, -3689348814741910324, !dbg !5245
  %or80 = or disjoint i64 %and77, %shl79, !dbg !5245
  %arrayidx81 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5245
  store i64 %or80, ptr %arrayidx81, align 8, !dbg !5245
  %and82 = lshr i64 %10, 2, !dbg !5245
  %shr83 = and i64 %and82, 3689348814741910323, !dbg !5245
  %and84 = and i64 %11, -3689348814741910324, !dbg !5245
  %or85 = or disjoint i64 %shr83, %and84, !dbg !5245
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5245
  store i64 %or85, ptr %arrayidx86, align 8, !dbg !5245
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5250
  %12 = load i64, ptr %arrayidx91, align 8, !dbg !5250
    #dbg_value(i64 %12, !5252, !DIExpression(), !5253)
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5250
  %13 = load i64, ptr %arrayidx92, align 8, !dbg !5250
    #dbg_value(i64 %13, !5254, !DIExpression(), !5253)
  %and93 = and i64 %12, 3689348814741910323, !dbg !5250
  %and94 = shl i64 %13, 2, !dbg !5250
  %shl95 = and i64 %and94, -3689348814741910324, !dbg !5250
  %or96 = or disjoint i64 %and93, %shl95, !dbg !5250
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5250
  store i64 %or96, ptr %arrayidx97, align 8, !dbg !5250
  %and98 = lshr i64 %12, 2, !dbg !5250
  %shr99 = and i64 %and98, 3689348814741910323, !dbg !5250
  %and100 = and i64 %13, -3689348814741910324, !dbg !5250
  %or101 = or disjoint i64 %shr99, %and100, !dbg !5250
  %arrayidx102 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5250
  store i64 %or101, ptr %arrayidx102, align 8, !dbg !5250
  %arrayidx107 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5255
  %14 = load i64, ptr %arrayidx107, align 8, !dbg !5255
    #dbg_value(i64 %14, !5257, !DIExpression(), !5258)
  %arrayidx108 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5255
  %15 = load i64, ptr %arrayidx108, align 8, !dbg !5255
    #dbg_value(i64 %15, !5259, !DIExpression(), !5258)
  %and109 = and i64 %14, 3689348814741910323, !dbg !5255
  %and110 = shl i64 %15, 2, !dbg !5255
  %shl111 = and i64 %and110, -3689348814741910324, !dbg !5255
  %or112 = or disjoint i64 %and109, %shl111, !dbg !5255
  %arrayidx113 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5255
  store i64 %or112, ptr %arrayidx113, align 8, !dbg !5255
  %and114 = lshr i64 %14, 2, !dbg !5255
  %shr115 = and i64 %and114, 3689348814741910323, !dbg !5255
  %and116 = and i64 %15, -3689348814741910324, !dbg !5255
  %or117 = or disjoint i64 %shr115, %and116, !dbg !5255
  %arrayidx118 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5255
  store i64 %or117, ptr %arrayidx118, align 8, !dbg !5255
  %16 = load i64, ptr %q, align 8, !dbg !5260
    #dbg_value(i64 %16, !5262, !DIExpression(), !5263)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5260
  %17 = load i64, ptr %arrayidx124, align 8, !dbg !5260
    #dbg_value(i64 %17, !5264, !DIExpression(), !5263)
  %and125 = and i64 %16, 1085102592571150095, !dbg !5260
  %and126 = shl i64 %17, 4, !dbg !5260
  %shl127 = and i64 %and126, -1085102592571150096, !dbg !5260
  %or128 = or disjoint i64 %and125, %shl127, !dbg !5260
  store i64 %or128, ptr %q, align 8, !dbg !5260
  %and130 = lshr i64 %16, 4, !dbg !5260
  %shr131 = and i64 %and130, 1085102592571150095, !dbg !5260
  %and132 = and i64 %17, -1085102592571150096, !dbg !5260
  %or133 = or disjoint i64 %shr131, %and132, !dbg !5260
  %arrayidx134 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5260
  store i64 %or133, ptr %arrayidx134, align 8, !dbg !5260
  %arrayidx139 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5265
  %18 = load i64, ptr %arrayidx139, align 8, !dbg !5265
    #dbg_value(i64 %18, !5267, !DIExpression(), !5268)
  %arrayidx140 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5265
  %19 = load i64, ptr %arrayidx140, align 8, !dbg !5265
    #dbg_value(i64 %19, !5269, !DIExpression(), !5268)
  %and141 = and i64 %18, 1085102592571150095, !dbg !5265
  %and142 = shl i64 %19, 4, !dbg !5265
  %shl143 = and i64 %and142, -1085102592571150096, !dbg !5265
  %or144 = or disjoint i64 %and141, %shl143, !dbg !5265
  %arrayidx145 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5265
  store i64 %or144, ptr %arrayidx145, align 8, !dbg !5265
  %and146 = lshr i64 %18, 4, !dbg !5265
  %shr147 = and i64 %and146, 1085102592571150095, !dbg !5265
  %and148 = and i64 %19, -1085102592571150096, !dbg !5265
  %or149 = or disjoint i64 %shr147, %and148, !dbg !5265
  %arrayidx150 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5265
  store i64 %or149, ptr %arrayidx150, align 8, !dbg !5265
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5270
  %20 = load i64, ptr %arrayidx155, align 8, !dbg !5270
    #dbg_value(i64 %20, !5272, !DIExpression(), !5273)
  %arrayidx156 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5270
  %21 = load i64, ptr %arrayidx156, align 8, !dbg !5270
    #dbg_value(i64 %21, !5274, !DIExpression(), !5273)
  %and157 = and i64 %20, 1085102592571150095, !dbg !5270
  %and158 = shl i64 %21, 4, !dbg !5270
  %shl159 = and i64 %and158, -1085102592571150096, !dbg !5270
  %or160 = or disjoint i64 %and157, %shl159, !dbg !5270
  %arrayidx161 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5270
  store i64 %or160, ptr %arrayidx161, align 8, !dbg !5270
  %and162 = lshr i64 %20, 4, !dbg !5270
  %shr163 = and i64 %and162, 1085102592571150095, !dbg !5270
  %and164 = and i64 %21, -1085102592571150096, !dbg !5270
  %or165 = or disjoint i64 %shr163, %and164, !dbg !5270
  %arrayidx166 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5270
  store i64 %or165, ptr %arrayidx166, align 8, !dbg !5270
  %arrayidx171 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5275
  %22 = load i64, ptr %arrayidx171, align 8, !dbg !5275
    #dbg_value(i64 %22, !5277, !DIExpression(), !5278)
  %arrayidx172 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5275
  %23 = load i64, ptr %arrayidx172, align 8, !dbg !5275
    #dbg_value(i64 %23, !5279, !DIExpression(), !5278)
  %and173 = and i64 %22, 1085102592571150095, !dbg !5275
  %and174 = shl i64 %23, 4, !dbg !5275
  %shl175 = and i64 %and174, -1085102592571150096, !dbg !5275
  %or176 = or disjoint i64 %and173, %shl175, !dbg !5275
  %arrayidx177 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5275
  store i64 %or176, ptr %arrayidx177, align 8, !dbg !5275
  %and178 = lshr i64 %22, 4, !dbg !5275
  %shr179 = and i64 %and178, 1085102592571150095, !dbg !5275
  %and180 = and i64 %23, -1085102592571150096, !dbg !5275
  %or181 = or disjoint i64 %shr179, %and180, !dbg !5275
  %arrayidx182 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5275
  store i64 %or181, ptr %arrayidx182, align 8, !dbg !5275
  ret void, !dbg !5280
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5281 {
entry:
    #dbg_value(ptr %q, !5282, !DIExpression(), !5283)
  %arrayidx = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5284
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5284
    #dbg_value(i64 %0, !5285, !DIExpression(), !5283)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5286
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5286
    #dbg_value(i64 %1, !5287, !DIExpression(), !5283)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5288
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5288
    #dbg_value(i64 %2, !5289, !DIExpression(), !5283)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5290
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5290
    #dbg_value(i64 %3, !5291, !DIExpression(), !5283)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5292
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5292
    #dbg_value(i64 %4, !5293, !DIExpression(), !5283)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5294
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5294
    #dbg_value(i64 %5, !5295, !DIExpression(), !5283)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5296
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5296
    #dbg_value(i64 %6, !5297, !DIExpression(), !5283)
  %7 = load i64, ptr %q, align 8, !dbg !5298
    #dbg_value(i64 %7, !5299, !DIExpression(), !5283)
  %xor = xor i64 %3, %5, !dbg !5300
    #dbg_value(i64 %xor, !5301, !DIExpression(), !5283)
  %xor8 = xor i64 %0, %6, !dbg !5302
    #dbg_value(i64 %xor8, !5303, !DIExpression(), !5283)
  %xor9 = xor i64 %0, %3, !dbg !5304
    #dbg_value(i64 %xor9, !5305, !DIExpression(), !5283)
  %xor10 = xor i64 %0, %5, !dbg !5306
    #dbg_value(i64 %xor10, !5307, !DIExpression(), !5283)
  %xor11 = xor i64 %1, %2, !dbg !5308
    #dbg_value(i64 %xor11, !5309, !DIExpression(), !5283)
  %xor12 = xor i64 %xor11, %7, !dbg !5310
    #dbg_value(i64 %xor12, !5311, !DIExpression(), !5283)
  %xor13 = xor i64 %xor12, %3, !dbg !5312
    #dbg_value(i64 %xor13, !5313, !DIExpression(), !5283)
  %xor14 = xor i64 %xor8, %xor, !dbg !5314
    #dbg_value(i64 %xor14, !5315, !DIExpression(), !5283)
  %xor15 = xor i64 %xor12, %0, !dbg !5316
    #dbg_value(i64 %xor15, !5317, !DIExpression(), !5283)
  %xor16 = xor i64 %xor12, %6, !dbg !5318
    #dbg_value(i64 %xor16, !5319, !DIExpression(), !5283)
  %xor17 = xor i64 %xor16, %xor10, !dbg !5320
    #dbg_value(i64 %xor17, !5321, !DIExpression(), !5283)
  %xor18 = xor i64 %4, %xor14, !dbg !5322
    #dbg_value(i64 %xor18, !5323, !DIExpression(), !5283)
  %xor19 = xor i64 %xor18, %5, !dbg !5324
    #dbg_value(i64 %xor19, !5325, !DIExpression(), !5283)
  %xor20 = xor i64 %xor18, %1, !dbg !5326
    #dbg_value(i64 %xor20, !5327, !DIExpression(), !5283)
  %xor21 = xor i64 %xor19, %7, !dbg !5328
    #dbg_value(i64 %xor21, !5329, !DIExpression(), !5283)
  %xor22 = xor i64 %xor19, %xor11, !dbg !5330
    #dbg_value(i64 %xor22, !5331, !DIExpression(), !5283)
  %xor23 = xor i64 %xor20, %xor9, !dbg !5332
    #dbg_value(i64 %xor23, !5333, !DIExpression(), !5283)
  %xor24 = xor i64 %7, %xor23, !dbg !5334
    #dbg_value(i64 %xor24, !5335, !DIExpression(), !5283)
  %xor25 = xor i64 %xor22, %xor23, !dbg !5336
    #dbg_value(i64 %xor25, !5337, !DIExpression(), !5283)
    #dbg_value(!DIArgList(i64 %xor22, i64 %xor10), !5338, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5283)
  %xor27 = xor i64 %xor11, %xor23, !dbg !5339
    #dbg_value(i64 %xor27, !5340, !DIExpression(), !5283)
    #dbg_value(!DIArgList(i64 %xor8, i64 %xor27), !5341, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5283)
    #dbg_value(!DIArgList(i64 %0, i64 %xor27), !5342, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5283)
  %and = and i64 %xor14, %xor19, !dbg !5343
    #dbg_value(i64 %and, !5344, !DIExpression(), !5283)
  %and30 = and i64 %xor17, %xor21, !dbg !5345
    #dbg_value(i64 %and30, !5346, !DIExpression(), !5283)
  %xor31 = xor i64 %and30, %and, !dbg !5347
    #dbg_value(i64 %xor31, !5348, !DIExpression(), !5283)
  %and32 = and i64 %xor13, %7, !dbg !5349
    #dbg_value(i64 %and32, !5350, !DIExpression(), !5283)
    #dbg_value(!DIArgList(i64 %and32, i64 %and), !5351, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5283)
  %and34 = and i64 %xor8, %xor27, !dbg !5352
    #dbg_value(i64 %and34, !5353, !DIExpression(), !5283)
  %and35 = and i64 %xor16, %xor12, !dbg !5354
    #dbg_value(i64 %and35, !5355, !DIExpression(), !5283)
    #dbg_value(!DIArgList(i64 %and35, i64 %and34), !5356, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5283)
  %and37 = and i64 %xor15, %xor24, !dbg !5357
    #dbg_value(i64 %and37, !5358, !DIExpression(), !5283)
    #dbg_value(!DIArgList(i64 %and37, i64 %and34), !5359, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5283)
  %and39 = and i64 %xor9, %xor23, !dbg !5360
    #dbg_value(i64 %and39, !5361, !DIExpression(), !5283)
  %and40 = and i64 %xor, %xor25, !dbg !5362
    #dbg_value(i64 %and40, !5363, !DIExpression(), !5283)
  %xor41 = xor i64 %and40, %and39, !dbg !5364
    #dbg_value(i64 %xor41, !5365, !DIExpression(), !5283)
  %and42 = and i64 %xor10, %xor22, !dbg !5366
    #dbg_value(i64 %and42, !5367, !DIExpression(), !5283)
  %xor43 = xor i64 %and42, %and39, !dbg !5368
    #dbg_value(i64 %xor43, !5369, !DIExpression(), !5283)
  %xor44 = xor i64 %xor31, %xor41, !dbg !5370
    #dbg_value(i64 %xor44, !5371, !DIExpression(), !5283)
    #dbg_value(!DIArgList(i64 %and32, i64 %xor43, i64 %and), !5372, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5283)
    #dbg_value(!DIArgList(i64 %and35, i64 %xor41, i64 %and34), !5373, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5283)
    #dbg_value(!DIArgList(i64 %and37, i64 %xor43, i64 %and34), !5374, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5283)
  %xor48 = xor i64 %xor44, %xor20, !dbg !5375
    #dbg_value(i64 %xor48, !5376, !DIExpression(), !5283)
  %8 = xor i64 %xor10, %and32, !dbg !5377
  %9 = xor i64 %8, %xor22, !dbg !5377
  %10 = xor i64 %9, %and, !dbg !5377
  %xor49 = xor i64 %10, %xor43, !dbg !5377
    #dbg_value(i64 %xor49, !5378, !DIExpression(), !5283)
  %11 = xor i64 %xor27, %and35, !dbg !5379
  %12 = xor i64 %11, %xor8, !dbg !5379
  %13 = xor i64 %12, %and34, !dbg !5379
  %xor50 = xor i64 %13, %xor41, !dbg !5379
    #dbg_value(i64 %xor50, !5380, !DIExpression(), !5283)
  %14 = xor i64 %xor27, %and37, !dbg !5381
  %15 = xor i64 %14, %0, !dbg !5381
  %16 = xor i64 %15, %and34, !dbg !5381
  %xor51 = xor i64 %16, %xor43, !dbg !5381
    #dbg_value(i64 %xor51, !5382, !DIExpression(), !5283)
  %xor52 = xor i64 %xor48, %xor49, !dbg !5383
    #dbg_value(i64 %xor52, !5384, !DIExpression(), !5283)
  %and53 = and i64 %xor48, %xor50, !dbg !5385
    #dbg_value(i64 %and53, !5386, !DIExpression(), !5283)
  %xor54 = xor i64 %xor51, %and53, !dbg !5387
    #dbg_value(i64 %xor54, !5388, !DIExpression(), !5283)
  %and55 = and i64 %xor52, %xor54, !dbg !5389
    #dbg_value(i64 %and55, !5390, !DIExpression(), !5283)
  %xor56 = xor i64 %and55, %xor49, !dbg !5391
    #dbg_value(i64 %xor56, !5392, !DIExpression(), !5283)
  %xor57 = xor i64 %xor50, %xor51, !dbg !5393
    #dbg_value(i64 %xor57, !5394, !DIExpression(), !5283)
  %xor58 = xor i64 %xor49, %and53, !dbg !5395
    #dbg_value(i64 %xor58, !5396, !DIExpression(), !5283)
  %and59 = and i64 %xor58, %xor57, !dbg !5397
    #dbg_value(i64 %and59, !5398, !DIExpression(), !5283)
  %xor60 = xor i64 %and59, %xor51, !dbg !5399
    #dbg_value(i64 %xor60, !5400, !DIExpression(), !5283)
  %xor61 = xor i64 %xor50, %xor60, !dbg !5401
    #dbg_value(i64 %xor61, !5402, !DIExpression(), !5283)
  %xor62 = xor i64 %and59, %and53, !dbg !5403
    #dbg_value(i64 %xor62, !5404, !DIExpression(), !5283)
  %and63 = and i64 %xor51, %xor62, !dbg !5405
    #dbg_value(i64 %and63, !5406, !DIExpression(), !5283)
  %xor64 = xor i64 %and63, %xor61, !dbg !5407
    #dbg_value(i64 %xor64, !5408, !DIExpression(), !5283)
  %xor65 = xor i64 %xor54, %and63, !dbg !5409
    #dbg_value(i64 %xor65, !5410, !DIExpression(), !5283)
  %and66 = and i64 %xor56, %xor65, !dbg !5411
    #dbg_value(i64 %and66, !5412, !DIExpression(), !5283)
  %xor67 = xor i64 %xor52, %and66, !dbg !5413
    #dbg_value(i64 %xor67, !5414, !DIExpression(), !5283)
  %xor68 = xor i64 %xor67, %xor64, !dbg !5415
    #dbg_value(i64 %xor68, !5416, !DIExpression(), !5283)
  %xor69 = xor i64 %xor56, %xor60, !dbg !5417
    #dbg_value(i64 %xor69, !5418, !DIExpression(), !5283)
  %xor70 = xor i64 %xor56, %xor67, !dbg !5419
    #dbg_value(i64 %xor70, !5420, !DIExpression(), !5283)
  %xor71 = xor i64 %and63, %xor50, !dbg !5421
    #dbg_value(i64 %xor71, !5422, !DIExpression(), !5283)
  %xor72 = xor i64 %xor69, %xor68, !dbg !5423
    #dbg_value(i64 %xor72, !5424, !DIExpression(), !5283)
  %and73 = and i64 %xor71, %xor19, !dbg !5425
    #dbg_value(i64 %and73, !5426, !DIExpression(), !5283)
  %and74 = and i64 %xor64, %xor21, !dbg !5427
    #dbg_value(i64 %and74, !5428, !DIExpression(), !5283)
  %and75 = and i64 %xor60, %7, !dbg !5429
    #dbg_value(i64 %and75, !5430, !DIExpression(), !5283)
  %and76 = and i64 %xor70, %xor27, !dbg !5431
    #dbg_value(i64 %and76, !5432, !DIExpression(), !5283)
  %and77 = and i64 %xor67, %xor12, !dbg !5433
    #dbg_value(i64 %and77, !5434, !DIExpression(), !5283)
  %and78 = and i64 %xor56, %xor24, !dbg !5435
    #dbg_value(i64 %and78, !5436, !DIExpression(), !5283)
  %and79 = and i64 %xor69, %xor23, !dbg !5437
    #dbg_value(i64 %and79, !5438, !DIExpression(), !5283)
  %and80 = and i64 %xor72, %xor25, !dbg !5439
    #dbg_value(i64 %and80, !5440, !DIExpression(), !5283)
  %and81 = and i64 %xor68, %xor22, !dbg !5441
    #dbg_value(i64 %and81, !5442, !DIExpression(), !5283)
  %and82 = and i64 %xor71, %xor14, !dbg !5443
    #dbg_value(i64 %and82, !5444, !DIExpression(), !5283)
  %and83 = and i64 %xor64, %xor17, !dbg !5445
    #dbg_value(i64 %and83, !5446, !DIExpression(), !5283)
  %and84 = and i64 %xor60, %xor13, !dbg !5447
    #dbg_value(i64 %and84, !5448, !DIExpression(), !5283)
  %and85 = and i64 %xor70, %xor8, !dbg !5449
    #dbg_value(i64 %and85, !5450, !DIExpression(), !5283)
  %and86 = and i64 %xor67, %xor16, !dbg !5451
    #dbg_value(i64 %and86, !5452, !DIExpression(), !5283)
  %and87 = and i64 %xor56, %xor15, !dbg !5453
    #dbg_value(i64 %and87, !5454, !DIExpression(), !5283)
  %and88 = and i64 %xor69, %xor9, !dbg !5455
    #dbg_value(i64 %and88, !5456, !DIExpression(), !5283)
  %and89 = and i64 %xor72, %xor, !dbg !5457
    #dbg_value(i64 %and89, !5458, !DIExpression(), !5283)
  %and90 = and i64 %xor68, %xor10, !dbg !5459
    #dbg_value(i64 %and90, !5460, !DIExpression(), !5283)
  %xor91 = xor i64 %and88, %and89, !dbg !5461
    #dbg_value(i64 %xor91, !5462, !DIExpression(), !5283)
  %xor92 = xor i64 %and83, %and84, !dbg !5463
    #dbg_value(i64 %xor92, !5464, !DIExpression(), !5283)
  %xor93 = xor i64 %and78, %and86, !dbg !5465
    #dbg_value(i64 %xor93, !5466, !DIExpression(), !5283)
  %xor94 = xor i64 %and82, %and83, !dbg !5467
    #dbg_value(i64 %xor94, !5468, !DIExpression(), !5283)
  %xor95 = xor i64 %and75, %and85, !dbg !5469
    #dbg_value(i64 %xor95, !5470, !DIExpression(), !5283)
  %xor96 = xor i64 %and75, %and78, !dbg !5471
    #dbg_value(i64 %xor96, !5472, !DIExpression(), !5283)
  %xor97 = xor i64 %and80, %and81, !dbg !5473
    #dbg_value(i64 %xor97, !5474, !DIExpression(), !5283)
  %xor98 = xor i64 %and73, %and76, !dbg !5475
    #dbg_value(i64 %xor98, !5476, !DIExpression(), !5283)
  %xor99 = xor i64 %and79, %and80, !dbg !5477
    #dbg_value(i64 %xor99, !5478, !DIExpression(), !5283)
  %xor100 = xor i64 %and89, %and90, !dbg !5479
    #dbg_value(i64 %xor100, !5480, !DIExpression(), !5283)
  %xor101 = xor i64 %and85, %xor93, !dbg !5481
    #dbg_value(i64 %xor101, !5482, !DIExpression(), !5283)
  %xor102 = xor i64 %xor95, %xor98, !dbg !5483
    #dbg_value(i64 %xor102, !5484, !DIExpression(), !5283)
  %xor103 = xor i64 %and77, %xor91, !dbg !5485
    #dbg_value(i64 %xor103, !5486, !DIExpression(), !5283)
  %xor104 = xor i64 %and76, %xor99, !dbg !5487
    #dbg_value(i64 %xor104, !5488, !DIExpression(), !5283)
  %xor105 = xor i64 %xor91, %xor102, !dbg !5489
    #dbg_value(i64 %xor105, !5490, !DIExpression(), !5283)
  %xor106 = xor i64 %and87, %xor102, !dbg !5491
    #dbg_value(i64 %xor106, !5492, !DIExpression(), !5283)
  %xor107 = xor i64 %xor97, %xor103, !dbg !5493
    #dbg_value(i64 %xor107, !5494, !DIExpression(), !5283)
  %xor108 = xor i64 %xor94, %xor103, !dbg !5495
    #dbg_value(i64 %xor108, !5496, !DIExpression(), !5283)
  %xor109 = xor i64 %and77, %xor104, !dbg !5497
    #dbg_value(i64 %xor109, !5498, !DIExpression(), !5283)
  %xor110 = xor i64 %xor106, %xor107, !dbg !5499
    #dbg_value(i64 %xor110, !5500, !DIExpression(), !5283)
  %xor111 = xor i64 %and74, %xor108, !dbg !5501
    #dbg_value(i64 %xor111, !5502, !DIExpression(), !5283)
  %xor112 = xor i64 %xor104, %xor108, !dbg !5503
    #dbg_value(i64 %xor112, !5504, !DIExpression(), !5283)
  %17 = xor i64 %xor107, %xor101, !dbg !5505
  %xor113 = xor i64 %17, -1, !dbg !5505
    #dbg_value(i64 %xor113, !5506, !DIExpression(), !5283)
  %18 = xor i64 %xor105, %xor93, !dbg !5507
  %xor115 = xor i64 %18, -1, !dbg !5507
    #dbg_value(i64 %xor115, !5508, !DIExpression(), !5283)
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor110), !5509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5283)
  %xor117 = xor i64 %xor98, %xor111, !dbg !5510
    #dbg_value(i64 %xor117, !5511, !DIExpression(), !5283)
  %xor118 = xor i64 %xor96, %xor111, !dbg !5512
    #dbg_value(i64 %xor118, !5513, !DIExpression(), !5283)
  %xor119 = xor i64 %xor92, %xor110, !dbg !5514
    #dbg_value(i64 %xor119, !5515, !DIExpression(), !5283)
  %19 = xor i64 %xor117, %xor109, !dbg !5516
  %xor121 = xor i64 %19, -1, !dbg !5516
    #dbg_value(i64 %xor121, !5517, !DIExpression(), !5283)
  %20 = xor i64 %xor110, %xor100, !dbg !5518
  %21 = xor i64 %20, %xor109, !dbg !5518
  %xor123 = xor i64 %21, -1, !dbg !5518
    #dbg_value(i64 %xor123, !5519, !DIExpression(), !5283)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5520
  store i64 %xor112, ptr %arrayidx124, align 8, !dbg !5521
  %arrayidx125 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5522
  store i64 %xor121, ptr %arrayidx125, align 8, !dbg !5523
  %arrayidx126 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5524
  store i64 %xor123, ptr %arrayidx126, align 8, !dbg !5525
  %arrayidx127 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5526
  store i64 %xor117, ptr %arrayidx127, align 8, !dbg !5527
  %arrayidx128 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5528
  store i64 %xor118, ptr %arrayidx128, align 8, !dbg !5529
  %arrayidx129 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5530
  store i64 %xor119, ptr %arrayidx129, align 8, !dbg !5531
  %arrayidx130 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5532
  store i64 %xor113, ptr %arrayidx130, align 8, !dbg !5533
  store i64 %xor115, ptr %q, align 8, !dbg !5534
  ret void, !dbg !5535
}

; Function Attrs: nounwind
define internal fastcc i32 @br_dec32le(ptr noundef %src) unnamed_addr #0 !dbg !5536 {
entry:
    #dbg_value(ptr %src, !5539, !DIExpression(), !5540)
  %0 = load i8, ptr %src, align 1, !dbg !5541
  %conv = zext i8 %0 to i32, !dbg !5542
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %src, i32 1, !dbg !5543
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !5543
  %conv2 = zext i8 %1 to i32, !dbg !5544
  %shl = shl nuw nsw i32 %conv2, 8, !dbg !5545
  %or = or disjoint i32 %shl, %conv, !dbg !5546
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %src, i32 2, !dbg !5547
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !5547
  %conv4 = zext i8 %2 to i32, !dbg !5548
  %shl5 = shl nuw nsw i32 %conv4, 16, !dbg !5549
  %or6 = or disjoint i32 %or, %shl5, !dbg !5550
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %src, i32 3, !dbg !5551
  %3 = load i8, ptr %arrayidx7, align 1, !dbg !5551
  %conv8 = zext i8 %3 to i32, !dbg !5552
  %shl9 = shl nuw i32 %conv8, 24, !dbg !5553
  %or10 = or disjoint i32 %or6, %shl9, !dbg !5554
  ret i32 %or10, !dbg !5555
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5556 {
entry:
    #dbg_value(ptr %r, !5557, !DIExpression(), !5558)
    #dbg_value(ptr %key, !5559, !DIExpression(), !5558)
  call void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5560
  ret void, !dbg !5561
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5562 {
entry:
  %skey = alloca [26 x i64], align 8
    #dbg_value(ptr %r, !5570, !DIExpression(), !5571)
    #dbg_value(ptr %key, !5572, !DIExpression(), !5571)
    #dbg_declare(ptr %skey, !5573, !DIExpression(), !5577)
  %call = call dereferenceable_or_null(832) ptr @malloc(i32 noundef 832) #7, !dbg !5578
  store ptr %call, ptr %r, align 4, !dbg !5579
  %cmp = icmp eq ptr %call, null, !dbg !5580
  br i1 %cmp, label %if.then, label %if.end, !dbg !5580

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !5582
  br label %if.end, !dbg !5584

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 24) #4, !dbg !5585
  %0 = load ptr, ptr %r, align 4, !dbg !5586
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 12) #4, !dbg !5587
  ret void, !dbg !5588
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5589 {
entry:
    #dbg_value(ptr %r, !5590, !DIExpression(), !5591)
    #dbg_value(ptr %key, !5592, !DIExpression(), !5591)
  call void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5593
  ret void, !dbg !5594
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5595 {
entry:
  %skey = alloca [30 x i64], align 8
    #dbg_value(ptr %r, !5603, !DIExpression(), !5604)
    #dbg_value(ptr %key, !5605, !DIExpression(), !5604)
    #dbg_declare(ptr %skey, !5606, !DIExpression(), !5610)
  %call = call dereferenceable_or_null(960) ptr @malloc(i32 noundef 960) #7, !dbg !5611
  store ptr %call, ptr %r, align 4, !dbg !5612
  %cmp = icmp eq ptr %call, null, !dbg !5613
  br i1 %cmp, label %if.then, label %if.end, !dbg !5613

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !5615
  br label %if.end, !dbg !5617

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 32) #4, !dbg !5618
  %0 = load ptr, ptr %r, align 4, !dbg !5619
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 14) #4, !dbg !5620
  ret void, !dbg !5621
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5622 {
entry:
    #dbg_value(ptr %r, !5623, !DIExpression(), !5624)
    #dbg_value(ptr %key, !5625, !DIExpression(), !5624)
  call void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5626
  ret void, !dbg !5627
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5628 {
entry:
    #dbg_value(ptr %out, !5633, !DIExpression(), !5634)
    #dbg_value(ptr %in, !5635, !DIExpression(), !5634)
    #dbg_value(i32 %nblocks, !5636, !DIExpression(), !5634)
    #dbg_value(ptr %ctx, !5637, !DIExpression(), !5634)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5638
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 10) #4, !dbg !5639
  ret void, !dbg !5640
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5641 {
entry:
  %blocks = alloca [16 x i32], align 4
  %t = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5644, !DIExpression(), !5645)
    #dbg_value(ptr %in, !5646, !DIExpression(), !5645)
    #dbg_value(i32 %nblocks, !5647, !DIExpression(), !5645)
    #dbg_value(ptr %rkeys, !5648, !DIExpression(), !5645)
    #dbg_value(i32 %nrounds, !5649, !DIExpression(), !5645)
    #dbg_declare(ptr %blocks, !5650, !DIExpression(), !5652)
    #dbg_declare(ptr %t, !5653, !DIExpression(), !5657)
  br label %while.cond, !dbg !5658

while.cond:                                       ; preds = %while.body, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %sub, %while.body ]
  %in.addr.0 = phi ptr [ %in, %entry ], [ %add.ptr, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr2, %while.body ]
    #dbg_value(ptr %out.addr.0, !5644, !DIExpression(), !5645)
    #dbg_value(ptr %in.addr.0, !5646, !DIExpression(), !5645)
    #dbg_value(i32 %nblocks.addr.0, !5647, !DIExpression(), !5645)
  %cmp = icmp ugt i32 %nblocks.addr.0, 3, !dbg !5659
  br i1 %cmp, label %while.body, label %while.end, !dbg !5658

while.body:                                       ; preds = %while.cond
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef 16, ptr noundef %in.addr.0) #4, !dbg !5660
  call fastcc void @aes_ecb4x(ptr noundef %out.addr.0, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !5662
  %sub = add i32 %nblocks.addr.0, -4, !dbg !5663
    #dbg_value(i32 %sub, !5647, !DIExpression(), !5645)
  %add.ptr = getelementptr inbounds nuw i8, ptr %in.addr.0, i32 64, !dbg !5664
    #dbg_value(ptr %add.ptr, !5646, !DIExpression(), !5645)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !5665
    #dbg_value(ptr %add.ptr2, !5644, !DIExpression(), !5645)
  br label %while.cond, !dbg !5658, !llvm.loop !5666

while.end:                                        ; preds = %while.cond
  %nblocks.addr.0.lcssa = phi i32 [ %nblocks.addr.0, %while.cond ]
  %in.addr.0.lcssa = phi ptr [ %in.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %tobool.not = icmp eq i32 %nblocks.addr.0.lcssa, 0, !dbg !5668
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !5668

if.then:                                          ; preds = %while.end
  %mul = shl nuw nsw i32 %nblocks.addr.0.lcssa, 2, !dbg !5670
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef %mul, ptr noundef %in.addr.0.lcssa) #4, !dbg !5672
  call fastcc void @aes_ecb4x(ptr noundef nonnull %t, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !5673
  %mul7 = shl nuw nsw i32 %nblocks.addr.0.lcssa, 4, !dbg !5674
  %call = call ptr @memcpy(ptr noundef %out.addr.0.lcssa, ptr noundef nonnull %t, i32 noundef %mul7) #6, !dbg !5675
  br label %if.end, !dbg !5676

if.end:                                           ; preds = %if.then, %while.end
  ret void, !dbg !5677
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5678 {
entry:
  %w = alloca [16 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %out, !5681, !DIExpression(), !5682)
    #dbg_value(ptr %ivw, !5683, !DIExpression(), !5682)
    #dbg_value(ptr %sk_exp, !5684, !DIExpression(), !5682)
    #dbg_value(i32 %nrounds, !5685, !DIExpression(), !5682)
    #dbg_declare(ptr %w, !5686, !DIExpression(), !5687)
    #dbg_declare(ptr %q, !5688, !DIExpression(), !5689)
  %call = call ptr @memcpy(ptr noundef nonnull %w, ptr noundef nonnull %ivw, i32 noundef 64) #6, !dbg !5690
    #dbg_value(i32 0, !5691, !DIExpression(), !5682)
  br label %for.cond, !dbg !5692

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5694
    #dbg_value(i32 %i.0, !5691, !DIExpression(), !5682)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !5695
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5697

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.0, !dbg !5698
  %add = or disjoint i32 %i.0, 4, !dbg !5700
  %arrayidx1 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add, !dbg !5701
  %add.ptr.idx = shl nuw nsw i32 %i.0, 4, !dbg !5702
  %add.ptr = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr.idx, !dbg !5702
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx1, ptr noundef nonnull %add.ptr) #4, !dbg !5703
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5704
    #dbg_value(i32 %inc, !5691, !DIExpression(), !5682)
  br label %for.cond, !dbg !5705, !llvm.loop !5706

for.end:                                          ; preds = %for.cond
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5708
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk_exp) #4, !dbg !5709
    #dbg_value(i32 1, !5691, !DIExpression(), !5682)
  br label %for.cond5, !dbg !5710

for.cond5:                                        ; preds = %for.body7, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc15, %for.body7 ], !dbg !5712
    #dbg_value(i32 %i.1, !5691, !DIExpression(), !5682)
  %exitcond1 = icmp ne i32 %i.1, %nrounds, !dbg !5713
  br i1 %exitcond1, label %for.body7, label %for.end16, !dbg !5715

for.body7:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5716
  call fastcc void @shift_rows(ptr noundef nonnull %q) #4, !dbg !5718
  call fastcc void @mix_columns(ptr noundef nonnull %q) #4, !dbg !5719
  %add.ptr13.idx = shl nuw nsw i32 %i.1, 6, !dbg !5720
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr13.idx, !dbg !5720
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr13) #4, !dbg !5721
  %inc15 = add nuw nsw i32 %i.1, 1, !dbg !5722
    #dbg_value(i32 %inc15, !5691, !DIExpression(), !5682)
  br label %for.cond5, !dbg !5723, !llvm.loop !5724

for.end16:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5726
  call fastcc void @shift_rows(ptr noundef nonnull %q) #4, !dbg !5727
  %add.ptr20.idx = shl nuw nsw i32 %nrounds, 6, !dbg !5728
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr20.idx, !dbg !5728
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr20) #4, !dbg !5729
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5730
    #dbg_value(i32 0, !5691, !DIExpression(), !5682)
  br label %for.cond22, !dbg !5731

for.cond22:                                       ; preds = %for.body24, %for.end16
  %i.2 = phi i32 [ 0, %for.end16 ], [ %inc32, %for.body24 ], !dbg !5733
    #dbg_value(i32 %i.2, !5691, !DIExpression(), !5682)
  %exitcond2 = icmp ne i32 %i.2, 4, !dbg !5734
  br i1 %exitcond2, label %for.body24, label %for.end33, !dbg !5736

for.body24:                                       ; preds = %for.cond22
  %add.ptr27.idx = shl nuw nsw i32 %i.2, 4, !dbg !5737
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr27.idx, !dbg !5737
  %arrayidx28 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.2, !dbg !5739
  %0 = load i64, ptr %arrayidx28, align 8, !dbg !5739
  %add29 = or disjoint i32 %i.2, 4, !dbg !5740
  %arrayidx30 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add29, !dbg !5741
  %1 = load i64, ptr %arrayidx30, align 8, !dbg !5741
  call fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %add.ptr27, i64 noundef %0, i64 noundef %1) #4, !dbg !5742
  %inc32 = add nuw nsw i32 %i.2, 1, !dbg !5743
    #dbg_value(i32 %inc32, !5691, !DIExpression(), !5682)
  br label %for.cond22, !dbg !5744, !llvm.loop !5745

for.end33:                                        ; preds = %for.cond22
  call fastcc void @br_range_enc32le(ptr noundef %out, ptr noundef nonnull %w, i32 noundef 16) #4, !dbg !5747
  ret void, !dbg !5748
}

; Function Attrs: nounwind
define internal fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk) unnamed_addr #0 !dbg !5749 {
entry:
    #dbg_value(ptr %q, !5752, !DIExpression(), !5753)
    #dbg_value(ptr %sk, !5754, !DIExpression(), !5753)
  %0 = load i64, ptr %sk, align 8, !dbg !5755
  %1 = load i64, ptr %q, align 8, !dbg !5756
  %xor = xor i64 %1, %0, !dbg !5756
  store i64 %xor, ptr %q, align 8, !dbg !5756
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %sk, i32 8, !dbg !5757
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5757
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5758
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5759
  %xor4 = xor i64 %3, %2, !dbg !5759
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !5759
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %sk, i32 16, !dbg !5760
  %4 = load i64, ptr %arrayidx5, align 8, !dbg !5760
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5761
  %5 = load i64, ptr %arrayidx6, align 8, !dbg !5762
  %xor7 = xor i64 %5, %4, !dbg !5762
  store i64 %xor7, ptr %arrayidx6, align 8, !dbg !5762
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %sk, i32 24, !dbg !5763
  %6 = load i64, ptr %arrayidx8, align 8, !dbg !5763
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5764
  %7 = load i64, ptr %arrayidx9, align 8, !dbg !5765
  %xor10 = xor i64 %7, %6, !dbg !5765
  store i64 %xor10, ptr %arrayidx9, align 8, !dbg !5765
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %sk, i32 32, !dbg !5766
  %8 = load i64, ptr %arrayidx11, align 8, !dbg !5766
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5767
  %9 = load i64, ptr %arrayidx12, align 8, !dbg !5768
  %xor13 = xor i64 %9, %8, !dbg !5768
  store i64 %xor13, ptr %arrayidx12, align 8, !dbg !5768
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %sk, i32 40, !dbg !5769
  %10 = load i64, ptr %arrayidx14, align 8, !dbg !5769
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5770
  %11 = load i64, ptr %arrayidx15, align 8, !dbg !5771
  %xor16 = xor i64 %11, %10, !dbg !5771
  store i64 %xor16, ptr %arrayidx15, align 8, !dbg !5771
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %sk, i32 48, !dbg !5772
  %12 = load i64, ptr %arrayidx17, align 8, !dbg !5772
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5773
  %13 = load i64, ptr %arrayidx18, align 8, !dbg !5774
  %xor19 = xor i64 %13, %12, !dbg !5774
  store i64 %xor19, ptr %arrayidx18, align 8, !dbg !5774
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %sk, i32 56, !dbg !5775
  %14 = load i64, ptr %arrayidx20, align 8, !dbg !5775
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5776
  %15 = load i64, ptr %arrayidx21, align 8, !dbg !5777
  %xor22 = xor i64 %15, %14, !dbg !5777
  store i64 %xor22, ptr %arrayidx21, align 8, !dbg !5777
  ret void, !dbg !5778
}

; Function Attrs: nounwind
define internal fastcc void @shift_rows(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5779 {
entry:
    #dbg_value(ptr %q, !5780, !DIExpression(), !5781)
    #dbg_value(i32 0, !5782, !DIExpression(), !5781)
  br label %for.cond, !dbg !5783

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5785
    #dbg_value(i32 %i.0, !5782, !DIExpression(), !5781)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !5786
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5788

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5789
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5789
    #dbg_value(i64 %0, !5791, !DIExpression(), !5792)
  %and = and i64 %0, 65535, !dbg !5793
  %and1 = lshr i64 %0, 4, !dbg !5794
  %shr = and i64 %and1, 268369920, !dbg !5794
  %or = or disjoint i64 %and, %shr, !dbg !5795
  %and2 = shl i64 %0, 12, !dbg !5796
  %shl = and i64 %and2, 4026531840, !dbg !5796
  %or3 = or disjoint i64 %or, %shl, !dbg !5797
  %and4 = lshr i64 %0, 8, !dbg !5798
  %shr5 = and i64 %and4, 1095216660480, !dbg !5798
  %or6 = or disjoint i64 %or3, %shr5, !dbg !5799
  %and7 = shl i64 %0, 8, !dbg !5800
  %shl8 = and i64 %and7, 280375465082880, !dbg !5800
  %or9 = or disjoint i64 %or6, %shl8, !dbg !5801
  %and10 = lshr i64 %0, 12, !dbg !5802
  %shr11 = and i64 %and10, 4222124650659840, !dbg !5802
  %or12 = or disjoint i64 %or9, %shr11, !dbg !5803
  %and13 = shl i64 %0, 4, !dbg !5804
  %shl14 = and i64 %and13, -4503599627370496, !dbg !5804
  %or15 = or i64 %or12, %shl14, !dbg !5805
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5806
  store i64 %or15, ptr %arrayidx16, align 8, !dbg !5807
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5808
    #dbg_value(i32 %inc, !5782, !DIExpression(), !5781)
  br label %for.cond, !dbg !5809, !llvm.loop !5810

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5812
}

; Function Attrs: nounwind
define internal fastcc void @mix_columns(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5813 {
entry:
    #dbg_value(ptr %q, !5814, !DIExpression(), !5815)
  %0 = load i64, ptr %q, align 8, !dbg !5816
    #dbg_value(i64 %0, !5817, !DIExpression(), !5815)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5818
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5818
    #dbg_value(i64 %1, !5819, !DIExpression(), !5815)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5820
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5820
    #dbg_value(i64 %2, !5821, !DIExpression(), !5815)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5822
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5822
    #dbg_value(i64 %3, !5823, !DIExpression(), !5815)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5824
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5824
    #dbg_value(i64 %4, !5825, !DIExpression(), !5815)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5826
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5826
    #dbg_value(i64 %5, !5827, !DIExpression(), !5815)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5828
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5828
    #dbg_value(i64 %6, !5829, !DIExpression(), !5815)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5830
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !5830
    #dbg_value(i64 %7, !5831, !DIExpression(), !5815)
  %8 = shl i64 %0, 48, !dbg !5832
  %9 = lshr i64 %0, 16, !dbg !5832
  %10 = or i64 %8, %9, !dbg !5832
    #dbg_value(i64 %10, !5833, !DIExpression(), !5815)
  %11 = shl i64 %1, 48, !dbg !5834
  %12 = lshr i64 %1, 16, !dbg !5834
  %13 = or i64 %11, %12, !dbg !5834
    #dbg_value(i64 %13, !5835, !DIExpression(), !5815)
  %14 = shl i64 %2, 48, !dbg !5836
  %15 = lshr i64 %2, 16, !dbg !5836
  %16 = or i64 %14, %15, !dbg !5836
    #dbg_value(i64 %16, !5837, !DIExpression(), !5815)
  %17 = shl i64 %3, 48, !dbg !5838
  %18 = lshr i64 %3, 16, !dbg !5838
  %19 = or i64 %17, %18, !dbg !5838
    #dbg_value(i64 %19, !5839, !DIExpression(), !5815)
  %20 = shl i64 %4, 48, !dbg !5840
  %21 = lshr i64 %4, 16, !dbg !5840
  %22 = or i64 %20, %21, !dbg !5840
    #dbg_value(i64 %22, !5841, !DIExpression(), !5815)
  %23 = shl i64 %5, 48, !dbg !5842
  %24 = lshr i64 %5, 16, !dbg !5842
  %25 = or i64 %23, %24, !dbg !5842
    #dbg_value(i64 %25, !5843, !DIExpression(), !5815)
  %26 = shl i64 %6, 48, !dbg !5844
  %27 = lshr i64 %6, 16, !dbg !5844
  %28 = or i64 %26, %27, !dbg !5844
    #dbg_value(i64 %28, !5845, !DIExpression(), !5815)
  %29 = shl i64 %7, 48, !dbg !5846
  %30 = lshr i64 %7, 16, !dbg !5846
  %31 = or i64 %29, %30, !dbg !5846
    #dbg_value(i64 %31, !5847, !DIExpression(), !5815)
  %xor30 = xor i64 %0, %10, !dbg !5848
  %call = call fastcc i64 @rotr32(i64 noundef %xor30) #4, !dbg !5849
  %32 = xor i64 %31, %call, !dbg !5850
  %33 = xor i64 %32, %7, !dbg !5850
  %xor31 = xor i64 %33, %10, !dbg !5850
  store i64 %xor31, ptr %q, align 8, !dbg !5851
  %xor37 = xor i64 %1, %13, !dbg !5852
  %call38 = call fastcc i64 @rotr32(i64 noundef %xor37) #4, !dbg !5853
  %34 = xor i64 %10, %call38, !dbg !5854
  %35 = xor i64 %34, %0, !dbg !5854
  %36 = xor i64 %35, %7, !dbg !5854
  %37 = xor i64 %36, %31, !dbg !5854
  %xor39 = xor i64 %37, %13, !dbg !5854
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5855
  store i64 %xor39, ptr %arrayidx40, align 8, !dbg !5856
  %xor43 = xor i64 %2, %16, !dbg !5857
  %call44 = call fastcc i64 @rotr32(i64 noundef %xor43) #4, !dbg !5858
  %38 = xor i64 %13, %call44, !dbg !5859
  %39 = xor i64 %38, %1, !dbg !5859
  %xor45 = xor i64 %39, %16, !dbg !5859
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5860
  store i64 %xor45, ptr %arrayidx46, align 8, !dbg !5861
  %xor51 = xor i64 %3, %19, !dbg !5862
  %call52 = call fastcc i64 @rotr32(i64 noundef %xor51) #4, !dbg !5863
  %40 = xor i64 %16, %call52, !dbg !5864
  %41 = xor i64 %40, %2, !dbg !5864
  %42 = xor i64 %41, %7, !dbg !5864
  %43 = xor i64 %42, %31, !dbg !5864
  %xor53 = xor i64 %43, %19, !dbg !5864
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5865
  store i64 %xor53, ptr %arrayidx54, align 8, !dbg !5866
  %xor59 = xor i64 %4, %22, !dbg !5867
  %call60 = call fastcc i64 @rotr32(i64 noundef %xor59) #4, !dbg !5868
  %44 = xor i64 %19, %call60, !dbg !5869
  %45 = xor i64 %44, %3, !dbg !5869
  %46 = xor i64 %45, %7, !dbg !5869
  %47 = xor i64 %46, %31, !dbg !5869
  %xor61 = xor i64 %47, %22, !dbg !5869
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5870
  store i64 %xor61, ptr %arrayidx62, align 8, !dbg !5871
  %xor65 = xor i64 %5, %25, !dbg !5872
  %call66 = call fastcc i64 @rotr32(i64 noundef %xor65) #4, !dbg !5873
  %48 = xor i64 %22, %call66, !dbg !5874
  %49 = xor i64 %48, %4, !dbg !5874
  %xor67 = xor i64 %49, %25, !dbg !5874
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5875
  store i64 %xor67, ptr %arrayidx68, align 8, !dbg !5876
  %xor71 = xor i64 %6, %28, !dbg !5877
  %call72 = call fastcc i64 @rotr32(i64 noundef %xor71) #4, !dbg !5878
  %50 = xor i64 %25, %call72, !dbg !5879
  %51 = xor i64 %50, %5, !dbg !5879
  %xor73 = xor i64 %51, %28, !dbg !5879
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5880
  store i64 %xor73, ptr %arrayidx74, align 8, !dbg !5881
  %xor77 = xor i64 %7, %31, !dbg !5882
  %call78 = call fastcc i64 @rotr32(i64 noundef %xor77) #4, !dbg !5883
  %52 = xor i64 %28, %call78, !dbg !5884
  %53 = xor i64 %52, %6, !dbg !5884
  %xor79 = xor i64 %53, %31, !dbg !5884
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5885
  store i64 %xor79, ptr %arrayidx80, align 8, !dbg !5886
  ret void, !dbg !5887
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %w, i64 noundef %q0, i64 noundef %q1) unnamed_addr #0 !dbg !5888 {
entry:
    #dbg_value(ptr %w, !5891, !DIExpression(), !5892)
    #dbg_value(i64 %q0, !5893, !DIExpression(), !5892)
    #dbg_value(i64 %q1, !5894, !DIExpression(), !5892)
  %and = and i64 %q0, 71777214294589695, !dbg !5895
    #dbg_value(i64 %and, !5896, !DIExpression(), !5892)
  %and1 = and i64 %q1, 71777214294589695, !dbg !5897
    #dbg_value(i64 %and1, !5898, !DIExpression(), !5892)
  %shr = lshr i64 %q0, 8, !dbg !5899
  %and2 = and i64 %shr, 71776119077928960, !dbg !5900
    #dbg_value(i64 %shr, !5901, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5892)
  %shr3 = lshr i64 %q1, 8, !dbg !5902
  %and4 = and i64 %shr3, 71776119077928960, !dbg !5903
    #dbg_value(i64 %shr3, !5904, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5892)
  %shr5 = lshr i64 %and, 8, !dbg !5905
  %or = or disjoint i64 %and, %shr5, !dbg !5906
    #dbg_value(i64 %or, !5896, !DIExpression(), !5892)
  %shr6 = lshr i64 %and1, 8, !dbg !5907
  %or7 = or disjoint i64 %and1, %shr6, !dbg !5908
    #dbg_value(i64 %or7, !5898, !DIExpression(), !5892)
  %0 = and i64 %q0, 280375465148160, !dbg !5909
  %1 = or disjoint i64 %and2, %0, !dbg !5909
  %or9 = lshr exact i64 %1, 8, !dbg !5909
    #dbg_value(!DIArgList(i64 %and2, i64 %0), !5901, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5892)
  %2 = and i64 %q1, 280375465148160, !dbg !5910
  %3 = or disjoint i64 %and4, %2, !dbg !5910
  %or11 = lshr exact i64 %3, 8, !dbg !5910
    #dbg_value(!DIArgList(i64 %and4, i64 %2), !5904, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5892)
  %and12 = and i64 %or, 281470681808895, !dbg !5911
    #dbg_value(i64 %and12, !5896, !DIExpression(), !5892)
  %and13 = and i64 %or7, 281470681808895, !dbg !5912
    #dbg_value(i64 %and13, !5898, !DIExpression(), !5892)
    #dbg_value(i64 %or9, !5901, !DIExpression(), !5892)
    #dbg_value(i64 %or11, !5904, !DIExpression(), !5892)
  %shr16 = lshr i64 %and12, 16, !dbg !5913
  %or181 = or disjoint i64 %and12, %shr16, !dbg !5914
  %or18 = trunc i64 %or181 to i32, !dbg !5914
  store i32 %or18, ptr %w, align 4, !dbg !5915
  %shr20 = lshr i64 %and13, 16, !dbg !5916
  %or222 = or disjoint i64 %and13, %shr20, !dbg !5917
  %or22 = trunc i64 %or222 to i32, !dbg !5917
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5918
  store i32 %or22, ptr %arrayidx23, align 4, !dbg !5919
  %shr25 = lshr i64 %1, 24, !dbg !5920
  %or273 = or disjoint i64 %or9, %shr25, !dbg !5921
  %or27 = trunc i64 %or273 to i32, !dbg !5921
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5922
  store i32 %or27, ptr %arrayidx28, align 4, !dbg !5923
  %shr30 = lshr i64 %3, 24, !dbg !5924
  %or324 = or disjoint i64 %or11, %shr30, !dbg !5925
  %or32 = trunc i64 %or324 to i32, !dbg !5925
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5926
  store i32 %or32, ptr %arrayidx33, align 4, !dbg !5927
  ret void, !dbg !5928
}

; Function Attrs: nounwind
define internal fastcc void @br_range_enc32le(ptr noundef %dst, ptr noundef nonnull %v, i32 noundef %num) unnamed_addr #0 !dbg !5929 {
entry:
    #dbg_value(ptr %dst, !5932, !DIExpression(), !5933)
    #dbg_value(ptr %v, !5934, !DIExpression(), !5933)
    #dbg_value(i32 16, !5935, !DIExpression(), !5933)
  br label %while.cond, !dbg !5936

while.cond:                                       ; preds = %while.body, %entry
  %num.addr.0 = phi i32 [ 16, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
  %dst.addr.0 = phi ptr [ %dst, %entry ], [ %add.ptr, %while.body ]
    #dbg_value(ptr %dst.addr.0, !5932, !DIExpression(), !5933)
    #dbg_value(ptr %v.addr.0, !5934, !DIExpression(), !5933)
    #dbg_value(i32 %num.addr.0, !5935, !DIExpression(), !5933)
    #dbg_value(i32 %num.addr.0, !5935, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5933)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5937
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5936

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5938
    #dbg_value(i32 %dec, !5935, !DIExpression(), !5933)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5939
    #dbg_value(ptr %incdec.ptr, !5934, !DIExpression(), !5933)
  %0 = load i32, ptr %v.addr.0, align 4, !dbg !5941
  call fastcc void @br_enc32le(ptr noundef %dst.addr.0, i32 noundef %0) #4, !dbg !5942
  %add.ptr = getelementptr inbounds nuw i8, ptr %dst.addr.0, i32 4, !dbg !5943
    #dbg_value(ptr %add.ptr, !5932, !DIExpression(), !5933)
  br label %while.cond, !dbg !5936, !llvm.loop !5944

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5946
}

; Function Attrs: nounwind
define internal fastcc void @br_enc32le(ptr noundef %dst, i32 noundef %x) unnamed_addr #0 !dbg !5947 {
entry:
    #dbg_value(ptr %dst, !5950, !DIExpression(), !5951)
    #dbg_value(i32 %x, !5952, !DIExpression(), !5951)
  %conv = trunc i32 %x to i8, !dbg !5953
  store i8 %conv, ptr %dst, align 1, !dbg !5954
  %shr = lshr i32 %x, 8, !dbg !5955
  %conv1 = trunc i32 %shr to i8, !dbg !5956
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %dst, i32 1, !dbg !5957
  store i8 %conv1, ptr %arrayidx2, align 1, !dbg !5958
  %shr3 = lshr i32 %x, 16, !dbg !5959
  %conv4 = trunc i32 %shr3 to i8, !dbg !5960
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %dst, i32 2, !dbg !5961
  store i8 %conv4, ptr %arrayidx5, align 1, !dbg !5962
  %shr6 = lshr i32 %x, 24, !dbg !5963
  %conv7 = trunc nuw i32 %shr6 to i8, !dbg !5964
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %dst, i32 3, !dbg !5965
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !5966
  ret void, !dbg !5967
}

; Function Attrs: nounwind
define internal fastcc i64 @rotr32(i64 noundef %x) unnamed_addr #0 !dbg !5968 {
entry:
    #dbg_value(i64 %x, !5971, !DIExpression(), !5972)
  %0 = shl i64 %x, 32, !dbg !5973
  %1 = lshr i64 %x, 32, !dbg !5973
  %2 = or i64 %0, %1, !dbg !5973
  ret i64 %2, !dbg !5974
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5975 {
entry:
    #dbg_value(ptr %out, !5978, !DIExpression(), !5979)
    #dbg_value(i32 %outlen, !5980, !DIExpression(), !5979)
    #dbg_value(ptr %iv, !5981, !DIExpression(), !5979)
    #dbg_value(ptr %ctx, !5982, !DIExpression(), !5979)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5983
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 10) #4, !dbg !5984
  ret void, !dbg !5985
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5986 {
entry:
  %ivw = alloca [16 x i32], align 4
  %tmp = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5989, !DIExpression(), !5990)
    #dbg_value(i32 %outlen, !5991, !DIExpression(), !5990)
    #dbg_value(ptr %iv, !5992, !DIExpression(), !5990)
    #dbg_value(ptr %rkeys, !5993, !DIExpression(), !5990)
    #dbg_value(i32 %nrounds, !5994, !DIExpression(), !5990)
    #dbg_declare(ptr %ivw, !5995, !DIExpression(), !5996)
    #dbg_value(i32 0, !5997, !DIExpression(), !5990)
  call fastcc void @br_range_dec32le(ptr noundef nonnull %ivw, i32 noundef 3, ptr noundef %iv) #4, !dbg !5998
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 16, !dbg !5999
  %call = call ptr @memcpy(ptr noundef nonnull %add.ptr, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !6000
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %ivw, i32 32, !dbg !6001
  %call6 = call ptr @memcpy(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !6002
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %ivw, i32 48, !dbg !6003
  %call10 = call ptr @memcpy(ptr noundef nonnull %add.ptr8, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !6004
  %call11 = call fastcc i32 @br_swap32(i32 noundef 0) #4, !dbg !6005
  %arrayidx = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !6006
  store i32 %call11, ptr %arrayidx, align 4, !dbg !6007
  %call12 = call fastcc i32 @br_swap32(i32 noundef 1) #4, !dbg !6008
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !6009
  store i32 %call12, ptr %arrayidx13, align 4, !dbg !6010
  %call15 = call fastcc i32 @br_swap32(i32 noundef 2) #4, !dbg !6011
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !6012
  store i32 %call15, ptr %arrayidx16, align 4, !dbg !6013
  %call18 = call fastcc i32 @br_swap32(i32 noundef 3) #4, !dbg !6014
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !6015
  store i32 %call18, ptr %arrayidx19, align 4, !dbg !6016
  br label %while.cond, !dbg !6017

while.cond:                                       ; preds = %while.body, %entry
  %outlen.addr.0 = phi i32 [ %outlen, %entry ], [ %sub, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr21, %while.body ]
    #dbg_value(ptr %out.addr.0, !5989, !DIExpression(), !5990)
    #dbg_value(i32 %outlen.addr.0, !5991, !DIExpression(), !5990)
  %cmp = icmp ugt i32 %outlen.addr.0, 64, !dbg !6018
  br i1 %cmp, label %while.body, label %while.end, !dbg !6017

while.body:                                       ; preds = %while.cond
  call fastcc void @aes_ctr4x(ptr noundef %out.addr.0, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !6019
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !6021
    #dbg_value(ptr %add.ptr21, !5989, !DIExpression(), !5990)
  %sub = add i32 %outlen.addr.0, -64, !dbg !6022
    #dbg_value(i32 %sub, !5991, !DIExpression(), !5990)
  br label %while.cond, !dbg !6017, !llvm.loop !6023

while.end:                                        ; preds = %while.cond
  %outlen.addr.0.lcssa = phi i32 [ %outlen.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %cmp22.not = icmp eq i32 %outlen.addr.0.lcssa, 0, !dbg !6025
  br i1 %cmp22.not, label %if.end, label %if.then, !dbg !6025

if.then:                                          ; preds = %while.end
    #dbg_declare(ptr %tmp, !6027, !DIExpression(), !6029)
  call fastcc void @aes_ctr4x(ptr noundef nonnull %tmp, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !6030
    #dbg_value(i32 0, !6031, !DIExpression(), !5990)
  br label %for.cond, !dbg !6032

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !6034
    #dbg_value(i32 %i.0, !6031, !DIExpression(), !5990)
  %cmp25 = icmp ult i32 %i.0, %outlen.addr.0.lcssa, !dbg !6035
  br i1 %cmp25, label %for.body, label %if.end.loopexit, !dbg !6037

for.body:                                         ; preds = %for.cond
  %arrayidx26 = getelementptr inbounds nuw [64 x i8], ptr %tmp, i32 0, i32 %i.0, !dbg !6038
  %0 = load i8, ptr %arrayidx26, align 1, !dbg !6038
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out.addr.0.lcssa, i32 %i.0, !dbg !6040
  store i8 %0, ptr %arrayidx27, align 1, !dbg !6041
  %inc = add nuw nsw i32 %i.0, 1, !dbg !6042
    #dbg_value(i32 %inc, !6031, !DIExpression(), !5990)
  br label %for.cond, !dbg !6043, !llvm.loop !6044

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !6046

if.end:                                           ; preds = %if.end.loopexit, %while.end
  ret void, !dbg !6046
}

; Function Attrs: nounwind
define internal fastcc i32 @br_swap32(i32 noundef %x) unnamed_addr #0 !dbg !6047 {
entry:
    #dbg_value(i32 %x, !6048, !DIExpression(), !6049)
    #dbg_value(!DIArgList(i32 %x, i32 %x), !6048, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 18446744073692839680, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shr, DW_OP_constu, 16711935, DW_OP_and, DW_OP_or, DW_OP_stack_value), !6049)
  %0 = and i32 %x, 255, !dbg !6050
  %1 = shl i32 %0, 24, !dbg !6050
  %2 = and i32 %x, 65280, !dbg !6050
  %3 = shl i32 %2, 8, !dbg !6050
  %4 = and i32 %x, 16711680, !dbg !6050
  %5 = lshr i32 %4, 8, !dbg !6050
  %6 = and i32 %x, -16777216, !dbg !6050
  %7 = lshr i32 %6, 24, !dbg !6050
  %8 = or i32 %1, %3, !dbg !6050
  %9 = or i32 %8, %5, !dbg !6050
  %10 = or i32 %9, %7, !dbg !6050
  ret i32 %10, !dbg !6051
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !6052 {
entry:
    #dbg_value(ptr %out, !6055, !DIExpression(), !6056)
    #dbg_value(ptr %ivw, !6057, !DIExpression(), !6056)
    #dbg_value(ptr %sk_exp, !6058, !DIExpression(), !6056)
    #dbg_value(i32 %nrounds, !6059, !DIExpression(), !6056)
  call fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef %ivw, ptr noundef %sk_exp, i32 noundef %nrounds) #4, !dbg !6060
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !6061
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr) #4, !dbg !6062
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !6063
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr1) #4, !dbg !6064
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !6065
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr2) #4, !dbg !6066
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !6067
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr3) #4, !dbg !6068
  ret void, !dbg !6069
}

; Function Attrs: nounwind
define internal fastcc void @inc4_be(ptr noundef nonnull %x) unnamed_addr #0 !dbg !6070 {
entry:
    #dbg_value(ptr %x, !6073, !DIExpression(), !6074)
  %0 = load i32, ptr %x, align 4, !dbg !6075
  %call = call fastcc i32 @br_swap32(i32 noundef %0) #4, !dbg !6076
  %add = add i32 %call, 4, !dbg !6077
    #dbg_value(i32 %add, !6078, !DIExpression(), !6074)
  %call1 = call fastcc i32 @br_swap32(i32 noundef %add) #4, !dbg !6079
  store i32 %call1, ptr %x, align 4, !dbg !6080
  ret void, !dbg !6081
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6082 {
entry:
    #dbg_value(ptr %out, !6087, !DIExpression(), !6088)
    #dbg_value(ptr %in, !6089, !DIExpression(), !6088)
    #dbg_value(i32 %nblocks, !6090, !DIExpression(), !6088)
    #dbg_value(ptr %ctx, !6091, !DIExpression(), !6088)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6092
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 12) #4, !dbg !6093
  ret void, !dbg !6094
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6095 {
entry:
    #dbg_value(ptr %out, !6098, !DIExpression(), !6099)
    #dbg_value(i32 %outlen, !6100, !DIExpression(), !6099)
    #dbg_value(ptr %iv, !6101, !DIExpression(), !6099)
    #dbg_value(ptr %ctx, !6102, !DIExpression(), !6099)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6103
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 12) #4, !dbg !6104
  ret void, !dbg !6105
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6106 {
entry:
    #dbg_value(ptr %out, !6111, !DIExpression(), !6112)
    #dbg_value(ptr %in, !6113, !DIExpression(), !6112)
    #dbg_value(i32 %nblocks, !6114, !DIExpression(), !6112)
    #dbg_value(ptr %ctx, !6115, !DIExpression(), !6112)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6116
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 14) #4, !dbg !6117
  ret void, !dbg !6118
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6119 {
entry:
    #dbg_value(ptr %out, !6122, !DIExpression(), !6123)
    #dbg_value(i32 %outlen, !6124, !DIExpression(), !6123)
    #dbg_value(ptr %iv, !6125, !DIExpression(), !6123)
    #dbg_value(ptr %ctx, !6126, !DIExpression(), !6123)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6127
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 14) #4, !dbg !6128
  ret void, !dbg !6129
}

; Function Attrs: nounwind
define dso_local void @aes128_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6130 {
entry:
    #dbg_value(ptr %r, !6133, !DIExpression(), !6134)
  %0 = load ptr, ptr %r, align 4, !dbg !6135
  call void @free(ptr noundef %0) #6, !dbg !6136
  ret void, !dbg !6137
}

; Function Attrs: nounwind
define dso_local void @aes192_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6138 {
entry:
    #dbg_value(ptr %r, !6141, !DIExpression(), !6142)
  %0 = load ptr, ptr %r, align 4, !dbg !6143
  call void @free(ptr noundef %0) #6, !dbg !6144
  ret void, !dbg !6145
}

; Function Attrs: nounwind
define dso_local void @aes256_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6146 {
entry:
    #dbg_value(ptr %r, !6149, !DIExpression(), !6150)
  %0 = load ptr, ptr %r, align 4, !dbg !6151
  call void @free(ptr noundef %0) #6, !dbg !6152
  ret void, !dbg !6153
}

; Function Attrs: nounwind
define dso_local i32 @AES_128_CTR(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef %input, i32 noundef %inputByteLen) local_unnamed_addr #0 !dbg !6154 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
  %iv = alloca [16 x i8], align 1
    #dbg_value(ptr %output, !6157, !DIExpression(), !6158)
    #dbg_value(i32 %outputByteLen, !6159, !DIExpression(), !6158)
    #dbg_value(ptr %input, !6160, !DIExpression(), !6158)
    #dbg_value(i32 %inputByteLen, !6161, !DIExpression(), !6158)
    #dbg_declare(ptr %ctx, !6162, !DIExpression(), !6163)
    #dbg_declare(ptr %iv, !6164, !DIExpression(), !6165)
  call void @mayo_memset(ptr %iv, i8 0, i32 16), !dbg !6165
  call void @aes128_ctr_keyexp(ptr noundef nonnull %ctx, ptr noundef %input) #4, !dbg !6166
  call void @aes128_ctr(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef nonnull %iv, ptr noundef nonnull %ctx) #4, !dbg !6167
  call void @aes128_ctx_release(ptr noundef nonnull %ctx) #4, !dbg !6168
  ret i32 %outputByteLen, !dbg !6169
}

; Function Attrs: nounwind
define dso_local void @AES_256_ECB(ptr noundef %input, ptr noundef %key, ptr noundef %output) local_unnamed_addr #0 !dbg !6170 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %input, !6173, !DIExpression(), !6174)
    #dbg_value(ptr %key, !6175, !DIExpression(), !6174)
    #dbg_value(ptr %output, !6176, !DIExpression(), !6174)
    #dbg_declare(ptr %ctx, !6177, !DIExpression(), !6178)
  call void @aes256_ecb_keyexp(ptr noundef nonnull %ctx, ptr noundef %key) #4, !dbg !6179
  call void @aes256_ecb(ptr noundef %output, ptr noundef %input, i32 noundef 1, ptr noundef nonnull %ctx) #4, !dbg !6180
  call void @aes256_ctx_release(ptr noundef nonnull %ctx) #4, !dbg !6181
  ret void, !dbg !6182
}

; Function Attrs: nounwind
define dso_local void @mayo_secure_free(ptr noundef %mem, i32 noundef %size) local_unnamed_addr #0 !dbg !86 {
entry:
    #dbg_value(ptr %mem, !6183, !DIExpression(), !6184)
    #dbg_value(i32 %size, !6185, !DIExpression(), !6184)
  %tobool.not = icmp eq ptr %mem, null, !dbg !6186
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !6186

if.then:                                          ; preds = %entry
  %0 = load volatile ptr, ptr @mayo_secure_free.memset_func, align 4, !dbg !6188
  %call = call ptr %0(ptr noundef nonnull %mem, i32 noundef 0, i32 noundef %size) #6, !dbg !6188
  call void @free(ptr noundef nonnull %mem) #6, !dbg !6190
  br label %if.end, !dbg !6191

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6192
}

; Function Attrs: nounwind
define dso_local void @mayo_secure_clear(ptr noundef %mem, i32 noundef %size) local_unnamed_addr #0 !dbg !94 {
entry:
    #dbg_value(ptr %mem, !6193, !DIExpression(), !6194)
    #dbg_value(i32 %size, !6195, !DIExpression(), !6194)
  %0 = load volatile ptr, ptr @mayo_secure_clear.memset_func, align 4, !dbg !6196
  %call = call ptr %0(ptr noundef %mem, i32 noundef 0, i32 noundef %size) #6, !dbg !6196
  ret void, !dbg !6197
}

; Function Attrs: nounwind
define dso_local void @AES256_CTR_DRBG_Update(ptr noundef %provided_data, ptr noundef %Key, ptr noundef %V) local_unnamed_addr #0 !dbg !6198 {
entry:
  %temp = alloca [48 x i8], align 1
    #dbg_value(ptr %provided_data, !6201, !DIExpression(), !6202)
    #dbg_value(ptr %Key, !6203, !DIExpression(), !6202)
    #dbg_value(ptr %V, !6204, !DIExpression(), !6202)
    #dbg_declare(ptr %temp, !6205, !DIExpression(), !6209)
    #dbg_value(i32 0, !6210, !DIExpression(), !6212)
  br label %for.cond, !dbg !6213

for.cond:                                         ; preds = %for.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.end ], !dbg !6214
    #dbg_value(i32 %i.0, !6210, !DIExpression(), !6212)
  %exitcond = icmp ne i32 %i.0, 3, !dbg !6215
  br i1 %exitcond, label %for.cond1.preheader, label %for.end10, !dbg !6217

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !6218

for.cond1:                                        ; preds = %for.cond1.preheader, %if.then
  %j.0 = phi i32 [ %dec, %if.then ], [ 15, %for.cond1.preheader ], !dbg !6221
    #dbg_value(i32 %j.0, !6222, !DIExpression(), !6223)
  %cmp2 = icmp sgt i32 %j.0, -1, !dbg !6224
  br i1 %cmp2, label %for.body3, label %for.end.loopexit, !dbg !6218

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw i8, ptr %V, i32 %j.0, !dbg !6226
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6226
  %cmp4 = icmp eq i8 %0, -1, !dbg !6229
  br i1 %cmp4, label %if.then, label %if.else, !dbg !6229

if.then:                                          ; preds = %for.body3
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %V, i32 %j.0, !dbg !6230
  store i8 0, ptr %arrayidx6, align 1, !dbg !6232
  %dec = add nsw i32 %j.0, -1, !dbg !6233
    #dbg_value(i32 %dec, !6222, !DIExpression(), !6223)
  br label %for.cond1, !dbg !6234, !llvm.loop !6235

if.else:                                          ; preds = %for.body3
  %j.0.lcssa2 = phi i32 [ %j.0, %for.body3 ], !dbg !6221
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %V, i32 %j.0.lcssa2, !dbg !6237
  %1 = load i8, ptr %arrayidx7, align 1, !dbg !6239
  %inc = add i8 %1, 1, !dbg !6239
  store i8 %inc, ptr %arrayidx7, align 1, !dbg !6239
  br label %for.end, !dbg !6240

for.end.loopexit:                                 ; preds = %for.cond1
  br label %for.end, !dbg !6241

for.end:                                          ; preds = %for.end.loopexit, %if.else
  %mul = shl nuw nsw i32 %i.0, 4, !dbg !6241
  %add.ptr = getelementptr inbounds nuw i8, ptr %temp, i32 %mul, !dbg !6242
  call fastcc void @AES256_ECB(ptr noundef %Key, ptr noundef %V, ptr noundef nonnull %add.ptr) #4, !dbg !6243
  %inc9 = add nuw nsw i32 %i.0, 1, !dbg !6244
    #dbg_value(i32 %inc9, !6210, !DIExpression(), !6212)
  br label %for.cond, !dbg !6245, !llvm.loop !6246

for.end10:                                        ; preds = %for.cond
  %cmp11.not = icmp eq ptr %provided_data, null, !dbg !6248
  br i1 %cmp11.not, label %if.end27, label %for.cond15.preheader, !dbg !6248

for.cond15.preheader:                             ; preds = %for.end10
  br label %for.cond15, !dbg !6250

for.cond15:                                       ; preds = %for.cond15.preheader, %for.body18
  %i14.0 = phi i32 [ %inc25, %for.body18 ], [ 0, %for.cond15.preheader ], !dbg !6252
    #dbg_value(i32 %i14.0, !6253, !DIExpression(), !6254)
  %exitcond3 = icmp ne i32 %i14.0, 48, !dbg !6255
  br i1 %exitcond3, label %for.body18, label %if.end27.loopexit, !dbg !6250

for.body18:                                       ; preds = %for.cond15
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %provided_data, i32 %i14.0, !dbg !6257
  %2 = load i8, ptr %arrayidx19, align 1, !dbg !6257
  %arrayidx21 = getelementptr inbounds nuw [48 x i8], ptr %temp, i32 0, i32 %i14.0, !dbg !6259
  %3 = load i8, ptr %arrayidx21, align 1, !dbg !6260
  %xor1 = xor i8 %3, %2, !dbg !6260
  store i8 %xor1, ptr %arrayidx21, align 1, !dbg !6260
  %inc25 = add nuw nsw i32 %i14.0, 1, !dbg !6261
    #dbg_value(i32 %inc25, !6253, !DIExpression(), !6254)
  br label %for.cond15, !dbg !6262, !llvm.loop !6263

if.end27.loopexit:                                ; preds = %for.cond15
  br label %if.end27, !dbg !6265

if.end27:                                         ; preds = %if.end27.loopexit, %for.end10
  %call = call ptr @memcpy(ptr noundef %Key, ptr noundef nonnull %temp, i32 noundef 32) #6, !dbg !6265
  %add.ptr30 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !6266
  %call31 = call ptr @memcpy(ptr noundef %V, ptr noundef nonnull %add.ptr30, i32 noundef 16) #6, !dbg !6267
  ret void, !dbg !6268
}

; Function Attrs: nounwind
define internal fastcc void @AES256_ECB(ptr noundef %key, ptr noundef %ctr, ptr noundef nonnull %buffer) unnamed_addr #0 !dbg !6269 {
entry:
    #dbg_value(ptr %key, !6270, !DIExpression(), !6271)
    #dbg_value(ptr %ctr, !6272, !DIExpression(), !6271)
    #dbg_value(ptr %buffer, !6273, !DIExpression(), !6271)
  call void @AES_256_ECB(ptr noundef %ctr, ptr noundef %key, ptr noundef nonnull %buffer) #4, !dbg !6274
  ret void, !dbg !6275
}

; Function Attrs: nounwind
define dso_local i32 @randombytes(ptr noundef %random_array, i32 noundef %nbytes) local_unnamed_addr #0 !dbg !6276 {
entry:
    #dbg_value(ptr %random_array, !6279, !DIExpression(), !6280)
    #dbg_value(i32 %nbytes, !6281, !DIExpression(), !6280)
  %call = call fastcc i32 @randombytes_nist(ptr noundef %random_array, i32 noundef %nbytes) #4, !dbg !6282
    #dbg_value(i32 0, !6283, !DIExpression(), !6280)
  ret i32 0, !dbg !6284
}

; Function Attrs: nounwind
define internal fastcc i32 @randombytes_nist(ptr noundef %x, i32 noundef %xlen) unnamed_addr #0 !dbg !6285 {
entry:
  %block = alloca [16 x i8], align 1
    #dbg_value(ptr %x, !6286, !DIExpression(), !6287)
    #dbg_value(i32 %xlen, !6288, !DIExpression(), !6287)
    #dbg_declare(ptr %block, !6289, !DIExpression(), !6290)
    #dbg_value(i32 0, !6291, !DIExpression(), !6287)
  br label %while.cond, !dbg !6292

while.cond:                                       ; preds = %if.end15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %i.1, %if.end15 ], !dbg !6287
  %xlen.addr.0 = phi i32 [ %xlen, %entry ], [ %xlen.addr.1, %if.end15 ]
    #dbg_value(i32 %xlen.addr.0, !6288, !DIExpression(), !6287)
    #dbg_value(i32 %i.0, !6291, !DIExpression(), !6287)
  %cmp.not = icmp eq i32 %xlen.addr.0, 0, !dbg !6293
  br i1 %cmp.not, label %while.end, label %for.cond.preheader, !dbg !6292

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !6294

for.cond:                                         ; preds = %for.cond.preheader, %if.then
  %j.0 = phi i32 [ %dec, %if.then ], [ 15, %for.cond.preheader ], !dbg !6297
    #dbg_value(i32 %j.0, !6298, !DIExpression(), !6299)
  %cmp1 = icmp sgt i32 %j.0, -1, !dbg !6300
  br i1 %cmp1, label %for.body, label %for.end.loopexit, !dbg !6294

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0, !dbg !6302
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6302
  %cmp2 = icmp eq i8 %0, -1, !dbg !6305
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6305

if.then:                                          ; preds = %for.body
  %arrayidx4 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0, !dbg !6306
  store i8 0, ptr %arrayidx4, align 1, !dbg !6308
  %dec = add nsw i32 %j.0, -1, !dbg !6309
    #dbg_value(i32 %dec, !6298, !DIExpression(), !6299)
  br label %for.cond, !dbg !6310, !llvm.loop !6311

if.else:                                          ; preds = %for.body
  %j.0.lcssa1 = phi i32 [ %j.0, %for.body ], !dbg !6297
  %arrayidx5 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0.lcssa1, !dbg !6313
  %1 = load i8, ptr %arrayidx5, align 1, !dbg !6315
  %inc = add i8 %1, 1, !dbg !6315
  store i8 %inc, ptr %arrayidx5, align 1, !dbg !6315
  br label %for.end, !dbg !6316

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !6317

for.end:                                          ; preds = %for.end.loopexit, %if.else
  call fastcc void @AES256_ECB(ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), ptr noundef nonnull %block) #4, !dbg !6317
  %cmp6 = icmp ugt i32 %xlen.addr.0, 15, !dbg !6318
  br i1 %cmp6, label %if.then8, label %if.else10, !dbg !6318

if.then8:                                         ; preds = %for.end
  %add.ptr = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !6320
  %call = call ptr @memcpy(ptr noundef %add.ptr, ptr noundef nonnull %block, i32 noundef 16) #6, !dbg !6322
  %add = add i32 %i.0, 16, !dbg !6323
    #dbg_value(i32 %add, !6291, !DIExpression(), !6287)
  %sub = add i32 %xlen.addr.0, -16, !dbg !6324
    #dbg_value(i32 %sub, !6288, !DIExpression(), !6287)
  br label %if.end15, !dbg !6325

if.else10:                                        ; preds = %for.end
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !6326
  %call13 = call ptr @memcpy(ptr noundef %add.ptr11, ptr noundef nonnull %block, i32 noundef %xlen.addr.0) #6, !dbg !6328
  %add14 = add i32 %i.0, %xlen.addr.0, !dbg !6329
    #dbg_value(i32 %add14, !6291, !DIExpression(), !6287)
    #dbg_value(i32 0, !6288, !DIExpression(), !6287)
  br label %if.end15

if.end15:                                         ; preds = %if.else10, %if.then8
  %i.1 = phi i32 [ %add, %if.then8 ], [ %add14, %if.else10 ], !dbg !6330
  %xlen.addr.1 = phi i32 [ %sub, %if.then8 ], [ 0, %if.else10 ], !dbg !6330
    #dbg_value(i32 %xlen.addr.1, !6288, !DIExpression(), !6287)
    #dbg_value(i32 %i.1, !6291, !DIExpression(), !6287)
  br label %while.cond, !dbg !6292, !llvm.loop !6331

while.end:                                        ; preds = %while.cond
  call void @AES256_CTR_DRBG_Update(ptr noundef null, ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32)) #4, !dbg !6333
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6334
  %inc16 = add nsw i32 %2, 1, !dbg !6334
  store i32 %inc16, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6334
  ret i32 poison, !dbg !6335
}

; Function Attrs: nounwind
define dso_local void @randombytes_init(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) local_unnamed_addr #0 !dbg !6336 {
entry:
    #dbg_value(ptr %entropy_input, !6339, !DIExpression(), !6340)
    #dbg_value(ptr %personalization_string, !6341, !DIExpression(), !6340)
    #dbg_value(i32 %security_strength, !6342, !DIExpression(), !6340)
  call fastcc void @randombytes_init_nist(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) #4, !dbg !6343
  ret void, !dbg !6344
}

; Function Attrs: nounwind
define internal fastcc void @randombytes_init_nist(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) unnamed_addr #0 !dbg !6345 {
entry:
  %seed_material = alloca [48 x i8], align 1
    #dbg_value(ptr %entropy_input, !6346, !DIExpression(), !6347)
    #dbg_value(ptr %personalization_string, !6348, !DIExpression(), !6347)
    #dbg_value(i32 %security_strength, !6349, !DIExpression(), !6347)
    #dbg_declare(ptr %seed_material, !6350, !DIExpression(), !6351)
  %call = call ptr @memcpy(ptr noundef nonnull %seed_material, ptr noundef %entropy_input, i32 noundef 48) #6, !dbg !6352
  %tobool.not = icmp eq ptr %personalization_string, null, !dbg !6353
  br i1 %tobool.not, label %if.end, label %for.cond.preheader, !dbg !6353

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !6355

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !6357
    #dbg_value(i32 %i.0, !6358, !DIExpression(), !6359)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !6360
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !6355

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %personalization_string, i32 %i.0, !dbg !6362
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6362
  %arrayidx1 = getelementptr inbounds nuw [48 x i8], ptr %seed_material, i32 0, i32 %i.0, !dbg !6364
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !6365
  %xor1 = xor i8 %1, %0, !dbg !6365
  store i8 %xor1, ptr %arrayidx1, align 1, !dbg !6365
  %inc = add nuw nsw i32 %i.0, 1, !dbg !6366
    #dbg_value(i32 %inc, !6358, !DIExpression(), !6359)
  br label %for.cond, !dbg !6367, !llvm.loop !6368

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !6370

if.end:                                           ; preds = %if.end.loopexit, %entry
  %call4 = call ptr @memset(ptr noundef nonnull @DRBG_ctx, i32 noundef 0, i32 noundef 32) #6, !dbg !6370
  %call5 = call ptr @memset(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 noundef 0, i32 noundef 16) #6, !dbg !6371
  call void @AES256_CTR_DRBG_Update(ptr noundef nonnull %seed_material, ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32)) #4, !dbg !6372
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6373
  ret void, !dbg !6374
}

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }
attributes #1 = { allocsize(0,1) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }
attributes #3 = { allocsize(0) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind allocsize(0,1) "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind allocsize(0) "no-builtins" }

!llvm.dbg.cu = !{!120, !122, !2, !43, !66, !77, !90, !104}
!llvm.ident = !{!123, !123, !123, !123, !123, !123, !123, !123}
!llvm.module.flags = !{!124, !125, !126, !127}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "f_tail", scope: !2, file: !36, line: 247, type: !37, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !21, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../src/<stdin>", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!4 = !{!5, !11, !14, !15, !18, !19}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 60, baseType: !8)
!7 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/sys/_stdint.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 105, baseType: !10)
!9 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/machine/_default_types.h", directory: "")
!10 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 24, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 43, baseType: !14)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 214, baseType: !17)
!16 = !DIFile(filename: "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stddef.h", directory: "")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 48, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 79, baseType: !17)
!21 = !{!0, !22, !30, !32, !34}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "even_nibbles", scope: !24, file: !25, line: 112, type: !29, isLocal: true, isDefinition: true)
!24 = distinct !DISubprogram(name: "transpose_16x16_nibbles", scope: !25, file: !25, line: 111, type: !26, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!25 = !DIFile(filename: "../../../src/mayo.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!26 = !DISubroutineType(types: !27)
!27 = !{null, !5}
!28 = !{}
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "even_bytes", scope: !24, file: !25, line: 113, type: !29, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "even_2bytes", scope: !24, file: !25, line: 114, type: !29, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "even_half", scope: !24, file: !25, line: 115, type: !29, isLocal: true, isDefinition: true)
!36 = !DIFile(filename: "../../../include/mayo.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32, elements: !39)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!39 = !{!40}
!40 = !DISubrange(count: 4)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_1_ref_uint32_t_blocker", scope: !43, file: !58, line: 126, type: !63, isLocal: false, isDefinition: true)
!43 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !44, globals: !55, splitDebugInlining: false, nameTableKind: None)
!44 = !{!6, !45, !46, !18, !19, !49, !50, !53}
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 56, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !9, line: 103, baseType: !48)
!48 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !7, line: 20, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !9, line: 41, baseType: !52)
!52 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 44, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !9, line: 77, baseType: !45)
!55 = !{!41, !56, !60}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_1_ref_uint64_t_blocker", scope: !43, file: !58, line: 127, type: !59, isLocal: false, isDefinition: true)
!58 = !DIFile(filename: "../../../src/arithmetic.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!59 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_1_ref_unsigned_char_blocker", scope: !43, file: !58, line: 128, type: !62, isLocal: false, isDefinition: true)
!62 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!63 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !19)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "KeccakF_RoundConstants", scope: !66, file: !71, line: 214, type: !72, isLocal: true, isDefinition: true)
!66 = distinct !DICompileUnit(language: DW_LANG_C11, file: !67, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !68, globals: !70, splitDebugInlining: false, nameTableKind: None)
!67 = !DIFile(filename: "../../../src/common/<stdin>", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!68 = !{!69, !19, !6, !15, !12}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!70 = !{!64}
!71 = !DIFile(filename: "../../../src/common/fips202.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 1536, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 24)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "Rcon", scope: !77, file: !80, line: 388, type: !81, isLocal: true, isDefinition: true)
!77 = distinct !DICompileUnit(language: DW_LANG_C11, file: !67, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !78, globals: !79, splitDebugInlining: false, nameTableKind: None)
!78 = !{!69, !45, !6, !19, !14}
!79 = !{!75}
!80 = !DIFile(filename: "../../../src/common/aes_c.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 80, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 10)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "memset_func", scope: !86, file: !87, line: 10, type: !100, isLocal: true, isDefinition: true)
!86 = distinct !DISubprogram(name: "mayo_secure_free", scope: !87, file: !87, line: 7, type: !88, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !28)
!87 = !DIFile(filename: "../../../src/common/mem.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!88 = !DISubroutineType(types: !89)
!89 = !{null, !69, !15}
!90 = distinct !DICompileUnit(language: DW_LANG_C11, file: !67, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !91, splitDebugInlining: false, nameTableKind: None)
!91 = !{!84, !92}
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "memset_func", scope: !94, file: !87, line: 17, type: !95, isLocal: true, isDefinition: true)
!94 = distinct !DISubprogram(name: "mayo_secure_clear", scope: !87, file: !87, line: 15, type: !88, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !28)
!95 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "memset_t", scope: !94, file: !87, line: 16, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 32)
!98 = !DISubroutineType(types: !99)
!99 = !{!69, !69, !45, !15}
!100 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "memset_t", scope: !86, file: !87, line: 9, baseType: !97)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "DRBG_ctx", scope: !104, file: !107, line: 48, type: !108, isLocal: false, isDefinition: true)
!104 = distinct !DICompileUnit(language: DW_LANG_C11, file: !67, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !105, globals: !106, splitDebugInlining: false, nameTableKind: None)
!105 = !{!69}
!106 = !{!102}
!107 = !DIFile(filename: "../../../src/common/randombytes_ctrdrbg.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "AES256_CTR_DRBG_struct", file: !107, line: 40, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 36, size: 416, elements: !110)
!110 = !{!111, !115, !119}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "Key", scope: !109, file: !107, line: 37, baseType: !112, size: 256)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !109, file: !107, line: 38, baseType: !116, size: 128, offset: 256)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 16)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "reseed_counter", scope: !109, file: !107, line: 39, baseType: !45, size: 32, offset: 384)
!120 = distinct !DICompileUnit(language: DW_LANG_C11, file: !121, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!121 = !DIFile(filename: "../<stdin>", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!122 = distinct !DICompileUnit(language: DW_LANG_C11, file: !121, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!123 = !{!"Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)"}
!124 = !{i32 2, !"Debug Info Version", i32 3}
!125 = !{i32 1, !"wchar_size", i32 4}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 1, !"Code Model", i32 1}
!128 = distinct !DISubprogram(name: "main", scope: !129, file: !129, line: 116, type: !130, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !120)
!129 = !DIFile(filename: "../example.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!130 = !DISubroutineType(types: !131)
!131 = !{!45}
!132 = !DILocation(line: 126, column: 12, scope: !128)
!133 = !DILocation(line: 126, column: 5, scope: !128)
!134 = distinct !DISubprogram(name: "example_mayo", scope: !129, file: !129, line: 25, type: !135, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !120, retainedNodes: !28)
!135 = !DISubroutineType(types: !136)
!136 = !{!45, !137}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !140, file: !36, line: 266, baseType: !45, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !140, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !140, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !140, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !140, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !140, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !140, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !140, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !140, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !140, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !140, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !140, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !140, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !140, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !140, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !140, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !140, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !140, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !140, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !140, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !140, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !140, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !140, file: !36, line: 288, baseType: !165, size: 32, offset: 704)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!168 = !DILocalVariable(name: "p", arg: 1, scope: !134, file: !129, line: 25, type: !137)
!169 = !DILocation(line: 0, scope: !134)
!170 = !DILocalVariable(name: "msglen", scope: !134, file: !129, line: 27, type: !15)
!171 = !DILocation(line: 27, column: 12, scope: !134)
!172 = !DILocalVariable(name: "smlen", scope: !134, file: !129, line: 28, type: !15)
!173 = !DILocation(line: 28, column: 12, scope: !134)
!174 = !DILocation(line: 30, column: 26, scope: !134)
!175 = !DILocalVariable(name: "pk", scope: !134, file: !129, line: 30, type: !18)
!176 = !DILocation(line: 31, column: 26, scope: !134)
!177 = !DILocalVariable(name: "sk", scope: !134, file: !129, line: 31, type: !18)
!178 = !DILocalVariable(name: "epk", scope: !134, file: !129, line: 32, type: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "pk_t", file: !36, line: 295, baseType: !180)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1197120, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 18705)
!183 = !DILocation(line: 32, column: 10, scope: !134)
!184 = !DILocalVariable(name: "esk", scope: !134, file: !129, line: 33, type: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !36, line: 291, baseType: !186)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1190592, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 18603)
!189 = !DILocation(line: 33, column: 10, scope: !134)
!190 = !DILocation(line: 35, column: 54, scope: !134)
!191 = !DILocation(line: 35, column: 52, scope: !134)
!192 = !DILocation(line: 35, column: 26, scope: !134)
!193 = !DILocalVariable(name: "sig", scope: !134, file: !129, line: 35, type: !18)
!194 = !DILocalVariable(name: "msg", scope: !134, file: !129, line: 37, type: !112)
!195 = !DILocation(line: 37, column: 19, scope: !134)
!196 = !DILocalVariable(name: "msg2", scope: !134, file: !129, line: 38, type: !112)
!197 = !DILocation(line: 38, column: 19, scope: !134)
!198 = !DILocation(line: 41, column: 15, scope: !134)
!199 = !DILocalVariable(name: "res", scope: !134, file: !129, line: 41, type: !45)
!200 = !DILocation(line: 48, column: 11, scope: !134)
!201 = !DILocation(line: 55, column: 11, scope: !134)
!202 = !DILocation(line: 62, column: 42, scope: !134)
!203 = !DILocation(line: 62, column: 11, scope: !134)
!204 = !DILocation(line: 69, column: 44, scope: !134)
!205 = !DILocation(line: 69, column: 11, scope: !134)
!206 = !DILocation(line: 70, column: 13, scope: !207)
!207 = distinct !DILexicalBlock(scope: !134, file: !129, line: 70, column: 9)
!208 = !DILocation(line: 70, column: 24, scope: !207)
!209 = !DILocation(line: 70, column: 45, scope: !207)
!210 = !DILocation(line: 70, column: 27, scope: !207)
!211 = !DILocation(line: 77, column: 31, scope: !134)
!212 = !DILocation(line: 77, column: 11, scope: !134)
!213 = !DILocation(line: 78, column: 13, scope: !214)
!214 = distinct !DILexicalBlock(scope: !134, file: !129, line: 78, column: 9)
!215 = !DILabel(scope: !134, name: "err", file: !129, line: 109)
!216 = !DILocation(line: 109, column: 1, scope: !134)
!217 = !DILocation(line: 110, column: 5, scope: !134)
!218 = !DILocation(line: 111, column: 5, scope: !134)
!219 = !DILocation(line: 112, column: 5, scope: !134)
!220 = !DILocation(line: 113, column: 5, scope: !134)
!221 = distinct !DISubprogram(name: "mayo_memset", scope: !222, file: !222, line: 3, type: !223, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !122, retainedNodes: !28)
!222 = !DIFile(filename: "../mem.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!223 = !DISubroutineType(types: !224)
!224 = !{null, !69, !12, !19}
!225 = !DILocalVariable(name: "dst", arg: 1, scope: !221, file: !222, line: 3, type: !69)
!226 = !DILocation(line: 0, scope: !221)
!227 = !DILocalVariable(name: "val", arg: 2, scope: !221, file: !222, line: 3, type: !12)
!228 = !DILocalVariable(name: "len", arg: 3, scope: !221, file: !222, line: 3, type: !19)
!229 = !DILocalVariable(name: "d", scope: !221, file: !222, line: 5, type: !11)
!230 = !DILocalVariable(name: "i", scope: !231, file: !222, line: 7, type: !19)
!231 = distinct !DILexicalBlock(scope: !221, file: !222, line: 7, column: 5)
!232 = !DILocation(line: 0, scope: !231)
!233 = !DILocation(line: 7, column: 10, scope: !231)
!234 = !DILocation(line: 7, scope: !231)
!235 = !DILocation(line: 7, column: 28, scope: !236)
!236 = distinct !DILexicalBlock(scope: !231, file: !222, line: 7, column: 5)
!237 = !DILocation(line: 7, column: 5, scope: !231)
!238 = !DILocation(line: 8, column: 9, scope: !236)
!239 = !DILocation(line: 8, column: 14, scope: !236)
!240 = !DILocation(line: 7, column: 36, scope: !236)
!241 = !DILocation(line: 7, column: 5, scope: !236)
!242 = distinct !{!242, !237, !243, !244}
!243 = !DILocation(line: 8, column: 16, scope: !231)
!244 = !{!"llvm.loop.mustprogress"}
!245 = !DILocation(line: 9, column: 1, scope: !221)
!246 = distinct !DISubprogram(name: "mayo_memcpy", scope: !222, file: !222, line: 11, type: !247, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !122, retainedNodes: !28)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !69, !249, !19}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!251 = !DILocalVariable(name: "dst", arg: 1, scope: !246, file: !222, line: 11, type: !69)
!252 = !DILocation(line: 0, scope: !246)
!253 = !DILocalVariable(name: "src", arg: 2, scope: !246, file: !222, line: 11, type: !249)
!254 = !DILocalVariable(name: "len", arg: 3, scope: !246, file: !222, line: 11, type: !19)
!255 = !DILocalVariable(name: "d", scope: !246, file: !222, line: 13, type: !11)
!256 = !DILocalVariable(name: "s", scope: !246, file: !222, line: 14, type: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!259 = !DILocalVariable(name: "i", scope: !260, file: !222, line: 16, type: !19)
!260 = distinct !DILexicalBlock(scope: !246, file: !222, line: 16, column: 5)
!261 = !DILocation(line: 0, scope: !260)
!262 = !DILocation(line: 16, column: 10, scope: !260)
!263 = !DILocation(line: 16, scope: !260)
!264 = !DILocation(line: 16, column: 28, scope: !265)
!265 = distinct !DILexicalBlock(scope: !260, file: !222, line: 16, column: 5)
!266 = !DILocation(line: 16, column: 5, scope: !260)
!267 = !DILocation(line: 17, column: 16, scope: !265)
!268 = !DILocation(line: 17, column: 9, scope: !265)
!269 = !DILocation(line: 17, column: 14, scope: !265)
!270 = !DILocation(line: 16, column: 36, scope: !265)
!271 = !DILocation(line: 16, column: 5, scope: !265)
!272 = distinct !{!272, !266, !273, !244}
!273 = !DILocation(line: 17, column: 19, scope: !260)
!274 = !DILocation(line: 18, column: 1, scope: !246)
!275 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_keypair", scope: !25, file: !25, line: 298, type: !276, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!276 = !DISubroutineType(types: !277)
!277 = !{!45, !278, !18, !18}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !281, file: !36, line: 266, baseType: !45, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !281, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !281, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !281, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !281, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !281, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !281, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !281, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !281, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !281, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !281, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !281, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !281, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !281, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !281, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !281, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !281, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !281, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !281, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !281, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !281, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !281, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !281, file: !36, line: 288, baseType: !165, size: 32, offset: 704)
!306 = !DILocalVariable(name: "p", arg: 1, scope: !275, file: !25, line: 298, type: !278)
!307 = !DILocation(line: 0, scope: !275)
!308 = !DILocalVariable(name: "pk", arg: 2, scope: !275, file: !25, line: 298, type: !18)
!309 = !DILocalVariable(name: "sk", arg: 3, scope: !275, file: !25, line: 298, type: !18)
!310 = !DILocalVariable(name: "ret", scope: !275, file: !25, line: 299, type: !45)
!311 = !DILocation(line: 301, column: 11, scope: !275)
!312 = !DILabel(scope: !275, name: "err", file: !25, line: 306)
!313 = !DILocation(line: 306, column: 1, scope: !275)
!314 = !DILocation(line: 307, column: 5, scope: !275)
!315 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_keypair_compact", scope: !25, file: !25, line: 537, type: !276, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!316 = !DILocalVariable(name: "p", arg: 1, scope: !315, file: !25, line: 537, type: !278)
!317 = !DILocation(line: 0, scope: !315)
!318 = !DILocalVariable(name: "cpk", arg: 2, scope: !315, file: !25, line: 537, type: !18)
!319 = !DILocalVariable(name: "csk", arg: 3, scope: !315, file: !25, line: 538, type: !18)
!320 = !DILocalVariable(name: "ret", scope: !315, file: !25, line: 539, type: !45)
!321 = !DILocalVariable(name: "seed_sk", scope: !315, file: !25, line: 540, type: !18)
!322 = !DILocalVariable(name: "S", scope: !315, file: !25, line: 541, type: !323)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2624, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 328)
!326 = !DILocation(line: 541, column: 19, scope: !315)
!327 = !DILocalVariable(name: "P", scope: !315, file: !25, line: 542, type: !328)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1185600, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 18525)
!331 = !DILocation(line: 542, column: 14, scope: !315)
!332 = !DILocalVariable(name: "P3", scope: !315, file: !25, line: 543, type: !333)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 20480, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 320)
!336 = !DILocation(line: 543, column: 14, scope: !315)
!337 = !DILocalVariable(name: "O", scope: !315, file: !25, line: 546, type: !338)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4992, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 624)
!341 = !DILocation(line: 546, column: 19, scope: !315)
!342 = !DILocalVariable(name: "m_vec_limbs", scope: !315, file: !25, line: 548, type: !343)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!344 = !DILocalVariable(name: "param_m", scope: !315, file: !25, line: 549, type: !343)
!345 = !DILocalVariable(name: "param_v", scope: !315, file: !25, line: 550, type: !343)
!346 = !DILocalVariable(name: "param_o", scope: !315, file: !25, line: 551, type: !343)
!347 = !DILocalVariable(name: "param_O_bytes", scope: !315, file: !25, line: 552, type: !343)
!348 = !DILocalVariable(name: "param_P1_limbs", scope: !315, file: !25, line: 553, type: !343)
!349 = !DILocalVariable(name: "param_P3_limbs", scope: !315, file: !25, line: 554, type: !343)
!350 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !315, file: !25, line: 555, type: !343)
!351 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !315, file: !25, line: 556, type: !343)
!352 = !DILocalVariable(name: "P1", scope: !315, file: !25, line: 558, type: !5)
!353 = !DILocation(line: 559, column: 22, scope: !315)
!354 = !DILocalVariable(name: "P2", scope: !315, file: !25, line: 559, type: !5)
!355 = !DILocation(line: 565, column: 9, scope: !356)
!356 = distinct !DILexicalBlock(scope: !315, file: !25, line: 565, column: 9)
!357 = !DILocation(line: 572, column: 5, scope: !315)
!358 = !DILocalVariable(name: "seed_pk", scope: !315, file: !25, line: 545, type: !18)
!359 = !DILocation(line: 578, column: 14, scope: !315)
!360 = !DILocation(line: 578, column: 5, scope: !315)
!361 = !DILocation(line: 584, column: 5, scope: !315)
!362 = !DILocation(line: 587, column: 5, scope: !315)
!363 = !DILocation(line: 590, column: 5, scope: !315)
!364 = !DILocalVariable(name: "P3_upper", scope: !315, file: !25, line: 592, type: !365)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 11520, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 180)
!368 = !DILocation(line: 592, column: 14, scope: !315)
!369 = !DILocation(line: 595, column: 5, scope: !315)
!370 = !DILocation(line: 596, column: 31, scope: !315)
!371 = !DILocation(line: 596, column: 5, scope: !315)
!372 = !DILabel(scope: !315, name: "err", file: !25, line: 599)
!373 = !DILocation(line: 599, column: 5, scope: !315)
!374 = !DILocation(line: 601, column: 5, scope: !315)
!375 = !DILocation(line: 602, column: 5, scope: !315)
!376 = !DILocation(line: 603, column: 5, scope: !315)
!377 = !DILocation(line: 604, column: 5, scope: !315)
!378 = distinct !DISubprogram(name: "decode", scope: !25, file: !25, line: 20, type: !379, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !49, !18, !45}
!381 = !DILocalVariable(name: "m", arg: 1, scope: !378, file: !25, line: 20, type: !49)
!382 = !DILocation(line: 0, scope: !378)
!383 = !DILocalVariable(name: "mdec", arg: 2, scope: !378, file: !25, line: 20, type: !18)
!384 = !DILocalVariable(name: "mdeclen", arg: 3, scope: !378, file: !25, line: 20, type: !45)
!385 = !DILocalVariable(name: "i", scope: !378, file: !25, line: 21, type: !45)
!386 = !DILocation(line: 22, column: 10, scope: !387)
!387 = distinct !DILexicalBlock(scope: !378, file: !25, line: 22, column: 5)
!388 = !DILocation(line: 22, scope: !387)
!389 = !DILocation(line: 22, column: 29, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !25, line: 22, column: 5)
!391 = !DILocation(line: 22, column: 19, scope: !390)
!392 = !DILocation(line: 22, column: 5, scope: !387)
!393 = !DILocation(line: 23, column: 19, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !25, line: 22, column: 39)
!395 = !DILocation(line: 23, column: 24, scope: !394)
!396 = !DILocation(line: 23, column: 14, scope: !394)
!397 = !DILocation(line: 23, column: 17, scope: !394)
!398 = !DILocation(line: 24, column: 19, scope: !394)
!399 = !DILocation(line: 24, column: 24, scope: !394)
!400 = !DILocation(line: 24, column: 17, scope: !394)
!401 = !DILocation(line: 24, column: 14, scope: !394)
!402 = !DILocation(line: 22, column: 34, scope: !390)
!403 = !DILocation(line: 22, column: 5, scope: !390)
!404 = distinct !{!404, !392, !405, !244}
!405 = !DILocation(line: 25, column: 5, scope: !387)
!406 = !DILocation(line: 27, column: 21, scope: !407)
!407 = distinct !DILexicalBlock(scope: !378, file: !25, line: 27, column: 9)
!408 = !DILocation(line: 28, column: 19, scope: !409)
!409 = distinct !DILexicalBlock(scope: !407, file: !25, line: 27, column: 27)
!410 = !DILocation(line: 28, column: 24, scope: !409)
!411 = !DILocation(line: 28, column: 17, scope: !409)
!412 = !DILocation(line: 29, column: 5, scope: !409)
!413 = !DILocation(line: 30, column: 1, scope: !378)
!414 = distinct !DISubprogram(name: "expand_P1_P2", scope: !25, file: !25, line: 280, type: !415, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !278, !5, !49}
!417 = !DILocalVariable(name: "p", arg: 1, scope: !414, file: !25, line: 280, type: !278)
!418 = !DILocation(line: 0, scope: !414)
!419 = !DILocalVariable(name: "P", arg: 2, scope: !414, file: !25, line: 280, type: !5)
!420 = !DILocalVariable(name: "seed_pk", arg: 3, scope: !414, file: !25, line: 280, type: !49)
!421 = !DILocation(line: 284, column: 5, scope: !414)
!422 = !DILocation(line: 285, column: 5, scope: !414)
!423 = !DILocation(line: 286, column: 1, scope: !414)
!424 = distinct !DISubprogram(name: "compute_P3", scope: !425, file: !425, line: 260, type: !426, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!425 = !DIFile(filename: "../../../src/generic/generic_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!426 = !DISubroutineType(types: !427)
!427 = !{null, !278, !428, !5, !49, !5}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!429 = !DILocalVariable(name: "p", arg: 1, scope: !424, file: !425, line: 260, type: !278)
!430 = !DILocation(line: 0, scope: !424)
!431 = !DILocalVariable(name: "P1", arg: 2, scope: !424, file: !425, line: 260, type: !428)
!432 = !DILocalVariable(name: "P2", arg: 3, scope: !424, file: !425, line: 260, type: !5)
!433 = !DILocalVariable(name: "O", arg: 4, scope: !424, file: !425, line: 260, type: !49)
!434 = !DILocalVariable(name: "P3", arg: 5, scope: !424, file: !425, line: 260, type: !5)
!435 = !DILocalVariable(name: "m_vec_limbs", scope: !424, file: !425, line: 262, type: !343)
!436 = !DILocalVariable(name: "param_v", scope: !424, file: !425, line: 263, type: !343)
!437 = !DILocalVariable(name: "param_o", scope: !424, file: !425, line: 264, type: !343)
!438 = !DILocation(line: 267, column: 5, scope: !424)
!439 = !DILocation(line: 270, column: 5, scope: !424)
!440 = !DILocation(line: 271, column: 1, scope: !424)
!441 = distinct !DISubprogram(name: "pack_m_vecs", scope: !25, file: !25, line: 272, type: !442, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !428, !18, !45, !45}
!444 = !DILocalVariable(name: "in", arg: 1, scope: !441, file: !25, line: 272, type: !428)
!445 = !DILocation(line: 0, scope: !441)
!446 = !DILocalVariable(name: "out", arg: 2, scope: !441, file: !25, line: 272, type: !18)
!447 = !DILocalVariable(name: "vecs", arg: 3, scope: !441, file: !25, line: 272, type: !45)
!448 = !DILocalVariable(name: "m", arg: 4, scope: !441, file: !25, line: 272, type: !45)
!449 = !DILocalVariable(name: "m_vec_limbs", scope: !441, file: !25, line: 273, type: !343)
!450 = !DILocalVariable(name: "_in", scope: !441, file: !25, line: 274, type: !18)
!451 = !DILocalVariable(name: "i", scope: !452, file: !25, line: 275, type: !45)
!452 = distinct !DILexicalBlock(scope: !441, file: !25, line: 275, column: 5)
!453 = !DILocation(line: 0, scope: !452)
!454 = !DILocation(line: 275, column: 10, scope: !452)
!455 = !DILocation(line: 275, scope: !452)
!456 = !DILocation(line: 275, column: 23, scope: !457)
!457 = distinct !DILexicalBlock(scope: !452, file: !25, line: 275, column: 5)
!458 = !DILocation(line: 275, column: 5, scope: !452)
!459 = !DILocation(line: 277, column: 27, scope: !460)
!460 = distinct !DILexicalBlock(scope: !457, file: !25, line: 276, column: 5)
!461 = !DILocation(line: 277, column: 21, scope: !460)
!462 = !DILocation(line: 277, column: 51, scope: !460)
!463 = !DILocation(line: 277, column: 36, scope: !460)
!464 = !DILocation(line: 277, column: 9, scope: !460)
!465 = !DILocation(line: 275, column: 32, scope: !457)
!466 = !DILocation(line: 275, column: 5, scope: !457)
!467 = distinct !{!467, !458, !468, !244}
!468 = !DILocation(line: 278, column: 5, scope: !452)
!469 = !DILocation(line: 279, column: 1, scope: !441)
!470 = distinct !DISubprogram(name: "P1_times_O", scope: !425, file: !425, line: 74, type: !471, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !278, !428, !49, !5}
!473 = !DILocalVariable(name: "p", arg: 1, scope: !470, file: !425, line: 74, type: !278)
!474 = !DILocation(line: 0, scope: !470)
!475 = !DILocalVariable(name: "P1", arg: 2, scope: !470, file: !425, line: 74, type: !428)
!476 = !DILocalVariable(name: "O", arg: 3, scope: !470, file: !425, line: 74, type: !49)
!477 = !DILocalVariable(name: "acc", arg: 4, scope: !470, file: !425, line: 74, type: !5)
!478 = !DILocation(line: 78, column: 5, scope: !470)
!479 = !DILocation(line: 79, column: 1, scope: !470)
!480 = distinct !DISubprogram(name: "mul_add_mat_trans_x_m_mat", scope: !425, file: !425, line: 47, type: !481, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !343, !49, !428, !5, !343, !343, !343}
!483 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !480, file: !425, line: 47, type: !343)
!484 = !DILocation(line: 0, scope: !480)
!485 = !DILocalVariable(name: "mat", arg: 2, scope: !480, file: !425, line: 47, type: !49)
!486 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !480, file: !425, line: 47, type: !428)
!487 = !DILocalVariable(name: "acc", arg: 4, scope: !480, file: !425, line: 47, type: !5)
!488 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !480, file: !425, line: 48, type: !343)
!489 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !480, file: !425, line: 48, type: !343)
!490 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !480, file: !425, line: 48, type: !343)
!491 = !DILocalVariable(name: "r", scope: !492, file: !425, line: 50, type: !45)
!492 = distinct !DILexicalBlock(scope: !480, file: !425, line: 50, column: 5)
!493 = !DILocation(line: 0, scope: !492)
!494 = !DILocation(line: 50, column: 10, scope: !492)
!495 = !DILocation(line: 50, scope: !492)
!496 = !DILocation(line: 50, column: 23, scope: !497)
!497 = distinct !DILexicalBlock(scope: !492, file: !425, line: 50, column: 5)
!498 = !DILocation(line: 50, column: 5, scope: !492)
!499 = !DILocation(line: 51, column: 9, scope: !500)
!500 = distinct !DILexicalBlock(scope: !501, file: !425, line: 51, column: 9)
!501 = distinct !DILexicalBlock(scope: !497, file: !425, line: 50, column: 40)
!502 = !DILocation(line: 51, scope: !500)
!503 = !DILocalVariable(name: "c", scope: !500, file: !425, line: 51, type: !45)
!504 = !DILocation(line: 0, scope: !500)
!505 = !DILocation(line: 51, column: 27, scope: !506)
!506 = distinct !DILexicalBlock(scope: !500, file: !425, line: 51, column: 9)
!507 = !DILocation(line: 52, column: 13, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !425, line: 52, column: 13)
!509 = distinct !DILexicalBlock(scope: !506, file: !425, line: 51, column: 44)
!510 = !DILocation(line: 52, scope: !508)
!511 = !DILocalVariable(name: "k", scope: !508, file: !425, line: 52, type: !45)
!512 = !DILocation(line: 0, scope: !508)
!513 = !DILocation(line: 52, column: 31, scope: !514)
!514 = distinct !DILexicalBlock(scope: !508, file: !425, line: 52, column: 13)
!515 = !DILocation(line: 53, column: 70, scope: !516)
!516 = distinct !DILexicalBlock(scope: !514, file: !425, line: 52, column: 54)
!517 = !DILocation(line: 53, column: 84, scope: !516)
!518 = !DILocation(line: 53, column: 51, scope: !516)
!519 = !DILocation(line: 53, column: 96, scope: !516)
!520 = !DILocation(line: 53, column: 90, scope: !516)
!521 = !DILocation(line: 53, column: 136, scope: !516)
!522 = !DILocation(line: 53, column: 150, scope: !516)
!523 = !DILocation(line: 53, column: 117, scope: !516)
!524 = !DILocation(line: 53, column: 17, scope: !516)
!525 = !DILocation(line: 52, column: 48, scope: !514)
!526 = !DILocation(line: 52, column: 13, scope: !514)
!527 = distinct !{!527, !507, !528, !244}
!528 = !DILocation(line: 54, column: 13, scope: !508)
!529 = !DILocation(line: 51, column: 40, scope: !506)
!530 = !DILocation(line: 51, column: 9, scope: !506)
!531 = distinct !{!531, !499, !532, !244}
!532 = !DILocation(line: 55, column: 9, scope: !500)
!533 = !DILocation(line: 50, column: 36, scope: !497)
!534 = !DILocation(line: 50, column: 5, scope: !497)
!535 = distinct !{!535, !498, !536, !244}
!536 = !DILocation(line: 56, column: 5, scope: !492)
!537 = !DILocation(line: 57, column: 1, scope: !480)
!538 = distinct !DISubprogram(name: "m_vec_mul_add", scope: !539, file: !539, line: 31, type: !540, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!539 = !DIFile(filename: "../../../src/generic/arithmetic_fixed.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!540 = !DISubroutineType(types: !541)
!541 = !{null, !45, !428, !14, !5}
!542 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !538, file: !539, line: 31, type: !45)
!543 = !DILocation(line: 0, scope: !538)
!544 = !DILocalVariable(name: "in", arg: 2, scope: !538, file: !539, line: 31, type: !428)
!545 = !DILocalVariable(name: "a", arg: 3, scope: !538, file: !539, line: 31, type: !14)
!546 = !DILocalVariable(name: "acc", arg: 4, scope: !538, file: !539, line: 31, type: !5)
!547 = !DILocation(line: 33, column: 20, scope: !538)
!548 = !DILocalVariable(name: "tab", scope: !538, file: !539, line: 33, type: !19)
!549 = !DILocalVariable(name: "lsb_ask", scope: !538, file: !539, line: 35, type: !6)
!550 = !DILocalVariable(name: "i", scope: !551, file: !539, line: 37, type: !45)
!551 = distinct !DILexicalBlock(scope: !538, file: !539, line: 37, column: 5)
!552 = !DILocation(line: 0, scope: !551)
!553 = !DILocation(line: 37, column: 9, scope: !551)
!554 = !DILocation(line: 37, scope: !551)
!555 = !DILocation(line: 37, column: 20, scope: !556)
!556 = distinct !DILexicalBlock(scope: !551, file: !539, line: 37, column: 5)
!557 = !DILocation(line: 37, column: 5, scope: !551)
!558 = !DILocation(line: 38, column: 21, scope: !559)
!559 = distinct !DILexicalBlock(scope: !556, file: !539, line: 37, column: 43)
!560 = !DILocation(line: 38, column: 33, scope: !559)
!561 = !DILocation(line: 38, column: 51, scope: !559)
!562 = !DILocation(line: 38, column: 46, scope: !559)
!563 = !DILocation(line: 38, column: 44, scope: !559)
!564 = !DILocation(line: 39, column: 27, scope: !559)
!565 = !DILocation(line: 39, column: 33, scope: !559)
!566 = !DILocation(line: 39, column: 52, scope: !559)
!567 = !DILocation(line: 39, column: 59, scope: !559)
!568 = !DILocation(line: 39, column: 46, scope: !559)
!569 = !DILocation(line: 39, column: 44, scope: !559)
!570 = !DILocation(line: 39, column: 17, scope: !559)
!571 = !DILocation(line: 40, column: 21, scope: !559)
!572 = !DILocation(line: 40, column: 27, scope: !559)
!573 = !DILocation(line: 40, column: 33, scope: !559)
!574 = !DILocation(line: 40, column: 52, scope: !559)
!575 = !DILocation(line: 40, column: 59, scope: !559)
!576 = !DILocation(line: 40, column: 46, scope: !559)
!577 = !DILocation(line: 40, column: 44, scope: !559)
!578 = !DILocation(line: 40, column: 17, scope: !559)
!579 = !DILocation(line: 41, column: 21, scope: !559)
!580 = !DILocation(line: 41, column: 27, scope: !559)
!581 = !DILocation(line: 41, column: 33, scope: !559)
!582 = !DILocation(line: 41, column: 52, scope: !559)
!583 = !DILocation(line: 41, column: 59, scope: !559)
!584 = !DILocation(line: 41, column: 46, scope: !559)
!585 = !DILocation(line: 41, column: 44, scope: !559)
!586 = !DILocation(line: 41, column: 17, scope: !559)
!587 = !DILocation(line: 38, column: 9, scope: !559)
!588 = !DILocation(line: 38, column: 16, scope: !559)
!589 = !DILocation(line: 37, column: 40, scope: !556)
!590 = !DILocation(line: 37, column: 5, scope: !556)
!591 = distinct !{!591, !557, !592, !244}
!592 = !DILocation(line: 42, column: 5, scope: !551)
!593 = !DILocation(line: 43, column: 1, scope: !538)
!594 = distinct !DISubprogram(name: "mul_table", scope: !595, file: !595, line: 129, type: !596, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!595 = !DIFile(filename: "../../../src/simple_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!596 = !DISubroutineType(types: !597)
!597 = !{!19, !12}
!598 = !DILocalVariable(name: "b", arg: 1, scope: !594, file: !595, line: 129, type: !12)
!599 = !DILocation(line: 0, scope: !594)
!600 = !DILocation(line: 130, column: 19, scope: !594)
!601 = !DILocation(line: 130, column: 33, scope: !594)
!602 = !DILocalVariable(name: "x", scope: !594, file: !595, line: 130, type: !19)
!603 = !DILocalVariable(name: "high_nibble_mask", scope: !594, file: !595, line: 132, type: !19)
!604 = !DILocation(line: 134, column: 28, scope: !594)
!605 = !DILocalVariable(name: "high_half", scope: !594, file: !595, line: 134, type: !19)
!606 = !DILocation(line: 135, column: 28, scope: !594)
!607 = !DILocation(line: 135, column: 47, scope: !594)
!608 = !DILocation(line: 135, column: 34, scope: !594)
!609 = !DILocation(line: 135, column: 5, scope: !594)
!610 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat", scope: !425, file: !425, line: 16, type: !611, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !343, !428, !49, !5, !343, !343, !343, !343}
!613 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !610, file: !425, line: 16, type: !343)
!614 = !DILocation(line: 0, scope: !610)
!615 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !610, file: !425, line: 16, type: !428)
!616 = !DILocalVariable(name: "mat", arg: 3, scope: !610, file: !425, line: 16, type: !49)
!617 = !DILocalVariable(name: "acc", arg: 4, scope: !610, file: !425, line: 16, type: !5)
!618 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !610, file: !425, line: 17, type: !343)
!619 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !610, file: !425, line: 17, type: !343)
!620 = !DILocalVariable(name: "mat_cols", arg: 7, scope: !610, file: !425, line: 17, type: !343)
!621 = !DILocalVariable(name: "triangular", arg: 8, scope: !610, file: !425, line: 17, type: !343)
!622 = !DILocalVariable(name: "bs_mat_entries_used", scope: !610, file: !425, line: 19, type: !45)
!623 = !DILocalVariable(name: "r", scope: !624, file: !425, line: 20, type: !45)
!624 = distinct !DILexicalBlock(scope: !610, file: !425, line: 20, column: 5)
!625 = !DILocation(line: 0, scope: !624)
!626 = !DILocation(line: 20, column: 10, scope: !624)
!627 = !DILocation(line: 19, column: 9, scope: !610)
!628 = !DILocation(line: 20, scope: !624)
!629 = !DILocation(line: 20, column: 23, scope: !630)
!630 = distinct !DILexicalBlock(scope: !624, file: !425, line: 20, column: 5)
!631 = !DILocation(line: 20, column: 5, scope: !624)
!632 = !DILocation(line: 21, column: 9, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !425, line: 21, column: 9)
!634 = distinct !DILexicalBlock(scope: !630, file: !425, line: 20, column: 43)
!635 = !DILocation(line: 21, scope: !633)
!636 = !DILocalVariable(name: "c", scope: !633, file: !425, line: 21, type: !45)
!637 = !DILocation(line: 0, scope: !633)
!638 = !DILocation(line: 21, column: 40, scope: !639)
!639 = distinct !DILexicalBlock(scope: !633, file: !425, line: 21, column: 9)
!640 = !DILocation(line: 22, column: 13, scope: !641)
!641 = distinct !DILexicalBlock(scope: !642, file: !425, line: 22, column: 13)
!642 = distinct !DILexicalBlock(scope: !639, file: !425, line: 21, column: 60)
!643 = !DILocation(line: 22, scope: !641)
!644 = !DILocalVariable(name: "k", scope: !641, file: !425, line: 22, type: !45)
!645 = !DILocation(line: 0, scope: !641)
!646 = !DILocation(line: 22, column: 31, scope: !647)
!647 = distinct !DILexicalBlock(scope: !641, file: !425, line: 22, column: 13)
!648 = !DILocation(line: 23, column: 51, scope: !649)
!649 = distinct !DILexicalBlock(scope: !647, file: !425, line: 22, column: 51)
!650 = !DILocation(line: 23, column: 94, scope: !649)
!651 = !DILocation(line: 23, column: 88, scope: !649)
!652 = !DILocation(line: 23, column: 134, scope: !649)
!653 = !DILocation(line: 23, column: 145, scope: !649)
!654 = !DILocation(line: 23, column: 115, scope: !649)
!655 = !DILocation(line: 23, column: 17, scope: !649)
!656 = !DILocation(line: 22, column: 45, scope: !647)
!657 = !DILocation(line: 22, column: 13, scope: !647)
!658 = distinct !{!658, !640, !659, !244}
!659 = !DILocation(line: 24, column: 13, scope: !641)
!660 = !DILocation(line: 25, column: 33, scope: !642)
!661 = !DILocation(line: 21, column: 56, scope: !639)
!662 = !DILocation(line: 21, column: 9, scope: !639)
!663 = distinct !{!663, !632, !664, !244}
!664 = !DILocation(line: 26, column: 9, scope: !633)
!665 = !DILocation(line: 20, column: 39, scope: !630)
!666 = !DILocation(line: 20, column: 5, scope: !630)
!667 = distinct !{!667, !631, !668, !244}
!668 = !DILocation(line: 27, column: 5, scope: !624)
!669 = !DILocation(line: 28, column: 1, scope: !610)
!670 = distinct !DISubprogram(name: "unpack_m_vecs", scope: !25, file: !25, line: 262, type: !671, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !49, !5, !45, !45}
!673 = !DILocalVariable(name: "in", arg: 1, scope: !670, file: !25, line: 262, type: !49)
!674 = !DILocation(line: 0, scope: !670)
!675 = !DILocalVariable(name: "out", arg: 2, scope: !670, file: !25, line: 262, type: !5)
!676 = !DILocalVariable(name: "vecs", arg: 3, scope: !670, file: !25, line: 262, type: !45)
!677 = !DILocalVariable(name: "m", arg: 4, scope: !670, file: !25, line: 262, type: !45)
!678 = !DILocalVariable(name: "m_vec_limbs", scope: !670, file: !25, line: 263, type: !343)
!679 = !DILocalVariable(name: "_out", scope: !670, file: !25, line: 264, type: !18)
!680 = !DILocalVariable(name: "tmp", scope: !670, file: !25, line: 265, type: !681)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 320, elements: !682)
!682 = !{!683}
!683 = !DISubrange(count: 5)
!684 = !DILocation(line: 265, column: 14, scope: !670)
!685 = !DILocalVariable(name: "i", scope: !686, file: !25, line: 266, type: !45)
!686 = distinct !DILexicalBlock(scope: !670, file: !25, line: 266, column: 5)
!687 = !DILocation(line: 0, scope: !686)
!688 = !DILocation(line: 266, column: 10, scope: !686)
!689 = !DILocation(line: 266, column: 28, scope: !690)
!690 = distinct !DILexicalBlock(scope: !686, file: !25, line: 266, column: 5)
!691 = !DILocation(line: 266, column: 5, scope: !686)
!692 = !DILocation(line: 266, scope: !686)
!693 = !DILocation(line: 268, column: 29, scope: !694)
!694 = distinct !DILexicalBlock(scope: !690, file: !25, line: 267, column: 5)
!695 = !DILocation(line: 268, column: 24, scope: !694)
!696 = !DILocation(line: 268, column: 9, scope: !694)
!697 = !DILocation(line: 269, column: 36, scope: !694)
!698 = !DILocation(line: 269, column: 21, scope: !694)
!699 = !DILocation(line: 269, column: 9, scope: !694)
!700 = !DILocation(line: 266, column: 5, scope: !690)
!701 = distinct !{!701, !691, !702, !244}
!702 = !DILocation(line: 270, column: 5, scope: !686)
!703 = !DILocation(line: 271, column: 1, scope: !670)
!704 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_expand_sk", scope: !25, file: !25, line: 310, type: !705, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!705 = !DISubroutineType(types: !706)
!706 = !{!45, !278, !49, !5}
!707 = !DILocalVariable(name: "p", arg: 1, scope: !704, file: !25, line: 310, type: !278)
!708 = !DILocation(line: 0, scope: !704)
!709 = !DILocalVariable(name: "csk", arg: 2, scope: !704, file: !25, line: 310, type: !49)
!710 = !DILocalVariable(name: "sk", arg: 3, scope: !704, file: !25, line: 311, type: !5)
!711 = !DILocalVariable(name: "ret", scope: !704, file: !25, line: 312, type: !45)
!712 = !DILocalVariable(name: "S", scope: !704, file: !25, line: 313, type: !323)
!713 = !DILocation(line: 313, column: 19, scope: !704)
!714 = !DILocalVariable(name: "P", scope: !704, file: !25, line: 314, type: !5)
!715 = !DILocation(line: 315, column: 24, scope: !704)
!716 = !DILocalVariable(name: "O", scope: !704, file: !25, line: 315, type: !18)
!717 = !DILocalVariable(name: "param_o", scope: !704, file: !25, line: 317, type: !343)
!718 = !DILocalVariable(name: "param_v", scope: !704, file: !25, line: 318, type: !343)
!719 = !DILocalVariable(name: "param_O_bytes", scope: !704, file: !25, line: 319, type: !343)
!720 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !704, file: !25, line: 320, type: !343)
!721 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !704, file: !25, line: 321, type: !343)
!722 = !DILocalVariable(name: "seed_sk", scope: !704, file: !25, line: 323, type: !49)
!723 = !DILocalVariable(name: "seed_pk", scope: !704, file: !25, line: 324, type: !18)
!724 = !DILocation(line: 326, column: 5, scope: !704)
!725 = !DILocation(line: 328, column: 14, scope: !704)
!726 = !DILocation(line: 328, column: 5, scope: !704)
!727 = !DILocation(line: 334, column: 5, scope: !704)
!728 = !DILocation(line: 341, column: 22, scope: !704)
!729 = !DILocalVariable(name: "P2", scope: !704, file: !25, line: 341, type: !5)
!730 = !DILocalVariable(name: "P1", scope: !704, file: !25, line: 343, type: !5)
!731 = !DILocalVariable(name: "L", scope: !704, file: !25, line: 346, type: !5)
!732 = !DILocation(line: 347, column: 5, scope: !704)
!733 = !DILocation(line: 355, column: 5, scope: !704)
!734 = !DILocation(line: 356, column: 5, scope: !704)
!735 = distinct !DISubprogram(name: "P1P1t_times_O", scope: !425, file: !425, line: 218, type: !471, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!736 = !DILocalVariable(name: "p", arg: 1, scope: !735, file: !425, line: 218, type: !278)
!737 = !DILocation(line: 0, scope: !735)
!738 = !DILocalVariable(name: "P1", arg: 2, scope: !735, file: !425, line: 218, type: !428)
!739 = !DILocalVariable(name: "O", arg: 3, scope: !735, file: !425, line: 218, type: !49)
!740 = !DILocalVariable(name: "acc", arg: 4, scope: !735, file: !425, line: 218, type: !5)
!741 = !DILocalVariable(name: "param_o", scope: !735, file: !425, line: 222, type: !343)
!742 = !DILocalVariable(name: "param_v", scope: !735, file: !425, line: 223, type: !343)
!743 = !DILocalVariable(name: "m_vec_limbs", scope: !735, file: !425, line: 224, type: !343)
!744 = !DILocalVariable(name: "bs_mat_entries_used", scope: !735, file: !425, line: 226, type: !45)
!745 = !DILocalVariable(name: "r", scope: !746, file: !425, line: 227, type: !45)
!746 = distinct !DILexicalBlock(scope: !735, file: !425, line: 227, column: 5)
!747 = !DILocation(line: 0, scope: !746)
!748 = !DILocation(line: 227, column: 10, scope: !746)
!749 = !DILocation(line: 226, column: 9, scope: !735)
!750 = !DILocation(line: 227, scope: !746)
!751 = !DILocation(line: 227, column: 23, scope: !752)
!752 = distinct !DILexicalBlock(scope: !746, file: !425, line: 227, column: 5)
!753 = !DILocation(line: 227, column: 5, scope: !746)
!754 = !DILocation(line: 228, column: 9, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !425, line: 228, column: 9)
!756 = distinct !DILexicalBlock(scope: !752, file: !425, line: 227, column: 39)
!757 = !DILocation(line: 228, scope: !755)
!758 = !DILocalVariable(name: "c", scope: !755, file: !425, line: 228, type: !45)
!759 = !DILocation(line: 0, scope: !755)
!760 = !DILocation(line: 228, column: 27, scope: !761)
!761 = distinct !DILexicalBlock(scope: !755, file: !425, line: 228, column: 9)
!762 = !DILocation(line: 229, column: 17, scope: !763)
!763 = distinct !DILexicalBlock(scope: !764, file: !425, line: 229, column: 16)
!764 = distinct !DILexicalBlock(scope: !761, file: !425, line: 228, column: 43)
!765 = !DILocation(line: 233, column: 13, scope: !766)
!766 = distinct !DILexicalBlock(scope: !764, file: !425, line: 233, column: 13)
!767 = !DILocation(line: 233, scope: !766)
!768 = !DILocalVariable(name: "k", scope: !766, file: !425, line: 233, type: !45)
!769 = !DILocation(line: 0, scope: !766)
!770 = !DILocation(line: 233, column: 31, scope: !771)
!771 = distinct !DILexicalBlock(scope: !766, file: !425, line: 233, column: 13)
!772 = !DILocation(line: 234, column: 47, scope: !773)
!773 = distinct !DILexicalBlock(scope: !771, file: !425, line: 233, column: 50)
!774 = !DILocation(line: 234, column: 88, scope: !773)
!775 = !DILocation(line: 234, column: 98, scope: !773)
!776 = !DILocation(line: 234, column: 84, scope: !773)
!777 = !DILocation(line: 234, column: 127, scope: !773)
!778 = !DILocation(line: 234, column: 137, scope: !773)
!779 = !DILocation(line: 234, column: 108, scope: !773)
!780 = !DILocation(line: 234, column: 17, scope: !773)
!781 = !DILocation(line: 235, column: 47, scope: !773)
!782 = !DILocation(line: 235, column: 88, scope: !773)
!783 = !DILocation(line: 235, column: 98, scope: !773)
!784 = !DILocation(line: 235, column: 84, scope: !773)
!785 = !DILocation(line: 235, column: 127, scope: !773)
!786 = !DILocation(line: 235, column: 137, scope: !773)
!787 = !DILocation(line: 235, column: 108, scope: !773)
!788 = !DILocation(line: 235, column: 17, scope: !773)
!789 = !DILocation(line: 233, column: 44, scope: !771)
!790 = !DILocation(line: 233, column: 13, scope: !771)
!791 = distinct !{!791, !765, !792, !244}
!792 = !DILocation(line: 236, column: 13, scope: !766)
!793 = !DILocation(line: 0, scope: !764)
!794 = !DILocation(line: 228, column: 39, scope: !761)
!795 = !DILocation(line: 228, column: 9, scope: !761)
!796 = distinct !{!796, !754, !797, !244}
!797 = !DILocation(line: 238, column: 9, scope: !755)
!798 = !DILocation(line: 227, column: 35, scope: !752)
!799 = !DILocation(line: 227, column: 5, scope: !752)
!800 = distinct !{!800, !753, !801, !244}
!801 = !DILocation(line: 239, column: 5, scope: !746)
!802 = !DILocation(line: 240, column: 1, scope: !735)
!803 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_sign_signature", scope: !25, file: !25, line: 359, type: !804, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!804 = !DISubroutineType(types: !805)
!805 = !{!45, !278, !18, !806, !49, !15, !49}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!807 = !DILocalVariable(name: "p", arg: 1, scope: !803, file: !25, line: 359, type: !278)
!808 = !DILocation(line: 0, scope: !803)
!809 = !DILocalVariable(name: "sig", arg: 2, scope: !803, file: !25, line: 359, type: !18)
!810 = !DILocalVariable(name: "siglen", arg: 3, scope: !803, file: !25, line: 360, type: !806)
!811 = !DILocalVariable(name: "m", arg: 4, scope: !803, file: !25, line: 360, type: !49)
!812 = !DILocalVariable(name: "mlen", arg: 5, scope: !803, file: !25, line: 361, type: !15)
!813 = !DILocalVariable(name: "csk", arg: 6, scope: !803, file: !25, line: 361, type: !49)
!814 = !DILocalVariable(name: "ret", scope: !803, file: !25, line: 362, type: !45)
!815 = !DILocalVariable(name: "tenc", scope: !803, file: !25, line: 363, type: !816)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 312, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 39)
!819 = !DILocation(line: 363, column: 19, scope: !803)
!820 = !DILocalVariable(name: "t", scope: !803, file: !25, line: 363, type: !821)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 624, elements: !822)
!822 = !{!823}
!823 = !DISubrange(count: 78)
!824 = !DILocation(line: 363, column: 38, scope: !803)
!825 = !DILocalVariable(name: "y", scope: !803, file: !25, line: 364, type: !821)
!826 = !DILocation(line: 364, column: 19, scope: !803)
!827 = !DILocalVariable(name: "salt", scope: !803, file: !25, line: 365, type: !828)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, elements: !73)
!829 = !DILocation(line: 365, column: 19, scope: !803)
!830 = !DILocalVariable(name: "V", scope: !803, file: !25, line: 366, type: !831)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 3440, elements: !832)
!832 = !{!833}
!833 = !DISubrange(count: 430)
!834 = !DILocation(line: 366, column: 19, scope: !803)
!835 = !DILocalVariable(name: "Vdec", scope: !803, file: !25, line: 366, type: !836)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 6240, elements: !837)
!837 = !{!838}
!838 = !DISubrange(count: 780)
!839 = !DILocation(line: 366, column: 57, scope: !803)
!840 = !DILocalVariable(name: "A", scope: !803, file: !25, line: 367, type: !841)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 51840, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 6480)
!844 = !DILocation(line: 367, column: 19, scope: !803)
!845 = !DILocalVariable(name: "x", scope: !803, file: !25, line: 368, type: !846)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 6880, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 860)
!849 = !DILocation(line: 368, column: 19, scope: !803)
!850 = !DILocalVariable(name: "r", scope: !803, file: !25, line: 369, type: !851)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 648, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 81)
!854 = !DILocation(line: 369, column: 19, scope: !803)
!855 = !DILocalVariable(name: "s", scope: !803, file: !25, line: 370, type: !846)
!856 = !DILocation(line: 370, column: 19, scope: !803)
!857 = !DILocalVariable(name: "sk", scope: !803, file: !25, line: 372, type: !185, align: 256)
!858 = !DILocation(line: 372, column: 22, scope: !803)
!859 = !DILocalVariable(name: "Ox", scope: !803, file: !25, line: 373, type: !821)
!860 = !DILocation(line: 373, column: 19, scope: !803)
!861 = !DILocalVariable(name: "tmp", scope: !803, file: !25, line: 374, type: !851)
!862 = !DILocation(line: 374, column: 19, scope: !803)
!863 = !DILocalVariable(name: "param_m", scope: !803, file: !25, line: 378, type: !343)
!864 = !DILocalVariable(name: "param_n", scope: !803, file: !25, line: 379, type: !343)
!865 = !DILocalVariable(name: "param_o", scope: !803, file: !25, line: 380, type: !343)
!866 = !DILocalVariable(name: "param_k", scope: !803, file: !25, line: 381, type: !343)
!867 = !DILocalVariable(name: "param_v", scope: !803, file: !25, line: 382, type: !343)
!868 = !DILocalVariable(name: "param_m_bytes", scope: !803, file: !25, line: 383, type: !343)
!869 = !DILocalVariable(name: "param_v_bytes", scope: !803, file: !25, line: 384, type: !343)
!870 = !DILocalVariable(name: "param_r_bytes", scope: !803, file: !25, line: 385, type: !343)
!871 = !DILocalVariable(name: "param_sig_bytes", scope: !803, file: !25, line: 386, type: !343)
!872 = !DILocalVariable(name: "param_A_cols", scope: !803, file: !25, line: 387, type: !343)
!873 = !DILocalVariable(name: "param_digest_bytes", scope: !803, file: !25, line: 388, type: !343)
!874 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !803, file: !25, line: 389, type: !343)
!875 = !DILocalVariable(name: "param_salt_bytes", scope: !803, file: !25, line: 390, type: !343)
!876 = !DILocation(line: 392, column: 11, scope: !803)
!877 = !DILocalVariable(name: "seed_sk", scope: !803, file: !25, line: 371, type: !49)
!878 = !DILocation(line: 401, column: 5, scope: !803)
!879 = !DILocalVariable(name: "P1", scope: !803, file: !25, line: 403, type: !5)
!880 = !DILocalVariable(name: "L", scope: !803, file: !25, line: 404, type: !5)
!881 = !DILocalVariable(name: "Mtmp", scope: !803, file: !25, line: 405, type: !882)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 25600, elements: !883)
!883 = !{!884}
!884 = !DISubrange(count: 400)
!885 = !DILocation(line: 405, column: 14, scope: !803)
!886 = !DILocation(line: 420, column: 25, scope: !887)
!887 = distinct !DILexicalBlock(scope: !803, file: !25, line: 420, column: 9)
!888 = !DILocation(line: 420, column: 9, scope: !887)
!889 = !DILocation(line: 427, column: 37, scope: !803)
!890 = !DILocation(line: 427, column: 5, scope: !803)
!891 = !DILocation(line: 429, column: 5, scope: !803)
!892 = !DILocation(line: 437, column: 16, scope: !803)
!893 = !DILocation(line: 437, column: 5, scope: !803)
!894 = !DILocation(line: 438, column: 59, scope: !803)
!895 = !DILocalVariable(name: "ctrbyte", scope: !803, file: !25, line: 375, type: !18)
!896 = !DILocation(line: 440, column: 5, scope: !803)
!897 = !DILocation(line: 442, column: 5, scope: !803)
!898 = !DILocation(line: 445, column: 18, scope: !803)
!899 = !DILocation(line: 447, column: 9, scope: !803)
!900 = !DILocalVariable(name: "i", scope: !901, file: !25, line: 451, type: !45)
!901 = distinct !DILexicalBlock(scope: !803, file: !25, line: 451, column: 9)
!902 = !DILocation(line: 0, scope: !901)
!903 = !DILocation(line: 451, column: 14, scope: !901)
!904 = !DILocation(line: 451, scope: !901)
!905 = !DILocation(line: 451, column: 27, scope: !906)
!906 = distinct !DILexicalBlock(scope: !901, file: !25, line: 451, column: 9)
!907 = !DILocation(line: 451, column: 9, scope: !901)
!908 = !DILocation(line: 452, column: 26, scope: !909)
!909 = distinct !DILexicalBlock(scope: !906, file: !25, line: 451, column: 48)
!910 = !DILocation(line: 452, column: 22, scope: !909)
!911 = !DILocation(line: 452, column: 52, scope: !909)
!912 = !DILocation(line: 452, column: 48, scope: !909)
!913 = !DILocation(line: 452, column: 13, scope: !909)
!914 = !DILocation(line: 451, column: 43, scope: !906)
!915 = !DILocation(line: 451, column: 9, scope: !906)
!916 = distinct !{!916, !907, !917, !244}
!917 = !DILocation(line: 453, column: 9, scope: !901)
!918 = !DILocation(line: 404, column: 23, scope: !803)
!919 = !DILocation(line: 455, column: 9, scope: !803)
!920 = !DILocation(line: 457, column: 9, scope: !803)
!921 = !DILocation(line: 458, column: 9, scope: !803)
!922 = !DILocalVariable(name: "i", scope: !923, file: !25, line: 460, type: !45)
!923 = distinct !DILexicalBlock(scope: !803, file: !25, line: 460, column: 9)
!924 = !DILocation(line: 0, scope: !923)
!925 = !DILocation(line: 460, column: 14, scope: !923)
!926 = !DILocation(line: 460, scope: !923)
!927 = !DILocation(line: 460, column: 27, scope: !928)
!928 = distinct !DILexicalBlock(scope: !923, file: !25, line: 460, column: 9)
!929 = !DILocation(line: 460, column: 9, scope: !923)
!930 = !DILocation(line: 462, column: 20, scope: !931)
!931 = distinct !DILexicalBlock(scope: !928, file: !25, line: 461, column: 9)
!932 = !DILocation(line: 462, column: 43, scope: !931)
!933 = !DILocation(line: 462, column: 13, scope: !931)
!934 = !DILocation(line: 462, column: 48, scope: !931)
!935 = !DILocation(line: 460, column: 39, scope: !928)
!936 = !DILocation(line: 460, column: 9, scope: !928)
!937 = distinct !{!937, !929, !938, !244}
!938 = !DILocation(line: 463, column: 9, scope: !923)
!939 = !DILocation(line: 465, column: 18, scope: !803)
!940 = !DILocation(line: 465, column: 9, scope: !803)
!941 = !DILocation(line: 469, column: 13, scope: !942)
!942 = distinct !DILexicalBlock(scope: !803, file: !25, line: 469, column: 13)
!943 = !DILocation(line: 472, column: 13, scope: !944)
!944 = distinct !DILexicalBlock(scope: !942, file: !25, line: 471, column: 16)
!945 = !DILocation(line: 473, column: 13, scope: !944)
!946 = !DILocalVariable(name: "i", scope: !947, file: !25, line: 477, type: !45)
!947 = distinct !DILexicalBlock(scope: !803, file: !25, line: 477, column: 5)
!948 = !DILocation(line: 0, scope: !947)
!949 = !DILocation(line: 477, column: 10, scope: !947)
!950 = !DILocation(line: 477, scope: !947)
!951 = !DILocation(line: 477, column: 23, scope: !952)
!952 = distinct !DILexicalBlock(scope: !947, file: !25, line: 477, column: 5)
!953 = !DILocation(line: 477, column: 5, scope: !947)
!954 = !DILocation(line: 478, column: 23, scope: !955)
!955 = distinct !DILexicalBlock(scope: !952, file: !25, line: 477, column: 44)
!956 = !DILocation(line: 478, column: 19, scope: !955)
!957 = !DILocalVariable(name: "vi", scope: !803, file: !25, line: 376, type: !18)
!958 = !DILocation(line: 479, column: 17, scope: !955)
!959 = !DILocation(line: 479, column: 33, scope: !955)
!960 = !DILocation(line: 479, column: 29, scope: !955)
!961 = !DILocation(line: 479, column: 9, scope: !955)
!962 = !DILocation(line: 480, column: 31, scope: !955)
!963 = !DILocation(line: 480, column: 27, scope: !955)
!964 = !DILocation(line: 480, column: 9, scope: !955)
!965 = !DILocation(line: 481, column: 22, scope: !955)
!966 = !DILocation(line: 481, column: 18, scope: !955)
!967 = !DILocation(line: 481, column: 32, scope: !955)
!968 = !DILocation(line: 481, column: 61, scope: !955)
!969 = !DILocation(line: 481, column: 57, scope: !955)
!970 = !DILocation(line: 481, column: 9, scope: !955)
!971 = !DILocation(line: 477, column: 39, scope: !952)
!972 = !DILocation(line: 477, column: 5, scope: !952)
!973 = distinct !{!973, !953, !974, !244}
!974 = !DILocation(line: 482, column: 5, scope: !947)
!975 = !DILocation(line: 483, column: 5, scope: !803)
!976 = !DILocation(line: 485, column: 34, scope: !803)
!977 = !DILocation(line: 485, column: 5, scope: !803)
!978 = !DILocation(line: 486, column: 13, scope: !803)
!979 = !DILabel(scope: !803, name: "err", file: !25, line: 488)
!980 = !DILocation(line: 488, column: 1, scope: !803)
!981 = !DILocation(line: 489, column: 5, scope: !803)
!982 = !DILocation(line: 490, column: 5, scope: !803)
!983 = !DILocation(line: 491, column: 5, scope: !803)
!984 = !DILocation(line: 492, column: 5, scope: !803)
!985 = !DILocation(line: 493, column: 23, scope: !803)
!986 = !DILocation(line: 493, column: 5, scope: !803)
!987 = !DILocation(line: 494, column: 5, scope: !803)
!988 = !DILocation(line: 495, column: 5, scope: !803)
!989 = !DILocation(line: 496, column: 5, scope: !803)
!990 = !DILocation(line: 497, column: 5, scope: !803)
!991 = !DILocation(line: 498, column: 5, scope: !803)
!992 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !425, file: !425, line: 244, type: !993, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!993 = !DISubroutineType(types: !994)
!994 = !{null, !278, !49, !428, !428, !5, !5}
!995 = !DILocalVariable(name: "p", arg: 1, scope: !992, file: !425, line: 244, type: !278)
!996 = !DILocation(line: 0, scope: !992)
!997 = !DILocalVariable(name: "Vdec", arg: 2, scope: !992, file: !425, line: 244, type: !49)
!998 = !DILocalVariable(name: "L", arg: 3, scope: !992, file: !425, line: 244, type: !428)
!999 = !DILocalVariable(name: "P1", arg: 4, scope: !992, file: !425, line: 244, type: !428)
!1000 = !DILocalVariable(name: "VL", arg: 5, scope: !992, file: !425, line: 244, type: !5)
!1001 = !DILocalVariable(name: "VP1V", arg: 6, scope: !992, file: !425, line: 244, type: !5)
!1002 = !DILocalVariable(name: "param_k", scope: !992, file: !425, line: 246, type: !343)
!1003 = !DILocalVariable(name: "param_v", scope: !992, file: !425, line: 247, type: !343)
!1004 = !DILocalVariable(name: "param_o", scope: !992, file: !425, line: 248, type: !343)
!1005 = !DILocation(line: 251, column: 5, scope: !992)
!1006 = !DILocalVariable(name: "Pv", scope: !992, file: !425, line: 254, type: !1007)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 249600, elements: !1008)
!1008 = !{!1009}
!1009 = !DISubrange(count: 3900)
!1010 = !DILocation(line: 254, column: 14, scope: !992)
!1011 = !DILocation(line: 255, column: 5, scope: !992)
!1012 = !DILocation(line: 256, column: 5, scope: !992)
!1013 = !DILocation(line: 257, column: 1, scope: !992)
!1014 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 43, type: !1015, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !278, !5, !49, !18}
!1017 = !DILocalVariable(name: "p", arg: 1, scope: !1014, file: !25, line: 43, type: !278)
!1018 = !DILocation(line: 0, scope: !1014)
!1019 = !DILocalVariable(name: "vPv", arg: 2, scope: !1014, file: !25, line: 43, type: !5)
!1020 = !DILocalVariable(name: "t", arg: 3, scope: !1014, file: !25, line: 43, type: !49)
!1021 = !DILocalVariable(name: "y", arg: 4, scope: !1014, file: !25, line: 43, type: !18)
!1022 = !DILocalVariable(name: "top_pos", scope: !1014, file: !25, line: 48, type: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!1024 = !DILocalVariable(name: "m_vec_limbs", scope: !1014, file: !25, line: 49, type: !1023)
!1025 = !DILocalVariable(name: "mask", scope: !1026, file: !25, line: 53, type: !6)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !25, line: 52, column: 29)
!1027 = distinct !DILexicalBlock(scope: !1014, file: !25, line: 52, column: 8)
!1028 = !DILocation(line: 0, scope: !1026)
!1029 = !DILocalVariable(name: "i", scope: !1030, file: !25, line: 56, type: !45)
!1030 = distinct !DILexicalBlock(scope: !1026, file: !25, line: 56, column: 9)
!1031 = !DILocation(line: 0, scope: !1030)
!1032 = !DILocation(line: 56, column: 14, scope: !1030)
!1033 = !DILocation(line: 56, scope: !1030)
!1034 = !DILocation(line: 56, column: 27, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !25, line: 56, column: 9)
!1036 = !DILocation(line: 56, column: 9, scope: !1030)
!1037 = !DILocation(line: 58, column: 13, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1035, file: !25, line: 57, column: 9)
!1039 = !DILocation(line: 58, column: 50, scope: !1038)
!1040 = !DILocation(line: 56, column: 53, scope: !1035)
!1041 = !DILocation(line: 56, column: 9, scope: !1035)
!1042 = distinct !{!1042, !1036, !1043, !244}
!1043 = !DILocation(line: 59, column: 9, scope: !1030)
!1044 = !DILocalVariable(name: "temp", scope: !1014, file: !25, line: 62, type: !681)
!1045 = !DILocation(line: 62, column: 14, scope: !1014)
!1046 = !DILocalVariable(name: "temp_bytes", scope: !1014, file: !25, line: 63, type: !18)
!1047 = !DILocalVariable(name: "i", scope: !1048, file: !25, line: 64, type: !45)
!1048 = distinct !DILexicalBlock(scope: !1014, file: !25, line: 64, column: 5)
!1049 = !DILocation(line: 0, scope: !1048)
!1050 = !DILocation(line: 64, column: 10, scope: !1048)
!1051 = !DILocation(line: 64, scope: !1048)
!1052 = !DILocation(line: 64, column: 36, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !25, line: 64, column: 5)
!1054 = !DILocation(line: 64, column: 5, scope: !1048)
!1055 = !DILocation(line: 65, column: 9, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !25, line: 65, column: 9)
!1057 = distinct !DILexicalBlock(scope: !1053, file: !25, line: 64, column: 48)
!1058 = !DILocation(line: 99, column: 5, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1014, file: !25, line: 99, column: 5)
!1060 = !DILocation(line: 65, scope: !1056)
!1061 = !DILocalVariable(name: "j", scope: !1056, file: !25, line: 65, type: !45)
!1062 = !DILocation(line: 0, scope: !1056)
!1063 = !DILocation(line: 65, column: 27, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1056, file: !25, line: 65, column: 9)
!1065 = !DILocation(line: 67, column: 34, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1064, file: !25, line: 65, column: 46)
!1067 = !DILocation(line: 67, column: 54, scope: !1066)
!1068 = !DILocation(line: 67, column: 66, scope: !1066)
!1069 = !DILocalVariable(name: "top", scope: !1066, file: !25, line: 67, type: !14)
!1070 = !DILocation(line: 0, scope: !1066)
!1071 = !DILocation(line: 68, column: 13, scope: !1066)
!1072 = !DILocation(line: 68, column: 33, scope: !1066)
!1073 = !DILocalVariable(name: "k", scope: !1074, file: !25, line: 69, type: !45)
!1074 = distinct !DILexicalBlock(scope: !1066, file: !25, line: 69, column: 13)
!1075 = !DILocation(line: 0, scope: !1074)
!1076 = !DILocation(line: 69, column: 17, scope: !1074)
!1077 = !DILocation(line: 69, scope: !1074)
!1078 = !DILocation(line: 69, column: 43, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !25, line: 69, column: 13)
!1080 = !DILocation(line: 69, column: 13, scope: !1074)
!1081 = !DILocation(line: 74, column: 13, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1066, file: !25, line: 74, column: 13)
!1083 = !DILocation(line: 70, column: 30, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !25, line: 69, column: 52)
!1085 = !DILocation(line: 70, column: 38, scope: !1084)
!1086 = !DILocation(line: 70, column: 23, scope: !1084)
!1087 = !DILocation(line: 70, column: 17, scope: !1084)
!1088 = !DILocation(line: 70, column: 27, scope: !1084)
!1089 = !DILocation(line: 71, column: 17, scope: !1084)
!1090 = !DILocation(line: 71, column: 25, scope: !1084)
!1091 = !DILocation(line: 69, column: 49, scope: !1079)
!1092 = !DILocation(line: 69, column: 13, scope: !1079)
!1093 = distinct !{!1093, !1080, !1094, !244}
!1094 = !DILocation(line: 72, column: 13, scope: !1074)
!1095 = !DILocation(line: 74, scope: !1082)
!1096 = !DILocalVariable(name: "jj", scope: !1082, file: !25, line: 74, type: !45)
!1097 = !DILocation(line: 0, scope: !1082)
!1098 = !DILocation(line: 74, column: 33, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1082, file: !25, line: 74, column: 13)
!1100 = !DILocation(line: 92, column: 13, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1066, file: !25, line: 92, column: 13)
!1102 = !DILocation(line: 75, column: 22, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !25, line: 75, column: 20)
!1104 = distinct !DILexicalBlock(scope: !1099, file: !25, line: 74, column: 53)
!1105 = !DILocation(line: 75, column: 25, scope: !1103)
!1106 = !DILocation(line: 79, column: 52, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1103, file: !25, line: 75, column: 30)
!1108 = !DILocation(line: 79, column: 41, scope: !1107)
!1109 = !DILocation(line: 79, column: 34, scope: !1107)
!1110 = !DILocation(line: 79, column: 21, scope: !1107)
!1111 = !DILocation(line: 79, column: 38, scope: !1107)
!1112 = !DILocation(line: 81, column: 17, scope: !1107)
!1113 = !DILocation(line: 86, column: 52, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1103, file: !25, line: 82, column: 22)
!1115 = !DILocation(line: 86, column: 41, scope: !1114)
!1116 = !DILocation(line: 86, column: 73, scope: !1114)
!1117 = !DILocation(line: 86, column: 34, scope: !1114)
!1118 = !DILocation(line: 86, column: 21, scope: !1114)
!1119 = !DILocation(line: 86, column: 38, scope: !1114)
!1120 = !DILocation(line: 74, column: 49, scope: !1099)
!1121 = !DILocation(line: 74, column: 13, scope: !1099)
!1122 = distinct !{!1122, !1081, !1123, !244}
!1123 = !DILocation(line: 89, column: 13, scope: !1082)
!1124 = !DILocation(line: 92, scope: !1101)
!1125 = !DILocalVariable(name: "k", scope: !1101, file: !25, line: 92, type: !15)
!1126 = !DILocation(line: 0, scope: !1101)
!1127 = !DILocation(line: 92, column: 31, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1101, file: !25, line: 92, column: 13)
!1129 = !DILocation(line: 93, column: 36, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1128, file: !25, line: 92, column: 51)
!1131 = !DILocation(line: 93, column: 49, scope: !1130)
!1132 = !DILocation(line: 93, column: 28, scope: !1130)
!1133 = !DILocation(line: 93, column: 78, scope: !1130)
!1134 = !DILocation(line: 93, column: 91, scope: !1130)
!1135 = !DILocation(line: 93, column: 104, scope: !1130)
!1136 = !DILocation(line: 93, column: 83, scope: !1130)
!1137 = !DILocation(line: 93, column: 82, scope: !1130)
!1138 = !DILocation(line: 93, column: 73, scope: !1130)
!1139 = !DILocation(line: 93, column: 17, scope: !1130)
!1140 = !DILocation(line: 93, column: 25, scope: !1130)
!1141 = !DILocation(line: 92, column: 48, scope: !1128)
!1142 = !DILocation(line: 92, column: 13, scope: !1128)
!1143 = distinct !{!1143, !1100, !1144, !244}
!1144 = !DILocation(line: 94, column: 13, scope: !1101)
!1145 = !DILocation(line: 65, column: 42, scope: !1064)
!1146 = !DILocation(line: 65, column: 9, scope: !1064)
!1147 = distinct !{!1147, !1055, !1148, !244}
!1148 = !DILocation(line: 95, column: 9, scope: !1056)
!1149 = !DILocation(line: 64, column: 44, scope: !1053)
!1150 = !DILocation(line: 64, column: 5, scope: !1053)
!1151 = distinct !{!1151, !1054, !1152, !244}
!1152 = !DILocation(line: 96, column: 5, scope: !1048)
!1153 = !DILocation(line: 99, scope: !1059)
!1154 = !DILocalVariable(name: "i", scope: !1059, file: !25, line: 99, type: !45)
!1155 = !DILocation(line: 0, scope: !1059)
!1156 = !DILocation(line: 99, column: 23, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1059, file: !25, line: 99, column: 5)
!1158 = !DILocation(line: 105, column: 18, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1157, file: !25, line: 100, column: 5)
!1160 = !DILocation(line: 105, column: 40, scope: !1159)
!1161 = !DILocation(line: 105, column: 28, scope: !1159)
!1162 = !DILocation(line: 105, column: 44, scope: !1159)
!1163 = !DILocation(line: 105, column: 25, scope: !1159)
!1164 = !DILocation(line: 105, column: 9, scope: !1159)
!1165 = !DILocation(line: 105, column: 16, scope: !1159)
!1166 = !DILocation(line: 106, column: 21, scope: !1159)
!1167 = !DILocation(line: 106, column: 18, scope: !1159)
!1168 = !DILocation(line: 106, column: 40, scope: !1159)
!1169 = !DILocation(line: 106, column: 28, scope: !1159)
!1170 = !DILocation(line: 106, column: 44, scope: !1159)
!1171 = !DILocation(line: 106, column: 25, scope: !1159)
!1172 = !DILocation(line: 106, column: 12, scope: !1159)
!1173 = !DILocation(line: 106, column: 9, scope: !1159)
!1174 = !DILocation(line: 106, column: 16, scope: !1159)
!1175 = !DILocation(line: 99, column: 38, scope: !1157)
!1176 = !DILocation(line: 99, column: 5, scope: !1157)
!1177 = distinct !{!1177, !1058, !1178, !244}
!1178 = !DILocation(line: 108, column: 5, scope: !1059)
!1179 = !DILocation(line: 109, column: 1, scope: !1014)
!1180 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 154, type: !1181, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !278, !5, !18}
!1183 = !DILocalVariable(name: "p", arg: 1, scope: !1180, file: !25, line: 154, type: !278)
!1184 = !DILocation(line: 0, scope: !1180)
!1185 = !DILocalVariable(name: "VtL", arg: 2, scope: !1180, file: !25, line: 154, type: !5)
!1186 = !DILocalVariable(name: "A_out", arg: 3, scope: !1180, file: !25, line: 154, type: !18)
!1187 = !DILocalVariable(name: "bits_to_shift", scope: !1180, file: !25, line: 159, type: !45)
!1188 = !DILocalVariable(name: "words_to_shift", scope: !1180, file: !25, line: 160, type: !45)
!1189 = !DILocalVariable(name: "m_vec_limbs", scope: !1180, file: !25, line: 161, type: !343)
!1190 = !DILocalVariable(name: "A", scope: !1180, file: !25, line: 162, type: !1191)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 51200, elements: !1192)
!1192 = !{!1193}
!1193 = !DISubrange(count: 800)
!1194 = !DILocation(line: 162, column: 14, scope: !1180)
!1195 = !DILocalVariable(name: "A_width", scope: !1180, file: !25, line: 163, type: !15)
!1196 = !DILocalVariable(name: "mask", scope: !1197, file: !25, line: 168, type: !6)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !25, line: 167, column: 29)
!1198 = distinct !DILexicalBlock(scope: !1180, file: !25, line: 167, column: 8)
!1199 = !DILocation(line: 0, scope: !1197)
!1200 = !DILocalVariable(name: "i", scope: !1201, file: !25, line: 171, type: !45)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !25, line: 171, column: 9)
!1202 = !DILocation(line: 0, scope: !1201)
!1203 = !DILocation(line: 171, column: 14, scope: !1201)
!1204 = !DILocation(line: 171, scope: !1201)
!1205 = !DILocation(line: 171, column: 27, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1201, file: !25, line: 171, column: 9)
!1207 = !DILocation(line: 171, column: 9, scope: !1201)
!1208 = !DILocation(line: 177, column: 5, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1180, file: !25, line: 177, column: 5)
!1210 = !DILocation(line: 173, column: 13, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1206, file: !25, line: 172, column: 9)
!1212 = !DILocation(line: 173, column: 50, scope: !1211)
!1213 = !DILocation(line: 171, column: 53, scope: !1206)
!1214 = !DILocation(line: 171, column: 9, scope: !1206)
!1215 = distinct !{!1215, !1207, !1216, !244}
!1216 = !DILocation(line: 174, column: 9, scope: !1201)
!1217 = !DILocation(line: 177, scope: !1209)
!1218 = !DILocation(line: 160, column: 9, scope: !1180)
!1219 = !DILocation(line: 159, column: 9, scope: !1180)
!1220 = !DILocalVariable(name: "i", scope: !1209, file: !25, line: 177, type: !45)
!1221 = !DILocation(line: 0, scope: !1209)
!1222 = !DILocation(line: 177, column: 23, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1209, file: !25, line: 177, column: 5)
!1224 = !DILocation(line: 178, column: 9, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !25, line: 178, column: 9)
!1226 = distinct !DILexicalBlock(scope: !1223, file: !25, line: 177, column: 47)
!1227 = !DILocation(line: 212, column: 5, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1180, file: !25, line: 212, column: 5)
!1229 = !DILocation(line: 178, scope: !1225)
!1230 = !DILocalVariable(name: "j", scope: !1225, file: !25, line: 178, type: !45)
!1231 = !DILocation(line: 0, scope: !1225)
!1232 = !DILocation(line: 178, column: 40, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1225, file: !25, line: 178, column: 9)
!1234 = !DILocation(line: 180, column: 22, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1233, file: !25, line: 178, column: 51)
!1236 = !DILocalVariable(name: "Mj", scope: !1180, file: !25, line: 164, type: !428)
!1237 = !DILocalVariable(name: "c", scope: !1238, file: !25, line: 181, type: !45)
!1238 = distinct !DILexicalBlock(scope: !1235, file: !25, line: 181, column: 13)
!1239 = !DILocation(line: 0, scope: !1238)
!1240 = !DILocation(line: 181, column: 18, scope: !1238)
!1241 = !DILocation(line: 181, scope: !1238)
!1242 = !DILocation(line: 181, column: 31, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1238, file: !25, line: 181, column: 13)
!1244 = !DILocation(line: 181, column: 13, scope: !1238)
!1245 = !DILocation(line: 182, column: 17, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !25, line: 182, column: 17)
!1247 = distinct !DILexicalBlock(scope: !1243, file: !25, line: 181, column: 50)
!1248 = !DILocation(line: 182, scope: !1246)
!1249 = !DILocalVariable(name: "k", scope: !1246, file: !25, line: 182, type: !45)
!1250 = !DILocation(line: 0, scope: !1246)
!1251 = !DILocation(line: 182, column: 35, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1246, file: !25, line: 182, column: 17)
!1253 = !DILocation(line: 184, column: 78, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1252, file: !25, line: 183, column: 17)
!1255 = !DILocation(line: 184, column: 100, scope: !1254)
!1256 = !DILocation(line: 184, column: 35, scope: !1254)
!1257 = !DILocation(line: 184, column: 39, scope: !1254)
!1258 = !DILocation(line: 184, column: 48, scope: !1254)
!1259 = !DILocation(line: 184, column: 65, scope: !1254)
!1260 = !DILocation(line: 184, column: 43, scope: !1254)
!1261 = !DILocation(line: 184, column: 21, scope: !1254)
!1262 = !DILocation(line: 184, column: 75, scope: !1254)
!1263 = !DILocation(line: 185, column: 38, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1254, file: !25, line: 185, column: 24)
!1265 = !DILocation(line: 186, column: 86, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1264, file: !25, line: 185, column: 42)
!1267 = !DILocation(line: 186, column: 114, scope: !1266)
!1268 = !DILocation(line: 186, column: 108, scope: !1266)
!1269 = !DILocation(line: 186, column: 39, scope: !1266)
!1270 = !DILocation(line: 186, column: 43, scope: !1266)
!1271 = !DILocation(line: 186, column: 52, scope: !1266)
!1272 = !DILocation(line: 186, column: 73, scope: !1266)
!1273 = !DILocation(line: 186, column: 47, scope: !1266)
!1274 = !DILocation(line: 186, column: 25, scope: !1266)
!1275 = !DILocation(line: 186, column: 83, scope: !1266)
!1276 = !DILocation(line: 187, column: 21, scope: !1266)
!1277 = !DILocation(line: 182, column: 51, scope: !1252)
!1278 = !DILocation(line: 182, column: 17, scope: !1252)
!1279 = distinct !{!1279, !1245, !1280, !244}
!1280 = !DILocation(line: 188, column: 17, scope: !1246)
!1281 = !DILocation(line: 181, column: 46, scope: !1243)
!1282 = !DILocation(line: 181, column: 13, scope: !1243)
!1283 = distinct !{!1283, !1244, !1284, !244}
!1284 = !DILocation(line: 189, column: 13, scope: !1238)
!1285 = !DILocation(line: 191, column: 19, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1235, file: !25, line: 191, column: 17)
!1287 = !DILocation(line: 192, column: 26, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1286, file: !25, line: 191, column: 25)
!1289 = !DILocalVariable(name: "Mi", scope: !1180, file: !25, line: 164, type: !428)
!1290 = !DILocalVariable(name: "c", scope: !1291, file: !25, line: 193, type: !45)
!1291 = distinct !DILexicalBlock(scope: !1288, file: !25, line: 193, column: 17)
!1292 = !DILocation(line: 0, scope: !1291)
!1293 = !DILocation(line: 193, column: 22, scope: !1291)
!1294 = !DILocation(line: 193, scope: !1291)
!1295 = !DILocation(line: 193, column: 35, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !25, line: 193, column: 17)
!1297 = !DILocation(line: 193, column: 17, scope: !1291)
!1298 = !DILocation(line: 194, column: 21, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !25, line: 194, column: 21)
!1300 = distinct !DILexicalBlock(scope: !1296, file: !25, line: 193, column: 54)
!1301 = !DILocation(line: 194, scope: !1299)
!1302 = !DILocalVariable(name: "k", scope: !1299, file: !25, line: 194, type: !45)
!1303 = !DILocation(line: 0, scope: !1299)
!1304 = !DILocation(line: 194, column: 39, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1299, file: !25, line: 194, column: 21)
!1306 = !DILocation(line: 196, column: 81, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1305, file: !25, line: 195, column: 21)
!1308 = !DILocation(line: 196, column: 103, scope: !1307)
!1309 = !DILocation(line: 196, column: 38, scope: !1307)
!1310 = !DILocation(line: 196, column: 42, scope: !1307)
!1311 = !DILocation(line: 196, column: 51, scope: !1307)
!1312 = !DILocation(line: 196, column: 68, scope: !1307)
!1313 = !DILocation(line: 196, column: 46, scope: !1307)
!1314 = !DILocation(line: 196, column: 25, scope: !1307)
!1315 = !DILocation(line: 196, column: 78, scope: !1307)
!1316 = !DILocation(line: 197, column: 42, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1307, file: !25, line: 197, column: 28)
!1318 = !DILocation(line: 198, column: 89, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1317, file: !25, line: 197, column: 46)
!1320 = !DILocation(line: 198, column: 117, scope: !1319)
!1321 = !DILocation(line: 198, column: 111, scope: !1319)
!1322 = !DILocation(line: 198, column: 42, scope: !1319)
!1323 = !DILocation(line: 198, column: 46, scope: !1319)
!1324 = !DILocation(line: 198, column: 55, scope: !1319)
!1325 = !DILocation(line: 198, column: 76, scope: !1319)
!1326 = !DILocation(line: 198, column: 50, scope: !1319)
!1327 = !DILocation(line: 198, column: 29, scope: !1319)
!1328 = !DILocation(line: 198, column: 86, scope: !1319)
!1329 = !DILocation(line: 199, column: 25, scope: !1319)
!1330 = !DILocation(line: 194, column: 55, scope: !1305)
!1331 = !DILocation(line: 194, column: 21, scope: !1305)
!1332 = distinct !{!1332, !1298, !1333, !244}
!1333 = !DILocation(line: 200, column: 21, scope: !1299)
!1334 = !DILocation(line: 193, column: 50, scope: !1296)
!1335 = !DILocation(line: 193, column: 17, scope: !1296)
!1336 = distinct !{!1336, !1297, !1337, !244}
!1337 = !DILocation(line: 201, column: 17, scope: !1291)
!1338 = !DILocation(line: 204, column: 27, scope: !1235)
!1339 = !DILocation(line: 205, column: 30, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1235, file: !25, line: 205, column: 16)
!1341 = !DILocation(line: 178, column: 46, scope: !1233)
!1342 = !DILocation(line: 178, column: 9, scope: !1233)
!1343 = distinct !{!1343, !1224, !1344, !244}
!1344 = !DILocation(line: 209, column: 9, scope: !1225)
!1345 = !DILocation(line: 177, column: 42, scope: !1223)
!1346 = !DILocation(line: 177, column: 5, scope: !1223)
!1347 = distinct !{!1347, !1208, !1348, !244}
!1348 = !DILocation(line: 210, column: 5, scope: !1209)
!1349 = !DILocation(line: 212, scope: !1228)
!1350 = !DILocalVariable(name: "c", scope: !1228, file: !25, line: 212, type: !15)
!1351 = !DILocation(line: 0, scope: !1228)
!1352 = !DILocation(line: 212, column: 26, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1228, file: !25, line: 212, column: 5)
!1354 = !DILocation(line: 214, column: 35, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1353, file: !25, line: 213, column: 5)
!1356 = !DILocation(line: 214, column: 9, scope: !1355)
!1357 = !DILocation(line: 212, column: 91, scope: !1353)
!1358 = !DILocation(line: 212, column: 5, scope: !1353)
!1359 = distinct !{!1359, !1227, !1360, !244}
!1360 = !DILocation(line: 215, column: 5, scope: !1228)
!1361 = !DILocalVariable(name: "tab", scope: !1180, file: !25, line: 217, type: !116)
!1362 = !DILocation(line: 217, column: 19, scope: !1180)
!1363 = !DILocalVariable(name: "i", scope: !1364, file: !25, line: 218, type: !15)
!1364 = distinct !DILexicalBlock(scope: !1180, file: !25, line: 218, column: 5)
!1365 = !DILocation(line: 0, scope: !1364)
!1366 = !DILocation(line: 218, column: 10, scope: !1364)
!1367 = !DILocation(line: 218, scope: !1364)
!1368 = !DILocation(line: 218, column: 26, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1364, file: !25, line: 218, column: 5)
!1370 = !DILocation(line: 218, column: 5, scope: !1364)
!1371 = !DILocation(line: 228, column: 5, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1180, file: !25, line: 228, column: 5)
!1373 = !DILocation(line: 220, column: 28, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1369, file: !25, line: 219, column: 5)
!1375 = !DILocation(line: 220, column: 22, scope: !1374)
!1376 = !DILocation(line: 220, column: 14, scope: !1374)
!1377 = !DILocation(line: 220, column: 9, scope: !1374)
!1378 = !DILocation(line: 220, column: 20, scope: !1374)
!1379 = !DILocation(line: 221, column: 22, scope: !1374)
!1380 = !DILocation(line: 221, column: 14, scope: !1374)
!1381 = !DILocation(line: 221, column: 16, scope: !1374)
!1382 = !DILocation(line: 221, column: 9, scope: !1374)
!1383 = !DILocation(line: 221, column: 20, scope: !1374)
!1384 = !DILocation(line: 222, column: 28, scope: !1374)
!1385 = !DILocation(line: 222, column: 22, scope: !1374)
!1386 = !DILocation(line: 222, column: 14, scope: !1374)
!1387 = !DILocation(line: 222, column: 16, scope: !1374)
!1388 = !DILocation(line: 222, column: 9, scope: !1374)
!1389 = !DILocation(line: 222, column: 20, scope: !1374)
!1390 = !DILocation(line: 223, column: 28, scope: !1374)
!1391 = !DILocation(line: 223, column: 22, scope: !1374)
!1392 = !DILocation(line: 223, column: 14, scope: !1374)
!1393 = !DILocation(line: 223, column: 16, scope: !1374)
!1394 = !DILocation(line: 223, column: 9, scope: !1374)
!1395 = !DILocation(line: 223, column: 20, scope: !1374)
!1396 = !DILocation(line: 218, column: 41, scope: !1369)
!1397 = !DILocation(line: 218, column: 5, scope: !1369)
!1398 = distinct !{!1398, !1370, !1399, !244}
!1399 = !DILocation(line: 224, column: 5, scope: !1364)
!1400 = !DILocation(line: 228, scope: !1372)
!1401 = !DILocalVariable(name: "c", scope: !1372, file: !25, line: 228, type: !15)
!1402 = !DILocation(line: 0, scope: !1372)
!1403 = !DILocation(line: 228, column: 26, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1372, file: !25, line: 228, column: 5)
!1405 = !DILocation(line: 230, column: 9, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !25, line: 230, column: 9)
!1407 = distinct !DILexicalBlock(scope: !1404, file: !25, line: 229, column: 5)
!1408 = !DILocation(line: 250, column: 5, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1180, file: !25, line: 250, column: 5)
!1410 = !DILocation(line: 230, scope: !1406)
!1411 = !DILocalVariable(name: "r", scope: !1406, file: !25, line: 230, type: !45)
!1412 = !DILocation(line: 0, scope: !1406)
!1413 = !DILocation(line: 230, column: 36, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1406, file: !25, line: 230, column: 9)
!1415 = !DILocation(line: 232, column: 28, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1414, file: !25, line: 231, column: 9)
!1417 = !DILocation(line: 232, column: 32, scope: !1416)
!1418 = !DILocation(line: 232, column: 41, scope: !1416)
!1419 = !DILocation(line: 232, column: 49, scope: !1416)
!1420 = !DILocation(line: 232, column: 45, scope: !1416)
!1421 = !DILocalVariable(name: "pos", scope: !1416, file: !25, line: 232, type: !15)
!1422 = !DILocation(line: 0, scope: !1416)
!1423 = !DILocation(line: 233, column: 28, scope: !1416)
!1424 = !DILocation(line: 233, column: 41, scope: !1416)
!1425 = !DILocalVariable(name: "t0", scope: !1416, file: !25, line: 233, type: !6)
!1426 = !DILocation(line: 234, column: 35, scope: !1416)
!1427 = !DILocation(line: 234, column: 41, scope: !1416)
!1428 = !DILocalVariable(name: "t1", scope: !1416, file: !25, line: 234, type: !6)
!1429 = !DILocation(line: 235, column: 35, scope: !1416)
!1430 = !DILocation(line: 235, column: 41, scope: !1416)
!1431 = !DILocalVariable(name: "t2", scope: !1416, file: !25, line: 235, type: !6)
!1432 = !DILocation(line: 236, column: 28, scope: !1416)
!1433 = !DILocation(line: 236, column: 35, scope: !1416)
!1434 = !DILocation(line: 236, column: 41, scope: !1416)
!1435 = !DILocalVariable(name: "t3", scope: !1416, file: !25, line: 236, type: !6)
!1436 = !DILocalVariable(name: "t", scope: !1437, file: !25, line: 237, type: !15)
!1437 = distinct !DILexicalBlock(scope: !1416, file: !25, line: 237, column: 13)
!1438 = !DILocation(line: 0, scope: !1437)
!1439 = !DILocation(line: 237, column: 18, scope: !1437)
!1440 = !DILocation(line: 237, scope: !1437)
!1441 = !DILocation(line: 237, column: 34, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1437, file: !25, line: 237, column: 13)
!1443 = !DILocation(line: 237, column: 13, scope: !1437)
!1444 = !DILocation(line: 239, column: 89, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1442, file: !25, line: 238, column: 13)
!1446 = !DILocation(line: 239, column: 84, scope: !1445)
!1447 = !DILocation(line: 239, column: 83, scope: !1445)
!1448 = !DILocation(line: 239, column: 105, scope: !1445)
!1449 = !DILocation(line: 239, column: 107, scope: !1445)
!1450 = !DILocation(line: 239, column: 100, scope: !1445)
!1451 = !DILocation(line: 239, column: 99, scope: !1445)
!1452 = !DILocation(line: 239, column: 95, scope: !1445)
!1453 = !DILocation(line: 239, column: 121, scope: !1445)
!1454 = !DILocation(line: 239, column: 123, scope: !1445)
!1455 = !DILocation(line: 239, column: 116, scope: !1445)
!1456 = !DILocation(line: 239, column: 115, scope: !1445)
!1457 = !DILocation(line: 239, column: 111, scope: !1445)
!1458 = !DILocation(line: 239, column: 137, scope: !1445)
!1459 = !DILocation(line: 239, column: 139, scope: !1445)
!1460 = !DILocation(line: 239, column: 132, scope: !1445)
!1461 = !DILocation(line: 239, column: 131, scope: !1445)
!1462 = !DILocation(line: 239, column: 127, scope: !1445)
!1463 = !DILocation(line: 239, column: 22, scope: !1445)
!1464 = !DILocation(line: 239, column: 24, scope: !1445)
!1465 = !DILocation(line: 239, column: 36, scope: !1445)
!1466 = !DILocation(line: 239, column: 40, scope: !1445)
!1467 = !DILocation(line: 239, column: 49, scope: !1445)
!1468 = !DILocation(line: 239, column: 58, scope: !1445)
!1469 = !DILocation(line: 239, column: 60, scope: !1445)
!1470 = !DILocation(line: 239, column: 72, scope: !1445)
!1471 = !DILocation(line: 239, column: 53, scope: !1445)
!1472 = !DILocation(line: 239, column: 17, scope: !1445)
!1473 = !DILocation(line: 239, column: 78, scope: !1445)
!1474 = !DILocation(line: 237, column: 49, scope: !1442)
!1475 = !DILocation(line: 237, column: 13, scope: !1442)
!1476 = distinct !{!1476, !1443, !1477, !244}
!1477 = !DILocation(line: 240, column: 13, scope: !1437)
!1478 = !DILocation(line: 230, column: 82, scope: !1414)
!1479 = !DILocation(line: 230, column: 9, scope: !1414)
!1480 = distinct !{!1480, !1405, !1481, !244}
!1481 = !DILocation(line: 241, column: 9, scope: !1406)
!1482 = !DILocation(line: 228, column: 38, scope: !1404)
!1483 = !DILocation(line: 228, column: 5, scope: !1404)
!1484 = distinct !{!1484, !1371, !1485, !244}
!1485 = !DILocation(line: 242, column: 5, scope: !1372)
!1486 = !DILocation(line: 250, scope: !1409)
!1487 = !DILocalVariable(name: "r", scope: !1409, file: !25, line: 250, type: !45)
!1488 = !DILocation(line: 0, scope: !1409)
!1489 = !DILocation(line: 250, column: 23, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1409, file: !25, line: 250, column: 5)
!1491 = !DILocation(line: 252, column: 9, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !25, line: 252, column: 9)
!1493 = distinct !DILexicalBlock(scope: !1490, file: !25, line: 251, column: 5)
!1494 = !DILocation(line: 252, scope: !1492)
!1495 = !DILocalVariable(name: "c", scope: !1492, file: !25, line: 252, type: !45)
!1496 = !DILocation(line: 0, scope: !1492)
!1497 = !DILocation(line: 252, column: 27, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1492, file: !25, line: 252, column: 9)
!1499 = !DILocation(line: 254, column: 13, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !25, line: 254, column: 13)
!1501 = distinct !DILexicalBlock(scope: !1498, file: !25, line: 253, column: 9)
!1502 = !DILocation(line: 254, scope: !1500)
!1503 = !DILocalVariable(name: "i", scope: !1500, file: !25, line: 254, type: !45)
!1504 = !DILocation(line: 0, scope: !1500)
!1505 = !DILocation(line: 254, column: 35, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1500, file: !25, line: 254, column: 13)
!1507 = !DILocation(line: 256, column: 55, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1506, file: !25, line: 255, column: 13)
!1509 = !DILocation(line: 256, column: 59, scope: !1508)
!1510 = !DILocation(line: 256, column: 63, scope: !1508)
!1511 = !DILocation(line: 256, column: 44, scope: !1508)
!1512 = !DILocation(line: 256, column: 95, scope: !1508)
!1513 = !DILocation(line: 256, column: 92, scope: !1508)
!1514 = !DILocation(line: 256, column: 75, scope: !1508)
!1515 = !DILocation(line: 256, column: 99, scope: !1508)
!1516 = !DILocation(line: 256, column: 104, scope: !1508)
!1517 = !DILocation(line: 256, column: 17, scope: !1508)
!1518 = !DILocation(line: 254, column: 50, scope: !1506)
!1519 = !DILocation(line: 254, column: 13, scope: !1506)
!1520 = distinct !{!1520, !1499, !1521, !244}
!1521 = !DILocation(line: 257, column: 13, scope: !1500)
!1522 = !DILocation(line: 252, column: 50, scope: !1498)
!1523 = !DILocation(line: 252, column: 9, scope: !1498)
!1524 = distinct !{!1524, !1491, !1525, !244}
!1525 = !DILocation(line: 258, column: 9, scope: !1492)
!1526 = !DILocation(line: 250, column: 38, scope: !1490)
!1527 = !DILocation(line: 250, column: 5, scope: !1490)
!1528 = distinct !{!1528, !1408, !1529, !244}
!1529 = !DILocation(line: 259, column: 5, scope: !1409)
!1530 = !DILocation(line: 260, column: 1, scope: !1180)
!1531 = distinct !DISubprogram(name: "mat_mul", scope: !595, file: !595, line: 79, type: !1532, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{null, !49, !49, !18, !45, !45, !45}
!1534 = !DILocalVariable(name: "a", arg: 1, scope: !1531, file: !595, line: 79, type: !49)
!1535 = !DILocation(line: 0, scope: !1531)
!1536 = !DILocalVariable(name: "b", arg: 2, scope: !1531, file: !595, line: 79, type: !49)
!1537 = !DILocalVariable(name: "c", arg: 3, scope: !1531, file: !595, line: 80, type: !18)
!1538 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1531, file: !595, line: 80, type: !45)
!1539 = !DILocalVariable(name: "row_a", arg: 5, scope: !1531, file: !595, line: 80, type: !45)
!1540 = !DILocalVariable(name: "col_b", arg: 6, scope: !1531, file: !595, line: 80, type: !45)
!1541 = !DILocalVariable(name: "i", scope: !1542, file: !595, line: 81, type: !45)
!1542 = distinct !DILexicalBlock(scope: !1531, file: !595, line: 81, column: 5)
!1543 = !DILocation(line: 0, scope: !1542)
!1544 = !DILocation(line: 81, column: 10, scope: !1542)
!1545 = !DILocation(line: 81, scope: !1542)
!1546 = !DILocation(line: 81, column: 23, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1542, file: !595, line: 81, column: 5)
!1548 = !DILocation(line: 81, column: 5, scope: !1542)
!1549 = !DILocation(line: 82, column: 9, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !595, line: 82, column: 9)
!1551 = distinct !DILexicalBlock(scope: !1547, file: !595, line: 81, column: 53)
!1552 = !DILocation(line: 82, scope: !1550)
!1553 = !DILocalVariable(name: "j", scope: !1550, file: !595, line: 82, type: !45)
!1554 = !DILocation(line: 0, scope: !1550)
!1555 = !DILocation(line: 83, column: 18, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !595, line: 82, column: 46)
!1557 = distinct !DILexicalBlock(scope: !1550, file: !595, line: 82, column: 9)
!1558 = !DILocation(line: 83, column: 16, scope: !1556)
!1559 = !DILocation(line: 82, column: 41, scope: !1557)
!1560 = !DILocation(line: 82, column: 9, scope: !1557)
!1561 = distinct !{!1561, !1549, !1562, !244}
!1562 = !DILocation(line: 84, column: 9, scope: !1550)
!1563 = !DILocation(line: 81, column: 32, scope: !1547)
!1564 = !DILocation(line: 81, column: 39, scope: !1547)
!1565 = !DILocation(line: 81, column: 5, scope: !1547)
!1566 = distinct !{!1566, !1548, !1567, !244}
!1567 = !DILocation(line: 85, column: 5, scope: !1542)
!1568 = !DILocation(line: 86, column: 1, scope: !1531)
!1569 = distinct !DISubprogram(name: "mat_add", scope: !595, file: !595, line: 88, type: !1570, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{null, !49, !49, !18, !45, !45}
!1572 = !DILocalVariable(name: "a", arg: 1, scope: !1569, file: !595, line: 88, type: !49)
!1573 = !DILocation(line: 0, scope: !1569)
!1574 = !DILocalVariable(name: "b", arg: 2, scope: !1569, file: !595, line: 88, type: !49)
!1575 = !DILocalVariable(name: "c", arg: 3, scope: !1569, file: !595, line: 89, type: !18)
!1576 = !DILocalVariable(name: "m", arg: 4, scope: !1569, file: !595, line: 89, type: !45)
!1577 = !DILocalVariable(name: "n", arg: 5, scope: !1569, file: !595, line: 89, type: !45)
!1578 = !DILocalVariable(name: "i", scope: !1579, file: !595, line: 90, type: !45)
!1579 = distinct !DILexicalBlock(scope: !1569, file: !595, line: 90, column: 5)
!1580 = !DILocation(line: 0, scope: !1579)
!1581 = !DILocation(line: 90, column: 10, scope: !1579)
!1582 = !DILocation(line: 90, scope: !1579)
!1583 = !DILocation(line: 90, column: 23, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1579, file: !595, line: 90, column: 5)
!1585 = !DILocation(line: 90, column: 5, scope: !1579)
!1586 = !DILocalVariable(name: "j", scope: !1587, file: !595, line: 91, type: !45)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !595, line: 91, column: 9)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !595, line: 90, column: 33)
!1589 = !DILocation(line: 0, scope: !1587)
!1590 = !DILocation(line: 92, column: 42, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !595, line: 91, column: 37)
!1592 = distinct !DILexicalBlock(scope: !1587, file: !595, line: 91, column: 9)
!1593 = !DILocation(line: 92, column: 38, scope: !1591)
!1594 = !DILocation(line: 92, column: 60, scope: !1591)
!1595 = !DILocation(line: 92, column: 56, scope: !1591)
!1596 = !DILocation(line: 92, column: 32, scope: !1591)
!1597 = !DILocation(line: 92, column: 17, scope: !1591)
!1598 = !DILocation(line: 92, column: 30, scope: !1591)
!1599 = !DILocation(line: 90, column: 28, scope: !1584)
!1600 = !DILocation(line: 90, column: 5, scope: !1584)
!1601 = distinct !{!1601, !1585, !1602, !244}
!1602 = !DILocation(line: 94, column: 5, scope: !1579)
!1603 = !DILocation(line: 95, column: 1, scope: !1569)
!1604 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 32, type: !379, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1605 = !DILocalVariable(name: "m", arg: 1, scope: !1604, file: !25, line: 32, type: !49)
!1606 = !DILocation(line: 0, scope: !1604)
!1607 = !DILocalVariable(name: "menc", arg: 2, scope: !1604, file: !25, line: 32, type: !18)
!1608 = !DILocalVariable(name: "mlen", arg: 3, scope: !1604, file: !25, line: 32, type: !45)
!1609 = !DILocalVariable(name: "i", scope: !1604, file: !25, line: 33, type: !45)
!1610 = !DILocation(line: 34, column: 10, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1604, file: !25, line: 34, column: 5)
!1612 = !DILocation(line: 34, scope: !1611)
!1613 = !DILocation(line: 34, column: 19, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1611, file: !25, line: 34, column: 5)
!1615 = !DILocation(line: 34, column: 5, scope: !1611)
!1616 = !DILocation(line: 35, column: 20, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1614, file: !25, line: 34, column: 44)
!1618 = !DILocation(line: 35, column: 31, scope: !1617)
!1619 = !DILocation(line: 35, column: 27, scope: !1617)
!1620 = !DILocation(line: 35, column: 36, scope: !1617)
!1621 = !DILocation(line: 35, column: 24, scope: !1617)
!1622 = !DILocation(line: 35, column: 9, scope: !1617)
!1623 = !DILocation(line: 35, column: 17, scope: !1617)
!1624 = !DILocation(line: 34, column: 31, scope: !1614)
!1625 = !DILocation(line: 34, column: 38, scope: !1614)
!1626 = !DILocation(line: 34, column: 5, scope: !1614)
!1627 = distinct !{!1627, !1615, !1628, !244}
!1628 = !DILocation(line: 36, column: 5, scope: !1611)
!1629 = !DILocation(line: 41, column: 1, scope: !1604)
!1630 = distinct !DISubprogram(name: "add_f", scope: !595, file: !595, line: 43, type: !1631, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!14, !14, !14}
!1633 = !DILocalVariable(name: "a", arg: 1, scope: !1630, file: !595, line: 43, type: !14)
!1634 = !DILocation(line: 0, scope: !1630)
!1635 = !DILocalVariable(name: "b", arg: 2, scope: !1630, file: !595, line: 43, type: !14)
!1636 = !DILocation(line: 44, column: 14, scope: !1630)
!1637 = !DILocation(line: 44, column: 5, scope: !1630)
!1638 = distinct !DISubprogram(name: "lincomb", scope: !595, file: !595, line: 70, type: !1639, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!14, !49, !49, !45, !45}
!1641 = !DILocalVariable(name: "a", arg: 1, scope: !1638, file: !595, line: 70, type: !49)
!1642 = !DILocation(line: 0, scope: !1638)
!1643 = !DILocalVariable(name: "b", arg: 2, scope: !1638, file: !595, line: 71, type: !49)
!1644 = !DILocalVariable(name: "n", arg: 3, scope: !1638, file: !595, line: 71, type: !45)
!1645 = !DILocalVariable(name: "m", arg: 4, scope: !1638, file: !595, line: 71, type: !45)
!1646 = !DILocalVariable(name: "ret", scope: !1638, file: !595, line: 72, type: !14)
!1647 = !DILocalVariable(name: "i", scope: !1648, file: !595, line: 73, type: !45)
!1648 = distinct !DILexicalBlock(scope: !1638, file: !595, line: 73, column: 5)
!1649 = !DILocation(line: 0, scope: !1648)
!1650 = !DILocation(line: 73, column: 10, scope: !1648)
!1651 = !DILocation(line: 73, scope: !1648)
!1652 = !DILocation(line: 73, column: 23, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1648, file: !595, line: 73, column: 5)
!1654 = !DILocation(line: 73, column: 5, scope: !1648)
!1655 = !DILocation(line: 74, column: 27, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1653, file: !595, line: 73, column: 41)
!1657 = !DILocation(line: 74, column: 33, scope: !1656)
!1658 = !DILocation(line: 74, column: 21, scope: !1656)
!1659 = !DILocation(line: 74, column: 15, scope: !1656)
!1660 = !DILocation(line: 73, column: 28, scope: !1653)
!1661 = !DILocation(line: 73, column: 35, scope: !1653)
!1662 = !DILocation(line: 73, column: 5, scope: !1653)
!1663 = distinct !{!1663, !1654, !1664, !244}
!1664 = !DILocation(line: 75, column: 5, scope: !1648)
!1665 = !DILocation(line: 76, column: 5, scope: !1638)
!1666 = distinct !DISubprogram(name: "mul_f", scope: !595, file: !595, line: 9, type: !1631, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1667 = !DILocalVariable(name: "a", arg: 1, scope: !1666, file: !595, line: 9, type: !14)
!1668 = !DILocation(line: 0, scope: !1666)
!1669 = !DILocalVariable(name: "b", arg: 2, scope: !1666, file: !595, line: 9, type: !14)
!1670 = !DILocation(line: 14, column: 10, scope: !1666)
!1671 = !DILocation(line: 14, column: 7, scope: !1666)
!1672 = !DILocation(line: 17, column: 17, scope: !1666)
!1673 = !DILocalVariable(name: "p", scope: !1666, file: !595, line: 11, type: !14)
!1674 = !DILocation(line: 18, column: 13, scope: !1666)
!1675 = !DILocation(line: 18, column: 17, scope: !1666)
!1676 = !DILocation(line: 18, column: 7, scope: !1666)
!1677 = !DILocation(line: 19, column: 13, scope: !1666)
!1678 = !DILocation(line: 19, column: 17, scope: !1666)
!1679 = !DILocation(line: 19, column: 7, scope: !1666)
!1680 = !DILocation(line: 20, column: 13, scope: !1666)
!1681 = !DILocation(line: 20, column: 17, scope: !1666)
!1682 = !DILocation(line: 20, column: 7, scope: !1666)
!1683 = !DILocalVariable(name: "top_p", scope: !1666, file: !595, line: 23, type: !14)
!1684 = !DILocation(line: 24, column: 37, scope: !1666)
!1685 = !DILocation(line: 24, column: 52, scope: !1666)
!1686 = !DILocation(line: 24, column: 43, scope: !1666)
!1687 = !DILocation(line: 24, column: 59, scope: !1666)
!1688 = !DILocalVariable(name: "out", scope: !1666, file: !595, line: 24, type: !14)
!1689 = !DILocation(line: 25, column: 5, scope: !1666)
!1690 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 111, type: !5)
!1691 = !DILocation(line: 0, scope: !24)
!1692 = !DILocalVariable(name: "i", scope: !1693, file: !25, line: 117, type: !15)
!1693 = distinct !DILexicalBlock(scope: !24, file: !25, line: 117, column: 5)
!1694 = !DILocation(line: 0, scope: !1693)
!1695 = !DILocation(line: 117, column: 10, scope: !1693)
!1696 = !DILocation(line: 117, scope: !1693)
!1697 = !DILocation(line: 117, column: 26, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1693, file: !25, line: 117, column: 5)
!1699 = !DILocation(line: 117, column: 5, scope: !1693)
!1700 = !DILocation(line: 124, column: 5, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !24, file: !25, line: 124, column: 5)
!1702 = !DILocation(line: 119, column: 24, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1698, file: !25, line: 118, column: 5)
!1704 = !DILocation(line: 119, column: 29, scope: !1703)
!1705 = !DILocation(line: 119, column: 41, scope: !1703)
!1706 = !DILocation(line: 119, column: 38, scope: !1703)
!1707 = !DILocation(line: 119, column: 36, scope: !1703)
!1708 = !DILocation(line: 119, column: 46, scope: !1703)
!1709 = !DILocalVariable(name: "t", scope: !1703, file: !25, line: 119, type: !6)
!1710 = !DILocation(line: 0, scope: !1703)
!1711 = !DILocation(line: 120, column: 21, scope: !1703)
!1712 = !DILocation(line: 120, column: 9, scope: !1703)
!1713 = !DILocation(line: 120, column: 16, scope: !1703)
!1714 = !DILocation(line: 121, column: 12, scope: !1703)
!1715 = !DILocation(line: 121, column: 9, scope: !1703)
!1716 = !DILocation(line: 121, column: 16, scope: !1703)
!1717 = !DILocation(line: 117, column: 33, scope: !1698)
!1718 = !DILocation(line: 117, column: 5, scope: !1698)
!1719 = distinct !{!1719, !1699, !1720, !244}
!1720 = !DILocation(line: 122, column: 5, scope: !1693)
!1721 = !DILocation(line: 124, scope: !1701)
!1722 = !DILocalVariable(name: "i", scope: !1701, file: !25, line: 124, type: !15)
!1723 = !DILocation(line: 0, scope: !1701)
!1724 = !DILocation(line: 124, column: 26, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1701, file: !25, line: 124, column: 5)
!1726 = !DILocation(line: 134, column: 5, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !24, file: !25, line: 134, column: 5)
!1728 = !DILocation(line: 126, column: 25, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !25, line: 125, column: 5)
!1730 = !DILocation(line: 126, column: 32, scope: !1729)
!1731 = !DILocation(line: 126, column: 43, scope: !1729)
!1732 = !DILocation(line: 126, column: 40, scope: !1729)
!1733 = !DILocation(line: 126, column: 38, scope: !1729)
!1734 = !DILocation(line: 126, column: 48, scope: !1729)
!1735 = !DILocalVariable(name: "t0", scope: !1729, file: !25, line: 126, type: !6)
!1736 = !DILocation(line: 0, scope: !1729)
!1737 = !DILocation(line: 127, column: 28, scope: !1729)
!1738 = !DILocation(line: 127, column: 25, scope: !1729)
!1739 = !DILocation(line: 127, column: 32, scope: !1729)
!1740 = !DILocation(line: 127, column: 43, scope: !1729)
!1741 = !DILocation(line: 127, column: 40, scope: !1729)
!1742 = !DILocation(line: 127, column: 38, scope: !1729)
!1743 = !DILocation(line: 127, column: 48, scope: !1729)
!1744 = !DILocalVariable(name: "t1", scope: !1729, file: !25, line: 127, type: !6)
!1745 = !DILocation(line: 128, column: 23, scope: !1729)
!1746 = !DILocation(line: 128, column: 9, scope: !1729)
!1747 = !DILocation(line: 128, column: 16, scope: !1729)
!1748 = !DILocation(line: 129, column: 23, scope: !1729)
!1749 = !DILocation(line: 129, column: 12, scope: !1729)
!1750 = !DILocation(line: 129, column: 9, scope: !1729)
!1751 = !DILocation(line: 129, column: 16, scope: !1729)
!1752 = !DILocation(line: 130, column: 12, scope: !1729)
!1753 = !DILocation(line: 130, column: 9, scope: !1729)
!1754 = !DILocation(line: 130, column: 16, scope: !1729)
!1755 = !DILocation(line: 131, column: 12, scope: !1729)
!1756 = !DILocation(line: 131, column: 9, scope: !1729)
!1757 = !DILocation(line: 131, column: 16, scope: !1729)
!1758 = !DILocation(line: 124, column: 33, scope: !1725)
!1759 = !DILocation(line: 124, column: 5, scope: !1725)
!1760 = distinct !{!1760, !1700, !1761, !244}
!1761 = !DILocation(line: 132, column: 5, scope: !1701)
!1762 = !DILocation(line: 134, scope: !1727)
!1763 = !DILocalVariable(name: "i", scope: !1727, file: !25, line: 134, type: !15)
!1764 = !DILocation(line: 0, scope: !1727)
!1765 = !DILocation(line: 134, column: 26, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1727, file: !25, line: 134, column: 5)
!1767 = !DILocation(line: 145, column: 5, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !24, file: !25, line: 145, column: 5)
!1769 = !DILocation(line: 136, column: 25, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !25, line: 135, column: 5)
!1771 = !DILocation(line: 136, column: 32, scope: !1770)
!1772 = !DILocation(line: 136, column: 44, scope: !1770)
!1773 = !DILocation(line: 136, column: 41, scope: !1770)
!1774 = !DILocation(line: 136, column: 39, scope: !1770)
!1775 = !DILocation(line: 136, column: 50, scope: !1770)
!1776 = !DILocalVariable(name: "t0", scope: !1770, file: !25, line: 136, type: !6)
!1777 = !DILocation(line: 0, scope: !1770)
!1778 = !DILocation(line: 137, column: 28, scope: !1770)
!1779 = !DILocation(line: 137, column: 25, scope: !1770)
!1780 = !DILocation(line: 137, column: 32, scope: !1770)
!1781 = !DILocation(line: 137, column: 44, scope: !1770)
!1782 = !DILocation(line: 137, column: 41, scope: !1770)
!1783 = !DILocation(line: 137, column: 39, scope: !1770)
!1784 = !DILocation(line: 137, column: 50, scope: !1770)
!1785 = !DILocalVariable(name: "t1", scope: !1770, file: !25, line: 137, type: !6)
!1786 = !DILocation(line: 139, column: 23, scope: !1770)
!1787 = !DILocation(line: 139, column: 9, scope: !1770)
!1788 = !DILocation(line: 139, column: 17, scope: !1770)
!1789 = !DILocation(line: 140, column: 23, scope: !1770)
!1790 = !DILocation(line: 140, column: 12, scope: !1770)
!1791 = !DILocation(line: 140, column: 9, scope: !1770)
!1792 = !DILocation(line: 140, column: 17, scope: !1770)
!1793 = !DILocation(line: 141, column: 12, scope: !1770)
!1794 = !DILocation(line: 141, column: 9, scope: !1770)
!1795 = !DILocation(line: 141, column: 17, scope: !1770)
!1796 = !DILocation(line: 142, column: 12, scope: !1770)
!1797 = !DILocation(line: 142, column: 9, scope: !1770)
!1798 = !DILocation(line: 142, column: 17, scope: !1770)
!1799 = !DILocation(line: 134, column: 32, scope: !1766)
!1800 = !DILocation(line: 134, column: 5, scope: !1766)
!1801 = distinct !{!1801, !1726, !1802, !244}
!1802 = !DILocation(line: 143, column: 5, scope: !1727)
!1803 = !DILocation(line: 145, scope: !1768)
!1804 = !DILocalVariable(name: "i", scope: !1768, file: !25, line: 145, type: !15)
!1805 = !DILocation(line: 0, scope: !1768)
!1806 = !DILocation(line: 145, column: 26, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1768, file: !25, line: 145, column: 5)
!1808 = !DILocation(line: 147, column: 24, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1807, file: !25, line: 146, column: 5)
!1810 = !DILocation(line: 147, column: 28, scope: !1809)
!1811 = !DILocation(line: 147, column: 39, scope: !1809)
!1812 = !DILocation(line: 147, column: 36, scope: !1809)
!1813 = !DILocation(line: 147, column: 44, scope: !1809)
!1814 = !DILocalVariable(name: "t", scope: !1809, file: !25, line: 147, type: !6)
!1815 = !DILocation(line: 0, scope: !1809)
!1816 = !DILocation(line: 148, column: 21, scope: !1809)
!1817 = !DILocation(line: 148, column: 9, scope: !1809)
!1818 = !DILocation(line: 148, column: 16, scope: !1809)
!1819 = !DILocation(line: 149, column: 12, scope: !1809)
!1820 = !DILocation(line: 149, column: 9, scope: !1809)
!1821 = !DILocation(line: 149, column: 16, scope: !1809)
!1822 = !DILocation(line: 145, column: 32, scope: !1807)
!1823 = !DILocation(line: 145, column: 5, scope: !1807)
!1824 = distinct !{!1824, !1767, !1825, !244}
!1825 = !DILocation(line: 150, column: 5, scope: !1768)
!1826 = !DILocation(line: 151, column: 1, scope: !24)
!1827 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !425, file: !425, line: 61, type: !481, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1828 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1827, file: !425, line: 61, type: !343)
!1829 = !DILocation(line: 0, scope: !1827)
!1830 = !DILocalVariable(name: "mat", arg: 2, scope: !1827, file: !425, line: 61, type: !49)
!1831 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1827, file: !425, line: 61, type: !428)
!1832 = !DILocalVariable(name: "acc", arg: 4, scope: !1827, file: !425, line: 61, type: !5)
!1833 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1827, file: !425, line: 62, type: !343)
!1834 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1827, file: !425, line: 62, type: !343)
!1835 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1827, file: !425, line: 62, type: !343)
!1836 = !DILocalVariable(name: "r", scope: !1837, file: !425, line: 64, type: !45)
!1837 = distinct !DILexicalBlock(scope: !1827, file: !425, line: 64, column: 5)
!1838 = !DILocation(line: 0, scope: !1837)
!1839 = !DILocation(line: 64, column: 10, scope: !1837)
!1840 = !DILocation(line: 64, scope: !1837)
!1841 = !DILocation(line: 64, column: 23, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1837, file: !425, line: 64, column: 5)
!1843 = !DILocation(line: 64, column: 5, scope: !1837)
!1844 = !DILocation(line: 65, column: 9, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !425, line: 65, column: 9)
!1846 = distinct !DILexicalBlock(scope: !1842, file: !425, line: 64, column: 40)
!1847 = !DILocation(line: 65, scope: !1845)
!1848 = !DILocalVariable(name: "c", scope: !1845, file: !425, line: 65, type: !45)
!1849 = !DILocation(line: 0, scope: !1845)
!1850 = !DILocation(line: 65, column: 27, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1845, file: !425, line: 65, column: 9)
!1852 = !DILocation(line: 66, column: 13, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !425, line: 66, column: 13)
!1854 = distinct !DILexicalBlock(scope: !1851, file: !425, line: 65, column: 44)
!1855 = !DILocation(line: 66, scope: !1853)
!1856 = !DILocalVariable(name: "k", scope: !1853, file: !425, line: 66, type: !45)
!1857 = !DILocation(line: 0, scope: !1853)
!1858 = !DILocation(line: 66, column: 31, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1853, file: !425, line: 66, column: 13)
!1860 = !DILocation(line: 67, column: 70, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1859, file: !425, line: 66, column: 54)
!1862 = !DILocation(line: 67, column: 84, scope: !1861)
!1863 = !DILocation(line: 67, column: 51, scope: !1861)
!1864 = !DILocation(line: 67, column: 96, scope: !1861)
!1865 = !DILocation(line: 67, column: 90, scope: !1861)
!1866 = !DILocation(line: 67, column: 136, scope: !1861)
!1867 = !DILocation(line: 67, column: 150, scope: !1861)
!1868 = !DILocation(line: 67, column: 117, scope: !1861)
!1869 = !DILocation(line: 67, column: 17, scope: !1861)
!1870 = !DILocation(line: 66, column: 48, scope: !1859)
!1871 = !DILocation(line: 66, column: 13, scope: !1859)
!1872 = distinct !{!1872, !1852, !1873, !244}
!1873 = !DILocation(line: 68, column: 13, scope: !1853)
!1874 = !DILocation(line: 65, column: 40, scope: !1851)
!1875 = !DILocation(line: 65, column: 9, scope: !1851)
!1876 = distinct !{!1876, !1844, !1877, !244}
!1877 = !DILocation(line: 69, column: 9, scope: !1845)
!1878 = !DILocation(line: 64, column: 36, scope: !1842)
!1879 = !DILocation(line: 64, column: 5, scope: !1842)
!1880 = distinct !{!1880, !1843, !1881, !244}
!1881 = !DILocation(line: 70, column: 5, scope: !1837)
!1882 = !DILocation(line: 71, column: 1, scope: !1827)
!1883 = distinct !DISubprogram(name: "P1_times_Vt", scope: !425, file: !425, line: 82, type: !471, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1884 = !DILocalVariable(name: "p", arg: 1, scope: !1883, file: !425, line: 82, type: !278)
!1885 = !DILocation(line: 0, scope: !1883)
!1886 = !DILocalVariable(name: "P1", arg: 2, scope: !1883, file: !425, line: 82, type: !428)
!1887 = !DILocalVariable(name: "V", arg: 3, scope: !1883, file: !425, line: 82, type: !49)
!1888 = !DILocalVariable(name: "acc", arg: 4, scope: !1883, file: !425, line: 82, type: !5)
!1889 = !DILocation(line: 86, column: 5, scope: !1883)
!1890 = !DILocation(line: 87, column: 1, scope: !1883)
!1891 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !425, file: !425, line: 32, type: !611, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1892 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1891, file: !425, line: 32, type: !343)
!1893 = !DILocation(line: 0, scope: !1891)
!1894 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1891, file: !425, line: 32, type: !428)
!1895 = !DILocalVariable(name: "mat", arg: 3, scope: !1891, file: !425, line: 32, type: !49)
!1896 = !DILocalVariable(name: "acc", arg: 4, scope: !1891, file: !425, line: 32, type: !5)
!1897 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1891, file: !425, line: 33, type: !343)
!1898 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1891, file: !425, line: 33, type: !343)
!1899 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1891, file: !425, line: 33, type: !343)
!1900 = !DILocalVariable(name: "triangular", arg: 8, scope: !1891, file: !425, line: 33, type: !343)
!1901 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1891, file: !425, line: 34, type: !45)
!1902 = !DILocalVariable(name: "r", scope: !1903, file: !425, line: 35, type: !45)
!1903 = distinct !DILexicalBlock(scope: !1891, file: !425, line: 35, column: 5)
!1904 = !DILocation(line: 0, scope: !1903)
!1905 = !DILocation(line: 35, column: 10, scope: !1903)
!1906 = !DILocation(line: 34, column: 9, scope: !1891)
!1907 = !DILocation(line: 35, scope: !1903)
!1908 = !DILocation(line: 35, column: 23, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1903, file: !425, line: 35, column: 5)
!1910 = !DILocation(line: 35, column: 5, scope: !1903)
!1911 = !DILocation(line: 36, column: 9, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !425, line: 36, column: 9)
!1913 = distinct !DILexicalBlock(scope: !1909, file: !425, line: 35, column: 43)
!1914 = !DILocation(line: 36, scope: !1912)
!1915 = !DILocalVariable(name: "c", scope: !1912, file: !425, line: 36, type: !45)
!1916 = !DILocation(line: 0, scope: !1912)
!1917 = !DILocation(line: 36, column: 40, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1912, file: !425, line: 36, column: 9)
!1919 = !DILocation(line: 37, column: 13, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !425, line: 37, column: 13)
!1921 = distinct !DILexicalBlock(scope: !1918, file: !425, line: 36, column: 60)
!1922 = !DILocation(line: 37, scope: !1920)
!1923 = !DILocalVariable(name: "k", scope: !1920, file: !425, line: 37, type: !45)
!1924 = !DILocation(line: 0, scope: !1920)
!1925 = !DILocation(line: 37, column: 31, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1920, file: !425, line: 37, column: 13)
!1927 = !DILocation(line: 38, column: 51, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1926, file: !425, line: 37, column: 51)
!1929 = !DILocation(line: 38, column: 94, scope: !1928)
!1930 = !DILocation(line: 38, column: 88, scope: !1928)
!1931 = !DILocation(line: 38, column: 137, scope: !1928)
!1932 = !DILocation(line: 38, column: 148, scope: !1928)
!1933 = !DILocation(line: 38, column: 118, scope: !1928)
!1934 = !DILocation(line: 38, column: 17, scope: !1928)
!1935 = !DILocation(line: 37, column: 45, scope: !1926)
!1936 = !DILocation(line: 37, column: 13, scope: !1926)
!1937 = distinct !{!1937, !1919, !1938, !244}
!1938 = !DILocation(line: 39, column: 13, scope: !1920)
!1939 = !DILocation(line: 40, column: 33, scope: !1921)
!1940 = !DILocation(line: 36, column: 56, scope: !1918)
!1941 = !DILocation(line: 36, column: 9, scope: !1918)
!1942 = distinct !{!1942, !1911, !1943, !244}
!1943 = !DILocation(line: 41, column: 9, scope: !1912)
!1944 = !DILocation(line: 35, column: 39, scope: !1909)
!1945 = !DILocation(line: 35, column: 5, scope: !1909)
!1946 = distinct !{!1946, !1910, !1947, !244}
!1947 = !DILocation(line: 42, column: 5, scope: !1903)
!1948 = !DILocation(line: 43, column: 1, scope: !1891)
!1949 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_sign", scope: !25, file: !25, line: 501, type: !804, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1950 = !DILocalVariable(name: "p", arg: 1, scope: !1949, file: !25, line: 501, type: !278)
!1951 = !DILocation(line: 0, scope: !1949)
!1952 = !DILocalVariable(name: "sm", arg: 2, scope: !1949, file: !25, line: 501, type: !18)
!1953 = !DILocalVariable(name: "smlen", arg: 3, scope: !1949, file: !25, line: 502, type: !806)
!1954 = !DILocalVariable(name: "m", arg: 4, scope: !1949, file: !25, line: 502, type: !49)
!1955 = !DILocalVariable(name: "mlen", arg: 5, scope: !1949, file: !25, line: 503, type: !15)
!1956 = !DILocalVariable(name: "csk", arg: 6, scope: !1949, file: !25, line: 503, type: !49)
!1957 = !DILocalVariable(name: "ret", scope: !1949, file: !25, line: 504, type: !45)
!1958 = !DILocalVariable(name: "param_sig_bytes", scope: !1949, file: !25, line: 505, type: !343)
!1959 = !DILocation(line: 507, column: 16, scope: !1949)
!1960 = !DILocation(line: 507, column: 5, scope: !1949)
!1961 = !DILocation(line: 508, column: 50, scope: !1949)
!1962 = !DILocalVariable(name: "siglen", scope: !1949, file: !25, line: 506, type: !15)
!1963 = !DILocation(line: 508, column: 11, scope: !1949)
!1964 = !DILocation(line: 509, column: 24, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1949, file: !25, line: 509, column: 9)
!1966 = !DILocation(line: 510, column: 23, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1965, file: !25, line: 509, column: 62)
!1968 = !DILocation(line: 510, column: 30, scope: !1967)
!1969 = !DILocation(line: 510, column: 9, scope: !1967)
!1970 = !DILocation(line: 511, column: 9, scope: !1967)
!1971 = !DILocation(line: 514, column: 14, scope: !1949)
!1972 = !DILocation(line: 514, column: 21, scope: !1949)
!1973 = !DILocation(line: 514, column: 12, scope: !1949)
!1974 = !DILocation(line: 514, column: 5, scope: !1949)
!1975 = !DILabel(scope: !1949, name: "err", file: !25, line: 515)
!1976 = !DILocation(line: 515, column: 1, scope: !1949)
!1977 = !DILocation(line: 516, column: 5, scope: !1949)
!1978 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_open", scope: !25, file: !25, line: 519, type: !804, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1979 = !DILocalVariable(name: "p", arg: 1, scope: !1978, file: !25, line: 519, type: !278)
!1980 = !DILocation(line: 0, scope: !1978)
!1981 = !DILocalVariable(name: "m", arg: 2, scope: !1978, file: !25, line: 519, type: !18)
!1982 = !DILocalVariable(name: "mlen", arg: 3, scope: !1978, file: !25, line: 520, type: !806)
!1983 = !DILocalVariable(name: "sm", arg: 4, scope: !1978, file: !25, line: 520, type: !49)
!1984 = !DILocalVariable(name: "smlen", arg: 5, scope: !1978, file: !25, line: 521, type: !15)
!1985 = !DILocalVariable(name: "pk", arg: 6, scope: !1978, file: !25, line: 521, type: !49)
!1986 = !DILocalVariable(name: "param_sig_bytes", scope: !1978, file: !25, line: 522, type: !343)
!1987 = !DILocation(line: 523, column: 15, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1978, file: !25, line: 523, column: 9)
!1989 = !DILocation(line: 526, column: 36, scope: !1978)
!1990 = !DILocation(line: 526, column: 61, scope: !1978)
!1991 = !DILocation(line: 526, column: 18, scope: !1978)
!1992 = !DILocalVariable(name: "result", scope: !1978, file: !25, line: 526, type: !45)
!1993 = !DILocation(line: 529, column: 16, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1978, file: !25, line: 529, column: 9)
!1995 = !DILocation(line: 530, column: 23, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1994, file: !25, line: 529, column: 28)
!1997 = !DILocation(line: 530, column: 15, scope: !1996)
!1998 = !DILocation(line: 531, column: 23, scope: !1996)
!1999 = !DILocation(line: 531, column: 9, scope: !1996)
!2000 = !DILocation(line: 532, column: 5, scope: !1996)
!2001 = !DILocation(line: 535, column: 1, scope: !1978)
!2002 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_verify", scope: !25, file: !25, line: 616, type: !2003, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!45, !278, !49, !15, !49, !49}
!2005 = !DILocalVariable(name: "p", arg: 1, scope: !2002, file: !25, line: 616, type: !278)
!2006 = !DILocation(line: 0, scope: !2002)
!2007 = !DILocalVariable(name: "m", arg: 2, scope: !2002, file: !25, line: 616, type: !49)
!2008 = !DILocalVariable(name: "mlen", arg: 3, scope: !2002, file: !25, line: 617, type: !15)
!2009 = !DILocalVariable(name: "sig", arg: 4, scope: !2002, file: !25, line: 617, type: !49)
!2010 = !DILocalVariable(name: "cpk", arg: 5, scope: !2002, file: !25, line: 618, type: !49)
!2011 = !DILocalVariable(name: "tEnc", scope: !2002, file: !25, line: 619, type: !816)
!2012 = !DILocation(line: 619, column: 19, scope: !2002)
!2013 = !DILocalVariable(name: "t", scope: !2002, file: !25, line: 620, type: !821)
!2014 = !DILocation(line: 620, column: 19, scope: !2002)
!2015 = !DILocalVariable(name: "y", scope: !2002, file: !25, line: 621, type: !2016)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1248, elements: !2017)
!2017 = !{!2018}
!2018 = !DISubrange(count: 156)
!2019 = !DILocation(line: 621, column: 19, scope: !2002)
!2020 = !DILocalVariable(name: "s", scope: !2002, file: !25, line: 622, type: !846)
!2021 = !DILocation(line: 622, column: 19, scope: !2002)
!2022 = !DILocalVariable(name: "pk", scope: !2002, file: !25, line: 623, type: !180)
!2023 = !DILocation(line: 623, column: 14, scope: !2002)
!2024 = !DILocalVariable(name: "tmp", scope: !2002, file: !25, line: 624, type: !2025)
!2025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 448, elements: !2026)
!2026 = !{!2027}
!2027 = !DISubrange(count: 56)
!2028 = !DILocation(line: 624, column: 19, scope: !2002)
!2029 = !DILocalVariable(name: "param_m", scope: !2002, file: !25, line: 626, type: !343)
!2030 = !DILocalVariable(name: "param_n", scope: !2002, file: !25, line: 627, type: !343)
!2031 = !DILocalVariable(name: "param_k", scope: !2002, file: !25, line: 628, type: !343)
!2032 = !DILocalVariable(name: "param_m_bytes", scope: !2002, file: !25, line: 629, type: !343)
!2033 = !DILocalVariable(name: "param_sig_bytes", scope: !2002, file: !25, line: 630, type: !343)
!2034 = !DILocalVariable(name: "param_digest_bytes", scope: !2002, file: !25, line: 631, type: !343)
!2035 = !DILocalVariable(name: "param_salt_bytes", scope: !2002, file: !25, line: 632, type: !343)
!2036 = !DILocation(line: 634, column: 15, scope: !2002)
!2037 = !DILocalVariable(name: "ret", scope: !2002, file: !25, line: 634, type: !45)
!2038 = !DILocalVariable(name: "P1", scope: !2002, file: !25, line: 639, type: !5)
!2039 = !DILocation(line: 640, column: 23, scope: !2002)
!2040 = !DILocalVariable(name: "P2", scope: !2002, file: !25, line: 640, type: !5)
!2041 = !DILocation(line: 641, column: 23, scope: !2002)
!2042 = !DILocalVariable(name: "P3", scope: !2002, file: !25, line: 641, type: !5)
!2043 = !DILocation(line: 656, column: 5, scope: !2002)
!2044 = !DILocation(line: 659, column: 16, scope: !2002)
!2045 = !DILocation(line: 659, column: 60, scope: !2002)
!2046 = !DILocation(line: 659, column: 5, scope: !2002)
!2047 = !DILocation(line: 661, column: 5, scope: !2002)
!2048 = !DILocation(line: 662, column: 5, scope: !2002)
!2049 = !DILocation(line: 665, column: 5, scope: !2002)
!2050 = !DILocation(line: 667, column: 5, scope: !2002)
!2051 = !DILocation(line: 669, column: 9, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2002, file: !25, line: 669, column: 9)
!2053 = !DILocation(line: 669, column: 31, scope: !2052)
!2054 = !DILocation(line: 673, column: 1, scope: !2002)
!2055 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_expand_pk", scope: !25, file: !25, line: 607, type: !705, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2056 = !DILocalVariable(name: "p", arg: 1, scope: !2055, file: !25, line: 607, type: !278)
!2057 = !DILocation(line: 0, scope: !2055)
!2058 = !DILocalVariable(name: "cpk", arg: 2, scope: !2055, file: !25, line: 607, type: !49)
!2059 = !DILocalVariable(name: "pk", arg: 3, scope: !2055, file: !25, line: 608, type: !5)
!2060 = !DILocation(line: 609, column: 5, scope: !2055)
!2061 = !DILocation(line: 611, column: 23, scope: !2055)
!2062 = !DILocation(line: 611, column: 72, scope: !2055)
!2063 = !DILocation(line: 611, column: 5, scope: !2055)
!2064 = !DILocation(line: 613, column: 5, scope: !2055)
!2065 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 288, type: !2066, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !278, !49, !428, !428, !428, !18}
!2068 = !DILocalVariable(name: "p", arg: 1, scope: !2065, file: !25, line: 288, type: !278)
!2069 = !DILocation(line: 0, scope: !2065)
!2070 = !DILocalVariable(name: "s", arg: 2, scope: !2065, file: !25, line: 288, type: !49)
!2071 = !DILocalVariable(name: "P1", arg: 3, scope: !2065, file: !25, line: 288, type: !428)
!2072 = !DILocalVariable(name: "P2", arg: 4, scope: !2065, file: !25, line: 288, type: !428)
!2073 = !DILocalVariable(name: "P3", arg: 5, scope: !2065, file: !25, line: 288, type: !428)
!2074 = !DILocalVariable(name: "eval", arg: 6, scope: !2065, file: !25, line: 288, type: !18)
!2075 = !DILocalVariable(name: "SPS", scope: !2065, file: !25, line: 289, type: !2076)
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32000, elements: !2077)
!2077 = !{!2078}
!2078 = !DISubrange(count: 500)
!2079 = !DILocation(line: 289, column: 14, scope: !2065)
!2080 = !DILocation(line: 291, column: 5, scope: !2065)
!2081 = !DILocalVariable(name: "zero", scope: !2065, file: !25, line: 292, type: !821)
!2082 = !DILocation(line: 292, column: 19, scope: !2065)
!2083 = !DILocation(line: 293, column: 5, scope: !2065)
!2084 = !DILocation(line: 294, column: 1, scope: !2065)
!2085 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !425, file: !425, line: 277, type: !2086, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{null, !278, !428, !428, !428, !49, !5}
!2088 = !DILocalVariable(name: "p", arg: 1, scope: !2085, file: !425, line: 277, type: !278)
!2089 = !DILocation(line: 0, scope: !2085)
!2090 = !DILocalVariable(name: "P1", arg: 2, scope: !2085, file: !425, line: 277, type: !428)
!2091 = !DILocalVariable(name: "P2", arg: 3, scope: !2085, file: !425, line: 277, type: !428)
!2092 = !DILocalVariable(name: "P3", arg: 4, scope: !2085, file: !425, line: 277, type: !428)
!2093 = !DILocalVariable(name: "s", arg: 5, scope: !2085, file: !425, line: 277, type: !49)
!2094 = !DILocalVariable(name: "SPS", arg: 6, scope: !2085, file: !425, line: 278, type: !5)
!2095 = !DILocalVariable(name: "PS", scope: !2085, file: !425, line: 286, type: !2096)
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 275200, elements: !2097)
!2097 = !{!2098}
!2098 = !DISubrange(count: 4300)
!2099 = !DILocation(line: 286, column: 14, scope: !2085)
!2100 = !DILocation(line: 287, column: 5, scope: !2085)
!2101 = !DILocation(line: 290, column: 5, scope: !2085)
!2102 = !DILocation(line: 292, column: 1, scope: !2085)
!2103 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !425, file: !425, line: 151, type: !2104, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{null, !428, !428, !428, !49, !343, !343, !343, !343, !5}
!2106 = !DILocalVariable(name: "P1", arg: 1, scope: !2103, file: !425, line: 151, type: !428)
!2107 = !DILocation(line: 0, scope: !2103)
!2108 = !DILocalVariable(name: "P2", arg: 2, scope: !2103, file: !425, line: 151, type: !428)
!2109 = !DILocalVariable(name: "P3", arg: 3, scope: !2103, file: !425, line: 151, type: !428)
!2110 = !DILocalVariable(name: "S", arg: 4, scope: !2103, file: !425, line: 151, type: !49)
!2111 = !DILocalVariable(name: "m", arg: 5, scope: !2103, file: !425, line: 152, type: !343)
!2112 = !DILocalVariable(name: "v", arg: 6, scope: !2103, file: !425, line: 152, type: !343)
!2113 = !DILocalVariable(name: "o", arg: 7, scope: !2103, file: !425, line: 152, type: !343)
!2114 = !DILocalVariable(name: "k", arg: 8, scope: !2103, file: !425, line: 152, type: !343)
!2115 = !DILocalVariable(name: "PS", arg: 9, scope: !2103, file: !425, line: 152, type: !5)
!2116 = !DILocalVariable(name: "n", scope: !2103, file: !425, line: 154, type: !343)
!2117 = !DILocalVariable(name: "m_vec_limbs", scope: !2103, file: !425, line: 155, type: !343)
!2118 = !DILocalVariable(name: "accumulator", scope: !2103, file: !425, line: 157, type: !2119)
!2119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 4403200, elements: !2120)
!2120 = !{!2121}
!2121 = !DISubrange(count: 68800)
!2122 = !DILocation(line: 157, column: 14, scope: !2103)
!2123 = !DILocalVariable(name: "P1_used", scope: !2103, file: !425, line: 158, type: !45)
!2124 = !DILocalVariable(name: "row", scope: !2125, file: !425, line: 159, type: !45)
!2125 = distinct !DILexicalBlock(scope: !2103, file: !425, line: 159, column: 5)
!2126 = !DILocation(line: 0, scope: !2125)
!2127 = !DILocation(line: 159, column: 10, scope: !2125)
!2128 = !DILocation(line: 158, column: 9, scope: !2103)
!2129 = !DILocation(line: 159, scope: !2125)
!2130 = !DILocation(line: 159, column: 27, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2125, file: !425, line: 159, column: 5)
!2132 = !DILocation(line: 159, column: 5, scope: !2125)
!2133 = !DILocation(line: 160, column: 9, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !425, line: 160, column: 9)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !425, line: 159, column: 39)
!2136 = !DILocation(line: 175, column: 5, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2103, file: !425, line: 175, column: 5)
!2138 = !DILocation(line: 160, scope: !2134)
!2139 = !DILocalVariable(name: "j", scope: !2134, file: !425, line: 160, type: !45)
!2140 = !DILocation(line: 0, scope: !2134)
!2141 = !DILocation(line: 160, column: 29, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2134, file: !425, line: 160, column: 9)
!2143 = !DILocation(line: 167, column: 9, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2135, file: !425, line: 167, column: 9)
!2145 = !DILocation(line: 161, column: 13, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !425, line: 161, column: 13)
!2147 = distinct !DILexicalBlock(scope: !2142, file: !425, line: 160, column: 39)
!2148 = !DILocation(line: 161, scope: !2146)
!2149 = !DILocalVariable(name: "col", scope: !2146, file: !425, line: 161, type: !45)
!2150 = !DILocation(line: 0, scope: !2146)
!2151 = !DILocation(line: 161, column: 35, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2146, file: !425, line: 161, column: 13)
!2153 = !DILocation(line: 162, column: 43, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2152, file: !425, line: 161, column: 47)
!2155 = !DILocation(line: 162, column: 91, scope: !2154)
!2156 = !DILocation(line: 162, column: 95, scope: !2154)
!2157 = !DILocation(line: 162, column: 102, scope: !2154)
!2158 = !DILocation(line: 162, column: 115, scope: !2154)
!2159 = !DILocation(line: 162, column: 109, scope: !2154)
!2160 = !DILocation(line: 162, column: 107, scope: !2154)
!2161 = !DILocation(line: 162, column: 82, scope: !2154)
!2162 = !DILocation(line: 162, column: 17, scope: !2154)
!2163 = !DILocation(line: 161, column: 43, scope: !2152)
!2164 = !DILocation(line: 161, column: 13, scope: !2152)
!2165 = distinct !{!2165, !2145, !2166, !244}
!2166 = !DILocation(line: 163, column: 13, scope: !2146)
!2167 = !DILocation(line: 164, column: 21, scope: !2147)
!2168 = !DILocation(line: 160, column: 35, scope: !2142)
!2169 = !DILocation(line: 160, column: 9, scope: !2142)
!2170 = distinct !{!2170, !2133, !2171, !244}
!2171 = !DILocation(line: 165, column: 9, scope: !2134)
!2172 = !DILocation(line: 167, scope: !2144)
!2173 = !DILocalVariable(name: "j", scope: !2144, file: !425, line: 167, type: !45)
!2174 = !DILocation(line: 0, scope: !2144)
!2175 = !DILocation(line: 167, column: 27, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2144, file: !425, line: 167, column: 9)
!2177 = !DILocation(line: 168, column: 13, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !425, line: 168, column: 13)
!2179 = distinct !DILexicalBlock(scope: !2176, file: !425, line: 167, column: 37)
!2180 = !DILocation(line: 168, scope: !2178)
!2181 = !DILocalVariable(name: "col", scope: !2178, file: !425, line: 168, type: !45)
!2182 = !DILocation(line: 0, scope: !2178)
!2183 = !DILocation(line: 168, column: 35, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2178, file: !425, line: 168, column: 13)
!2185 = !DILocation(line: 169, column: 50, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2184, file: !425, line: 168, column: 47)
!2187 = !DILocation(line: 169, column: 54, scope: !2186)
!2188 = !DILocation(line: 169, column: 43, scope: !2186)
!2189 = !DILocation(line: 169, column: 93, scope: !2186)
!2190 = !DILocation(line: 169, column: 97, scope: !2186)
!2191 = !DILocation(line: 169, column: 104, scope: !2186)
!2192 = !DILocation(line: 169, column: 118, scope: !2186)
!2193 = !DILocation(line: 169, column: 111, scope: !2186)
!2194 = !DILocation(line: 169, column: 109, scope: !2186)
!2195 = !DILocation(line: 169, column: 84, scope: !2186)
!2196 = !DILocation(line: 169, column: 17, scope: !2186)
!2197 = !DILocation(line: 168, column: 43, scope: !2184)
!2198 = !DILocation(line: 168, column: 13, scope: !2184)
!2199 = distinct !{!2199, !2177, !2200, !244}
!2200 = !DILocation(line: 170, column: 13, scope: !2178)
!2201 = !DILocation(line: 167, column: 33, scope: !2176)
!2202 = !DILocation(line: 167, column: 9, scope: !2176)
!2203 = distinct !{!2203, !2143, !2204, !244}
!2204 = !DILocation(line: 171, column: 9, scope: !2144)
!2205 = !DILocation(line: 159, column: 35, scope: !2131)
!2206 = !DILocation(line: 159, column: 5, scope: !2131)
!2207 = distinct !{!2207, !2132, !2208, !244}
!2208 = !DILocation(line: 172, column: 5, scope: !2125)
!2209 = !DILocation(line: 174, column: 9, scope: !2103)
!2210 = !DILocation(line: 175, scope: !2137)
!2211 = !DILocalVariable(name: "row", scope: !2137, file: !425, line: 175, type: !45)
!2212 = !DILocation(line: 0, scope: !2137)
!2213 = !DILocalVariable(name: "P3_used", scope: !2103, file: !425, line: 174, type: !45)
!2214 = !DILocation(line: 175, column: 27, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2137, file: !425, line: 175, column: 5)
!2216 = !DILocation(line: 176, column: 9, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !425, line: 176, column: 9)
!2218 = distinct !DILexicalBlock(scope: !2215, file: !425, line: 175, column: 39)
!2219 = !DILocation(line: 186, column: 5, scope: !2103)
!2220 = !DILocation(line: 176, scope: !2217)
!2221 = !DILocalVariable(name: "j", scope: !2217, file: !425, line: 176, type: !45)
!2222 = !DILocation(line: 0, scope: !2217)
!2223 = !DILocation(line: 176, column: 29, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2217, file: !425, line: 176, column: 9)
!2225 = !DILocation(line: 177, column: 13, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !425, line: 177, column: 13)
!2227 = distinct !DILexicalBlock(scope: !2224, file: !425, line: 176, column: 39)
!2228 = !DILocation(line: 177, scope: !2226)
!2229 = !DILocalVariable(name: "col", scope: !2226, file: !425, line: 177, type: !45)
!2230 = !DILocation(line: 0, scope: !2226)
!2231 = !DILocation(line: 177, column: 35, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2226, file: !425, line: 177, column: 13)
!2233 = !DILocation(line: 178, column: 43, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2232, file: !425, line: 177, column: 47)
!2235 = !DILocation(line: 178, column: 89, scope: !2234)
!2236 = !DILocation(line: 178, column: 93, scope: !2234)
!2237 = !DILocation(line: 178, column: 100, scope: !2234)
!2238 = !DILocation(line: 178, column: 113, scope: !2234)
!2239 = !DILocation(line: 178, column: 107, scope: !2234)
!2240 = !DILocation(line: 178, column: 105, scope: !2234)
!2241 = !DILocation(line: 178, column: 80, scope: !2234)
!2242 = !DILocation(line: 178, column: 17, scope: !2234)
!2243 = !DILocation(line: 177, column: 43, scope: !2232)
!2244 = !DILocation(line: 177, column: 13, scope: !2232)
!2245 = distinct !{!2245, !2225, !2246, !244}
!2246 = !DILocation(line: 179, column: 13, scope: !2226)
!2247 = !DILocation(line: 180, column: 21, scope: !2227)
!2248 = !DILocation(line: 176, column: 35, scope: !2224)
!2249 = !DILocation(line: 176, column: 9, scope: !2224)
!2250 = distinct !{!2250, !2216, !2251, !244}
!2251 = !DILocation(line: 181, column: 9, scope: !2217)
!2252 = !DILocation(line: 175, column: 35, scope: !2215)
!2253 = !DILocation(line: 175, column: 5, scope: !2215)
!2254 = distinct !{!2254, !2136, !2255, !244}
!2255 = !DILocation(line: 182, column: 5, scope: !2137)
!2256 = !DILocalVariable(name: "i", scope: !2103, file: !425, line: 185, type: !45)
!2257 = !DILocation(line: 186, column: 14, scope: !2103)
!2258 = !DILocation(line: 187, column: 54, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2103, file: !425, line: 186, column: 23)
!2260 = !DILocation(line: 187, column: 81, scope: !2259)
!2261 = !DILocation(line: 187, column: 9, scope: !2259)
!2262 = !DILocation(line: 188, column: 10, scope: !2259)
!2263 = distinct !{!2263, !2219, !2264, !244}
!2264 = !DILocation(line: 189, column: 5, scope: !2103)
!2265 = !DILocation(line: 191, column: 1, scope: !2103)
!2266 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !425, file: !425, line: 195, type: !2267, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{null, !428, !49, !45, !45, !45, !5}
!2269 = !DILocalVariable(name: "PS", arg: 1, scope: !2266, file: !425, line: 195, type: !428)
!2270 = !DILocation(line: 0, scope: !2266)
!2271 = !DILocalVariable(name: "S", arg: 2, scope: !2266, file: !425, line: 195, type: !49)
!2272 = !DILocalVariable(name: "m", arg: 3, scope: !2266, file: !425, line: 195, type: !45)
!2273 = !DILocalVariable(name: "k", arg: 4, scope: !2266, file: !425, line: 195, type: !45)
!2274 = !DILocalVariable(name: "n", arg: 5, scope: !2266, file: !425, line: 195, type: !45)
!2275 = !DILocalVariable(name: "SPS", arg: 6, scope: !2266, file: !425, line: 195, type: !5)
!2276 = !DILocalVariable(name: "accumulator", scope: !2266, file: !425, line: 196, type: !2277)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512000, elements: !2278)
!2278 = !{!2279}
!2279 = !DISubrange(count: 8000)
!2280 = !DILocation(line: 196, column: 14, scope: !2266)
!2281 = !DILocalVariable(name: "m_vec_limbs", scope: !2266, file: !425, line: 197, type: !343)
!2282 = !DILocalVariable(name: "row", scope: !2283, file: !425, line: 198, type: !45)
!2283 = distinct !DILexicalBlock(scope: !2266, file: !425, line: 198, column: 5)
!2284 = !DILocation(line: 0, scope: !2283)
!2285 = !DILocation(line: 198, column: 10, scope: !2283)
!2286 = !DILocation(line: 198, scope: !2283)
!2287 = !DILocation(line: 198, column: 27, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2283, file: !425, line: 198, column: 5)
!2289 = !DILocation(line: 198, column: 5, scope: !2283)
!2290 = !DILocation(line: 199, column: 9, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !425, line: 199, column: 9)
!2292 = distinct !DILexicalBlock(scope: !2288, file: !425, line: 198, column: 39)
!2293 = !DILocation(line: 208, column: 5, scope: !2266)
!2294 = !DILocation(line: 199, scope: !2291)
!2295 = !DILocalVariable(name: "j", scope: !2291, file: !425, line: 199, type: !45)
!2296 = !DILocation(line: 0, scope: !2291)
!2297 = !DILocation(line: 199, column: 27, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2291, file: !425, line: 199, column: 9)
!2299 = !DILocation(line: 200, column: 13, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !425, line: 200, column: 13)
!2301 = distinct !DILexicalBlock(scope: !2298, file: !425, line: 199, column: 37)
!2302 = !DILocation(line: 200, scope: !2300)
!2303 = !DILocalVariable(name: "col", scope: !2300, file: !425, line: 200, type: !45)
!2304 = !DILocation(line: 0, scope: !2300)
!2305 = !DILocation(line: 200, column: 35, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2300, file: !425, line: 200, column: 13)
!2307 = !DILocation(line: 201, column: 52, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2306, file: !425, line: 200, column: 50)
!2309 = !DILocation(line: 201, column: 56, scope: !2308)
!2310 = !DILocation(line: 201, column: 47, scope: !2308)
!2311 = !DILocation(line: 201, column: 99, scope: !2308)
!2312 = !DILocation(line: 201, column: 103, scope: !2308)
!2313 = !DILocation(line: 201, column: 110, scope: !2308)
!2314 = !DILocation(line: 201, column: 123, scope: !2308)
!2315 = !DILocation(line: 201, column: 117, scope: !2308)
!2316 = !DILocation(line: 201, column: 115, scope: !2308)
!2317 = !DILocation(line: 201, column: 90, scope: !2308)
!2318 = !DILocation(line: 201, column: 21, scope: !2308)
!2319 = !DILocation(line: 200, column: 44, scope: !2306)
!2320 = !DILocation(line: 200, column: 13, scope: !2306)
!2321 = distinct !{!2321, !2299, !2322, !244}
!2322 = !DILocation(line: 202, column: 13, scope: !2300)
!2323 = !DILocation(line: 199, column: 33, scope: !2298)
!2324 = !DILocation(line: 199, column: 9, scope: !2298)
!2325 = distinct !{!2325, !2290, !2326, !244}
!2326 = !DILocation(line: 203, column: 9, scope: !2291)
!2327 = !DILocation(line: 198, column: 35, scope: !2288)
!2328 = !DILocation(line: 198, column: 5, scope: !2288)
!2329 = distinct !{!2329, !2289, !2330, !244}
!2330 = !DILocation(line: 204, column: 5, scope: !2283)
!2331 = !DILocalVariable(name: "i", scope: !2266, file: !425, line: 207, type: !45)
!2332 = !DILocation(line: 208, column: 14, scope: !2266)
!2333 = !DILocation(line: 209, column: 54, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2266, file: !425, line: 208, column: 21)
!2335 = !DILocation(line: 209, column: 82, scope: !2334)
!2336 = !DILocation(line: 209, column: 9, scope: !2334)
!2337 = !DILocation(line: 210, column: 10, scope: !2334)
!2338 = distinct !{!2338, !2293, !2339, !244}
!2339 = !DILocation(line: 211, column: 5, scope: !2266)
!2340 = !DILocation(line: 212, column: 1, scope: !2266)
!2341 = distinct !DISubprogram(name: "m_vec_add", scope: !539, file: !539, line: 22, type: !2342, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{null, !45, !428, !5}
!2344 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2341, file: !539, line: 22, type: !45)
!2345 = !DILocation(line: 0, scope: !2341)
!2346 = !DILocalVariable(name: "in", arg: 2, scope: !2341, file: !539, line: 22, type: !428)
!2347 = !DILocalVariable(name: "acc", arg: 3, scope: !2341, file: !539, line: 22, type: !5)
!2348 = !DILocalVariable(name: "i", scope: !2349, file: !539, line: 24, type: !15)
!2349 = distinct !DILexicalBlock(scope: !2341, file: !539, line: 24, column: 5)
!2350 = !DILocation(line: 0, scope: !2349)
!2351 = !DILocation(line: 24, column: 10, scope: !2349)
!2352 = !DILocation(line: 24, scope: !2349)
!2353 = !DILocation(line: 24, column: 26, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2349, file: !539, line: 24, column: 5)
!2355 = !DILocation(line: 24, column: 5, scope: !2349)
!2356 = !DILocation(line: 26, column: 19, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2354, file: !539, line: 25, column: 5)
!2358 = !DILocation(line: 26, column: 9, scope: !2357)
!2359 = !DILocation(line: 26, column: 16, scope: !2357)
!2360 = !DILocation(line: 24, column: 46, scope: !2354)
!2361 = !DILocation(line: 24, column: 5, scope: !2354)
!2362 = distinct !{!2362, !2355, !2363, !244}
!2363 = !DILocation(line: 27, column: 5, scope: !2349)
!2364 = !DILocation(line: 28, column: 1, scope: !2341)
!2365 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !539, file: !539, line: 66, type: !2366, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{null, !45, !5, !5}
!2368 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2365, file: !539, line: 66, type: !45)
!2369 = !DILocation(line: 0, scope: !2365)
!2370 = !DILocalVariable(name: "bins", arg: 2, scope: !2365, file: !539, line: 66, type: !5)
!2371 = !DILocalVariable(name: "out", arg: 3, scope: !2365, file: !539, line: 66, type: !5)
!2372 = !DILocation(line: 67, column: 44, scope: !2365)
!2373 = !DILocation(line: 67, column: 73, scope: !2365)
!2374 = !DILocation(line: 67, column: 5, scope: !2365)
!2375 = !DILocation(line: 68, column: 40, scope: !2365)
!2376 = !DILocation(line: 68, column: 69, scope: !2365)
!2377 = !DILocation(line: 68, column: 5, scope: !2365)
!2378 = !DILocation(line: 69, column: 44, scope: !2365)
!2379 = !DILocation(line: 69, column: 74, scope: !2365)
!2380 = !DILocation(line: 69, column: 5, scope: !2365)
!2381 = !DILocation(line: 70, column: 40, scope: !2365)
!2382 = !DILocation(line: 70, column: 69, scope: !2365)
!2383 = !DILocation(line: 70, column: 5, scope: !2365)
!2384 = !DILocation(line: 71, column: 44, scope: !2365)
!2385 = !DILocation(line: 71, column: 73, scope: !2365)
!2386 = !DILocation(line: 71, column: 5, scope: !2365)
!2387 = !DILocation(line: 72, column: 40, scope: !2365)
!2388 = !DILocation(line: 72, column: 69, scope: !2365)
!2389 = !DILocation(line: 72, column: 5, scope: !2365)
!2390 = !DILocation(line: 73, column: 44, scope: !2365)
!2391 = !DILocation(line: 73, column: 74, scope: !2365)
!2392 = !DILocation(line: 73, column: 5, scope: !2365)
!2393 = !DILocation(line: 74, column: 40, scope: !2365)
!2394 = !DILocation(line: 74, column: 69, scope: !2365)
!2395 = !DILocation(line: 74, column: 5, scope: !2365)
!2396 = !DILocation(line: 75, column: 44, scope: !2365)
!2397 = !DILocation(line: 75, column: 74, scope: !2365)
!2398 = !DILocation(line: 75, column: 5, scope: !2365)
!2399 = !DILocation(line: 76, column: 40, scope: !2365)
!2400 = !DILocation(line: 76, column: 69, scope: !2365)
!2401 = !DILocation(line: 76, column: 5, scope: !2365)
!2402 = !DILocation(line: 77, column: 44, scope: !2365)
!2403 = !DILocation(line: 77, column: 74, scope: !2365)
!2404 = !DILocation(line: 77, column: 5, scope: !2365)
!2405 = !DILocation(line: 78, column: 40, scope: !2365)
!2406 = !DILocation(line: 78, column: 69, scope: !2365)
!2407 = !DILocation(line: 78, column: 5, scope: !2365)
!2408 = !DILocation(line: 79, column: 44, scope: !2365)
!2409 = !DILocation(line: 79, column: 74, scope: !2365)
!2410 = !DILocation(line: 79, column: 5, scope: !2365)
!2411 = !DILocation(line: 80, column: 40, scope: !2365)
!2412 = !DILocation(line: 80, column: 69, scope: !2365)
!2413 = !DILocation(line: 80, column: 5, scope: !2365)
!2414 = !DILocation(line: 81, column: 35, scope: !2365)
!2415 = !DILocation(line: 81, column: 5, scope: !2365)
!2416 = !DILocation(line: 82, column: 1, scope: !2365)
!2417 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !539, file: !539, line: 56, type: !2342, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2418 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2417, file: !539, line: 56, type: !45)
!2419 = !DILocation(line: 0, scope: !2417)
!2420 = !DILocalVariable(name: "in", arg: 2, scope: !2417, file: !539, line: 56, type: !428)
!2421 = !DILocalVariable(name: "acc", arg: 3, scope: !2417, file: !539, line: 56, type: !5)
!2422 = !DILocalVariable(name: "mask_lsb", scope: !2417, file: !539, line: 58, type: !6)
!2423 = !DILocalVariable(name: "i", scope: !2424, file: !539, line: 59, type: !45)
!2424 = distinct !DILexicalBlock(scope: !2417, file: !539, line: 59, column: 5)
!2425 = !DILocation(line: 0, scope: !2424)
!2426 = !DILocation(line: 59, column: 9, scope: !2424)
!2427 = !DILocation(line: 59, scope: !2424)
!2428 = !DILocation(line: 59, column: 20, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2424, file: !539, line: 59, column: 5)
!2430 = !DILocation(line: 59, column: 5, scope: !2424)
!2431 = !DILocation(line: 60, column: 22, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2429, file: !539, line: 59, column: 43)
!2433 = !DILocation(line: 60, column: 28, scope: !2432)
!2434 = !DILocalVariable(name: "t", scope: !2432, file: !539, line: 60, type: !6)
!2435 = !DILocation(line: 0, scope: !2432)
!2436 = !DILocation(line: 61, column: 32, scope: !2432)
!2437 = !DILocation(line: 61, column: 43, scope: !2432)
!2438 = !DILocation(line: 61, column: 38, scope: !2432)
!2439 = !DILocation(line: 61, column: 9, scope: !2432)
!2440 = !DILocation(line: 61, column: 16, scope: !2432)
!2441 = !DILocation(line: 59, column: 40, scope: !2429)
!2442 = !DILocation(line: 59, column: 5, scope: !2429)
!2443 = distinct !{!2443, !2430, !2444, !244}
!2444 = !DILocation(line: 62, column: 5, scope: !2424)
!2445 = !DILocation(line: 63, column: 1, scope: !2417)
!2446 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !539, file: !539, line: 46, type: !2342, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2447 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2446, file: !539, line: 46, type: !45)
!2448 = !DILocation(line: 0, scope: !2446)
!2449 = !DILocalVariable(name: "in", arg: 2, scope: !2446, file: !539, line: 46, type: !428)
!2450 = !DILocalVariable(name: "acc", arg: 3, scope: !2446, file: !539, line: 46, type: !5)
!2451 = !DILocalVariable(name: "mask_msb", scope: !2446, file: !539, line: 48, type: !6)
!2452 = !DILocalVariable(name: "i", scope: !2453, file: !539, line: 49, type: !45)
!2453 = distinct !DILexicalBlock(scope: !2446, file: !539, line: 49, column: 5)
!2454 = !DILocation(line: 0, scope: !2453)
!2455 = !DILocation(line: 49, column: 9, scope: !2453)
!2456 = !DILocation(line: 49, scope: !2453)
!2457 = !DILocation(line: 49, column: 20, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2453, file: !539, line: 49, column: 5)
!2459 = !DILocation(line: 49, column: 5, scope: !2453)
!2460 = !DILocation(line: 50, column: 22, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2458, file: !539, line: 49, column: 43)
!2462 = !DILocalVariable(name: "t", scope: !2461, file: !539, line: 50, type: !6)
!2463 = !DILocation(line: 0, scope: !2461)
!2464 = !DILocation(line: 51, column: 32, scope: !2461)
!2465 = !DILocation(line: 51, column: 44, scope: !2461)
!2466 = !DILocation(line: 51, column: 50, scope: !2461)
!2467 = !DILocation(line: 51, column: 38, scope: !2461)
!2468 = !DILocation(line: 51, column: 9, scope: !2461)
!2469 = !DILocation(line: 51, column: 16, scope: !2461)
!2470 = !DILocation(line: 49, column: 40, scope: !2458)
!2471 = !DILocation(line: 49, column: 5, scope: !2458)
!2472 = distinct !{!2472, !2459, !2473, !244}
!2473 = !DILocation(line: 52, column: 5, scope: !2453)
!2474 = !DILocation(line: 53, column: 1, scope: !2446)
!2475 = distinct !DISubprogram(name: "m_vec_copy", scope: !539, file: !539, line: 13, type: !2342, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2476 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2475, file: !539, line: 13, type: !45)
!2477 = !DILocation(line: 0, scope: !2475)
!2478 = !DILocalVariable(name: "in", arg: 2, scope: !2475, file: !539, line: 13, type: !428)
!2479 = !DILocalVariable(name: "out", arg: 3, scope: !2475, file: !539, line: 13, type: !5)
!2480 = !DILocalVariable(name: "i", scope: !2481, file: !539, line: 15, type: !15)
!2481 = distinct !DILexicalBlock(scope: !2475, file: !539, line: 15, column: 5)
!2482 = !DILocation(line: 0, scope: !2481)
!2483 = !DILocation(line: 15, column: 10, scope: !2481)
!2484 = !DILocation(line: 15, scope: !2481)
!2485 = !DILocation(line: 15, column: 26, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2481, file: !539, line: 15, column: 5)
!2487 = !DILocation(line: 15, column: 5, scope: !2481)
!2488 = !DILocation(line: 17, column: 18, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2486, file: !539, line: 16, column: 5)
!2490 = !DILocation(line: 17, column: 9, scope: !2489)
!2491 = !DILocation(line: 17, column: 16, scope: !2489)
!2492 = !DILocation(line: 15, column: 46, scope: !2486)
!2493 = !DILocation(line: 15, column: 5, scope: !2486)
!2494 = distinct !{!2494, !2487, !2495, !244}
!2495 = !DILocation(line: 18, column: 5, scope: !2481)
!2496 = !DILocation(line: 19, column: 1, scope: !2475)
!2497 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_m_upper", scope: !58, file: !58, line: 14, type: !2498, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{null, !2500, !428, !5, !45}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2502)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2503)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2504)
!2504 = !{!2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2503, file: !36, line: 266, baseType: !45, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2503, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2503, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2503, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2503, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2503, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2503, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2503, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2503, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2503, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2503, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2503, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2503, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2503, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2503, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2503, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2503, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2503, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2503, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2503, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2503, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2503, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2503, file: !36, line: 288, baseType: !165, size: 32, offset: 704)
!2528 = !DILocalVariable(name: "p", arg: 1, scope: !2497, file: !58, line: 14, type: !2500)
!2529 = !DILocation(line: 0, scope: !2497)
!2530 = !DILocalVariable(name: "in", arg: 2, scope: !2497, file: !58, line: 14, type: !428)
!2531 = !DILocalVariable(name: "out", arg: 3, scope: !2497, file: !58, line: 14, type: !5)
!2532 = !DILocalVariable(name: "size", arg: 4, scope: !2497, file: !58, line: 14, type: !45)
!2533 = !DILocalVariable(name: "m_vec_limbs", scope: !2497, file: !58, line: 19, type: !343)
!2534 = !DILocalVariable(name: "m_vecs_stored", scope: !2497, file: !58, line: 20, type: !45)
!2535 = !DILocalVariable(name: "r", scope: !2536, file: !58, line: 21, type: !45)
!2536 = distinct !DILexicalBlock(scope: !2497, file: !58, line: 21, column: 5)
!2537 = !DILocation(line: 0, scope: !2536)
!2538 = !DILocation(line: 21, column: 10, scope: !2536)
!2539 = !DILocation(line: 20, column: 9, scope: !2497)
!2540 = !DILocation(line: 21, scope: !2536)
!2541 = !DILocation(line: 21, column: 23, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2536, file: !58, line: 21, column: 5)
!2543 = !DILocation(line: 21, column: 5, scope: !2536)
!2544 = !DILocation(line: 22, column: 9, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !58, line: 22, column: 9)
!2546 = distinct !DILexicalBlock(scope: !2542, file: !58, line: 21, column: 36)
!2547 = !DILocation(line: 22, scope: !2545)
!2548 = !DILocalVariable(name: "c", scope: !2545, file: !58, line: 22, type: !45)
!2549 = !DILocation(line: 0, scope: !2545)
!2550 = !DILocation(line: 22, column: 27, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2545, file: !58, line: 22, column: 9)
!2552 = !DILocation(line: 23, column: 59, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2551, file: !58, line: 22, column: 40)
!2554 = !DILocation(line: 23, column: 66, scope: !2553)
!2555 = !DILocation(line: 23, column: 40, scope: !2553)
!2556 = !DILocation(line: 23, column: 76, scope: !2553)
!2557 = !DILocation(line: 23, column: 13, scope: !2553)
!2558 = !DILocation(line: 24, column: 19, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2553, file: !58, line: 24, column: 17)
!2560 = !DILocation(line: 25, column: 62, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2559, file: !58, line: 24, column: 25)
!2562 = !DILocation(line: 25, column: 69, scope: !2561)
!2563 = !DILocation(line: 25, column: 43, scope: !2561)
!2564 = !DILocation(line: 25, column: 79, scope: !2561)
!2565 = !DILocation(line: 25, column: 17, scope: !2561)
!2566 = !DILocation(line: 26, column: 13, scope: !2561)
!2567 = !DILocation(line: 27, column: 27, scope: !2553)
!2568 = !DILocation(line: 22, column: 36, scope: !2551)
!2569 = !DILocation(line: 22, column: 9, scope: !2551)
!2570 = distinct !{!2570, !2544, !2571, !244}
!2571 = !DILocation(line: 28, column: 9, scope: !2545)
!2572 = !DILocation(line: 21, column: 32, scope: !2542)
!2573 = !DILocation(line: 21, column: 5, scope: !2542)
!2574 = distinct !{!2574, !2543, !2575, !244}
!2575 = !DILocation(line: 29, column: 5, scope: !2536)
!2576 = !DILocation(line: 30, column: 1, scope: !2497)
!2577 = distinct !DISubprogram(name: "m_vec_copy", scope: !539, file: !539, line: 13, type: !2342, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2578 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2577, file: !539, line: 13, type: !45)
!2579 = !DILocation(line: 0, scope: !2577)
!2580 = !DILocalVariable(name: "in", arg: 2, scope: !2577, file: !539, line: 13, type: !428)
!2581 = !DILocalVariable(name: "out", arg: 3, scope: !2577, file: !539, line: 13, type: !5)
!2582 = !DILocalVariable(name: "i", scope: !2583, file: !539, line: 15, type: !15)
!2583 = distinct !DILexicalBlock(scope: !2577, file: !539, line: 15, column: 5)
!2584 = !DILocation(line: 0, scope: !2583)
!2585 = !DILocation(line: 15, column: 10, scope: !2583)
!2586 = !DILocation(line: 15, scope: !2583)
!2587 = !DILocation(line: 15, column: 26, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2583, file: !539, line: 15, column: 5)
!2589 = !DILocation(line: 15, column: 5, scope: !2583)
!2590 = !DILocation(line: 17, column: 18, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2588, file: !539, line: 16, column: 5)
!2592 = !DILocation(line: 17, column: 9, scope: !2591)
!2593 = !DILocation(line: 17, column: 16, scope: !2591)
!2594 = !DILocation(line: 15, column: 46, scope: !2588)
!2595 = !DILocation(line: 15, column: 5, scope: !2588)
!2596 = distinct !{!2596, !2589, !2597, !244}
!2597 = !DILocation(line: 18, column: 5, scope: !2583)
!2598 = !DILocation(line: 19, column: 1, scope: !2577)
!2599 = distinct !DISubprogram(name: "m_vec_add", scope: !539, file: !539, line: 22, type: !2342, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2600 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2599, file: !539, line: 22, type: !45)
!2601 = !DILocation(line: 0, scope: !2599)
!2602 = !DILocalVariable(name: "in", arg: 2, scope: !2599, file: !539, line: 22, type: !428)
!2603 = !DILocalVariable(name: "acc", arg: 3, scope: !2599, file: !539, line: 22, type: !5)
!2604 = !DILocalVariable(name: "i", scope: !2605, file: !539, line: 24, type: !15)
!2605 = distinct !DILexicalBlock(scope: !2599, file: !539, line: 24, column: 5)
!2606 = !DILocation(line: 0, scope: !2605)
!2607 = !DILocation(line: 24, column: 10, scope: !2605)
!2608 = !DILocation(line: 24, scope: !2605)
!2609 = !DILocation(line: 24, column: 26, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2605, file: !539, line: 24, column: 5)
!2611 = !DILocation(line: 24, column: 5, scope: !2605)
!2612 = !DILocation(line: 26, column: 19, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2610, file: !539, line: 25, column: 5)
!2614 = !DILocation(line: 26, column: 9, scope: !2613)
!2615 = !DILocation(line: 26, column: 16, scope: !2613)
!2616 = !DILocation(line: 24, column: 46, scope: !2610)
!2617 = !DILocation(line: 24, column: 5, scope: !2610)
!2618 = distinct !{!2618, !2611, !2619, !244}
!2619 = !DILocation(line: 27, column: 5, scope: !2605)
!2620 = !DILocation(line: 28, column: 1, scope: !2599)
!2621 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2622, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!45, !2500, !18, !49, !49, !18, !45, !45, !45, !45}
!2624 = !DILocalVariable(name: "p", arg: 1, scope: !2621, file: !58, line: 40, type: !2500)
!2625 = !DILocation(line: 0, scope: !2621)
!2626 = !DILocalVariable(name: "A", arg: 2, scope: !2621, file: !58, line: 40, type: !18)
!2627 = !DILocalVariable(name: "y", arg: 3, scope: !2621, file: !58, line: 41, type: !49)
!2628 = !DILocalVariable(name: "r", arg: 4, scope: !2621, file: !58, line: 41, type: !49)
!2629 = !DILocalVariable(name: "x", arg: 5, scope: !2621, file: !58, line: 42, type: !18)
!2630 = !DILocalVariable(name: "k", arg: 6, scope: !2621, file: !58, line: 42, type: !45)
!2631 = !DILocalVariable(name: "o", arg: 7, scope: !2621, file: !58, line: 42, type: !45)
!2632 = !DILocalVariable(name: "m", arg: 8, scope: !2621, file: !58, line: 42, type: !45)
!2633 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2621, file: !58, line: 42, type: !45)
!2634 = !DILocalVariable(name: "i", scope: !2635, file: !58, line: 51, type: !45)
!2635 = distinct !DILexicalBlock(scope: !2621, file: !58, line: 51, column: 5)
!2636 = !DILocation(line: 0, scope: !2635)
!2637 = !DILocation(line: 51, column: 10, scope: !2635)
!2638 = !DILocation(line: 51, scope: !2635)
!2639 = !DILocation(line: 51, column: 23, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2635, file: !58, line: 51, column: 5)
!2641 = !DILocation(line: 51, column: 5, scope: !2635)
!2642 = !DILocation(line: 57, column: 5, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2621, file: !58, line: 57, column: 5)
!2644 = !DILocation(line: 52, column: 16, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2640, file: !58, line: 51, column: 37)
!2646 = !DILocation(line: 52, column: 9, scope: !2645)
!2647 = !DILocation(line: 52, column: 14, scope: !2645)
!2648 = !DILocation(line: 51, column: 33, scope: !2640)
!2649 = !DILocation(line: 51, column: 5, scope: !2640)
!2650 = distinct !{!2650, !2641, !2651, !244}
!2651 = !DILocation(line: 53, column: 5, scope: !2635)
!2652 = !DILocation(line: 57, scope: !2643)
!2653 = !DILocalVariable(name: "i", scope: !2643, file: !58, line: 57, type: !45)
!2654 = !DILocation(line: 0, scope: !2643)
!2655 = !DILocation(line: 57, column: 23, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2643, file: !58, line: 57, column: 5)
!2657 = !DILocation(line: 58, column: 13, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2656, file: !58, line: 57, column: 33)
!2659 = !DILocation(line: 58, column: 26, scope: !2658)
!2660 = !DILocation(line: 58, column: 30, scope: !2658)
!2661 = !DILocation(line: 58, column: 21, scope: !2658)
!2662 = !DILocation(line: 58, column: 9, scope: !2658)
!2663 = !DILocation(line: 58, column: 36, scope: !2658)
!2664 = !DILocation(line: 57, column: 29, scope: !2656)
!2665 = !DILocation(line: 57, column: 5, scope: !2656)
!2666 = distinct !{!2666, !2642, !2667, !244}
!2667 = !DILocation(line: 59, column: 5, scope: !2643)
!2668 = !DILocation(line: 60, column: 25, scope: !2621)
!2669 = !DILocation(line: 60, column: 29, scope: !2621)
!2670 = !DILocation(line: 60, column: 5, scope: !2621)
!2671 = !DILocalVariable(name: "i", scope: !2672, file: !58, line: 63, type: !45)
!2672 = distinct !DILexicalBlock(scope: !2621, file: !58, line: 63, column: 5)
!2673 = !DILocation(line: 0, scope: !2672)
!2674 = !DILocation(line: 63, column: 10, scope: !2672)
!2675 = !DILocation(line: 63, scope: !2672)
!2676 = !DILocation(line: 63, column: 23, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2672, file: !58, line: 63, column: 5)
!2678 = !DILocation(line: 63, column: 5, scope: !2672)
!2679 = !DILocation(line: 64, column: 44, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2677, file: !58, line: 63, column: 33)
!2681 = !DILocation(line: 64, column: 50, scope: !2680)
!2682 = !DILocation(line: 64, column: 38, scope: !2680)
!2683 = !DILocation(line: 64, column: 13, scope: !2680)
!2684 = !DILocation(line: 64, column: 26, scope: !2680)
!2685 = !DILocation(line: 64, column: 30, scope: !2680)
!2686 = !DILocation(line: 64, column: 21, scope: !2680)
!2687 = !DILocation(line: 64, column: 9, scope: !2680)
!2688 = !DILocation(line: 64, column: 36, scope: !2680)
!2689 = !DILocation(line: 63, column: 29, scope: !2677)
!2690 = !DILocation(line: 63, column: 5, scope: !2677)
!2691 = distinct !{!2691, !2678, !2692, !244}
!2692 = !DILocation(line: 65, column: 5, scope: !2672)
!2693 = !DILocation(line: 67, column: 16, scope: !2621)
!2694 = !DILocation(line: 67, column: 20, scope: !2621)
!2695 = !DILocation(line: 67, column: 5, scope: !2621)
!2696 = !DILocalVariable(name: "full_rank", scope: !2621, file: !58, line: 70, type: !14)
!2697 = !DILocalVariable(name: "i", scope: !2698, file: !58, line: 71, type: !45)
!2698 = distinct !DILexicalBlock(scope: !2621, file: !58, line: 71, column: 5)
!2699 = !DILocation(line: 0, scope: !2698)
!2700 = !DILocation(line: 71, column: 10, scope: !2698)
!2701 = !DILocation(line: 71, scope: !2698)
!2702 = !DILocation(line: 71, column: 23, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2698, file: !58, line: 71, column: 5)
!2704 = !DILocation(line: 71, column: 5, scope: !2698)
!2705 = !DILocation(line: 72, column: 27, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2703, file: !58, line: 71, column: 42)
!2707 = !DILocation(line: 72, column: 32, scope: !2706)
!2708 = !DILocation(line: 72, column: 22, scope: !2706)
!2709 = !DILocation(line: 72, column: 19, scope: !2706)
!2710 = !DILocation(line: 71, column: 38, scope: !2703)
!2711 = !DILocation(line: 71, column: 5, scope: !2703)
!2712 = distinct !{!2712, !2704, !2713, !244}
!2713 = !DILocation(line: 73, column: 5, scope: !2698)
!2714 = !DILocation(line: 80, column: 19, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2621, file: !58, line: 80, column: 9)
!2716 = !DILocation(line: 88, column: 5, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2621, file: !58, line: 88, column: 5)
!2718 = distinct !{!2718, !2716, !2719, !244}
!2719 = !DILocation(line: 122, column: 5, scope: !2717)
!2720 = !DILocation(line: 88, scope: !2717)
!2721 = !DILocalVariable(name: "row", scope: !2717, file: !58, line: 88, type: !45)
!2722 = !DILocation(line: 0, scope: !2717)
!2723 = !DILocation(line: 88, column: 31, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2717, file: !58, line: 88, column: 5)
!2725 = !DILocalVariable(name: "finished", scope: !2621, file: !58, line: 46, type: !14)
!2726 = !DILocation(line: 90, column: 27, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2724, file: !58, line: 88, column: 44)
!2728 = !DILocalVariable(name: "col_upper_bound", scope: !2621, file: !58, line: 47, type: !45)
!2729 = !DILocalVariable(name: "col", scope: !2730, file: !58, line: 93, type: !45)
!2730 = distinct !DILexicalBlock(scope: !2727, file: !58, line: 93, column: 9)
!2731 = !DILocation(line: 0, scope: !2730)
!2732 = !DILocation(line: 93, column: 14, scope: !2730)
!2733 = !DILocation(line: 0, scope: !2727)
!2734 = !DILocation(line: 93, scope: !2730)
!2735 = !DILocation(line: 93, column: 33, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2730, file: !58, line: 93, column: 9)
!2737 = !DILocation(line: 93, column: 9, scope: !2730)
!2738 = !DILocation(line: 97, column: 50, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2736, file: !58, line: 93, column: 60)
!2740 = !DILocation(line: 97, column: 44, scope: !2739)
!2741 = !DILocation(line: 97, column: 30, scope: !2739)
!2742 = !DILocation(line: 97, column: 73, scope: !2739)
!2743 = !DILocalVariable(name: "correct_column", scope: !2621, file: !58, line: 48, type: !14)
!2744 = !DILocation(line: 99, column: 63, scope: !2739)
!2745 = !DILocation(line: 99, column: 48, scope: !2739)
!2746 = !DILocation(line: 99, column: 46, scope: !2739)
!2747 = !DILocalVariable(name: "u", scope: !2739, file: !58, line: 99, type: !14)
!2748 = !DILocation(line: 0, scope: !2739)
!2749 = !DILocation(line: 100, column: 13, scope: !2739)
!2750 = !DILocation(line: 100, column: 20, scope: !2739)
!2751 = !DILocalVariable(name: "i", scope: !2752, file: !58, line: 102, type: !45)
!2752 = distinct !DILexicalBlock(scope: !2739, file: !58, line: 102, column: 13)
!2753 = !DILocation(line: 0, scope: !2752)
!2754 = !DILocation(line: 102, column: 18, scope: !2752)
!2755 = !DILocation(line: 102, scope: !2752)
!2756 = !DILocation(line: 102, column: 31, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2752, file: !58, line: 102, column: 13)
!2758 = !DILocation(line: 102, column: 13, scope: !2752)
!2759 = !DILocation(line: 103, column: 53, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2757, file: !58, line: 102, column: 46)
!2761 = !DILocation(line: 103, column: 45, scope: !2760)
!2762 = !DILocation(line: 103, column: 34, scope: !2760)
!2763 = !DILocation(line: 103, column: 95, scope: !2760)
!2764 = !DILocation(line: 103, column: 99, scope: !2760)
!2765 = !DILocation(line: 103, column: 91, scope: !2760)
!2766 = !DILocation(line: 103, column: 80, scope: !2760)
!2767 = !DILocation(line: 103, column: 115, scope: !2760)
!2768 = !DILocation(line: 103, column: 76, scope: !2760)
!2769 = !DILocation(line: 104, column: 49, scope: !2760)
!2770 = !DILocation(line: 104, column: 53, scope: !2760)
!2771 = !DILocation(line: 104, column: 45, scope: !2760)
!2772 = !DILocation(line: 104, column: 34, scope: !2760)
!2773 = !DILocation(line: 104, column: 69, scope: !2760)
!2774 = !DILocation(line: 104, column: 30, scope: !2760)
!2775 = !DILocation(line: 104, column: 95, scope: !2760)
!2776 = !DILocation(line: 104, column: 99, scope: !2760)
!2777 = !DILocation(line: 104, column: 91, scope: !2760)
!2778 = !DILocation(line: 104, column: 80, scope: !2760)
!2779 = !DILocation(line: 104, column: 115, scope: !2760)
!2780 = !DILocation(line: 104, column: 76, scope: !2760)
!2781 = !DILocation(line: 105, column: 49, scope: !2760)
!2782 = !DILocation(line: 105, column: 53, scope: !2760)
!2783 = !DILocation(line: 105, column: 45, scope: !2760)
!2784 = !DILocation(line: 105, column: 34, scope: !2760)
!2785 = !DILocation(line: 105, column: 69, scope: !2760)
!2786 = !DILocation(line: 105, column: 30, scope: !2760)
!2787 = !DILocation(line: 105, column: 95, scope: !2760)
!2788 = !DILocation(line: 105, column: 99, scope: !2760)
!2789 = !DILocation(line: 105, column: 91, scope: !2760)
!2790 = !DILocation(line: 105, column: 80, scope: !2760)
!2791 = !DILocation(line: 105, column: 115, scope: !2760)
!2792 = !DILocation(line: 105, column: 76, scope: !2760)
!2793 = !DILocation(line: 106, column: 49, scope: !2760)
!2794 = !DILocation(line: 106, column: 53, scope: !2760)
!2795 = !DILocation(line: 106, column: 45, scope: !2760)
!2796 = !DILocation(line: 106, column: 34, scope: !2760)
!2797 = !DILocation(line: 106, column: 69, scope: !2760)
!2798 = !DILocation(line: 106, column: 30, scope: !2760)
!2799 = !DILocation(line: 106, column: 95, scope: !2760)
!2800 = !DILocation(line: 106, column: 99, scope: !2760)
!2801 = !DILocation(line: 106, column: 91, scope: !2760)
!2802 = !DILocation(line: 106, column: 80, scope: !2760)
!2803 = !DILocation(line: 106, column: 115, scope: !2760)
!2804 = !DILocation(line: 106, column: 76, scope: !2760)
!2805 = !DILocalVariable(name: "tmp", scope: !2760, file: !58, line: 103, type: !6)
!2806 = !DILocation(line: 0, scope: !2760)
!2807 = !DILocation(line: 108, column: 23, scope: !2760)
!2808 = !DILocation(line: 110, column: 34, scope: !2760)
!2809 = !DILocation(line: 110, column: 17, scope: !2760)
!2810 = !DILocation(line: 110, column: 48, scope: !2760)
!2811 = !DILocation(line: 111, column: 56, scope: !2760)
!2812 = !DILocation(line: 111, column: 34, scope: !2760)
!2813 = !DILocation(line: 111, column: 17, scope: !2760)
!2814 = !DILocation(line: 111, column: 48, scope: !2760)
!2815 = !DILocation(line: 112, column: 56, scope: !2760)
!2816 = !DILocation(line: 112, column: 34, scope: !2760)
!2817 = !DILocation(line: 112, column: 17, scope: !2760)
!2818 = !DILocation(line: 112, column: 48, scope: !2760)
!2819 = !DILocation(line: 113, column: 56, scope: !2760)
!2820 = !DILocation(line: 113, column: 34, scope: !2760)
!2821 = !DILocation(line: 113, column: 17, scope: !2760)
!2822 = !DILocation(line: 113, column: 48, scope: !2760)
!2823 = !DILocation(line: 114, column: 56, scope: !2760)
!2824 = !DILocation(line: 114, column: 34, scope: !2760)
!2825 = !DILocation(line: 114, column: 17, scope: !2760)
!2826 = !DILocation(line: 114, column: 48, scope: !2760)
!2827 = !DILocation(line: 115, column: 56, scope: !2760)
!2828 = !DILocation(line: 115, column: 34, scope: !2760)
!2829 = !DILocation(line: 115, column: 17, scope: !2760)
!2830 = !DILocation(line: 115, column: 48, scope: !2760)
!2831 = !DILocation(line: 116, column: 56, scope: !2760)
!2832 = !DILocation(line: 116, column: 34, scope: !2760)
!2833 = !DILocation(line: 116, column: 17, scope: !2760)
!2834 = !DILocation(line: 116, column: 48, scope: !2760)
!2835 = !DILocation(line: 117, column: 56, scope: !2760)
!2836 = !DILocation(line: 117, column: 34, scope: !2760)
!2837 = !DILocation(line: 117, column: 17, scope: !2760)
!2838 = !DILocation(line: 117, column: 48, scope: !2760)
!2839 = !DILocation(line: 102, column: 40, scope: !2757)
!2840 = !DILocation(line: 102, column: 13, scope: !2757)
!2841 = distinct !{!2841, !2758, !2842, !244}
!2842 = !DILocation(line: 118, column: 13, scope: !2752)
!2843 = !DILocation(line: 120, column: 33, scope: !2739)
!2844 = !DILocation(line: 93, column: 56, scope: !2736)
!2845 = !DILocation(line: 93, column: 9, scope: !2736)
!2846 = distinct !{!2846, !2737, !2847, !244}
!2847 = !DILocation(line: 121, column: 9, scope: !2730)
!2848 = !DILocation(line: 124, column: 1, scope: !2621)
!2849 = distinct !DISubprogram(name: "mat_mul", scope: !595, file: !595, line: 79, type: !1532, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2850 = !DILocalVariable(name: "a", arg: 1, scope: !2849, file: !595, line: 79, type: !49)
!2851 = !DILocation(line: 0, scope: !2849)
!2852 = !DILocalVariable(name: "b", arg: 2, scope: !2849, file: !595, line: 79, type: !49)
!2853 = !DILocalVariable(name: "c", arg: 3, scope: !2849, file: !595, line: 80, type: !18)
!2854 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2849, file: !595, line: 80, type: !45)
!2855 = !DILocalVariable(name: "row_a", arg: 5, scope: !2849, file: !595, line: 80, type: !45)
!2856 = !DILocalVariable(name: "col_b", arg: 6, scope: !2849, file: !595, line: 80, type: !45)
!2857 = !DILocalVariable(name: "i", scope: !2858, file: !595, line: 81, type: !45)
!2858 = distinct !DILexicalBlock(scope: !2849, file: !595, line: 81, column: 5)
!2859 = !DILocation(line: 0, scope: !2858)
!2860 = !DILocation(line: 81, column: 10, scope: !2858)
!2861 = !DILocation(line: 81, scope: !2858)
!2862 = !DILocation(line: 81, column: 23, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2858, file: !595, line: 81, column: 5)
!2864 = !DILocation(line: 81, column: 5, scope: !2858)
!2865 = !DILocation(line: 82, column: 9, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !595, line: 82, column: 9)
!2867 = distinct !DILexicalBlock(scope: !2863, file: !595, line: 81, column: 53)
!2868 = !DILocation(line: 82, scope: !2866)
!2869 = !DILocalVariable(name: "j", scope: !2866, file: !595, line: 82, type: !45)
!2870 = !DILocation(line: 0, scope: !2866)
!2871 = !DILocation(line: 83, column: 18, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !595, line: 82, column: 46)
!2873 = distinct !DILexicalBlock(scope: !2866, file: !595, line: 82, column: 9)
!2874 = !DILocation(line: 83, column: 16, scope: !2872)
!2875 = !DILocation(line: 82, column: 41, scope: !2873)
!2876 = !DILocation(line: 82, column: 9, scope: !2873)
!2877 = distinct !{!2877, !2865, !2878, !244}
!2878 = !DILocation(line: 84, column: 9, scope: !2866)
!2879 = !DILocation(line: 81, column: 32, scope: !2863)
!2880 = !DILocation(line: 81, column: 39, scope: !2863)
!2881 = !DILocation(line: 81, column: 5, scope: !2863)
!2882 = distinct !{!2882, !2864, !2883, !244}
!2883 = !DILocation(line: 85, column: 5, scope: !2858)
!2884 = !DILocation(line: 86, column: 1, scope: !2849)
!2885 = distinct !DISubprogram(name: "sub_f", scope: !595, file: !595, line: 48, type: !1631, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2886 = !DILocalVariable(name: "a", arg: 1, scope: !2885, file: !595, line: 48, type: !14)
!2887 = !DILocation(line: 0, scope: !2885)
!2888 = !DILocalVariable(name: "b", arg: 2, scope: !2885, file: !595, line: 48, type: !14)
!2889 = !DILocation(line: 49, column: 14, scope: !2885)
!2890 = !DILocation(line: 49, column: 5, scope: !2885)
!2891 = distinct !DISubprogram(name: "EF", scope: !2892, file: !2892, line: 60, type: !2893, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2892 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2893 = !DISubroutineType(types: !2894)
!2894 = !{null, !18, !45, !45}
!2895 = !DILocalVariable(name: "A", arg: 1, scope: !2891, file: !2892, line: 60, type: !18)
!2896 = !DILocation(line: 0, scope: !2891)
!2897 = !DILocalVariable(name: "nrows", arg: 2, scope: !2891, file: !2892, line: 60, type: !45)
!2898 = !DILocalVariable(name: "ncols", arg: 3, scope: !2891, file: !2892, line: 60, type: !45)
!2899 = !DILocalVariable(name: "_pivot_row", scope: !2891, file: !2892, line: 62, type: !2900, align: 256)
!2900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 384, elements: !2901)
!2901 = !{!2902}
!2902 = !DISubrange(count: 6)
!2903 = !DILocation(line: 62, column: 27, scope: !2891)
!2904 = !DILocalVariable(name: "_pivot_row2", scope: !2891, file: !2892, line: 63, type: !2900, align: 256)
!2905 = !DILocation(line: 63, column: 27, scope: !2891)
!2906 = !DILocalVariable(name: "packed_A", scope: !2891, file: !2892, line: 64, type: !2907, align: 256)
!2907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 29952, elements: !2908)
!2908 = !{!2909}
!2909 = !DISubrange(count: 468)
!2910 = !DILocation(line: 64, column: 27, scope: !2891)
!2911 = !DILocation(line: 66, column: 26, scope: !2891)
!2912 = !DILocation(line: 66, column: 32, scope: !2891)
!2913 = !DILocalVariable(name: "row_len", scope: !2891, file: !2892, line: 66, type: !45)
!2914 = !DILocalVariable(name: "i", scope: !2915, file: !2892, line: 69, type: !45)
!2915 = distinct !DILexicalBlock(scope: !2891, file: !2892, line: 69, column: 5)
!2916 = !DILocation(line: 0, scope: !2915)
!2917 = !DILocation(line: 69, column: 10, scope: !2915)
!2918 = !DILocation(line: 69, scope: !2915)
!2919 = !DILocation(line: 69, column: 23, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2915, file: !2892, line: 69, column: 5)
!2921 = !DILocation(line: 69, column: 5, scope: !2915)
!2922 = !DILocation(line: 77, column: 5, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2891, file: !2892, line: 77, column: 5)
!2924 = !DILocation(line: 70, column: 29, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2920, file: !2892, line: 69, column: 37)
!2926 = !DILocation(line: 70, column: 25, scope: !2925)
!2927 = !DILocation(line: 70, column: 51, scope: !2925)
!2928 = !DILocation(line: 70, column: 47, scope: !2925)
!2929 = !DILocation(line: 70, column: 9, scope: !2925)
!2930 = !DILocation(line: 69, column: 33, scope: !2920)
!2931 = !DILocation(line: 69, column: 5, scope: !2920)
!2932 = distinct !{!2932, !2921, !2933, !244}
!2933 = !DILocation(line: 71, column: 5, scope: !2915)
!2934 = !DILocation(line: 77, scope: !2923)
!2935 = !DILocalVariable(name: "pivot_row", scope: !2891, file: !2892, line: 76, type: !45)
!2936 = !DILocalVariable(name: "pivot_col", scope: !2923, file: !2892, line: 77, type: !45)
!2937 = !DILocation(line: 0, scope: !2923)
!2938 = !DILocation(line: 77, column: 39, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2923, file: !2892, line: 77, column: 5)
!2940 = !DILocation(line: 138, column: 5, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2891, file: !2892, line: 138, column: 5)
!2942 = !DILocation(line: 79, column: 37, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2939, file: !2892, line: 77, column: 61)
!2944 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2943, file: !2892, line: 79, type: !45)
!2945 = !DILocation(line: 0, scope: !2943)
!2946 = !DILocation(line: 80, column: 37, scope: !2943)
!2947 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2943, file: !2892, line: 80, type: !45)
!2948 = !DILocalVariable(name: "i", scope: !2949, file: !2892, line: 85, type: !45)
!2949 = distinct !DILexicalBlock(scope: !2943, file: !2892, line: 85, column: 9)
!2950 = !DILocation(line: 0, scope: !2949)
!2951 = !DILocation(line: 85, column: 14, scope: !2949)
!2952 = !DILocation(line: 85, scope: !2949)
!2953 = !DILocation(line: 85, column: 27, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2949, file: !2892, line: 85, column: 9)
!2955 = !DILocation(line: 85, column: 9, scope: !2949)
!2956 = !DILocation(line: 93, column: 9, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2943, file: !2892, line: 93, column: 9)
!2958 = !DILocation(line: 86, column: 13, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2954, file: !2892, line: 85, column: 43)
!2960 = !DILocation(line: 86, column: 27, scope: !2959)
!2961 = !DILocation(line: 87, column: 13, scope: !2959)
!2962 = !DILocation(line: 87, column: 28, scope: !2959)
!2963 = !DILocation(line: 85, column: 39, scope: !2954)
!2964 = !DILocation(line: 85, column: 9, scope: !2954)
!2965 = distinct !{!2965, !2955, !2966, !244}
!2966 = !DILocation(line: 88, column: 9, scope: !2949)
!2967 = !DILocation(line: 0, scope: !2957)
!2968 = !DILocalVariable(name: "row", scope: !2957, file: !2892, line: 93, type: !45)
!2969 = !DILocalVariable(name: "pivot", scope: !2943, file: !2892, line: 91, type: !14)
!2970 = !DILocalVariable(name: "pivot_is_zero", scope: !2943, file: !2892, line: 92, type: !6)
!2971 = !DILocation(line: 94, column: 24, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2957, file: !2892, line: 93, column: 9)
!2973 = !DILocation(line: 94, column: 21, scope: !2972)
!2974 = !DILocation(line: 96, column: 38, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2972, file: !2892, line: 94, column: 80)
!2976 = !DILocation(line: 96, column: 37, scope: !2975)
!2977 = !DILocalVariable(name: "is_pivot_row", scope: !2975, file: !2892, line: 96, type: !6)
!2978 = !DILocation(line: 0, scope: !2975)
!2979 = !DILocation(line: 97, column: 40, scope: !2975)
!2980 = !DILocalVariable(name: "below_pivot_row", scope: !2975, file: !2892, line: 97, type: !6)
!2981 = !DILocalVariable(name: "j", scope: !2982, file: !2892, line: 99, type: !45)
!2982 = distinct !DILexicalBlock(scope: !2975, file: !2892, line: 99, column: 13)
!2983 = !DILocation(line: 0, scope: !2982)
!2984 = !DILocation(line: 99, column: 18, scope: !2982)
!2985 = !DILocation(line: 99, scope: !2982)
!2986 = !DILocation(line: 99, column: 31, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2982, file: !2892, line: 99, column: 13)
!2988 = !DILocation(line: 99, column: 13, scope: !2982)
!2989 = !DILocation(line: 100, column: 67, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2987, file: !2892, line: 99, column: 47)
!2991 = !DILocation(line: 100, column: 48, scope: !2990)
!2992 = !DILocation(line: 101, column: 47, scope: !2990)
!2993 = !DILocation(line: 101, column: 57, scope: !2990)
!2994 = !DILocation(line: 101, column: 34, scope: !2990)
!2995 = !DILocation(line: 100, column: 85, scope: !2990)
!2996 = !DILocation(line: 100, column: 17, scope: !2990)
!2997 = !DILocation(line: 100, column: 31, scope: !2990)
!2998 = !DILocation(line: 99, column: 43, scope: !2987)
!2999 = !DILocation(line: 99, column: 13, scope: !2987)
!3000 = distinct !{!3000, !2988, !3001, !244}
!3001 = !DILocation(line: 102, column: 13, scope: !2982)
!3002 = !DILocation(line: 103, column: 21, scope: !2975)
!3003 = !DILocation(line: 104, column: 44, scope: !2975)
!3004 = !DILocation(line: 104, column: 30, scope: !2975)
!3005 = !DILocation(line: 104, column: 29, scope: !2975)
!3006 = !DILocation(line: 94, column: 76, scope: !2972)
!3007 = !DILocation(line: 93, column: 9, scope: !2972)
!3008 = distinct !{!3008, !2956, !3009, !244}
!3009 = !DILocation(line: 105, column: 9, scope: !2957)
!3010 = !DILocation(line: 108, column: 19, scope: !2943)
!3011 = !DILocalVariable(name: "inverse", scope: !2891, file: !2892, line: 75, type: !14)
!3012 = !DILocation(line: 109, column: 9, scope: !2943)
!3013 = !DILocalVariable(name: "row", scope: !3014, file: !2892, line: 113, type: !45)
!3014 = distinct !DILexicalBlock(scope: !2943, file: !2892, line: 113, column: 9)
!3015 = !DILocation(line: 0, scope: !3014)
!3016 = !DILocation(line: 113, column: 14, scope: !3014)
!3017 = !DILocation(line: 113, scope: !3014)
!3018 = !DILocation(line: 113, column: 51, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3014, file: !2892, line: 113, column: 9)
!3020 = !DILocation(line: 113, column: 9, scope: !3014)
!3021 = !DILocation(line: 124, column: 9, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2943, file: !2892, line: 124, column: 9)
!3023 = !DILocation(line: 114, column: 33, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3019, file: !2892, line: 113, column: 84)
!3025 = !DILocation(line: 114, column: 63, scope: !3024)
!3026 = !DILocalVariable(name: "do_copy", scope: !3024, file: !2892, line: 114, type: !6)
!3027 = !DILocation(line: 0, scope: !3024)
!3028 = !DILocalVariable(name: "do_not_copy", scope: !3024, file: !2892, line: 115, type: !6)
!3029 = !DILocalVariable(name: "col", scope: !3030, file: !2892, line: 116, type: !45)
!3030 = distinct !DILexicalBlock(scope: !3024, file: !2892, line: 116, column: 13)
!3031 = !DILocation(line: 0, scope: !3030)
!3032 = !DILocation(line: 116, column: 18, scope: !3030)
!3033 = !DILocation(line: 116, scope: !3030)
!3034 = !DILocation(line: 116, column: 35, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3030, file: !2892, line: 116, column: 13)
!3036 = !DILocation(line: 116, column: 13, scope: !3030)
!3037 = !DILocation(line: 118, column: 49, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3035, file: !2892, line: 116, column: 53)
!3039 = !DILocation(line: 118, column: 59, scope: !3038)
!3040 = !DILocation(line: 118, column: 36, scope: !3038)
!3041 = !DILocation(line: 118, column: 34, scope: !3038)
!3042 = !DILocation(line: 119, column: 32, scope: !3038)
!3043 = !DILocation(line: 119, column: 30, scope: !3038)
!3044 = !DILocation(line: 118, column: 67, scope: !3038)
!3045 = !DILocation(line: 117, column: 30, scope: !3038)
!3046 = !DILocation(line: 117, column: 40, scope: !3038)
!3047 = !DILocation(line: 117, column: 17, scope: !3038)
!3048 = !DILocation(line: 117, column: 47, scope: !3038)
!3049 = !DILocation(line: 116, column: 49, scope: !3035)
!3050 = !DILocation(line: 116, column: 13, scope: !3035)
!3051 = distinct !{!3051, !3036, !3052, !244}
!3052 = !DILocation(line: 120, column: 13, scope: !3030)
!3053 = !DILocation(line: 113, column: 80, scope: !3019)
!3054 = !DILocation(line: 113, column: 9, scope: !3019)
!3055 = distinct !{!3055, !3020, !3056, !244}
!3056 = !DILocation(line: 121, column: 9, scope: !3014)
!3057 = !DILocation(line: 124, scope: !3022)
!3058 = !DILocalVariable(name: "row", scope: !3022, file: !2892, line: 124, type: !45)
!3059 = !DILocation(line: 0, scope: !3022)
!3060 = !DILocation(line: 124, column: 51, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3022, file: !2892, line: 124, column: 9)
!3062 = !DILocation(line: 125, column: 46, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3061, file: !2892, line: 124, column: 67)
!3064 = !DILocalVariable(name: "below_pivot", scope: !3063, file: !2892, line: 125, type: !14)
!3065 = !DILocation(line: 0, scope: !3063)
!3066 = !DILocation(line: 126, column: 74, scope: !3063)
!3067 = !DILocation(line: 126, column: 68, scope: !3063)
!3068 = !DILocation(line: 126, column: 41, scope: !3063)
!3069 = !DILocalVariable(name: "elt_to_elim", scope: !3063, file: !2892, line: 126, type: !14)
!3070 = !DILocation(line: 128, column: 63, scope: !3063)
!3071 = !DILocation(line: 129, column: 52, scope: !3063)
!3072 = !DILocation(line: 129, column: 46, scope: !3063)
!3073 = !DILocation(line: 128, column: 13, scope: !3063)
!3074 = !DILocation(line: 124, column: 63, scope: !3061)
!3075 = !DILocation(line: 124, column: 9, scope: !3061)
!3076 = distinct !{!3076, !3021, !3077, !244}
!3077 = !DILocation(line: 130, column: 9, scope: !3022)
!3078 = !DILocation(line: 132, column: 19, scope: !2943)
!3079 = !DILocation(line: 77, column: 57, scope: !2939)
!3080 = !DILocation(line: 77, column: 5, scope: !2939)
!3081 = distinct !{!3081, !2922, !3082, !244}
!3082 = !DILocation(line: 133, column: 5, scope: !2923)
!3083 = !DILocation(line: 138, scope: !2941)
!3084 = !DILocalVariable(name: "i", scope: !2941, file: !2892, line: 138, type: !45)
!3085 = !DILocation(line: 0, scope: !2941)
!3086 = !DILocation(line: 138, column: 23, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !2941, file: !2892, line: 138, column: 5)
!3088 = !DILocation(line: 139, column: 47, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3087, file: !2892, line: 138, column: 37)
!3090 = !DILocation(line: 139, column: 43, scope: !3089)
!3091 = !DILocation(line: 139, column: 9, scope: !3089)
!3092 = !DILocalVariable(name: "j", scope: !3093, file: !2892, line: 140, type: !45)
!3093 = distinct !DILexicalBlock(scope: !3089, file: !2892, line: 140, column: 9)
!3094 = !DILocation(line: 0, scope: !3093)
!3095 = !DILocation(line: 140, column: 14, scope: !3093)
!3096 = !DILocation(line: 140, scope: !3093)
!3097 = !DILocation(line: 140, column: 27, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3093, file: !2892, line: 140, column: 9)
!3099 = !DILocation(line: 140, column: 9, scope: !3093)
!3100 = !DILocation(line: 141, column: 32, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3098, file: !2892, line: 140, column: 41)
!3102 = !DILocation(line: 141, column: 17, scope: !3101)
!3103 = !DILocation(line: 141, column: 13, scope: !3101)
!3104 = !DILocation(line: 141, column: 30, scope: !3101)
!3105 = !DILocation(line: 140, column: 37, scope: !3098)
!3106 = !DILocation(line: 140, column: 9, scope: !3098)
!3107 = distinct !{!3107, !3099, !3108, !244}
!3108 = !DILocation(line: 142, column: 9, scope: !3093)
!3109 = !DILocation(line: 138, column: 33, scope: !3087)
!3110 = !DILocation(line: 138, column: 5, scope: !3087)
!3111 = distinct !{!3111, !2940, !3112, !244}
!3112 = !DILocation(line: 143, column: 5, scope: !2941)
!3113 = !DILocation(line: 145, column: 5, scope: !2891)
!3114 = !DILocation(line: 146, column: 5, scope: !2891)
!3115 = !DILocation(line: 147, column: 5, scope: !2891)
!3116 = !DILocation(line: 148, column: 5, scope: !2891)
!3117 = !DILocation(line: 149, column: 1, scope: !2891)
!3118 = distinct !DISubprogram(name: "ct_compare_8", scope: !3119, file: !3119, line: 51, type: !1631, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3119 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3120 = !DILocalVariable(name: "a", arg: 1, scope: !3118, file: !3119, line: 51, type: !14)
!3121 = !DILocation(line: 0, scope: !3118)
!3122 = !DILocalVariable(name: "b", arg: 2, scope: !3118, file: !3119, line: 51, type: !14)
!3123 = !DILocation(line: 52, column: 42, scope: !3118)
!3124 = !DILocation(line: 52, column: 13, scope: !3118)
!3125 = !DILocation(line: 52, column: 71, scope: !3118)
!3126 = !DILocation(line: 52, column: 69, scope: !3118)
!3127 = !DILocation(line: 52, column: 5, scope: !3118)
!3128 = distinct !DISubprogram(name: "mul_fx8", scope: !595, file: !595, line: 28, type: !3129, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!6, !14, !6}
!3131 = !DILocalVariable(name: "a", arg: 1, scope: !3128, file: !595, line: 28, type: !14)
!3132 = !DILocation(line: 0, scope: !3128)
!3133 = !DILocalVariable(name: "b", arg: 2, scope: !3128, file: !595, line: 28, type: !6)
!3134 = !DILocation(line: 31, column: 13, scope: !3128)
!3135 = !DILocation(line: 31, column: 10, scope: !3128)
!3136 = !DILocation(line: 31, column: 17, scope: !3128)
!3137 = !DILocalVariable(name: "p", scope: !3128, file: !595, line: 30, type: !6)
!3138 = !DILocation(line: 32, column: 13, scope: !3128)
!3139 = !DILocation(line: 32, column: 10, scope: !3128)
!3140 = !DILocation(line: 32, column: 17, scope: !3128)
!3141 = !DILocation(line: 32, column: 7, scope: !3128)
!3142 = !DILocation(line: 33, column: 13, scope: !3128)
!3143 = !DILocation(line: 33, column: 10, scope: !3128)
!3144 = !DILocation(line: 33, column: 17, scope: !3128)
!3145 = !DILocation(line: 33, column: 7, scope: !3128)
!3146 = !DILocation(line: 34, column: 13, scope: !3128)
!3147 = !DILocation(line: 34, column: 10, scope: !3128)
!3148 = !DILocation(line: 34, column: 17, scope: !3128)
!3149 = !DILocation(line: 34, column: 7, scope: !3128)
!3150 = !DILocalVariable(name: "top_p", scope: !3128, file: !595, line: 37, type: !6)
!3151 = !DILocation(line: 38, column: 32, scope: !3128)
!3152 = !DILocation(line: 38, column: 47, scope: !3128)
!3153 = !DILocation(line: 38, column: 38, scope: !3128)
!3154 = !DILocation(line: 38, column: 54, scope: !3128)
!3155 = !DILocalVariable(name: "out", scope: !3128, file: !595, line: 38, type: !6)
!3156 = !DILocation(line: 39, column: 5, scope: !3128)
!3157 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2892, file: !2892, line: 24, type: !3158, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{null, !49, !5, !45}
!3160 = !DILocalVariable(name: "in", arg: 1, scope: !3157, file: !2892, line: 24, type: !49)
!3161 = !DILocation(line: 0, scope: !3157)
!3162 = !DILocalVariable(name: "out", arg: 2, scope: !3157, file: !2892, line: 24, type: !5)
!3163 = !DILocalVariable(name: "ncols", arg: 3, scope: !3157, file: !2892, line: 24, type: !45)
!3164 = !DILocalVariable(name: "out8", scope: !3157, file: !2892, line: 26, type: !18)
!3165 = !DILocalVariable(name: "i", scope: !3157, file: !2892, line: 25, type: !45)
!3166 = !DILocation(line: 27, column: 9, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3157, file: !2892, line: 27, column: 5)
!3168 = !DILocation(line: 27, scope: !3167)
!3169 = !DILocation(line: 27, column: 17, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3167, file: !2892, line: 27, column: 5)
!3171 = !DILocation(line: 27, column: 20, scope: !3170)
!3172 = !DILocation(line: 27, column: 5, scope: !3167)
!3173 = !DILocation(line: 31, column: 23, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3170, file: !2892, line: 27, column: 36)
!3175 = !DILocation(line: 31, column: 44, scope: !3174)
!3176 = !DILocation(line: 31, column: 40, scope: !3174)
!3177 = !DILocation(line: 31, column: 48, scope: !3174)
!3178 = !DILocation(line: 31, column: 37, scope: !3174)
!3179 = !DILocation(line: 31, column: 15, scope: !3174)
!3180 = !DILocation(line: 31, column: 9, scope: !3174)
!3181 = !DILocation(line: 31, column: 20, scope: !3174)
!3182 = !DILocation(line: 27, column: 31, scope: !3170)
!3183 = !DILocation(line: 27, column: 5, scope: !3170)
!3184 = distinct !{!3184, !3172, !3185, !244}
!3185 = !DILocation(line: 33, column: 5, scope: !3167)
!3186 = !DILocation(line: 34, column: 19, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3157, file: !2892, line: 34, column: 9)
!3188 = !DILocation(line: 38, column: 23, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3187, file: !2892, line: 34, column: 24)
!3190 = !DILocation(line: 38, column: 15, scope: !3189)
!3191 = !DILocation(line: 38, column: 9, scope: !3189)
!3192 = !DILocation(line: 38, column: 20, scope: !3189)
!3193 = !DILocation(line: 40, column: 5, scope: !3189)
!3194 = !DILocation(line: 41, column: 1, scope: !3157)
!3195 = distinct !DISubprogram(name: "ct_compare_64", scope: !3119, file: !3119, line: 46, type: !3196, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!6, !45, !45}
!3198 = !DILocalVariable(name: "a", arg: 1, scope: !3195, file: !3119, line: 46, type: !45)
!3199 = !DILocation(line: 0, scope: !3195)
!3200 = !DILocalVariable(name: "b", arg: 2, scope: !3195, file: !3119, line: 46, type: !45)
!3201 = !DILocation(line: 47, column: 38, scope: !3195)
!3202 = !DILocation(line: 47, column: 44, scope: !3195)
!3203 = !DILocation(line: 47, column: 73, scope: !3195)
!3204 = !DILocation(line: 47, column: 71, scope: !3195)
!3205 = !DILocation(line: 47, column: 5, scope: !3195)
!3206 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3119, file: !3119, line: 35, type: !3196, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3207 = !DILocalVariable(name: "a", arg: 1, scope: !3206, file: !3119, line: 35, type: !45)
!3208 = !DILocation(line: 0, scope: !3206)
!3209 = !DILocalVariable(name: "b", arg: 2, scope: !3206, file: !3119, line: 35, type: !45)
!3210 = !DILocalVariable(name: "diff", scope: !3206, file: !3119, line: 36, type: !46)
!3211 = !DILocation(line: 37, column: 30, scope: !3206)
!3212 = !DILocation(line: 37, column: 59, scope: !3206)
!3213 = !DILocation(line: 37, column: 57, scope: !3206)
!3214 = !DILocation(line: 37, column: 5, scope: !3206)
!3215 = distinct !DISubprogram(name: "m_extract_element", scope: !2892, file: !2892, line: 16, type: !3216, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!14, !428, !45}
!3218 = !DILocalVariable(name: "in", arg: 1, scope: !3215, file: !2892, line: 16, type: !428)
!3219 = !DILocation(line: 0, scope: !3215)
!3220 = !DILocalVariable(name: "index", arg: 2, scope: !3215, file: !2892, line: 16, type: !45)
!3221 = !DILocation(line: 17, column: 27, scope: !3215)
!3222 = !DILocalVariable(name: "leg", scope: !3215, file: !2892, line: 17, type: !343)
!3223 = !DILocation(line: 18, column: 30, scope: !3215)
!3224 = !DILocalVariable(name: "offset", scope: !3215, file: !2892, line: 18, type: !343)
!3225 = !DILocation(line: 20, column: 13, scope: !3215)
!3226 = !DILocation(line: 20, column: 31, scope: !3215)
!3227 = !DILocation(line: 20, column: 21, scope: !3215)
!3228 = !DILocation(line: 20, column: 12, scope: !3215)
!3229 = !DILocation(line: 20, column: 5, scope: !3215)
!3230 = distinct !DISubprogram(name: "inverse_f", scope: !595, file: !595, line: 57, type: !3231, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!14, !14}
!3233 = !DILocalVariable(name: "a", arg: 1, scope: !3230, file: !595, line: 57, type: !14)
!3234 = !DILocation(line: 0, scope: !3230)
!3235 = !DILocation(line: 61, column: 24, scope: !3230)
!3236 = !DILocalVariable(name: "a2", scope: !3230, file: !595, line: 61, type: !14)
!3237 = !DILocation(line: 62, column: 24, scope: !3230)
!3238 = !DILocalVariable(name: "a4", scope: !3230, file: !595, line: 62, type: !14)
!3239 = !DILocation(line: 63, column: 24, scope: !3230)
!3240 = !DILocalVariable(name: "a8", scope: !3230, file: !595, line: 63, type: !14)
!3241 = !DILocation(line: 64, column: 24, scope: !3230)
!3242 = !DILocalVariable(name: "a6", scope: !3230, file: !595, line: 64, type: !14)
!3243 = !DILocation(line: 65, column: 25, scope: !3230)
!3244 = !DILocalVariable(name: "a14", scope: !3230, file: !595, line: 65, type: !14)
!3245 = !DILocation(line: 67, column: 5, scope: !3230)
!3246 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3119, file: !3119, line: 94, type: !3247, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{null, !343, !428, !14, !5}
!3249 = !DILocalVariable(name: "legs", arg: 1, scope: !3246, file: !3119, line: 94, type: !343)
!3250 = !DILocation(line: 0, scope: !3246)
!3251 = !DILocalVariable(name: "in", arg: 2, scope: !3246, file: !3119, line: 94, type: !428)
!3252 = !DILocalVariable(name: "a", arg: 3, scope: !3246, file: !3119, line: 94, type: !14)
!3253 = !DILocalVariable(name: "acc", arg: 4, scope: !3246, file: !3119, line: 94, type: !5)
!3254 = !DILocation(line: 95, column: 20, scope: !3246)
!3255 = !DILocalVariable(name: "tab", scope: !3246, file: !3119, line: 95, type: !19)
!3256 = !DILocalVariable(name: "lsb_ask", scope: !3246, file: !3119, line: 97, type: !6)
!3257 = !DILocalVariable(name: "i", scope: !3258, file: !3119, line: 99, type: !45)
!3258 = distinct !DILexicalBlock(scope: !3246, file: !3119, line: 99, column: 5)
!3259 = !DILocation(line: 0, scope: !3258)
!3260 = !DILocation(line: 99, column: 9, scope: !3258)
!3261 = !DILocation(line: 99, scope: !3258)
!3262 = !DILocation(line: 99, column: 20, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3258, file: !3119, line: 99, column: 5)
!3264 = !DILocation(line: 99, column: 5, scope: !3258)
!3265 = !DILocation(line: 100, column: 21, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3263, file: !3119, line: 99, column: 32)
!3267 = !DILocation(line: 100, column: 33, scope: !3266)
!3268 = !DILocation(line: 100, column: 51, scope: !3266)
!3269 = !DILocation(line: 100, column: 46, scope: !3266)
!3270 = !DILocation(line: 100, column: 44, scope: !3266)
!3271 = !DILocation(line: 101, column: 27, scope: !3266)
!3272 = !DILocation(line: 101, column: 33, scope: !3266)
!3273 = !DILocation(line: 101, column: 52, scope: !3266)
!3274 = !DILocation(line: 101, column: 59, scope: !3266)
!3275 = !DILocation(line: 101, column: 46, scope: !3266)
!3276 = !DILocation(line: 101, column: 44, scope: !3266)
!3277 = !DILocation(line: 101, column: 17, scope: !3266)
!3278 = !DILocation(line: 102, column: 21, scope: !3266)
!3279 = !DILocation(line: 102, column: 27, scope: !3266)
!3280 = !DILocation(line: 102, column: 33, scope: !3266)
!3281 = !DILocation(line: 102, column: 52, scope: !3266)
!3282 = !DILocation(line: 102, column: 59, scope: !3266)
!3283 = !DILocation(line: 102, column: 46, scope: !3266)
!3284 = !DILocation(line: 102, column: 44, scope: !3266)
!3285 = !DILocation(line: 102, column: 17, scope: !3266)
!3286 = !DILocation(line: 103, column: 21, scope: !3266)
!3287 = !DILocation(line: 103, column: 27, scope: !3266)
!3288 = !DILocation(line: 103, column: 33, scope: !3266)
!3289 = !DILocation(line: 103, column: 52, scope: !3266)
!3290 = !DILocation(line: 103, column: 59, scope: !3266)
!3291 = !DILocation(line: 103, column: 46, scope: !3266)
!3292 = !DILocation(line: 103, column: 44, scope: !3266)
!3293 = !DILocation(line: 103, column: 17, scope: !3266)
!3294 = !DILocation(line: 100, column: 9, scope: !3266)
!3295 = !DILocation(line: 100, column: 16, scope: !3266)
!3296 = !DILocation(line: 99, column: 29, scope: !3263)
!3297 = !DILocation(line: 99, column: 5, scope: !3263)
!3298 = distinct !{!3298, !3264, !3299, !244}
!3299 = !DILocation(line: 104, column: 5, scope: !3258)
!3300 = !DILocation(line: 105, column: 1, scope: !3246)
!3301 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2892, file: !2892, line: 44, type: !3302, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{null, !45, !428, !18}
!3304 = !DILocalVariable(name: "legs", arg: 1, scope: !3301, file: !2892, line: 44, type: !45)
!3305 = !DILocation(line: 0, scope: !3301)
!3306 = !DILocalVariable(name: "in", arg: 2, scope: !3301, file: !2892, line: 44, type: !428)
!3307 = !DILocalVariable(name: "out", arg: 3, scope: !3301, file: !2892, line: 44, type: !18)
!3308 = !DILocalVariable(name: "in8", scope: !3301, file: !2892, line: 45, type: !49)
!3309 = !DILocalVariable(name: "i", scope: !3310, file: !2892, line: 46, type: !45)
!3310 = distinct !DILexicalBlock(scope: !3301, file: !2892, line: 46, column: 5)
!3311 = !DILocation(line: 0, scope: !3310)
!3312 = !DILocation(line: 46, column: 9, scope: !3310)
!3313 = !DILocation(line: 46, scope: !3310)
!3314 = !DILocation(line: 46, column: 29, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3310, file: !2892, line: 46, column: 5)
!3316 = !DILocation(line: 46, column: 22, scope: !3315)
!3317 = !DILocation(line: 46, column: 5, scope: !3310)
!3318 = !DILocation(line: 51, column: 26, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3315, file: !2892, line: 46, column: 42)
!3320 = !DILocation(line: 51, column: 21, scope: !3319)
!3321 = !DILocation(line: 51, column: 31, scope: !3319)
!3322 = !DILocation(line: 51, column: 9, scope: !3319)
!3323 = !DILocation(line: 51, column: 18, scope: !3319)
!3324 = !DILocation(line: 52, column: 26, scope: !3319)
!3325 = !DILocation(line: 52, column: 21, scope: !3319)
!3326 = !DILocation(line: 52, column: 30, scope: !3319)
!3327 = !DILocation(line: 52, column: 14, scope: !3319)
!3328 = !DILocation(line: 52, column: 9, scope: !3319)
!3329 = !DILocation(line: 52, column: 18, scope: !3319)
!3330 = !DILocation(line: 46, column: 37, scope: !3315)
!3331 = !DILocation(line: 46, column: 5, scope: !3315)
!3332 = distinct !{!3332, !3317, !3333, !244}
!3333 = !DILocation(line: 54, column: 5, scope: !3310)
!3334 = !DILocation(line: 55, column: 1, scope: !3301)
!3335 = distinct !DISubprogram(name: "mul_table", scope: !595, file: !595, line: 129, type: !596, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3336 = !DILocalVariable(name: "b", arg: 1, scope: !3335, file: !595, line: 129, type: !12)
!3337 = !DILocation(line: 0, scope: !3335)
!3338 = !DILocation(line: 130, column: 19, scope: !3335)
!3339 = !DILocation(line: 130, column: 33, scope: !3335)
!3340 = !DILocalVariable(name: "x", scope: !3335, file: !595, line: 130, type: !19)
!3341 = !DILocalVariable(name: "high_nibble_mask", scope: !3335, file: !595, line: 132, type: !19)
!3342 = !DILocation(line: 134, column: 28, scope: !3335)
!3343 = !DILocalVariable(name: "high_half", scope: !3335, file: !595, line: 134, type: !19)
!3344 = !DILocation(line: 135, column: 28, scope: !3335)
!3345 = !DILocation(line: 135, column: 47, scope: !3335)
!3346 = !DILocation(line: 135, column: 34, scope: !3335)
!3347 = !DILocation(line: 135, column: 5, scope: !3335)
!3348 = distinct !DISubprogram(name: "mul_f", scope: !595, file: !595, line: 9, type: !1631, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3349 = !DILocalVariable(name: "a", arg: 1, scope: !3348, file: !595, line: 9, type: !14)
!3350 = !DILocation(line: 0, scope: !3348)
!3351 = !DILocalVariable(name: "b", arg: 2, scope: !3348, file: !595, line: 9, type: !14)
!3352 = !DILocation(line: 14, column: 10, scope: !3348)
!3353 = !DILocation(line: 14, column: 7, scope: !3348)
!3354 = !DILocation(line: 17, column: 17, scope: !3348)
!3355 = !DILocalVariable(name: "p", scope: !3348, file: !595, line: 11, type: !14)
!3356 = !DILocation(line: 18, column: 13, scope: !3348)
!3357 = !DILocation(line: 18, column: 17, scope: !3348)
!3358 = !DILocation(line: 18, column: 7, scope: !3348)
!3359 = !DILocation(line: 19, column: 13, scope: !3348)
!3360 = !DILocation(line: 19, column: 17, scope: !3348)
!3361 = !DILocation(line: 19, column: 7, scope: !3348)
!3362 = !DILocation(line: 20, column: 13, scope: !3348)
!3363 = !DILocation(line: 20, column: 17, scope: !3348)
!3364 = !DILocation(line: 20, column: 7, scope: !3348)
!3365 = !DILocalVariable(name: "top_p", scope: !3348, file: !595, line: 23, type: !14)
!3366 = !DILocation(line: 24, column: 37, scope: !3348)
!3367 = !DILocation(line: 24, column: 52, scope: !3348)
!3368 = !DILocation(line: 24, column: 43, scope: !3348)
!3369 = !DILocation(line: 24, column: 59, scope: !3348)
!3370 = !DILocalVariable(name: "out", scope: !3348, file: !595, line: 24, type: !14)
!3371 = !DILocation(line: 25, column: 5, scope: !3348)
!3372 = distinct !DISubprogram(name: "lincomb", scope: !595, file: !595, line: 70, type: !1639, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3373 = !DILocalVariable(name: "a", arg: 1, scope: !3372, file: !595, line: 70, type: !49)
!3374 = !DILocation(line: 0, scope: !3372)
!3375 = !DILocalVariable(name: "b", arg: 2, scope: !3372, file: !595, line: 71, type: !49)
!3376 = !DILocalVariable(name: "n", arg: 3, scope: !3372, file: !595, line: 71, type: !45)
!3377 = !DILocalVariable(name: "m", arg: 4, scope: !3372, file: !595, line: 71, type: !45)
!3378 = !DILocalVariable(name: "ret", scope: !3372, file: !595, line: 72, type: !14)
!3379 = !DILocalVariable(name: "i", scope: !3380, file: !595, line: 73, type: !45)
!3380 = distinct !DILexicalBlock(scope: !3372, file: !595, line: 73, column: 5)
!3381 = !DILocation(line: 0, scope: !3380)
!3382 = !DILocation(line: 73, column: 10, scope: !3380)
!3383 = !DILocation(line: 73, scope: !3380)
!3384 = !DILocation(line: 73, column: 23, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3380, file: !595, line: 73, column: 5)
!3386 = !DILocation(line: 73, column: 5, scope: !3380)
!3387 = !DILocation(line: 74, column: 27, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3385, file: !595, line: 73, column: 41)
!3389 = !DILocation(line: 74, column: 33, scope: !3388)
!3390 = !DILocation(line: 74, column: 21, scope: !3388)
!3391 = !DILocation(line: 74, column: 15, scope: !3388)
!3392 = !DILocation(line: 73, column: 28, scope: !3385)
!3393 = !DILocation(line: 73, column: 35, scope: !3385)
!3394 = !DILocation(line: 73, column: 5, scope: !3385)
!3395 = distinct !{!3395, !3386, !3396, !244}
!3396 = !DILocation(line: 75, column: 5, scope: !3380)
!3397 = !DILocation(line: 76, column: 5, scope: !3372)
!3398 = distinct !DISubprogram(name: "add_f", scope: !595, file: !595, line: 43, type: !1631, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3399 = !DILocalVariable(name: "a", arg: 1, scope: !3398, file: !595, line: 43, type: !14)
!3400 = !DILocation(line: 0, scope: !3398)
!3401 = !DILocalVariable(name: "b", arg: 2, scope: !3398, file: !595, line: 43, type: !14)
!3402 = !DILocation(line: 44, column: 14, scope: !3398)
!3403 = !DILocation(line: 44, column: 5, scope: !3398)
!3404 = distinct !DISubprogram(name: "shake128_inc_init", scope: !71, file: !71, line: 688, type: !3405, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{null, !3407}
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 32)
!3408 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128incctx", file: !71, line: 31, baseType: !3409)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 29, size: 32, elements: !3410)
!3410 = !{!3411}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3409, file: !71, line: 30, baseType: !5, size: 32)
!3412 = !DILocalVariable(name: "state", arg: 1, scope: !3404, file: !71, line: 688, type: !3407)
!3413 = !DILocation(line: 0, scope: !3404)
!3414 = !DILocation(line: 689, column: 18, scope: !3404)
!3415 = !DILocation(line: 689, column: 16, scope: !3404)
!3416 = !DILocation(line: 690, column: 20, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3404, file: !71, line: 690, column: 9)
!3418 = !DILocation(line: 691, column: 9, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3417, file: !71, line: 690, column: 29)
!3420 = !DILocation(line: 692, column: 5, scope: !3419)
!3421 = !DILocation(line: 693, column: 28, scope: !3404)
!3422 = !DILocation(line: 693, column: 5, scope: !3404)
!3423 = !DILocation(line: 694, column: 1, scope: !3404)
!3424 = distinct !DISubprogram(name: "keccak_inc_init", scope: !71, file: !71, line: 580, type: !26, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3425 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3424, file: !71, line: 580, type: !5)
!3426 = !DILocation(line: 0, scope: !3424)
!3427 = !DILocalVariable(name: "i", scope: !3424, file: !71, line: 581, type: !15)
!3428 = !DILocation(line: 583, column: 10, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3424, file: !71, line: 583, column: 5)
!3430 = !DILocation(line: 583, scope: !3429)
!3431 = !DILocation(line: 583, column: 19, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3429, file: !71, line: 583, column: 5)
!3433 = !DILocation(line: 583, column: 5, scope: !3429)
!3434 = !DILocation(line: 584, column: 9, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3432, file: !71, line: 583, column: 30)
!3436 = !DILocation(line: 584, column: 18, scope: !3435)
!3437 = !DILocation(line: 583, column: 25, scope: !3432)
!3438 = !DILocation(line: 583, column: 5, scope: !3432)
!3439 = distinct !{!3439, !3433, !3440, !244}
!3440 = !DILocation(line: 585, column: 5, scope: !3429)
!3441 = !DILocation(line: 586, column: 5, scope: !3424)
!3442 = !DILocation(line: 586, column: 15, scope: !3424)
!3443 = !DILocation(line: 587, column: 1, scope: !3424)
!3444 = distinct !DISubprogram(name: "shake128_inc_absorb", scope: !71, file: !71, line: 696, type: !3445, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{null, !3407, !257, !15}
!3447 = !DILocalVariable(name: "state", arg: 1, scope: !3444, file: !71, line: 696, type: !3407)
!3448 = !DILocation(line: 0, scope: !3444)
!3449 = !DILocalVariable(name: "input", arg: 2, scope: !3444, file: !71, line: 696, type: !257)
!3450 = !DILocalVariable(name: "inlen", arg: 3, scope: !3444, file: !71, line: 696, type: !15)
!3451 = !DILocation(line: 697, column: 30, scope: !3444)
!3452 = !DILocation(line: 697, column: 5, scope: !3444)
!3453 = !DILocation(line: 698, column: 1, scope: !3444)
!3454 = distinct !DISubprogram(name: "keccak_inc_absorb", scope: !71, file: !71, line: 603, type: !3455, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{null, !5, !19, !257, !15}
!3457 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3454, file: !71, line: 603, type: !5)
!3458 = !DILocation(line: 0, scope: !3454)
!3459 = !DILocalVariable(name: "r", arg: 2, scope: !3454, file: !71, line: 603, type: !19)
!3460 = !DILocalVariable(name: "m", arg: 3, scope: !3454, file: !71, line: 603, type: !257)
!3461 = !DILocalVariable(name: "mlen", arg: 4, scope: !3454, file: !71, line: 604, type: !15)
!3462 = !DILocation(line: 608, column: 5, scope: !3454)
!3463 = !DILocation(line: 608, column: 12, scope: !3454)
!3464 = !DILocation(line: 608, column: 19, scope: !3454)
!3465 = !DILocation(line: 608, column: 17, scope: !3454)
!3466 = !DILocation(line: 608, column: 32, scope: !3454)
!3467 = !DILocation(line: 608, column: 29, scope: !3454)
!3468 = !DILocation(line: 609, column: 9, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3470, file: !71, line: 609, column: 9)
!3470 = distinct !DILexicalBlock(scope: !3454, file: !71, line: 608, column: 35)
!3471 = !DILocation(line: 621, column: 5, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3454, file: !71, line: 621, column: 5)
!3473 = !DILocation(line: 609, scope: !3469)
!3474 = !DILocalVariable(name: "i", scope: !3454, file: !71, line: 605, type: !15)
!3475 = !DILocation(line: 609, column: 39, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3469, file: !71, line: 609, column: 9)
!3477 = !DILocation(line: 609, column: 29, scope: !3476)
!3478 = !DILocation(line: 609, column: 27, scope: !3476)
!3479 = !DILocation(line: 609, column: 23, scope: !3476)
!3480 = !DILocation(line: 612, column: 54, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3476, file: !71, line: 609, column: 55)
!3482 = !DILocation(line: 612, column: 44, scope: !3481)
!3483 = !DILocation(line: 612, column: 69, scope: !3481)
!3484 = !DILocation(line: 612, column: 81, scope: !3481)
!3485 = !DILocation(line: 612, column: 79, scope: !3481)
!3486 = !DILocation(line: 612, column: 65, scope: !3481)
!3487 = !DILocation(line: 612, column: 59, scope: !3481)
!3488 = !DILocation(line: 612, column: 20, scope: !3481)
!3489 = !DILocation(line: 612, column: 32, scope: !3481)
!3490 = !DILocation(line: 612, column: 30, scope: !3481)
!3491 = !DILocation(line: 612, column: 35, scope: !3481)
!3492 = !DILocation(line: 612, column: 13, scope: !3481)
!3493 = !DILocation(line: 612, column: 41, scope: !3481)
!3494 = !DILocation(line: 609, column: 51, scope: !3476)
!3495 = !DILocation(line: 609, column: 9, scope: !3476)
!3496 = distinct !{!3496, !3468, !3497, !244}
!3497 = !DILocation(line: 613, column: 9, scope: !3469)
!3498 = !DILocation(line: 614, column: 30, scope: !3470)
!3499 = !DILocation(line: 614, column: 17, scope: !3470)
!3500 = !DILocation(line: 614, column: 14, scope: !3470)
!3501 = !DILocation(line: 615, column: 11, scope: !3470)
!3502 = !DILocation(line: 616, column: 9, scope: !3470)
!3503 = !DILocation(line: 616, column: 19, scope: !3470)
!3504 = !DILocation(line: 618, column: 9, scope: !3470)
!3505 = distinct !{!3505, !3462, !3506, !244}
!3506 = !DILocation(line: 619, column: 5, scope: !3454)
!3507 = !DILocation(line: 621, scope: !3472)
!3508 = !DILocation(line: 621, column: 19, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3472, file: !71, line: 621, column: 5)
!3510 = !DILocation(line: 622, column: 50, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3509, file: !71, line: 621, column: 32)
!3512 = !DILocation(line: 622, column: 40, scope: !3511)
!3513 = !DILocation(line: 622, column: 65, scope: !3511)
!3514 = !DILocation(line: 622, column: 77, scope: !3511)
!3515 = !DILocation(line: 622, column: 75, scope: !3511)
!3516 = !DILocation(line: 622, column: 61, scope: !3511)
!3517 = !DILocation(line: 622, column: 55, scope: !3511)
!3518 = !DILocation(line: 622, column: 16, scope: !3511)
!3519 = !DILocation(line: 622, column: 28, scope: !3511)
!3520 = !DILocation(line: 622, column: 26, scope: !3511)
!3521 = !DILocation(line: 622, column: 31, scope: !3511)
!3522 = !DILocation(line: 622, column: 9, scope: !3511)
!3523 = !DILocation(line: 622, column: 37, scope: !3511)
!3524 = !DILocation(line: 621, column: 28, scope: !3509)
!3525 = !DILocation(line: 621, column: 5, scope: !3509)
!3526 = distinct !{!3526, !3471, !3527, !244}
!3527 = !DILocation(line: 623, column: 5, scope: !3472)
!3528 = !DILocation(line: 624, column: 18, scope: !3454)
!3529 = !DILocation(line: 624, column: 5, scope: !3454)
!3530 = !DILocation(line: 624, column: 15, scope: !3454)
!3531 = !DILocation(line: 625, column: 1, scope: !3454)
!3532 = distinct !DISubprogram(name: "KeccakF1600_StatePermute", scope: !71, file: !71, line: 236, type: !26, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3533 = !DILocalVariable(name: "state", arg: 1, scope: !3532, file: !71, line: 236, type: !5)
!3534 = !DILocation(line: 0, scope: !3532)
!3535 = !DILocation(line: 253, column: 11, scope: !3532)
!3536 = !DILocalVariable(name: "Aba", scope: !3532, file: !71, line: 239, type: !6)
!3537 = !DILocation(line: 254, column: 11, scope: !3532)
!3538 = !DILocalVariable(name: "Abe", scope: !3532, file: !71, line: 239, type: !6)
!3539 = !DILocation(line: 255, column: 11, scope: !3532)
!3540 = !DILocalVariable(name: "Abi", scope: !3532, file: !71, line: 239, type: !6)
!3541 = !DILocation(line: 256, column: 11, scope: !3532)
!3542 = !DILocalVariable(name: "Abo", scope: !3532, file: !71, line: 239, type: !6)
!3543 = !DILocation(line: 257, column: 11, scope: !3532)
!3544 = !DILocalVariable(name: "Abu", scope: !3532, file: !71, line: 239, type: !6)
!3545 = !DILocation(line: 258, column: 11, scope: !3532)
!3546 = !DILocalVariable(name: "Aga", scope: !3532, file: !71, line: 240, type: !6)
!3547 = !DILocation(line: 259, column: 11, scope: !3532)
!3548 = !DILocalVariable(name: "Age", scope: !3532, file: !71, line: 240, type: !6)
!3549 = !DILocation(line: 260, column: 11, scope: !3532)
!3550 = !DILocalVariable(name: "Agi", scope: !3532, file: !71, line: 240, type: !6)
!3551 = !DILocation(line: 261, column: 11, scope: !3532)
!3552 = !DILocalVariable(name: "Ago", scope: !3532, file: !71, line: 240, type: !6)
!3553 = !DILocation(line: 262, column: 11, scope: !3532)
!3554 = !DILocalVariable(name: "Agu", scope: !3532, file: !71, line: 240, type: !6)
!3555 = !DILocation(line: 263, column: 11, scope: !3532)
!3556 = !DILocalVariable(name: "Aka", scope: !3532, file: !71, line: 241, type: !6)
!3557 = !DILocation(line: 264, column: 11, scope: !3532)
!3558 = !DILocalVariable(name: "Ake", scope: !3532, file: !71, line: 241, type: !6)
!3559 = !DILocation(line: 265, column: 11, scope: !3532)
!3560 = !DILocalVariable(name: "Aki", scope: !3532, file: !71, line: 241, type: !6)
!3561 = !DILocation(line: 266, column: 11, scope: !3532)
!3562 = !DILocalVariable(name: "Ako", scope: !3532, file: !71, line: 241, type: !6)
!3563 = !DILocation(line: 267, column: 11, scope: !3532)
!3564 = !DILocalVariable(name: "Aku", scope: !3532, file: !71, line: 241, type: !6)
!3565 = !DILocation(line: 268, column: 11, scope: !3532)
!3566 = !DILocalVariable(name: "Ama", scope: !3532, file: !71, line: 242, type: !6)
!3567 = !DILocation(line: 269, column: 11, scope: !3532)
!3568 = !DILocalVariable(name: "Ame", scope: !3532, file: !71, line: 242, type: !6)
!3569 = !DILocation(line: 270, column: 11, scope: !3532)
!3570 = !DILocalVariable(name: "Ami", scope: !3532, file: !71, line: 242, type: !6)
!3571 = !DILocation(line: 271, column: 11, scope: !3532)
!3572 = !DILocalVariable(name: "Amo", scope: !3532, file: !71, line: 242, type: !6)
!3573 = !DILocation(line: 272, column: 11, scope: !3532)
!3574 = !DILocalVariable(name: "Amu", scope: !3532, file: !71, line: 242, type: !6)
!3575 = !DILocation(line: 273, column: 11, scope: !3532)
!3576 = !DILocalVariable(name: "Asa", scope: !3532, file: !71, line: 243, type: !6)
!3577 = !DILocation(line: 274, column: 11, scope: !3532)
!3578 = !DILocalVariable(name: "Ase", scope: !3532, file: !71, line: 243, type: !6)
!3579 = !DILocation(line: 275, column: 11, scope: !3532)
!3580 = !DILocalVariable(name: "Asi", scope: !3532, file: !71, line: 243, type: !6)
!3581 = !DILocation(line: 276, column: 11, scope: !3532)
!3582 = !DILocalVariable(name: "Aso", scope: !3532, file: !71, line: 243, type: !6)
!3583 = !DILocation(line: 277, column: 11, scope: !3532)
!3584 = !DILocalVariable(name: "Asu", scope: !3532, file: !71, line: 243, type: !6)
!3585 = !DILocalVariable(name: "round", scope: !3532, file: !71, line: 237, type: !45)
!3586 = !DILocation(line: 279, column: 10, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3532, file: !71, line: 279, column: 5)
!3588 = !DILocation(line: 279, scope: !3587)
!3589 = !DILocation(line: 279, column: 27, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3587, file: !71, line: 279, column: 5)
!3591 = !DILocation(line: 279, column: 5, scope: !3587)
!3592 = !DILocalVariable(name: "BCa", scope: !3532, file: !71, line: 244, type: !6)
!3593 = !DILocalVariable(name: "BCe", scope: !3532, file: !71, line: 244, type: !6)
!3594 = !DILocalVariable(name: "BCi", scope: !3532, file: !71, line: 244, type: !6)
!3595 = !DILocalVariable(name: "BCo", scope: !3532, file: !71, line: 244, type: !6)
!3596 = !DILocalVariable(name: "BCu", scope: !3532, file: !71, line: 244, type: !6)
!3597 = !DILocalVariable(name: "Da", scope: !3532, file: !71, line: 245, type: !6)
!3598 = !DILocalVariable(name: "De", scope: !3532, file: !71, line: 245, type: !6)
!3599 = !DILocalVariable(name: "Di", scope: !3532, file: !71, line: 245, type: !6)
!3600 = !DILocalVariable(name: "Do", scope: !3532, file: !71, line: 245, type: !6)
!3601 = !DILocalVariable(name: "Du", scope: !3532, file: !71, line: 245, type: !6)
!3602 = !DILocalVariable(name: "Eba", scope: !3532, file: !71, line: 246, type: !6)
!3603 = !DILocalVariable(name: "Ebe", scope: !3532, file: !71, line: 246, type: !6)
!3604 = !DILocalVariable(name: "Ebi", scope: !3532, file: !71, line: 246, type: !6)
!3605 = !DILocalVariable(name: "Ebo", scope: !3532, file: !71, line: 246, type: !6)
!3606 = !DILocalVariable(name: "Ebu", scope: !3532, file: !71, line: 246, type: !6)
!3607 = !DILocalVariable(name: "Ega", scope: !3532, file: !71, line: 247, type: !6)
!3608 = !DILocalVariable(name: "Ege", scope: !3532, file: !71, line: 247, type: !6)
!3609 = !DILocalVariable(name: "Egi", scope: !3532, file: !71, line: 247, type: !6)
!3610 = !DILocalVariable(name: "Ego", scope: !3532, file: !71, line: 247, type: !6)
!3611 = !DILocalVariable(name: "Egu", scope: !3532, file: !71, line: 247, type: !6)
!3612 = !DILocalVariable(name: "Eka", scope: !3532, file: !71, line: 248, type: !6)
!3613 = !DILocalVariable(name: "Eke", scope: !3532, file: !71, line: 248, type: !6)
!3614 = !DILocalVariable(name: "Eki", scope: !3532, file: !71, line: 248, type: !6)
!3615 = !DILocalVariable(name: "Eko", scope: !3532, file: !71, line: 248, type: !6)
!3616 = !DILocalVariable(name: "Eku", scope: !3532, file: !71, line: 248, type: !6)
!3617 = !DILocalVariable(name: "Ema", scope: !3532, file: !71, line: 249, type: !6)
!3618 = !DILocalVariable(name: "Eme", scope: !3532, file: !71, line: 249, type: !6)
!3619 = !DILocalVariable(name: "Emi", scope: !3532, file: !71, line: 249, type: !6)
!3620 = !DILocalVariable(name: "Emo", scope: !3532, file: !71, line: 249, type: !6)
!3621 = !DILocalVariable(name: "Emu", scope: !3532, file: !71, line: 249, type: !6)
!3622 = !DILocalVariable(name: "Esa", scope: !3532, file: !71, line: 250, type: !6)
!3623 = !DILocalVariable(name: "Ese", scope: !3532, file: !71, line: 250, type: !6)
!3624 = !DILocalVariable(name: "Esi", scope: !3532, file: !71, line: 250, type: !6)
!3625 = !DILocalVariable(name: "Eso", scope: !3532, file: !71, line: 250, type: !6)
!3626 = !DILocalVariable(name: "Esu", scope: !3532, file: !71, line: 250, type: !6)
!3627 = !DILocation(line: 283, column: 19, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3590, file: !71, line: 279, column: 50)
!3629 = !DILocation(line: 283, column: 25, scope: !3628)
!3630 = !DILocation(line: 283, column: 31, scope: !3628)
!3631 = !DILocation(line: 283, column: 37, scope: !3628)
!3632 = !DILocation(line: 285, column: 19, scope: !3628)
!3633 = !DILocation(line: 285, column: 25, scope: !3628)
!3634 = !DILocation(line: 285, column: 31, scope: !3628)
!3635 = !DILocation(line: 285, column: 37, scope: !3628)
!3636 = !DILocation(line: 291, column: 20, scope: !3628)
!3637 = !DILocation(line: 291, column: 18, scope: !3628)
!3638 = !DILocation(line: 361, column: 13, scope: !3628)
!3639 = !DILocation(line: 362, column: 15, scope: !3628)
!3640 = !DILocation(line: 282, column: 19, scope: !3628)
!3641 = !DILocation(line: 282, column: 25, scope: !3628)
!3642 = !DILocation(line: 282, column: 31, scope: !3628)
!3643 = !DILocation(line: 282, column: 37, scope: !3628)
!3644 = !DILocation(line: 288, column: 20, scope: !3628)
!3645 = !DILocation(line: 288, column: 18, scope: !3628)
!3646 = !DILocation(line: 365, column: 13, scope: !3628)
!3647 = !DILocation(line: 366, column: 15, scope: !3628)
!3648 = !DILocation(line: 284, column: 19, scope: !3628)
!3649 = !DILocation(line: 284, column: 25, scope: !3628)
!3650 = !DILocation(line: 284, column: 31, scope: !3628)
!3651 = !DILocation(line: 284, column: 37, scope: !3628)
!3652 = !DILocation(line: 281, column: 19, scope: !3628)
!3653 = !DILocation(line: 281, column: 25, scope: !3628)
!3654 = !DILocation(line: 281, column: 31, scope: !3628)
!3655 = !DILocation(line: 281, column: 37, scope: !3628)
!3656 = !DILocation(line: 292, column: 20, scope: !3628)
!3657 = !DILocation(line: 292, column: 18, scope: !3628)
!3658 = !DILocation(line: 363, column: 13, scope: !3628)
!3659 = !DILocation(line: 364, column: 15, scope: !3628)
!3660 = !DILocation(line: 370, column: 23, scope: !3628)
!3661 = !DILocation(line: 370, column: 29, scope: !3628)
!3662 = !DILocation(line: 370, column: 19, scope: !3628)
!3663 = !DILocation(line: 290, column: 20, scope: !3628)
!3664 = !DILocation(line: 290, column: 18, scope: !3628)
!3665 = !DILocation(line: 298, column: 13, scope: !3628)
!3666 = !DILocation(line: 299, column: 15, scope: !3628)
!3667 = !DILocation(line: 289, column: 20, scope: !3628)
!3668 = !DILocation(line: 289, column: 18, scope: !3628)
!3669 = !DILocation(line: 296, column: 13, scope: !3628)
!3670 = !DILocation(line: 297, column: 15, scope: !3628)
!3671 = !DILocation(line: 304, column: 23, scope: !3628)
!3672 = !DILocation(line: 304, column: 29, scope: !3628)
!3673 = !DILocation(line: 305, column: 16, scope: !3628)
!3674 = !DILocation(line: 305, column: 13, scope: !3628)
!3675 = !DILocation(line: 294, column: 13, scope: !3628)
!3676 = !DILocation(line: 311, column: 13, scope: !3628)
!3677 = !DILocation(line: 312, column: 15, scope: !3628)
!3678 = !DILocation(line: 315, column: 13, scope: !3628)
!3679 = !DILocation(line: 316, column: 15, scope: !3628)
!3680 = !DILocation(line: 313, column: 13, scope: !3628)
!3681 = !DILocation(line: 314, column: 15, scope: !3628)
!3682 = !DILocation(line: 321, column: 23, scope: !3628)
!3683 = !DILocation(line: 321, column: 29, scope: !3628)
!3684 = !DILocation(line: 321, column: 19, scope: !3628)
!3685 = !DILocation(line: 376, column: 19, scope: !3628)
!3686 = !DILocation(line: 327, column: 13, scope: !3628)
!3687 = !DILocation(line: 328, column: 15, scope: !3628)
!3688 = !DILocation(line: 331, column: 13, scope: !3628)
!3689 = !DILocation(line: 332, column: 15, scope: !3628)
!3690 = !DILocation(line: 329, column: 13, scope: !3628)
!3691 = !DILocation(line: 330, column: 15, scope: !3628)
!3692 = !DILocation(line: 337, column: 23, scope: !3628)
!3693 = !DILocation(line: 337, column: 29, scope: !3628)
!3694 = !DILocation(line: 337, column: 19, scope: !3628)
!3695 = !DILocation(line: 376, column: 25, scope: !3628)
!3696 = !DILocation(line: 343, column: 13, scope: !3628)
!3697 = !DILocation(line: 344, column: 15, scope: !3628)
!3698 = !DILocation(line: 347, column: 13, scope: !3628)
!3699 = !DILocation(line: 348, column: 15, scope: !3628)
!3700 = !DILocation(line: 345, column: 13, scope: !3628)
!3701 = !DILocation(line: 346, column: 15, scope: !3628)
!3702 = !DILocation(line: 353, column: 23, scope: !3628)
!3703 = !DILocation(line: 353, column: 29, scope: !3628)
!3704 = !DILocation(line: 353, column: 19, scope: !3628)
!3705 = !DILocation(line: 376, column: 31, scope: !3628)
!3706 = !DILocation(line: 359, column: 13, scope: !3628)
!3707 = !DILocation(line: 360, column: 15, scope: !3628)
!3708 = !DILocation(line: 369, column: 23, scope: !3628)
!3709 = !DILocation(line: 369, column: 29, scope: !3628)
!3710 = !DILocation(line: 369, column: 19, scope: !3628)
!3711 = !DILocation(line: 376, column: 37, scope: !3628)
!3712 = !DILocation(line: 302, column: 13, scope: !3628)
!3713 = !DILocation(line: 303, column: 15, scope: !3628)
!3714 = !DILocation(line: 300, column: 13, scope: !3628)
!3715 = !DILocation(line: 301, column: 15, scope: !3628)
!3716 = !DILocation(line: 307, column: 23, scope: !3628)
!3717 = !DILocation(line: 307, column: 29, scope: !3628)
!3718 = !DILocation(line: 307, column: 19, scope: !3628)
!3719 = !DILocation(line: 319, column: 13, scope: !3628)
!3720 = !DILocation(line: 320, column: 15, scope: !3628)
!3721 = !DILocation(line: 317, column: 13, scope: !3628)
!3722 = !DILocation(line: 318, column: 15, scope: !3628)
!3723 = !DILocation(line: 323, column: 23, scope: !3628)
!3724 = !DILocation(line: 323, column: 29, scope: !3628)
!3725 = !DILocation(line: 323, column: 19, scope: !3628)
!3726 = !DILocation(line: 378, column: 19, scope: !3628)
!3727 = !DILocation(line: 335, column: 13, scope: !3628)
!3728 = !DILocation(line: 336, column: 15, scope: !3628)
!3729 = !DILocation(line: 333, column: 13, scope: !3628)
!3730 = !DILocation(line: 334, column: 15, scope: !3628)
!3731 = !DILocation(line: 339, column: 23, scope: !3628)
!3732 = !DILocation(line: 339, column: 29, scope: !3628)
!3733 = !DILocation(line: 339, column: 19, scope: !3628)
!3734 = !DILocation(line: 378, column: 25, scope: !3628)
!3735 = !DILocation(line: 351, column: 13, scope: !3628)
!3736 = !DILocation(line: 352, column: 15, scope: !3628)
!3737 = !DILocation(line: 349, column: 13, scope: !3628)
!3738 = !DILocation(line: 350, column: 15, scope: !3628)
!3739 = !DILocation(line: 355, column: 23, scope: !3628)
!3740 = !DILocation(line: 355, column: 29, scope: !3628)
!3741 = !DILocation(line: 355, column: 19, scope: !3628)
!3742 = !DILocation(line: 378, column: 31, scope: !3628)
!3743 = !DILocation(line: 367, column: 13, scope: !3628)
!3744 = !DILocation(line: 368, column: 15, scope: !3628)
!3745 = !DILocation(line: 371, column: 23, scope: !3628)
!3746 = !DILocation(line: 371, column: 29, scope: !3628)
!3747 = !DILocation(line: 371, column: 19, scope: !3628)
!3748 = !DILocation(line: 378, column: 37, scope: !3628)
!3749 = !DILocation(line: 384, column: 20, scope: !3628)
!3750 = !DILocation(line: 384, column: 18, scope: !3628)
!3751 = !DILocation(line: 462, column: 13, scope: !3628)
!3752 = !DILocation(line: 463, column: 15, scope: !3628)
!3753 = !DILocation(line: 324, column: 23, scope: !3628)
!3754 = !DILocation(line: 324, column: 29, scope: !3628)
!3755 = !DILocation(line: 324, column: 19, scope: !3628)
!3756 = !DILocation(line: 309, column: 23, scope: !3628)
!3757 = !DILocation(line: 309, column: 29, scope: !3628)
!3758 = !DILocation(line: 309, column: 19, scope: !3628)
!3759 = !DILocation(line: 325, column: 23, scope: !3628)
!3760 = !DILocation(line: 325, column: 29, scope: !3628)
!3761 = !DILocation(line: 325, column: 19, scope: !3628)
!3762 = !DILocation(line: 380, column: 19, scope: !3628)
!3763 = !DILocation(line: 341, column: 23, scope: !3628)
!3764 = !DILocation(line: 341, column: 29, scope: !3628)
!3765 = !DILocation(line: 341, column: 19, scope: !3628)
!3766 = !DILocation(line: 380, column: 25, scope: !3628)
!3767 = !DILocation(line: 357, column: 23, scope: !3628)
!3768 = !DILocation(line: 357, column: 29, scope: !3628)
!3769 = !DILocation(line: 357, column: 19, scope: !3628)
!3770 = !DILocation(line: 380, column: 31, scope: !3628)
!3771 = !DILocation(line: 373, column: 23, scope: !3628)
!3772 = !DILocation(line: 373, column: 29, scope: !3628)
!3773 = !DILocation(line: 373, column: 19, scope: !3628)
!3774 = !DILocation(line: 380, column: 37, scope: !3628)
!3775 = !DILocation(line: 386, column: 20, scope: !3628)
!3776 = !DILocation(line: 386, column: 18, scope: !3628)
!3777 = !DILocation(line: 456, column: 13, scope: !3628)
!3778 = !DILocation(line: 457, column: 15, scope: !3628)
!3779 = !DILocation(line: 306, column: 23, scope: !3628)
!3780 = !DILocation(line: 306, column: 29, scope: !3628)
!3781 = !DILocation(line: 306, column: 19, scope: !3628)
!3782 = !DILocation(line: 322, column: 23, scope: !3628)
!3783 = !DILocation(line: 322, column: 29, scope: !3628)
!3784 = !DILocation(line: 322, column: 19, scope: !3628)
!3785 = !DILocation(line: 377, column: 19, scope: !3628)
!3786 = !DILocation(line: 338, column: 23, scope: !3628)
!3787 = !DILocation(line: 338, column: 29, scope: !3628)
!3788 = !DILocation(line: 338, column: 19, scope: !3628)
!3789 = !DILocation(line: 377, column: 25, scope: !3628)
!3790 = !DILocation(line: 354, column: 23, scope: !3628)
!3791 = !DILocation(line: 354, column: 29, scope: !3628)
!3792 = !DILocation(line: 354, column: 19, scope: !3628)
!3793 = !DILocation(line: 377, column: 31, scope: !3628)
!3794 = !DILocation(line: 377, column: 37, scope: !3628)
!3795 = !DILocation(line: 308, column: 23, scope: !3628)
!3796 = !DILocation(line: 308, column: 29, scope: !3628)
!3797 = !DILocation(line: 308, column: 19, scope: !3628)
!3798 = !DILocation(line: 379, column: 19, scope: !3628)
!3799 = !DILocation(line: 340, column: 23, scope: !3628)
!3800 = !DILocation(line: 340, column: 29, scope: !3628)
!3801 = !DILocation(line: 340, column: 19, scope: !3628)
!3802 = !DILocation(line: 379, column: 25, scope: !3628)
!3803 = !DILocation(line: 356, column: 23, scope: !3628)
!3804 = !DILocation(line: 356, column: 29, scope: !3628)
!3805 = !DILocation(line: 356, column: 19, scope: !3628)
!3806 = !DILocation(line: 379, column: 31, scope: !3628)
!3807 = !DILocation(line: 372, column: 23, scope: !3628)
!3808 = !DILocation(line: 372, column: 29, scope: !3628)
!3809 = !DILocation(line: 372, column: 19, scope: !3628)
!3810 = !DILocation(line: 379, column: 37, scope: !3628)
!3811 = !DILocation(line: 385, column: 20, scope: !3628)
!3812 = !DILocation(line: 385, column: 18, scope: !3628)
!3813 = !DILocation(line: 454, column: 13, scope: !3628)
!3814 = !DILocation(line: 455, column: 15, scope: !3628)
!3815 = !DILocation(line: 468, column: 23, scope: !3628)
!3816 = !DILocation(line: 468, column: 29, scope: !3628)
!3817 = !DILocation(line: 468, column: 19, scope: !3628)
!3818 = !DILocation(line: 383, column: 20, scope: !3628)
!3819 = !DILocation(line: 383, column: 18, scope: !3628)
!3820 = !DILocation(line: 460, column: 13, scope: !3628)
!3821 = !DILocation(line: 461, column: 15, scope: !3628)
!3822 = !DILocation(line: 467, column: 23, scope: !3628)
!3823 = !DILocation(line: 467, column: 29, scope: !3628)
!3824 = !DILocation(line: 467, column: 19, scope: !3628)
!3825 = !DILocation(line: 387, column: 20, scope: !3628)
!3826 = !DILocation(line: 387, column: 18, scope: !3628)
!3827 = !DILocation(line: 458, column: 13, scope: !3628)
!3828 = !DILocation(line: 459, column: 15, scope: !3628)
!3829 = !DILocation(line: 466, column: 23, scope: !3628)
!3830 = !DILocation(line: 466, column: 29, scope: !3628)
!3831 = !DILocation(line: 466, column: 19, scope: !3628)
!3832 = !DILocation(line: 465, column: 23, scope: !3628)
!3833 = !DILocation(line: 465, column: 29, scope: !3628)
!3834 = !DILocation(line: 465, column: 19, scope: !3628)
!3835 = !DILocation(line: 464, column: 23, scope: !3628)
!3836 = !DILocation(line: 464, column: 29, scope: !3628)
!3837 = !DILocation(line: 464, column: 19, scope: !3628)
!3838 = !DILocation(line: 446, column: 13, scope: !3628)
!3839 = !DILocation(line: 447, column: 15, scope: !3628)
!3840 = !DILocation(line: 440, column: 13, scope: !3628)
!3841 = !DILocation(line: 441, column: 15, scope: !3628)
!3842 = !DILocation(line: 438, column: 13, scope: !3628)
!3843 = !DILocation(line: 439, column: 15, scope: !3628)
!3844 = !DILocation(line: 452, column: 23, scope: !3628)
!3845 = !DILocation(line: 452, column: 29, scope: !3628)
!3846 = !DILocation(line: 452, column: 19, scope: !3628)
!3847 = !DILocation(line: 444, column: 13, scope: !3628)
!3848 = !DILocation(line: 445, column: 15, scope: !3628)
!3849 = !DILocation(line: 451, column: 23, scope: !3628)
!3850 = !DILocation(line: 451, column: 29, scope: !3628)
!3851 = !DILocation(line: 451, column: 19, scope: !3628)
!3852 = !DILocation(line: 442, column: 13, scope: !3628)
!3853 = !DILocation(line: 443, column: 15, scope: !3628)
!3854 = !DILocation(line: 450, column: 23, scope: !3628)
!3855 = !DILocation(line: 450, column: 29, scope: !3628)
!3856 = !DILocation(line: 450, column: 19, scope: !3628)
!3857 = !DILocation(line: 449, column: 23, scope: !3628)
!3858 = !DILocation(line: 449, column: 29, scope: !3628)
!3859 = !DILocation(line: 449, column: 19, scope: !3628)
!3860 = !DILocation(line: 448, column: 23, scope: !3628)
!3861 = !DILocation(line: 448, column: 29, scope: !3628)
!3862 = !DILocation(line: 448, column: 19, scope: !3628)
!3863 = !DILocation(line: 430, column: 13, scope: !3628)
!3864 = !DILocation(line: 431, column: 15, scope: !3628)
!3865 = !DILocation(line: 424, column: 13, scope: !3628)
!3866 = !DILocation(line: 425, column: 15, scope: !3628)
!3867 = !DILocation(line: 422, column: 13, scope: !3628)
!3868 = !DILocation(line: 423, column: 15, scope: !3628)
!3869 = !DILocation(line: 436, column: 23, scope: !3628)
!3870 = !DILocation(line: 436, column: 29, scope: !3628)
!3871 = !DILocation(line: 436, column: 19, scope: !3628)
!3872 = !DILocation(line: 428, column: 13, scope: !3628)
!3873 = !DILocation(line: 429, column: 15, scope: !3628)
!3874 = !DILocation(line: 435, column: 23, scope: !3628)
!3875 = !DILocation(line: 435, column: 29, scope: !3628)
!3876 = !DILocation(line: 435, column: 19, scope: !3628)
!3877 = !DILocation(line: 426, column: 13, scope: !3628)
!3878 = !DILocation(line: 427, column: 15, scope: !3628)
!3879 = !DILocation(line: 434, column: 23, scope: !3628)
!3880 = !DILocation(line: 434, column: 29, scope: !3628)
!3881 = !DILocation(line: 434, column: 19, scope: !3628)
!3882 = !DILocation(line: 433, column: 23, scope: !3628)
!3883 = !DILocation(line: 433, column: 29, scope: !3628)
!3884 = !DILocation(line: 433, column: 19, scope: !3628)
!3885 = !DILocation(line: 432, column: 23, scope: !3628)
!3886 = !DILocation(line: 432, column: 29, scope: !3628)
!3887 = !DILocation(line: 432, column: 19, scope: !3628)
!3888 = !DILocation(line: 414, column: 13, scope: !3628)
!3889 = !DILocation(line: 415, column: 15, scope: !3628)
!3890 = !DILocation(line: 408, column: 13, scope: !3628)
!3891 = !DILocation(line: 409, column: 15, scope: !3628)
!3892 = !DILocation(line: 406, column: 13, scope: !3628)
!3893 = !DILocation(line: 407, column: 15, scope: !3628)
!3894 = !DILocation(line: 420, column: 23, scope: !3628)
!3895 = !DILocation(line: 420, column: 29, scope: !3628)
!3896 = !DILocation(line: 420, column: 19, scope: !3628)
!3897 = !DILocation(line: 412, column: 13, scope: !3628)
!3898 = !DILocation(line: 413, column: 15, scope: !3628)
!3899 = !DILocation(line: 419, column: 23, scope: !3628)
!3900 = !DILocation(line: 419, column: 29, scope: !3628)
!3901 = !DILocation(line: 419, column: 19, scope: !3628)
!3902 = !DILocation(line: 410, column: 13, scope: !3628)
!3903 = !DILocation(line: 411, column: 15, scope: !3628)
!3904 = !DILocation(line: 418, column: 23, scope: !3628)
!3905 = !DILocation(line: 418, column: 29, scope: !3628)
!3906 = !DILocation(line: 418, column: 19, scope: !3628)
!3907 = !DILocation(line: 417, column: 23, scope: !3628)
!3908 = !DILocation(line: 417, column: 29, scope: !3628)
!3909 = !DILocation(line: 417, column: 19, scope: !3628)
!3910 = !DILocation(line: 416, column: 23, scope: !3628)
!3911 = !DILocation(line: 416, column: 29, scope: !3628)
!3912 = !DILocation(line: 416, column: 19, scope: !3628)
!3913 = !DILocation(line: 397, column: 13, scope: !3628)
!3914 = !DILocation(line: 398, column: 15, scope: !3628)
!3915 = !DILocation(line: 391, column: 13, scope: !3628)
!3916 = !DILocation(line: 392, column: 15, scope: !3628)
!3917 = !DILocation(line: 389, column: 13, scope: !3628)
!3918 = !DILocation(line: 404, column: 23, scope: !3628)
!3919 = !DILocation(line: 404, column: 29, scope: !3628)
!3920 = !DILocation(line: 404, column: 19, scope: !3628)
!3921 = !DILocation(line: 395, column: 13, scope: !3628)
!3922 = !DILocation(line: 396, column: 15, scope: !3628)
!3923 = !DILocation(line: 403, column: 23, scope: !3628)
!3924 = !DILocation(line: 403, column: 29, scope: !3628)
!3925 = !DILocation(line: 403, column: 19, scope: !3628)
!3926 = !DILocation(line: 393, column: 13, scope: !3628)
!3927 = !DILocation(line: 394, column: 15, scope: !3628)
!3928 = !DILocation(line: 402, column: 23, scope: !3628)
!3929 = !DILocation(line: 402, column: 29, scope: !3628)
!3930 = !DILocation(line: 402, column: 19, scope: !3628)
!3931 = !DILocation(line: 401, column: 23, scope: !3628)
!3932 = !DILocation(line: 401, column: 29, scope: !3628)
!3933 = !DILocation(line: 401, column: 19, scope: !3628)
!3934 = !DILocation(line: 400, column: 45, scope: !3628)
!3935 = !DILocation(line: 400, column: 16, scope: !3628)
!3936 = !DILocation(line: 399, column: 23, scope: !3628)
!3937 = !DILocation(line: 399, column: 29, scope: !3628)
!3938 = !DILocation(line: 400, column: 13, scope: !3628)
!3939 = !DILocation(line: 279, column: 44, scope: !3590)
!3940 = !DILocation(line: 279, column: 5, scope: !3590)
!3941 = distinct !{!3941, !3591, !3942, !244}
!3942 = !DILocation(line: 469, column: 5, scope: !3587)
!3943 = !DILocation(line: 472, column: 14, scope: !3532)
!3944 = !DILocation(line: 473, column: 5, scope: !3532)
!3945 = !DILocation(line: 473, column: 14, scope: !3532)
!3946 = !DILocation(line: 474, column: 5, scope: !3532)
!3947 = !DILocation(line: 474, column: 14, scope: !3532)
!3948 = !DILocation(line: 475, column: 5, scope: !3532)
!3949 = !DILocation(line: 475, column: 14, scope: !3532)
!3950 = !DILocation(line: 476, column: 5, scope: !3532)
!3951 = !DILocation(line: 476, column: 14, scope: !3532)
!3952 = !DILocation(line: 477, column: 5, scope: !3532)
!3953 = !DILocation(line: 477, column: 14, scope: !3532)
!3954 = !DILocation(line: 478, column: 5, scope: !3532)
!3955 = !DILocation(line: 478, column: 14, scope: !3532)
!3956 = !DILocation(line: 479, column: 5, scope: !3532)
!3957 = !DILocation(line: 479, column: 14, scope: !3532)
!3958 = !DILocation(line: 480, column: 5, scope: !3532)
!3959 = !DILocation(line: 480, column: 14, scope: !3532)
!3960 = !DILocation(line: 481, column: 5, scope: !3532)
!3961 = !DILocation(line: 481, column: 14, scope: !3532)
!3962 = !DILocation(line: 482, column: 5, scope: !3532)
!3963 = !DILocation(line: 482, column: 15, scope: !3532)
!3964 = !DILocation(line: 483, column: 5, scope: !3532)
!3965 = !DILocation(line: 483, column: 15, scope: !3532)
!3966 = !DILocation(line: 484, column: 5, scope: !3532)
!3967 = !DILocation(line: 484, column: 15, scope: !3532)
!3968 = !DILocation(line: 485, column: 5, scope: !3532)
!3969 = !DILocation(line: 485, column: 15, scope: !3532)
!3970 = !DILocation(line: 486, column: 5, scope: !3532)
!3971 = !DILocation(line: 486, column: 15, scope: !3532)
!3972 = !DILocation(line: 487, column: 5, scope: !3532)
!3973 = !DILocation(line: 487, column: 15, scope: !3532)
!3974 = !DILocation(line: 488, column: 5, scope: !3532)
!3975 = !DILocation(line: 488, column: 15, scope: !3532)
!3976 = !DILocation(line: 489, column: 5, scope: !3532)
!3977 = !DILocation(line: 489, column: 15, scope: !3532)
!3978 = !DILocation(line: 490, column: 5, scope: !3532)
!3979 = !DILocation(line: 490, column: 15, scope: !3532)
!3980 = !DILocation(line: 491, column: 5, scope: !3532)
!3981 = !DILocation(line: 491, column: 15, scope: !3532)
!3982 = !DILocation(line: 492, column: 5, scope: !3532)
!3983 = !DILocation(line: 492, column: 15, scope: !3532)
!3984 = !DILocation(line: 493, column: 5, scope: !3532)
!3985 = !DILocation(line: 493, column: 15, scope: !3532)
!3986 = !DILocation(line: 494, column: 5, scope: !3532)
!3987 = !DILocation(line: 494, column: 15, scope: !3532)
!3988 = !DILocation(line: 495, column: 5, scope: !3532)
!3989 = !DILocation(line: 495, column: 15, scope: !3532)
!3990 = !DILocation(line: 496, column: 5, scope: !3532)
!3991 = !DILocation(line: 496, column: 15, scope: !3532)
!3992 = !DILocation(line: 497, column: 1, scope: !3532)
!3993 = distinct !DISubprogram(name: "shake128_inc_finalize", scope: !71, file: !71, line: 700, type: !3405, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3994 = !DILocalVariable(name: "state", arg: 1, scope: !3993, file: !71, line: 700, type: !3407)
!3995 = !DILocation(line: 0, scope: !3993)
!3996 = !DILocation(line: 701, column: 32, scope: !3993)
!3997 = !DILocation(line: 701, column: 5, scope: !3993)
!3998 = !DILocation(line: 702, column: 1, scope: !3993)
!3999 = distinct !DISubprogram(name: "keccak_inc_finalize", scope: !71, file: !71, line: 640, type: !4000, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{null, !5, !19, !12}
!4002 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3999, file: !71, line: 640, type: !5)
!4003 = !DILocation(line: 0, scope: !3999)
!4004 = !DILocalVariable(name: "r", arg: 2, scope: !3999, file: !71, line: 640, type: !19)
!4005 = !DILocalVariable(name: "p", arg: 3, scope: !3999, file: !71, line: 640, type: !12)
!4006 = !DILocation(line: 643, column: 30, scope: !3999)
!4007 = !DILocation(line: 643, column: 51, scope: !3999)
!4008 = !DILocation(line: 643, column: 48, scope: !3999)
!4009 = !DILocation(line: 643, column: 42, scope: !3999)
!4010 = !DILocation(line: 643, column: 21, scope: !3999)
!4011 = !DILocation(line: 643, column: 5, scope: !3999)
!4012 = !DILocation(line: 643, column: 27, scope: !3999)
!4013 = !DILocation(line: 644, column: 48, scope: !3999)
!4014 = !DILocation(line: 644, column: 42, scope: !3999)
!4015 = !DILocation(line: 644, column: 14, scope: !3999)
!4016 = !DILocation(line: 644, column: 19, scope: !3999)
!4017 = !DILocation(line: 644, column: 5, scope: !3999)
!4018 = !DILocation(line: 644, column: 25, scope: !3999)
!4019 = !DILocation(line: 645, column: 5, scope: !3999)
!4020 = !DILocation(line: 645, column: 15, scope: !3999)
!4021 = !DILocation(line: 646, column: 1, scope: !3999)
!4022 = distinct !DISubprogram(name: "shake128_inc_squeeze", scope: !71, file: !71, line: 704, type: !4023, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{null, !11, !15, !3407}
!4025 = !DILocalVariable(name: "output", arg: 1, scope: !4022, file: !71, line: 704, type: !11)
!4026 = !DILocation(line: 0, scope: !4022)
!4027 = !DILocalVariable(name: "outlen", arg: 2, scope: !4022, file: !71, line: 704, type: !15)
!4028 = !DILocalVariable(name: "state", arg: 3, scope: !4022, file: !71, line: 704, type: !3407)
!4029 = !DILocation(line: 705, column: 47, scope: !4022)
!4030 = !DILocation(line: 705, column: 5, scope: !4022)
!4031 = !DILocation(line: 706, column: 1, scope: !4022)
!4032 = distinct !DISubprogram(name: "keccak_inc_squeeze", scope: !71, file: !71, line: 661, type: !4033, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{null, !11, !15, !5, !19}
!4035 = !DILocalVariable(name: "h", arg: 1, scope: !4032, file: !71, line: 661, type: !11)
!4036 = !DILocation(line: 0, scope: !4032)
!4037 = !DILocalVariable(name: "outlen", arg: 2, scope: !4032, file: !71, line: 661, type: !15)
!4038 = !DILocalVariable(name: "s_inc", arg: 3, scope: !4032, file: !71, line: 662, type: !5)
!4039 = !DILocalVariable(name: "r", arg: 4, scope: !4032, file: !71, line: 662, type: !19)
!4040 = !DILocalVariable(name: "i", scope: !4032, file: !71, line: 663, type: !15)
!4041 = !DILocation(line: 666, column: 10, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4032, file: !71, line: 666, column: 5)
!4043 = !DILocation(line: 666, scope: !4042)
!4044 = !DILocation(line: 666, column: 19, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4042, file: !71, line: 666, column: 5)
!4046 = !DILocation(line: 666, column: 28, scope: !4045)
!4047 = !DILocation(line: 666, column: 31, scope: !4045)
!4048 = !DILocation(line: 666, column: 35, scope: !4045)
!4049 = !DILocation(line: 666, column: 33, scope: !4045)
!4050 = !DILocation(line: 666, column: 5, scope: !4042)
!4051 = !DILocation(line: 669, column: 33, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4045, file: !71, line: 666, column: 51)
!4053 = !DILocation(line: 669, column: 37, scope: !4052)
!4054 = !DILocation(line: 669, column: 35, scope: !4052)
!4055 = !DILocation(line: 669, column: 49, scope: !4052)
!4056 = !DILocation(line: 669, column: 47, scope: !4052)
!4057 = !DILocation(line: 669, column: 52, scope: !4052)
!4058 = !DILocation(line: 669, column: 26, scope: !4052)
!4059 = !DILocation(line: 669, column: 68, scope: !4052)
!4060 = !DILocation(line: 669, column: 72, scope: !4052)
!4061 = !DILocation(line: 669, column: 70, scope: !4052)
!4062 = !DILocation(line: 669, column: 84, scope: !4052)
!4063 = !DILocation(line: 669, column: 82, scope: !4052)
!4064 = !DILocation(line: 669, column: 64, scope: !4052)
!4065 = !DILocation(line: 669, column: 58, scope: !4052)
!4066 = !DILocation(line: 669, column: 16, scope: !4052)
!4067 = !DILocation(line: 669, column: 9, scope: !4052)
!4068 = !DILocation(line: 669, column: 14, scope: !4052)
!4069 = !DILocation(line: 666, column: 47, scope: !4045)
!4070 = !DILocation(line: 666, column: 5, scope: !4045)
!4071 = distinct !{!4071, !4050, !4072, !244}
!4072 = !DILocation(line: 670, column: 5, scope: !4042)
!4073 = !DILocation(line: 671, column: 7, scope: !4032)
!4074 = !DILocation(line: 672, column: 12, scope: !4032)
!4075 = !DILocation(line: 673, column: 18, scope: !4032)
!4076 = !DILocation(line: 673, column: 5, scope: !4032)
!4077 = !DILocation(line: 673, column: 15, scope: !4032)
!4078 = !DILocation(line: 676, column: 5, scope: !4032)
!4079 = !DILocation(line: 676, column: 19, scope: !4032)
!4080 = !DILocation(line: 677, column: 9, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4032, file: !71, line: 676, column: 24)
!4082 = !DILocation(line: 679, column: 14, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4081, file: !71, line: 679, column: 9)
!4084 = !DILocation(line: 679, scope: !4083)
!4085 = !DILocation(line: 679, column: 32, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4083, file: !71, line: 679, column: 9)
!4087 = !DILocation(line: 679, column: 9, scope: !4083)
!4088 = !DILocation(line: 680, column: 38, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4086, file: !71, line: 679, column: 47)
!4090 = !DILocation(line: 680, column: 30, scope: !4089)
!4091 = !DILocation(line: 680, column: 50, scope: !4089)
!4092 = !DILocation(line: 680, column: 44, scope: !4089)
!4093 = !DILocation(line: 680, column: 20, scope: !4089)
!4094 = !DILocation(line: 680, column: 13, scope: !4089)
!4095 = !DILocation(line: 680, column: 18, scope: !4089)
!4096 = !DILocation(line: 679, column: 43, scope: !4086)
!4097 = !DILocation(line: 679, column: 9, scope: !4086)
!4098 = distinct !{!4098, !4087, !4099, !244}
!4099 = !DILocation(line: 681, column: 9, scope: !4083)
!4100 = !DILocation(line: 682, column: 11, scope: !4081)
!4101 = !DILocation(line: 683, column: 16, scope: !4081)
!4102 = !DILocation(line: 684, column: 23, scope: !4081)
!4103 = !DILocation(line: 684, column: 21, scope: !4081)
!4104 = !DILocation(line: 684, column: 9, scope: !4081)
!4105 = !DILocation(line: 684, column: 19, scope: !4081)
!4106 = distinct !{!4106, !4078, !4107, !244}
!4107 = !DILocation(line: 685, column: 5, scope: !4032)
!4108 = !DILocation(line: 686, column: 1, scope: !4032)
!4109 = distinct !DISubprogram(name: "shake128_inc_ctx_clone", scope: !71, file: !71, line: 708, type: !4110, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{null, !3407, !4112}
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 32)
!4113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3408)
!4114 = !DILocalVariable(name: "dest", arg: 1, scope: !4109, file: !71, line: 708, type: !3407)
!4115 = !DILocation(line: 0, scope: !4109)
!4116 = !DILocalVariable(name: "src", arg: 2, scope: !4109, file: !71, line: 708, type: !4112)
!4117 = !DILocation(line: 709, column: 17, scope: !4109)
!4118 = !DILocation(line: 709, column: 15, scope: !4109)
!4119 = !DILocation(line: 710, column: 19, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4109, file: !71, line: 710, column: 9)
!4121 = !DILocation(line: 711, column: 9, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4120, file: !71, line: 710, column: 28)
!4123 = !DILocation(line: 712, column: 5, scope: !4122)
!4124 = !DILocation(line: 713, column: 18, scope: !4109)
!4125 = !DILocation(line: 713, column: 28, scope: !4109)
!4126 = !DILocation(line: 713, column: 5, scope: !4109)
!4127 = !DILocation(line: 714, column: 1, scope: !4109)
!4128 = distinct !DISubprogram(name: "shake128_inc_ctx_release", scope: !71, file: !71, line: 716, type: !3405, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4129 = !DILocalVariable(name: "state", arg: 1, scope: !4128, file: !71, line: 716, type: !3407)
!4130 = !DILocation(line: 0, scope: !4128)
!4131 = !DILocation(line: 717, column: 17, scope: !4128)
!4132 = !DILocation(line: 717, column: 5, scope: !4128)
!4133 = !DILocation(line: 718, column: 1, scope: !4128)
!4134 = distinct !DISubprogram(name: "shake256_inc_init", scope: !71, file: !71, line: 720, type: !4135, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{null, !4137}
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 32)
!4138 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256incctx", file: !71, line: 41, baseType: !4139)
!4139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 39, size: 32, elements: !4140)
!4140 = !{!4141}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4139, file: !71, line: 40, baseType: !5, size: 32)
!4142 = !DILocalVariable(name: "state", arg: 1, scope: !4134, file: !71, line: 720, type: !4137)
!4143 = !DILocation(line: 0, scope: !4134)
!4144 = !DILocation(line: 721, column: 18, scope: !4134)
!4145 = !DILocation(line: 721, column: 16, scope: !4134)
!4146 = !DILocation(line: 722, column: 20, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4134, file: !71, line: 722, column: 9)
!4148 = !DILocation(line: 723, column: 9, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4147, file: !71, line: 722, column: 29)
!4150 = !DILocation(line: 724, column: 5, scope: !4149)
!4151 = !DILocation(line: 725, column: 28, scope: !4134)
!4152 = !DILocation(line: 725, column: 5, scope: !4134)
!4153 = !DILocation(line: 726, column: 1, scope: !4134)
!4154 = distinct !DISubprogram(name: "shake256_inc_absorb", scope: !71, file: !71, line: 728, type: !4155, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{null, !4137, !257, !15}
!4157 = !DILocalVariable(name: "state", arg: 1, scope: !4154, file: !71, line: 728, type: !4137)
!4158 = !DILocation(line: 0, scope: !4154)
!4159 = !DILocalVariable(name: "input", arg: 2, scope: !4154, file: !71, line: 728, type: !257)
!4160 = !DILocalVariable(name: "inlen", arg: 3, scope: !4154, file: !71, line: 728, type: !15)
!4161 = !DILocation(line: 729, column: 30, scope: !4154)
!4162 = !DILocation(line: 729, column: 5, scope: !4154)
!4163 = !DILocation(line: 730, column: 1, scope: !4154)
!4164 = distinct !DISubprogram(name: "shake256_inc_finalize", scope: !71, file: !71, line: 732, type: !4135, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4165 = !DILocalVariable(name: "state", arg: 1, scope: !4164, file: !71, line: 732, type: !4137)
!4166 = !DILocation(line: 0, scope: !4164)
!4167 = !DILocation(line: 733, column: 32, scope: !4164)
!4168 = !DILocation(line: 733, column: 5, scope: !4164)
!4169 = !DILocation(line: 734, column: 1, scope: !4164)
!4170 = distinct !DISubprogram(name: "shake256_inc_squeeze", scope: !71, file: !71, line: 736, type: !4171, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !11, !15, !4137}
!4173 = !DILocalVariable(name: "output", arg: 1, scope: !4170, file: !71, line: 736, type: !11)
!4174 = !DILocation(line: 0, scope: !4170)
!4175 = !DILocalVariable(name: "outlen", arg: 2, scope: !4170, file: !71, line: 736, type: !15)
!4176 = !DILocalVariable(name: "state", arg: 3, scope: !4170, file: !71, line: 736, type: !4137)
!4177 = !DILocation(line: 737, column: 47, scope: !4170)
!4178 = !DILocation(line: 737, column: 5, scope: !4170)
!4179 = !DILocation(line: 738, column: 1, scope: !4170)
!4180 = distinct !DISubprogram(name: "shake256_inc_ctx_clone", scope: !71, file: !71, line: 740, type: !4181, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{null, !4137, !4183}
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 32)
!4184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4138)
!4185 = !DILocalVariable(name: "dest", arg: 1, scope: !4180, file: !71, line: 740, type: !4137)
!4186 = !DILocation(line: 0, scope: !4180)
!4187 = !DILocalVariable(name: "src", arg: 2, scope: !4180, file: !71, line: 740, type: !4183)
!4188 = !DILocation(line: 741, column: 17, scope: !4180)
!4189 = !DILocation(line: 741, column: 15, scope: !4180)
!4190 = !DILocation(line: 742, column: 19, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4180, file: !71, line: 742, column: 9)
!4192 = !DILocation(line: 743, column: 9, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4191, file: !71, line: 742, column: 28)
!4194 = !DILocation(line: 744, column: 5, scope: !4193)
!4195 = !DILocation(line: 745, column: 18, scope: !4180)
!4196 = !DILocation(line: 745, column: 28, scope: !4180)
!4197 = !DILocation(line: 745, column: 5, scope: !4180)
!4198 = !DILocation(line: 746, column: 1, scope: !4180)
!4199 = distinct !DISubprogram(name: "shake256_inc_ctx_release", scope: !71, file: !71, line: 748, type: !4135, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4200 = !DILocalVariable(name: "state", arg: 1, scope: !4199, file: !71, line: 748, type: !4137)
!4201 = !DILocation(line: 0, scope: !4199)
!4202 = !DILocation(line: 749, column: 17, scope: !4199)
!4203 = !DILocation(line: 749, column: 5, scope: !4199)
!4204 = !DILocation(line: 750, column: 1, scope: !4199)
!4205 = distinct !DISubprogram(name: "shake128_absorb", scope: !71, file: !71, line: 764, type: !4206, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{null, !4208, !257, !15}
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 32)
!4209 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128ctx", file: !71, line: 36, baseType: !4210)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 34, size: 32, elements: !4211)
!4211 = !{!4212}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4210, file: !71, line: 35, baseType: !5, size: 32)
!4213 = !DILocalVariable(name: "state", arg: 1, scope: !4205, file: !71, line: 764, type: !4208)
!4214 = !DILocation(line: 0, scope: !4205)
!4215 = !DILocalVariable(name: "input", arg: 2, scope: !4205, file: !71, line: 764, type: !257)
!4216 = !DILocalVariable(name: "inlen", arg: 3, scope: !4205, file: !71, line: 764, type: !15)
!4217 = !DILocation(line: 765, column: 18, scope: !4205)
!4218 = !DILocation(line: 765, column: 16, scope: !4205)
!4219 = !DILocation(line: 766, column: 20, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4205, file: !71, line: 766, column: 9)
!4221 = !DILocation(line: 767, column: 9, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4220, file: !71, line: 766, column: 29)
!4223 = !DILocation(line: 768, column: 5, scope: !4222)
!4224 = !DILocation(line: 769, column: 26, scope: !4205)
!4225 = !DILocation(line: 769, column: 5, scope: !4205)
!4226 = !DILocation(line: 770, column: 1, scope: !4205)
!4227 = distinct !DISubprogram(name: "keccak_absorb", scope: !71, file: !71, line: 512, type: !4228, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{null, !5, !19, !257, !15, !12}
!4230 = !DILocalVariable(name: "s", arg: 1, scope: !4227, file: !71, line: 512, type: !5)
!4231 = !DILocation(line: 0, scope: !4227)
!4232 = !DILocalVariable(name: "r", arg: 2, scope: !4227, file: !71, line: 512, type: !19)
!4233 = !DILocalVariable(name: "m", arg: 3, scope: !4227, file: !71, line: 512, type: !257)
!4234 = !DILocalVariable(name: "mlen", arg: 4, scope: !4227, file: !71, line: 513, type: !15)
!4235 = !DILocalVariable(name: "p", arg: 5, scope: !4227, file: !71, line: 513, type: !12)
!4236 = !DILocalVariable(name: "t", scope: !4227, file: !71, line: 515, type: !4237)
!4237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1600, elements: !4238)
!4238 = !{!4239}
!4239 = !DISubrange(count: 200)
!4240 = !DILocation(line: 515, column: 13, scope: !4227)
!4241 = !DILocalVariable(name: "i", scope: !4227, file: !71, line: 514, type: !15)
!4242 = !DILocation(line: 518, column: 10, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4227, file: !71, line: 518, column: 5)
!4244 = !DILocation(line: 518, scope: !4243)
!4245 = !DILocation(line: 518, column: 19, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4243, file: !71, line: 518, column: 5)
!4247 = !DILocation(line: 518, column: 5, scope: !4243)
!4248 = !DILocation(line: 522, column: 5, scope: !4227)
!4249 = !DILocation(line: 519, column: 9, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4246, file: !71, line: 518, column: 30)
!4251 = !DILocation(line: 519, column: 14, scope: !4250)
!4252 = !DILocation(line: 518, column: 25, scope: !4246)
!4253 = !DILocation(line: 518, column: 5, scope: !4246)
!4254 = distinct !{!4254, !4247, !4255, !244}
!4255 = !DILocation(line: 520, column: 5, scope: !4243)
!4256 = !DILocation(line: 522, column: 17, scope: !4227)
!4257 = !DILocation(line: 523, column: 9, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4259, file: !71, line: 523, column: 9)
!4259 = distinct !DILexicalBlock(scope: !4227, file: !71, line: 522, column: 23)
!4260 = !DILocation(line: 532, column: 5, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4227, file: !71, line: 532, column: 5)
!4262 = !DILocation(line: 523, scope: !4258)
!4263 = !DILocation(line: 523, column: 23, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4258, file: !71, line: 523, column: 9)
!4265 = !DILocation(line: 524, column: 34, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4264, file: !71, line: 523, column: 37)
!4267 = !DILocation(line: 524, column: 30, scope: !4266)
!4268 = !DILocation(line: 524, column: 21, scope: !4266)
!4269 = !DILocation(line: 524, column: 13, scope: !4266)
!4270 = !DILocation(line: 524, column: 18, scope: !4266)
!4271 = !DILocation(line: 523, column: 32, scope: !4264)
!4272 = !DILocation(line: 523, column: 9, scope: !4264)
!4273 = distinct !{!4273, !4257, !4274, !244}
!4274 = !DILocation(line: 525, column: 9, scope: !4258)
!4275 = !DILocation(line: 527, column: 9, scope: !4259)
!4276 = !DILocation(line: 528, column: 14, scope: !4259)
!4277 = !DILocation(line: 529, column: 11, scope: !4259)
!4278 = distinct !{!4278, !4248, !4279, !244}
!4279 = !DILocation(line: 530, column: 5, scope: !4227)
!4280 = !DILocation(line: 532, scope: !4261)
!4281 = !DILocation(line: 532, column: 19, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4261, file: !71, line: 532, column: 5)
!4283 = !DILocation(line: 535, column: 5, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4227, file: !71, line: 535, column: 5)
!4285 = !DILocation(line: 533, column: 9, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4282, file: !71, line: 532, column: 29)
!4287 = !DILocation(line: 533, column: 14, scope: !4286)
!4288 = !DILocation(line: 532, column: 24, scope: !4282)
!4289 = !DILocation(line: 532, column: 5, scope: !4282)
!4290 = distinct !{!4290, !4260, !4291, !244}
!4291 = !DILocation(line: 534, column: 5, scope: !4261)
!4292 = !DILocation(line: 535, scope: !4284)
!4293 = !DILocation(line: 535, column: 19, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4284, file: !71, line: 535, column: 5)
!4295 = !DILocation(line: 536, column: 16, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4294, file: !71, line: 535, column: 32)
!4297 = !DILocation(line: 536, column: 9, scope: !4296)
!4298 = !DILocation(line: 536, column: 14, scope: !4296)
!4299 = !DILocation(line: 535, column: 27, scope: !4294)
!4300 = !DILocation(line: 535, column: 5, scope: !4294)
!4301 = distinct !{!4301, !4283, !4302, !244}
!4302 = !DILocation(line: 537, column: 5, scope: !4284)
!4303 = !DILocation(line: 538, column: 5, scope: !4227)
!4304 = !DILocation(line: 538, column: 10, scope: !4227)
!4305 = !DILocation(line: 539, column: 9, scope: !4227)
!4306 = !DILocation(line: 539, column: 5, scope: !4227)
!4307 = !DILocation(line: 539, column: 14, scope: !4227)
!4308 = !DILocation(line: 540, column: 10, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4227, file: !71, line: 540, column: 5)
!4310 = !DILocation(line: 540, scope: !4309)
!4311 = !DILocation(line: 540, column: 19, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4309, file: !71, line: 540, column: 5)
!4313 = !DILocation(line: 540, column: 5, scope: !4309)
!4314 = !DILocation(line: 541, column: 30, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4312, file: !71, line: 540, column: 33)
!4316 = !DILocation(line: 541, column: 26, scope: !4315)
!4317 = !DILocation(line: 541, column: 17, scope: !4315)
!4318 = !DILocation(line: 541, column: 9, scope: !4315)
!4319 = !DILocation(line: 541, column: 14, scope: !4315)
!4320 = !DILocation(line: 540, column: 28, scope: !4312)
!4321 = !DILocation(line: 540, column: 5, scope: !4312)
!4322 = distinct !{!4322, !4313, !4323, !244}
!4323 = !DILocation(line: 542, column: 5, scope: !4309)
!4324 = !DILocation(line: 543, column: 1, scope: !4227)
!4325 = distinct !DISubprogram(name: "load64", scope: !71, file: !71, line: 190, type: !4326, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!6, !257}
!4328 = !DILocalVariable(name: "x", arg: 1, scope: !4325, file: !71, line: 190, type: !257)
!4329 = !DILocation(line: 0, scope: !4325)
!4330 = !DILocalVariable(name: "r", scope: !4325, file: !71, line: 191, type: !6)
!4331 = !DILocalVariable(name: "i", scope: !4332, file: !71, line: 192, type: !15)
!4332 = distinct !DILexicalBlock(scope: !4325, file: !71, line: 192, column: 5)
!4333 = !DILocation(line: 0, scope: !4332)
!4334 = !DILocation(line: 192, column: 10, scope: !4332)
!4335 = !DILocation(line: 192, scope: !4332)
!4336 = !DILocation(line: 192, column: 26, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4332, file: !71, line: 192, column: 5)
!4338 = !DILocation(line: 192, column: 5, scope: !4332)
!4339 = !DILocation(line: 193, column: 24, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4337, file: !71, line: 192, column: 36)
!4341 = !DILocation(line: 193, column: 14, scope: !4340)
!4342 = !DILocation(line: 193, column: 34, scope: !4340)
!4343 = !DILocation(line: 193, column: 29, scope: !4340)
!4344 = !DILocation(line: 193, column: 11, scope: !4340)
!4345 = !DILocation(line: 192, column: 31, scope: !4337)
!4346 = !DILocation(line: 192, column: 5, scope: !4337)
!4347 = distinct !{!4347, !4338, !4348, !244}
!4348 = !DILocation(line: 194, column: 5, scope: !4332)
!4349 = !DILocation(line: 196, column: 5, scope: !4325)
!4350 = distinct !DISubprogram(name: "shake128_squeezeblocks", scope: !71, file: !71, line: 784, type: !4351, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{null, !11, !15, !4208}
!4353 = !DILocalVariable(name: "output", arg: 1, scope: !4350, file: !71, line: 784, type: !11)
!4354 = !DILocation(line: 0, scope: !4350)
!4355 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4350, file: !71, line: 784, type: !15)
!4356 = !DILocalVariable(name: "state", arg: 3, scope: !4350, file: !71, line: 784, type: !4208)
!4357 = !DILocation(line: 785, column: 50, scope: !4350)
!4358 = !DILocation(line: 785, column: 5, scope: !4350)
!4359 = !DILocation(line: 786, column: 1, scope: !4350)
!4360 = distinct !DISubprogram(name: "keccak_squeezeblocks", scope: !71, file: !71, line: 558, type: !4033, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4361 = !DILocalVariable(name: "h", arg: 1, scope: !4360, file: !71, line: 558, type: !11)
!4362 = !DILocation(line: 0, scope: !4360)
!4363 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4360, file: !71, line: 558, type: !15)
!4364 = !DILocalVariable(name: "s", arg: 3, scope: !4360, file: !71, line: 559, type: !5)
!4365 = !DILocalVariable(name: "r", arg: 4, scope: !4360, file: !71, line: 559, type: !19)
!4366 = !DILocation(line: 560, column: 5, scope: !4360)
!4367 = !DILocation(line: 560, column: 20, scope: !4360)
!4368 = !DILocation(line: 561, column: 9, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4360, file: !71, line: 560, column: 25)
!4370 = !DILocalVariable(name: "i", scope: !4371, file: !71, line: 562, type: !15)
!4371 = distinct !DILexicalBlock(scope: !4369, file: !71, line: 562, column: 9)
!4372 = !DILocation(line: 0, scope: !4371)
!4373 = !DILocation(line: 562, column: 14, scope: !4371)
!4374 = !DILocation(line: 562, scope: !4371)
!4375 = !DILocation(line: 562, column: 30, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4371, file: !71, line: 562, column: 9)
!4377 = !DILocation(line: 562, column: 9, scope: !4371)
!4378 = !DILocation(line: 563, column: 27, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4376, file: !71, line: 562, column: 47)
!4380 = !DILocation(line: 563, column: 23, scope: !4379)
!4381 = !DILocation(line: 563, column: 32, scope: !4379)
!4382 = !DILocation(line: 563, column: 13, scope: !4379)
!4383 = !DILocation(line: 562, column: 43, scope: !4376)
!4384 = !DILocation(line: 562, column: 9, scope: !4376)
!4385 = distinct !{!4385, !4377, !4386, !244}
!4386 = !DILocation(line: 564, column: 9, scope: !4371)
!4387 = !DILocation(line: 565, column: 11, scope: !4369)
!4388 = !DILocation(line: 566, column: 16, scope: !4369)
!4389 = distinct !{!4389, !4366, !4390, !244}
!4390 = !DILocation(line: 567, column: 5, scope: !4360)
!4391 = !DILocation(line: 568, column: 1, scope: !4360)
!4392 = distinct !DISubprogram(name: "store64", scope: !71, file: !71, line: 207, type: !4393, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{null, !11, !6}
!4395 = !DILocalVariable(name: "x", arg: 1, scope: !4392, file: !71, line: 207, type: !11)
!4396 = !DILocation(line: 0, scope: !4392)
!4397 = !DILocalVariable(name: "u", arg: 2, scope: !4392, file: !71, line: 207, type: !6)
!4398 = !DILocalVariable(name: "i", scope: !4399, file: !71, line: 208, type: !15)
!4399 = distinct !DILexicalBlock(scope: !4392, file: !71, line: 208, column: 5)
!4400 = !DILocation(line: 0, scope: !4399)
!4401 = !DILocation(line: 208, column: 10, scope: !4399)
!4402 = !DILocation(line: 208, scope: !4399)
!4403 = !DILocation(line: 208, column: 26, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4399, file: !71, line: 208, column: 5)
!4405 = !DILocation(line: 208, column: 5, scope: !4399)
!4406 = !DILocation(line: 209, column: 34, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4404, file: !71, line: 208, column: 36)
!4408 = !DILocation(line: 209, column: 29, scope: !4407)
!4409 = !DILocation(line: 209, column: 16, scope: !4407)
!4410 = !DILocation(line: 209, column: 9, scope: !4407)
!4411 = !DILocation(line: 209, column: 14, scope: !4407)
!4412 = !DILocation(line: 208, column: 31, scope: !4404)
!4413 = !DILocation(line: 208, column: 5, scope: !4404)
!4414 = distinct !{!4414, !4405, !4415, !244}
!4415 = !DILocation(line: 210, column: 5, scope: !4399)
!4416 = !DILocation(line: 211, column: 1, scope: !4392)
!4417 = distinct !DISubprogram(name: "shake128_ctx_clone", scope: !71, file: !71, line: 788, type: !4418, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{null, !4208, !4420}
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 32)
!4421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4209)
!4422 = !DILocalVariable(name: "dest", arg: 1, scope: !4417, file: !71, line: 788, type: !4208)
!4423 = !DILocation(line: 0, scope: !4417)
!4424 = !DILocalVariable(name: "src", arg: 2, scope: !4417, file: !71, line: 788, type: !4420)
!4425 = !DILocation(line: 789, column: 17, scope: !4417)
!4426 = !DILocation(line: 789, column: 15, scope: !4417)
!4427 = !DILocation(line: 790, column: 19, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4417, file: !71, line: 790, column: 9)
!4429 = !DILocation(line: 791, column: 9, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4428, file: !71, line: 790, column: 28)
!4431 = !DILocation(line: 792, column: 5, scope: !4430)
!4432 = !DILocation(line: 793, column: 18, scope: !4417)
!4433 = !DILocation(line: 793, column: 28, scope: !4417)
!4434 = !DILocation(line: 793, column: 5, scope: !4417)
!4435 = !DILocation(line: 794, column: 1, scope: !4417)
!4436 = distinct !DISubprogram(name: "shake128_ctx_release", scope: !71, file: !71, line: 797, type: !4437, scopeLine: 797, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{null, !4208}
!4439 = !DILocalVariable(name: "state", arg: 1, scope: !4436, file: !71, line: 797, type: !4208)
!4440 = !DILocation(line: 0, scope: !4436)
!4441 = !DILocation(line: 798, column: 17, scope: !4436)
!4442 = !DILocation(line: 798, column: 5, scope: !4436)
!4443 = !DILocation(line: 799, column: 1, scope: !4436)
!4444 = distinct !DISubprogram(name: "shake256_absorb", scope: !71, file: !71, line: 812, type: !4445, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{null, !4447, !257, !15}
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 32)
!4448 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256ctx", file: !71, line: 46, baseType: !4449)
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 44, size: 32, elements: !4450)
!4450 = !{!4451}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4449, file: !71, line: 45, baseType: !5, size: 32)
!4452 = !DILocalVariable(name: "state", arg: 1, scope: !4444, file: !71, line: 812, type: !4447)
!4453 = !DILocation(line: 0, scope: !4444)
!4454 = !DILocalVariable(name: "input", arg: 2, scope: !4444, file: !71, line: 812, type: !257)
!4455 = !DILocalVariable(name: "inlen", arg: 3, scope: !4444, file: !71, line: 812, type: !15)
!4456 = !DILocation(line: 813, column: 18, scope: !4444)
!4457 = !DILocation(line: 813, column: 16, scope: !4444)
!4458 = !DILocation(line: 814, column: 20, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4444, file: !71, line: 814, column: 9)
!4460 = !DILocation(line: 815, column: 9, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4459, file: !71, line: 814, column: 29)
!4462 = !DILocation(line: 816, column: 5, scope: !4461)
!4463 = !DILocation(line: 817, column: 26, scope: !4444)
!4464 = !DILocation(line: 817, column: 5, scope: !4444)
!4465 = !DILocation(line: 818, column: 1, scope: !4444)
!4466 = distinct !DISubprogram(name: "shake256_squeezeblocks", scope: !71, file: !71, line: 832, type: !4467, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{null, !11, !15, !4447}
!4469 = !DILocalVariable(name: "output", arg: 1, scope: !4466, file: !71, line: 832, type: !11)
!4470 = !DILocation(line: 0, scope: !4466)
!4471 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4466, file: !71, line: 832, type: !15)
!4472 = !DILocalVariable(name: "state", arg: 3, scope: !4466, file: !71, line: 832, type: !4447)
!4473 = !DILocation(line: 833, column: 50, scope: !4466)
!4474 = !DILocation(line: 833, column: 5, scope: !4466)
!4475 = !DILocation(line: 834, column: 1, scope: !4466)
!4476 = distinct !DISubprogram(name: "shake256_ctx_clone", scope: !71, file: !71, line: 836, type: !4477, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{null, !4447, !4479}
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 32)
!4480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4448)
!4481 = !DILocalVariable(name: "dest", arg: 1, scope: !4476, file: !71, line: 836, type: !4447)
!4482 = !DILocation(line: 0, scope: !4476)
!4483 = !DILocalVariable(name: "src", arg: 2, scope: !4476, file: !71, line: 836, type: !4479)
!4484 = !DILocation(line: 837, column: 17, scope: !4476)
!4485 = !DILocation(line: 837, column: 15, scope: !4476)
!4486 = !DILocation(line: 838, column: 19, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4476, file: !71, line: 838, column: 9)
!4488 = !DILocation(line: 839, column: 9, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4487, file: !71, line: 838, column: 28)
!4490 = !DILocation(line: 840, column: 5, scope: !4489)
!4491 = !DILocation(line: 841, column: 18, scope: !4476)
!4492 = !DILocation(line: 841, column: 28, scope: !4476)
!4493 = !DILocation(line: 841, column: 5, scope: !4476)
!4494 = !DILocation(line: 842, column: 1, scope: !4476)
!4495 = distinct !DISubprogram(name: "shake256_ctx_release", scope: !71, file: !71, line: 845, type: !4496, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{null, !4447}
!4498 = !DILocalVariable(name: "state", arg: 1, scope: !4495, file: !71, line: 845, type: !4447)
!4499 = !DILocation(line: 0, scope: !4495)
!4500 = !DILocation(line: 846, column: 17, scope: !4495)
!4501 = !DILocation(line: 846, column: 5, scope: !4495)
!4502 = !DILocation(line: 847, column: 1, scope: !4495)
!4503 = distinct !DISubprogram(name: "shake128", scope: !71, file: !71, line: 859, type: !4504, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{null, !11, !15, !257, !15}
!4506 = !DILocalVariable(name: "output", arg: 1, scope: !4503, file: !71, line: 859, type: !11)
!4507 = !DILocation(line: 0, scope: !4503)
!4508 = !DILocalVariable(name: "outlen", arg: 2, scope: !4503, file: !71, line: 859, type: !15)
!4509 = !DILocalVariable(name: "input", arg: 3, scope: !4503, file: !71, line: 860, type: !257)
!4510 = !DILocalVariable(name: "inlen", arg: 4, scope: !4503, file: !71, line: 860, type: !15)
!4511 = !DILocation(line: 861, column: 29, scope: !4503)
!4512 = !DILocalVariable(name: "nblocks", scope: !4503, file: !71, line: 861, type: !15)
!4513 = !DILocalVariable(name: "t", scope: !4503, file: !71, line: 862, type: !4514)
!4514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1344, elements: !4515)
!4515 = !{!4516}
!4516 = !DISubrange(count: 168)
!4517 = !DILocation(line: 862, column: 13, scope: !4503)
!4518 = !DILocalVariable(name: "s", scope: !4503, file: !71, line: 863, type: !4209)
!4519 = !DILocation(line: 863, column: 17, scope: !4503)
!4520 = !DILocation(line: 865, column: 5, scope: !4503)
!4521 = !DILocation(line: 866, column: 5, scope: !4503)
!4522 = !DILocation(line: 868, column: 23, scope: !4503)
!4523 = !DILocation(line: 868, column: 12, scope: !4503)
!4524 = !DILocation(line: 869, column: 23, scope: !4503)
!4525 = !DILocation(line: 869, column: 12, scope: !4503)
!4526 = !DILocation(line: 871, column: 9, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4503, file: !71, line: 871, column: 9)
!4528 = !DILocation(line: 872, column: 9, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4527, file: !71, line: 871, column: 17)
!4530 = !DILocalVariable(name: "i", scope: !4531, file: !71, line: 873, type: !15)
!4531 = distinct !DILexicalBlock(scope: !4529, file: !71, line: 873, column: 9)
!4532 = !DILocation(line: 0, scope: !4531)
!4533 = !DILocation(line: 873, column: 14, scope: !4531)
!4534 = !DILocation(line: 873, scope: !4531)
!4535 = !DILocation(line: 873, column: 30, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4531, file: !71, line: 873, column: 9)
!4537 = !DILocation(line: 873, column: 9, scope: !4531)
!4538 = !DILocation(line: 874, column: 25, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4536, file: !71, line: 873, column: 45)
!4540 = !DILocation(line: 874, column: 13, scope: !4539)
!4541 = !DILocation(line: 874, column: 23, scope: !4539)
!4542 = !DILocation(line: 873, column: 40, scope: !4536)
!4543 = !DILocation(line: 873, column: 9, scope: !4536)
!4544 = distinct !{!4544, !4537, !4545, !244}
!4545 = !DILocation(line: 875, column: 9, scope: !4531)
!4546 = !DILocation(line: 877, column: 5, scope: !4503)
!4547 = !DILocation(line: 878, column: 1, scope: !4503)
!4548 = distinct !DISubprogram(name: "shake256", scope: !71, file: !71, line: 890, type: !4504, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4549 = !DILocalVariable(name: "output", arg: 1, scope: !4548, file: !71, line: 890, type: !11)
!4550 = !DILocation(line: 0, scope: !4548)
!4551 = !DILocalVariable(name: "outlen", arg: 2, scope: !4548, file: !71, line: 890, type: !15)
!4552 = !DILocalVariable(name: "input", arg: 3, scope: !4548, file: !71, line: 891, type: !257)
!4553 = !DILocalVariable(name: "inlen", arg: 4, scope: !4548, file: !71, line: 891, type: !15)
!4554 = !DILocation(line: 892, column: 29, scope: !4548)
!4555 = !DILocalVariable(name: "nblocks", scope: !4548, file: !71, line: 892, type: !15)
!4556 = !DILocalVariable(name: "t", scope: !4548, file: !71, line: 893, type: !4557)
!4557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1088, elements: !4558)
!4558 = !{!4559}
!4559 = !DISubrange(count: 136)
!4560 = !DILocation(line: 893, column: 13, scope: !4548)
!4561 = !DILocalVariable(name: "s", scope: !4548, file: !71, line: 894, type: !4448)
!4562 = !DILocation(line: 894, column: 17, scope: !4548)
!4563 = !DILocation(line: 896, column: 5, scope: !4548)
!4564 = !DILocation(line: 897, column: 5, scope: !4548)
!4565 = !DILocation(line: 899, column: 23, scope: !4548)
!4566 = !DILocation(line: 899, column: 12, scope: !4548)
!4567 = !DILocation(line: 900, column: 23, scope: !4548)
!4568 = !DILocation(line: 900, column: 12, scope: !4548)
!4569 = !DILocation(line: 902, column: 9, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4548, file: !71, line: 902, column: 9)
!4571 = !DILocation(line: 903, column: 9, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4570, file: !71, line: 902, column: 17)
!4573 = !DILocalVariable(name: "i", scope: !4574, file: !71, line: 904, type: !15)
!4574 = distinct !DILexicalBlock(scope: !4572, file: !71, line: 904, column: 9)
!4575 = !DILocation(line: 0, scope: !4574)
!4576 = !DILocation(line: 904, column: 14, scope: !4574)
!4577 = !DILocation(line: 904, scope: !4574)
!4578 = !DILocation(line: 904, column: 30, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4574, file: !71, line: 904, column: 9)
!4580 = !DILocation(line: 904, column: 9, scope: !4574)
!4581 = !DILocation(line: 905, column: 25, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4579, file: !71, line: 904, column: 45)
!4583 = !DILocation(line: 905, column: 13, scope: !4582)
!4584 = !DILocation(line: 905, column: 23, scope: !4582)
!4585 = !DILocation(line: 904, column: 40, scope: !4579)
!4586 = !DILocation(line: 904, column: 9, scope: !4579)
!4587 = distinct !{!4587, !4580, !4588, !244}
!4588 = !DILocation(line: 906, column: 9, scope: !4574)
!4589 = !DILocation(line: 908, column: 5, scope: !4548)
!4590 = !DILocation(line: 909, column: 1, scope: !4548)
!4591 = distinct !DISubprogram(name: "sha3_256_inc_init", scope: !71, file: !71, line: 911, type: !4592, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{null, !4594}
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 32)
!4595 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_256incctx", file: !71, line: 51, baseType: !4596)
!4596 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 49, size: 32, elements: !4597)
!4597 = !{!4598}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4596, file: !71, line: 50, baseType: !5, size: 32)
!4599 = !DILocalVariable(name: "state", arg: 1, scope: !4591, file: !71, line: 911, type: !4594)
!4600 = !DILocation(line: 0, scope: !4591)
!4601 = !DILocation(line: 912, column: 18, scope: !4591)
!4602 = !DILocation(line: 912, column: 16, scope: !4591)
!4603 = !DILocation(line: 913, column: 20, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4591, file: !71, line: 913, column: 9)
!4605 = !DILocation(line: 914, column: 9, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4604, file: !71, line: 913, column: 29)
!4607 = !DILocation(line: 915, column: 5, scope: !4606)
!4608 = !DILocation(line: 916, column: 28, scope: !4591)
!4609 = !DILocation(line: 916, column: 5, scope: !4591)
!4610 = !DILocation(line: 917, column: 1, scope: !4591)
!4611 = distinct !DISubprogram(name: "sha3_256_inc_ctx_clone", scope: !71, file: !71, line: 919, type: !4612, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{null, !4594, !4614}
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 32)
!4615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4595)
!4616 = !DILocalVariable(name: "dest", arg: 1, scope: !4611, file: !71, line: 919, type: !4594)
!4617 = !DILocation(line: 0, scope: !4611)
!4618 = !DILocalVariable(name: "src", arg: 2, scope: !4611, file: !71, line: 919, type: !4614)
!4619 = !DILocation(line: 920, column: 17, scope: !4611)
!4620 = !DILocation(line: 920, column: 15, scope: !4611)
!4621 = !DILocation(line: 921, column: 19, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4611, file: !71, line: 921, column: 9)
!4623 = !DILocation(line: 922, column: 9, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4622, file: !71, line: 921, column: 28)
!4625 = !DILocation(line: 923, column: 5, scope: !4624)
!4626 = !DILocation(line: 924, column: 18, scope: !4611)
!4627 = !DILocation(line: 924, column: 28, scope: !4611)
!4628 = !DILocation(line: 924, column: 5, scope: !4611)
!4629 = !DILocation(line: 925, column: 1, scope: !4611)
!4630 = distinct !DISubprogram(name: "sha3_256_inc_ctx_release", scope: !71, file: !71, line: 927, type: !4592, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4631 = !DILocalVariable(name: "state", arg: 1, scope: !4630, file: !71, line: 927, type: !4594)
!4632 = !DILocation(line: 0, scope: !4630)
!4633 = !DILocation(line: 928, column: 17, scope: !4630)
!4634 = !DILocation(line: 928, column: 5, scope: !4630)
!4635 = !DILocation(line: 929, column: 1, scope: !4630)
!4636 = distinct !DISubprogram(name: "sha3_256_inc_absorb", scope: !71, file: !71, line: 931, type: !4637, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{null, !4594, !257, !15}
!4639 = !DILocalVariable(name: "state", arg: 1, scope: !4636, file: !71, line: 931, type: !4594)
!4640 = !DILocation(line: 0, scope: !4636)
!4641 = !DILocalVariable(name: "input", arg: 2, scope: !4636, file: !71, line: 931, type: !257)
!4642 = !DILocalVariable(name: "inlen", arg: 3, scope: !4636, file: !71, line: 931, type: !15)
!4643 = !DILocation(line: 932, column: 30, scope: !4636)
!4644 = !DILocation(line: 932, column: 5, scope: !4636)
!4645 = !DILocation(line: 933, column: 1, scope: !4636)
!4646 = distinct !DISubprogram(name: "sha3_256_inc_finalize", scope: !71, file: !71, line: 935, type: !4647, scopeLine: 935, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{null, !11, !4594}
!4649 = !DILocalVariable(name: "output", arg: 1, scope: !4646, file: !71, line: 935, type: !11)
!4650 = !DILocation(line: 0, scope: !4646)
!4651 = !DILocalVariable(name: "state", arg: 2, scope: !4646, file: !71, line: 935, type: !4594)
!4652 = !DILocalVariable(name: "t", scope: !4646, file: !71, line: 936, type: !4557)
!4653 = !DILocation(line: 936, column: 13, scope: !4646)
!4654 = !DILocation(line: 937, column: 32, scope: !4646)
!4655 = !DILocation(line: 937, column: 5, scope: !4646)
!4656 = !DILocation(line: 939, column: 39, scope: !4646)
!4657 = !DILocation(line: 939, column: 5, scope: !4646)
!4658 = !DILocation(line: 941, column: 5, scope: !4646)
!4659 = !DILocalVariable(name: "i", scope: !4660, file: !71, line: 943, type: !15)
!4660 = distinct !DILexicalBlock(scope: !4646, file: !71, line: 943, column: 5)
!4661 = !DILocation(line: 0, scope: !4660)
!4662 = !DILocation(line: 943, column: 10, scope: !4660)
!4663 = !DILocation(line: 943, scope: !4660)
!4664 = !DILocation(line: 943, column: 26, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4660, file: !71, line: 943, column: 5)
!4666 = !DILocation(line: 943, column: 5, scope: !4660)
!4667 = !DILocation(line: 944, column: 21, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4665, file: !71, line: 943, column: 37)
!4669 = !DILocation(line: 944, column: 9, scope: !4668)
!4670 = !DILocation(line: 944, column: 19, scope: !4668)
!4671 = !DILocation(line: 943, column: 33, scope: !4665)
!4672 = !DILocation(line: 943, column: 5, scope: !4665)
!4673 = distinct !{!4673, !4666, !4674, !244}
!4674 = !DILocation(line: 945, column: 5, scope: !4660)
!4675 = !DILocation(line: 946, column: 1, scope: !4646)
!4676 = distinct !DISubprogram(name: "sha3_256", scope: !71, file: !71, line: 957, type: !4677, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{null, !11, !257, !15}
!4679 = !DILocalVariable(name: "output", arg: 1, scope: !4676, file: !71, line: 957, type: !11)
!4680 = !DILocation(line: 0, scope: !4676)
!4681 = !DILocalVariable(name: "input", arg: 2, scope: !4676, file: !71, line: 957, type: !257)
!4682 = !DILocalVariable(name: "inlen", arg: 3, scope: !4676, file: !71, line: 957, type: !15)
!4683 = !DILocalVariable(name: "s", scope: !4676, file: !71, line: 958, type: !4684)
!4684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1600, elements: !4685)
!4685 = !{!4686}
!4686 = !DISubrange(count: 25)
!4687 = !DILocation(line: 958, column: 14, scope: !4676)
!4688 = !DILocalVariable(name: "t", scope: !4676, file: !71, line: 959, type: !4557)
!4689 = !DILocation(line: 959, column: 13, scope: !4676)
!4690 = !DILocation(line: 962, column: 5, scope: !4676)
!4691 = !DILocation(line: 965, column: 5, scope: !4676)
!4692 = !DILocalVariable(name: "i", scope: !4693, file: !71, line: 967, type: !15)
!4693 = distinct !DILexicalBlock(scope: !4676, file: !71, line: 967, column: 5)
!4694 = !DILocation(line: 0, scope: !4693)
!4695 = !DILocation(line: 967, column: 10, scope: !4693)
!4696 = !DILocation(line: 967, scope: !4693)
!4697 = !DILocation(line: 967, column: 26, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4693, file: !71, line: 967, column: 5)
!4699 = !DILocation(line: 967, column: 5, scope: !4693)
!4700 = !DILocation(line: 968, column: 21, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4698, file: !71, line: 967, column: 37)
!4702 = !DILocation(line: 968, column: 9, scope: !4701)
!4703 = !DILocation(line: 968, column: 19, scope: !4701)
!4704 = !DILocation(line: 967, column: 33, scope: !4698)
!4705 = !DILocation(line: 967, column: 5, scope: !4698)
!4706 = distinct !{!4706, !4699, !4707, !244}
!4707 = !DILocation(line: 969, column: 5, scope: !4693)
!4708 = !DILocation(line: 970, column: 1, scope: !4676)
!4709 = distinct !DISubprogram(name: "sha3_384_inc_init", scope: !71, file: !71, line: 972, type: !4710, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{null, !4712}
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 32)
!4713 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_384incctx", file: !71, line: 56, baseType: !4714)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 54, size: 32, elements: !4715)
!4715 = !{!4716}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4714, file: !71, line: 55, baseType: !5, size: 32)
!4717 = !DILocalVariable(name: "state", arg: 1, scope: !4709, file: !71, line: 972, type: !4712)
!4718 = !DILocation(line: 0, scope: !4709)
!4719 = !DILocation(line: 973, column: 18, scope: !4709)
!4720 = !DILocation(line: 973, column: 16, scope: !4709)
!4721 = !DILocation(line: 974, column: 20, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4709, file: !71, line: 974, column: 9)
!4723 = !DILocation(line: 975, column: 9, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4722, file: !71, line: 974, column: 29)
!4725 = !DILocation(line: 976, column: 5, scope: !4724)
!4726 = !DILocation(line: 977, column: 28, scope: !4709)
!4727 = !DILocation(line: 977, column: 5, scope: !4709)
!4728 = !DILocation(line: 978, column: 1, scope: !4709)
!4729 = distinct !DISubprogram(name: "sha3_384_inc_ctx_clone", scope: !71, file: !71, line: 980, type: !4730, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{null, !4712, !4732}
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 32)
!4733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4713)
!4734 = !DILocalVariable(name: "dest", arg: 1, scope: !4729, file: !71, line: 980, type: !4712)
!4735 = !DILocation(line: 0, scope: !4729)
!4736 = !DILocalVariable(name: "src", arg: 2, scope: !4729, file: !71, line: 980, type: !4732)
!4737 = !DILocation(line: 981, column: 17, scope: !4729)
!4738 = !DILocation(line: 981, column: 15, scope: !4729)
!4739 = !DILocation(line: 982, column: 19, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4729, file: !71, line: 982, column: 9)
!4741 = !DILocation(line: 983, column: 9, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4740, file: !71, line: 982, column: 28)
!4743 = !DILocation(line: 984, column: 5, scope: !4742)
!4744 = !DILocation(line: 985, column: 18, scope: !4729)
!4745 = !DILocation(line: 985, column: 28, scope: !4729)
!4746 = !DILocation(line: 985, column: 5, scope: !4729)
!4747 = !DILocation(line: 986, column: 1, scope: !4729)
!4748 = distinct !DISubprogram(name: "sha3_384_inc_absorb", scope: !71, file: !71, line: 988, type: !4749, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{null, !4712, !257, !15}
!4751 = !DILocalVariable(name: "state", arg: 1, scope: !4748, file: !71, line: 988, type: !4712)
!4752 = !DILocation(line: 0, scope: !4748)
!4753 = !DILocalVariable(name: "input", arg: 2, scope: !4748, file: !71, line: 988, type: !257)
!4754 = !DILocalVariable(name: "inlen", arg: 3, scope: !4748, file: !71, line: 988, type: !15)
!4755 = !DILocation(line: 989, column: 30, scope: !4748)
!4756 = !DILocation(line: 989, column: 5, scope: !4748)
!4757 = !DILocation(line: 990, column: 1, scope: !4748)
!4758 = distinct !DISubprogram(name: "sha3_384_inc_ctx_release", scope: !71, file: !71, line: 992, type: !4710, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4759 = !DILocalVariable(name: "state", arg: 1, scope: !4758, file: !71, line: 992, type: !4712)
!4760 = !DILocation(line: 0, scope: !4758)
!4761 = !DILocation(line: 993, column: 17, scope: !4758)
!4762 = !DILocation(line: 993, column: 5, scope: !4758)
!4763 = !DILocation(line: 994, column: 1, scope: !4758)
!4764 = distinct !DISubprogram(name: "sha3_384_inc_finalize", scope: !71, file: !71, line: 996, type: !4765, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{null, !11, !4712}
!4767 = !DILocalVariable(name: "output", arg: 1, scope: !4764, file: !71, line: 996, type: !11)
!4768 = !DILocation(line: 0, scope: !4764)
!4769 = !DILocalVariable(name: "state", arg: 2, scope: !4764, file: !71, line: 996, type: !4712)
!4770 = !DILocalVariable(name: "t", scope: !4764, file: !71, line: 997, type: !4771)
!4771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 832, elements: !4772)
!4772 = !{!4773}
!4773 = !DISubrange(count: 104)
!4774 = !DILocation(line: 997, column: 13, scope: !4764)
!4775 = !DILocation(line: 998, column: 32, scope: !4764)
!4776 = !DILocation(line: 998, column: 5, scope: !4764)
!4777 = !DILocation(line: 1000, column: 39, scope: !4764)
!4778 = !DILocation(line: 1000, column: 5, scope: !4764)
!4779 = !DILocation(line: 1002, column: 5, scope: !4764)
!4780 = !DILocalVariable(name: "i", scope: !4781, file: !71, line: 1004, type: !15)
!4781 = distinct !DILexicalBlock(scope: !4764, file: !71, line: 1004, column: 5)
!4782 = !DILocation(line: 0, scope: !4781)
!4783 = !DILocation(line: 1004, column: 10, scope: !4781)
!4784 = !DILocation(line: 1004, scope: !4781)
!4785 = !DILocation(line: 1004, column: 26, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4781, file: !71, line: 1004, column: 5)
!4787 = !DILocation(line: 1004, column: 5, scope: !4781)
!4788 = !DILocation(line: 1005, column: 21, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4786, file: !71, line: 1004, column: 37)
!4790 = !DILocation(line: 1005, column: 9, scope: !4789)
!4791 = !DILocation(line: 1005, column: 19, scope: !4789)
!4792 = !DILocation(line: 1004, column: 33, scope: !4786)
!4793 = !DILocation(line: 1004, column: 5, scope: !4786)
!4794 = distinct !{!4794, !4787, !4795, !244}
!4795 = !DILocation(line: 1006, column: 5, scope: !4781)
!4796 = !DILocation(line: 1007, column: 1, scope: !4764)
!4797 = distinct !DISubprogram(name: "sha3_384", scope: !71, file: !71, line: 1018, type: !4677, scopeLine: 1018, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4798 = !DILocalVariable(name: "output", arg: 1, scope: !4797, file: !71, line: 1018, type: !11)
!4799 = !DILocation(line: 0, scope: !4797)
!4800 = !DILocalVariable(name: "input", arg: 2, scope: !4797, file: !71, line: 1018, type: !257)
!4801 = !DILocalVariable(name: "inlen", arg: 3, scope: !4797, file: !71, line: 1018, type: !15)
!4802 = !DILocalVariable(name: "s", scope: !4797, file: !71, line: 1019, type: !4684)
!4803 = !DILocation(line: 1019, column: 14, scope: !4797)
!4804 = !DILocalVariable(name: "t", scope: !4797, file: !71, line: 1020, type: !4771)
!4805 = !DILocation(line: 1020, column: 13, scope: !4797)
!4806 = !DILocation(line: 1023, column: 5, scope: !4797)
!4807 = !DILocation(line: 1026, column: 5, scope: !4797)
!4808 = !DILocalVariable(name: "i", scope: !4809, file: !71, line: 1028, type: !15)
!4809 = distinct !DILexicalBlock(scope: !4797, file: !71, line: 1028, column: 5)
!4810 = !DILocation(line: 0, scope: !4809)
!4811 = !DILocation(line: 1028, column: 10, scope: !4809)
!4812 = !DILocation(line: 1028, scope: !4809)
!4813 = !DILocation(line: 1028, column: 26, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4809, file: !71, line: 1028, column: 5)
!4815 = !DILocation(line: 1028, column: 5, scope: !4809)
!4816 = !DILocation(line: 1029, column: 21, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4814, file: !71, line: 1028, column: 37)
!4818 = !DILocation(line: 1029, column: 9, scope: !4817)
!4819 = !DILocation(line: 1029, column: 19, scope: !4817)
!4820 = !DILocation(line: 1028, column: 33, scope: !4814)
!4821 = !DILocation(line: 1028, column: 5, scope: !4814)
!4822 = distinct !{!4822, !4815, !4823, !244}
!4823 = !DILocation(line: 1030, column: 5, scope: !4809)
!4824 = !DILocation(line: 1031, column: 1, scope: !4797)
!4825 = distinct !DISubprogram(name: "sha3_512_inc_init", scope: !71, file: !71, line: 1033, type: !4826, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{null, !4828}
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 32)
!4829 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_512incctx", file: !71, line: 61, baseType: !4830)
!4830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 59, size: 32, elements: !4831)
!4831 = !{!4832}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4830, file: !71, line: 60, baseType: !5, size: 32)
!4833 = !DILocalVariable(name: "state", arg: 1, scope: !4825, file: !71, line: 1033, type: !4828)
!4834 = !DILocation(line: 0, scope: !4825)
!4835 = !DILocation(line: 1034, column: 18, scope: !4825)
!4836 = !DILocation(line: 1034, column: 16, scope: !4825)
!4837 = !DILocation(line: 1035, column: 20, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4825, file: !71, line: 1035, column: 9)
!4839 = !DILocation(line: 1036, column: 9, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4838, file: !71, line: 1035, column: 29)
!4841 = !DILocation(line: 1037, column: 5, scope: !4840)
!4842 = !DILocation(line: 1038, column: 28, scope: !4825)
!4843 = !DILocation(line: 1038, column: 5, scope: !4825)
!4844 = !DILocation(line: 1039, column: 1, scope: !4825)
!4845 = distinct !DISubprogram(name: "sha3_512_inc_ctx_clone", scope: !71, file: !71, line: 1041, type: !4846, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{null, !4828, !4848}
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 32)
!4849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4829)
!4850 = !DILocalVariable(name: "dest", arg: 1, scope: !4845, file: !71, line: 1041, type: !4828)
!4851 = !DILocation(line: 0, scope: !4845)
!4852 = !DILocalVariable(name: "src", arg: 2, scope: !4845, file: !71, line: 1041, type: !4848)
!4853 = !DILocation(line: 1042, column: 17, scope: !4845)
!4854 = !DILocation(line: 1042, column: 15, scope: !4845)
!4855 = !DILocation(line: 1043, column: 19, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4845, file: !71, line: 1043, column: 9)
!4857 = !DILocation(line: 1044, column: 9, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4856, file: !71, line: 1043, column: 28)
!4859 = !DILocation(line: 1045, column: 5, scope: !4858)
!4860 = !DILocation(line: 1046, column: 18, scope: !4845)
!4861 = !DILocation(line: 1046, column: 28, scope: !4845)
!4862 = !DILocation(line: 1046, column: 5, scope: !4845)
!4863 = !DILocation(line: 1047, column: 1, scope: !4845)
!4864 = distinct !DISubprogram(name: "sha3_512_inc_absorb", scope: !71, file: !71, line: 1049, type: !4865, scopeLine: 1049, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{null, !4828, !257, !15}
!4867 = !DILocalVariable(name: "state", arg: 1, scope: !4864, file: !71, line: 1049, type: !4828)
!4868 = !DILocation(line: 0, scope: !4864)
!4869 = !DILocalVariable(name: "input", arg: 2, scope: !4864, file: !71, line: 1049, type: !257)
!4870 = !DILocalVariable(name: "inlen", arg: 3, scope: !4864, file: !71, line: 1049, type: !15)
!4871 = !DILocation(line: 1050, column: 30, scope: !4864)
!4872 = !DILocation(line: 1050, column: 5, scope: !4864)
!4873 = !DILocation(line: 1051, column: 1, scope: !4864)
!4874 = distinct !DISubprogram(name: "sha3_512_inc_ctx_release", scope: !71, file: !71, line: 1053, type: !4826, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4875 = !DILocalVariable(name: "state", arg: 1, scope: !4874, file: !71, line: 1053, type: !4828)
!4876 = !DILocation(line: 0, scope: !4874)
!4877 = !DILocation(line: 1054, column: 17, scope: !4874)
!4878 = !DILocation(line: 1054, column: 5, scope: !4874)
!4879 = !DILocation(line: 1055, column: 1, scope: !4874)
!4880 = distinct !DISubprogram(name: "sha3_512_inc_finalize", scope: !71, file: !71, line: 1057, type: !4881, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{null, !11, !4828}
!4883 = !DILocalVariable(name: "output", arg: 1, scope: !4880, file: !71, line: 1057, type: !11)
!4884 = !DILocation(line: 0, scope: !4880)
!4885 = !DILocalVariable(name: "state", arg: 2, scope: !4880, file: !71, line: 1057, type: !4828)
!4886 = !DILocalVariable(name: "t", scope: !4880, file: !71, line: 1058, type: !4887)
!4887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 576, elements: !4888)
!4888 = !{!4889}
!4889 = !DISubrange(count: 72)
!4890 = !DILocation(line: 1058, column: 13, scope: !4880)
!4891 = !DILocation(line: 1059, column: 32, scope: !4880)
!4892 = !DILocation(line: 1059, column: 5, scope: !4880)
!4893 = !DILocation(line: 1061, column: 39, scope: !4880)
!4894 = !DILocation(line: 1061, column: 5, scope: !4880)
!4895 = !DILocation(line: 1063, column: 5, scope: !4880)
!4896 = !DILocalVariable(name: "i", scope: !4897, file: !71, line: 1065, type: !15)
!4897 = distinct !DILexicalBlock(scope: !4880, file: !71, line: 1065, column: 5)
!4898 = !DILocation(line: 0, scope: !4897)
!4899 = !DILocation(line: 1065, column: 10, scope: !4897)
!4900 = !DILocation(line: 1065, scope: !4897)
!4901 = !DILocation(line: 1065, column: 26, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4897, file: !71, line: 1065, column: 5)
!4903 = !DILocation(line: 1065, column: 5, scope: !4897)
!4904 = !DILocation(line: 1066, column: 21, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4902, file: !71, line: 1065, column: 37)
!4906 = !DILocation(line: 1066, column: 9, scope: !4905)
!4907 = !DILocation(line: 1066, column: 19, scope: !4905)
!4908 = !DILocation(line: 1065, column: 33, scope: !4902)
!4909 = !DILocation(line: 1065, column: 5, scope: !4902)
!4910 = distinct !{!4910, !4903, !4911, !244}
!4911 = !DILocation(line: 1067, column: 5, scope: !4897)
!4912 = !DILocation(line: 1068, column: 1, scope: !4880)
!4913 = distinct !DISubprogram(name: "sha3_512", scope: !71, file: !71, line: 1079, type: !4677, scopeLine: 1079, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4914 = !DILocalVariable(name: "output", arg: 1, scope: !4913, file: !71, line: 1079, type: !11)
!4915 = !DILocation(line: 0, scope: !4913)
!4916 = !DILocalVariable(name: "input", arg: 2, scope: !4913, file: !71, line: 1079, type: !257)
!4917 = !DILocalVariable(name: "inlen", arg: 3, scope: !4913, file: !71, line: 1079, type: !15)
!4918 = !DILocalVariable(name: "s", scope: !4913, file: !71, line: 1080, type: !4684)
!4919 = !DILocation(line: 1080, column: 14, scope: !4913)
!4920 = !DILocalVariable(name: "t", scope: !4913, file: !71, line: 1081, type: !4887)
!4921 = !DILocation(line: 1081, column: 13, scope: !4913)
!4922 = !DILocation(line: 1084, column: 5, scope: !4913)
!4923 = !DILocation(line: 1087, column: 5, scope: !4913)
!4924 = !DILocalVariable(name: "i", scope: !4925, file: !71, line: 1089, type: !15)
!4925 = distinct !DILexicalBlock(scope: !4913, file: !71, line: 1089, column: 5)
!4926 = !DILocation(line: 0, scope: !4925)
!4927 = !DILocation(line: 1089, column: 10, scope: !4925)
!4928 = !DILocation(line: 1089, scope: !4925)
!4929 = !DILocation(line: 1089, column: 26, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4925, file: !71, line: 1089, column: 5)
!4931 = !DILocation(line: 1089, column: 5, scope: !4925)
!4932 = !DILocation(line: 1090, column: 21, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4930, file: !71, line: 1089, column: 37)
!4934 = !DILocation(line: 1090, column: 9, scope: !4933)
!4935 = !DILocation(line: 1090, column: 19, scope: !4933)
!4936 = !DILocation(line: 1089, column: 33, scope: !4930)
!4937 = !DILocation(line: 1089, column: 5, scope: !4930)
!4938 = distinct !{!4938, !4931, !4939, !244}
!4939 = !DILocation(line: 1091, column: 5, scope: !4925)
!4940 = !DILocation(line: 1092, column: 1, scope: !4913)
!4941 = distinct !DISubprogram(name: "aes128_ecb_keyexp", scope: !80, file: !80, line: 635, type: !4942, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4942 = !DISubroutineType(types: !4943)
!4943 = !{null, !4944, !49}
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 32)
!4945 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes128ctx", file: !80, line: 46, baseType: !4946)
!4946 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 44, size: 32, elements: !4947)
!4947 = !{!4948}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !4946, file: !80, line: 45, baseType: !5, size: 32)
!4949 = !DILocalVariable(name: "r", arg: 1, scope: !4941, file: !80, line: 635, type: !4944)
!4950 = !DILocation(line: 0, scope: !4941)
!4951 = !DILocalVariable(name: "key", arg: 2, scope: !4941, file: !80, line: 635, type: !49)
!4952 = !DILocalVariable(name: "skey", scope: !4941, file: !80, line: 636, type: !4953)
!4953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1408, elements: !4954)
!4954 = !{!4955}
!4955 = !DISubrange(count: 22)
!4956 = !DILocation(line: 636, column: 14, scope: !4941)
!4957 = !DILocation(line: 638, column: 17, scope: !4941)
!4958 = !DILocation(line: 638, column: 15, scope: !4941)
!4959 = !DILocation(line: 639, column: 19, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4941, file: !80, line: 639, column: 9)
!4961 = !DILocation(line: 640, column: 9, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4960, file: !80, line: 639, column: 28)
!4963 = !DILocation(line: 641, column: 5, scope: !4962)
!4964 = !DILocation(line: 643, column: 5, scope: !4941)
!4965 = !DILocation(line: 644, column: 32, scope: !4941)
!4966 = !DILocation(line: 644, column: 5, scope: !4941)
!4967 = !DILocation(line: 645, column: 1, scope: !4941)
!4968 = distinct !DISubprogram(name: "br_aes_ct64_keysched", scope: !80, file: !80, line: 403, type: !4969, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{null, !5, !49, !17}
!4971 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !4968, file: !80, line: 403, type: !5)
!4972 = !DILocation(line: 0, scope: !4968)
!4973 = !DILocalVariable(name: "key", arg: 2, scope: !4968, file: !80, line: 403, type: !49)
!4974 = !DILocalVariable(name: "key_len", arg: 3, scope: !4968, file: !80, line: 403, type: !17)
!4975 = !DILocalVariable(name: "skey", scope: !4968, file: !80, line: 406, type: !4976)
!4976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1920, elements: !4977)
!4977 = !{!4978}
!4978 = !DISubrange(count: 60)
!4979 = !DILocation(line: 406, column: 14, scope: !4968)
!4980 = !DILocation(line: 410, column: 26, scope: !4968)
!4981 = !DILocalVariable(name: "nrounds", scope: !4968, file: !80, line: 407, type: !17)
!4982 = !DILocation(line: 409, column: 19, scope: !4968)
!4983 = !DILocalVariable(name: "nk", scope: !4968, file: !80, line: 404, type: !17)
!4984 = !DILocalVariable(name: "nkf", scope: !4968, file: !80, line: 404, type: !17)
!4985 = !DILocation(line: 411, column: 37, scope: !4968)
!4986 = !DILocation(line: 411, column: 5, scope: !4968)
!4987 = !DILocation(line: 412, column: 25, scope: !4968)
!4988 = !DILocation(line: 412, column: 31, scope: !4968)
!4989 = !DILocation(line: 412, column: 11, scope: !4968)
!4990 = !DILocalVariable(name: "tmp", scope: !4968, file: !80, line: 405, type: !19)
!4991 = !DILocalVariable(name: "i", scope: !4968, file: !80, line: 404, type: !17)
!4992 = !DILocalVariable(name: "j", scope: !4968, file: !80, line: 404, type: !17)
!4993 = !DILocalVariable(name: "k", scope: !4968, file: !80, line: 404, type: !17)
!4994 = !DILocation(line: 413, column: 10, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4968, file: !80, line: 413, column: 5)
!4996 = !DILocation(line: 413, scope: !4995)
!4997 = !DILocation(line: 0, scope: !4995)
!4998 = !DILocation(line: 413, column: 34, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4995, file: !80, line: 413, column: 5)
!5000 = !DILocation(line: 413, column: 5, scope: !4995)
!5001 = !DILocation(line: 428, column: 5, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4968, file: !80, line: 428, column: 5)
!5003 = !DILocation(line: 414, column: 15, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !5005, file: !80, line: 414, column: 13)
!5005 = distinct !DILexicalBlock(scope: !4999, file: !80, line: 413, column: 47)
!5006 = !DILocation(line: 415, column: 31, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !5004, file: !80, line: 414, column: 21)
!5008 = !DILocation(line: 416, column: 19, scope: !5007)
!5009 = !DILocation(line: 416, column: 35, scope: !5007)
!5010 = !DILocation(line: 416, column: 33, scope: !5007)
!5011 = !DILocation(line: 417, column: 9, scope: !5007)
!5012 = !DILocation(line: 417, column: 23, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5004, file: !80, line: 417, column: 20)
!5014 = !DILocation(line: 417, column: 27, scope: !5013)
!5015 = !DILocation(line: 418, column: 19, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5013, file: !80, line: 417, column: 38)
!5017 = !DILocation(line: 419, column: 9, scope: !5016)
!5018 = !DILocation(line: 0, scope: !5004)
!5019 = !DILocation(line: 420, column: 23, scope: !5005)
!5020 = !DILocation(line: 420, column: 16, scope: !5005)
!5021 = !DILocation(line: 420, column: 13, scope: !5005)
!5022 = !DILocation(line: 421, column: 9, scope: !5005)
!5023 = !DILocation(line: 421, column: 17, scope: !5005)
!5024 = !DILocation(line: 422, column: 13, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5005, file: !80, line: 422, column: 13)
!5026 = !DILocation(line: 422, column: 18, scope: !5025)
!5027 = !DILocation(line: 413, column: 43, scope: !4999)
!5028 = !DILocation(line: 413, column: 5, scope: !4999)
!5029 = distinct !{!5029, !5000, !5030, !244}
!5030 = !DILocation(line: 426, column: 5, scope: !4995)
!5031 = !DILocation(line: 428, scope: !5002)
!5032 = !DILocation(line: 428, column: 26, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5002, file: !80, line: 428, column: 5)
!5034 = !DILocalVariable(name: "q", scope: !5035, file: !80, line: 429, type: !5036)
!5035 = distinct !DILexicalBlock(scope: !5033, file: !80, line: 428, column: 49)
!5036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !5037)
!5037 = !{!5038}
!5038 = !DISubrange(count: 8)
!5039 = !DILocation(line: 429, column: 18, scope: !5035)
!5040 = !DILocation(line: 431, column: 43, scope: !5035)
!5041 = !DILocation(line: 431, column: 54, scope: !5035)
!5042 = !DILocation(line: 431, column: 9, scope: !5035)
!5043 = !DILocation(line: 432, column: 16, scope: !5035)
!5044 = !DILocation(line: 432, column: 9, scope: !5035)
!5045 = !DILocation(line: 432, column: 14, scope: !5035)
!5046 = !DILocation(line: 433, column: 9, scope: !5035)
!5047 = !DILocation(line: 433, column: 14, scope: !5035)
!5048 = !DILocation(line: 434, column: 9, scope: !5035)
!5049 = !DILocation(line: 434, column: 14, scope: !5035)
!5050 = !DILocation(line: 435, column: 16, scope: !5035)
!5051 = !DILocation(line: 435, column: 9, scope: !5035)
!5052 = !DILocation(line: 435, column: 14, scope: !5035)
!5053 = !DILocation(line: 436, column: 9, scope: !5035)
!5054 = !DILocation(line: 436, column: 14, scope: !5035)
!5055 = !DILocation(line: 437, column: 9, scope: !5035)
!5056 = !DILocation(line: 437, column: 14, scope: !5035)
!5057 = !DILocation(line: 438, column: 9, scope: !5035)
!5058 = !DILocation(line: 440, column: 14, scope: !5035)
!5059 = !DILocation(line: 440, column: 19, scope: !5035)
!5060 = !DILocation(line: 441, column: 16, scope: !5035)
!5061 = !DILocation(line: 441, column: 21, scope: !5035)
!5062 = !DILocation(line: 441, column: 13, scope: !5035)
!5063 = !DILocation(line: 442, column: 16, scope: !5035)
!5064 = !DILocation(line: 442, column: 21, scope: !5035)
!5065 = !DILocation(line: 442, column: 13, scope: !5035)
!5066 = !DILocation(line: 443, column: 16, scope: !5035)
!5067 = !DILocation(line: 443, column: 21, scope: !5035)
!5068 = !DILocation(line: 443, column: 13, scope: !5035)
!5069 = !DILocation(line: 439, column: 9, scope: !5035)
!5070 = !DILocation(line: 439, column: 26, scope: !5035)
!5071 = !DILocation(line: 445, column: 14, scope: !5035)
!5072 = !DILocation(line: 445, column: 19, scope: !5035)
!5073 = !DILocation(line: 446, column: 16, scope: !5035)
!5074 = !DILocation(line: 446, column: 21, scope: !5035)
!5075 = !DILocation(line: 446, column: 13, scope: !5035)
!5076 = !DILocation(line: 447, column: 16, scope: !5035)
!5077 = !DILocation(line: 447, column: 21, scope: !5035)
!5078 = !DILocation(line: 447, column: 13, scope: !5035)
!5079 = !DILocation(line: 448, column: 16, scope: !5035)
!5080 = !DILocation(line: 448, column: 21, scope: !5035)
!5081 = !DILocation(line: 448, column: 13, scope: !5035)
!5082 = !DILocation(line: 444, column: 21, scope: !5035)
!5083 = !DILocation(line: 444, column: 9, scope: !5035)
!5084 = !DILocation(line: 444, column: 26, scope: !5035)
!5085 = !DILocation(line: 428, column: 35, scope: !5033)
!5086 = !DILocation(line: 428, column: 43, scope: !5033)
!5087 = !DILocation(line: 428, column: 5, scope: !5033)
!5088 = distinct !{!5088, !5001, !5089, !244}
!5089 = !DILocation(line: 449, column: 5, scope: !5002)
!5090 = !DILocation(line: 450, column: 1, scope: !4968)
!5091 = distinct !DISubprogram(name: "br_aes_ct64_skey_expand", scope: !80, file: !80, line: 452, type: !5092, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{null, !5, !428, !17}
!5094 = !DILocalVariable(name: "skey", arg: 1, scope: !5091, file: !80, line: 452, type: !5)
!5095 = !DILocation(line: 0, scope: !5091)
!5096 = !DILocalVariable(name: "comp_skey", arg: 2, scope: !5091, file: !80, line: 452, type: !428)
!5097 = !DILocalVariable(name: "nrounds", arg: 3, scope: !5091, file: !80, line: 452, type: !17)
!5098 = !DILocation(line: 455, column: 23, scope: !5091)
!5099 = !DILocalVariable(name: "n", scope: !5091, file: !80, line: 453, type: !17)
!5100 = !DILocalVariable(name: "u", scope: !5091, file: !80, line: 453, type: !17)
!5101 = !DILocalVariable(name: "v", scope: !5091, file: !80, line: 453, type: !17)
!5102 = !DILocation(line: 456, column: 10, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5091, file: !80, line: 456, column: 5)
!5104 = !DILocation(line: 456, scope: !5103)
!5105 = !DILocation(line: 456, column: 26, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5103, file: !80, line: 456, column: 5)
!5107 = !DILocation(line: 456, column: 5, scope: !5103)
!5108 = !DILocation(line: 459, column: 29, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5106, file: !80, line: 456, column: 45)
!5110 = !DILocalVariable(name: "x3", scope: !5109, file: !80, line: 457, type: !6)
!5111 = !DILocation(line: 0, scope: !5109)
!5112 = !DILocalVariable(name: "x2", scope: !5109, file: !80, line: 457, type: !6)
!5113 = !DILocalVariable(name: "x1", scope: !5109, file: !80, line: 457, type: !6)
!5114 = !DILocalVariable(name: "x0", scope: !5109, file: !80, line: 457, type: !6)
!5115 = !DILocation(line: 460, column: 12, scope: !5109)
!5116 = !DILocation(line: 464, column: 12, scope: !5109)
!5117 = !DILocation(line: 465, column: 12, scope: !5109)
!5118 = !DILocation(line: 466, column: 12, scope: !5109)
!5119 = !DILocation(line: 467, column: 33, scope: !5109)
!5120 = !DILocation(line: 467, column: 9, scope: !5109)
!5121 = !DILocation(line: 467, column: 21, scope: !5109)
!5122 = !DILocation(line: 468, column: 33, scope: !5109)
!5123 = !DILocation(line: 468, column: 16, scope: !5109)
!5124 = !DILocation(line: 468, column: 9, scope: !5109)
!5125 = !DILocation(line: 468, column: 21, scope: !5109)
!5126 = !DILocation(line: 469, column: 33, scope: !5109)
!5127 = !DILocation(line: 469, column: 16, scope: !5109)
!5128 = !DILocation(line: 469, column: 9, scope: !5109)
!5129 = !DILocation(line: 469, column: 21, scope: !5109)
!5130 = !DILocation(line: 470, column: 33, scope: !5109)
!5131 = !DILocation(line: 470, column: 16, scope: !5109)
!5132 = !DILocation(line: 470, column: 9, scope: !5109)
!5133 = !DILocation(line: 470, column: 21, scope: !5109)
!5134 = !DILocation(line: 456, column: 33, scope: !5106)
!5135 = !DILocation(line: 456, column: 39, scope: !5106)
!5136 = !DILocation(line: 456, column: 5, scope: !5106)
!5137 = distinct !{!5137, !5107, !5138, !244}
!5138 = !DILocation(line: 471, column: 5, scope: !5103)
!5139 = !DILocation(line: 472, column: 1, scope: !5091)
!5140 = distinct !DISubprogram(name: "br_range_dec32le", scope: !80, file: !80, line: 104, type: !5141, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{null, !5143, !15, !49}
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!5144 = !DILocalVariable(name: "v", arg: 1, scope: !5140, file: !80, line: 104, type: !5143)
!5145 = !DILocation(line: 0, scope: !5140)
!5146 = !DILocalVariable(name: "num", arg: 2, scope: !5140, file: !80, line: 104, type: !15)
!5147 = !DILocalVariable(name: "src", arg: 3, scope: !5140, file: !80, line: 104, type: !49)
!5148 = !DILocation(line: 105, column: 5, scope: !5140)
!5149 = !DILocation(line: 105, column: 18, scope: !5140)
!5150 = !DILocation(line: 105, column: 15, scope: !5140)
!5151 = !DILocation(line: 106, column: 17, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5140, file: !80, line: 105, column: 23)
!5153 = !DILocation(line: 106, column: 12, scope: !5152)
!5154 = !DILocation(line: 106, column: 15, scope: !5152)
!5155 = !DILocation(line: 107, column: 13, scope: !5152)
!5156 = distinct !{!5156, !5148, !5157, !244}
!5157 = !DILocation(line: 108, column: 5, scope: !5140)
!5158 = !DILocation(line: 109, column: 1, scope: !5140)
!5159 = distinct !DISubprogram(name: "sub_word", scope: !80, file: !80, line: 392, type: !5160, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5160 = !DISubroutineType(types: !5161)
!5161 = !{!19, !19}
!5162 = !DILocalVariable(name: "x", arg: 1, scope: !5159, file: !80, line: 392, type: !19)
!5163 = !DILocation(line: 0, scope: !5159)
!5164 = !DILocalVariable(name: "q", scope: !5159, file: !80, line: 393, type: !5036)
!5165 = !DILocation(line: 393, column: 14, scope: !5159)
!5166 = !DILocation(line: 395, column: 5, scope: !5159)
!5167 = !DILocation(line: 396, column: 12, scope: !5159)
!5168 = !DILocation(line: 396, column: 10, scope: !5159)
!5169 = !DILocation(line: 397, column: 5, scope: !5159)
!5170 = !DILocation(line: 398, column: 5, scope: !5159)
!5171 = !DILocation(line: 399, column: 5, scope: !5159)
!5172 = !DILocation(line: 400, column: 22, scope: !5159)
!5173 = !DILocation(line: 400, column: 12, scope: !5159)
!5174 = !DILocation(line: 400, column: 5, scope: !5159)
!5175 = distinct !DISubprogram(name: "br_aes_ct64_interleave_in", scope: !80, file: !80, line: 339, type: !5176, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5176 = !DISubroutineType(types: !5177)
!5177 = !{null, !5, !5, !5178}
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5179, size: 32)
!5179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!5180 = !DILocalVariable(name: "q0", arg: 1, scope: !5175, file: !80, line: 339, type: !5)
!5181 = !DILocation(line: 0, scope: !5175)
!5182 = !DILocalVariable(name: "q1", arg: 2, scope: !5175, file: !80, line: 339, type: !5)
!5183 = !DILocalVariable(name: "w", arg: 3, scope: !5175, file: !80, line: 339, type: !5178)
!5184 = !DILocation(line: 342, column: 10, scope: !5175)
!5185 = !DILocalVariable(name: "x0", scope: !5175, file: !80, line: 340, type: !6)
!5186 = !DILocation(line: 343, column: 10, scope: !5175)
!5187 = !DILocalVariable(name: "x1", scope: !5175, file: !80, line: 340, type: !6)
!5188 = !DILocation(line: 344, column: 10, scope: !5175)
!5189 = !DILocalVariable(name: "x2", scope: !5175, file: !80, line: 340, type: !6)
!5190 = !DILocation(line: 345, column: 10, scope: !5175)
!5191 = !DILocalVariable(name: "x3", scope: !5175, file: !80, line: 340, type: !6)
!5192 = !DILocation(line: 346, column: 15, scope: !5175)
!5193 = !DILocation(line: 346, column: 8, scope: !5175)
!5194 = !DILocation(line: 347, column: 15, scope: !5175)
!5195 = !DILocation(line: 347, column: 8, scope: !5175)
!5196 = !DILocation(line: 348, column: 15, scope: !5175)
!5197 = !DILocation(line: 348, column: 8, scope: !5175)
!5198 = !DILocation(line: 349, column: 15, scope: !5175)
!5199 = !DILocation(line: 349, column: 8, scope: !5175)
!5200 = !DILocation(line: 350, column: 8, scope: !5175)
!5201 = !DILocation(line: 351, column: 8, scope: !5175)
!5202 = !DILocation(line: 352, column: 8, scope: !5175)
!5203 = !DILocation(line: 353, column: 8, scope: !5175)
!5204 = !DILocation(line: 354, column: 15, scope: !5175)
!5205 = !DILocation(line: 354, column: 8, scope: !5175)
!5206 = !DILocation(line: 355, column: 15, scope: !5175)
!5207 = !DILocation(line: 355, column: 8, scope: !5175)
!5208 = !DILocation(line: 358, column: 8, scope: !5175)
!5209 = !DILocation(line: 359, column: 8, scope: !5175)
!5210 = !DILocation(line: 362, column: 20, scope: !5175)
!5211 = !DILocation(line: 362, column: 14, scope: !5175)
!5212 = !DILocation(line: 362, column: 9, scope: !5175)
!5213 = !DILocation(line: 363, column: 20, scope: !5175)
!5214 = !DILocation(line: 363, column: 14, scope: !5175)
!5215 = !DILocation(line: 363, column: 9, scope: !5175)
!5216 = !DILocation(line: 364, column: 1, scope: !5175)
!5217 = distinct !DISubprogram(name: "br_aes_ct64_ortho", scope: !80, file: !80, line: 309, type: !26, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5218 = !DILocalVariable(name: "q", arg: 1, scope: !5217, file: !80, line: 309, type: !5)
!5219 = !DILocation(line: 0, scope: !5217)
!5220 = !DILocation(line: 322, column: 5, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5217, file: !80, line: 322, column: 5)
!5222 = !DILocalVariable(name: "a", scope: !5221, file: !80, line: 322, type: !6)
!5223 = !DILocation(line: 0, scope: !5221)
!5224 = !DILocalVariable(name: "b", scope: !5221, file: !80, line: 322, type: !6)
!5225 = !DILocation(line: 323, column: 5, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5217, file: !80, line: 323, column: 5)
!5227 = !DILocalVariable(name: "a", scope: !5226, file: !80, line: 323, type: !6)
!5228 = !DILocation(line: 0, scope: !5226)
!5229 = !DILocalVariable(name: "b", scope: !5226, file: !80, line: 323, type: !6)
!5230 = !DILocation(line: 324, column: 5, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5217, file: !80, line: 324, column: 5)
!5232 = !DILocalVariable(name: "a", scope: !5231, file: !80, line: 324, type: !6)
!5233 = !DILocation(line: 0, scope: !5231)
!5234 = !DILocalVariable(name: "b", scope: !5231, file: !80, line: 324, type: !6)
!5235 = !DILocation(line: 325, column: 5, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5217, file: !80, line: 325, column: 5)
!5237 = !DILocalVariable(name: "a", scope: !5236, file: !80, line: 325, type: !6)
!5238 = !DILocation(line: 0, scope: !5236)
!5239 = !DILocalVariable(name: "b", scope: !5236, file: !80, line: 325, type: !6)
!5240 = !DILocation(line: 327, column: 5, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5217, file: !80, line: 327, column: 5)
!5242 = !DILocalVariable(name: "a", scope: !5241, file: !80, line: 327, type: !6)
!5243 = !DILocation(line: 0, scope: !5241)
!5244 = !DILocalVariable(name: "b", scope: !5241, file: !80, line: 327, type: !6)
!5245 = !DILocation(line: 328, column: 5, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5217, file: !80, line: 328, column: 5)
!5247 = !DILocalVariable(name: "a", scope: !5246, file: !80, line: 328, type: !6)
!5248 = !DILocation(line: 0, scope: !5246)
!5249 = !DILocalVariable(name: "b", scope: !5246, file: !80, line: 328, type: !6)
!5250 = !DILocation(line: 329, column: 5, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5217, file: !80, line: 329, column: 5)
!5252 = !DILocalVariable(name: "a", scope: !5251, file: !80, line: 329, type: !6)
!5253 = !DILocation(line: 0, scope: !5251)
!5254 = !DILocalVariable(name: "b", scope: !5251, file: !80, line: 329, type: !6)
!5255 = !DILocation(line: 330, column: 5, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5217, file: !80, line: 330, column: 5)
!5257 = !DILocalVariable(name: "a", scope: !5256, file: !80, line: 330, type: !6)
!5258 = !DILocation(line: 0, scope: !5256)
!5259 = !DILocalVariable(name: "b", scope: !5256, file: !80, line: 330, type: !6)
!5260 = !DILocation(line: 332, column: 5, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5217, file: !80, line: 332, column: 5)
!5262 = !DILocalVariable(name: "a", scope: !5261, file: !80, line: 332, type: !6)
!5263 = !DILocation(line: 0, scope: !5261)
!5264 = !DILocalVariable(name: "b", scope: !5261, file: !80, line: 332, type: !6)
!5265 = !DILocation(line: 333, column: 5, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5217, file: !80, line: 333, column: 5)
!5267 = !DILocalVariable(name: "a", scope: !5266, file: !80, line: 333, type: !6)
!5268 = !DILocation(line: 0, scope: !5266)
!5269 = !DILocalVariable(name: "b", scope: !5266, file: !80, line: 333, type: !6)
!5270 = !DILocation(line: 334, column: 5, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5217, file: !80, line: 334, column: 5)
!5272 = !DILocalVariable(name: "a", scope: !5271, file: !80, line: 334, type: !6)
!5273 = !DILocation(line: 0, scope: !5271)
!5274 = !DILocalVariable(name: "b", scope: !5271, file: !80, line: 334, type: !6)
!5275 = !DILocation(line: 335, column: 5, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5217, file: !80, line: 335, column: 5)
!5277 = !DILocalVariable(name: "a", scope: !5276, file: !80, line: 335, type: !6)
!5278 = !DILocation(line: 0, scope: !5276)
!5279 = !DILocalVariable(name: "b", scope: !5276, file: !80, line: 335, type: !6)
!5280 = !DILocation(line: 336, column: 1, scope: !5217)
!5281 = distinct !DISubprogram(name: "br_aes_ct64_bitslice_Sbox", scope: !80, file: !80, line: 135, type: !26, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5282 = !DILocalVariable(name: "q", arg: 1, scope: !5281, file: !80, line: 135, type: !5)
!5283 = !DILocation(line: 0, scope: !5281)
!5284 = !DILocation(line: 161, column: 10, scope: !5281)
!5285 = !DILocalVariable(name: "x0", scope: !5281, file: !80, line: 146, type: !6)
!5286 = !DILocation(line: 162, column: 10, scope: !5281)
!5287 = !DILocalVariable(name: "x1", scope: !5281, file: !80, line: 146, type: !6)
!5288 = !DILocation(line: 163, column: 10, scope: !5281)
!5289 = !DILocalVariable(name: "x2", scope: !5281, file: !80, line: 146, type: !6)
!5290 = !DILocation(line: 164, column: 10, scope: !5281)
!5291 = !DILocalVariable(name: "x3", scope: !5281, file: !80, line: 146, type: !6)
!5292 = !DILocation(line: 165, column: 10, scope: !5281)
!5293 = !DILocalVariable(name: "x4", scope: !5281, file: !80, line: 146, type: !6)
!5294 = !DILocation(line: 166, column: 10, scope: !5281)
!5295 = !DILocalVariable(name: "x5", scope: !5281, file: !80, line: 146, type: !6)
!5296 = !DILocation(line: 167, column: 10, scope: !5281)
!5297 = !DILocalVariable(name: "x6", scope: !5281, file: !80, line: 146, type: !6)
!5298 = !DILocation(line: 168, column: 10, scope: !5281)
!5299 = !DILocalVariable(name: "x7", scope: !5281, file: !80, line: 146, type: !6)
!5300 = !DILocation(line: 173, column: 14, scope: !5281)
!5301 = !DILocalVariable(name: "y14", scope: !5281, file: !80, line: 148, type: !6)
!5302 = !DILocation(line: 174, column: 14, scope: !5281)
!5303 = !DILocalVariable(name: "y13", scope: !5281, file: !80, line: 148, type: !6)
!5304 = !DILocation(line: 175, column: 13, scope: !5281)
!5305 = !DILocalVariable(name: "y9", scope: !5281, file: !80, line: 147, type: !6)
!5306 = !DILocation(line: 176, column: 13, scope: !5281)
!5307 = !DILocalVariable(name: "y8", scope: !5281, file: !80, line: 147, type: !6)
!5308 = !DILocation(line: 177, column: 13, scope: !5281)
!5309 = !DILocalVariable(name: "t0", scope: !5281, file: !80, line: 152, type: !6)
!5310 = !DILocation(line: 178, column: 13, scope: !5281)
!5311 = !DILocalVariable(name: "y1", scope: !5281, file: !80, line: 147, type: !6)
!5312 = !DILocation(line: 179, column: 13, scope: !5281)
!5313 = !DILocalVariable(name: "y4", scope: !5281, file: !80, line: 147, type: !6)
!5314 = !DILocation(line: 180, column: 15, scope: !5281)
!5315 = !DILocalVariable(name: "y12", scope: !5281, file: !80, line: 148, type: !6)
!5316 = !DILocation(line: 181, column: 13, scope: !5281)
!5317 = !DILocalVariable(name: "y2", scope: !5281, file: !80, line: 147, type: !6)
!5318 = !DILocation(line: 182, column: 13, scope: !5281)
!5319 = !DILocalVariable(name: "y5", scope: !5281, file: !80, line: 147, type: !6)
!5320 = !DILocation(line: 183, column: 13, scope: !5281)
!5321 = !DILocalVariable(name: "y3", scope: !5281, file: !80, line: 147, type: !6)
!5322 = !DILocation(line: 184, column: 13, scope: !5281)
!5323 = !DILocalVariable(name: "t1", scope: !5281, file: !80, line: 152, type: !6)
!5324 = !DILocation(line: 185, column: 14, scope: !5281)
!5325 = !DILocalVariable(name: "y15", scope: !5281, file: !80, line: 148, type: !6)
!5326 = !DILocation(line: 186, column: 14, scope: !5281)
!5327 = !DILocalVariable(name: "y20", scope: !5281, file: !80, line: 149, type: !6)
!5328 = !DILocation(line: 187, column: 14, scope: !5281)
!5329 = !DILocalVariable(name: "y6", scope: !5281, file: !80, line: 147, type: !6)
!5330 = !DILocation(line: 188, column: 15, scope: !5281)
!5331 = !DILocalVariable(name: "y10", scope: !5281, file: !80, line: 148, type: !6)
!5332 = !DILocation(line: 189, column: 15, scope: !5281)
!5333 = !DILocalVariable(name: "y11", scope: !5281, file: !80, line: 148, type: !6)
!5334 = !DILocation(line: 190, column: 13, scope: !5281)
!5335 = !DILocalVariable(name: "y7", scope: !5281, file: !80, line: 147, type: !6)
!5336 = !DILocation(line: 191, column: 15, scope: !5281)
!5337 = !DILocalVariable(name: "y17", scope: !5281, file: !80, line: 148, type: !6)
!5338 = !DILocalVariable(name: "y19", scope: !5281, file: !80, line: 148, type: !6)
!5339 = !DILocation(line: 193, column: 14, scope: !5281)
!5340 = !DILocalVariable(name: "y16", scope: !5281, file: !80, line: 148, type: !6)
!5341 = !DILocalVariable(name: "y21", scope: !5281, file: !80, line: 149, type: !6)
!5342 = !DILocalVariable(name: "y18", scope: !5281, file: !80, line: 148, type: !6)
!5343 = !DILocation(line: 200, column: 14, scope: !5281)
!5344 = !DILocalVariable(name: "t2", scope: !5281, file: !80, line: 152, type: !6)
!5345 = !DILocation(line: 201, column: 13, scope: !5281)
!5346 = !DILocalVariable(name: "t3", scope: !5281, file: !80, line: 152, type: !6)
!5347 = !DILocation(line: 202, column: 13, scope: !5281)
!5348 = !DILocalVariable(name: "t4", scope: !5281, file: !80, line: 152, type: !6)
!5349 = !DILocation(line: 203, column: 13, scope: !5281)
!5350 = !DILocalVariable(name: "t5", scope: !5281, file: !80, line: 152, type: !6)
!5351 = !DILocalVariable(name: "t6", scope: !5281, file: !80, line: 152, type: !6)
!5352 = !DILocation(line: 205, column: 14, scope: !5281)
!5353 = !DILocalVariable(name: "t7", scope: !5281, file: !80, line: 152, type: !6)
!5354 = !DILocation(line: 206, column: 13, scope: !5281)
!5355 = !DILocalVariable(name: "t8", scope: !5281, file: !80, line: 152, type: !6)
!5356 = !DILocalVariable(name: "t9", scope: !5281, file: !80, line: 152, type: !6)
!5357 = !DILocation(line: 208, column: 14, scope: !5281)
!5358 = !DILocalVariable(name: "t10", scope: !5281, file: !80, line: 153, type: !6)
!5359 = !DILocalVariable(name: "t11", scope: !5281, file: !80, line: 153, type: !6)
!5360 = !DILocation(line: 210, column: 14, scope: !5281)
!5361 = !DILocalVariable(name: "t12", scope: !5281, file: !80, line: 153, type: !6)
!5362 = !DILocation(line: 211, column: 15, scope: !5281)
!5363 = !DILocalVariable(name: "t13", scope: !5281, file: !80, line: 153, type: !6)
!5364 = !DILocation(line: 212, column: 15, scope: !5281)
!5365 = !DILocalVariable(name: "t14", scope: !5281, file: !80, line: 153, type: !6)
!5366 = !DILocation(line: 213, column: 14, scope: !5281)
!5367 = !DILocalVariable(name: "t15", scope: !5281, file: !80, line: 153, type: !6)
!5368 = !DILocation(line: 214, column: 15, scope: !5281)
!5369 = !DILocalVariable(name: "t16", scope: !5281, file: !80, line: 153, type: !6)
!5370 = !DILocation(line: 215, column: 14, scope: !5281)
!5371 = !DILocalVariable(name: "t17", scope: !5281, file: !80, line: 153, type: !6)
!5372 = !DILocalVariable(name: "t18", scope: !5281, file: !80, line: 153, type: !6)
!5373 = !DILocalVariable(name: "t19", scope: !5281, file: !80, line: 153, type: !6)
!5374 = !DILocalVariable(name: "t20", scope: !5281, file: !80, line: 154, type: !6)
!5375 = !DILocation(line: 219, column: 15, scope: !5281)
!5376 = !DILocalVariable(name: "t21", scope: !5281, file: !80, line: 154, type: !6)
!5377 = !DILocation(line: 220, column: 15, scope: !5281)
!5378 = !DILocalVariable(name: "t22", scope: !5281, file: !80, line: 154, type: !6)
!5379 = !DILocation(line: 221, column: 15, scope: !5281)
!5380 = !DILocalVariable(name: "t23", scope: !5281, file: !80, line: 154, type: !6)
!5381 = !DILocation(line: 222, column: 15, scope: !5281)
!5382 = !DILocalVariable(name: "t24", scope: !5281, file: !80, line: 154, type: !6)
!5383 = !DILocation(line: 224, column: 15, scope: !5281)
!5384 = !DILocalVariable(name: "t25", scope: !5281, file: !80, line: 154, type: !6)
!5385 = !DILocation(line: 225, column: 15, scope: !5281)
!5386 = !DILocalVariable(name: "t26", scope: !5281, file: !80, line: 154, type: !6)
!5387 = !DILocation(line: 226, column: 15, scope: !5281)
!5388 = !DILocalVariable(name: "t27", scope: !5281, file: !80, line: 154, type: !6)
!5389 = !DILocation(line: 227, column: 15, scope: !5281)
!5390 = !DILocalVariable(name: "t28", scope: !5281, file: !80, line: 154, type: !6)
!5391 = !DILocation(line: 228, column: 15, scope: !5281)
!5392 = !DILocalVariable(name: "t29", scope: !5281, file: !80, line: 154, type: !6)
!5393 = !DILocation(line: 229, column: 15, scope: !5281)
!5394 = !DILocalVariable(name: "t30", scope: !5281, file: !80, line: 155, type: !6)
!5395 = !DILocation(line: 230, column: 15, scope: !5281)
!5396 = !DILocalVariable(name: "t31", scope: !5281, file: !80, line: 155, type: !6)
!5397 = !DILocation(line: 231, column: 15, scope: !5281)
!5398 = !DILocalVariable(name: "t32", scope: !5281, file: !80, line: 155, type: !6)
!5399 = !DILocation(line: 232, column: 15, scope: !5281)
!5400 = !DILocalVariable(name: "t33", scope: !5281, file: !80, line: 155, type: !6)
!5401 = !DILocation(line: 233, column: 15, scope: !5281)
!5402 = !DILocalVariable(name: "t34", scope: !5281, file: !80, line: 155, type: !6)
!5403 = !DILocation(line: 234, column: 15, scope: !5281)
!5404 = !DILocalVariable(name: "t35", scope: !5281, file: !80, line: 155, type: !6)
!5405 = !DILocation(line: 235, column: 15, scope: !5281)
!5406 = !DILocalVariable(name: "t36", scope: !5281, file: !80, line: 155, type: !6)
!5407 = !DILocation(line: 236, column: 15, scope: !5281)
!5408 = !DILocalVariable(name: "t37", scope: !5281, file: !80, line: 155, type: !6)
!5409 = !DILocation(line: 237, column: 15, scope: !5281)
!5410 = !DILocalVariable(name: "t38", scope: !5281, file: !80, line: 155, type: !6)
!5411 = !DILocation(line: 238, column: 15, scope: !5281)
!5412 = !DILocalVariable(name: "t39", scope: !5281, file: !80, line: 155, type: !6)
!5413 = !DILocation(line: 239, column: 15, scope: !5281)
!5414 = !DILocalVariable(name: "t40", scope: !5281, file: !80, line: 156, type: !6)
!5415 = !DILocation(line: 241, column: 15, scope: !5281)
!5416 = !DILocalVariable(name: "t41", scope: !5281, file: !80, line: 156, type: !6)
!5417 = !DILocation(line: 242, column: 15, scope: !5281)
!5418 = !DILocalVariable(name: "t42", scope: !5281, file: !80, line: 156, type: !6)
!5419 = !DILocation(line: 243, column: 15, scope: !5281)
!5420 = !DILocalVariable(name: "t43", scope: !5281, file: !80, line: 156, type: !6)
!5421 = !DILocation(line: 244, column: 15, scope: !5281)
!5422 = !DILocalVariable(name: "t44", scope: !5281, file: !80, line: 156, type: !6)
!5423 = !DILocation(line: 245, column: 15, scope: !5281)
!5424 = !DILocalVariable(name: "t45", scope: !5281, file: !80, line: 156, type: !6)
!5425 = !DILocation(line: 246, column: 14, scope: !5281)
!5426 = !DILocalVariable(name: "z0", scope: !5281, file: !80, line: 150, type: !6)
!5427 = !DILocation(line: 247, column: 14, scope: !5281)
!5428 = !DILocalVariable(name: "z1", scope: !5281, file: !80, line: 150, type: !6)
!5429 = !DILocation(line: 248, column: 14, scope: !5281)
!5430 = !DILocalVariable(name: "z2", scope: !5281, file: !80, line: 150, type: !6)
!5431 = !DILocation(line: 249, column: 14, scope: !5281)
!5432 = !DILocalVariable(name: "z3", scope: !5281, file: !80, line: 150, type: !6)
!5433 = !DILocation(line: 250, column: 14, scope: !5281)
!5434 = !DILocalVariable(name: "z4", scope: !5281, file: !80, line: 150, type: !6)
!5435 = !DILocation(line: 251, column: 14, scope: !5281)
!5436 = !DILocalVariable(name: "z5", scope: !5281, file: !80, line: 150, type: !6)
!5437 = !DILocation(line: 252, column: 14, scope: !5281)
!5438 = !DILocalVariable(name: "z6", scope: !5281, file: !80, line: 150, type: !6)
!5439 = !DILocation(line: 253, column: 14, scope: !5281)
!5440 = !DILocalVariable(name: "z7", scope: !5281, file: !80, line: 150, type: !6)
!5441 = !DILocation(line: 254, column: 14, scope: !5281)
!5442 = !DILocalVariable(name: "z8", scope: !5281, file: !80, line: 150, type: !6)
!5443 = !DILocation(line: 255, column: 14, scope: !5281)
!5444 = !DILocalVariable(name: "z9", scope: !5281, file: !80, line: 150, type: !6)
!5445 = !DILocation(line: 256, column: 15, scope: !5281)
!5446 = !DILocalVariable(name: "z10", scope: !5281, file: !80, line: 151, type: !6)
!5447 = !DILocation(line: 257, column: 15, scope: !5281)
!5448 = !DILocalVariable(name: "z11", scope: !5281, file: !80, line: 151, type: !6)
!5449 = !DILocation(line: 258, column: 15, scope: !5281)
!5450 = !DILocalVariable(name: "z12", scope: !5281, file: !80, line: 151, type: !6)
!5451 = !DILocation(line: 259, column: 15, scope: !5281)
!5452 = !DILocalVariable(name: "z13", scope: !5281, file: !80, line: 151, type: !6)
!5453 = !DILocation(line: 260, column: 15, scope: !5281)
!5454 = !DILocalVariable(name: "z14", scope: !5281, file: !80, line: 151, type: !6)
!5455 = !DILocation(line: 261, column: 15, scope: !5281)
!5456 = !DILocalVariable(name: "z15", scope: !5281, file: !80, line: 151, type: !6)
!5457 = !DILocation(line: 262, column: 15, scope: !5281)
!5458 = !DILocalVariable(name: "z16", scope: !5281, file: !80, line: 151, type: !6)
!5459 = !DILocation(line: 263, column: 15, scope: !5281)
!5460 = !DILocalVariable(name: "z17", scope: !5281, file: !80, line: 151, type: !6)
!5461 = !DILocation(line: 268, column: 15, scope: !5281)
!5462 = !DILocalVariable(name: "t46", scope: !5281, file: !80, line: 156, type: !6)
!5463 = !DILocation(line: 269, column: 15, scope: !5281)
!5464 = !DILocalVariable(name: "t47", scope: !5281, file: !80, line: 156, type: !6)
!5465 = !DILocation(line: 270, column: 14, scope: !5281)
!5466 = !DILocalVariable(name: "t48", scope: !5281, file: !80, line: 156, type: !6)
!5467 = !DILocation(line: 271, column: 14, scope: !5281)
!5468 = !DILocalVariable(name: "t49", scope: !5281, file: !80, line: 156, type: !6)
!5469 = !DILocation(line: 272, column: 14, scope: !5281)
!5470 = !DILocalVariable(name: "t50", scope: !5281, file: !80, line: 157, type: !6)
!5471 = !DILocation(line: 273, column: 14, scope: !5281)
!5472 = !DILocalVariable(name: "t51", scope: !5281, file: !80, line: 157, type: !6)
!5473 = !DILocation(line: 274, column: 14, scope: !5281)
!5474 = !DILocalVariable(name: "t52", scope: !5281, file: !80, line: 157, type: !6)
!5475 = !DILocation(line: 275, column: 14, scope: !5281)
!5476 = !DILocalVariable(name: "t53", scope: !5281, file: !80, line: 157, type: !6)
!5477 = !DILocation(line: 276, column: 14, scope: !5281)
!5478 = !DILocalVariable(name: "t54", scope: !5281, file: !80, line: 157, type: !6)
!5479 = !DILocation(line: 277, column: 15, scope: !5281)
!5480 = !DILocalVariable(name: "t55", scope: !5281, file: !80, line: 157, type: !6)
!5481 = !DILocation(line: 278, column: 15, scope: !5281)
!5482 = !DILocalVariable(name: "t56", scope: !5281, file: !80, line: 157, type: !6)
!5483 = !DILocation(line: 279, column: 15, scope: !5281)
!5484 = !DILocalVariable(name: "t57", scope: !5281, file: !80, line: 157, type: !6)
!5485 = !DILocation(line: 280, column: 14, scope: !5281)
!5486 = !DILocalVariable(name: "t58", scope: !5281, file: !80, line: 157, type: !6)
!5487 = !DILocation(line: 281, column: 14, scope: !5281)
!5488 = !DILocalVariable(name: "t59", scope: !5281, file: !80, line: 157, type: !6)
!5489 = !DILocation(line: 282, column: 15, scope: !5281)
!5490 = !DILocalVariable(name: "t60", scope: !5281, file: !80, line: 158, type: !6)
!5491 = !DILocation(line: 283, column: 15, scope: !5281)
!5492 = !DILocalVariable(name: "t61", scope: !5281, file: !80, line: 158, type: !6)
!5493 = !DILocation(line: 284, column: 15, scope: !5281)
!5494 = !DILocalVariable(name: "t62", scope: !5281, file: !80, line: 158, type: !6)
!5495 = !DILocation(line: 285, column: 15, scope: !5281)
!5496 = !DILocalVariable(name: "t63", scope: !5281, file: !80, line: 158, type: !6)
!5497 = !DILocation(line: 286, column: 14, scope: !5281)
!5498 = !DILocalVariable(name: "t64", scope: !5281, file: !80, line: 158, type: !6)
!5499 = !DILocation(line: 287, column: 15, scope: !5281)
!5500 = !DILocalVariable(name: "t65", scope: !5281, file: !80, line: 158, type: !6)
!5501 = !DILocation(line: 288, column: 14, scope: !5281)
!5502 = !DILocalVariable(name: "t66", scope: !5281, file: !80, line: 158, type: !6)
!5503 = !DILocation(line: 289, column: 14, scope: !5281)
!5504 = !DILocalVariable(name: "s0", scope: !5281, file: !80, line: 159, type: !6)
!5505 = !DILocation(line: 290, column: 14, scope: !5281)
!5506 = !DILocalVariable(name: "s6", scope: !5281, file: !80, line: 159, type: !6)
!5507 = !DILocation(line: 291, column: 14, scope: !5281)
!5508 = !DILocalVariable(name: "s7", scope: !5281, file: !80, line: 159, type: !6)
!5509 = !DILocalVariable(name: "t67", scope: !5281, file: !80, line: 158, type: !6)
!5510 = !DILocation(line: 293, column: 14, scope: !5281)
!5511 = !DILocalVariable(name: "s3", scope: !5281, file: !80, line: 159, type: !6)
!5512 = !DILocation(line: 294, column: 14, scope: !5281)
!5513 = !DILocalVariable(name: "s4", scope: !5281, file: !80, line: 159, type: !6)
!5514 = !DILocation(line: 295, column: 14, scope: !5281)
!5515 = !DILocalVariable(name: "s5", scope: !5281, file: !80, line: 159, type: !6)
!5516 = !DILocation(line: 296, column: 14, scope: !5281)
!5517 = !DILocalVariable(name: "s1", scope: !5281, file: !80, line: 159, type: !6)
!5518 = !DILocation(line: 297, column: 14, scope: !5281)
!5519 = !DILocalVariable(name: "s2", scope: !5281, file: !80, line: 159, type: !6)
!5520 = !DILocation(line: 299, column: 5, scope: !5281)
!5521 = !DILocation(line: 299, column: 10, scope: !5281)
!5522 = !DILocation(line: 300, column: 5, scope: !5281)
!5523 = !DILocation(line: 300, column: 10, scope: !5281)
!5524 = !DILocation(line: 301, column: 5, scope: !5281)
!5525 = !DILocation(line: 301, column: 10, scope: !5281)
!5526 = !DILocation(line: 302, column: 5, scope: !5281)
!5527 = !DILocation(line: 302, column: 10, scope: !5281)
!5528 = !DILocation(line: 303, column: 5, scope: !5281)
!5529 = !DILocation(line: 303, column: 10, scope: !5281)
!5530 = !DILocation(line: 304, column: 5, scope: !5281)
!5531 = !DILocation(line: 304, column: 10, scope: !5281)
!5532 = !DILocation(line: 305, column: 5, scope: !5281)
!5533 = !DILocation(line: 305, column: 10, scope: !5281)
!5534 = !DILocation(line: 306, column: 10, scope: !5281)
!5535 = !DILocation(line: 307, column: 1, scope: !5281)
!5536 = distinct !DISubprogram(name: "br_dec32le", scope: !80, file: !80, line: 96, type: !5537, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5537 = !DISubroutineType(types: !5538)
!5538 = !{!19, !49}
!5539 = !DILocalVariable(name: "src", arg: 1, scope: !5536, file: !80, line: 96, type: !49)
!5540 = !DILocation(line: 0, scope: !5536)
!5541 = !DILocation(line: 97, column: 22, scope: !5536)
!5542 = !DILocation(line: 97, column: 12, scope: !5536)
!5543 = !DILocation(line: 98, column: 25, scope: !5536)
!5544 = !DILocation(line: 98, column: 15, scope: !5536)
!5545 = !DILocation(line: 98, column: 32, scope: !5536)
!5546 = !DILocation(line: 98, column: 12, scope: !5536)
!5547 = !DILocation(line: 99, column: 25, scope: !5536)
!5548 = !DILocation(line: 99, column: 15, scope: !5536)
!5549 = !DILocation(line: 99, column: 32, scope: !5536)
!5550 = !DILocation(line: 99, column: 12, scope: !5536)
!5551 = !DILocation(line: 100, column: 25, scope: !5536)
!5552 = !DILocation(line: 100, column: 15, scope: !5536)
!5553 = !DILocation(line: 100, column: 32, scope: !5536)
!5554 = !DILocation(line: 100, column: 12, scope: !5536)
!5555 = !DILocation(line: 97, column: 5, scope: !5536)
!5556 = distinct !DISubprogram(name: "aes128_ctr_keyexp", scope: !80, file: !80, line: 647, type: !4942, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5557 = !DILocalVariable(name: "r", arg: 1, scope: !5556, file: !80, line: 647, type: !4944)
!5558 = !DILocation(line: 0, scope: !5556)
!5559 = !DILocalVariable(name: "key", arg: 2, scope: !5556, file: !80, line: 647, type: !49)
!5560 = !DILocation(line: 648, column: 5, scope: !5556)
!5561 = !DILocation(line: 649, column: 1, scope: !5556)
!5562 = distinct !DISubprogram(name: "aes192_ecb_keyexp", scope: !80, file: !80, line: 652, type: !5563, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5563 = !DISubroutineType(types: !5564)
!5564 = !{null, !5565, !49}
!5565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5566, size: 32)
!5566 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes192ctx", file: !80, line: 51, baseType: !5567)
!5567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 49, size: 32, elements: !5568)
!5568 = !{!5569}
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5567, file: !80, line: 50, baseType: !5, size: 32)
!5570 = !DILocalVariable(name: "r", arg: 1, scope: !5562, file: !80, line: 652, type: !5565)
!5571 = !DILocation(line: 0, scope: !5562)
!5572 = !DILocalVariable(name: "key", arg: 2, scope: !5562, file: !80, line: 652, type: !49)
!5573 = !DILocalVariable(name: "skey", scope: !5562, file: !80, line: 653, type: !5574)
!5574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1664, elements: !5575)
!5575 = !{!5576}
!5576 = !DISubrange(count: 26)
!5577 = !DILocation(line: 653, column: 14, scope: !5562)
!5578 = !DILocation(line: 654, column: 17, scope: !5562)
!5579 = !DILocation(line: 654, column: 15, scope: !5562)
!5580 = !DILocation(line: 655, column: 19, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5562, file: !80, line: 655, column: 9)
!5582 = !DILocation(line: 656, column: 9, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5581, file: !80, line: 655, column: 28)
!5584 = !DILocation(line: 657, column: 5, scope: !5583)
!5585 = !DILocation(line: 659, column: 5, scope: !5562)
!5586 = !DILocation(line: 660, column: 32, scope: !5562)
!5587 = !DILocation(line: 660, column: 5, scope: !5562)
!5588 = !DILocation(line: 661, column: 1, scope: !5562)
!5589 = distinct !DISubprogram(name: "aes192_ctr_keyexp", scope: !80, file: !80, line: 664, type: !5563, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5590 = !DILocalVariable(name: "r", arg: 1, scope: !5589, file: !80, line: 664, type: !5565)
!5591 = !DILocation(line: 0, scope: !5589)
!5592 = !DILocalVariable(name: "key", arg: 2, scope: !5589, file: !80, line: 664, type: !49)
!5593 = !DILocation(line: 665, column: 5, scope: !5589)
!5594 = !DILocation(line: 666, column: 1, scope: !5589)
!5595 = distinct !DISubprogram(name: "aes256_ecb_keyexp", scope: !80, file: !80, line: 669, type: !5596, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5596 = !DISubroutineType(types: !5597)
!5597 = !{null, !5598, !49}
!5598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5599, size: 32)
!5599 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes256ctx", file: !80, line: 56, baseType: !5600)
!5600 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 54, size: 32, elements: !5601)
!5601 = !{!5602}
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5600, file: !80, line: 55, baseType: !5, size: 32)
!5603 = !DILocalVariable(name: "r", arg: 1, scope: !5595, file: !80, line: 669, type: !5598)
!5604 = !DILocation(line: 0, scope: !5595)
!5605 = !DILocalVariable(name: "key", arg: 2, scope: !5595, file: !80, line: 669, type: !49)
!5606 = !DILocalVariable(name: "skey", scope: !5595, file: !80, line: 670, type: !5607)
!5607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1920, elements: !5608)
!5608 = !{!5609}
!5609 = !DISubrange(count: 30)
!5610 = !DILocation(line: 670, column: 14, scope: !5595)
!5611 = !DILocation(line: 671, column: 17, scope: !5595)
!5612 = !DILocation(line: 671, column: 15, scope: !5595)
!5613 = !DILocation(line: 672, column: 19, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5595, file: !80, line: 672, column: 9)
!5615 = !DILocation(line: 673, column: 9, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5614, file: !80, line: 672, column: 28)
!5617 = !DILocation(line: 674, column: 5, scope: !5616)
!5618 = !DILocation(line: 676, column: 5, scope: !5595)
!5619 = !DILocation(line: 677, column: 32, scope: !5595)
!5620 = !DILocation(line: 677, column: 5, scope: !5595)
!5621 = !DILocation(line: 678, column: 1, scope: !5595)
!5622 = distinct !DISubprogram(name: "aes256_ctr_keyexp", scope: !80, file: !80, line: 681, type: !5596, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5623 = !DILocalVariable(name: "r", arg: 1, scope: !5622, file: !80, line: 681, type: !5598)
!5624 = !DILocation(line: 0, scope: !5622)
!5625 = !DILocalVariable(name: "key", arg: 2, scope: !5622, file: !80, line: 681, type: !49)
!5626 = !DILocation(line: 682, column: 5, scope: !5622)
!5627 = !DILocation(line: 683, column: 1, scope: !5622)
!5628 = distinct !DISubprogram(name: "aes128_ecb", scope: !80, file: !80, line: 686, type: !5629, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5629 = !DISubroutineType(types: !5630)
!5630 = !{null, !18, !49, !15, !5631}
!5631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5632, size: 32)
!5632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4945)
!5633 = !DILocalVariable(name: "out", arg: 1, scope: !5628, file: !80, line: 686, type: !18)
!5634 = !DILocation(line: 0, scope: !5628)
!5635 = !DILocalVariable(name: "in", arg: 2, scope: !5628, file: !80, line: 686, type: !49)
!5636 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5628, file: !80, line: 686, type: !15)
!5637 = !DILocalVariable(name: "ctx", arg: 4, scope: !5628, file: !80, line: 686, type: !5631)
!5638 = !DILocation(line: 687, column: 36, scope: !5628)
!5639 = !DILocation(line: 687, column: 5, scope: !5628)
!5640 = !DILocation(line: 688, column: 1, scope: !5628)
!5641 = distinct !DISubprogram(name: "aes_ecb", scope: !80, file: !80, line: 587, type: !5642, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5642 = !DISubroutineType(types: !5643)
!5643 = !{null, !18, !49, !15, !428, !17}
!5644 = !DILocalVariable(name: "out", arg: 1, scope: !5641, file: !80, line: 587, type: !18)
!5645 = !DILocation(line: 0, scope: !5641)
!5646 = !DILocalVariable(name: "in", arg: 2, scope: !5641, file: !80, line: 587, type: !49)
!5647 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5641, file: !80, line: 587, type: !15)
!5648 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5641, file: !80, line: 587, type: !428)
!5649 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5641, file: !80, line: 587, type: !17)
!5650 = !DILocalVariable(name: "blocks", scope: !5641, file: !80, line: 588, type: !5651)
!5651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !117)
!5652 = !DILocation(line: 588, column: 14, scope: !5641)
!5653 = !DILocalVariable(name: "t", scope: !5641, file: !80, line: 589, type: !5654)
!5654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !5655)
!5655 = !{!5656}
!5656 = !DISubrange(count: 64)
!5657 = !DILocation(line: 589, column: 19, scope: !5641)
!5658 = !DILocation(line: 591, column: 5, scope: !5641)
!5659 = !DILocation(line: 591, column: 20, scope: !5641)
!5660 = !DILocation(line: 592, column: 9, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5641, file: !80, line: 591, column: 26)
!5662 = !DILocation(line: 593, column: 9, scope: !5661)
!5663 = !DILocation(line: 594, column: 17, scope: !5661)
!5664 = !DILocation(line: 595, column: 12, scope: !5661)
!5665 = !DILocation(line: 596, column: 13, scope: !5661)
!5666 = distinct !{!5666, !5658, !5667, !244}
!5667 = !DILocation(line: 597, column: 5, scope: !5641)
!5668 = !DILocation(line: 599, column: 9, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5641, file: !80, line: 599, column: 9)
!5670 = !DILocation(line: 600, column: 42, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5669, file: !80, line: 599, column: 18)
!5672 = !DILocation(line: 600, column: 9, scope: !5671)
!5673 = !DILocation(line: 601, column: 9, scope: !5671)
!5674 = !DILocation(line: 602, column: 32, scope: !5671)
!5675 = !DILocation(line: 602, column: 9, scope: !5671)
!5676 = !DILocation(line: 603, column: 5, scope: !5671)
!5677 = !DILocation(line: 604, column: 1, scope: !5641)
!5678 = distinct !DISubprogram(name: "aes_ecb4x", scope: !80, file: !80, line: 545, type: !5679, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5679 = !DISubroutineType(types: !5680)
!5680 = !{null, !18, !5178, !428, !17}
!5681 = !DILocalVariable(name: "out", arg: 1, scope: !5678, file: !80, line: 545, type: !18)
!5682 = !DILocation(line: 0, scope: !5678)
!5683 = !DILocalVariable(name: "ivw", arg: 2, scope: !5678, file: !80, line: 545, type: !5178)
!5684 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !5678, file: !80, line: 545, type: !428)
!5685 = !DILocalVariable(name: "nrounds", arg: 4, scope: !5678, file: !80, line: 545, type: !17)
!5686 = !DILocalVariable(name: "w", scope: !5678, file: !80, line: 546, type: !5651)
!5687 = !DILocation(line: 546, column: 14, scope: !5678)
!5688 = !DILocalVariable(name: "q", scope: !5678, file: !80, line: 547, type: !5036)
!5689 = !DILocation(line: 547, column: 14, scope: !5678)
!5690 = !DILocation(line: 550, column: 5, scope: !5678)
!5691 = !DILocalVariable(name: "i", scope: !5678, file: !80, line: 548, type: !17)
!5692 = !DILocation(line: 551, column: 10, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5678, file: !80, line: 551, column: 5)
!5694 = !DILocation(line: 551, scope: !5693)
!5695 = !DILocation(line: 551, column: 19, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5693, file: !80, line: 551, column: 5)
!5697 = !DILocation(line: 551, column: 5, scope: !5693)
!5698 = !DILocation(line: 552, column: 36, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5696, file: !80, line: 551, column: 29)
!5700 = !DILocation(line: 552, column: 47, scope: !5699)
!5701 = !DILocation(line: 552, column: 43, scope: !5699)
!5702 = !DILocation(line: 552, column: 55, scope: !5699)
!5703 = !DILocation(line: 552, column: 9, scope: !5699)
!5704 = !DILocation(line: 551, column: 25, scope: !5696)
!5705 = !DILocation(line: 551, column: 5, scope: !5696)
!5706 = distinct !{!5706, !5697, !5707, !244}
!5707 = !DILocation(line: 553, column: 5, scope: !5693)
!5708 = !DILocation(line: 554, column: 5, scope: !5678)
!5709 = !DILocation(line: 557, column: 5, scope: !5678)
!5710 = !DILocation(line: 558, column: 10, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5678, file: !80, line: 558, column: 5)
!5712 = !DILocation(line: 558, scope: !5711)
!5713 = !DILocation(line: 558, column: 19, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5711, file: !80, line: 558, column: 5)
!5715 = !DILocation(line: 558, column: 5, scope: !5711)
!5716 = !DILocation(line: 559, column: 9, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5714, file: !80, line: 558, column: 35)
!5718 = !DILocation(line: 560, column: 9, scope: !5717)
!5719 = !DILocation(line: 561, column: 9, scope: !5717)
!5720 = !DILocation(line: 562, column: 33, scope: !5717)
!5721 = !DILocation(line: 562, column: 9, scope: !5717)
!5722 = !DILocation(line: 558, column: 31, scope: !5714)
!5723 = !DILocation(line: 558, column: 5, scope: !5714)
!5724 = distinct !{!5724, !5715, !5725, !244}
!5725 = !DILocation(line: 563, column: 5, scope: !5711)
!5726 = !DILocation(line: 564, column: 5, scope: !5678)
!5727 = !DILocation(line: 565, column: 5, scope: !5678)
!5728 = !DILocation(line: 566, column: 29, scope: !5678)
!5729 = !DILocation(line: 566, column: 5, scope: !5678)
!5730 = !DILocation(line: 568, column: 5, scope: !5678)
!5731 = !DILocation(line: 569, column: 10, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5678, file: !80, line: 569, column: 5)
!5733 = !DILocation(line: 569, scope: !5732)
!5734 = !DILocation(line: 569, column: 19, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5732, file: !80, line: 569, column: 5)
!5736 = !DILocation(line: 569, column: 5, scope: !5732)
!5737 = !DILocation(line: 570, column: 38, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5735, file: !80, line: 569, column: 30)
!5739 = !DILocation(line: 570, column: 50, scope: !5738)
!5740 = !DILocation(line: 570, column: 60, scope: !5738)
!5741 = !DILocation(line: 570, column: 56, scope: !5738)
!5742 = !DILocation(line: 570, column: 9, scope: !5738)
!5743 = !DILocation(line: 569, column: 26, scope: !5735)
!5744 = !DILocation(line: 569, column: 5, scope: !5735)
!5745 = distinct !{!5745, !5736, !5746, !244}
!5746 = !DILocation(line: 571, column: 5, scope: !5732)
!5747 = !DILocation(line: 572, column: 5, scope: !5678)
!5748 = !DILocation(line: 573, column: 1, scope: !5678)
!5749 = distinct !DISubprogram(name: "add_round_key", scope: !80, file: !80, line: 475, type: !5750, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5750 = !DISubroutineType(types: !5751)
!5751 = !{null, !5, !428}
!5752 = !DILocalVariable(name: "q", arg: 1, scope: !5749, file: !80, line: 475, type: !5)
!5753 = !DILocation(line: 0, scope: !5749)
!5754 = !DILocalVariable(name: "sk", arg: 2, scope: !5749, file: !80, line: 475, type: !428)
!5755 = !DILocation(line: 476, column: 13, scope: !5749)
!5756 = !DILocation(line: 476, column: 10, scope: !5749)
!5757 = !DILocation(line: 477, column: 13, scope: !5749)
!5758 = !DILocation(line: 477, column: 5, scope: !5749)
!5759 = !DILocation(line: 477, column: 10, scope: !5749)
!5760 = !DILocation(line: 478, column: 13, scope: !5749)
!5761 = !DILocation(line: 478, column: 5, scope: !5749)
!5762 = !DILocation(line: 478, column: 10, scope: !5749)
!5763 = !DILocation(line: 479, column: 13, scope: !5749)
!5764 = !DILocation(line: 479, column: 5, scope: !5749)
!5765 = !DILocation(line: 479, column: 10, scope: !5749)
!5766 = !DILocation(line: 480, column: 13, scope: !5749)
!5767 = !DILocation(line: 480, column: 5, scope: !5749)
!5768 = !DILocation(line: 480, column: 10, scope: !5749)
!5769 = !DILocation(line: 481, column: 13, scope: !5749)
!5770 = !DILocation(line: 481, column: 5, scope: !5749)
!5771 = !DILocation(line: 481, column: 10, scope: !5749)
!5772 = !DILocation(line: 482, column: 13, scope: !5749)
!5773 = !DILocation(line: 482, column: 5, scope: !5749)
!5774 = !DILocation(line: 482, column: 10, scope: !5749)
!5775 = !DILocation(line: 483, column: 13, scope: !5749)
!5776 = !DILocation(line: 483, column: 5, scope: !5749)
!5777 = !DILocation(line: 483, column: 10, scope: !5749)
!5778 = !DILocation(line: 484, column: 1, scope: !5749)
!5779 = distinct !DISubprogram(name: "shift_rows", scope: !80, file: !80, line: 486, type: !26, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5780 = !DILocalVariable(name: "q", arg: 1, scope: !5779, file: !80, line: 486, type: !5)
!5781 = !DILocation(line: 0, scope: !5779)
!5782 = !DILocalVariable(name: "i", scope: !5779, file: !80, line: 487, type: !45)
!5783 = !DILocation(line: 489, column: 10, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5779, file: !80, line: 489, column: 5)
!5785 = !DILocation(line: 489, scope: !5784)
!5786 = !DILocation(line: 489, column: 19, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5784, file: !80, line: 489, column: 5)
!5788 = !DILocation(line: 489, column: 5, scope: !5784)
!5789 = !DILocation(line: 492, column: 13, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5787, file: !80, line: 489, column: 30)
!5791 = !DILocalVariable(name: "x", scope: !5790, file: !80, line: 490, type: !6)
!5792 = !DILocation(line: 0, scope: !5790)
!5793 = !DILocation(line: 493, column: 19, scope: !5790)
!5794 = !DILocation(line: 494, column: 54, scope: !5790)
!5795 = !DILocation(line: 494, column: 16, scope: !5790)
!5796 = !DILocation(line: 495, column: 54, scope: !5790)
!5797 = !DILocation(line: 495, column: 16, scope: !5790)
!5798 = !DILocation(line: 496, column: 54, scope: !5790)
!5799 = !DILocation(line: 496, column: 16, scope: !5790)
!5800 = !DILocation(line: 497, column: 54, scope: !5790)
!5801 = !DILocation(line: 497, column: 16, scope: !5790)
!5802 = !DILocation(line: 498, column: 54, scope: !5790)
!5803 = !DILocation(line: 498, column: 16, scope: !5790)
!5804 = !DILocation(line: 499, column: 54, scope: !5790)
!5805 = !DILocation(line: 499, column: 16, scope: !5790)
!5806 = !DILocation(line: 493, column: 9, scope: !5790)
!5807 = !DILocation(line: 493, column: 14, scope: !5790)
!5808 = !DILocation(line: 489, column: 26, scope: !5787)
!5809 = !DILocation(line: 489, column: 5, scope: !5787)
!5810 = distinct !{!5810, !5788, !5811, !244}
!5811 = !DILocation(line: 500, column: 5, scope: !5784)
!5812 = !DILocation(line: 501, column: 1, scope: !5779)
!5813 = distinct !DISubprogram(name: "mix_columns", scope: !80, file: !80, line: 507, type: !26, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5814 = !DILocalVariable(name: "q", arg: 1, scope: !5813, file: !80, line: 507, type: !5)
!5815 = !DILocation(line: 0, scope: !5813)
!5816 = !DILocation(line: 511, column: 10, scope: !5813)
!5817 = !DILocalVariable(name: "q0", scope: !5813, file: !80, line: 508, type: !6)
!5818 = !DILocation(line: 512, column: 10, scope: !5813)
!5819 = !DILocalVariable(name: "q1", scope: !5813, file: !80, line: 508, type: !6)
!5820 = !DILocation(line: 513, column: 10, scope: !5813)
!5821 = !DILocalVariable(name: "q2", scope: !5813, file: !80, line: 508, type: !6)
!5822 = !DILocation(line: 514, column: 10, scope: !5813)
!5823 = !DILocalVariable(name: "q3", scope: !5813, file: !80, line: 508, type: !6)
!5824 = !DILocation(line: 515, column: 10, scope: !5813)
!5825 = !DILocalVariable(name: "q4", scope: !5813, file: !80, line: 508, type: !6)
!5826 = !DILocation(line: 516, column: 10, scope: !5813)
!5827 = !DILocalVariable(name: "q5", scope: !5813, file: !80, line: 508, type: !6)
!5828 = !DILocation(line: 517, column: 10, scope: !5813)
!5829 = !DILocalVariable(name: "q6", scope: !5813, file: !80, line: 508, type: !6)
!5830 = !DILocation(line: 518, column: 10, scope: !5813)
!5831 = !DILocalVariable(name: "q7", scope: !5813, file: !80, line: 508, type: !6)
!5832 = !DILocation(line: 519, column: 21, scope: !5813)
!5833 = !DILocalVariable(name: "r0", scope: !5813, file: !80, line: 509, type: !6)
!5834 = !DILocation(line: 520, column: 21, scope: !5813)
!5835 = !DILocalVariable(name: "r1", scope: !5813, file: !80, line: 509, type: !6)
!5836 = !DILocation(line: 521, column: 21, scope: !5813)
!5837 = !DILocalVariable(name: "r2", scope: !5813, file: !80, line: 509, type: !6)
!5838 = !DILocation(line: 522, column: 21, scope: !5813)
!5839 = !DILocalVariable(name: "r3", scope: !5813, file: !80, line: 509, type: !6)
!5840 = !DILocation(line: 523, column: 21, scope: !5813)
!5841 = !DILocalVariable(name: "r4", scope: !5813, file: !80, line: 509, type: !6)
!5842 = !DILocation(line: 524, column: 21, scope: !5813)
!5843 = !DILocalVariable(name: "r5", scope: !5813, file: !80, line: 509, type: !6)
!5844 = !DILocation(line: 525, column: 21, scope: !5813)
!5845 = !DILocalVariable(name: "r6", scope: !5813, file: !80, line: 509, type: !6)
!5846 = !DILocation(line: 526, column: 21, scope: !5813)
!5847 = !DILocalVariable(name: "r7", scope: !5813, file: !80, line: 509, type: !6)
!5848 = !DILocation(line: 528, column: 37, scope: !5813)
!5849 = !DILocation(line: 528, column: 27, scope: !5813)
!5850 = !DILocation(line: 528, column: 25, scope: !5813)
!5851 = !DILocation(line: 528, column: 10, scope: !5813)
!5852 = !DILocation(line: 529, column: 47, scope: !5813)
!5853 = !DILocation(line: 529, column: 37, scope: !5813)
!5854 = !DILocation(line: 529, column: 35, scope: !5813)
!5855 = !DILocation(line: 529, column: 5, scope: !5813)
!5856 = !DILocation(line: 529, column: 10, scope: !5813)
!5857 = !DILocation(line: 530, column: 37, scope: !5813)
!5858 = !DILocation(line: 530, column: 27, scope: !5813)
!5859 = !DILocation(line: 530, column: 25, scope: !5813)
!5860 = !DILocation(line: 530, column: 5, scope: !5813)
!5861 = !DILocation(line: 530, column: 10, scope: !5813)
!5862 = !DILocation(line: 531, column: 47, scope: !5813)
!5863 = !DILocation(line: 531, column: 37, scope: !5813)
!5864 = !DILocation(line: 531, column: 35, scope: !5813)
!5865 = !DILocation(line: 531, column: 5, scope: !5813)
!5866 = !DILocation(line: 531, column: 10, scope: !5813)
!5867 = !DILocation(line: 532, column: 47, scope: !5813)
!5868 = !DILocation(line: 532, column: 37, scope: !5813)
!5869 = !DILocation(line: 532, column: 35, scope: !5813)
!5870 = !DILocation(line: 532, column: 5, scope: !5813)
!5871 = !DILocation(line: 532, column: 10, scope: !5813)
!5872 = !DILocation(line: 533, column: 37, scope: !5813)
!5873 = !DILocation(line: 533, column: 27, scope: !5813)
!5874 = !DILocation(line: 533, column: 25, scope: !5813)
!5875 = !DILocation(line: 533, column: 5, scope: !5813)
!5876 = !DILocation(line: 533, column: 10, scope: !5813)
!5877 = !DILocation(line: 534, column: 37, scope: !5813)
!5878 = !DILocation(line: 534, column: 27, scope: !5813)
!5879 = !DILocation(line: 534, column: 25, scope: !5813)
!5880 = !DILocation(line: 534, column: 5, scope: !5813)
!5881 = !DILocation(line: 534, column: 10, scope: !5813)
!5882 = !DILocation(line: 535, column: 37, scope: !5813)
!5883 = !DILocation(line: 535, column: 27, scope: !5813)
!5884 = !DILocation(line: 535, column: 25, scope: !5813)
!5885 = !DILocation(line: 535, column: 5, scope: !5813)
!5886 = !DILocation(line: 535, column: 10, scope: !5813)
!5887 = !DILocation(line: 536, column: 1, scope: !5813)
!5888 = distinct !DISubprogram(name: "br_aes_ct64_interleave_out", scope: !80, file: !80, line: 367, type: !5889, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5889 = !DISubroutineType(types: !5890)
!5890 = !{null, !5143, !6, !6}
!5891 = !DILocalVariable(name: "w", arg: 1, scope: !5888, file: !80, line: 367, type: !5143)
!5892 = !DILocation(line: 0, scope: !5888)
!5893 = !DILocalVariable(name: "q0", arg: 2, scope: !5888, file: !80, line: 367, type: !6)
!5894 = !DILocalVariable(name: "q1", arg: 3, scope: !5888, file: !80, line: 367, type: !6)
!5895 = !DILocation(line: 370, column: 13, scope: !5888)
!5896 = !DILocalVariable(name: "x0", scope: !5888, file: !80, line: 368, type: !6)
!5897 = !DILocation(line: 371, column: 13, scope: !5888)
!5898 = !DILocalVariable(name: "x1", scope: !5888, file: !80, line: 368, type: !6)
!5899 = !DILocation(line: 372, column: 14, scope: !5888)
!5900 = !DILocation(line: 372, column: 20, scope: !5888)
!5901 = !DILocalVariable(name: "x2", scope: !5888, file: !80, line: 368, type: !6)
!5902 = !DILocation(line: 373, column: 14, scope: !5888)
!5903 = !DILocation(line: 373, column: 20, scope: !5888)
!5904 = !DILocalVariable(name: "x3", scope: !5888, file: !80, line: 368, type: !6)
!5905 = !DILocation(line: 374, column: 15, scope: !5888)
!5906 = !DILocation(line: 374, column: 8, scope: !5888)
!5907 = !DILocation(line: 375, column: 15, scope: !5888)
!5908 = !DILocation(line: 375, column: 8, scope: !5888)
!5909 = !DILocation(line: 376, column: 8, scope: !5888)
!5910 = !DILocation(line: 377, column: 8, scope: !5888)
!5911 = !DILocation(line: 378, column: 8, scope: !5888)
!5912 = !DILocation(line: 379, column: 8, scope: !5888)
!5913 = !DILocation(line: 382, column: 41, scope: !5888)
!5914 = !DILocation(line: 382, column: 25, scope: !5888)
!5915 = !DILocation(line: 382, column: 10, scope: !5888)
!5916 = !DILocation(line: 383, column: 41, scope: !5888)
!5917 = !DILocation(line: 383, column: 25, scope: !5888)
!5918 = !DILocation(line: 383, column: 5, scope: !5888)
!5919 = !DILocation(line: 383, column: 10, scope: !5888)
!5920 = !DILocation(line: 384, column: 41, scope: !5888)
!5921 = !DILocation(line: 384, column: 25, scope: !5888)
!5922 = !DILocation(line: 384, column: 5, scope: !5888)
!5923 = !DILocation(line: 384, column: 10, scope: !5888)
!5924 = !DILocation(line: 385, column: 41, scope: !5888)
!5925 = !DILocation(line: 385, column: 25, scope: !5888)
!5926 = !DILocation(line: 385, column: 5, scope: !5888)
!5927 = !DILocation(line: 385, column: 10, scope: !5888)
!5928 = !DILocation(line: 386, column: 1, scope: !5888)
!5929 = distinct !DISubprogram(name: "br_range_enc32le", scope: !80, file: !80, line: 127, type: !5930, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5930 = !DISubroutineType(types: !5931)
!5931 = !{null, !18, !5178, !15}
!5932 = !DILocalVariable(name: "dst", arg: 1, scope: !5929, file: !80, line: 127, type: !18)
!5933 = !DILocation(line: 0, scope: !5929)
!5934 = !DILocalVariable(name: "v", arg: 2, scope: !5929, file: !80, line: 127, type: !5178)
!5935 = !DILocalVariable(name: "num", arg: 3, scope: !5929, file: !80, line: 127, type: !15)
!5936 = !DILocation(line: 128, column: 5, scope: !5929)
!5937 = !DILocation(line: 128, column: 18, scope: !5929)
!5938 = !DILocation(line: 128, column: 15, scope: !5929)
!5939 = !DILocation(line: 129, column: 28, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5929, file: !80, line: 128, column: 23)
!5941 = !DILocation(line: 129, column: 25, scope: !5940)
!5942 = !DILocation(line: 129, column: 9, scope: !5940)
!5943 = !DILocation(line: 130, column: 13, scope: !5940)
!5944 = distinct !{!5944, !5936, !5945, !244}
!5945 = !DILocation(line: 131, column: 5, scope: !5929)
!5946 = !DILocation(line: 132, column: 1, scope: !5929)
!5947 = distinct !DISubprogram(name: "br_enc32le", scope: !80, file: !80, line: 119, type: !5948, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5948 = !DISubroutineType(types: !5949)
!5949 = !{null, !18, !19}
!5950 = !DILocalVariable(name: "dst", arg: 1, scope: !5947, file: !80, line: 119, type: !18)
!5951 = !DILocation(line: 0, scope: !5947)
!5952 = !DILocalVariable(name: "x", arg: 2, scope: !5947, file: !80, line: 119, type: !19)
!5953 = !DILocation(line: 120, column: 14, scope: !5947)
!5954 = !DILocation(line: 120, column: 12, scope: !5947)
!5955 = !DILocation(line: 121, column: 32, scope: !5947)
!5956 = !DILocation(line: 121, column: 14, scope: !5947)
!5957 = !DILocation(line: 121, column: 5, scope: !5947)
!5958 = !DILocation(line: 121, column: 12, scope: !5947)
!5959 = !DILocation(line: 122, column: 32, scope: !5947)
!5960 = !DILocation(line: 122, column: 14, scope: !5947)
!5961 = !DILocation(line: 122, column: 5, scope: !5947)
!5962 = !DILocation(line: 122, column: 12, scope: !5947)
!5963 = !DILocation(line: 123, column: 32, scope: !5947)
!5964 = !DILocation(line: 123, column: 14, scope: !5947)
!5965 = !DILocation(line: 123, column: 5, scope: !5947)
!5966 = !DILocation(line: 123, column: 12, scope: !5947)
!5967 = !DILocation(line: 124, column: 1, scope: !5947)
!5968 = distinct !DISubprogram(name: "rotr32", scope: !80, file: !80, line: 503, type: !5969, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5969 = !DISubroutineType(types: !5970)
!5970 = !{!6, !6}
!5971 = !DILocalVariable(name: "x", arg: 1, scope: !5968, file: !80, line: 503, type: !6)
!5972 = !DILocation(line: 0, scope: !5968)
!5973 = !DILocation(line: 504, column: 22, scope: !5968)
!5974 = !DILocation(line: 504, column: 5, scope: !5968)
!5975 = distinct !DISubprogram(name: "aes128_ctr", scope: !80, file: !80, line: 690, type: !5976, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5976 = !DISubroutineType(types: !5977)
!5977 = !{null, !18, !15, !49, !5631}
!5978 = !DILocalVariable(name: "out", arg: 1, scope: !5975, file: !80, line: 690, type: !18)
!5979 = !DILocation(line: 0, scope: !5975)
!5980 = !DILocalVariable(name: "outlen", arg: 2, scope: !5975, file: !80, line: 690, type: !15)
!5981 = !DILocalVariable(name: "iv", arg: 3, scope: !5975, file: !80, line: 690, type: !49)
!5982 = !DILocalVariable(name: "ctx", arg: 4, scope: !5975, file: !80, line: 690, type: !5631)
!5983 = !DILocation(line: 691, column: 35, scope: !5975)
!5984 = !DILocation(line: 691, column: 5, scope: !5975)
!5985 = !DILocation(line: 692, column: 1, scope: !5975)
!5986 = distinct !DISubprogram(name: "aes_ctr", scope: !80, file: !80, line: 607, type: !5987, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5987 = !DISubroutineType(types: !5988)
!5988 = !{null, !18, !15, !49, !428, !17}
!5989 = !DILocalVariable(name: "out", arg: 1, scope: !5986, file: !80, line: 607, type: !18)
!5990 = !DILocation(line: 0, scope: !5986)
!5991 = !DILocalVariable(name: "outlen", arg: 2, scope: !5986, file: !80, line: 607, type: !15)
!5992 = !DILocalVariable(name: "iv", arg: 3, scope: !5986, file: !80, line: 607, type: !49)
!5993 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5986, file: !80, line: 607, type: !428)
!5994 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5986, file: !80, line: 607, type: !17)
!5995 = !DILocalVariable(name: "ivw", scope: !5986, file: !80, line: 608, type: !5651)
!5996 = !DILocation(line: 608, column: 14, scope: !5986)
!5997 = !DILocalVariable(name: "cc", scope: !5986, file: !80, line: 610, type: !19)
!5998 = !DILocation(line: 612, column: 5, scope: !5986)
!5999 = !DILocation(line: 613, column: 16, scope: !5986)
!6000 = !DILocation(line: 613, column: 5, scope: !5986)
!6001 = !DILocation(line: 614, column: 16, scope: !5986)
!6002 = !DILocation(line: 614, column: 5, scope: !5986)
!6003 = !DILocation(line: 615, column: 16, scope: !5986)
!6004 = !DILocation(line: 615, column: 5, scope: !5986)
!6005 = !DILocation(line: 616, column: 15, scope: !5986)
!6006 = !DILocation(line: 616, column: 5, scope: !5986)
!6007 = !DILocation(line: 616, column: 13, scope: !5986)
!6008 = !DILocation(line: 617, column: 15, scope: !5986)
!6009 = !DILocation(line: 617, column: 5, scope: !5986)
!6010 = !DILocation(line: 617, column: 13, scope: !5986)
!6011 = !DILocation(line: 618, column: 15, scope: !5986)
!6012 = !DILocation(line: 618, column: 5, scope: !5986)
!6013 = !DILocation(line: 618, column: 13, scope: !5986)
!6014 = !DILocation(line: 619, column: 15, scope: !5986)
!6015 = !DILocation(line: 619, column: 5, scope: !5986)
!6016 = !DILocation(line: 619, column: 13, scope: !5986)
!6017 = !DILocation(line: 621, column: 5, scope: !5986)
!6018 = !DILocation(line: 621, column: 19, scope: !5986)
!6019 = !DILocation(line: 622, column: 9, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !5986, file: !80, line: 621, column: 25)
!6021 = !DILocation(line: 623, column: 13, scope: !6020)
!6022 = !DILocation(line: 624, column: 16, scope: !6020)
!6023 = distinct !{!6023, !6017, !6024, !244}
!6024 = !DILocation(line: 625, column: 5, scope: !5986)
!6025 = !DILocation(line: 626, column: 16, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !5986, file: !80, line: 626, column: 9)
!6027 = !DILocalVariable(name: "tmp", scope: !6028, file: !80, line: 627, type: !5654)
!6028 = distinct !DILexicalBlock(scope: !6026, file: !80, line: 626, column: 21)
!6029 = !DILocation(line: 627, column: 23, scope: !6028)
!6030 = !DILocation(line: 628, column: 9, scope: !6028)
!6031 = !DILocalVariable(name: "i", scope: !5986, file: !80, line: 609, type: !15)
!6032 = !DILocation(line: 629, column: 14, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6028, file: !80, line: 629, column: 9)
!6034 = !DILocation(line: 629, scope: !6033)
!6035 = !DILocation(line: 629, column: 23, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !6033, file: !80, line: 629, column: 9)
!6037 = !DILocation(line: 629, column: 9, scope: !6033)
!6038 = !DILocation(line: 630, column: 22, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !6036, file: !80, line: 629, column: 38)
!6040 = !DILocation(line: 630, column: 13, scope: !6039)
!6041 = !DILocation(line: 630, column: 20, scope: !6039)
!6042 = !DILocation(line: 629, column: 34, scope: !6036)
!6043 = !DILocation(line: 629, column: 9, scope: !6036)
!6044 = distinct !{!6044, !6037, !6045, !244}
!6045 = !DILocation(line: 631, column: 9, scope: !6033)
!6046 = !DILocation(line: 633, column: 1, scope: !5986)
!6047 = distinct !DISubprogram(name: "br_swap32", scope: !80, file: !80, line: 112, type: !5160, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6048 = !DILocalVariable(name: "x", arg: 1, scope: !6047, file: !80, line: 112, type: !19)
!6049 = !DILocation(line: 0, scope: !6047)
!6050 = !DILocation(line: 115, column: 22, scope: !6047)
!6051 = !DILocation(line: 115, column: 5, scope: !6047)
!6052 = distinct !DISubprogram(name: "aes_ctr4x", scope: !80, file: !80, line: 576, type: !6053, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6053 = !DISubroutineType(types: !6054)
!6054 = !{null, !18, !5143, !428, !17}
!6055 = !DILocalVariable(name: "out", arg: 1, scope: !6052, file: !80, line: 576, type: !18)
!6056 = !DILocation(line: 0, scope: !6052)
!6057 = !DILocalVariable(name: "ivw", arg: 2, scope: !6052, file: !80, line: 576, type: !5143)
!6058 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !6052, file: !80, line: 576, type: !428)
!6059 = !DILocalVariable(name: "nrounds", arg: 4, scope: !6052, file: !80, line: 576, type: !17)
!6060 = !DILocation(line: 577, column: 5, scope: !6052)
!6061 = !DILocation(line: 580, column: 17, scope: !6052)
!6062 = !DILocation(line: 580, column: 5, scope: !6052)
!6063 = !DILocation(line: 581, column: 17, scope: !6052)
!6064 = !DILocation(line: 581, column: 5, scope: !6052)
!6065 = !DILocation(line: 582, column: 17, scope: !6052)
!6066 = !DILocation(line: 582, column: 5, scope: !6052)
!6067 = !DILocation(line: 583, column: 17, scope: !6052)
!6068 = !DILocation(line: 583, column: 5, scope: !6052)
!6069 = !DILocation(line: 584, column: 1, scope: !6052)
!6070 = distinct !DISubprogram(name: "inc4_be", scope: !80, file: !80, line: 539, type: !6071, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6071 = !DISubroutineType(types: !6072)
!6072 = !{null, !5143}
!6073 = !DILocalVariable(name: "x", arg: 1, scope: !6070, file: !80, line: 539, type: !5143)
!6074 = !DILocation(line: 0, scope: !6070)
!6075 = !DILocation(line: 540, column: 28, scope: !6070)
!6076 = !DILocation(line: 540, column: 18, scope: !6070)
!6077 = !DILocation(line: 540, column: 32, scope: !6070)
!6078 = !DILocalVariable(name: "t", scope: !6070, file: !80, line: 540, type: !19)
!6079 = !DILocation(line: 541, column: 10, scope: !6070)
!6080 = !DILocation(line: 541, column: 8, scope: !6070)
!6081 = !DILocation(line: 542, column: 1, scope: !6070)
!6082 = distinct !DISubprogram(name: "aes192_ecb", scope: !80, file: !80, line: 694, type: !6083, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6083 = !DISubroutineType(types: !6084)
!6084 = !{null, !18, !49, !15, !6085}
!6085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6086, size: 32)
!6086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5566)
!6087 = !DILocalVariable(name: "out", arg: 1, scope: !6082, file: !80, line: 694, type: !18)
!6088 = !DILocation(line: 0, scope: !6082)
!6089 = !DILocalVariable(name: "in", arg: 2, scope: !6082, file: !80, line: 694, type: !49)
!6090 = !DILocalVariable(name: "nblocks", arg: 3, scope: !6082, file: !80, line: 694, type: !15)
!6091 = !DILocalVariable(name: "ctx", arg: 4, scope: !6082, file: !80, line: 694, type: !6085)
!6092 = !DILocation(line: 695, column: 36, scope: !6082)
!6093 = !DILocation(line: 695, column: 5, scope: !6082)
!6094 = !DILocation(line: 696, column: 1, scope: !6082)
!6095 = distinct !DISubprogram(name: "aes192_ctr", scope: !80, file: !80, line: 698, type: !6096, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6096 = !DISubroutineType(types: !6097)
!6097 = !{null, !18, !15, !49, !6085}
!6098 = !DILocalVariable(name: "out", arg: 1, scope: !6095, file: !80, line: 698, type: !18)
!6099 = !DILocation(line: 0, scope: !6095)
!6100 = !DILocalVariable(name: "outlen", arg: 2, scope: !6095, file: !80, line: 698, type: !15)
!6101 = !DILocalVariable(name: "iv", arg: 3, scope: !6095, file: !80, line: 698, type: !49)
!6102 = !DILocalVariable(name: "ctx", arg: 4, scope: !6095, file: !80, line: 698, type: !6085)
!6103 = !DILocation(line: 699, column: 35, scope: !6095)
!6104 = !DILocation(line: 699, column: 5, scope: !6095)
!6105 = !DILocation(line: 700, column: 1, scope: !6095)
!6106 = distinct !DISubprogram(name: "aes256_ecb", scope: !80, file: !80, line: 702, type: !6107, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6107 = !DISubroutineType(types: !6108)
!6108 = !{null, !18, !49, !15, !6109}
!6109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6110, size: 32)
!6110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5599)
!6111 = !DILocalVariable(name: "out", arg: 1, scope: !6106, file: !80, line: 702, type: !18)
!6112 = !DILocation(line: 0, scope: !6106)
!6113 = !DILocalVariable(name: "in", arg: 2, scope: !6106, file: !80, line: 702, type: !49)
!6114 = !DILocalVariable(name: "nblocks", arg: 3, scope: !6106, file: !80, line: 702, type: !15)
!6115 = !DILocalVariable(name: "ctx", arg: 4, scope: !6106, file: !80, line: 702, type: !6109)
!6116 = !DILocation(line: 703, column: 36, scope: !6106)
!6117 = !DILocation(line: 703, column: 5, scope: !6106)
!6118 = !DILocation(line: 704, column: 1, scope: !6106)
!6119 = distinct !DISubprogram(name: "aes256_ctr", scope: !80, file: !80, line: 706, type: !6120, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6120 = !DISubroutineType(types: !6121)
!6121 = !{null, !18, !15, !49, !6109}
!6122 = !DILocalVariable(name: "out", arg: 1, scope: !6119, file: !80, line: 706, type: !18)
!6123 = !DILocation(line: 0, scope: !6119)
!6124 = !DILocalVariable(name: "outlen", arg: 2, scope: !6119, file: !80, line: 706, type: !15)
!6125 = !DILocalVariable(name: "iv", arg: 3, scope: !6119, file: !80, line: 706, type: !49)
!6126 = !DILocalVariable(name: "ctx", arg: 4, scope: !6119, file: !80, line: 706, type: !6109)
!6127 = !DILocation(line: 707, column: 35, scope: !6119)
!6128 = !DILocation(line: 707, column: 5, scope: !6119)
!6129 = !DILocation(line: 708, column: 1, scope: !6119)
!6130 = distinct !DISubprogram(name: "aes128_ctx_release", scope: !80, file: !80, line: 710, type: !6131, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6131 = !DISubroutineType(types: !6132)
!6132 = !{null, !4944}
!6133 = !DILocalVariable(name: "r", arg: 1, scope: !6130, file: !80, line: 710, type: !4944)
!6134 = !DILocation(line: 0, scope: !6130)
!6135 = !DILocation(line: 711, column: 13, scope: !6130)
!6136 = !DILocation(line: 711, column: 5, scope: !6130)
!6137 = !DILocation(line: 712, column: 1, scope: !6130)
!6138 = distinct !DISubprogram(name: "aes192_ctx_release", scope: !80, file: !80, line: 714, type: !6139, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6139 = !DISubroutineType(types: !6140)
!6140 = !{null, !5565}
!6141 = !DILocalVariable(name: "r", arg: 1, scope: !6138, file: !80, line: 714, type: !5565)
!6142 = !DILocation(line: 0, scope: !6138)
!6143 = !DILocation(line: 715, column: 13, scope: !6138)
!6144 = !DILocation(line: 715, column: 5, scope: !6138)
!6145 = !DILocation(line: 716, column: 1, scope: !6138)
!6146 = distinct !DISubprogram(name: "aes256_ctx_release", scope: !80, file: !80, line: 718, type: !6147, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6147 = !DISubroutineType(types: !6148)
!6148 = !{null, !5598}
!6149 = !DILocalVariable(name: "r", arg: 1, scope: !6146, file: !80, line: 718, type: !5598)
!6150 = !DILocation(line: 0, scope: !6146)
!6151 = !DILocation(line: 719, column: 13, scope: !6146)
!6152 = !DILocation(line: 719, column: 5, scope: !6146)
!6153 = !DILocation(line: 720, column: 1, scope: !6146)
!6154 = distinct !DISubprogram(name: "AES_128_CTR", scope: !80, file: !80, line: 722, type: !6155, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6155 = !DISubroutineType(types: !6156)
!6156 = !{!45, !18, !15, !49, !15}
!6157 = !DILocalVariable(name: "output", arg: 1, scope: !6154, file: !80, line: 722, type: !18)
!6158 = !DILocation(line: 0, scope: !6154)
!6159 = !DILocalVariable(name: "outputByteLen", arg: 2, scope: !6154, file: !80, line: 722, type: !15)
!6160 = !DILocalVariable(name: "input", arg: 3, scope: !6154, file: !80, line: 723, type: !49)
!6161 = !DILocalVariable(name: "inputByteLen", arg: 4, scope: !6154, file: !80, line: 723, type: !15)
!6162 = !DILocalVariable(name: "ctx", scope: !6154, file: !80, line: 724, type: !4945)
!6163 = !DILocation(line: 724, column: 15, scope: !6154)
!6164 = !DILocalVariable(name: "iv", scope: !6154, file: !80, line: 725, type: !116)
!6165 = !DILocation(line: 725, column: 19, scope: !6154)
!6166 = !DILocation(line: 727, column: 5, scope: !6154)
!6167 = !DILocation(line: 728, column: 5, scope: !6154)
!6168 = !DILocation(line: 729, column: 5, scope: !6154)
!6169 = !DILocation(line: 731, column: 5, scope: !6154)
!6170 = distinct !DISubprogram(name: "AES_256_ECB", scope: !80, file: !80, line: 734, type: !6171, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6171 = !DISubroutineType(types: !6172)
!6172 = !{null, !257, !49, !18}
!6173 = !DILocalVariable(name: "input", arg: 1, scope: !6170, file: !80, line: 734, type: !257)
!6174 = !DILocation(line: 0, scope: !6170)
!6175 = !DILocalVariable(name: "key", arg: 2, scope: !6170, file: !80, line: 734, type: !49)
!6176 = !DILocalVariable(name: "output", arg: 3, scope: !6170, file: !80, line: 734, type: !18)
!6177 = !DILocalVariable(name: "ctx", scope: !6170, file: !80, line: 735, type: !5599)
!6178 = !DILocation(line: 735, column: 15, scope: !6170)
!6179 = !DILocation(line: 737, column: 5, scope: !6170)
!6180 = !DILocation(line: 738, column: 5, scope: !6170)
!6181 = !DILocation(line: 739, column: 5, scope: !6170)
!6182 = !DILocation(line: 740, column: 1, scope: !6170)
!6183 = !DILocalVariable(name: "mem", arg: 1, scope: !86, file: !87, line: 7, type: !69)
!6184 = !DILocation(line: 0, scope: !86)
!6185 = !DILocalVariable(name: "size", arg: 2, scope: !86, file: !87, line: 7, type: !15)
!6186 = !DILocation(line: 8, column: 9, scope: !6187)
!6187 = distinct !DILexicalBlock(scope: !86, file: !87, line: 8, column: 9)
!6188 = !DILocation(line: 11, column: 9, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6187, file: !87, line: 8, column: 14)
!6190 = !DILocation(line: 12, column: 9, scope: !6189)
!6191 = !DILocation(line: 13, column: 5, scope: !6189)
!6192 = !DILocation(line: 14, column: 1, scope: !86)
!6193 = !DILocalVariable(name: "mem", arg: 1, scope: !94, file: !87, line: 15, type: !69)
!6194 = !DILocation(line: 0, scope: !94)
!6195 = !DILocalVariable(name: "size", arg: 2, scope: !94, file: !87, line: 15, type: !15)
!6196 = !DILocation(line: 18, column: 5, scope: !94)
!6197 = !DILocation(line: 19, column: 1, scope: !94)
!6198 = distinct !DISubprogram(name: "AES256_CTR_DRBG_Update", scope: !107, file: !107, line: 101, type: !6199, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6199 = !DISubroutineType(types: !6200)
!6200 = !{null, !18, !18, !18}
!6201 = !DILocalVariable(name: "provided_data", arg: 1, scope: !6198, file: !107, line: 101, type: !18)
!6202 = !DILocation(line: 0, scope: !6198)
!6203 = !DILocalVariable(name: "Key", arg: 2, scope: !6198, file: !107, line: 102, type: !18)
!6204 = !DILocalVariable(name: "V", arg: 3, scope: !6198, file: !107, line: 103, type: !18)
!6205 = !DILocalVariable(name: "temp", scope: !6198, file: !107, line: 104, type: !6206)
!6206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 384, elements: !6207)
!6207 = !{!6208}
!6208 = !DISubrange(count: 48)
!6209 = !DILocation(line: 104, column: 21, scope: !6198)
!6210 = !DILocalVariable(name: "i", scope: !6211, file: !107, line: 106, type: !45)
!6211 = distinct !DILexicalBlock(scope: !6198, file: !107, line: 106, column: 5)
!6212 = !DILocation(line: 0, scope: !6211)
!6213 = !DILocation(line: 106, column: 10, scope: !6211)
!6214 = !DILocation(line: 106, scope: !6211)
!6215 = !DILocation(line: 106, column: 23, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !6211, file: !107, line: 106, column: 5)
!6217 = !DILocation(line: 106, column: 5, scope: !6211)
!6218 = !DILocation(line: 108, column: 9, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !6220, file: !107, line: 108, column: 9)
!6220 = distinct !DILexicalBlock(scope: !6216, file: !107, line: 106, column: 33)
!6221 = !DILocation(line: 108, scope: !6219)
!6222 = !DILocalVariable(name: "j", scope: !6219, file: !107, line: 108, type: !45)
!6223 = !DILocation(line: 0, scope: !6219)
!6224 = !DILocation(line: 108, column: 28, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6219, file: !107, line: 108, column: 9)
!6226 = !DILocation(line: 109, column: 18, scope: !6227)
!6227 = distinct !DILexicalBlock(scope: !6228, file: !107, line: 109, column: 18)
!6228 = distinct !DILexicalBlock(scope: !6225, file: !107, line: 108, column: 39)
!6229 = !DILocation(line: 109, column: 23, scope: !6227)
!6230 = !DILocation(line: 110, column: 17, scope: !6231)
!6231 = distinct !DILexicalBlock(scope: !6227, file: !107, line: 109, column: 33)
!6232 = !DILocation(line: 110, column: 22, scope: !6231)
!6233 = !DILocation(line: 108, column: 35, scope: !6225)
!6234 = !DILocation(line: 108, column: 9, scope: !6225)
!6235 = distinct !{!6235, !6218, !6236, !244}
!6236 = !DILocation(line: 115, column: 9, scope: !6219)
!6237 = !DILocation(line: 112, column: 17, scope: !6238)
!6238 = distinct !DILexicalBlock(scope: !6227, file: !107, line: 111, column: 20)
!6239 = !DILocation(line: 112, column: 21, scope: !6238)
!6240 = !DILocation(line: 113, column: 17, scope: !6238)
!6241 = !DILocation(line: 117, column: 38, scope: !6220)
!6242 = !DILocation(line: 117, column: 33, scope: !6220)
!6243 = !DILocation(line: 117, column: 9, scope: !6220)
!6244 = !DILocation(line: 106, column: 29, scope: !6216)
!6245 = !DILocation(line: 106, column: 5, scope: !6216)
!6246 = distinct !{!6246, !6217, !6247, !244}
!6247 = !DILocation(line: 118, column: 5, scope: !6211)
!6248 = !DILocation(line: 119, column: 24, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6198, file: !107, line: 119, column: 10)
!6250 = !DILocation(line: 120, column: 9, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6249, file: !107, line: 120, column: 9)
!6252 = !DILocation(line: 120, scope: !6251)
!6253 = !DILocalVariable(name: "i", scope: !6251, file: !107, line: 120, type: !45)
!6254 = !DILocation(line: 0, scope: !6251)
!6255 = !DILocation(line: 120, column: 27, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6251, file: !107, line: 120, column: 9)
!6257 = !DILocation(line: 121, column: 24, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6256, file: !107, line: 120, column: 38)
!6259 = !DILocation(line: 121, column: 13, scope: !6258)
!6260 = !DILocation(line: 121, column: 21, scope: !6258)
!6261 = !DILocation(line: 120, column: 34, scope: !6256)
!6262 = !DILocation(line: 120, column: 9, scope: !6256)
!6263 = distinct !{!6263, !6250, !6264, !244}
!6264 = !DILocation(line: 122, column: 9, scope: !6251)
!6265 = !DILocation(line: 123, column: 5, scope: !6198)
!6266 = !DILocation(line: 124, column: 20, scope: !6198)
!6267 = !DILocation(line: 124, column: 5, scope: !6198)
!6268 = !DILocation(line: 125, column: 1, scope: !6198)
!6269 = distinct !DISubprogram(name: "AES256_ECB", scope: !107, file: !107, line: 24, type: !6199, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6270 = !DILocalVariable(name: "key", arg: 1, scope: !6269, file: !107, line: 24, type: !18)
!6271 = !DILocation(line: 0, scope: !6269)
!6272 = !DILocalVariable(name: "ctr", arg: 2, scope: !6269, file: !107, line: 24, type: !18)
!6273 = !DILocalVariable(name: "buffer", arg: 3, scope: !6269, file: !107, line: 24, type: !18)
!6274 = !DILocation(line: 25, column: 5, scope: !6269)
!6275 = !DILocation(line: 26, column: 1, scope: !6269)
!6276 = distinct !DISubprogram(name: "randombytes", scope: !107, file: !107, line: 127, type: !6277, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6277 = !DISubroutineType(types: !6278)
!6278 = !{!45, !18, !15}
!6279 = !DILocalVariable(name: "random_array", arg: 1, scope: !6276, file: !107, line: 127, type: !18)
!6280 = !DILocation(line: 0, scope: !6276)
!6281 = !DILocalVariable(name: "nbytes", arg: 2, scope: !6276, file: !107, line: 127, type: !15)
!6282 = !DILocation(line: 128, column: 15, scope: !6276)
!6283 = !DILocalVariable(name: "ret", scope: !6276, file: !107, line: 128, type: !45)
!6284 = !DILocation(line: 132, column: 5, scope: !6276)
!6285 = distinct !DISubprogram(name: "randombytes_nist", scope: !107, file: !107, line: 69, type: !6277, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6286 = !DILocalVariable(name: "x", arg: 1, scope: !6285, file: !107, line: 69, type: !18)
!6287 = !DILocation(line: 0, scope: !6285)
!6288 = !DILocalVariable(name: "xlen", arg: 2, scope: !6285, file: !107, line: 69, type: !15)
!6289 = !DILocalVariable(name: "block", scope: !6285, file: !107, line: 70, type: !116)
!6290 = !DILocation(line: 70, column: 21, scope: !6285)
!6291 = !DILocalVariable(name: "i", scope: !6285, file: !107, line: 71, type: !15)
!6292 = !DILocation(line: 73, column: 5, scope: !6285)
!6293 = !DILocation(line: 73, column: 18, scope: !6285)
!6294 = !DILocation(line: 75, column: 9, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6296, file: !107, line: 75, column: 9)
!6296 = distinct !DILexicalBlock(scope: !6285, file: !107, line: 73, column: 24)
!6297 = !DILocation(line: 75, scope: !6295)
!6298 = !DILocalVariable(name: "j", scope: !6295, file: !107, line: 75, type: !45)
!6299 = !DILocation(line: 0, scope: !6295)
!6300 = !DILocation(line: 75, column: 28, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6295, file: !107, line: 75, column: 9)
!6302 = !DILocation(line: 76, column: 18, scope: !6303)
!6303 = distinct !DILexicalBlock(scope: !6304, file: !107, line: 76, column: 18)
!6304 = distinct !DILexicalBlock(scope: !6301, file: !107, line: 75, column: 39)
!6305 = !DILocation(line: 76, column: 32, scope: !6303)
!6306 = !DILocation(line: 77, column: 17, scope: !6307)
!6307 = distinct !DILexicalBlock(scope: !6303, file: !107, line: 76, column: 42)
!6308 = !DILocation(line: 77, column: 31, scope: !6307)
!6309 = !DILocation(line: 75, column: 35, scope: !6301)
!6310 = !DILocation(line: 75, column: 9, scope: !6301)
!6311 = distinct !{!6311, !6294, !6312, !244}
!6312 = !DILocation(line: 82, column: 9, scope: !6295)
!6313 = !DILocation(line: 79, column: 17, scope: !6314)
!6314 = distinct !DILexicalBlock(scope: !6303, file: !107, line: 78, column: 20)
!6315 = !DILocation(line: 79, column: 30, scope: !6314)
!6316 = !DILocation(line: 80, column: 17, scope: !6314)
!6317 = !DILocation(line: 83, column: 9, scope: !6296)
!6318 = !DILocation(line: 84, column: 19, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !6296, file: !107, line: 84, column: 14)
!6320 = !DILocation(line: 85, column: 22, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6319, file: !107, line: 84, column: 26)
!6322 = !DILocation(line: 85, column: 13, scope: !6321)
!6323 = !DILocation(line: 86, column: 15, scope: !6321)
!6324 = !DILocation(line: 87, column: 18, scope: !6321)
!6325 = !DILocation(line: 88, column: 9, scope: !6321)
!6326 = !DILocation(line: 89, column: 22, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6319, file: !107, line: 88, column: 16)
!6328 = !DILocation(line: 89, column: 13, scope: !6327)
!6329 = !DILocation(line: 90, column: 15, scope: !6327)
!6330 = !DILocation(line: 0, scope: !6319)
!6331 = distinct !{!6331, !6292, !6332, !244}
!6332 = !DILocation(line: 93, column: 5, scope: !6285)
!6333 = !DILocation(line: 94, column: 5, scope: !6285)
!6334 = !DILocation(line: 95, column: 28, scope: !6285)
!6335 = !DILocation(line: 97, column: 5, scope: !6285)
!6336 = distinct !DISubprogram(name: "randombytes_init", scope: !107, file: !107, line: 136, type: !6337, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6337 = !DISubroutineType(types: !6338)
!6338 = !{null, !18, !18, !45}
!6339 = !DILocalVariable(name: "entropy_input", arg: 1, scope: !6336, file: !107, line: 136, type: !18)
!6340 = !DILocation(line: 0, scope: !6336)
!6341 = !DILocalVariable(name: "personalization_string", arg: 2, scope: !6336, file: !107, line: 137, type: !18)
!6342 = !DILocalVariable(name: "security_strength", arg: 3, scope: !6336, file: !107, line: 138, type: !45)
!6343 = !DILocation(line: 139, column: 12, scope: !6336)
!6344 = !DILocation(line: 139, column: 5, scope: !6336)
!6345 = distinct !DISubprogram(name: "randombytes_init_nist", scope: !107, file: !107, line: 51, type: !6337, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6346 = !DILocalVariable(name: "entropy_input", arg: 1, scope: !6345, file: !107, line: 51, type: !18)
!6347 = !DILocation(line: 0, scope: !6345)
!6348 = !DILocalVariable(name: "personalization_string", arg: 2, scope: !6345, file: !107, line: 52, type: !18)
!6349 = !DILocalVariable(name: "security_strength", arg: 3, scope: !6345, file: !107, line: 53, type: !45)
!6350 = !DILocalVariable(name: "seed_material", scope: !6345, file: !107, line: 54, type: !6206)
!6351 = !DILocation(line: 54, column: 21, scope: !6345)
!6352 = !DILocation(line: 57, column: 5, scope: !6345)
!6353 = !DILocation(line: 58, column: 9, scope: !6354)
!6354 = distinct !DILexicalBlock(scope: !6345, file: !107, line: 58, column: 9)
!6355 = !DILocation(line: 59, column: 9, scope: !6356)
!6356 = distinct !DILexicalBlock(scope: !6354, file: !107, line: 59, column: 9)
!6357 = !DILocation(line: 59, scope: !6356)
!6358 = !DILocalVariable(name: "i", scope: !6356, file: !107, line: 59, type: !45)
!6359 = !DILocation(line: 0, scope: !6356)
!6360 = !DILocation(line: 59, column: 27, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6356, file: !107, line: 59, column: 9)
!6362 = !DILocation(line: 60, column: 33, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6361, file: !107, line: 59, column: 38)
!6364 = !DILocation(line: 60, column: 13, scope: !6363)
!6365 = !DILocation(line: 60, column: 30, scope: !6363)
!6366 = !DILocation(line: 59, column: 34, scope: !6361)
!6367 = !DILocation(line: 59, column: 9, scope: !6361)
!6368 = distinct !{!6368, !6355, !6369, !244}
!6369 = !DILocation(line: 61, column: 9, scope: !6356)
!6370 = !DILocation(line: 62, column: 5, scope: !6345)
!6371 = !DILocation(line: 63, column: 5, scope: !6345)
!6372 = !DILocation(line: 64, column: 5, scope: !6345)
!6373 = !DILocation(line: 65, column: 29, scope: !6345)
!6374 = !DILocation(line: 66, column: 1, scope: !6345)
