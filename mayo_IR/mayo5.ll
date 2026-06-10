; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

%struct.AES256_CTR_DRBG_struct = type { [32 x i8], [16 x i8], i32 }
%struct.shake128incctx = type { ptr }

@__const.example_mayo.msg = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 14, [31 x i8] zeroinitializer }>, align 1
@f_tail = internal unnamed_addr constant [4 x i8] c"\04\00\08\01", align 1, !dbg !0
@pqmayo_MAYO_5_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41
@pqmayo_MAYO_5_ref_uint64_t_blocker = dso_local global i64 0, align 8, !dbg !56
@pqmayo_MAYO_5_ref_unsigned_char_blocker = dso_local global i8 0, align 1, !dbg !60
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
  %epk = alloca [107415 x i64], align 8
  %esk = alloca [106926 x i64], align 8
  %msg = alloca [32 x i8], align 1
  %msg2 = alloca [32 x i8], align 1
    #dbg_value(ptr null, !168, !DIExpression(), !169)
    #dbg_value(i32 32, !170, !DIExpression(), !169)
  store i32 32, ptr %msglen, align 4, !dbg !171
    #dbg_value(i32 32, !170, !DIExpression(), !169)
    #dbg_value(i32 996, !172, !DIExpression(), !169)
  store i32 996, ptr %smlen, align 4, !dbg !173
  %call = call dereferenceable_or_null(5554) ptr @calloc(i32 noundef 5554, i32 noundef 1) #5, !dbg !174
    #dbg_value(ptr %call, !175, !DIExpression(), !169)
  %call1 = call dereferenceable_or_null(40) ptr @calloc(i32 noundef 40, i32 noundef 1) #5, !dbg !176
    #dbg_value(ptr %call1, !177, !DIExpression(), !169)
    #dbg_declare(ptr %epk, !178, !DIExpression(), !183)
    #dbg_declare(ptr %esk, !184, !DIExpression(), !189)
  %0 = load i32, ptr %msglen, align 4, !dbg !190
    #dbg_value(i32 %0, !170, !DIExpression(), !169)
  %add2 = add i32 %0, 964, !dbg !191
  %call3 = call ptr @calloc(i32 noundef %add2, i32 noundef 1) #5, !dbg !192
    #dbg_value(ptr %call3, !193, !DIExpression(), !169)
    #dbg_declare(ptr %msg, !194, !DIExpression(), !195)
  call void @mayo_memcpy(ptr %msg, ptr @__const.example_mayo.msg, i32 32), !dbg !195
    #dbg_declare(ptr %msg2, !196, !DIExpression(), !197)
  call void @mayo_memset(ptr %msg2, i8 0, i32 32), !dbg !197
  %call4 = call i32 @pqmayo_MAYO_5_ref_mayo_keypair(ptr noundef null, ptr noundef %call, ptr noundef %call1) #4, !dbg !198
    #dbg_value(i32 0, !199, !DIExpression(), !169)
  %call5 = call i32 @pqmayo_MAYO_5_ref_mayo_expand_sk(ptr noundef null, ptr noundef %call1, ptr noundef nonnull %esk) #4, !dbg !200
    #dbg_value(i32 0, !199, !DIExpression(), !169)
  %call11 = call i32 @pqmayo_MAYO_5_ref_mayo_expand_pk(ptr noundef null, ptr noundef %call, ptr noundef nonnull %epk) #4, !dbg !201
    #dbg_value(i32 0, !199, !DIExpression(), !169)
  %1 = load i32, ptr %msglen, align 4, !dbg !202
    #dbg_value(i32 %1, !170, !DIExpression(), !169)
    #dbg_value(ptr %smlen, !172, !DIExpression(DW_OP_deref), !169)
  %call17 = call i32 @pqmayo_MAYO_5_ref_mayo_sign(ptr noundef null, ptr noundef %call3, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #4, !dbg !203
    #dbg_value(i32 0, !199, !DIExpression(), !169)
  %2 = load i32, ptr %smlen, align 4, !dbg !204
    #dbg_value(i32 %2, !172, !DIExpression(), !169)
    #dbg_value(ptr %msglen, !170, !DIExpression(DW_OP_deref), !169)
  %call23 = call i32 @pqmayo_MAYO_5_ref_mayo_open(ptr noundef null, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call3, i32 noundef %2, ptr noundef %call) #4, !dbg !205
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
  %call32 = call i32 @pqmayo_MAYO_5_ref_mayo_verify(ptr noundef null, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call3, ptr noundef %call) #4, !dbg !212
    #dbg_value(i32 %call32, !199, !DIExpression(), !169)
  %sext = sub nsw i32 0, %call32, !dbg !213
  br label %err, !dbg !213

err:                                              ; preds = %if.end30, %entry, %lor.lhs.false
  %res.0 = phi i32 [ -1, %lor.lhs.false ], [ -1, %entry ], [ %sext, %if.end30 ], !dbg !169
    #dbg_value(i32 %res.0, !199, !DIExpression(), !169)
    #dbg_label(!215, !216)
  call void @free(ptr noundef %call) #6, !dbg !217
  call void @mayo_secure_free(ptr noundef %call1, i32 noundef 40) #4, !dbg !218
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
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !275 {
entry:
    #dbg_value(ptr %p, !306, !DIExpression(), !307)
    #dbg_value(ptr %pk, !308, !DIExpression(), !307)
    #dbg_value(ptr %sk, !309, !DIExpression(), !307)
    #dbg_value(i32 0, !310, !DIExpression(), !307)
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #4, !dbg !311
    #dbg_value(i32 0, !310, !DIExpression(), !307)
    #dbg_label(!312, !313)
  ret i32 0, !dbg !314
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !315 {
entry:
  %S = alloca [868 x i8], align 1
  %P = alloca [106713 x i64], align 8
  %P3 = alloca [1296 x i64], align 8
  %O = alloca [1704 x i8], align 1
  %P3_upper = alloca [702 x i64], align 8
    #dbg_value(ptr %p, !316, !DIExpression(), !317)
    #dbg_value(ptr %cpk, !318, !DIExpression(), !317)
    #dbg_value(ptr %csk, !319, !DIExpression(), !317)
    #dbg_value(i32 0, !320, !DIExpression(), !317)
    #dbg_value(ptr %csk, !321, !DIExpression(), !317)
    #dbg_declare(ptr %S, !322, !DIExpression(), !326)
    #dbg_declare(ptr %P, !327, !DIExpression(), !331)
    #dbg_declare(ptr %P3, !332, !DIExpression(), !336)
  call void @mayo_memset(ptr %P3, i8 0, i32 10368), !dbg !336
    #dbg_declare(ptr %O, !337, !DIExpression(), !341)
    #dbg_value(i32 9, !342, !DIExpression(), !317)
    #dbg_value(i32 142, !344, !DIExpression(), !317)
    #dbg_value(i32 142, !345, !DIExpression(), !317)
    #dbg_value(i32 12, !346, !DIExpression(), !317)
    #dbg_value(i32 852, !347, !DIExpression(), !317)
    #dbg_value(i32 91377, !348, !DIExpression(), !317)
    #dbg_value(i32 702, !349, !DIExpression(), !317)
    #dbg_value(i32 16, !350, !DIExpression(), !317)
    #dbg_value(i32 40, !351, !DIExpression(), !317)
    #dbg_value(ptr %P, !352, !DIExpression(), !317)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 731016, !dbg !353
    #dbg_value(ptr %add.ptr, !354, !DIExpression(), !317)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 40) #4, !dbg !355
    #dbg_value(ptr %P, !352, !DIExpression(), !317)
  call void @shake256(ptr noundef nonnull %S, i32 noundef 868, ptr noundef %csk, i32 noundef 40) #4, !dbg !357
    #dbg_value(ptr %S, !358, !DIExpression(), !317)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !359
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 1704) #4, !dbg !360
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #4, !dbg !361
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #4, !dbg !362
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #6, !dbg !363
    #dbg_declare(ptr %P3_upper, !364, !DIExpression(), !368)
  call void @pqmayo_MAYO_5_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 12) #4, !dbg !369
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !370
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 78, i32 noundef 142) #4, !dbg !371
    #dbg_value(i32 0, !320, !DIExpression(), !317)
    #dbg_label(!372, !373)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 1704) #4, !dbg !374
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 122688) #4, !dbg !375
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 10368) #4, !dbg !376
  ret i32 0, !dbg !377
}

; Function Attrs: nounwind
define internal fastcc void @decode(ptr noundef %m, ptr noundef %mdec, i32 noundef range(i32 -2147483503, -2147483648) %mdeclen) unnamed_addr #0 !dbg !378 {
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
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 841847, ptr noundef %seed_pk, i32 noundef 16) #4, !dbg !421
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 11857, i32 noundef 142) #4, !dbg !422
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
    #dbg_value(i32 9, !435, !DIExpression(), !430)
    #dbg_value(i32 142, !436, !DIExpression(), !430)
    #dbg_value(i32 12, !437, !DIExpression(), !430)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #4, !dbg !438
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 9, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 142, i32 noundef 12, i32 noundef 12) #4, !dbg !439
  ret void, !dbg !440
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @pack_m_vecs(ptr noundef nonnull %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) unnamed_addr #0 !dbg !441 {
entry:
    #dbg_value(ptr %in, !444, !DIExpression(), !445)
    #dbg_value(ptr %out, !446, !DIExpression(), !445)
    #dbg_value(i32 78, !447, !DIExpression(), !445)
    #dbg_value(i32 142, !448, !DIExpression(), !445)
    #dbg_value(i32 9, !449, !DIExpression(), !445)
    #dbg_value(ptr %in, !450, !DIExpression(), !445)
    #dbg_value(i32 0, !451, !DIExpression(), !453)
  br label %for.cond, !dbg !454

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !455
    #dbg_value(i32 %i.0, !451, !DIExpression(), !453)
  %exitcond = icmp ne i32 %i.0, 78, !dbg !456
  br i1 %exitcond, label %for.body, label %for.end, !dbg !458

for.body:                                         ; preds = %for.cond
  %div1 = mul nuw nsw i32 %i.0, 71, !dbg !459
  %add.ptr = getelementptr inbounds nuw i8, ptr %out, i32 %div1, !dbg !461
  %mul3 = mul nuw nsw i32 %i.0, 72, !dbg !462
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %in, i32 %mul3, !dbg !463
  %call = call ptr @memmove(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr4, i32 noundef 71) #6, !dbg !464
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
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 9, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 142, i32 noundef 142, i32 noundef 12, i32 noundef 1) #4, !dbg !478
  ret void, !dbg !479
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !480 {
entry:
    #dbg_value(i32 9, !483, !DIExpression(), !484)
    #dbg_value(ptr %mat, !485, !DIExpression(), !484)
    #dbg_value(ptr %bs_mat, !486, !DIExpression(), !484)
    #dbg_value(ptr %acc, !487, !DIExpression(), !484)
    #dbg_value(i32 142, !488, !DIExpression(), !484)
    #dbg_value(i32 12, !489, !DIExpression(), !484)
    #dbg_value(i32 12, !490, !DIExpression(), !484)
    #dbg_value(i32 0, !491, !DIExpression(), !493)
  br label %for.cond, !dbg !494

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !495
    #dbg_value(i32 %r.0, !491, !DIExpression(), !493)
  %exitcond2 = icmp ne i32 %r.0, 12, !dbg !496
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !498

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !499

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !502
    #dbg_value(i32 %c.0, !503, !DIExpression(), !504)
  %exitcond1 = icmp ne i32 %c.0, 142, !dbg !505
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !499

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !507

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !510
    #dbg_value(i32 %k.0, !511, !DIExpression(), !512)
  %exitcond = icmp ne i32 %k.0, 12, !dbg !513
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !507

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, 12, !dbg !515
  %add = add nuw nsw i32 %mul, %k.0, !dbg !517
  %add.ptr.idx = mul nuw nsw i32 %add, 72, !dbg !518
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !518
  %mul8 = mul nuw nsw i32 %c.0, 12, !dbg !519
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !520
  %arrayidx = getelementptr i8, ptr %0, i32 %r.0, !dbg !520
  %1 = load i8, ptr %arrayidx, align 1, !dbg !520
  %mul10 = mul nuw nsw i32 %r.0, 12, !dbg !521
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !522
  %add.ptr13.idx = mul nuw nsw i32 %add11, 72, !dbg !523
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !523
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #4, !dbg !524
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
  %exitcond = icmp ne i32 %i.0, 9, !dbg !555
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
    #dbg_value(i32 9, !613, !DIExpression(), !614)
    #dbg_value(ptr %bs_mat, !615, !DIExpression(), !614)
    #dbg_value(ptr %mat, !616, !DIExpression(), !614)
    #dbg_value(ptr %acc, !617, !DIExpression(), !614)
    #dbg_value(i32 142, !618, !DIExpression(), !614)
    #dbg_value(i32 142, !619, !DIExpression(), !614)
    #dbg_value(i32 12, !620, !DIExpression(), !614)
    #dbg_value(i32 1, !621, !DIExpression(), !614)
    #dbg_value(i32 0, !622, !DIExpression(), !614)
    #dbg_value(i32 0, !623, !DIExpression(), !625)
  br label %for.cond, !dbg !626

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 142, %entry ], !dbg !627
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !627
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !628
    #dbg_value(i32 %r.0, !623, !DIExpression(), !625)
    #dbg_value(i32 %bs_mat_entries_used.0, !622, !DIExpression(), !614)
  %exitcond2 = icmp ne i32 %r.0, 142, !dbg !629
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
  %exitcond = icmp ne i32 %k.0, 12, !dbg !646
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !640

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !648
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !648
  %mul8 = mul nuw nsw i32 %c.0, 12, !dbg !650
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !651
  %arrayidx = getelementptr i8, ptr %1, i32 %k.0, !dbg !651
  %2 = load i8, ptr %arrayidx, align 1, !dbg !651
  %mul9 = mul nuw nsw i32 %r.0, 12, !dbg !652
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !653
  %add.ptr12.idx = mul nuw nsw i32 %add10, 72, !dbg !654
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !654
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #4, !dbg !655
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
define internal fastcc void @unpack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef range(i32 78, 11858) %vecs, i32 noundef %m) unnamed_addr #0 !dbg !670 {
entry:
  %tmp = alloca [9 x i64], align 8
    #dbg_value(ptr %in, !673, !DIExpression(), !674)
    #dbg_value(ptr %out, !675, !DIExpression(), !674)
    #dbg_value(i32 %vecs, !676, !DIExpression(), !674)
    #dbg_value(i32 142, !677, !DIExpression(), !674)
    #dbg_value(i32 9, !678, !DIExpression(), !674)
    #dbg_value(ptr %out, !679, !DIExpression(), !674)
    #dbg_declare(ptr %tmp, !680, !DIExpression(), !684)
  call void @mayo_memset(ptr %tmp, i8 0, i32 72), !dbg !684
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
  %div1 = mul nsw i32 %i.0, 71, !dbg !693
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %div1, !dbg !695
  %call = call ptr @memcpy(ptr noundef nonnull %tmp, ptr noundef %add.ptr, i32 noundef 71) #6, !dbg !696
  %mul4 = mul nsw i32 %i.0, 72, !dbg !697
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %out, i32 %mul4, !dbg !698
  %call8 = call ptr @memcpy(ptr noundef %add.ptr5, ptr noundef nonnull %tmp, i32 noundef 72) #6, !dbg !699
    #dbg_value(i32 %i.0, !685, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !687)
  br label %for.cond, !dbg !700, !llvm.loop !701

for.end:                                          ; preds = %for.cond
  ret void, !dbg !703
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !704 {
entry:
  %S = alloca [868 x i8], align 1
    #dbg_value(ptr %p, !707, !DIExpression(), !708)
    #dbg_value(ptr %csk, !709, !DIExpression(), !708)
    #dbg_value(ptr %sk, !710, !DIExpression(), !708)
    #dbg_value(i32 0, !711, !DIExpression(), !708)
    #dbg_declare(ptr %S, !712, !DIExpression(), !713)
    #dbg_value(ptr %sk, !714, !DIExpression(), !708)
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sk, i32 853704, !dbg !715
    #dbg_value(ptr %add.ptr1, !716, !DIExpression(), !708)
    #dbg_value(i32 12, !717, !DIExpression(), !708)
    #dbg_value(i32 142, !718, !DIExpression(), !708)
    #dbg_value(i32 852, !719, !DIExpression(), !708)
    #dbg_value(i32 16, !720, !DIExpression(), !708)
    #dbg_value(i32 40, !721, !DIExpression(), !708)
    #dbg_value(ptr %csk, !722, !DIExpression(), !708)
    #dbg_value(ptr %S, !723, !DIExpression(), !708)
  call void @shake256(ptr noundef nonnull %S, i32 noundef 868, ptr noundef %csk, i32 noundef 40) #4, !dbg !724
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !725
  call fastcc void @decode(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr1, i32 noundef 1704) #4, !dbg !726
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #4, !dbg !727
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %sk, i32 731016, !dbg !728
    #dbg_value(ptr %add.ptr5, !729, !DIExpression(), !708)
    #dbg_value(ptr %sk, !730, !DIExpression(), !708)
    #dbg_value(ptr %add.ptr5, !731, !DIExpression(), !708)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %add.ptr1, ptr noundef nonnull %add.ptr5) #4, !dbg !732
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 868) #4, !dbg !733
  ret i32 0, !dbg !734
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !735 {
entry:
    #dbg_value(ptr %p, !736, !DIExpression(), !737)
    #dbg_value(ptr %P1, !738, !DIExpression(), !737)
    #dbg_value(ptr %O, !739, !DIExpression(), !737)
    #dbg_value(ptr %acc, !740, !DIExpression(), !737)
    #dbg_value(i32 12, !741, !DIExpression(), !737)
    #dbg_value(i32 142, !742, !DIExpression(), !737)
    #dbg_value(i32 9, !743, !DIExpression(), !737)
    #dbg_value(i32 0, !744, !DIExpression(), !737)
    #dbg_value(i32 0, !745, !DIExpression(), !747)
  br label %for.cond, !dbg !748

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 142, %entry ], !dbg !749
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc27 ], !dbg !749
  %r.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !dbg !750
    #dbg_value(i32 %r.0, !745, !DIExpression(), !747)
    #dbg_value(i32 %bs_mat_entries_used.0, !744, !DIExpression(), !737)
  %exitcond2 = icmp ne i32 %r.0, 142, !dbg !751
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
  %exitcond = icmp ne i32 %k.0, 12, !dbg !770
  br i1 %exitcond, label %for.body7, label %for.inc25.loopexit, !dbg !765

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !772
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !772
  %mul8 = mul nuw nsw i32 %c.0, 12, !dbg !774
  %1 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8, !dbg !775
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i32 %k.0, !dbg !775
  %2 = load i8, ptr %arrayidx, align 1, !dbg !775
  %mul10 = mul nuw nsw i32 %r.0, 12, !dbg !776
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !777
  %add.ptr13.idx = mul nuw nsw i32 %add11, 72, !dbg !778
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !778
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef %add.ptr, i8 noundef zeroext %2, ptr noundef %add.ptr13) #4, !dbg !779
  %add.ptr15.idx = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !780
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !780
  %mul16 = mul nuw nsw i32 %r.0, 12, !dbg !781
  %3 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16, !dbg !782
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %3, i32 %k.0, !dbg !782
  %4 = load i8, ptr %arrayidx18, align 1, !dbg !782
  %mul19 = mul nuw nsw i32 %c.0, 12, !dbg !783
  %add20 = add nuw nsw i32 %mul19, %k.0, !dbg !784
  %add.ptr22.idx = mul nuw nsw i32 %add20, 72, !dbg !785
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !785
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef %add.ptr15, i8 noundef zeroext %4, ptr noundef %add.ptr22) #4, !dbg !786
  %add23 = add nuw nsw i32 %k.0, 1, !dbg !787
    #dbg_value(i32 %add23, !768, !DIExpression(), !769)
  br label %for.cond5, !dbg !788, !llvm.loop !789

for.inc25.loopexit:                               ; preds = %for.cond5
  br label %for.inc25, !dbg !791

for.inc25:                                        ; preds = %for.inc25.loopexit, %for.body3
  %bs_mat_entries_used.2 = add i32 %bs_mat_entries_used.1, 1, !dbg !791
    #dbg_value(i32 %bs_mat_entries_used.2, !744, !DIExpression(), !737)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !792
    #dbg_value(i32 %inc, !758, !DIExpression(), !759)
  br label %for.cond1, !dbg !793, !llvm.loop !794

for.inc27:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !737
  %inc28 = add nuw nsw i32 %r.0, 1, !dbg !796
    #dbg_value(i32 %inc28, !745, !DIExpression(), !747)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !797
  br label %for.cond, !dbg !797, !llvm.loop !798

for.end29:                                        ; preds = %for.cond
  ret void, !dbg !800
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !801 {
entry:
  %tenc = alloca [71 x i8], align 1
  %t = alloca [142 x i8], align 1
  %y = alloca [142 x i8], align 1
  %salt = alloca [40 x i8], align 1
  %V = alloca [924 x i8], align 1
  %Vdec = alloca [1704 x i8], align 1
  %A = alloca [20880 x i8], align 1
  %x = alloca [1848 x i8], align 1
  %r = alloca [145 x i8], align 1
  %s = alloca [1848 x i8], align 1
  %sk = alloca [106926 x i64], align 32
  %Ox = alloca [142 x i8], align 1
  %tmp = alloca [145 x i8], align 1
  %Mtmp = alloca [1296 x i64], align 8
    #dbg_value(ptr %p, !805, !DIExpression(), !806)
    #dbg_value(ptr %sig, !807, !DIExpression(), !806)
    #dbg_value(ptr %siglen, !808, !DIExpression(), !806)
    #dbg_value(ptr %m, !809, !DIExpression(), !806)
    #dbg_value(i32 %mlen, !810, !DIExpression(), !806)
    #dbg_value(ptr %csk, !811, !DIExpression(), !806)
    #dbg_value(i32 0, !812, !DIExpression(), !806)
    #dbg_declare(ptr %tenc, !813, !DIExpression(), !817)
    #dbg_declare(ptr %t, !818, !DIExpression(), !822)
    #dbg_declare(ptr %y, !823, !DIExpression(), !824)
    #dbg_declare(ptr %salt, !825, !DIExpression(), !829)
    #dbg_declare(ptr %V, !830, !DIExpression(), !834)
    #dbg_declare(ptr %Vdec, !835, !DIExpression(), !836)
    #dbg_declare(ptr %A, !837, !DIExpression(), !841)
  call void @mayo_memset(ptr %A, i8 0, i32 20880), !dbg !841
    #dbg_declare(ptr %x, !842, !DIExpression(), !846)
    #dbg_declare(ptr %r, !847, !DIExpression(), !851)
  call void @mayo_memset(ptr %r, i8 0, i32 145), !dbg !851
    #dbg_declare(ptr %s, !852, !DIExpression(), !853)
    #dbg_declare(ptr %sk, !854, !DIExpression(), !855)
    #dbg_declare(ptr %Ox, !856, !DIExpression(), !857)
    #dbg_declare(ptr %tmp, !858, !DIExpression(), !859)
    #dbg_value(i32 142, !860, !DIExpression(), !806)
    #dbg_value(i32 154, !861, !DIExpression(), !806)
    #dbg_value(i32 12, !862, !DIExpression(), !806)
    #dbg_value(i32 12, !863, !DIExpression(), !806)
    #dbg_value(i32 142, !864, !DIExpression(), !806)
    #dbg_value(i32 71, !865, !DIExpression(), !806)
    #dbg_value(i32 71, !866, !DIExpression(), !806)
    #dbg_value(i32 72, !867, !DIExpression(), !806)
    #dbg_value(i32 964, !868, !DIExpression(), !806)
    #dbg_value(i32 145, !869, !DIExpression(), !806)
    #dbg_value(i32 64, !870, !DIExpression(), !806)
    #dbg_value(i32 40, !871, !DIExpression(), !806)
    #dbg_value(i32 40, !872, !DIExpression(), !806)
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #4, !dbg !873
    #dbg_value(i32 0, !812, !DIExpression(), !806)
    #dbg_value(ptr %csk, !874, !DIExpression(), !806)
  call void @shake256(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef %m, i32 noundef %mlen) #4, !dbg !875
    #dbg_value(ptr %sk, !876, !DIExpression(), !806)
    #dbg_value(ptr %add.ptr, !877, !DIExpression(), !806)
    #dbg_declare(ptr %Mtmp, !878, !DIExpression(), !879)
  call void @mayo_memset(ptr %Mtmp, i8 0, i32 10368), !dbg !879
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 64, !dbg !880
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 40) #4, !dbg !882
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 104, !dbg !883
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 40) #6, !dbg !884
  call void @shake256(ptr noundef nonnull %salt, i32 noundef 40, ptr noundef nonnull %tmp, i32 noundef 144) #4, !dbg !885
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 64, !dbg !886
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 40) #6, !dbg !887
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 144, !dbg !888
    #dbg_value(ptr %add.ptr24, !889, !DIExpression(), !806)
  call void @shake256(ptr noundef nonnull %tenc, i32 noundef 71, ptr noundef nonnull %tmp, i32 noundef 104) #4, !dbg !890
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 142) #4, !dbg !891
  store i8 0, ptr %add.ptr24, align 1, !dbg !892
  call void @shake256(ptr noundef nonnull %V, i32 noundef 924, ptr noundef nonnull %tmp, i32 noundef 145) #4, !dbg !893
    #dbg_value(i32 0, !894, !DIExpression(), !896)
  br label %for.cond, !dbg !897

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !898
    #dbg_value(i32 %i.0, !894, !DIExpression(), !896)
  %exitcond = icmp ne i32 %i.0, 12, !dbg !899
  br i1 %exitcond, label %for.body, label %for.end, !dbg !901

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 71, !dbg !902
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !904
  %mul37 = mul nuw nsw i32 %i.0, 142, !dbg !905
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul37, !dbg !906
  call fastcc void @decode(ptr noundef nonnull %add.ptr35, ptr noundef nonnull %add.ptr38, i32 noundef 142) #4, !dbg !907
  %inc = add nuw nsw i32 %i.0, 1, !dbg !908
    #dbg_value(i32 %inc, !894, !DIExpression(), !896)
  br label %for.cond, !dbg !909, !llvm.loop !910

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 731016, !dbg !912
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #4, !dbg !913
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #4, !dbg !914
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #4, !dbg !915
    #dbg_value(i32 0, !916, !DIExpression(), !918)
  br label %for.cond48, !dbg !919

for.cond48:                                       ; preds = %for.body50, %for.end
  %i47.0 = phi i32 [ 0, %for.end ], [ %inc53, %for.body50 ], !dbg !920
    #dbg_value(i32 %i47.0, !916, !DIExpression(), !918)
  %exitcond1 = icmp ne i32 %i47.0, 142, !dbg !921
  br i1 %exitcond1, label %for.body50, label %for.end54, !dbg !923

for.body50:                                       ; preds = %for.cond48
  %0 = mul nuw nsw i32 %i47.0, 145, !dbg !924
  %sub = add nuw nsw i32 %0, 144, !dbg !926
  %arrayidx = getelementptr inbounds nuw [20880 x i8], ptr %A, i32 0, i32 %sub, !dbg !927
  store i8 0, ptr %arrayidx, align 1, !dbg !928
  %inc53 = add nuw nsw i32 %i47.0, 1, !dbg !929
    #dbg_value(i32 %inc53, !916, !DIExpression(), !918)
  br label %for.cond48, !dbg !930, !llvm.loop !931

for.end54:                                        ; preds = %for.cond48
  %add.ptr56 = getelementptr inbounds nuw i8, ptr %V, i32 852, !dbg !933
  call fastcc void @decode(ptr noundef nonnull %add.ptr56, ptr noundef nonnull %r, i32 noundef 144) #4, !dbg !934
  %call62 = call i32 @pqmayo_MAYO_5_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 12, i32 noundef 12, i32 noundef 142, i32 noundef 145) #4, !dbg !935
  %tobool.not = icmp eq i32 %call62, 0, !dbg !935
  br i1 %tobool.not, label %if.else, label %if.end68, !dbg !935

if.else:                                          ; preds = %for.end54
  %call65 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 10368) #6, !dbg !937
  %call67 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 20880) #6, !dbg !939
  br label %if.end68

if.end68:                                         ; preds = %for.end54, %if.else
    #dbg_value(i32 0, !940, !DIExpression(), !942)
  br label %for.cond70, !dbg !943

for.cond70:                                       ; preds = %for.body72, %if.end68
  %i69.0 = phi i32 [ 0, %if.end68 ], [ %inc96, %for.body72 ], !dbg !944
    #dbg_value(i32 %i69.0, !940, !DIExpression(), !942)
  %exitcond2 = icmp ne i32 %i69.0, 12, !dbg !945
  br i1 %exitcond2, label %for.body72, label %for.end97, !dbg !947

for.body72:                                       ; preds = %for.cond70
  %mul74 = mul nuw nsw i32 %i69.0, 142, !dbg !948
  %add.ptr75 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul74, !dbg !950
    #dbg_value(ptr %add.ptr75, !951, !DIExpression(), !806)
  %add.ptr78 = getelementptr inbounds nuw i8, ptr %sk, i32 853704, !dbg !952
  %mul80 = mul nuw nsw i32 %i69.0, 12, !dbg !953
  %add.ptr81 = getelementptr inbounds nuw i8, ptr %x, i32 %mul80, !dbg !954
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr78, ptr noundef nonnull %add.ptr81, ptr noundef nonnull %Ox, i32 noundef 12, i32 noundef 142, i32 noundef 1) #4, !dbg !955
  %mul85 = mul nuw nsw i32 %i69.0, 154, !dbg !956
  %add.ptr86 = getelementptr inbounds nuw i8, ptr %s, i32 %mul85, !dbg !957
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr75, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr86, i32 noundef 142, i32 noundef 1) #4, !dbg !958
  %mul88 = mul nuw nsw i32 %i69.0, 154, !dbg !959
  %add.ptr89 = getelementptr inbounds nuw i8, ptr %s, i32 %mul88, !dbg !960
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %add.ptr89, i32 142, !dbg !961
  %mul92 = mul nuw nsw i32 %i69.0, 12, !dbg !962
  %add.ptr93 = getelementptr inbounds nuw i8, ptr %x, i32 %mul92, !dbg !963
  %call94 = call ptr @memcpy(ptr noundef nonnull %add.ptr90, ptr noundef nonnull %add.ptr93, i32 noundef 12) #6, !dbg !964
  %inc96 = add nuw nsw i32 %i69.0, 1, !dbg !965
    #dbg_value(i32 %inc96, !940, !DIExpression(), !942)
  br label %for.cond70, !dbg !966, !llvm.loop !967

for.end97:                                        ; preds = %for.cond70
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 1848) #4, !dbg !969
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %sig, i32 924, !dbg !970
  %call102 = call ptr @memcpy(ptr noundef nonnull %add.ptr100, ptr noundef nonnull %salt, i32 noundef 40) #6, !dbg !971
  store i32 964, ptr %siglen, align 4, !dbg !972
    #dbg_value(i32 0, !812, !DIExpression(), !806)
    #dbg_label(!973, !974)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 924) #4, !dbg !975
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 1704) #4, !dbg !976
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 20880) #4, !dbg !977
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 145) #4, !dbg !978
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sk, i32 853704, !dbg !979
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr109, i32 noundef 1704) #4, !dbg !980
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 855408) #4, !dbg !981
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 142) #4, !dbg !982
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 145) #4, !dbg !983
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 10368) #4, !dbg !984
  ret i32 0, !dbg !985
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %L, ptr noundef nonnull %P1, ptr noundef nonnull %VL, ptr noundef nonnull %VP1V) unnamed_addr #0 !dbg !986 {
entry:
  %Pv = alloca [15336 x i64], align 8
    #dbg_value(ptr %p, !989, !DIExpression(), !990)
    #dbg_value(ptr %Vdec, !991, !DIExpression(), !990)
    #dbg_value(ptr %L, !992, !DIExpression(), !990)
    #dbg_value(ptr %P1, !993, !DIExpression(), !990)
    #dbg_value(ptr %VL, !994, !DIExpression(), !990)
    #dbg_value(ptr %VP1V, !995, !DIExpression(), !990)
    #dbg_value(i32 12, !996, !DIExpression(), !990)
    #dbg_value(i32 142, !997, !DIExpression(), !990)
    #dbg_value(i32 12, !998, !DIExpression(), !990)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 9, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 12, i32 noundef 142, i32 noundef 12) #4, !dbg !999
    #dbg_declare(ptr %Pv, !1000, !DIExpression(), !1004)
  call void @mayo_memset(ptr %Pv, i8 0, i32 122688), !dbg !1004
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #4, !dbg !1005
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 9, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 12, i32 noundef 142, i32 noundef 12) #4, !dbg !1006
  ret void, !dbg !1007
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %vPv, ptr noundef nonnull %t, ptr noundef nonnull %y) unnamed_addr #0 !dbg !1008 {
entry:
  %temp = alloca [9 x i64], align 8
    #dbg_value(ptr %p, !1011, !DIExpression(), !1012)
    #dbg_value(ptr %vPv, !1013, !DIExpression(), !1012)
    #dbg_value(ptr %t, !1014, !DIExpression(), !1012)
    #dbg_value(ptr %y, !1015, !DIExpression(), !1012)
    #dbg_value(i32 52, !1016, !DIExpression(), !1012)
    #dbg_value(i32 9, !1018, !DIExpression(), !1012)
    #dbg_value(i64 1, !1019, !DIExpression(), !1022)
    #dbg_value(i64 72057594037927936, !1019, !DIExpression(), !1022)
    #dbg_value(i64 72057594037927935, !1019, !DIExpression(), !1022)
    #dbg_value(i32 0, !1023, !DIExpression(), !1025)
  br label %for.cond, !dbg !1026

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1027
    #dbg_value(i32 %i.0, !1023, !DIExpression(), !1025)
  %exitcond = icmp ne i32 %i.0, 144, !dbg !1028
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1030

for.body:                                         ; preds = %for.cond
  %.idx7 = mul nuw nsw i32 %i.0, 72, !dbg !1031
  %0 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx7, !dbg !1031
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 64, !dbg !1031
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1033
  %and = and i64 %1, 72057594037927935, !dbg !1033
  store i64 %and, ptr %arrayidx, align 8, !dbg !1033
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1034
    #dbg_value(i32 %inc, !1023, !DIExpression(), !1025)
  br label %for.cond, !dbg !1035, !llvm.loop !1036

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %temp, !1038, !DIExpression(), !1039)
  call void @mayo_memset(ptr %temp, i8 0, i32 72), !dbg !1039
    #dbg_value(ptr %temp, !1040, !DIExpression(), !1012)
    #dbg_value(i32 11, !1041, !DIExpression(), !1043)
  br label %for.cond3, !dbg !1044

for.cond3:                                        ; preds = %for.inc77, %for.end
  %i2.0 = phi i32 [ 11, %for.end ], [ %dec78, %for.inc77 ], !dbg !1045
    #dbg_value(i32 %i2.0, !1041, !DIExpression(), !1043)
  %cmp4 = icmp sgt i32 %i2.0, -1, !dbg !1046
  br i1 %cmp4, label %for.cond6.preheader, label %for.cond81.preheader, !dbg !1048

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1049

for.cond81.preheader:                             ; preds = %for.cond3
  br label %for.cond81, !dbg !1052

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc74
  %j.0 = phi i32 [ %inc75, %for.inc74 ], [ %i2.0, %for.cond6.preheader ], !dbg !1054
    #dbg_value(i32 %j.0, !1055, !DIExpression(), !1056)
  %exitcond10 = icmp ne i32 %j.0, 12, !dbg !1057
  br i1 %exitcond10, label %for.body8, label %for.inc77, !dbg !1049

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %temp, i32 64, !dbg !1059
  %2 = load i64, ptr %arrayidx9, align 8, !dbg !1059
  %shr = lshr i64 %2, 52, !dbg !1061
  %rem.lhs.trunc = trunc i64 %shr to i8, !dbg !1062
    #dbg_value(i8 %rem1, !1063, !DIExpression(), !1064)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %temp, i32 64, !dbg !1065
  %shl11 = shl i64 %2, 4, !dbg !1066
  store i64 %shl11, ptr %arrayidx10, align 8, !dbg !1066
    #dbg_value(i32 7, !1067, !DIExpression(), !1069)
  br label %for.cond12, !dbg !1070

for.cond12:                                       ; preds = %for.body15, %for.body8
  %k.0 = phi i32 [ 7, %for.body8 ], [ %dec, %for.body15 ], !dbg !1071
    #dbg_value(i32 %k.0, !1067, !DIExpression(), !1069)
  %cmp13 = icmp sgt i32 %k.0, -1, !dbg !1072
  br i1 %cmp13, label %for.body15, label %for.cond24.preheader, !dbg !1074

for.cond24.preheader:                             ; preds = %for.cond12
  %rem1 = and i8 %rem.lhs.trunc, 15, !dbg !1062
  br label %for.cond24, !dbg !1075

for.body15:                                       ; preds = %for.cond12
  %arrayidx16 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1077
  %3 = load i64, ptr %arrayidx16, align 8, !dbg !1077
  %shr17 = lshr i64 %3, 60, !dbg !1079
  %add18 = add nuw nsw i32 %k.0, 1, !dbg !1080
  %arrayidx19 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %add18, !dbg !1081
  %4 = load i64, ptr %arrayidx19, align 8, !dbg !1082
  %xor = xor i64 %4, %shr17, !dbg !1082
  store i64 %xor, ptr %arrayidx19, align 8, !dbg !1082
  %arrayidx20 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1083
  %5 = load i64, ptr %arrayidx20, align 8, !dbg !1084
  %shl21 = shl i64 %5, 4, !dbg !1084
  store i64 %shl21, ptr %arrayidx20, align 8, !dbg !1084
  %dec = add nsw i32 %k.0, -1, !dbg !1085
    #dbg_value(i32 %dec, !1067, !DIExpression(), !1069)
  br label %for.cond12, !dbg !1086, !llvm.loop !1087

for.cond24:                                       ; preds = %for.cond24.preheader, %for.inc46
  %jj.0 = phi i32 [ %inc47, %for.inc46 ], [ 0, %for.cond24.preheader ], !dbg !1089
    #dbg_value(i32 %jj.0, !1090, !DIExpression(), !1091)
  %exitcond8 = icmp ne i32 %jj.0, 4, !dbg !1092
  br i1 %exitcond8, label %for.body27, label %for.cond50.preheader, !dbg !1075

for.cond50.preheader:                             ; preds = %for.cond24
  br label %for.cond50, !dbg !1094

for.body27:                                       ; preds = %for.cond24
  %rem28 = and i32 %jj.0, 1, !dbg !1096
  %cmp29 = icmp eq i32 %rem28, 0, !dbg !1099
  br i1 %cmp29, label %if.then, label %if.else, !dbg !1099

if.then:                                          ; preds = %for.body27
  %arrayidx31 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1100
  %6 = load i8, ptr %arrayidx31, align 1, !dbg !1100
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %6) #4, !dbg !1102
  %div = lshr exact i32 %jj.0, 1, !dbg !1103
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %temp, i32 %div, !dbg !1104
  %7 = load i8, ptr %arrayidx33, align 1, !dbg !1105
  %xor356 = xor i8 %7, %call, !dbg !1105
  store i8 %xor356, ptr %arrayidx33, align 1, !dbg !1105
  br label %for.inc46, !dbg !1106

if.else:                                          ; preds = %for.body27
  %arrayidx37 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1107
  %8 = load i8, ptr %arrayidx37, align 1, !dbg !1107
  %call38 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext %8) #4, !dbg !1109
  %shl40 = shl nuw i8 %call38, 4, !dbg !1110
  %div415 = lshr i32 %jj.0, 1, !dbg !1111
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %temp, i32 %div415, !dbg !1112
  %9 = load i8, ptr %arrayidx42, align 1, !dbg !1113
  %xor44 = xor i8 %shl40, %9, !dbg !1113
  store i8 %xor44, ptr %arrayidx42, align 1, !dbg !1113
  br label %for.inc46

for.inc46:                                        ; preds = %if.then, %if.else
  %inc47 = add nuw nsw i32 %jj.0, 1, !dbg !1114
    #dbg_value(i32 %inc47, !1090, !DIExpression(), !1091)
  br label %for.cond24, !dbg !1115, !llvm.loop !1116

for.cond50:                                       ; preds = %for.cond50.preheader, %for.body53
  %k49.0 = phi i32 [ %inc72, %for.body53 ], [ 0, %for.cond50.preheader ], !dbg !1118
    #dbg_value(i32 %k49.0, !1119, !DIExpression(), !1120)
  %exitcond9 = icmp ne i32 %k49.0, 9, !dbg !1121
  br i1 %exitcond9, label %for.body53, label %for.inc74, !dbg !1094

for.body53:                                       ; preds = %for.cond50
  %mul54 = mul nuw nsw i32 %i2.0, 12, !dbg !1123
  %add55 = add nuw nsw i32 %mul54, %j.0, !dbg !1125
  %.idx = mul nsw i32 %add55, 72, !dbg !1126
  %10 = getelementptr i8, ptr %vPv, i32 %.idx, !dbg !1126
  %arrayidx58 = getelementptr i64, ptr %10, i32 %k49.0, !dbg !1126
  %11 = load i64, ptr %arrayidx58, align 8, !dbg !1126
  %cmp59.not = icmp eq i32 %i2.0, %j.0, !dbg !1127
  %mul62 = mul nuw nsw i32 %j.0, 12, !dbg !1128
  %add63 = add nuw nsw i32 %mul62, %i2.0, !dbg !1129
  %.idx4 = mul nsw i32 %add63, 72, !dbg !1130
  %12 = getelementptr i8, ptr %vPv, i32 %.idx4, !dbg !1130
  %arrayidx66 = getelementptr i64, ptr %12, i32 %k49.0, !dbg !1130
  %13 = load i64, ptr %arrayidx66, align 8, !dbg !1130
  %mul67 = select i1 %cmp59.not, i64 0, i64 %13, !dbg !1131
  %xor68 = xor i64 %11, %mul67, !dbg !1132
  %arrayidx69 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %k49.0, !dbg !1133
  %14 = load i64, ptr %arrayidx69, align 8, !dbg !1134
  %xor70 = xor i64 %14, %xor68, !dbg !1134
  store i64 %xor70, ptr %arrayidx69, align 8, !dbg !1134
  %inc72 = add nuw nsw i32 %k49.0, 1, !dbg !1135
    #dbg_value(i32 %inc72, !1119, !DIExpression(), !1120)
  br label %for.cond50, !dbg !1136, !llvm.loop !1137

for.inc74:                                        ; preds = %for.cond50
  %inc75 = add nuw nsw i32 %j.0, 1, !dbg !1139
    #dbg_value(i32 %inc75, !1055, !DIExpression(), !1056)
  br label %for.cond6, !dbg !1140, !llvm.loop !1141

for.inc77:                                        ; preds = %for.cond6
  %dec78 = add nsw i32 %i2.0, -1, !dbg !1143
    #dbg_value(i32 %dec78, !1041, !DIExpression(), !1043)
  br label %for.cond3, !dbg !1144, !llvm.loop !1145

for.cond81:                                       ; preds = %for.cond81.preheader, %for.body84
  %i80.0 = phi i32 [ %add106, %for.body84 ], [ 0, %for.cond81.preheader ], !dbg !1147
    #dbg_value(i32 %i80.0, !1148, !DIExpression(), !1149)
  %cmp82 = icmp samesign ult i32 %i80.0, 142, !dbg !1150
  br i1 %cmp82, label %for.body84, label %for.end107, !dbg !1052

for.body84:                                       ; preds = %for.cond81
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %t, i32 %i80.0, !dbg !1152
  %15 = load i8, ptr %arrayidx85, align 1, !dbg !1152
  %div87 = lshr exact i32 %i80.0, 1, !dbg !1154
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87, !dbg !1155
  %16 = load i8, ptr %arrayidx88, align 1, !dbg !1155
  %17 = and i8 %16, 15, !dbg !1156
  %xor912 = xor i8 %15, %17, !dbg !1157
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %y, i32 %i80.0, !dbg !1158
  store i8 %xor912, ptr %arrayidx93, align 1, !dbg !1159
  %add94 = or disjoint i32 %i80.0, 1, !dbg !1160
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %t, i32 %add94, !dbg !1161
  %18 = load i8, ptr %arrayidx95, align 1, !dbg !1161
  %div97 = lshr exact i32 %i80.0, 1, !dbg !1162
  %arrayidx98 = getelementptr inbounds nuw i8, ptr %temp, i32 %div97, !dbg !1163
  %19 = load i8, ptr %arrayidx98, align 1, !dbg !1163
  %20 = lshr i8 %19, 4, !dbg !1164
  %xor1013 = xor i8 %18, %20, !dbg !1165
  %add103 = or disjoint i32 %i80.0, 1, !dbg !1166
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %y, i32 %add103, !dbg !1167
  store i8 %xor1013, ptr %arrayidx104, align 1, !dbg !1168
  %add106 = add nuw nsw i32 %i80.0, 2, !dbg !1169
    #dbg_value(i32 %add106, !1148, !DIExpression(), !1149)
  br label %for.cond81, !dbg !1170, !llvm.loop !1171

for.end107:                                       ; preds = %for.cond81
  ret void, !dbg !1173
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %VtL, ptr noundef nonnull %A_out) unnamed_addr #0 !dbg !1174 {
entry:
  %A = alloca [2592 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1177, !DIExpression(), !1178)
    #dbg_value(ptr %VtL, !1179, !DIExpression(), !1178)
    #dbg_value(ptr %A_out, !1180, !DIExpression(), !1178)
    #dbg_value(i32 0, !1181, !DIExpression(), !1178)
    #dbg_value(i32 0, !1182, !DIExpression(), !1178)
    #dbg_value(i32 9, !1183, !DIExpression(), !1178)
    #dbg_declare(ptr %A, !1184, !DIExpression(), !1188)
  call void @mayo_memset(ptr %A, i8 0, i32 20736), !dbg !1188
    #dbg_value(i32 144, !1189, !DIExpression(), !1178)
    #dbg_value(i64 1, !1190, !DIExpression(), !1193)
    #dbg_value(i64 72057594037927936, !1190, !DIExpression(), !1193)
    #dbg_value(i64 72057594037927935, !1190, !DIExpression(), !1193)
    #dbg_value(i32 0, !1194, !DIExpression(), !1196)
  br label %for.cond, !dbg !1197

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1198
    #dbg_value(i32 %i.0, !1194, !DIExpression(), !1196)
  %exitcond = icmp ne i32 %i.0, 144, !dbg !1199
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !1201

for.cond3.preheader:                              ; preds = %for.cond
  br label %for.cond3, !dbg !1202

for.body:                                         ; preds = %for.cond
  %.idx = mul nuw nsw i32 %i.0, 72, !dbg !1204
  %0 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx, !dbg !1204
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 64, !dbg !1204
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1206
  %and = and i64 %1, 72057594037927935, !dbg !1206
  store i64 %and, ptr %arrayidx, align 8, !dbg !1206
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1207
    #dbg_value(i32 %inc, !1194, !DIExpression(), !1196)
  br label %for.cond, !dbg !1208, !llvm.loop !1209

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc103
  %i2.0 = phi i32 [ %inc104, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1211
  %words_to_shift.0 = phi i32 [ %words_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1212
  %bits_to_shift.0 = phi i32 [ %bits_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1213
    #dbg_value(i32 %bits_to_shift.0, !1181, !DIExpression(), !1178)
    #dbg_value(i32 %words_to_shift.0, !1182, !DIExpression(), !1178)
    #dbg_value(i32 %i2.0, !1214, !DIExpression(), !1215)
  %exitcond8 = icmp ne i32 %i2.0, 12, !dbg !1216
  br i1 %exitcond8, label %for.cond6.preheader, label %for.cond107.preheader, !dbg !1202

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1218

for.cond107.preheader:                            ; preds = %for.cond3
  br label %for.cond107, !dbg !1221

for.cond6:                                        ; preds = %for.cond6.preheader, %if.end95
  %j.0 = phi i32 [ %dec, %if.end95 ], [ 11, %for.cond6.preheader ], !dbg !1223
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end95 ], [ %words_to_shift.0, %for.cond6.preheader ], !dbg !1178
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end95 ], [ %bits_to_shift.0, %for.cond6.preheader ], !dbg !1178
    #dbg_value(i32 %bits_to_shift.1, !1181, !DIExpression(), !1178)
    #dbg_value(i32 %words_to_shift.1, !1182, !DIExpression(), !1178)
    #dbg_value(i32 %j.0, !1224, !DIExpression(), !1225)
  %cmp7.not = icmp slt i32 %j.0, %i2.0, !dbg !1226
  br i1 %cmp7.not, label %for.inc103, label %for.body8, !dbg !1218

for.body8:                                        ; preds = %for.cond6
  %add.ptr.idx = mul nsw i32 %j.0, 864, !dbg !1228
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1228
    #dbg_value(ptr %add.ptr, !1230, !DIExpression(), !1178)
    #dbg_value(i32 0, !1231, !DIExpression(), !1233)
  br label %for.cond11, !dbg !1234

for.cond11:                                       ; preds = %for.inc44, %for.body8
  %c.0 = phi i32 [ 0, %for.body8 ], [ %inc45, %for.inc44 ], !dbg !1235
    #dbg_value(i32 %c.0, !1231, !DIExpression(), !1233)
  %exitcond5 = icmp ne i32 %c.0, 12, !dbg !1236
  br i1 %exitcond5, label %for.cond14.preheader, label %for.end46, !dbg !1238

for.cond14.preheader:                             ; preds = %for.cond11
  br label %for.cond14, !dbg !1239

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc41
  %k.0 = phi i32 [ %inc42, %for.inc41 ], [ 0, %for.cond14.preheader ], !dbg !1242
    #dbg_value(i32 %k.0, !1243, !DIExpression(), !1244)
  %exitcond4 = icmp ne i32 %k.0, 9, !dbg !1245
  br i1 %exitcond4, label %for.body16, label %for.inc44, !dbg !1239

for.body16:                                       ; preds = %for.cond14
  %2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1247
  %arrayidx19.idx = mul nuw nsw i32 %c.0, 72, !dbg !1247
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %2, i32 %arrayidx19.idx, !dbg !1247
  %3 = load i64, ptr %arrayidx19, align 8, !dbg !1247
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1249
  %shl20 = shl i64 %3, %sh_prom, !dbg !1249
  %mul21 = mul nuw nsw i32 %i2.0, 12, !dbg !1250
  %add22 = add nuw nsw i32 %mul21, %c.0, !dbg !1251
  %add23 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1252
  %mul24 = mul i32 %add23, 144, !dbg !1253
  %add25 = add i32 %add22, %mul24, !dbg !1254
  %arrayidx26 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add25, !dbg !1255
  %4 = load i64, ptr %arrayidx26, align 8, !dbg !1256
  %xor = xor i64 %4, %shl20, !dbg !1256
  store i64 %xor, ptr %arrayidx26, align 8, !dbg !1256
  %cmp27 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1257
  br i1 %cmp27, label %if.then, label %for.inc41, !dbg !1257

if.then:                                          ; preds = %for.body16
  %5 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1259
  %arrayidx30.idx = mul nuw nsw i32 %c.0, 72, !dbg !1259
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %5, i32 %arrayidx30.idx, !dbg !1259
  %6 = load i64, ptr %arrayidx30, align 8, !dbg !1259
  %sub31 = sub nsw i32 64, %bits_to_shift.1, !dbg !1261
  %sh_prom32 = zext nneg i32 %sub31 to i64, !dbg !1262
  %shr = lshr i64 %6, %sh_prom32, !dbg !1262
  %mul33 = mul nuw nsw i32 %i2.0, 12, !dbg !1263
  %add34 = add nuw nsw i32 %mul33, %c.0, !dbg !1264
  %add35 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1265
  %7 = mul i32 %add35, 144, !dbg !1266
  %mul37 = add i32 %7, 144, !dbg !1266
  %add38 = add i32 %add34, %mul37, !dbg !1267
  %arrayidx39 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add38, !dbg !1268
  %8 = load i64, ptr %arrayidx39, align 8, !dbg !1269
  %xor40 = xor i64 %8, %shr, !dbg !1269
  store i64 %xor40, ptr %arrayidx39, align 8, !dbg !1269
  br label %for.inc41, !dbg !1270

for.inc41:                                        ; preds = %for.body16, %if.then
  %inc42 = add nuw nsw i32 %k.0, 1, !dbg !1271
    #dbg_value(i32 %inc42, !1243, !DIExpression(), !1244)
  br label %for.cond14, !dbg !1272, !llvm.loop !1273

for.inc44:                                        ; preds = %for.cond14
  %inc45 = add nuw nsw i32 %c.0, 1, !dbg !1275
    #dbg_value(i32 %inc45, !1231, !DIExpression(), !1233)
  br label %for.cond11, !dbg !1276, !llvm.loop !1277

for.end46:                                        ; preds = %for.cond11
  %cmp47.not = icmp eq i32 %i2.0, %j.0, !dbg !1279
  br i1 %cmp47.not, label %if.end95, label %if.then48, !dbg !1279

if.then48:                                        ; preds = %for.end46
  %add.ptr51.idx = mul nuw nsw i32 %i2.0, 864, !dbg !1281
  %add.ptr51 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr51.idx, !dbg !1281
    #dbg_value(ptr %add.ptr51, !1283, !DIExpression(), !1178)
    #dbg_value(i32 0, !1284, !DIExpression(), !1286)
  br label %for.cond53, !dbg !1287

for.cond53:                                       ; preds = %for.inc92, %if.then48
  %c52.0 = phi i32 [ 0, %if.then48 ], [ %inc93, %for.inc92 ], !dbg !1288
    #dbg_value(i32 %c52.0, !1284, !DIExpression(), !1286)
  %exitcond7 = icmp ne i32 %c52.0, 12, !dbg !1289
  br i1 %exitcond7, label %for.cond57.preheader, label %if.end95.loopexit, !dbg !1291

for.cond57.preheader:                             ; preds = %for.cond53
  br label %for.cond57, !dbg !1292

for.cond57:                                       ; preds = %for.cond57.preheader, %for.inc89
  %k56.0 = phi i32 [ %inc90, %for.inc89 ], [ 0, %for.cond57.preheader ], !dbg !1295
    #dbg_value(i32 %k56.0, !1296, !DIExpression(), !1297)
  %exitcond6 = icmp ne i32 %k56.0, 9, !dbg !1298
  br i1 %exitcond6, label %for.body59, label %for.inc92, !dbg !1292

for.body59:                                       ; preds = %for.cond57
  %9 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1300
  %arrayidx62.idx = mul nuw nsw i32 %c52.0, 72, !dbg !1300
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %9, i32 %arrayidx62.idx, !dbg !1300
  %10 = load i64, ptr %arrayidx62, align 8, !dbg !1300
  %sh_prom63 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1302
  %shl64 = shl i64 %10, %sh_prom63, !dbg !1302
  %mul65 = mul nsw i32 %j.0, 12, !dbg !1303
  %add66 = add nsw i32 %mul65, %c52.0, !dbg !1304
  %add67 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1305
  %mul68 = mul i32 %add67, 144, !dbg !1306
  %add69 = add i32 %add66, %mul68, !dbg !1307
  %arrayidx70 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add69, !dbg !1308
  %11 = load i64, ptr %arrayidx70, align 8, !dbg !1309
  %xor71 = xor i64 %11, %shl64, !dbg !1309
  store i64 %xor71, ptr %arrayidx70, align 8, !dbg !1309
  %cmp72 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1310
  br i1 %cmp72, label %if.then73, label %for.inc89, !dbg !1310

if.then73:                                        ; preds = %for.body59
  %12 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1312
  %arrayidx76.idx = mul nuw nsw i32 %c52.0, 72, !dbg !1312
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %12, i32 %arrayidx76.idx, !dbg !1312
  %13 = load i64, ptr %arrayidx76, align 8, !dbg !1312
  %sub77 = sub nsw i32 64, %bits_to_shift.1, !dbg !1314
  %sh_prom78 = zext nneg i32 %sub77 to i64, !dbg !1315
  %shr79 = lshr i64 %13, %sh_prom78, !dbg !1315
  %mul80 = mul nsw i32 %j.0, 12, !dbg !1316
  %add81 = add nsw i32 %mul80, %c52.0, !dbg !1317
  %add82 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1318
  %14 = mul i32 %add82, 144, !dbg !1319
  %mul84 = add i32 %14, 144, !dbg !1319
  %add85 = add i32 %add81, %mul84, !dbg !1320
  %arrayidx86 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add85, !dbg !1321
  %15 = load i64, ptr %arrayidx86, align 8, !dbg !1322
  %xor87 = xor i64 %15, %shr79, !dbg !1322
  store i64 %xor87, ptr %arrayidx86, align 8, !dbg !1322
  br label %for.inc89, !dbg !1323

for.inc89:                                        ; preds = %for.body59, %if.then73
  %inc90 = add nuw nsw i32 %k56.0, 1, !dbg !1324
    #dbg_value(i32 %inc90, !1296, !DIExpression(), !1297)
  br label %for.cond57, !dbg !1325, !llvm.loop !1326

for.inc92:                                        ; preds = %for.cond57
  %inc93 = add nuw nsw i32 %c52.0, 1, !dbg !1328
    #dbg_value(i32 %inc93, !1284, !DIExpression(), !1286)
  br label %for.cond53, !dbg !1329, !llvm.loop !1330

if.end95.loopexit:                                ; preds = %for.cond53
  br label %if.end95, !dbg !1332

if.end95:                                         ; preds = %if.end95.loopexit, %for.end46
  %add96 = add nsw i32 %bits_to_shift.1, 4, !dbg !1332
    #dbg_value(i32 %add96, !1181, !DIExpression(), !1178)
  %cmp97 = icmp eq i32 %add96, 64, !dbg !1333
  %inc99 = zext i1 %cmp97 to i32, !dbg !1333
  %spec.select = add nsw i32 %words_to_shift.1, %inc99, !dbg !1333
  %spec.select3 = select i1 %cmp97, i32 0, i32 %add96, !dbg !1333
    #dbg_value(i32 %spec.select3, !1181, !DIExpression(), !1178)
    #dbg_value(i32 %spec.select, !1182, !DIExpression(), !1178)
  %dec = add nsw i32 %j.0, -1, !dbg !1335
    #dbg_value(i32 %dec, !1224, !DIExpression(), !1225)
  br label %for.cond6, !dbg !1336, !llvm.loop !1337

for.inc103:                                       ; preds = %for.cond6
  %words_to_shift.1.lcssa = phi i32 [ %words_to_shift.1, %for.cond6 ], !dbg !1178
  %bits_to_shift.1.lcssa = phi i32 [ %bits_to_shift.1, %for.cond6 ], !dbg !1178
  %inc104 = add nuw nsw i32 %i2.0, 1, !dbg !1339
    #dbg_value(i32 %inc104, !1214, !DIExpression(), !1215)
  br label %for.cond3, !dbg !1340, !llvm.loop !1341

for.cond107:                                      ; preds = %for.cond107.preheader, %for.body110
  %c106.0 = phi i32 [ %add113, %for.body110 ], [ 0, %for.cond107.preheader ], !dbg !1343
    #dbg_value(i32 %c106.0, !1344, !DIExpression(), !1345)
  %cmp109 = icmp samesign ult i32 %c106.0, 2016, !dbg !1346
  br i1 %cmp109, label %for.body110, label %for.end114, !dbg !1221

for.body110:                                      ; preds = %for.cond107
  %add.ptr111 = getelementptr inbounds nuw i64, ptr %A, i32 %c106.0, !dbg !1348
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr111) #4, !dbg !1350
  %add113 = add nuw nsw i32 %c106.0, 16, !dbg !1351
    #dbg_value(i32 %add113, !1344, !DIExpression(), !1345)
  br label %for.cond107, !dbg !1352, !llvm.loop !1353

for.end114:                                       ; preds = %for.cond107
    #dbg_declare(ptr %tab, !1355, !DIExpression(), !1356)
  call void @mayo_memset(ptr %tab, i8 0, i32 16), !dbg !1356
    #dbg_value(i32 0, !1357, !DIExpression(), !1359)
  br label %for.cond116, !dbg !1360

for.cond116:                                      ; preds = %for.body118, %for.end114
  %i115.0 = phi i32 [ 0, %for.end114 ], [ %inc138, %for.body118 ], !dbg !1361
    #dbg_value(i32 %i115.0, !1357, !DIExpression(), !1359)
  %exitcond9 = icmp ne i32 %i115.0, 4, !dbg !1362
  br i1 %exitcond9, label %for.body118, label %for.cond141.preheader, !dbg !1364

for.cond141.preheader:                            ; preds = %for.cond116
  br label %for.cond141, !dbg !1365

for.body118:                                      ; preds = %for.cond116
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1367
  %16 = load i8, ptr %arrayidx119, align 1, !dbg !1367
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 1) #4, !dbg !1369
  %mul120 = shl nuw nsw i32 %i115.0, 2, !dbg !1370
  %arrayidx121 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120, !dbg !1371
  store i8 %call, ptr %arrayidx121, align 1, !dbg !1372
  %call123 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 2) #4, !dbg !1373
  %mul124 = shl nuw nsw i32 %i115.0, 2, !dbg !1374
  %add125 = or disjoint i32 %mul124, 1, !dbg !1375
  %arrayidx126 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125, !dbg !1376
  store i8 %call123, ptr %arrayidx126, align 1, !dbg !1377
  %arrayidx127 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1378
  %17 = load i8, ptr %arrayidx127, align 1, !dbg !1378
  %call128 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %17, i8 noundef zeroext 4) #4, !dbg !1379
  %mul129 = shl nuw nsw i32 %i115.0, 2, !dbg !1380
  %add130 = or disjoint i32 %mul129, 2, !dbg !1381
  %arrayidx131 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130, !dbg !1382
  store i8 %call128, ptr %arrayidx131, align 1, !dbg !1383
  %arrayidx132 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1384
  %18 = load i8, ptr %arrayidx132, align 1, !dbg !1384
  %call133 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %18, i8 noundef zeroext 8) #4, !dbg !1385
  %mul134 = shl nuw nsw i32 %i115.0, 2, !dbg !1386
  %add135 = or disjoint i32 %mul134, 3, !dbg !1387
  %arrayidx136 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135, !dbg !1388
  store i8 %call133, ptr %arrayidx136, align 1, !dbg !1389
  %inc138 = add nuw nsw i32 %i115.0, 1, !dbg !1390
    #dbg_value(i32 %inc138, !1357, !DIExpression(), !1359)
  br label %for.cond116, !dbg !1391, !llvm.loop !1392

for.cond141:                                      ; preds = %for.cond141.preheader, %for.inc203
  %c140.0 = phi i32 [ %add204, %for.inc203 ], [ 0, %for.cond141.preheader ], !dbg !1394
    #dbg_value(i32 %c140.0, !1395, !DIExpression(), !1396)
  %cmp142 = icmp samesign ult i32 %c140.0, 144, !dbg !1397
  br i1 %cmp142, label %for.cond144.preheader, label %for.cond207.preheader, !dbg !1365

for.cond144.preheader:                            ; preds = %for.cond141
  br label %for.cond144, !dbg !1399

for.cond207.preheader:                            ; preds = %for.cond141
  br label %for.cond207, !dbg !1402

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc200
  %r.0 = phi i32 [ %inc201, %for.inc200 ], [ 142, %for.cond144.preheader ], !dbg !1404
    #dbg_value(i32 %r.0, !1405, !DIExpression(), !1406)
  %exitcond11 = icmp ne i32 %r.0, 220, !dbg !1407
  br i1 %exitcond11, label %for.body146, label %for.inc203, !dbg !1399

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1409
  %mul147 = mul nuw nsw i32 %div1, 144, !dbg !1411
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1412
  %rem = and i32 %r.0, 15, !dbg !1413
  %add149 = or disjoint i32 %add148, %rem, !dbg !1414
    #dbg_value(i32 %add149, !1415, !DIExpression(), !1416)
  %arrayidx150 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add149, !dbg !1417
  %19 = load i64, ptr %arrayidx150, align 8, !dbg !1417
  %and151 = and i64 %19, 1229782938247303441, !dbg !1418
    #dbg_value(i64 %and151, !1419, !DIExpression(), !1416)
  %shr153 = lshr i64 %19, 1, !dbg !1420
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1421
    #dbg_value(i64 %and154, !1422, !DIExpression(), !1416)
  %shr156 = lshr i64 %19, 2, !dbg !1423
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1424
    #dbg_value(i64 %and157, !1425, !DIExpression(), !1416)
  %arrayidx158 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add149, !dbg !1426
  %20 = load i64, ptr %arrayidx158, align 8, !dbg !1426
  %shr159 = lshr i64 %20, 3, !dbg !1427
  %and160 = and i64 %shr159, 1229782938247303441, !dbg !1428
    #dbg_value(i64 %and160, !1429, !DIExpression(), !1416)
    #dbg_value(i32 0, !1430, !DIExpression(), !1432)
  br label %for.cond161, !dbg !1433

for.cond161:                                      ; preds = %for.body163, %for.body146
  %t.0 = phi i32 [ 0, %for.body146 ], [ %inc198, %for.body163 ], !dbg !1434
    #dbg_value(i32 %t.0, !1430, !DIExpression(), !1432)
  %exitcond10 = icmp ne i32 %t.0, 4, !dbg !1435
  br i1 %exitcond10, label %for.body163, label %for.inc200, !dbg !1437

for.body163:                                      ; preds = %for.cond161
  %mul164 = shl nuw nsw i32 %t.0, 2, !dbg !1438
  %arrayidx166 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul164, !dbg !1440
  %21 = load i8, ptr %arrayidx166, align 1, !dbg !1440
  %conv = zext i8 %21 to i64, !dbg !1440
  %mul167 = mul i64 %and151, %conv, !dbg !1441
  %mul168 = shl nuw nsw i32 %t.0, 2, !dbg !1442
  %add169 = or disjoint i32 %mul168, 1, !dbg !1443
  %arrayidx170 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add169, !dbg !1444
  %22 = load i8, ptr %arrayidx170, align 1, !dbg !1444
  %conv171 = zext i8 %22 to i64, !dbg !1444
  %mul172 = mul i64 %and154, %conv171, !dbg !1445
  %xor173 = xor i64 %mul167, %mul172, !dbg !1446
  %mul174 = shl nuw nsw i32 %t.0, 2, !dbg !1447
  %add175 = or disjoint i32 %mul174, 2, !dbg !1448
  %arrayidx176 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add175, !dbg !1449
  %23 = load i8, ptr %arrayidx176, align 1, !dbg !1449
  %conv177 = zext i8 %23 to i64, !dbg !1449
  %mul178 = mul i64 %and157, %conv177, !dbg !1450
  %xor179 = xor i64 %xor173, %mul178, !dbg !1451
  %mul180 = shl nuw nsw i32 %t.0, 2, !dbg !1452
  %add181 = or disjoint i32 %mul180, 3, !dbg !1453
  %arrayidx182 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add181, !dbg !1454
  %24 = load i8, ptr %arrayidx182, align 1, !dbg !1454
  %conv183 = zext i8 %24 to i64, !dbg !1454
  %mul184 = mul i64 %and160, %conv183, !dbg !1455
  %xor185 = xor i64 %xor179, %mul184, !dbg !1456
  %add186 = add nuw nsw i32 %r.0, %t.0, !dbg !1457
  %sub187 = add nsw i32 %add186, -142, !dbg !1458
  %div1882 = lshr i32 %sub187, 4, !dbg !1459
  %mul189 = mul i32 %div1882, 144, !dbg !1460
  %add190 = add i32 %mul189, %c140.0, !dbg !1461
  %add191 = add nuw nsw i32 %r.0, %t.0, !dbg !1462
  %sub192 = add nuw nsw i32 %add191, 2, !dbg !1463
  %rem193 = and i32 %sub192, 15, !dbg !1464
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1465
  %arrayidx195 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add194, !dbg !1466
  %25 = load i64, ptr %arrayidx195, align 8, !dbg !1467
  %xor196 = xor i64 %25, %xor185, !dbg !1467
  store i64 %xor196, ptr %arrayidx195, align 8, !dbg !1467
  %inc198 = add nuw nsw i32 %t.0, 1, !dbg !1468
    #dbg_value(i32 %inc198, !1430, !DIExpression(), !1432)
  br label %for.cond161, !dbg !1469, !llvm.loop !1470

for.inc200:                                       ; preds = %for.cond161
  %inc201 = add nuw nsw i32 %r.0, 1, !dbg !1472
    #dbg_value(i32 %inc201, !1405, !DIExpression(), !1406)
  br label %for.cond144, !dbg !1473, !llvm.loop !1474

for.inc203:                                       ; preds = %for.cond144
  %add204 = add nuw nsw i32 %c140.0, 16, !dbg !1476
    #dbg_value(i32 %add204, !1395, !DIExpression(), !1396)
  br label %for.cond141, !dbg !1477, !llvm.loop !1478

for.cond207:                                      ; preds = %for.cond207.preheader, %for.inc241
  %indvars.iv = phi i32 [ 142, %for.cond207.preheader ], [ %indvars.iv.next, %for.inc241 ], !dbg !1480
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond207.preheader ], !dbg !1480
    #dbg_value(i32 %r206.0, !1481, !DIExpression(), !1482)
  %cmp208 = icmp samesign ult i32 %r206.0, 142, !dbg !1483
  br i1 %cmp208, label %for.cond212.preheader, label %for.end243, !dbg !1402

for.cond212.preheader:                            ; preds = %for.cond207
  br label %for.cond212, !dbg !1485

for.cond212:                                      ; preds = %for.cond212.preheader, %for.inc238
  %c211.0 = phi i32 [ %add239, %for.inc238 ], [ 0, %for.cond212.preheader ], !dbg !1488
    #dbg_value(i32 %c211.0, !1489, !DIExpression(), !1490)
  %cmp213 = icmp samesign ult i32 %c211.0, 144, !dbg !1491
  br i1 %cmp213, label %for.cond217.preheader, label %for.inc241, !dbg !1485

for.cond217.preheader:                            ; preds = %for.cond212
  br label %for.cond217, !dbg !1493

for.cond217:                                      ; preds = %for.cond217.preheader, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond217.preheader ], !dbg !1496
    #dbg_value(i32 %i216.0, !1497, !DIExpression(), !1498)
  %exitcond12 = icmp ne i32 %i216.0, %indvars.iv, !dbg !1499
  br i1 %exitcond12, label %for.body221, label %for.inc238, !dbg !1493

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 9, !dbg !1501
  %add224 = add nuw nsw i32 %div223, %c211.0, !dbg !1503
  %add225 = add nuw nsw i32 %add224, %i216.0, !dbg !1504
  %arrayidx226 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add225, !dbg !1505
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1506
  %mul228 = mul nuw nsw i32 %add227, 145, !dbg !1507
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1508
  %add.ptr230 = getelementptr inbounds nuw i8, ptr %add.ptr229, i32 %c211.0, !dbg !1509
  %cmp232 = icmp samesign ult i32 %c211.0, 128, !dbg !1510
  %sub234 = sub nuw nsw i32 144, %c211.0, !dbg !1510
  %cond = select i1 %cmp232, i32 16, i32 %sub234, !dbg !1510
  call fastcc void @decode(ptr noundef nonnull %arrayidx226, ptr noundef nonnull %add.ptr230, i32 noundef %cond) #4, !dbg !1511
  %inc236 = add nuw nsw i32 %i216.0, 1, !dbg !1512
    #dbg_value(i32 %inc236, !1497, !DIExpression(), !1498)
  br label %for.cond217, !dbg !1513, !llvm.loop !1514

for.inc238:                                       ; preds = %for.cond217
  %add239 = add nuw nsw i32 %c211.0, 16, !dbg !1516
    #dbg_value(i32 %add239, !1489, !DIExpression(), !1490)
  br label %for.cond212, !dbg !1517, !llvm.loop !1518

for.inc241:                                       ; preds = %for.cond212
  %add242 = add nuw nsw i32 %r206.0, 16, !dbg !1520
    #dbg_value(i32 %add242, !1481, !DIExpression(), !1482)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1521
  br label %for.cond207, !dbg !1521, !llvm.loop !1522

for.end243:                                       ; preds = %for.cond207
  ret void, !dbg !1524
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1525 {
entry:
    #dbg_value(ptr %a, !1528, !DIExpression(), !1529)
    #dbg_value(ptr %b, !1530, !DIExpression(), !1529)
    #dbg_value(ptr %c, !1531, !DIExpression(), !1529)
    #dbg_value(i32 12, !1532, !DIExpression(), !1529)
    #dbg_value(i32 142, !1533, !DIExpression(), !1529)
    #dbg_value(i32 1, !1534, !DIExpression(), !1529)
    #dbg_value(i32 0, !1535, !DIExpression(), !1537)
  br label %for.cond, !dbg !1538

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1539
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1528, !DIExpression(), !1529)
    #dbg_value(ptr %c.addr.0, !1531, !DIExpression(), !1529)
    #dbg_value(i32 %i.0, !1535, !DIExpression(), !1537)
  %exitcond = icmp ne i32 %i.0, 142, !dbg !1540
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !1542

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1543

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !1546
    #dbg_value(i32 poison, !1547, !DIExpression(), !1548)
    #dbg_value(ptr %c.addr.1, !1531, !DIExpression(), !1529)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !1543

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef 12, i32 noundef 1) #4, !dbg !1549
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1552
    #dbg_value(i32 1, !1547, !DIExpression(), !1548)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1553
    #dbg_value(ptr %incdec.ptr, !1531, !DIExpression(), !1529)
  br label %for.cond1, !dbg !1554, !llvm.loop !1555

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw nsw i32 %i.0, 1, !dbg !1557
    #dbg_value(i32 %inc5, !1535, !DIExpression(), !1537)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %a.addr.0, i32 12, !dbg !1558
    #dbg_value(ptr %add.ptr6, !1528, !DIExpression(), !1529)
  br label %for.cond, !dbg !1559, !llvm.loop !1560

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1562
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1563 {
entry:
    #dbg_value(ptr %a, !1566, !DIExpression(), !1567)
    #dbg_value(ptr %b, !1568, !DIExpression(), !1567)
    #dbg_value(ptr %c, !1569, !DIExpression(), !1567)
    #dbg_value(i32 142, !1570, !DIExpression(), !1567)
    #dbg_value(i32 1, !1571, !DIExpression(), !1567)
    #dbg_value(i32 0, !1572, !DIExpression(), !1574)
  br label %for.cond, !dbg !1575

for.cond:                                         ; preds = %for.body3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ], !dbg !1576
    #dbg_value(i32 %i.0, !1572, !DIExpression(), !1574)
  %exitcond = icmp ne i32 %i.0, 142, !dbg !1577
  br i1 %exitcond, label %for.body3, label %for.end13, !dbg !1579

for.body3:                                        ; preds = %for.cond
    #dbg_value(i32 poison, !1580, !DIExpression(), !1583)
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1584
  %0 = load i8, ptr %add.ptr, align 1, !dbg !1587
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %b, i32 %i.0, !dbg !1588
  %1 = load i8, ptr %add.ptr6, align 1, !dbg !1589
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #4, !dbg !1590
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !1591
  store i8 %call, ptr %add.ptr9, align 1, !dbg !1592
    #dbg_value(i32 1, !1580, !DIExpression(), !1583)
    #dbg_value(i32 poison, !1580, !DIExpression(), !1583)
  %inc12 = add nuw nsw i32 %i.0, 1, !dbg !1593
    #dbg_value(i32 %inc12, !1572, !DIExpression(), !1574)
  br label %for.cond, !dbg !1594, !llvm.loop !1595

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1597
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef nonnull %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1598 {
entry:
    #dbg_value(ptr %m, !1599, !DIExpression(), !1600)
    #dbg_value(ptr %menc, !1601, !DIExpression(), !1600)
    #dbg_value(i32 1848, !1602, !DIExpression(), !1600)
    #dbg_value(i32 0, !1603, !DIExpression(), !1600)
  br label %for.cond, !dbg !1604

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1606
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1599, !DIExpression(), !1600)
    #dbg_value(i32 %i.0, !1603, !DIExpression(), !1600)
  %exitcond = icmp ne i32 %i.0, 924, !dbg !1607
  br i1 %exitcond, label %for.body, label %if.end, !dbg !1609

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1610
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1612
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1613
  %shl = shl i8 %1, 4, !dbg !1614
  %or = or i8 %shl, %0, !dbg !1615
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1616
  store i8 %or, ptr %arrayidx, align 1, !dbg !1617
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1618
    #dbg_value(i32 %inc, !1603, !DIExpression(), !1600)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1619
    #dbg_value(ptr %add.ptr3, !1599, !DIExpression(), !1600)
  br label %for.cond, !dbg !1620, !llvm.loop !1621

if.end:                                           ; preds = %for.cond
  ret void, !dbg !1623
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1624 {
entry:
    #dbg_value(i8 %a, !1627, !DIExpression(), !1628)
    #dbg_value(i8 %b, !1629, !DIExpression(), !1628)
  %xor1 = xor i8 %a, %b, !dbg !1630
  ret i8 %xor1, !dbg !1631
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef nonnull %a, ptr noundef nonnull %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1632 {
entry:
    #dbg_value(ptr %a, !1635, !DIExpression(), !1636)
    #dbg_value(ptr %b, !1637, !DIExpression(), !1636)
    #dbg_value(i32 12, !1638, !DIExpression(), !1636)
    #dbg_value(i32 1, !1639, !DIExpression(), !1636)
    #dbg_value(i8 0, !1640, !DIExpression(), !1636)
    #dbg_value(i32 0, !1641, !DIExpression(), !1643)
  br label %for.cond, !dbg !1644

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1636
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1645
    #dbg_value(i32 %i.0, !1641, !DIExpression(), !1643)
    #dbg_value(ptr %b.addr.0, !1637, !DIExpression(), !1636)
    #dbg_value(i8 %ret.0, !1640, !DIExpression(), !1636)
  %exitcond = icmp ne i32 %i.0, 12, !dbg !1646
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1648

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1649
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1649
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1651
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #4, !dbg !1652
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #4, !dbg !1653
    #dbg_value(i8 %call1, !1640, !DIExpression(), !1636)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1654
    #dbg_value(i32 %inc, !1641, !DIExpression(), !1643)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !1655
    #dbg_value(ptr %add.ptr, !1637, !DIExpression(), !1636)
  br label %for.cond, !dbg !1656, !llvm.loop !1657

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1636
  ret i8 %ret.0.lcssa, !dbg !1659
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1660 {
entry:
    #dbg_value(i8 %a, !1661, !DIExpression(), !1662)
    #dbg_value(i8 %b, !1663, !DIExpression(), !1662)
  %0 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !1664
  %xor1 = xor i8 %a, %0, !dbg !1665
    #dbg_value(i8 %xor1, !1661, !DIExpression(), !1662)
  %1 = trunc i8 %xor1 to i1, !dbg !1666
    #dbg_value(i8 poison, !1667, !DIExpression(), !1662)
  %2 = and i8 %xor1, 2, !dbg !1668
  %mul9 = mul i8 %2, %b, !dbg !1669
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1666
  %xor11 = xor i8 %conv10, %mul9, !dbg !1670
    #dbg_value(i8 %xor11, !1667, !DIExpression(), !1662)
  %3 = and i8 %xor1, 4, !dbg !1671
  %mul16 = mul i8 %3, %b, !dbg !1672
  %xor18 = xor i8 %mul16, %xor11, !dbg !1673
    #dbg_value(i8 %xor18, !1667, !DIExpression(), !1662)
  %4 = and i8 %xor1, 8, !dbg !1674
  %mul23 = mul i8 %4, %b, !dbg !1675
  %xor25 = xor i8 %mul23, %xor18, !dbg !1676
    #dbg_value(i8 %xor25, !1667, !DIExpression(), !1662)
    #dbg_value(i8 %xor25, !1677, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1662)
  %5 = lshr i8 %xor25, 4, !dbg !1678
  %6 = lshr i8 %xor25, 3, !dbg !1679
  %7 = and i8 %6, 14, !dbg !1679
  %8 = xor i8 %5, %7, !dbg !1680
  %xor25.masked = and i8 %xor25, 15, !dbg !1681
  %9 = xor i8 %8, %xor25.masked, !dbg !1681
    #dbg_value(i8 %9, !1682, !DIExpression(), !1662)
  ret i8 %9, !dbg !1683
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1684, !DIExpression(), !1685)
    #dbg_value(i32 0, !1686, !DIExpression(), !1688)
  br label %for.cond, !dbg !1689

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1690
    #dbg_value(i32 %i.0, !1686, !DIExpression(), !1688)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1691
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1693

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1694

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1696
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1696
  %shr = lshr i64 %0, 4, !dbg !1698
  %add = or disjoint i32 %i.0, 1, !dbg !1699
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1700
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1700
  %xor = xor i64 %shr, %1, !dbg !1701
  %and = and i64 %xor, 1085102592571150095, !dbg !1702
    #dbg_value(i64 %and, !1703, !DIExpression(), !1704)
  %shl = shl nuw i64 %and, 4, !dbg !1705
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1706
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1707
  %xor3 = xor i64 %2, %shl, !dbg !1707
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1707
  %add4 = or disjoint i32 %i.0, 1, !dbg !1708
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1709
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1710
  %xor6 = xor i64 %3, %and, !dbg !1710
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1710
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1711
    #dbg_value(i32 %add7, !1686, !DIExpression(), !1688)
  br label %for.cond, !dbg !1712, !llvm.loop !1713

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1715
    #dbg_value(i32 %i8.0, !1716, !DIExpression(), !1717)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1718
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1694

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1720

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1722
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1722
  %shr13 = lshr i64 %4, 8, !dbg !1724
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1725
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1726
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1726
  %xor16 = xor i64 %shr13, %5, !dbg !1727
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1728
    #dbg_value(i64 %and17, !1729, !DIExpression(), !1730)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1731
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1732
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1732
  %shr20 = lshr i64 %6, 8, !dbg !1733
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1734
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1735
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1735
  %xor23 = xor i64 %shr20, %7, !dbg !1736
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1737
    #dbg_value(i64 %and24, !1738, !DIExpression(), !1730)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1739
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1740
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1741
  %xor27 = xor i64 %8, %shl25, !dbg !1741
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1741
  %shl28 = shl nuw i64 %and24, 8, !dbg !1742
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1743
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1744
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1745
  %xor31 = xor i64 %9, %shl28, !dbg !1745
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1745
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1746
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1747
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1748
  %xor34 = xor i64 %10, %and17, !dbg !1748
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1748
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1749
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1750
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1751
  %xor37 = xor i64 %11, %and24, !dbg !1751
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1751
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1752
    #dbg_value(i32 %add39, !1716, !DIExpression(), !1717)
  br label %for.cond9, !dbg !1753, !llvm.loop !1754

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1756
    #dbg_value(i32 %i41.0, !1757, !DIExpression(), !1758)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1759
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1720

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1761

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1763
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1763
  %shr47 = lshr i64 %12, 16, !dbg !1765
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1766
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1767
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1767
  %xor50 = xor i64 %shr47, %13, !dbg !1768
  %and51 = and i64 %xor50, 281470681808895, !dbg !1769
    #dbg_value(i64 %and51, !1770, !DIExpression(), !1771)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1772
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1773
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1773
  %shr55 = lshr i64 %14, 16, !dbg !1774
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1775
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1776
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1776
  %xor58 = xor i64 %shr55, %15, !dbg !1777
  %and59 = and i64 %xor58, 281470681808895, !dbg !1778
    #dbg_value(i64 %and59, !1779, !DIExpression(), !1771)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1780
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1781
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1782
  %xor62 = xor i64 %16, %shl60, !dbg !1782
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1782
  %shl63 = shl nuw i64 %and59, 16, !dbg !1783
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1784
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1785
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1786
  %xor66 = xor i64 %17, %shl63, !dbg !1786
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1786
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1787
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1788
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1789
  %xor69 = xor i64 %18, %and51, !dbg !1789
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1789
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1790
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1791
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1792
  %xor72 = xor i64 %19, %and59, !dbg !1792
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1792
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1793
    #dbg_value(i32 %inc, !1757, !DIExpression(), !1758)
  br label %for.cond42, !dbg !1794, !llvm.loop !1795

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1797
    #dbg_value(i32 %i75.0, !1798, !DIExpression(), !1799)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1800
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1761

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1802
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1802
  %shr81 = lshr i64 %20, 32, !dbg !1804
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1805
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1806
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1806
  %.masked = and i64 %21, 4294967295, !dbg !1807
  %and85 = xor i64 %shr81, %.masked, !dbg !1807
    #dbg_value(i64 %and85, !1808, !DIExpression(), !1809)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1810
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1811
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1812
  %xor88 = xor i64 %22, %shl86, !dbg !1812
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1812
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1813
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1814
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1815
  %xor91 = xor i64 %23, %and85, !dbg !1815
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1815
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1816
    #dbg_value(i32 %inc93, !1798, !DIExpression(), !1799)
  br label %for.cond76, !dbg !1817, !llvm.loop !1818

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1820
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !1821 {
entry:
    #dbg_value(i32 9, !1822, !DIExpression(), !1823)
    #dbg_value(ptr %mat, !1824, !DIExpression(), !1823)
    #dbg_value(ptr %bs_mat, !1825, !DIExpression(), !1823)
    #dbg_value(ptr %acc, !1826, !DIExpression(), !1823)
    #dbg_value(i32 12, !1827, !DIExpression(), !1823)
    #dbg_value(i32 142, !1828, !DIExpression(), !1823)
    #dbg_value(i32 12, !1829, !DIExpression(), !1823)
    #dbg_value(i32 0, !1830, !DIExpression(), !1832)
  br label %for.cond, !dbg !1833

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1834
    #dbg_value(i32 %r.0, !1830, !DIExpression(), !1832)
  %exitcond2 = icmp ne i32 %r.0, 12, !dbg !1835
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1837

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1838

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1841
    #dbg_value(i32 %c.0, !1842, !DIExpression(), !1843)
  %exitcond1 = icmp ne i32 %c.0, 142, !dbg !1844
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1838

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1846

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1849
    #dbg_value(i32 %k.0, !1850, !DIExpression(), !1851)
  %exitcond = icmp ne i32 %k.0, 12, !dbg !1852
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1846

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, 12, !dbg !1854
  %add = add nuw nsw i32 %mul, %k.0, !dbg !1856
  %add.ptr.idx = mul nuw nsw i32 %add, 72, !dbg !1857
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1857
  %mul8 = mul nuw nsw i32 %r.0, 142, !dbg !1858
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1859
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1859
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1859
  %mul10 = mul nuw nsw i32 %r.0, 12, !dbg !1860
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !1861
  %add.ptr13.idx = mul nuw nsw i32 %add11, 72, !dbg !1862
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !1862
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #4, !dbg !1863
  %add14 = add nuw nsw i32 %k.0, 1, !dbg !1864
    #dbg_value(i32 %add14, !1850, !DIExpression(), !1851)
  br label %for.cond4, !dbg !1865, !llvm.loop !1866

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1868
    #dbg_value(i32 %inc, !1842, !DIExpression(), !1843)
  br label %for.cond1, !dbg !1869, !llvm.loop !1870

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1872
    #dbg_value(i32 %inc18, !1830, !DIExpression(), !1832)
  br label %for.cond, !dbg !1873, !llvm.loop !1874

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1876
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %V, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !1877 {
entry:
    #dbg_value(ptr %p, !1878, !DIExpression(), !1879)
    #dbg_value(ptr %P1, !1880, !DIExpression(), !1879)
    #dbg_value(ptr %V, !1881, !DIExpression(), !1879)
    #dbg_value(ptr %acc, !1882, !DIExpression(), !1879)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 9, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 142, i32 noundef 142, i32 noundef 12, i32 noundef 1) #4, !dbg !1883
  ret void, !dbg !1884
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1885 {
entry:
    #dbg_value(i32 9, !1886, !DIExpression(), !1887)
    #dbg_value(ptr %bs_mat, !1888, !DIExpression(), !1887)
    #dbg_value(ptr %mat, !1889, !DIExpression(), !1887)
    #dbg_value(ptr %acc, !1890, !DIExpression(), !1887)
    #dbg_value(i32 142, !1891, !DIExpression(), !1887)
    #dbg_value(i32 142, !1892, !DIExpression(), !1887)
    #dbg_value(i32 12, !1893, !DIExpression(), !1887)
    #dbg_value(i32 1, !1894, !DIExpression(), !1887)
    #dbg_value(i32 0, !1895, !DIExpression(), !1887)
    #dbg_value(i32 0, !1896, !DIExpression(), !1898)
  br label %for.cond, !dbg !1899

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 142, %entry ], !dbg !1900
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1900
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1901
    #dbg_value(i32 %r.0, !1896, !DIExpression(), !1898)
    #dbg_value(i32 %bs_mat_entries_used.0, !1895, !DIExpression(), !1887)
  %exitcond2 = icmp ne i32 %r.0, 142, !dbg !1902
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1904

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !1905
  br label %for.cond1, !dbg !1905

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %bs_mat_entries_used.1 = phi i32 [ %add14, %for.inc15 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !1887
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ %r.0, %for.cond1.preheader ], !dbg !1908
    #dbg_value(i32 %c.0, !1909, !DIExpression(), !1910)
    #dbg_value(i32 %bs_mat_entries_used.1, !1895, !DIExpression(), !1887)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !1911
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1905

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1913

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1916
    #dbg_value(i32 %k.0, !1917, !DIExpression(), !1918)
  %exitcond = icmp ne i32 %k.0, 12, !dbg !1919
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1913

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !1921
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1921
  %mul8 = mul nuw nsw i32 %k.0, 142, !dbg !1923
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1924
  %arrayidx = getelementptr i8, ptr %1, i32 %c.0, !dbg !1924
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1924
  %mul9 = mul nuw nsw i32 %r.0, 12, !dbg !1925
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !1926
  %add.ptr12.idx = mul nuw nsw i32 %add10, 72, !dbg !1927
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !1927
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #4, !dbg !1928
  %add13 = add nuw nsw i32 %k.0, 1, !dbg !1929
    #dbg_value(i32 %add13, !1917, !DIExpression(), !1918)
  br label %for.cond4, !dbg !1930, !llvm.loop !1931

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1895, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1887)
  %add14 = add i32 %bs_mat_entries_used.1, 1, !dbg !1933
    #dbg_value(i32 %add14, !1895, !DIExpression(), !1887)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1934
    #dbg_value(i32 %inc, !1909, !DIExpression(), !1910)
  br label %for.cond1, !dbg !1935, !llvm.loop !1936

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1887
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1938
    #dbg_value(i32 %inc18, !1896, !DIExpression(), !1898)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !1939
  br label %for.cond, !dbg !1939, !llvm.loop !1940

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1942
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1943 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1944, !DIExpression(), !1945)
    #dbg_value(ptr %sm, !1946, !DIExpression(), !1945)
    #dbg_value(ptr %smlen, !1947, !DIExpression(), !1945)
    #dbg_value(ptr %m, !1948, !DIExpression(), !1945)
    #dbg_value(i32 %mlen, !1949, !DIExpression(), !1945)
    #dbg_value(ptr %csk, !1950, !DIExpression(), !1945)
    #dbg_value(i32 0, !1951, !DIExpression(), !1945)
    #dbg_value(i32 964, !1952, !DIExpression(), !1945)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1953
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #6, !dbg !1954
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1955
    #dbg_value(ptr %siglen, !1956, !DIExpression(DW_OP_deref), !1945)
  %call2 = call i32 @pqmayo_MAYO_5_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #4, !dbg !1957
    #dbg_value(i32 0, !1951, !DIExpression(), !1945)
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1956, !DIExpression(), !1945)
  %cmp3.not = icmp eq i32 %0, 964
  br i1 %cmp3.not, label %if.end, label %if.then, !dbg !1958

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1960
    #dbg_value(i32 %1, !1956, !DIExpression(), !1945)
  %add = add i32 %1, %mlen, !dbg !1962
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #6, !dbg !1963
  br label %err, !dbg !1964

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1965
    #dbg_value(i32 %2, !1956, !DIExpression(), !1945)
  %add5 = add i32 %2, %mlen, !dbg !1966
  store i32 %add5, ptr %smlen, align 4, !dbg !1967
  br label %err, !dbg !1968

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1969, !1970)
  ret i32 0, !dbg !1971
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1972 {
entry:
    #dbg_value(ptr %p, !1973, !DIExpression(), !1974)
    #dbg_value(ptr %m, !1975, !DIExpression(), !1974)
    #dbg_value(ptr %mlen, !1976, !DIExpression(), !1974)
    #dbg_value(ptr %sm, !1977, !DIExpression(), !1974)
    #dbg_value(i32 %smlen, !1978, !DIExpression(), !1974)
    #dbg_value(ptr %pk, !1979, !DIExpression(), !1974)
    #dbg_value(i32 964, !1980, !DIExpression(), !1974)
  %cmp = icmp ult i32 %smlen, 964, !dbg !1981
  br i1 %cmp, label %return, label %if.end, !dbg !1981

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1983
  %sub = add i32 %smlen, -964, !dbg !1984
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #4, !dbg !1985
    #dbg_value(i32 %call, !1986, !DIExpression(), !1974)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1987
  br i1 %cmp1, label %if.then2, label %return, !dbg !1987

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -964, !dbg !1989
  store i32 %sub3, ptr %mlen, align 4, !dbg !1991
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1992
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #6, !dbg !1993
  br label %return, !dbg !1994

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ %call, %if.end ], !dbg !1974
  ret i32 %retval.0, !dbg !1995
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1996 {
entry:
  %tEnc = alloca [71 x i8], align 1
  %t = alloca [142 x i8], align 1
  %y = alloca [284 x i8], align 1
  %s = alloca [1848 x i8], align 1
  %pk = alloca [107415 x i64], align 8
  %tmp = alloca [104 x i8], align 1
    #dbg_value(ptr %p, !1999, !DIExpression(), !2000)
    #dbg_value(ptr %m, !2001, !DIExpression(), !2000)
    #dbg_value(i32 %mlen, !2002, !DIExpression(), !2000)
    #dbg_value(ptr %sig, !2003, !DIExpression(), !2000)
    #dbg_value(ptr %cpk, !2004, !DIExpression(), !2000)
    #dbg_declare(ptr %tEnc, !2005, !DIExpression(), !2006)
    #dbg_declare(ptr %t, !2007, !DIExpression(), !2008)
    #dbg_declare(ptr %y, !2009, !DIExpression(), !2013)
  call void @mayo_memset(ptr %y, i8 0, i32 284), !dbg !2013
    #dbg_declare(ptr %s, !2014, !DIExpression(), !2015)
    #dbg_declare(ptr %pk, !2016, !DIExpression(), !2017)
  call void @mayo_memset(ptr %pk, i8 0, i32 859320), !dbg !2017
    #dbg_declare(ptr %tmp, !2018, !DIExpression(), !2022)
    #dbg_value(i32 142, !2023, !DIExpression(), !2000)
    #dbg_value(i32 154, !2024, !DIExpression(), !2000)
    #dbg_value(i32 12, !2025, !DIExpression(), !2000)
    #dbg_value(i32 71, !2026, !DIExpression(), !2000)
    #dbg_value(i32 964, !2027, !DIExpression(), !2000)
    #dbg_value(i32 64, !2028, !DIExpression(), !2000)
    #dbg_value(i32 40, !2029, !DIExpression(), !2000)
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #4, !dbg !2030
    #dbg_value(i32 0, !2031, !DIExpression(), !2000)
    #dbg_value(ptr %pk, !2032, !DIExpression(), !2000)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 731016, !dbg !2033
    #dbg_value(ptr %add.ptr, !2034, !DIExpression(), !2000)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 853704, !dbg !2035
    #dbg_value(ptr %add.ptr2, !2036, !DIExpression(), !2000)
  call void @shake256(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef %m, i32 noundef %mlen) #4, !dbg !2037
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 64, !dbg !2038
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 924, !dbg !2039
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 40) #6, !dbg !2040
  call void @shake256(ptr noundef nonnull %tEnc, i32 noundef 71, ptr noundef nonnull %tmp, i32 noundef 104) #4, !dbg !2041
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 142) #4, !dbg !2042
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 1848) #4, !dbg !2043
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #4, !dbg !2044
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 142) #6, !dbg !2045
  %cmp21 = icmp ne i32 %call20, 0, !dbg !2047
  %. = zext i1 %cmp21 to i32, !dbg !2000
  ret i32 %., !dbg !2048
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !2049 {
entry:
    #dbg_value(ptr %p, !2050, !DIExpression(), !2051)
    #dbg_value(ptr %cpk, !2052, !DIExpression(), !2051)
    #dbg_value(ptr %pk, !2053, !DIExpression(), !2051)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #4, !dbg !2054
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !2055
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 853704, !dbg !2056
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 78, i32 noundef 142) #4, !dbg !2057
  ret i32 0, !dbg !2058
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %eval) unnamed_addr #0 !dbg !2059 {
entry:
  %SPS = alloca [1296 x i64], align 8
  %zero = alloca [142 x i8], align 1
    #dbg_value(ptr %p, !2062, !DIExpression(), !2063)
    #dbg_value(ptr %s, !2064, !DIExpression(), !2063)
    #dbg_value(ptr %P1, !2065, !DIExpression(), !2063)
    #dbg_value(ptr %P2, !2066, !DIExpression(), !2063)
    #dbg_value(ptr %P3, !2067, !DIExpression(), !2063)
    #dbg_value(ptr %eval, !2068, !DIExpression(), !2063)
    #dbg_declare(ptr %SPS, !2069, !DIExpression(), !2070)
  call void @mayo_memset(ptr %SPS, i8 0, i32 10368), !dbg !2070
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #4, !dbg !2071
    #dbg_declare(ptr %zero, !2072, !DIExpression(), !2073)
  call void @mayo_memset(ptr %zero, i8 0, i32 142), !dbg !2073
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #4, !dbg !2074
  ret void, !dbg !2075
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %s, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2076 {
entry:
  %PS = alloca [16632 x i64], align 8
    #dbg_value(ptr %p, !2079, !DIExpression(), !2080)
    #dbg_value(ptr %P1, !2081, !DIExpression(), !2080)
    #dbg_value(ptr %P2, !2082, !DIExpression(), !2080)
    #dbg_value(ptr %P3, !2083, !DIExpression(), !2080)
    #dbg_value(ptr %s, !2084, !DIExpression(), !2080)
    #dbg_value(ptr %SPS, !2085, !DIExpression(), !2080)
    #dbg_declare(ptr %PS, !2086, !DIExpression(), !2090)
  call void @mayo_memset(ptr %PS, i8 0, i32 133056), !dbg !2090
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 142, i32 noundef 142, i32 noundef 12, i32 noundef 12, ptr noundef nonnull %PS) #4, !dbg !2091
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 142, i32 noundef 12, i32 noundef 154, ptr noundef %SPS) #4, !dbg !2092
  ret void, !dbg !2093
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef nonnull %PS) unnamed_addr #0 !dbg !2094 {
entry:
  %accumulator = alloca [266112 x i64], align 8
    #dbg_value(ptr %P1, !2097, !DIExpression(), !2098)
    #dbg_value(ptr %P2, !2099, !DIExpression(), !2098)
    #dbg_value(ptr %P3, !2100, !DIExpression(), !2098)
    #dbg_value(ptr %S, !2101, !DIExpression(), !2098)
    #dbg_value(i32 142, !2102, !DIExpression(), !2098)
    #dbg_value(i32 142, !2103, !DIExpression(), !2098)
    #dbg_value(i32 12, !2104, !DIExpression(), !2098)
    #dbg_value(i32 12, !2105, !DIExpression(), !2098)
    #dbg_value(ptr %PS, !2106, !DIExpression(), !2098)
    #dbg_value(i32 154, !2107, !DIExpression(), !2098)
    #dbg_value(i32 9, !2108, !DIExpression(), !2098)
    #dbg_declare(ptr %accumulator, !2109, !DIExpression(), !2113)
  call void @mayo_memset(ptr %accumulator, i8 0, i32 2128896), !dbg !2113
    #dbg_value(i32 0, !2114, !DIExpression(), !2098)
    #dbg_value(i32 0, !2115, !DIExpression(), !2117)
  br label %for.cond, !dbg !2118

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ 142, %entry ], !dbg !2119
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2119
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2120
    #dbg_value(i32 %row.0, !2115, !DIExpression(), !2117)
    #dbg_value(i32 %P1_used.0, !2114, !DIExpression(), !2098)
  %exitcond4 = icmp ne i32 %row.0, 142, !dbg !2121
  br i1 %exitcond4, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2123

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2124
  br label %for.cond2, !dbg !2124

for.cond56.preheader:                             ; preds = %for.cond
  br label %for.cond56, !dbg !2127

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !2098
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2129
    #dbg_value(i32 %j.0, !2130, !DIExpression(), !2131)
    #dbg_value(i32 %P1_used.1, !2114, !DIExpression(), !2098)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2132
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2124

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !2098
  br label %for.cond21, !dbg !2134

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2136

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2139
    #dbg_value(i32 %col.0, !2140, !DIExpression(), !2141)
  %exitcond = icmp ne i32 %col.0, 12, !dbg !2142
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2136

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %P1_used.1, 72, !dbg !2144
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !2144
  %mul8 = mul nuw nsw i32 %row.0, 12, !dbg !2146
  %add9 = add nuw nsw i32 %mul8, %col.0, !dbg !2147
  %mul10 = shl nuw nsw i32 %add9, 4, !dbg !2148
  %mul11 = mul nuw nsw i32 %col.0, 154, !dbg !2149
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2150
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2150
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2150
  %conv = zext i8 %2 to i32, !dbg !2150
  %add13 = add nuw nsw i32 %mul10, %conv, !dbg !2151
  %add.ptr15.idx = mul nuw nsw i32 %add13, 72, !dbg !2152
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr15.idx, !dbg !2152
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #4, !dbg !2153
  %inc = add nuw nsw i32 %col.0, 1, !dbg !2154
    #dbg_value(i32 %inc, !2140, !DIExpression(), !2141)
  br label %for.cond5, !dbg !2155, !llvm.loop !2156

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2114, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2098)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2158
    #dbg_value(i32 %inc16, !2114, !DIExpression(), !2098)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2159
    #dbg_value(i32 %inc18, !2130, !DIExpression(), !2131)
  br label %for.cond2, !dbg !2160, !llvm.loop !2161

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2163
    #dbg_value(i32 %j20.0, !2164, !DIExpression(), !2165)
  %exitcond3 = icmp ne i32 %j20.0, 12, !dbg !2166
  br i1 %exitcond3, label %for.cond26.preheader, label %for.inc52, !dbg !2134

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2168

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2171
    #dbg_value(i32 %col25.0, !2172, !DIExpression(), !2173)
  %exitcond2 = icmp ne i32 %col25.0, 12, !dbg !2174
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2168

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nuw nsw i32 %row.0, 12, !dbg !2176
  %add31 = add nuw nsw i32 %mul30, %j20.0, !dbg !2178
  %add.ptr33.idx = mul nuw nsw i32 %add31, 72, !dbg !2179
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr33.idx, !dbg !2179
  %mul35 = mul nuw nsw i32 %row.0, 12, !dbg !2180
  %add36 = add nuw nsw i32 %mul35, %col25.0, !dbg !2181
  %mul37 = shl nuw nsw i32 %add36, 4, !dbg !2182
  %mul38 = mul nuw nsw i32 %col25.0, 154, !dbg !2183
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2184
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2184
  %arrayidx41 = getelementptr i8, ptr %4, i32 142, !dbg !2184
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2184
  %conv42 = zext i8 %5 to i32, !dbg !2184
  %add43 = add nuw nsw i32 %mul37, %conv42, !dbg !2185
  %add.ptr45.idx = mul nuw nsw i32 %add43, 72, !dbg !2186
  %add.ptr45 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr45.idx, !dbg !2186
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #4, !dbg !2187
  %inc47 = add nuw nsw i32 %col25.0, 1, !dbg !2188
    #dbg_value(i32 %inc47, !2172, !DIExpression(), !2173)
  br label %for.cond26, !dbg !2189, !llvm.loop !2190

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw nsw i32 %j20.0, 1, !dbg !2192
    #dbg_value(i32 %inc50, !2164, !DIExpression(), !2165)
  br label %for.cond21, !dbg !2193, !llvm.loop !2194

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw nsw i32 %row.0, 1, !dbg !2196
    #dbg_value(i32 %inc53, !2115, !DIExpression(), !2117)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !2197
  br label %for.cond, !dbg !2197, !llvm.loop !2198

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %indvars.iv6 = phi i32 [ 12, %for.cond56.preheader ], [ %indvars.iv.next7, %for.inc90 ], !dbg !2200
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2200
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ 142, %for.cond56.preheader ], !dbg !2201
    #dbg_value(i32 %row55.0, !2202, !DIExpression(), !2203)
    #dbg_value(i32 %P3_used.0, !2204, !DIExpression(), !2098)
  %exitcond9 = icmp ne i32 %row55.0, 154, !dbg !2205
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2127

for.cond61.preheader:                             ; preds = %for.cond56
  %6 = add i32 %P3_used.0, %indvars.iv6, !dbg !2207
  br label %for.cond61, !dbg !2207

while.cond.preheader:                             ; preds = %for.cond56
  br label %while.cond, !dbg !2210

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !2098
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2211
    #dbg_value(i32 %j60.0, !2212, !DIExpression(), !2213)
    #dbg_value(i32 %P3_used.1, !2204, !DIExpression(), !2098)
  %exitcond8 = icmp ne i32 %P3_used.1, %6, !dbg !2214
  br i1 %exitcond8, label %for.cond66.preheader, label %for.inc90, !dbg !2207

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2216

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2219
    #dbg_value(i32 %col65.0, !2220, !DIExpression(), !2221)
  %exitcond5 = icmp ne i32 %col65.0, 12, !dbg !2222
  br i1 %exitcond5, label %for.body69, label %for.inc87, !dbg !2216

for.body69:                                       ; preds = %for.cond66
  %add.ptr71.idx = mul nsw i32 %P3_used.1, 72, !dbg !2224
  %add.ptr71 = getelementptr inbounds i8, ptr %P3, i32 %add.ptr71.idx, !dbg !2224
  %mul73 = mul nuw nsw i32 %row55.0, 12, !dbg !2226
  %add74 = add nuw nsw i32 %mul73, %col65.0, !dbg !2227
  %mul75 = shl nuw nsw i32 %add74, 4, !dbg !2228
  %mul76 = mul nuw nsw i32 %col65.0, 154, !dbg !2229
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2230
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2230
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2230
  %conv79 = zext i8 %8 to i32, !dbg !2230
  %add80 = add nuw nsw i32 %mul75, %conv79, !dbg !2231
  %add.ptr82.idx = mul nuw nsw i32 %add80, 72, !dbg !2232
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr82.idx, !dbg !2232
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #4, !dbg !2233
  %inc84 = add nuw nsw i32 %col65.0, 1, !dbg !2234
    #dbg_value(i32 %inc84, !2220, !DIExpression(), !2221)
  br label %for.cond66, !dbg !2235, !llvm.loop !2236

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2204, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2098)
  %inc86 = add i32 %P3_used.1, 1, !dbg !2238
    #dbg_value(i32 %inc86, !2204, !DIExpression(), !2098)
  %inc88 = add nuw nsw i32 %j60.0, 1, !dbg !2239
    #dbg_value(i32 %inc88, !2212, !DIExpression(), !2213)
  br label %for.cond61, !dbg !2240, !llvm.loop !2241

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !2098
  %inc91 = add nuw nsw i32 %row55.0, 1, !dbg !2243
    #dbg_value(i32 %inc91, !2202, !DIExpression(), !2203)
  %indvars.iv.next7 = add nsw i32 %indvars.iv6, -1, !dbg !2244
  br label %for.cond56, !dbg !2244, !llvm.loop !2245

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !2098
    #dbg_value(i32 %i.0, !2247, !DIExpression(), !2098)
  %exitcond10 = icmp ne i32 %i.0, 1848, !dbg !2248
  br i1 %exitcond10, label %while.body, label %while.end, !dbg !2210

while.body:                                       ; preds = %while.cond
  %add.ptr99.idx = mul nuw nsw i32 %i.0, 1152, !dbg !2249
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr99.idx, !dbg !2249
  %add.ptr101.idx = mul nuw nsw i32 %i.0, 72, !dbg !2251
  %add.ptr101 = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr101.idx, !dbg !2251
  call fastcc void @m_vec_multiply_bins(i32 noundef 9, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #4, !dbg !2252
  %inc102 = add nuw nsw i32 %i.0, 1, !dbg !2253
    #dbg_value(i32 %inc102, !2247, !DIExpression(), !2098)
  br label %while.cond, !dbg !2210, !llvm.loop !2254

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2256
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2257 {
entry:
  %accumulator = alloca [20736 x i64], align 8
    #dbg_value(ptr %PS, !2260, !DIExpression(), !2261)
    #dbg_value(ptr %S, !2262, !DIExpression(), !2261)
    #dbg_value(i32 142, !2263, !DIExpression(), !2261)
    #dbg_value(i32 12, !2264, !DIExpression(), !2261)
    #dbg_value(i32 154, !2265, !DIExpression(), !2261)
    #dbg_value(ptr %SPS, !2266, !DIExpression(), !2261)
    #dbg_declare(ptr %accumulator, !2267, !DIExpression(), !2271)
  call void @mayo_memset(ptr %accumulator, i8 0, i32 165888), !dbg !2271
    #dbg_value(i32 9, !2272, !DIExpression(), !2261)
    #dbg_value(i32 0, !2273, !DIExpression(), !2275)
  br label %for.cond, !dbg !2276

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2277
    #dbg_value(i32 %row.0, !2273, !DIExpression(), !2275)
  %exitcond2 = icmp ne i32 %row.0, 12, !dbg !2278
  br i1 %exitcond2, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2280

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2281

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !2284

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2285
    #dbg_value(i32 %j.0, !2286, !DIExpression(), !2287)
  %exitcond1 = icmp ne i32 %j.0, 154, !dbg !2288
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2281

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2290

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2293
    #dbg_value(i32 %col.0, !2294, !DIExpression(), !2295)
  %exitcond = icmp ne i32 %col.0, 12, !dbg !2296
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2290

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %j.0, 12, !dbg !2298
  %add7 = add nuw nsw i32 %mul, %col.0, !dbg !2300
  %add.ptr.idx = mul nuw nsw i32 %add7, 72, !dbg !2301
  %add.ptr = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr.idx, !dbg !2301
  %mul9 = mul nuw nsw i32 %row.0, 12, !dbg !2302
  %add10 = add nuw nsw i32 %mul9, %col.0, !dbg !2303
  %mul11 = shl nuw nsw i32 %add10, 4, !dbg !2304
  %mul12 = mul nuw nsw i32 %row.0, 154, !dbg !2305
  %0 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2306
  %arrayidx = getelementptr i8, ptr %0, i32 %j.0, !dbg !2306
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2306
  %conv = zext i8 %1 to i32, !dbg !2306
  %add14 = add nuw nsw i32 %mul11, %conv, !dbg !2307
  %add.ptr16.idx = mul nuw nsw i32 %add14, 72, !dbg !2308
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr16.idx, !dbg !2308
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #4, !dbg !2309
  %add17 = add nuw nsw i32 %col.0, 1, !dbg !2310
    #dbg_value(i32 %add17, !2294, !DIExpression(), !2295)
  br label %for.cond4, !dbg !2311, !llvm.loop !2312

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %j.0, 1, !dbg !2314
    #dbg_value(i32 %inc, !2286, !DIExpression(), !2287)
  br label %for.cond1, !dbg !2315, !llvm.loop !2316

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw nsw i32 %row.0, 1, !dbg !2318
    #dbg_value(i32 %inc21, !2273, !DIExpression(), !2275)
  br label %for.cond, !dbg !2319, !llvm.loop !2320

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2261
    #dbg_value(i32 %i.0, !2322, !DIExpression(), !2261)
  %exitcond3 = icmp ne i32 %i.0, 144, !dbg !2323
  br i1 %exitcond3, label %while.body, label %while.end, !dbg !2284

while.body:                                       ; preds = %while.cond
  %add.ptr29.idx = mul nuw nsw i32 %i.0, 1152, !dbg !2324
  %add.ptr29 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr29.idx, !dbg !2324
  %add.ptr31.idx = mul nuw nsw i32 %i.0, 72, !dbg !2326
  %add.ptr31 = getelementptr inbounds nuw i8, ptr %SPS, i32 %add.ptr31.idx, !dbg !2326
  call fastcc void @m_vec_multiply_bins(i32 noundef 9, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #4, !dbg !2327
  %inc32 = add nuw nsw i32 %i.0, 1, !dbg !2328
    #dbg_value(i32 %inc32, !2322, !DIExpression(), !2261)
  br label %while.cond, !dbg !2284, !llvm.loop !2329

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2331
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2332 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2335, !DIExpression(), !2336)
    #dbg_value(ptr %in, !2337, !DIExpression(), !2336)
    #dbg_value(ptr %acc, !2338, !DIExpression(), !2336)
    #dbg_value(i32 0, !2339, !DIExpression(), !2341)
  br label %for.cond, !dbg !2342

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2343
    #dbg_value(i32 %i.0, !2339, !DIExpression(), !2341)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2344
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2346

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2347
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2347
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2349
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2350
  %xor = xor i64 %1, %0, !dbg !2350
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2350
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2351
    #dbg_value(i32 %inc, !2339, !DIExpression(), !2341)
  br label %for.cond, !dbg !2352, !llvm.loop !2353

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2355
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef nonnull %bins, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2356 {
entry:
    #dbg_value(i32 9, !2359, !DIExpression(), !2360)
    #dbg_value(ptr %bins, !2361, !DIExpression(), !2360)
    #dbg_value(ptr %out, !2362, !DIExpression(), !2360)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 360, !dbg !2363
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 720, !dbg !2364
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #4, !dbg !2365
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 792, !dbg !2366
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 864, !dbg !2367
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #4, !dbg !2368
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 720, !dbg !2369
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2370
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #4, !dbg !2371
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 864, !dbg !2372
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 432, !dbg !2373
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #4, !dbg !2374
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2375
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 1008, !dbg !2376
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #4, !dbg !2377
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 432, !dbg !2378
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 216, !dbg !2379
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #4, !dbg !2380
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 1008, !dbg !2381
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 1080, !dbg !2382
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #4, !dbg !2383
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 216, !dbg !2384
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 576, !dbg !2385
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #4, !dbg !2386
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 1080, !dbg !2387
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 936, !dbg !2388
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #4, !dbg !2389
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 576, !dbg !2390
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2391
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #4, !dbg !2392
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 936, !dbg !2393
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 648, !dbg !2394
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #4, !dbg !2395
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2396
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 144, !dbg !2397
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #4, !dbg !2398
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 648, !dbg !2399
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2400
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #4, !dbg !2401
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 144, !dbg !2402
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2403
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #4, !dbg !2404
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2405
  call fastcc void @m_vec_copy(i32 noundef 9, ptr noundef nonnull %add.ptr28, ptr noundef %out) #4, !dbg !2406
  ret void, !dbg !2407
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2408 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2409, !DIExpression(), !2410)
    #dbg_value(ptr %in, !2411, !DIExpression(), !2410)
    #dbg_value(ptr %acc, !2412, !DIExpression(), !2410)
    #dbg_value(i64 1229782938247303441, !2413, !DIExpression(), !2410)
    #dbg_value(i32 0, !2414, !DIExpression(), !2416)
  br label %for.cond, !dbg !2417

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2418
    #dbg_value(i32 %i.0, !2414, !DIExpression(), !2416)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2419
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2421

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2422
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2422
  %and = and i64 %0, 1229782938247303441, !dbg !2424
    #dbg_value(i64 %and, !2425, !DIExpression(), !2426)
  %xor = lshr i64 %0, 1, !dbg !2427
  %shr = and i64 %xor, 8608480567731124087, !dbg !2427
  %mul = mul nuw i64 %and, 9, !dbg !2428
  %xor2 = xor i64 %shr, %mul, !dbg !2429
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2430
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2431
  %xor4 = xor i64 %1, %xor2, !dbg !2431
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2431
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2432
    #dbg_value(i32 %inc, !2414, !DIExpression(), !2416)
  br label %for.cond, !dbg !2433, !llvm.loop !2434

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2436
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2437 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2438, !DIExpression(), !2439)
    #dbg_value(ptr %in, !2440, !DIExpression(), !2439)
    #dbg_value(ptr %acc, !2441, !DIExpression(), !2439)
    #dbg_value(i64 -8608480567731124088, !2442, !DIExpression(), !2439)
    #dbg_value(i32 0, !2443, !DIExpression(), !2445)
  br label %for.cond, !dbg !2446

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2447
    #dbg_value(i32 %i.0, !2443, !DIExpression(), !2445)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2448
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2450

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2451
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2451
    #dbg_value(i64 %0, !2453, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2454)
  %xor = shl i64 %0, 1, !dbg !2455
  %shl = and i64 %xor, -1229782938247303442, !dbg !2455
  %and = lshr i64 %0, 3, !dbg !2456
  %shr = and i64 %and, 1229782938247303441, !dbg !2456
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2457
  %xor2 = xor i64 %shl, %mul, !dbg !2458
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2459
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2460
  %xor4 = xor i64 %1, %xor2, !dbg !2460
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2460
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2461
    #dbg_value(i32 %inc, !2443, !DIExpression(), !2445)
  br label %for.cond, !dbg !2462, !llvm.loop !2463

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2465
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2466 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2467, !DIExpression(), !2468)
    #dbg_value(ptr %in, !2469, !DIExpression(), !2468)
    #dbg_value(ptr %out, !2470, !DIExpression(), !2468)
    #dbg_value(i32 0, !2471, !DIExpression(), !2473)
  br label %for.cond, !dbg !2474

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2475
    #dbg_value(i32 %i.0, !2471, !DIExpression(), !2473)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2476
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2478

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2479
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2479
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2481
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2482
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2483
    #dbg_value(i32 %inc, !2471, !DIExpression(), !2473)
  br label %for.cond, !dbg !2484, !llvm.loop !2485

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2487
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_5_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2488 {
entry:
    #dbg_value(ptr %p, !2519, !DIExpression(), !2520)
    #dbg_value(ptr %in, !2521, !DIExpression(), !2520)
    #dbg_value(ptr %out, !2522, !DIExpression(), !2520)
    #dbg_value(i32 %size, !2523, !DIExpression(), !2520)
    #dbg_value(i32 9, !2524, !DIExpression(), !2520)
    #dbg_value(i32 0, !2525, !DIExpression(), !2520)
    #dbg_value(i32 0, !2526, !DIExpression(), !2528)
  %0 = icmp sgt i32 %size, 0, !dbg !2529
  %1 = select i1 %0, i32 %size, i32 0, !dbg !2529
  br label %for.cond, !dbg !2529

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2530
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2530
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2531
    #dbg_value(i32 %r.0, !2526, !DIExpression(), !2528)
    #dbg_value(i32 %m_vecs_stored.0, !2525, !DIExpression(), !2520)
  %exitcond1 = icmp ne i32 %r.0, %1, !dbg !2532
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2534

for.cond1.preheader:                              ; preds = %for.cond
  %2 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2535
  br label %for.cond1, !dbg !2535

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2520
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2538
    #dbg_value(i32 %c.0, !2539, !DIExpression(), !2540)
    #dbg_value(i32 %m_vecs_stored.1, !2525, !DIExpression(), !2520)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %2, !dbg !2541
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2535

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2543
  %add = add nsw i32 %mul, %c.0, !dbg !2545
  %add.ptr.idx = mul nsw i32 %add, 72, !dbg !2546
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2546
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 72, !dbg !2547
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2547
  call fastcc void @m_vec_copy.17(i32 noundef 9, ptr noundef %add.ptr, ptr noundef %add.ptr6) #4, !dbg !2548
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2549
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2549

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2551
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2553
  %add.ptr11.idx = mul nsw i32 %add9, 72, !dbg !2554
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2554
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 72, !dbg !2555
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2555
  call fastcc void @m_vec_add.18(i32 noundef 9, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #4, !dbg !2556
  br label %for.inc, !dbg !2557

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2525, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2520)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2558
    #dbg_value(i32 %inc, !2525, !DIExpression(), !2520)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2559
    #dbg_value(i32 %inc14, !2539, !DIExpression(), !2540)
  br label %for.cond1, !dbg !2560, !llvm.loop !2561

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2520
  %inc16 = add nuw i32 %r.0, 1, !dbg !2563
    #dbg_value(i32 %inc16, !2526, !DIExpression(), !2528)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2564
  br label %for.cond, !dbg !2564, !llvm.loop !2565

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2567
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2568 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2569, !DIExpression(), !2570)
    #dbg_value(ptr %in, !2571, !DIExpression(), !2570)
    #dbg_value(ptr %out, !2572, !DIExpression(), !2570)
    #dbg_value(i32 0, !2573, !DIExpression(), !2575)
  br label %for.cond, !dbg !2576

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2577
    #dbg_value(i32 %i.0, !2573, !DIExpression(), !2575)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2578
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2580

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2581
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2581
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2583
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2584
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2585
    #dbg_value(i32 %inc, !2573, !DIExpression(), !2575)
  br label %for.cond, !dbg !2586, !llvm.loop !2587

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2589
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2590 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2591, !DIExpression(), !2592)
    #dbg_value(ptr %in, !2593, !DIExpression(), !2592)
    #dbg_value(ptr %acc, !2594, !DIExpression(), !2592)
    #dbg_value(i32 0, !2595, !DIExpression(), !2597)
  br label %for.cond, !dbg !2598

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2599
    #dbg_value(i32 %i.0, !2595, !DIExpression(), !2597)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2600
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2602

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2603
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2603
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2605
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2606
  %xor = xor i64 %1, %0, !dbg !2606
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2606
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2607
    #dbg_value(i32 %inc, !2595, !DIExpression(), !2597)
  br label %for.cond, !dbg !2608, !llvm.loop !2609

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2611
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2612 {
entry:
  %Ar = alloca [142 x i8], align 1
    #dbg_value(ptr %p, !2615, !DIExpression(), !2616)
    #dbg_value(ptr %A, !2617, !DIExpression(), !2616)
    #dbg_value(ptr %y, !2618, !DIExpression(), !2616)
    #dbg_value(ptr %r, !2619, !DIExpression(), !2616)
    #dbg_value(ptr %x, !2620, !DIExpression(), !2616)
    #dbg_value(i32 %k, !2621, !DIExpression(), !2616)
    #dbg_value(i32 %o, !2622, !DIExpression(), !2616)
    #dbg_value(i32 %m, !2623, !DIExpression(), !2616)
    #dbg_value(i32 %A_cols, !2624, !DIExpression(), !2616)
    #dbg_value(i32 0, !2625, !DIExpression(), !2627)
  %0 = mul nsw i32 %o, %k, !dbg !2628
  %1 = icmp sgt i32 %0, 0, !dbg !2628
  %2 = select i1 %1, i32 %0, i32 0, !dbg !2628
  br label %for.cond, !dbg !2628

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2629
    #dbg_value(i32 %i.0, !2625, !DIExpression(), !2627)
  %exitcond = icmp ne i32 %i.0, %2, !dbg !2630
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2632

for.cond3.preheader:                              ; preds = %for.cond
  %3 = icmp sgt i32 %m, 0, !dbg !2633
  %4 = select i1 %3, i32 %m, i32 0, !dbg !2633
  br label %for.cond3, !dbg !2633

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2635
  %5 = load i8, ptr %arrayidx, align 1, !dbg !2635
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2637
  store i8 %5, ptr %arrayidx1, align 1, !dbg !2638
  %inc = add nuw i32 %i.0, 1, !dbg !2639
    #dbg_value(i32 %inc, !2625, !DIExpression(), !2627)
  br label %for.cond, !dbg !2640, !llvm.loop !2641

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2643
    #dbg_value(i32 %i2.0, !2644, !DIExpression(), !2645)
  %exitcond14 = icmp ne i32 %i2.0, %4, !dbg !2646
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2633

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2648
  %mul7 = mul nsw i32 %k, %o, !dbg !2650
  %add = add nsw i32 %mul7, 1, !dbg !2651
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2652
  %6 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2653
  %arrayidx10 = getelementptr i8, ptr %6, i32 %mul8, !dbg !2653
  store i8 0, ptr %arrayidx10, align 1, !dbg !2654
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2655
    #dbg_value(i32 %inc12, !2644, !DIExpression(), !2645)
  br label %for.cond3, !dbg !2656, !llvm.loop !2657

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2659
  %add15 = add nsw i32 %mul14, 1, !dbg !2660
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #4, !dbg !2661
    #dbg_value(i32 0, !2662, !DIExpression(), !2664)
  br label %for.cond17, !dbg !2665

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2666
    #dbg_value(i32 %i16.0, !2662, !DIExpression(), !2664)
  %exitcond15 = icmp ne i32 %i16.0, %4, !dbg !2667
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2669

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2670
  %7 = load i8, ptr %arrayidx20, align 1, !dbg !2670
  %arrayidx21 = getelementptr inbounds nuw [142 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2672
  %8 = load i8, ptr %arrayidx21, align 1, !dbg !2672
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %7, i8 noundef zeroext %8) #4, !dbg !2673
  %mul22 = mul nsw i32 %k, %o, !dbg !2674
  %mul23 = mul nsw i32 %k, %o, !dbg !2675
  %add24 = add nsw i32 %mul23, 1, !dbg !2676
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2677
  %9 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2678
  %arrayidx27 = getelementptr i8, ptr %9, i32 %mul25, !dbg !2678
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2679
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2680
    #dbg_value(i32 %inc29, !2662, !DIExpression(), !2664)
  br label %for.cond17, !dbg !2681, !llvm.loop !2682

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2684
  %add32 = add nsw i32 %mul31, 1, !dbg !2685
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #4, !dbg !2686
    #dbg_value(i8 0, !2687, !DIExpression(), !2616)
    #dbg_value(i32 0, !2688, !DIExpression(), !2690)
  %10 = add i32 %A_cols, -1, !dbg !2691
  %11 = icmp sgt i32 %10, 0, !dbg !2691
  %12 = select i1 %11, i32 %10, i32 0, !dbg !2691
  br label %for.cond34, !dbg !2691

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2616
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2692
    #dbg_value(i32 %i33.0, !2688, !DIExpression(), !2690)
    #dbg_value(i8 %full_rank.0, !2687, !DIExpression(), !2616)
  %exitcond17 = icmp ne i32 %i33.0, %12, !dbg !2693
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2695

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2687, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2616)
  %sub37 = add nsw i32 %m, -1, !dbg !2696
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2698
  %13 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2699
  %arrayidx40 = getelementptr i8, ptr %13, i32 %i33.0, !dbg !2699
  %14 = load i8, ptr %arrayidx40, align 1, !dbg !2699
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %14), !2687, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2616)
  %or12 = or i8 %full_rank.0, %14, !dbg !2700
    #dbg_value(i8 %or12, !2687, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2616)
    #dbg_value(i8 %or12, !2687, !DIExpression(), !2616)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2701
    #dbg_value(i32 %inc44, !2688, !DIExpression(), !2690)
  br label %for.cond34, !dbg !2702, !llvm.loop !2703

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2616
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2705
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2705

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2707

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2707, !llvm.loop !2709

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2711
    #dbg_value(i32 %row.0, !2712, !DIExpression(), !2713)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2714
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2707

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2716, !DIExpression(), !2616)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2717
  %div = sdiv i32 32, %sub54, !dbg !2717
  %add55 = add nsw i32 %row.0, %div, !dbg !2717
  %mul56 = mul nsw i32 %k, %o, !dbg !2717
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2717
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2717

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2717
  %div60 = sdiv i32 32, %sub59, !dbg !2717
  %add61 = add nsw i32 %row.0, %div60, !dbg !2717
  br label %cond.end, !dbg !2717

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2717
  br label %cond.end, !dbg !2717

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2717
    #dbg_value(i32 %cond, !2719, !DIExpression(), !2616)
    #dbg_value(i32 %row.0, !2720, !DIExpression(), !2722)
  br label %for.cond63, !dbg !2723

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2724
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2725
    #dbg_value(i32 %col.0, !2720, !DIExpression(), !2722)
    #dbg_value(i8 %finished.0, !2716, !DIExpression(), !2616)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2726
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2728

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2729
  %15 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2731
  %arrayidx69 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2731
  %16 = load i8, ptr %arrayidx69, align 1, !dbg !2731
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %16, i8 noundef zeroext 0) #4, !dbg !2732
  %not = xor i8 %finished.0, -1, !dbg !2733
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2734, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2616)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2735
  %17 = getelementptr i8, ptr %A, i32 %add76, !dbg !2736
  %arrayidx78 = getelementptr i8, ptr %17, i32 -1, !dbg !2736
  %18 = load i8, ptr %arrayidx78, align 1, !dbg !2736
  %19 = and i8 %18, %not, !dbg !2737
  %and801 = and i8 %19, %call70, !dbg !2737
    #dbg_value(i8 %and801, !2738, !DIExpression(), !2739)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2740
  %20 = load i8, ptr %arrayidx83, align 1, !dbg !2741
  %xor2 = xor i8 %20, %and801, !dbg !2741
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2741
    #dbg_value(i32 0, !2742, !DIExpression(), !2744)
  br label %for.cond87, !dbg !2745

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2746
    #dbg_value(i32 %i86.0, !2742, !DIExpression(), !2744)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2747
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2749

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2750
  %21 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2752
  %arrayidx93 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2752
  %22 = load i8, ptr %arrayidx93, align 1, !dbg !2752
  %conv94 = zext i8 %22 to i64, !dbg !2753
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2754
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2755
  %23 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2756
  %arrayidx98 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2756
  %24 = load i8, ptr %arrayidx98, align 1, !dbg !2756
  %conv99 = zext i8 %24 to i64, !dbg !2757
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2758
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2759
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2760
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2761
  %25 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2762
  %arrayidx105 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2762
  %26 = load i8, ptr %arrayidx105, align 1, !dbg !2762
  %conv106 = zext i8 %26 to i64, !dbg !2763
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2764
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2765
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2766
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2767
  %27 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2768
  %arrayidx112 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2768
  %28 = load i8, ptr %arrayidx112, align 1, !dbg !2768
  %conv113 = zext i8 %28 to i64, !dbg !2769
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2770
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2771
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2772
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2773
  %29 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2774
  %arrayidx119 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2774
  %30 = load i8, ptr %arrayidx119, align 1, !dbg !2774
  %conv120 = zext i8 %30 to i64, !dbg !2775
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2776
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2777
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2778
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2779
  %31 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2780
  %arrayidx126 = getelementptr i8, ptr %31, i32 %col.0, !dbg !2780
  %32 = load i8, ptr %arrayidx126, align 1, !dbg !2780
  %conv127 = zext i8 %32 to i64, !dbg !2781
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2782
  %xor129 = xor i64 %xor122, %shl128, !dbg !2783
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2784
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2785
  %33 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2786
  %arrayidx133 = getelementptr i8, ptr %33, i32 %col.0, !dbg !2786
  %34 = load i8, ptr %arrayidx133, align 1, !dbg !2786
  %conv134 = zext i8 %34 to i64, !dbg !2787
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2788
  %xor136 = xor i64 %xor129, %shl135, !dbg !2789
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2790
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2791
  %35 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2792
  %arrayidx140 = getelementptr i8, ptr %35, i32 %col.0, !dbg !2792
  %36 = load i8, ptr %arrayidx140, align 1, !dbg !2792
  %conv141 = zext i8 %36 to i64, !dbg !2793
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2794
  %xor143 = xor i64 %xor136, %shl142, !dbg !2795
    #dbg_value(i64 %xor143, !2796, !DIExpression(), !2797)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #4, !dbg !2798
    #dbg_value(i64 %call144, !2796, !DIExpression(), !2797)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2799
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2799
  %37 = getelementptr i8, ptr %A, i32 %add147, !dbg !2800
  %arrayidx149 = getelementptr i8, ptr %37, i32 -1, !dbg !2800
  %38 = load i8, ptr %arrayidx149, align 1, !dbg !2801
  %39 = trunc i64 %call144 to i8, !dbg !2801
  %40 = and i8 %39, 15, !dbg !2801
  %conv152 = xor i8 %40, %38, !dbg !2801
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2801
  %shr = lshr i64 %call144, 8, !dbg !2802
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2803
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2803
  %41 = getelementptr i8, ptr %A, i32 %add156, !dbg !2804
  %arrayidx158 = getelementptr i8, ptr %41, i32 -1, !dbg !2804
  %42 = load i8, ptr %arrayidx158, align 1, !dbg !2805
  %43 = trunc i64 %shr to i8, !dbg !2805
  %44 = and i8 %43, 15, !dbg !2805
  %conv161 = xor i8 %44, %42, !dbg !2805
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2805
  %shr162 = lshr i64 %call144, 16, !dbg !2806
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2807
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2807
  %45 = getelementptr i8, ptr %A, i32 %add166, !dbg !2808
  %arrayidx168 = getelementptr i8, ptr %45, i32 -1, !dbg !2808
  %46 = load i8, ptr %arrayidx168, align 1, !dbg !2809
  %47 = trunc i64 %shr162 to i8, !dbg !2809
  %48 = and i8 %47, 15, !dbg !2809
  %conv171 = xor i8 %48, %46, !dbg !2809
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2809
  %shr172 = lshr i64 %call144, 24, !dbg !2810
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2811
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2811
  %49 = getelementptr i8, ptr %A, i32 %add176, !dbg !2812
  %arrayidx178 = getelementptr i8, ptr %49, i32 -1, !dbg !2812
  %50 = load i8, ptr %arrayidx178, align 1, !dbg !2813
  %51 = trunc i64 %shr172 to i8, !dbg !2813
  %52 = and i8 %51, 15, !dbg !2813
  %conv181 = xor i8 %52, %50, !dbg !2813
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2813
  %shr182 = lshr i64 %call144, 32, !dbg !2814
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2815
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2815
  %53 = getelementptr i8, ptr %A, i32 %add186, !dbg !2816
  %arrayidx188 = getelementptr i8, ptr %53, i32 -1, !dbg !2816
  %54 = load i8, ptr %arrayidx188, align 1, !dbg !2817
  %55 = trunc i64 %shr182 to i8, !dbg !2817
  %56 = and i8 %55, 15, !dbg !2817
  %conv191 = xor i8 %56, %54, !dbg !2817
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2817
  %shr192 = lshr i64 %call144, 40, !dbg !2818
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2819
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2819
  %57 = getelementptr i8, ptr %A, i32 %add196, !dbg !2820
  %arrayidx198 = getelementptr i8, ptr %57, i32 -1, !dbg !2820
  %58 = load i8, ptr %arrayidx198, align 1, !dbg !2821
  %59 = trunc i64 %shr192 to i8, !dbg !2821
  %60 = and i8 %59, 15, !dbg !2821
  %conv201 = xor i8 %60, %58, !dbg !2821
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2821
  %shr202 = lshr i64 %call144, 48, !dbg !2822
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2823
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2823
  %61 = getelementptr i8, ptr %A, i32 %add206, !dbg !2824
  %arrayidx208 = getelementptr i8, ptr %61, i32 -1, !dbg !2824
  %62 = load i8, ptr %arrayidx208, align 1, !dbg !2825
  %63 = trunc i64 %shr202 to i8, !dbg !2825
  %64 = and i8 %63, 15, !dbg !2825
  %conv211 = xor i8 %64, %62, !dbg !2825
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2825
  %shr212 = lshr i64 %call144, 56, !dbg !2826
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2827
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2827
  %65 = getelementptr i8, ptr %A, i32 %add216, !dbg !2828
  %arrayidx218 = getelementptr i8, ptr %65, i32 -1, !dbg !2828
  %66 = load i8, ptr %arrayidx218, align 1, !dbg !2829
  %67 = trunc nuw nsw i64 %shr212 to i8, !dbg !2829
  %conv221 = xor i8 %66, %67, !dbg !2829
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2829
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2830
    #dbg_value(i32 %add223, !2742, !DIExpression(), !2744)
  br label %for.cond87, !dbg !2831, !llvm.loop !2832

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2716, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2616)
  %or2273 = or i8 %finished.0, %call70, !dbg !2834
    #dbg_value(i8 %or2273, !2716, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2616)
    #dbg_value(i8 %or2273, !2716, !DIExpression(), !2616)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2835
    #dbg_value(i32 %inc230, !2720, !DIExpression(), !2722)
  br label %for.cond63, !dbg !2836, !llvm.loop !2837

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2839

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2616
  ret i32 %retval.0, !dbg !2839
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef nonnull %c, i32 noundef range(i32 -2147483647, -2147483648) %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2840 {
entry:
    #dbg_value(ptr %a, !2841, !DIExpression(), !2842)
    #dbg_value(ptr %b, !2843, !DIExpression(), !2842)
    #dbg_value(ptr %c, !2844, !DIExpression(), !2842)
    #dbg_value(i32 %colrow_ab, !2845, !DIExpression(), !2842)
    #dbg_value(i32 %row_a, !2846, !DIExpression(), !2842)
    #dbg_value(i32 1, !2847, !DIExpression(), !2842)
    #dbg_value(i32 0, !2848, !DIExpression(), !2850)
  %0 = icmp sgt i32 %row_a, 0, !dbg !2851
  %1 = select i1 %0, i32 %row_a, i32 0, !dbg !2851
  br label %for.cond, !dbg !2851

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2852
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2841, !DIExpression(), !2842)
    #dbg_value(ptr %c.addr.0, !2844, !DIExpression(), !2842)
    #dbg_value(i32 %i.0, !2848, !DIExpression(), !2850)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !2853
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !2855

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2856

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !2859
    #dbg_value(i32 poison, !2860, !DIExpression(), !2861)
    #dbg_value(ptr %c.addr.1, !2844, !DIExpression(), !2842)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !2856

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef %colrow_ab, i32 noundef 1) #4, !dbg !2862
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2865
    #dbg_value(i32 1, !2860, !DIExpression(), !2861)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2866
    #dbg_value(ptr %incdec.ptr, !2844, !DIExpression(), !2842)
  br label %for.cond1, !dbg !2867, !llvm.loop !2868

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2870
    #dbg_value(i32 %inc5, !2848, !DIExpression(), !2850)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2871
    #dbg_value(ptr %add.ptr6, !2841, !DIExpression(), !2842)
  br label %for.cond, !dbg !2872, !llvm.loop !2873

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2875
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2876 {
entry:
    #dbg_value(i8 %a, !2877, !DIExpression(), !2878)
    #dbg_value(i8 %b, !2879, !DIExpression(), !2878)
  %xor1 = xor i8 %a, %b, !dbg !2880
  ret i8 %xor1, !dbg !2881
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !2882 {
entry:
  %_pivot_row = alloca [10 x i64], align 32
  %_pivot_row2 = alloca [10 x i64], align 32
  %packed_A = alloca [1420 x i64], align 32
  %temp = alloca [160 x i8], align 1
    #dbg_value(ptr %A, !2886, !DIExpression(), !2887)
    #dbg_value(i32 %nrows, !2888, !DIExpression(), !2887)
    #dbg_value(i32 %ncols, !2889, !DIExpression(), !2887)
    #dbg_declare(ptr %_pivot_row, !2890, !DIExpression(), !2892)
    #dbg_declare(ptr %_pivot_row2, !2893, !DIExpression(), !2894)
    #dbg_declare(ptr %packed_A, !2895, !DIExpression(), !2899)
  call void @mayo_memset(ptr %packed_A, i8 0, i32 11360), !dbg !2899
  %add = add nsw i32 %ncols, 15, !dbg !2900
  %div = sdiv i32 %add, 16, !dbg !2901
    #dbg_value(i32 %div, !2902, !DIExpression(), !2887)
    #dbg_value(i32 0, !2903, !DIExpression(), !2905)
  %0 = icmp sgt i32 %nrows, 0, !dbg !2906
  %1 = select i1 %0, i32 %nrows, i32 0, !dbg !2906
  br label %for.cond, !dbg !2906

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2907
    #dbg_value(i32 %i.0, !2903, !DIExpression(), !2905)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !2908
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2910

for.cond3.preheader:                              ; preds = %for.cond
  %2 = icmp sgt i32 %div, 0, !dbg !2911
  %3 = select i1 %2, i32 %div, i32 0, !dbg !2911
  %4 = icmp sgt i32 %ncols, 0, !dbg !2911
  %5 = select i1 %4, i32 %ncols, i32 0, !dbg !2911
  br label %for.cond3, !dbg !2911

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2913
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2915
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2916
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2917
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #4, !dbg !2918
  %inc = add nuw i32 %i.0, 1, !dbg !2919
    #dbg_value(i32 %inc, !2903, !DIExpression(), !2905)
  br label %for.cond, !dbg !2920, !llvm.loop !2921

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2923
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2887
    #dbg_value(i32 %pivot_row.0, !2924, !DIExpression(), !2887)
    #dbg_value(i32 %pivot_col.0, !2925, !DIExpression(), !2926)
  %exitcond6 = icmp ne i32 %pivot_col.0, %5, !dbg !2927
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2911

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2929

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2931
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2931
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2931
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2931
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2931
    #dbg_value(i32 %cond, !2933, !DIExpression(), !2934)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2935
    #dbg_value(i32 %cond16, !2936, !DIExpression(), !2934)
    #dbg_value(i32 0, !2937, !DIExpression(), !2939)
  br label %for.cond18, !dbg !2940

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2941
    #dbg_value(i32 %i17.0, !2937, !DIExpression(), !2939)
  %exitcond2 = icmp ne i32 %i17.0, %3, !dbg !2942
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !2944

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2935
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2935
  br label %for.cond25, !dbg !2945

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2947
  store i64 0, ptr %arrayidx, align 8, !dbg !2949
  %arrayidx21 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2950
  store i64 0, ptr %arrayidx21, align 8, !dbg !2951
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2952
    #dbg_value(i32 %inc23, !2937, !DIExpression(), !2939)
  br label %for.cond18, !dbg !2953, !llvm.loop !2954

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2934
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2934
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2956
    #dbg_value(i32 %row.0, !2957, !DIExpression(), !2956)
    #dbg_value(i8 %pivot.0, !2958, !DIExpression(), !2934)
    #dbg_value(i64 %pivot_is_zero.0, !2959, !DIExpression(), !2934)
  %add27 = add nsw i32 %cond16, 32, !dbg !2960
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2960
  %sub30 = add nsw i32 %nrows, -1, !dbg !2960
  %add32 = add nsw i32 %cond16, 32, !dbg !2960
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2960
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2962
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2945

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #4, !dbg !2963
  %not = xor i64 %call, -1, !dbg !2965
    #dbg_value(i64 %not, !2966, !DIExpression(), !2967)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #4, !dbg !2968
    #dbg_value(i64 %call37, !2969, !DIExpression(), !2967)
    #dbg_value(i32 0, !2970, !DIExpression(), !2972)
  br label %for.cond38, !dbg !2973

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2974
    #dbg_value(i32 %j.0, !2970, !DIExpression(), !2972)
  %exitcond3 = icmp ne i32 %j.0, %3, !dbg !2975
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !2977

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2978
  %or = or i64 %and, %not, !dbg !2980
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2981
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2982
  %arrayidx43 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2983
  %6 = load i64, ptr %arrayidx43, align 8, !dbg !2983
  %and44 = and i64 %or, %6, !dbg !2984
  %arrayidx45 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2985
  %7 = load i64, ptr %arrayidx45, align 8, !dbg !2986
  %xor = xor i64 %7, %and44, !dbg !2986
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2986
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2987
    #dbg_value(i32 %inc47, !2970, !DIExpression(), !2972)
  br label %for.cond38, !dbg !2988, !llvm.loop !2989

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #4, !dbg !2991
    #dbg_value(i8 %call50, !2958, !DIExpression(), !2934)
  %conv = zext nneg i8 %call50 to i32, !dbg !2992
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #4, !dbg !2993
    #dbg_value(i64 %call51, !2959, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2934)
  %not52 = xor i64 %call51, -1, !dbg !2994
    #dbg_value(i64 %not52, !2959, !DIExpression(), !2934)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2995
    #dbg_value(i32 %inc54, !2957, !DIExpression(), !2956)
  br label %for.cond25, !dbg !2996, !llvm.loop !2997

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2934
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2934
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #4, !dbg !2999
    #dbg_value(i8 %call56, !3000, !DIExpression(), !2887)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #4, !dbg !3001
    #dbg_value(i32 %cond, !3002, !DIExpression(), !3004)
  br label %for.cond60, !dbg !3005

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !3006
    #dbg_value(i32 %row59.0, !3002, !DIExpression(), !3004)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !3007
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !3009

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !3010

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #4, !dbg !3012
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !3014
  %and67 = xor i64 %and67.demorgan, -1, !dbg !3014
    #dbg_value(i64 %and67, !3015, !DIExpression(), !3016)
    #dbg_value(i64 %and67.demorgan, !3017, !DIExpression(), !3016)
    #dbg_value(i32 0, !3018, !DIExpression(), !3020)
  br label %for.cond69, !dbg !3021

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !3022
    #dbg_value(i32 %col.0, !3018, !DIExpression(), !3020)
  %exitcond4 = icmp ne i32 %col.0, %3, !dbg !3023
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !3025

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !3026
  %add74 = add nsw i32 %mul73, %col.0, !dbg !3028
  %arrayidx75 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !3029
  %8 = load i64, ptr %arrayidx75, align 8, !dbg !3029
  %and76 = and i64 %and67.demorgan, %8, !dbg !3030
  %arrayidx77 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !3031
  %9 = load i64, ptr %arrayidx77, align 8, !dbg !3031
  %and78 = and i64 %9, %and67, !dbg !3032
  %add79 = add i64 %and76, %and78, !dbg !3033
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !3034
  %add81 = add nsw i32 %mul80, %col.0, !dbg !3035
  %arrayidx82 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !3036
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !3037
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !3038
    #dbg_value(i32 %inc84, !3018, !DIExpression(), !3020)
  br label %for.cond69, !dbg !3039, !llvm.loop !3040

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !3042
    #dbg_value(i32 %inc87, !3002, !DIExpression(), !3004)
  br label %for.cond60, !dbg !3043, !llvm.loop !3044

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !3046
    #dbg_value(i32 %row89.0, !3047, !DIExpression(), !3048)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !3049
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !3010

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !3051
    #dbg_value(i1 %cmp94, !3053, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3054)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !3055
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !3056
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #4, !dbg !3057
    #dbg_value(i8 %call100, !3058, !DIExpression(), !3054)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !3059
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !3060
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !3061
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #4, !dbg !3062
  %inc110 = add nsw i32 %row89.0, 1, !dbg !3063
    #dbg_value(i32 %inc110, !3047, !DIExpression(), !3048)
  br label %for.cond90, !dbg !3064, !llvm.loop !3065

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2924, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2887)
  %10 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !3067
  %11 = add i32 %10, 1, !dbg !3067
  %conv116 = add i32 %11, %pivot_row.0, !dbg !3067
    #dbg_value(i32 %conv116, !2924, !DIExpression(), !2887)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !3068
    #dbg_value(i32 %inc118, !2925, !DIExpression(), !2926)
  br label %for.cond3, !dbg !3069, !llvm.loop !3070

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !3072
    #dbg_value(i32 %i120.0, !3073, !DIExpression(), !3074)
  %exitcond8 = icmp ne i32 %i120.0, %1, !dbg !3075
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2929

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !3077
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !3079
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #4, !dbg !3080
    #dbg_value(i32 0, !3081, !DIExpression(), !3083)
  br label %for.cond130, !dbg !3084

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !3085
    #dbg_value(i32 %j129.0, !3081, !DIExpression(), !3083)
  %exitcond7 = icmp ne i32 %j129.0, %5, !dbg !3086
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !3088

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [160 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !3089
  %12 = load i8, ptr %arrayidx134, align 1, !dbg !3089
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !3091
  %13 = getelementptr i8, ptr %A, i32 %mul135, !dbg !3092
  %arrayidx137 = getelementptr i8, ptr %13, i32 %j129.0, !dbg !3092
  store i8 %12, ptr %arrayidx137, align 1, !dbg !3093
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3094
    #dbg_value(i32 %inc139, !3081, !DIExpression(), !3083)
  br label %for.cond130, !dbg !3095, !llvm.loop !3096

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3098
    #dbg_value(i32 %inc142, !3073, !DIExpression(), !3074)
  br label %for.cond121, !dbg !3099, !llvm.loop !3100

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 160) #4, !dbg !3102
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 80) #4, !dbg !3103
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 80) #4, !dbg !3104
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 11360) #4, !dbg !3105
  ret void, !dbg !3106
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3107 {
entry:
    #dbg_value(i8 %a, !3109, !DIExpression(), !3110)
    #dbg_value(i8 0, !3111, !DIExpression(), !3110)
  %0 = icmp ne i8 %a, 0, !dbg !3112
  %conv3 = sext i1 %0 to i8, !dbg !3113
  %1 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !3114
  %xor5 = xor i8 %1, %conv3, !dbg !3115
  ret i8 %xor5, !dbg !3116
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3117 {
entry:
    #dbg_value(i8 %a, !3120, !DIExpression(), !3121)
    #dbg_value(i64 %b, !3122, !DIExpression(), !3121)
  %0 = and i8 %a, 1, !dbg !3123
  %conv1 = zext nneg i8 %0 to i64, !dbg !3124
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3125
    #dbg_value(i64 %mul, !3126, !DIExpression(), !3121)
  %1 = and i8 %a, 2, !dbg !3127
  %conv4 = zext nneg i8 %1 to i64, !dbg !3128
  %mul5 = mul i64 %b, %conv4, !dbg !3129
  %xor = xor i64 %mul, %mul5, !dbg !3130
    #dbg_value(i64 %xor, !3126, !DIExpression(), !3121)
  %2 = and i8 %a, 4, !dbg !3131
  %conv8 = zext nneg i8 %2 to i64, !dbg !3132
  %mul9 = mul i64 %b, %conv8, !dbg !3133
  %xor10 = xor i64 %xor, %mul9, !dbg !3134
    #dbg_value(i64 %xor10, !3126, !DIExpression(), !3121)
  %3 = and i8 %a, 8, !dbg !3135
  %conv13 = zext nneg i8 %3 to i64, !dbg !3136
  %mul14 = mul i64 %b, %conv13, !dbg !3137
  %xor15 = xor i64 %xor10, %mul14, !dbg !3138
    #dbg_value(i64 %xor15, !3126, !DIExpression(), !3121)
    #dbg_value(i64 %xor15, !3139, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3121)
  %shr = lshr i64 %xor15, 4, !dbg !3140
  %and16 = lshr i64 %xor15, 3, !dbg !3141
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3141
  %4 = xor i64 %shr, %shr18, !dbg !3142
  %xor19 = xor i64 %4, %xor15, !dbg !3142
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3143
    #dbg_value(i64 %and20, !3144, !DIExpression(), !3121)
  ret i64 %and20, !dbg !3145
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef nonnull %out, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !3146 {
entry:
    #dbg_value(ptr %in, !3149, !DIExpression(), !3150)
    #dbg_value(ptr %out, !3151, !DIExpression(), !3150)
    #dbg_value(i32 %ncols, !3152, !DIExpression(), !3150)
    #dbg_value(ptr %out, !3153, !DIExpression(), !3150)
    #dbg_value(i32 0, !3154, !DIExpression(), !3150)
  br label %for.cond, !dbg !3155

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3157
    #dbg_value(i32 %i.0, !3154, !DIExpression(), !3150)
  %add = or disjoint i32 %i.0, 1, !dbg !3158
  %cmp = icmp slt i32 %add, %ncols, !dbg !3160
  br i1 %cmp, label %for.body, label %for.end, !dbg !3161

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3162
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3162
  %add2 = or disjoint i32 %i.0, 1, !dbg !3164
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3165
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3165
  %shl5 = shl i8 %1, 4, !dbg !3166
  %or = or i8 %shl5, %0, !dbg !3167
  %div = lshr exact i32 %i.0, 1, !dbg !3168
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3169
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3170
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3171
    #dbg_value(i32 %add8, !3154, !DIExpression(), !3150)
  br label %for.cond, !dbg !3172, !llvm.loop !3173

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3157
  %2 = and i32 %ncols, -2147483647, !dbg !3175
  %cmp9 = icmp eq i32 %2, 1, !dbg !3175
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3175

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3177
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3177
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3179
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3180
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3181
  br label %if.end, !dbg !3182

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3183
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3184 {
entry:
    #dbg_value(i32 %a, !3187, !DIExpression(), !3188)
    #dbg_value(i32 %b, !3189, !DIExpression(), !3188)
  %xor = xor i32 %a, %b, !dbg !3190
  %0 = icmp sgt i32 %xor, 0, !dbg !3191
  %shr = sext i1 %0 to i64, !dbg !3191
  %1 = load volatile i64, ptr @pqmayo_MAYO_5_ref_uint64_t_blocker, align 8, !dbg !3192
  %xor1 = xor i64 %1, %shr, !dbg !3193
  ret i64 %xor1, !dbg !3194
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3195 {
entry:
    #dbg_value(i32 %a, !3196, !DIExpression(), !3197)
    #dbg_value(i32 %b, !3198, !DIExpression(), !3197)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3199, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3197)
  %0 = icmp slt i32 %b, %a, !dbg !3200
  %shr = sext i1 %0 to i64, !dbg !3200
  %1 = load volatile i64, ptr @pqmayo_MAYO_5_ref_uint64_t_blocker, align 8, !dbg !3201
  %xor = xor i64 %1, %shr, !dbg !3202
  ret i64 %xor, !dbg !3203
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef nonnull %in, i32 noundef range(i32 -2147483648, 2147483647) %index) unnamed_addr #0 !dbg !3204 {
entry:
    #dbg_value(ptr %in, !3207, !DIExpression(), !3208)
    #dbg_value(i32 %index, !3209, !DIExpression(), !3208)
  %div = sdiv i32 %index, 16, !dbg !3210
    #dbg_value(i32 %div, !3211, !DIExpression(), !3208)
  %rem = srem i32 %index, 16, !dbg !3212
    #dbg_value(i32 %rem, !3213, !DIExpression(), !3208)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3214
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3214
  %mul = shl nsw i32 %rem, 2, !dbg !3215
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3216
  %shr = lshr i64 %0, %sh_prom, !dbg !3216
  %1 = trunc i64 %shr to i8, !dbg !3217
  %conv = and i8 %1, 15, !dbg !3217
  ret i8 %conv, !dbg !3218
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext range(i8 0, 16) %a) unnamed_addr #0 !dbg !3219 {
entry:
    #dbg_value(i8 %a, !3222, !DIExpression(), !3223)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #4, !dbg !3224
    #dbg_value(i8 %call, !3225, !DIExpression(), !3223)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #4, !dbg !3226
    #dbg_value(i8 %call1, !3227, !DIExpression(), !3223)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #4, !dbg !3228
    #dbg_value(i8 %call2, !3229, !DIExpression(), !3223)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #4, !dbg !3230
    #dbg_value(i8 %call3, !3231, !DIExpression(), !3223)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #4, !dbg !3232
    #dbg_value(i8 %call4, !3233, !DIExpression(), !3223)
  ret i8 %call4, !dbg !3234
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, i8 noundef zeroext range(i8 0, 16) %a, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !3235 {
entry:
    #dbg_value(i32 %legs, !3238, !DIExpression(), !3239)
    #dbg_value(ptr %in, !3240, !DIExpression(), !3239)
    #dbg_value(i8 %a, !3241, !DIExpression(), !3239)
    #dbg_value(ptr %acc, !3242, !DIExpression(), !3239)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #4, !dbg !3243
    #dbg_value(i32 %call, !3244, !DIExpression(), !3239)
    #dbg_value(i64 1229782938247303441, !3245, !DIExpression(), !3239)
    #dbg_value(i32 0, !3246, !DIExpression(), !3248)
  %0 = icmp sgt i32 %legs, 0, !dbg !3249
  %1 = select i1 %0, i32 %legs, i32 0, !dbg !3249
  br label %for.cond, !dbg !3249

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3250
    #dbg_value(i32 %i.0, !3246, !DIExpression(), !3248)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !3251
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3253

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3254
  %2 = load i64, ptr %arrayidx, align 8, !dbg !3254
  %and = and i64 %2, 1229782938247303441, !dbg !3256
  %and1 = and i32 %call, 255, !dbg !3257
  %conv = zext nneg i32 %and1 to i64, !dbg !3258
  %mul = mul i64 %and, %conv, !dbg !3259
  %shr = lshr i64 %2, 1, !dbg !3260
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3261
  %shr4 = lshr i32 %call, 8, !dbg !3262
  %and5 = and i32 %shr4, 15, !dbg !3263
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3264
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3265
  %xor = xor i64 %mul, %mul7, !dbg !3266
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3267
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !3267
  %shr9 = lshr i64 %3, 2, !dbg !3268
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3269
  %shr11 = lshr i32 %call, 16, !dbg !3270
  %and12 = and i32 %shr11, 15, !dbg !3271
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3272
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3273
  %xor15 = xor i64 %xor, %mul14, !dbg !3274
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3275
  %4 = load i64, ptr %arrayidx16, align 8, !dbg !3275
  %shr17 = lshr i64 %4, 3, !dbg !3276
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3277
  %shr19 = lshr i32 %call, 24, !dbg !3278
  %and20 = and i32 %shr19, 15, !dbg !3279
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3280
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3281
  %xor23 = xor i64 %xor15, %mul22, !dbg !3282
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3283
  %5 = load i64, ptr %arrayidx24, align 8, !dbg !3284
  %xor25 = xor i64 %5, %xor23, !dbg !3284
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3284
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3285
    #dbg_value(i32 %inc, !3246, !DIExpression(), !3248)
  br label %for.cond, !dbg !3286, !llvm.loop !3287

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3289
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !3290 {
entry:
    #dbg_value(i32 %legs, !3293, !DIExpression(), !3294)
    #dbg_value(ptr %in, !3295, !DIExpression(), !3294)
    #dbg_value(ptr %out, !3296, !DIExpression(), !3294)
    #dbg_value(ptr %in, !3297, !DIExpression(), !3294)
    #dbg_value(i32 0, !3298, !DIExpression(), !3300)
  br label %for.cond, !dbg !3301

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3302
    #dbg_value(i32 %i.0, !3298, !DIExpression(), !3300)
  %mul = shl nsw i32 %legs, 4, !dbg !3303
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3305
  br i1 %cmp, label %for.body, label %for.end, !dbg !3306

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3307
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3309
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3309
  %1 = and i8 %0, 15, !dbg !3310
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3311
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3312
  %div3 = lshr exact i32 %i.0, 1, !dbg !3313
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3314
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3314
  %3 = lshr i8 %2, 4, !dbg !3315
  %add = or disjoint i32 %i.0, 1, !dbg !3316
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3317
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3318
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3319
    #dbg_value(i32 %add8, !3298, !DIExpression(), !3300)
  br label %for.cond, !dbg !3320, !llvm.loop !3321

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3323
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, -2147483648) i32 @mul_table.22(i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3324 {
entry:
    #dbg_value(i8 %b, !3325, !DIExpression(), !3326)
  %conv = zext nneg i8 %b to i32, !dbg !3327
  %mul = mul nuw nsw i32 %conv, 134480385, !dbg !3328
    #dbg_value(i32 %mul, !3329, !DIExpression(), !3326)
    #dbg_value(i32 -252645136, !3330, !DIExpression(), !3326)
  %and = and i32 %mul, 1894838512, !dbg !3331
    #dbg_value(i32 %and, !3332, !DIExpression(), !3326)
  %shr = lshr exact i32 %and, 4, !dbg !3333
  %shr1 = lshr exact i32 %and, 3, !dbg !3334
  %0 = xor i32 %shr, %shr1, !dbg !3335
  %xor2 = xor i32 %0, %mul, !dbg !3335
  ret i32 %xor2, !dbg !3336
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3337 {
entry:
    #dbg_value(i8 %a, !3338, !DIExpression(), !3339)
    #dbg_value(i8 %b, !3340, !DIExpression(), !3339)
  %0 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !3341
  %xor1 = xor i8 %a, %0, !dbg !3342
    #dbg_value(i8 %xor1, !3338, !DIExpression(), !3339)
  %1 = trunc i8 %xor1 to i1, !dbg !3343
    #dbg_value(i8 poison, !3344, !DIExpression(), !3339)
  %2 = and i8 %xor1, 2, !dbg !3345
  %mul9 = mul i8 %2, %b, !dbg !3346
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3343
  %xor11 = xor i8 %conv10, %mul9, !dbg !3347
    #dbg_value(i8 %xor11, !3344, !DIExpression(), !3339)
  %3 = and i8 %xor1, 4, !dbg !3348
  %mul16 = mul i8 %3, %b, !dbg !3349
  %xor18 = xor i8 %mul16, %xor11, !dbg !3350
    #dbg_value(i8 %xor18, !3344, !DIExpression(), !3339)
  %4 = and i8 %xor1, 8, !dbg !3351
  %mul23 = mul i8 %4, %b, !dbg !3352
  %xor25 = xor i8 %mul23, %xor18, !dbg !3353
    #dbg_value(i8 %xor25, !3344, !DIExpression(), !3339)
    #dbg_value(i8 %xor25, !3354, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3339)
  %5 = lshr i8 %xor25, 4, !dbg !3355
  %6 = lshr i8 %xor25, 3, !dbg !3356
  %7 = and i8 %6, 14, !dbg !3356
  %8 = xor i8 %5, %7, !dbg !3357
  %xor25.masked = and i8 %xor25, 15, !dbg !3358
  %9 = xor i8 %8, %xor25.masked, !dbg !3358
    #dbg_value(i8 %9, !3359, !DIExpression(), !3339)
  ret i8 %9, !dbg !3360
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef range(i32 -2147483647, -2147483648) %n, i32 noundef %m) unnamed_addr #0 !dbg !3361 {
entry:
    #dbg_value(ptr %a, !3362, !DIExpression(), !3363)
    #dbg_value(ptr %b, !3364, !DIExpression(), !3363)
    #dbg_value(i32 %n, !3365, !DIExpression(), !3363)
    #dbg_value(i32 1, !3366, !DIExpression(), !3363)
    #dbg_value(i8 0, !3367, !DIExpression(), !3363)
    #dbg_value(i32 0, !3368, !DIExpression(), !3370)
  %0 = icmp sgt i32 %n, 0, !dbg !3371
  %1 = select i1 %0, i32 %n, i32 0, !dbg !3371
  br label %for.cond, !dbg !3371

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3363
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3372
    #dbg_value(i32 %i.0, !3368, !DIExpression(), !3370)
    #dbg_value(ptr %b.addr.0, !3364, !DIExpression(), !3363)
    #dbg_value(i8 %ret.0, !3367, !DIExpression(), !3363)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !3373
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3375

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3376
  %2 = load i8, ptr %arrayidx, align 1, !dbg !3376
  %3 = load i8, ptr %b.addr.0, align 1, !dbg !3378
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %2, i8 noundef zeroext %3) #4, !dbg !3379
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #4, !dbg !3380
    #dbg_value(i8 %call1, !3367, !DIExpression(), !3363)
  %inc = add nuw i32 %i.0, 1, !dbg !3381
    #dbg_value(i32 %inc, !3368, !DIExpression(), !3370)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !3382
    #dbg_value(ptr %add.ptr, !3364, !DIExpression(), !3363)
  br label %for.cond, !dbg !3383, !llvm.loop !3384

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3363
  ret i8 %ret.0.lcssa, !dbg !3386
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @add_f.25(i8 noundef zeroext range(i8 0, 16) %a, i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3387 {
entry:
    #dbg_value(i8 %a, !3388, !DIExpression(), !3389)
    #dbg_value(i8 %b, !3390, !DIExpression(), !3389)
  %xor1 = xor i8 %a, %b, !dbg !3391
  ret i8 %xor1, !dbg !3392
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !3393 {
entry:
    #dbg_value(ptr %state, !3401, !DIExpression(), !3402)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !3403
  store ptr %call, ptr %state, align 4, !dbg !3404
  %cmp = icmp eq ptr %call, null, !dbg !3405
  br i1 %cmp, label %if.then, label %if.end, !dbg !3405

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !3407
  br label %if.end, !dbg !3409

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !3410
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !3411
  ret void, !dbg !3412
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i32 noundef) local_unnamed_addr #3

declare dso_local void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_init(ptr noundef %s_inc) unnamed_addr #0 !dbg !3413 {
entry:
    #dbg_value(ptr %s_inc, !3414, !DIExpression(), !3415)
    #dbg_value(i32 0, !3416, !DIExpression(), !3415)
  br label %for.cond, !dbg !3417

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3419
    #dbg_value(i32 %i.0, !3416, !DIExpression(), !3415)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !3420
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3422

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s_inc, i32 %i.0, !dbg !3423
  store i64 0, ptr %arrayidx, align 8, !dbg !3425
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3426
    #dbg_value(i32 %inc, !3416, !DIExpression(), !3415)
  br label %for.cond, !dbg !3427, !llvm.loop !3428

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3430
  store i64 0, ptr %arrayidx1, align 8, !dbg !3431
  ret void, !dbg !3432
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3433 {
entry:
    #dbg_value(ptr %state, !3436, !DIExpression(), !3437)
    #dbg_value(ptr %input, !3438, !DIExpression(), !3437)
    #dbg_value(i32 %inlen, !3439, !DIExpression(), !3437)
  %0 = load ptr, ptr %state, align 4, !dbg !3440
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen) #4, !dbg !3441
  ret void, !dbg !3442
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_absorb(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen) unnamed_addr #0 !dbg !3443 {
entry:
    #dbg_value(ptr %s_inc, !3446, !DIExpression(), !3447)
    #dbg_value(i32 %r, !3448, !DIExpression(), !3447)
    #dbg_value(ptr %m, !3449, !DIExpression(), !3447)
    #dbg_value(i32 %mlen, !3450, !DIExpression(), !3447)
  br label %while.cond, !dbg !3451

while.cond:                                       ; preds = %for.end, %entry
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr, %for.end ]
  %mlen.addr.0 = phi i32 [ %mlen, %entry ], [ %sub20, %for.end ]
    #dbg_value(i32 %mlen.addr.0, !3450, !DIExpression(), !3447)
    #dbg_value(ptr %m.addr.0, !3449, !DIExpression(), !3447)
  %conv = zext i32 %mlen.addr.0 to i64, !dbg !3452
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3453
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3453
  %add = add i64 %0, %conv, !dbg !3454
  %conv1 = zext nneg i32 %r to i64, !dbg !3455
  %cmp.not = icmp ult i64 %add, %conv1, !dbg !3456
  br i1 %cmp.not, label %for.cond25.preheader, label %for.cond.preheader, !dbg !3451

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !3457

for.cond25.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa1 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  %mlen.addr.0.lcssa = phi i32 [ %mlen.addr.0, %while.cond ]
  br label %for.cond25, !dbg !3460

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !3462
    #dbg_value(i32 %i.0, !3463, !DIExpression(), !3447)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3464
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !3464
  %conv4 = trunc i64 %1 to i32, !dbg !3466
  %sub = sub i32 %r, %conv4, !dbg !3467
  %cmp5 = icmp ult i32 %i.0, %sub, !dbg !3468
  br i1 %cmp5, label %for.body, label %for.end, !dbg !3457

for.body:                                         ; preds = %for.cond
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %i.0, !dbg !3469
  %2 = load i8, ptr %arrayidx7, align 1, !dbg !3469
  %conv8 = zext i8 %2 to i64, !dbg !3471
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3472
  %3 = load i64, ptr %arrayidx9, align 8, !dbg !3472
  %conv10 = zext i32 %i.0 to i64, !dbg !3473
  %add11 = add i64 %3, %conv10, !dbg !3474
  %and = shl i64 %add11, 3, !dbg !3475
  %mul = and i64 %and, 56, !dbg !3475
  %shl = shl nuw i64 %conv8, %mul, !dbg !3476
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3477
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !3477
  %conv13 = zext i32 %i.0 to i64, !dbg !3478
  %add14 = add i64 %4, %conv13, !dbg !3479
  %shr = lshr i64 %add14, 3, !dbg !3480
  %idxprom = trunc i64 %shr to i32, !dbg !3481
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3481
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !3482
  %xor = xor i64 %5, %shl, !dbg !3482
  store i64 %xor, ptr %arrayidx15, align 8, !dbg !3482
  %inc = add nuw i32 %i.0, 1, !dbg !3483
    #dbg_value(i32 %inc, !3463, !DIExpression(), !3447)
  br label %for.cond, !dbg !3484, !llvm.loop !3485

for.end:                                          ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3487
  %6 = load i64, ptr %arrayidx17, align 8, !dbg !3487
  %7 = trunc i64 %6 to i32, !dbg !3488
  %conv19.neg = sub i32 %7, %r, !dbg !3488
  %sub20 = add i32 %conv19.neg, %mlen.addr.0, !dbg !3489
    #dbg_value(i32 %sub20, !3450, !DIExpression(), !3447)
  %8 = trunc i64 %6 to i32, !dbg !3490
  %idx.ext = sub i32 %r, %8, !dbg !3490
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %idx.ext, !dbg !3490
    #dbg_value(ptr %add.ptr, !3449, !DIExpression(), !3447)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3491
  store i64 0, ptr %arrayidx24, align 8, !dbg !3492
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #4, !dbg !3493
  br label %while.cond, !dbg !3451, !llvm.loop !3494

for.cond25:                                       ; preds = %for.cond25.preheader, %for.body28
  %i.1 = phi i32 [ %inc45, %for.body28 ], [ 0, %for.cond25.preheader ], !dbg !3496
    #dbg_value(i32 %i.1, !3463, !DIExpression(), !3447)
  %exitcond = icmp ne i32 %i.1, %mlen.addr.0.lcssa1, !dbg !3497
  br i1 %exitcond, label %for.body28, label %for.end46, !dbg !3460

for.body28:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.1, !dbg !3499
  %9 = load i8, ptr %arrayidx29, align 1, !dbg !3499
  %conv30 = zext i8 %9 to i64, !dbg !3501
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3502
  %10 = load i64, ptr %arrayidx31, align 8, !dbg !3502
  %conv32 = zext i32 %i.1 to i64, !dbg !3503
  %add33 = add i64 %10, %conv32, !dbg !3504
  %and34 = shl i64 %add33, 3, !dbg !3505
  %mul35 = and i64 %and34, 56, !dbg !3505
  %shl36 = shl nuw i64 %conv30, %mul35, !dbg !3506
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3507
  %11 = load i64, ptr %arrayidx37, align 8, !dbg !3507
  %conv38 = zext i32 %i.1 to i64, !dbg !3508
  %add39 = add i64 %11, %conv38, !dbg !3509
  %shr40 = lshr i64 %add39, 3, !dbg !3510
  %idxprom41 = trunc i64 %shr40 to i32, !dbg !3511
  %arrayidx42 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom41, !dbg !3511
  %12 = load i64, ptr %arrayidx42, align 8, !dbg !3512
  %xor43 = xor i64 %12, %shl36, !dbg !3512
  store i64 %xor43, ptr %arrayidx42, align 8, !dbg !3512
  %inc45 = add i32 %i.1, 1, !dbg !3513
    #dbg_value(i32 %inc45, !3463, !DIExpression(), !3447)
  br label %for.cond25, !dbg !3514, !llvm.loop !3515

for.end46:                                        ; preds = %for.cond25
  %conv47 = zext i32 %mlen.addr.0.lcssa to i64, !dbg !3517
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3518
  %13 = load i64, ptr %arrayidx48, align 8, !dbg !3519
  %add49 = add i64 %13, %conv47, !dbg !3519
  store i64 %add49, ptr %arrayidx48, align 8, !dbg !3519
  ret void, !dbg !3520
}

; Function Attrs: nounwind
define internal fastcc void @KeccakF1600_StatePermute(ptr noundef %state) unnamed_addr #0 !dbg !3521 {
entry:
    #dbg_value(ptr %state, !3522, !DIExpression(), !3523)
  %0 = load i64, ptr %state, align 8, !dbg !3524
    #dbg_value(i64 %0, !3525, !DIExpression(), !3523)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3526
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !3526
    #dbg_value(i64 %1, !3527, !DIExpression(), !3523)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3528
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !3528
    #dbg_value(i64 %2, !3529, !DIExpression(), !3523)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3530
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !3530
    #dbg_value(i64 %3, !3531, !DIExpression(), !3523)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3532
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !3532
    #dbg_value(i64 %4, !3533, !DIExpression(), !3523)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3534
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !3534
    #dbg_value(i64 %5, !3535, !DIExpression(), !3523)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3536
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !3536
    #dbg_value(i64 %6, !3537, !DIExpression(), !3523)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3538
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !3538
    #dbg_value(i64 %7, !3539, !DIExpression(), !3523)
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3540
  %8 = load i64, ptr %arrayidx8, align 8, !dbg !3540
    #dbg_value(i64 %8, !3541, !DIExpression(), !3523)
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3542
  %9 = load i64, ptr %arrayidx9, align 8, !dbg !3542
    #dbg_value(i64 %9, !3543, !DIExpression(), !3523)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3544
  %10 = load i64, ptr %arrayidx10, align 8, !dbg !3544
    #dbg_value(i64 %10, !3545, !DIExpression(), !3523)
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3546
  %11 = load i64, ptr %arrayidx11, align 8, !dbg !3546
    #dbg_value(i64 %11, !3547, !DIExpression(), !3523)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3548
  %12 = load i64, ptr %arrayidx12, align 8, !dbg !3548
    #dbg_value(i64 %12, !3549, !DIExpression(), !3523)
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3550
  %13 = load i64, ptr %arrayidx13, align 8, !dbg !3550
    #dbg_value(i64 %13, !3551, !DIExpression(), !3523)
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3552
  %14 = load i64, ptr %arrayidx14, align 8, !dbg !3552
    #dbg_value(i64 %14, !3553, !DIExpression(), !3523)
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3554
  %15 = load i64, ptr %arrayidx15, align 8, !dbg !3554
    #dbg_value(i64 %15, !3555, !DIExpression(), !3523)
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3556
  %16 = load i64, ptr %arrayidx16, align 8, !dbg !3556
    #dbg_value(i64 %16, !3557, !DIExpression(), !3523)
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3558
  %17 = load i64, ptr %arrayidx17, align 8, !dbg !3558
    #dbg_value(i64 %17, !3559, !DIExpression(), !3523)
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3560
  %18 = load i64, ptr %arrayidx18, align 8, !dbg !3560
    #dbg_value(i64 %18, !3561, !DIExpression(), !3523)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3562
  %19 = load i64, ptr %arrayidx19, align 8, !dbg !3562
    #dbg_value(i64 %19, !3563, !DIExpression(), !3523)
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3564
  %20 = load i64, ptr %arrayidx20, align 8, !dbg !3564
    #dbg_value(i64 %20, !3565, !DIExpression(), !3523)
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3566
  %21 = load i64, ptr %arrayidx21, align 8, !dbg !3566
    #dbg_value(i64 %21, !3567, !DIExpression(), !3523)
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3568
  %22 = load i64, ptr %arrayidx22, align 8, !dbg !3568
    #dbg_value(i64 %22, !3569, !DIExpression(), !3523)
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3570
  %23 = load i64, ptr %arrayidx23, align 8, !dbg !3570
    #dbg_value(i64 %23, !3571, !DIExpression(), !3523)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3572
  %24 = load i64, ptr %arrayidx24, align 8, !dbg !3572
    #dbg_value(i64 %24, !3573, !DIExpression(), !3523)
    #dbg_value(i32 0, !3574, !DIExpression(), !3523)
  br label %for.cond, !dbg !3575

for.cond:                                         ; preds = %for.inc, %entry
  %Aso.0 = phi i64 [ %23, %entry ], [ %xor444, %for.inc ], !dbg !3523
  %Asi.0 = phi i64 [ %22, %entry ], [ %xor441, %for.inc ], !dbg !3523
  %Ase.0 = phi i64 [ %21, %entry ], [ %xor438, %for.inc ], !dbg !3523
  %Asa.0 = phi i64 [ %20, %entry ], [ %xor435, %for.inc ], !dbg !3523
  %Amu.0 = phi i64 [ %19, %entry ], [ %xor412, %for.inc ], !dbg !3523
  %Amo.0 = phi i64 [ %18, %entry ], [ %xor409, %for.inc ], !dbg !3523
  %Ami.0 = phi i64 [ %17, %entry ], [ %xor406, %for.inc ], !dbg !3523
  %Ame.0 = phi i64 [ %16, %entry ], [ %xor403, %for.inc ], !dbg !3523
  %Ama.0 = phi i64 [ %15, %entry ], [ %xor400, %for.inc ], !dbg !3523
  %Aku.0 = phi i64 [ %14, %entry ], [ %xor377, %for.inc ], !dbg !3523
  %Ako.0 = phi i64 [ %13, %entry ], [ %xor374, %for.inc ], !dbg !3523
  %Aki.0 = phi i64 [ %12, %entry ], [ %xor371, %for.inc ], !dbg !3523
  %Ake.0 = phi i64 [ %11, %entry ], [ %xor368, %for.inc ], !dbg !3523
  %Aka.0 = phi i64 [ %10, %entry ], [ %xor365, %for.inc ], !dbg !3523
  %Agu.0 = phi i64 [ %9, %entry ], [ %xor342, %for.inc ], !dbg !3523
  %Ago.0 = phi i64 [ %8, %entry ], [ %xor339, %for.inc ], !dbg !3523
  %Agi.0 = phi i64 [ %7, %entry ], [ %xor336, %for.inc ], !dbg !3523
  %Age.0 = phi i64 [ %6, %entry ], [ %xor333, %for.inc ], !dbg !3523
  %Aga.0 = phi i64 [ %5, %entry ], [ %xor330, %for.inc ], !dbg !3523
  %Abu.0 = phi i64 [ %4, %entry ], [ %xor307, %for.inc ], !dbg !3523
  %Abo.0 = phi i64 [ %3, %entry ], [ %xor304, %for.inc ], !dbg !3523
  %Abi.0 = phi i64 [ %2, %entry ], [ %xor301, %for.inc ], !dbg !3523
  %Abe.0 = phi i64 [ %1, %entry ], [ %xor298, %for.inc ], !dbg !3523
  %Aba.0 = phi i64 [ %0, %entry ], [ %xor295, %for.inc ], !dbg !3523
  %round.0 = phi i32 [ 0, %entry ], [ %add448, %for.inc ], !dbg !3577
  %Asu.0 = phi i64 [ %24, %entry ], [ %xor447, %for.inc ], !dbg !3523
    #dbg_value(i64 %Asu.0, !3573, !DIExpression(), !3523)
    #dbg_value(i32 %round.0, !3574, !DIExpression(), !3523)
    #dbg_value(i64 %Aba.0, !3525, !DIExpression(), !3523)
    #dbg_value(i64 %Abe.0, !3527, !DIExpression(), !3523)
    #dbg_value(i64 %Abi.0, !3529, !DIExpression(), !3523)
    #dbg_value(i64 %Abo.0, !3531, !DIExpression(), !3523)
    #dbg_value(i64 %Abu.0, !3533, !DIExpression(), !3523)
    #dbg_value(i64 %Aga.0, !3535, !DIExpression(), !3523)
    #dbg_value(i64 %Age.0, !3537, !DIExpression(), !3523)
    #dbg_value(i64 %Agi.0, !3539, !DIExpression(), !3523)
    #dbg_value(i64 %Ago.0, !3541, !DIExpression(), !3523)
    #dbg_value(i64 %Agu.0, !3543, !DIExpression(), !3523)
    #dbg_value(i64 %Aka.0, !3545, !DIExpression(), !3523)
    #dbg_value(i64 %Ake.0, !3547, !DIExpression(), !3523)
    #dbg_value(i64 %Aki.0, !3549, !DIExpression(), !3523)
    #dbg_value(i64 %Ako.0, !3551, !DIExpression(), !3523)
    #dbg_value(i64 %Aku.0, !3553, !DIExpression(), !3523)
    #dbg_value(i64 %Ama.0, !3555, !DIExpression(), !3523)
    #dbg_value(i64 %Ame.0, !3557, !DIExpression(), !3523)
    #dbg_value(i64 %Ami.0, !3559, !DIExpression(), !3523)
    #dbg_value(i64 %Amo.0, !3561, !DIExpression(), !3523)
    #dbg_value(i64 %Amu.0, !3563, !DIExpression(), !3523)
    #dbg_value(i64 %Asa.0, !3565, !DIExpression(), !3523)
    #dbg_value(i64 %Ase.0, !3567, !DIExpression(), !3523)
    #dbg_value(i64 %Asi.0, !3569, !DIExpression(), !3523)
    #dbg_value(i64 %Aso.0, !3571, !DIExpression(), !3523)
  %cmp = icmp samesign ult i32 %round.0, 24, !dbg !3578
  br i1 %cmp, label %for.inc, label %for.end, !dbg !3580

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0, i64 %Aga.0), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0, i64 %Age.0), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0, i64 %Agi.0), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0, i64 %Ago.0), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0, i64 %Agu.0), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3586, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3584, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3585, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3581, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3584, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3585, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3581, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3584, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3585, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3581, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3584, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3585, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3581, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3584, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3585, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3586, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3584, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3585, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3581, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3584, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3585, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3581, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3584, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3585, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3581, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3584, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3585, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3581, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3584, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 poison, !3585, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor32 = xor i64 %Abi.0, %Agi.0, !dbg !3616
    #dbg_value(!DIArgList(i64 %xor32, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor33 = xor i64 %xor32, %Aki.0, !dbg !3618
    #dbg_value(!DIArgList(i64 %xor33, i64 %Asi.0, i64 %Ami.0), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor34 = xor i64 %xor33, %Ami.0, !dbg !3619
    #dbg_value(!DIArgList(i64 %xor34, i64 %Asi.0), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor35 = xor i64 %xor34, %Asi.0, !dbg !3620
    #dbg_value(i64 %xor35, !3583, !DIExpression(), !3523)
  %xor40 = xor i64 %Abu.0, %Agu.0, !dbg !3621
    #dbg_value(!DIArgList(i64 %xor40, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor41 = xor i64 %xor40, %Aku.0, !dbg !3622
    #dbg_value(!DIArgList(i64 %xor41, i64 %Asu.0, i64 %Amu.0), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor42 = xor i64 %xor41, %Amu.0, !dbg !3623
    #dbg_value(!DIArgList(i64 %xor42, i64 %Asu.0), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor43 = xor i64 %xor42, %Asu.0, !dbg !3624
    #dbg_value(i64 %xor43, !3585, !DIExpression(), !3523)
  %25 = shl i64 %xor43, 1, !dbg !3625
  %26 = lshr i64 %xor43, 63, !dbg !3625
  %27 = or i64 %25, %26, !dbg !3625
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor35, i64 %27), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor35, i64 %27), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor35, i64 %27), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor35, i64 %27), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor35, i64 %27), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor35, i64 %27), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor57 = xor i64 %xor35, %27, !dbg !3626
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor57), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor57), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor57), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor57), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor57), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 %xor57, !3589, !DIExpression(), !3523)
  %xor203 = xor i64 %Ago.0, %xor57, !dbg !3627
    #dbg_value(i64 %xor203, !3541, !DIExpression(), !3523)
  %28 = shl i64 %xor203, 55, !dbg !3628
  %29 = lshr i64 %xor203, 9, !dbg !3628
  %30 = or i64 %28, %29, !dbg !3628
    #dbg_value(i64 %30, !3582, !DIExpression(), !3523)
  %xor28 = xor i64 %Abe.0, %Age.0, !dbg !3629
    #dbg_value(!DIArgList(i64 %xor28, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor29 = xor i64 %xor28, %Ake.0, !dbg !3630
    #dbg_value(!DIArgList(i64 %xor29, i64 %Ase.0, i64 %Ame.0), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor30 = xor i64 %xor29, %Ame.0, !dbg !3631
    #dbg_value(!DIArgList(i64 %xor30, i64 %Ase.0), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor31 = xor i64 %xor30, %Ase.0, !dbg !3632
    #dbg_value(i64 %xor31, !3582, !DIExpression(), !3523)
  %31 = shl i64 %xor31, 1, !dbg !3633
  %32 = lshr i64 %xor31, 63, !dbg !3633
  %33 = or i64 %31, %32, !dbg !3633
    #dbg_value(!DIArgList(i64 %xor43, i64 %33), !3586, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor43, i64 %33), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor43, i64 %33), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor43, i64 %33), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor43, i64 %33), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor45 = xor i64 %xor43, %33, !dbg !3634
    #dbg_value(i64 %xor45, !3586, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor45), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor45), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor45), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor45), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor211 = xor i64 %Ama.0, %xor45, !dbg !3635
    #dbg_value(i64 %xor211, !3555, !DIExpression(), !3523)
  %34 = shl i64 %xor211, 41, !dbg !3636
  %35 = lshr i64 %xor211, 23, !dbg !3636
  %36 = or i64 %34, %35, !dbg !3636
    #dbg_value(i64 %36, !3584, !DIExpression(), !3523)
  %xor36 = xor i64 %Abo.0, %Ago.0, !dbg !3637
    #dbg_value(!DIArgList(i64 %xor36, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor37 = xor i64 %xor36, %Ako.0, !dbg !3638
    #dbg_value(!DIArgList(i64 %xor37, i64 %Aso.0, i64 %Amo.0), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor38 = xor i64 %xor37, %Amo.0, !dbg !3639
    #dbg_value(!DIArgList(i64 %xor38, i64 %Aso.0), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor39 = xor i64 %xor38, %Aso.0, !dbg !3640
    #dbg_value(i64 %xor39, !3584, !DIExpression(), !3523)
  %xor = xor i64 %Aba.0, %Aga.0, !dbg !3641
    #dbg_value(!DIArgList(i64 %xor, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor25 = xor i64 %xor, %Aka.0, !dbg !3642
    #dbg_value(!DIArgList(i64 %xor25, i64 %Asa.0, i64 %Ama.0), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor26 = xor i64 %xor25, %Ama.0, !dbg !3643
    #dbg_value(!DIArgList(i64 %xor26, i64 %Asa.0), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor27 = xor i64 %xor26, %Asa.0, !dbg !3644
    #dbg_value(i64 %xor27, !3581, !DIExpression(), !3523)
  %37 = shl i64 %xor27, 1, !dbg !3645
  %38 = lshr i64 %xor27, 63, !dbg !3645
  %39 = or i64 %37, %38, !dbg !3645
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor39, i64 %39), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor39, i64 %39), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor39, i64 %39), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor39, i64 %39), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor39, i64 %39), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor39, i64 %39), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor61 = xor i64 %xor39, %39, !dbg !3646
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor61), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor61), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor61), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor61), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 %xor61, !3590, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor61), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor207 = xor i64 %Aku.0, %xor61, !dbg !3647
    #dbg_value(i64 %xor207, !3553, !DIExpression(), !3523)
  %40 = shl i64 %xor207, 39, !dbg !3648
  %41 = lshr i64 %xor207, 25, !dbg !3648
  %42 = or i64 %40, %41, !dbg !3648
    #dbg_value(i64 %42, !3583, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %42), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not222 = xor i64 %42, -1, !dbg !3649
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %not222), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and223 = and i64 %36, %not222, !dbg !3650
    #dbg_value(!DIArgList(i64 %30, i64 %and223), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor224 = xor i64 %30, %and223, !dbg !3651
    #dbg_value(i64 %xor224, !3612, !DIExpression(), !3523)
  %43 = shl i64 %xor39, 1, !dbg !3652
  %44 = lshr i64 %xor39, 63, !dbg !3652
  %45 = or i64 %43, %44, !dbg !3652
    #dbg_value(!DIArgList(i64 %xor31, i64 %45), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor31, i64 %45), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor31, i64 %45), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor31, i64 %45), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor31, i64 %45), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor31, i64 %45), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor53 = xor i64 %xor31, %45, !dbg !3653
    #dbg_value(i64 %xor53, !3588, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor53), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor53), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor53), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor53), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor53), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor67 = xor i64 %Aki.0, %xor53, !dbg !3654
    #dbg_value(i64 %xor67, !3549, !DIExpression(), !3523)
  %46 = shl i64 %xor67, 43, !dbg !3655
  %47 = lshr i64 %xor67, 21, !dbg !3655
  %48 = or i64 %46, %47, !dbg !3655
    #dbg_value(i64 %48, !3583, !DIExpression(), !3523)
  %49 = shl i64 %xor35, 1, !dbg !3656
  %50 = lshr i64 %xor35, 63, !dbg !3656
  %51 = or i64 %49, %50, !dbg !3656
    #dbg_value(!DIArgList(i64 %xor27, i64 %51), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor27, i64 %51), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor27, i64 %51), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor27, i64 %51), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor27, i64 %51), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor27, i64 %51), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor49 = xor i64 %xor27, %51, !dbg !3657
    #dbg_value(i64 %xor49, !3587, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor49), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor49), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor49), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor49), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor49), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor63 = xor i64 %Age.0, %xor49, !dbg !3658
    #dbg_value(i64 %xor63, !3537, !DIExpression(), !3523)
  %52 = shl i64 %xor63, 44, !dbg !3659
  %53 = lshr i64 %xor63, 20, !dbg !3659
  %54 = or i64 %52, %53, !dbg !3659
    #dbg_value(i64 %54, !3582, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %54), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not = xor i64 %54, -1, !dbg !3660
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %not), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and = and i64 %48, %not, !dbg !3661
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %and, i64 %xor45), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %arrayidx80 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %round.0, !dbg !3662
  %55 = load i64, ptr %arrayidx80, align 8, !dbg !3662
    #dbg_value(!DIArgList(i64 %and, i64 %Aba.0, i64 %xor45, i64 %55), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %56 = xor i64 %and, %55, !dbg !3663
    #dbg_value(!DIArgList(i64 %56, i64 %Aba.0, i64 %xor45), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor62 = xor i64 %Aba.0, %xor45, !dbg !3664
    #dbg_value(i64 %xor62, !3525, !DIExpression(), !3523)
    #dbg_value(i64 %xor62, !3581, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %56, i64 %xor62), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor81 = xor i64 %56, %xor62, !dbg !3663
    #dbg_value(i64 %xor81, !3591, !DIExpression(), !3523)
  %xor94 = xor i64 %Abo.0, %xor57, !dbg !3665
    #dbg_value(i64 %xor94, !3531, !DIExpression(), !3523)
  %57 = shl i64 %xor94, 28, !dbg !3666
  %58 = lshr i64 %xor94, 36, !dbg !3666
  %59 = or i64 %57, %58, !dbg !3666
    #dbg_value(i64 %59, !3581, !DIExpression(), !3523)
  %xor102 = xor i64 %Aka.0, %xor45, !dbg !3667
    #dbg_value(i64 %xor102, !3545, !DIExpression(), !3523)
  %60 = shl i64 %xor102, 3, !dbg !3668
  %61 = lshr i64 %xor102, 61, !dbg !3668
  %62 = or i64 %60, %61, !dbg !3668
    #dbg_value(i64 %62, !3583, !DIExpression(), !3523)
  %xor98 = xor i64 %Agu.0, %xor61, !dbg !3669
    #dbg_value(i64 %xor98, !3543, !DIExpression(), !3523)
  %63 = shl i64 %xor98, 20, !dbg !3670
  %64 = lshr i64 %xor98, 44, !dbg !3670
  %65 = or i64 %63, %64, !dbg !3670
    #dbg_value(i64 %65, !3582, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %65), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not114 = xor i64 %65, -1, !dbg !3671
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %not114), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and115 = and i64 %62, %not114, !dbg !3672
    #dbg_value(!DIArgList(i64 %59, i64 %and115), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor116 = xor i64 %59, %and115, !dbg !3673
    #dbg_value(i64 %xor116, !3596, !DIExpression(), !3523)
  %xor234 = xor i64 %xor81, %xor116, !dbg !3674
  %xor129 = xor i64 %Abe.0, %xor49, !dbg !3675
    #dbg_value(i64 %xor129, !3527, !DIExpression(), !3523)
  %66 = shl i64 %xor129, 1, !dbg !3676
  %67 = lshr i64 %xor129, 63, !dbg !3676
  %68 = or i64 %66, %67, !dbg !3676
    #dbg_value(i64 %68, !3581, !DIExpression(), !3523)
  %xor137 = xor i64 %Ako.0, %xor57, !dbg !3677
    #dbg_value(i64 %xor137, !3551, !DIExpression(), !3523)
  %69 = shl i64 %xor137, 25, !dbg !3678
  %70 = lshr i64 %xor137, 39, !dbg !3678
  %71 = or i64 %69, %70, !dbg !3678
    #dbg_value(i64 %71, !3583, !DIExpression(), !3523)
  %xor133 = xor i64 %Agi.0, %xor53, !dbg !3679
    #dbg_value(i64 %xor133, !3539, !DIExpression(), !3523)
  %72 = shl i64 %xor133, 6, !dbg !3680
  %73 = lshr i64 %xor133, 58, !dbg !3680
  %74 = or i64 %72, %73, !dbg !3680
    #dbg_value(i64 %74, !3582, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %74), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not149 = xor i64 %74, -1, !dbg !3681
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %not149), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and150 = and i64 %71, %not149, !dbg !3682
    #dbg_value(!DIArgList(i64 %68, i64 %and150), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor151 = xor i64 %68, %and150, !dbg !3683
    #dbg_value(i64 %xor151, !3601, !DIExpression(), !3523)
  %xor235 = xor i64 %xor234, %xor151, !dbg !3684
  %xor164 = xor i64 %Abu.0, %xor61, !dbg !3685
    #dbg_value(i64 %xor164, !3533, !DIExpression(), !3523)
  %75 = shl i64 %xor164, 27, !dbg !3686
  %76 = lshr i64 %xor164, 37, !dbg !3686
  %77 = or i64 %75, %76, !dbg !3686
    #dbg_value(i64 %77, !3581, !DIExpression(), !3523)
  %xor172 = xor i64 %Ake.0, %xor49, !dbg !3687
    #dbg_value(i64 %xor172, !3547, !DIExpression(), !3523)
  %78 = shl i64 %xor172, 10, !dbg !3688
  %79 = lshr i64 %xor172, 54, !dbg !3688
  %80 = or i64 %78, %79, !dbg !3688
    #dbg_value(i64 %80, !3583, !DIExpression(), !3523)
  %xor168 = xor i64 %Aga.0, %xor45, !dbg !3689
    #dbg_value(i64 %xor168, !3535, !DIExpression(), !3523)
  %81 = shl i64 %xor168, 36, !dbg !3690
  %82 = lshr i64 %xor168, 28, !dbg !3690
  %83 = or i64 %81, %82, !dbg !3690
    #dbg_value(i64 %83, !3582, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %83), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not184 = xor i64 %83, -1, !dbg !3691
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %not184), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and185 = and i64 %80, %not184, !dbg !3692
    #dbg_value(!DIArgList(i64 %77, i64 %and185), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor186 = xor i64 %77, %and185, !dbg !3693
    #dbg_value(i64 %xor186, !3606, !DIExpression(), !3523)
  %xor236 = xor i64 %xor235, %xor186, !dbg !3694
  %xor199 = xor i64 %Abi.0, %xor53, !dbg !3695
    #dbg_value(i64 %xor199, !3529, !DIExpression(), !3523)
  %84 = shl i64 %xor199, 62, !dbg !3696
  %85 = lshr i64 %xor199, 2, !dbg !3696
  %86 = or i64 %84, %85, !dbg !3696
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %30), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %30), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %not219 = xor i64 %30, -1, !dbg !3697
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %not219), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %not219), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %and220 = and i64 %42, %not219, !dbg !3698
    #dbg_value(!DIArgList(i64 %86, i64 %and220), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %and220), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor221 = xor i64 %86, %and220, !dbg !3699
    #dbg_value(i64 %xor221, !3611, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor221), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor237 = xor i64 %xor236, %xor221, !dbg !3700
    #dbg_value(i64 %xor237, !3581, !DIExpression(), !3523)
  %xor75 = xor i64 %Asu.0, %xor61, !dbg !3701
    #dbg_value(i64 %xor75, !3573, !DIExpression(), !3523)
  %87 = shl i64 %xor75, 14, !dbg !3702
  %88 = lshr i64 %xor75, 50, !dbg !3702
  %89 = or i64 %87, %88, !dbg !3702
    #dbg_value(i64 %89, !3585, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %xor62), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor71 = xor i64 %Amo.0, %xor57, !dbg !3703
    #dbg_value(i64 %xor71, !3561, !DIExpression(), !3523)
  %90 = shl i64 %xor71, 21, !dbg !3704
  %91 = lshr i64 %xor71, 43, !dbg !3704
  %92 = or i64 %90, %91, !dbg !3704
    #dbg_value(i64 %92, !3584, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %92), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %54, i64 %92, i64 %48), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %92, i64 %xor62, i64 %89), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not85 = xor i64 %92, -1, !dbg !3705
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %not85), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and86 = and i64 %89, %not85, !dbg !3706
    #dbg_value(!DIArgList(i64 %48, i64 %and86), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor87 = xor i64 %48, %and86, !dbg !3707
    #dbg_value(i64 %xor87, !3593, !DIExpression(), !3523)
  %xor110 = xor i64 %Asi.0, %xor53, !dbg !3708
    #dbg_value(i64 %xor110, !3569, !DIExpression(), !3523)
  %93 = shl i64 %xor110, 61, !dbg !3709
  %94 = lshr i64 %xor110, 3, !dbg !3709
  %95 = or i64 %93, %94, !dbg !3709
    #dbg_value(i64 %95, !3585, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %59), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor106 = xor i64 %Ame.0, %xor49, !dbg !3710
    #dbg_value(i64 %xor106, !3557, !DIExpression(), !3523)
  %96 = shl i64 %xor106, 45, !dbg !3711
  %97 = lshr i64 %xor106, 19, !dbg !3711
  %98 = or i64 %96, %97, !dbg !3711
    #dbg_value(i64 %98, !3584, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %98), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %95), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %65, i64 %98, i64 %62), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not120 = xor i64 %98, -1, !dbg !3712
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %not120), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and121 = and i64 %95, %not120, !dbg !3713
    #dbg_value(!DIArgList(i64 %62, i64 %and121), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor122 = xor i64 %62, %and121, !dbg !3714
    #dbg_value(i64 %xor122, !3598, !DIExpression(), !3523)
  %xor242 = xor i64 %xor87, %xor122, !dbg !3715
  %xor145 = xor i64 %Asa.0, %xor45, !dbg !3716
    #dbg_value(i64 %xor145, !3565, !DIExpression(), !3523)
  %99 = shl i64 %xor145, 18, !dbg !3717
  %100 = lshr i64 %xor145, 46, !dbg !3717
  %101 = or i64 %99, %100, !dbg !3717
    #dbg_value(i64 %101, !3585, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %68), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor141 = xor i64 %Amu.0, %xor61, !dbg !3718
    #dbg_value(i64 %xor141, !3563, !DIExpression(), !3523)
  %102 = shl i64 %xor141, 8, !dbg !3719
  %103 = lshr i64 %xor141, 56, !dbg !3719
  %104 = or i64 %102, %103, !dbg !3719
    #dbg_value(i64 %104, !3584, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %104), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %74, i64 %104, i64 %71), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %104, i64 %68, i64 %101), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not155 = xor i64 %104, -1, !dbg !3720
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %not155), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and156 = and i64 %101, %not155, !dbg !3721
    #dbg_value(!DIArgList(i64 %71, i64 %and156), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor157 = xor i64 %71, %and156, !dbg !3722
    #dbg_value(i64 %xor157, !3603, !DIExpression(), !3523)
  %xor243 = xor i64 %xor242, %xor157, !dbg !3723
  %xor180 = xor i64 %Aso.0, %xor57, !dbg !3724
    #dbg_value(i64 %xor180, !3571, !DIExpression(), !3523)
  %105 = shl i64 %xor180, 56, !dbg !3725
  %106 = lshr i64 %xor180, 8, !dbg !3725
  %107 = or i64 %105, %106, !dbg !3725
    #dbg_value(i64 %107, !3585, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %77), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor176 = xor i64 %Ami.0, %xor53, !dbg !3726
    #dbg_value(i64 %xor176, !3559, !DIExpression(), !3523)
  %108 = shl i64 %xor176, 15, !dbg !3727
  %109 = lshr i64 %xor176, 49, !dbg !3727
  %110 = or i64 %108, %109, !dbg !3727
    #dbg_value(i64 %110, !3584, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %110), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %83, i64 %110, i64 %80), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %110, i64 %77, i64 %107), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %48), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %not190 = xor i64 %110, -1, !dbg !3728
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %not190), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and191 = and i64 %107, %not190, !dbg !3729
    #dbg_value(!DIArgList(i64 %80, i64 %and191), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor192 = xor i64 %80, %and191, !dbg !3730
    #dbg_value(i64 %xor192, !3608, !DIExpression(), !3523)
  %xor244 = xor i64 %xor243, %xor192, !dbg !3731
  %xor215 = xor i64 %Ase.0, %xor49, !dbg !3732
    #dbg_value(i64 %xor215, !3567, !DIExpression(), !3523)
  %111 = shl i64 %xor215, 2, !dbg !3733
  %112 = lshr i64 %xor215, 62, !dbg !3733
  %113 = or i64 %111, %112, !dbg !3733
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %36), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %86), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %36, i64 %86, i64 %113), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %36), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %95), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %xor62), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %not225 = xor i64 %36, -1, !dbg !3734
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %not225), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %not225), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %and226 = and i64 %113, %not225, !dbg !3735
    #dbg_value(!DIArgList(i64 %42, i64 %and226), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %and226), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor227 = xor i64 %42, %and226, !dbg !3736
    #dbg_value(i64 %xor227, !3613, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor227), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor245 = xor i64 %xor244, %xor227, !dbg !3737
    #dbg_value(i64 %xor245, !3583, !DIExpression(), !3523)
  %114 = shl i64 %xor245, 1, !dbg !3738
  %115 = lshr i64 %xor245, 63, !dbg !3738
  %116 = or i64 %114, %115, !dbg !3738
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor237, i64 %116), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %54, i64 %xor237, i64 %92, i64 %48, i64 %116), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %65, i64 %xor237, i64 %98, i64 %62, i64 %116), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %74, i64 %xor237, i64 %104, i64 %71, i64 %116), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %83, i64 %xor237, i64 %110, i64 %80, i64 %116), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor237, i64 %116), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor261 = xor i64 %xor237, %116, !dbg !3739
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor261), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %48), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %62), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %71), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %80), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 %xor261, !3587, !DIExpression(), !3523)
  %xor429 = xor i64 %xor224, %xor261, !dbg !3740
    #dbg_value(i64 %xor429, !3612, !DIExpression(), !3523)
  %117 = shl i64 %xor429, 2, !dbg !3741
  %118 = lshr i64 %xor429, 62, !dbg !3741
  %119 = or i64 %117, %118, !dbg !3741
    #dbg_value(i64 %119, !3585, !DIExpression(), !3523)
  %not123 = xor i64 %95, -1, !dbg !3742
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %not123), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %not123), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %and124 = and i64 %59, %not123, !dbg !3743
    #dbg_value(!DIArgList(i64 %98, i64 %and124), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %and124), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor125 = xor i64 %98, %and124, !dbg !3744
    #dbg_value(i64 %xor125, !3599, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %89), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %not91 = xor i64 %xor62, -1, !dbg !3745
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %not91), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %not91), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %and92 = and i64 %54, %not91, !dbg !3746
    #dbg_value(!DIArgList(i64 %89, i64 %and92), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %and92), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor93 = xor i64 %89, %and92, !dbg !3747
    #dbg_value(i64 %xor93, !3595, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %not126 = xor i64 %59, -1, !dbg !3748
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %not126), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %not126), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %and127 = and i64 %65, %not126, !dbg !3749
    #dbg_value(!DIArgList(i64 %95, i64 %and127), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %and127), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor128 = xor i64 %95, %and127, !dbg !3750
    #dbg_value(i64 %xor128, !3600, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %xor128), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor250 = xor i64 %xor93, %xor128, !dbg !3751
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %not161 = xor i64 %68, -1, !dbg !3752
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %not161), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %not161), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %and162 = and i64 %74, %not161, !dbg !3753
    #dbg_value(!DIArgList(i64 %101, i64 %and162), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %and162), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor163 = xor i64 %101, %and162, !dbg !3754
    #dbg_value(i64 %xor163, !3605, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %xor163), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor251 = xor i64 %xor250, %xor163, !dbg !3755
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %not196 = xor i64 %77, -1, !dbg !3756
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %not196), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %not196), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %and197 = and i64 %83, %not196, !dbg !3757
    #dbg_value(!DIArgList(i64 %107, i64 %and197), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %and197), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor198 = xor i64 %107, %and197, !dbg !3758
    #dbg_value(i64 %xor198, !3610, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %xor198), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor252 = xor i64 %xor251, %xor198, !dbg !3759
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %86), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %not231 = xor i64 %86, -1, !dbg !3760
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %not231), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %not231), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %and232 = and i64 %30, %not231, !dbg !3761
    #dbg_value(!DIArgList(i64 %113, i64 %and232), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %and232), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor233 = xor i64 %113, %and232, !dbg !3762
    #dbg_value(i64 %xor233, !3615, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor233), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor253 = xor i64 %xor252, %xor233, !dbg !3763
    #dbg_value(i64 %xor253, !3585, !DIExpression(), !3523)
  %120 = shl i64 %xor253, 1, !dbg !3764
  %121 = lshr i64 %xor253, 63, !dbg !3764
  %122 = or i64 %120, %121, !dbg !3764
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor245, i64 %122), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %92, i64 %xor245, i64 %xor62, i64 %89, i64 %122), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %104, i64 %xor245, i64 %68, i64 %101, i64 %122), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %110, i64 %xor245, i64 %77, i64 %107, i64 %122), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %36, i64 %xor245, i64 %86, i64 %113, i64 %122), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor245, i64 %122), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor269 = xor i64 %xor245, %122, !dbg !3765
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor269), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %89), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %101), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %107), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %113), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 %xor269, !3589, !DIExpression(), !3523)
  %xor417 = xor i64 %xor125, %xor269, !dbg !3766
    #dbg_value(i64 %xor417, !3599, !DIExpression(), !3523)
  %123 = shl i64 %xor417, 55, !dbg !3767
  %124 = lshr i64 %xor417, 9, !dbg !3767
  %125 = or i64 %123, %124, !dbg !3767
    #dbg_value(i64 %125, !3582, !DIExpression(), !3523)
  %not82 = xor i64 %48, -1, !dbg !3768
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %not82), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %not82), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %and83 = and i64 %92, %not82, !dbg !3769
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %and83), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %and83), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor84 = xor i64 %54, %and83, !dbg !3770
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor261), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %not117 = xor i64 %62, -1, !dbg !3771
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %not117), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %not117), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %and118 = and i64 %98, %not117, !dbg !3772
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %and118), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %and118), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor119 = xor i64 %65, %and118, !dbg !3773
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %xor119), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor119, i64 %xor261), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor238 = xor i64 %xor84, %xor119, !dbg !3774
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %not152 = xor i64 %71, -1, !dbg !3775
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %not152), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %not152), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %and153 = and i64 %104, %not152, !dbg !3776
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %and153), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %and153), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor154 = xor i64 %74, %and153, !dbg !3777
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %xor154), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor154, i64 %xor261), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor239 = xor i64 %xor238, %xor154, !dbg !3778
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %80), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %not187 = xor i64 %80, -1, !dbg !3779
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %not187), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %not187), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %and188 = and i64 %110, %not187, !dbg !3780
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %and188), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %and188), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor189 = xor i64 %83, %and188, !dbg !3781
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor189), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor189, i64 %xor261), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor240 = xor i64 %xor239, %xor189, !dbg !3782
    #dbg_value(!DIArgList(i64 %xor240, i64 %xor224), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor241 = xor i64 %xor240, %xor224, !dbg !3783
    #dbg_value(i64 %xor241, !3582, !DIExpression(), !3523)
  %not88 = xor i64 %89, -1, !dbg !3784
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %not88), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %not88), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %and89 = and i64 %xor62, %not88, !dbg !3785
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %and89), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %and89), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor90 = xor i64 %92, %and89, !dbg !3786
    #dbg_value(!DIArgList(i64 %xor90, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor90, i64 %xor269), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor246 = xor i64 %xor90, %xor125, !dbg !3787
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %not158 = xor i64 %101, -1, !dbg !3788
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %not158), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %not158), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %and159 = and i64 %68, %not158, !dbg !3789
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %and159), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %and159), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor160 = xor i64 %104, %and159, !dbg !3790
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %xor160), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor160, i64 %xor269), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor247 = xor i64 %xor246, %xor160, !dbg !3791
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %not193 = xor i64 %107, -1, !dbg !3792
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %not193), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %not193), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %and194 = and i64 %77, %not193, !dbg !3793
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %and194), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %and194), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor195 = xor i64 %110, %and194, !dbg !3794
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %xor195), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor195, i64 %xor269), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor248 = xor i64 %xor247, %xor195, !dbg !3795
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %113), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %not228 = xor i64 %113, -1, !dbg !3796
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %not228), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %not228), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %and229 = and i64 %86, %not228, !dbg !3797
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %and229), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %and229), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor230 = xor i64 %36, %and229, !dbg !3798
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor230), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor230, i64 %xor269), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor249 = xor i64 %xor248, %xor230, !dbg !3799
    #dbg_value(i64 %xor249, !3584, !DIExpression(), !3523)
  %126 = shl i64 %xor249, 1, !dbg !3800
  %127 = lshr i64 %xor249, 63, !dbg !3800
  %128 = or i64 %126, %127, !dbg !3800
    #dbg_value(!DIArgList(i64 %xor241, i64 %128), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor241, i64 %128), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor241, i64 %128), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor241, i64 %128), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor241, i64 %128), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor241, i64 %128), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor265 = xor i64 %xor241, %128, !dbg !3801
    #dbg_value(i64 %xor265, !3588, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor265), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor265), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor265), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor265), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor265), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor413 = xor i64 %xor87, %xor265, !dbg !3802
    #dbg_value(i64 %xor413, !3593, !DIExpression(), !3523)
  %129 = shl i64 %xor413, 62, !dbg !3803
  %130 = lshr i64 %xor413, 2, !dbg !3803
  %131 = or i64 %129, %130, !dbg !3803
    #dbg_value(i64 %131, !3581, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %131), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not445 = xor i64 %131, -1, !dbg !3804
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %not445), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and446 = and i64 %125, %not445, !dbg !3805
    #dbg_value(!DIArgList(i64 %119, i64 %and446), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor447 = xor i64 %119, %and446, !dbg !3806
    #dbg_value(i64 %xor447, !3573, !DIExpression(), !3523)
  %132 = shl i64 %xor241, 1, !dbg !3807
  %133 = lshr i64 %xor241, 63, !dbg !3807
  %134 = or i64 %132, %133, !dbg !3807
    #dbg_value(!DIArgList(i64 %xor253, i64 %134), !3586, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor253, i64 %134), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor253, i64 %134), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor253, i64 %134), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor253, i64 %134), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor257 = xor i64 %xor253, %134, !dbg !3808
    #dbg_value(i64 %xor257, !3586, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor257), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor257), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor257), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor257), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor425 = xor i64 %xor186, %xor257, !dbg !3809
    #dbg_value(i64 %xor425, !3606, !DIExpression(), !3523)
  %135 = shl i64 %xor425, 41, !dbg !3810
  %136 = lshr i64 %xor425, 23, !dbg !3810
  %137 = or i64 %135, %136, !dbg !3810
    #dbg_value(i64 %137, !3584, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %119), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not442 = xor i64 %119, -1, !dbg !3811
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %not442), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and443 = and i64 %131, %not442, !dbg !3812
    #dbg_value(!DIArgList(i64 %137, i64 %and443), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor444 = xor i64 %137, %and443, !dbg !3813
    #dbg_value(i64 %xor444, !3571, !DIExpression(), !3523)
  %138 = shl i64 %xor237, 1, !dbg !3814
  %139 = lshr i64 %xor237, 63, !dbg !3814
  %140 = or i64 %138, %139, !dbg !3814
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor249, i64 %140), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor249, i64 %140), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor249, i64 %140), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor249, i64 %140), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor249, i64 %140), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor249, i64 %140), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor273 = xor i64 %xor249, %140, !dbg !3815
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor273), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor273), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor273), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor273), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(i64 %xor273, !3590, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor273), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor421 = xor i64 %xor163, %xor273, !dbg !3816
    #dbg_value(i64 %xor421, !3605, !DIExpression(), !3523)
  %141 = shl i64 %xor421, 39, !dbg !3817
  %142 = lshr i64 %xor421, 25, !dbg !3817
  %143 = or i64 %141, %142, !dbg !3817
    #dbg_value(i64 %143, !3583, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %137), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %143), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %125), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not439 = xor i64 %137, -1, !dbg !3818
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %not439), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and440 = and i64 %119, %not439, !dbg !3819
    #dbg_value(!DIArgList(i64 %143, i64 %and440), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor441 = xor i64 %143, %and440, !dbg !3820
    #dbg_value(i64 %xor441, !3569, !DIExpression(), !3523)
  %not436 = xor i64 %143, -1, !dbg !3821
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %not436), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and437 = and i64 %137, %not436, !dbg !3822
    #dbg_value(!DIArgList(i64 %125, i64 %and437), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor438 = xor i64 %125, %and437, !dbg !3823
    #dbg_value(i64 %xor438, !3567, !DIExpression(), !3523)
  %not433 = xor i64 %125, -1, !dbg !3824
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %not433), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and434 = and i64 %143, %not433, !dbg !3825
    #dbg_value(!DIArgList(i64 %131, i64 %and434), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor435 = xor i64 %131, %and434, !dbg !3826
    #dbg_value(i64 %xor435, !3565, !DIExpression(), !3523)
  %xor394 = xor i64 %xor230, %xor269, !dbg !3827
    #dbg_value(i64 %xor394, !3614, !DIExpression(), !3523)
  %144 = shl i64 %xor394, 56, !dbg !3828
  %145 = lshr i64 %xor394, 8, !dbg !3828
  %146 = or i64 %144, %145, !dbg !3828
    #dbg_value(i64 %146, !3585, !DIExpression(), !3523)
  %xor382 = xor i64 %xor116, %xor257, !dbg !3829
    #dbg_value(i64 %xor382, !3596, !DIExpression(), !3523)
  %147 = shl i64 %xor382, 36, !dbg !3830
  %148 = lshr i64 %xor382, 28, !dbg !3830
  %149 = or i64 %147, %148, !dbg !3830
    #dbg_value(i64 %149, !3582, !DIExpression(), !3523)
  %xor378 = xor i64 %xor93, %xor273, !dbg !3831
    #dbg_value(i64 %xor378, !3595, !DIExpression(), !3523)
  %150 = shl i64 %xor378, 27, !dbg !3832
  %151 = lshr i64 %xor378, 37, !dbg !3832
  %152 = or i64 %150, %151, !dbg !3832
    #dbg_value(i64 %152, !3581, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %152), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not410 = xor i64 %152, -1, !dbg !3833
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %not410), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and411 = and i64 %149, %not410, !dbg !3834
    #dbg_value(!DIArgList(i64 %146, i64 %and411), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor412 = xor i64 %146, %and411, !dbg !3835
    #dbg_value(i64 %xor412, !3563, !DIExpression(), !3523)
  %xor390 = xor i64 %xor192, %xor265, !dbg !3836
    #dbg_value(i64 %xor390, !3608, !DIExpression(), !3523)
  %153 = shl i64 %xor390, 15, !dbg !3837
  %154 = lshr i64 %xor390, 49, !dbg !3837
  %155 = or i64 %153, %154, !dbg !3837
    #dbg_value(i64 %155, !3584, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %146), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not407 = xor i64 %146, -1, !dbg !3838
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %not407), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and408 = and i64 %152, %not407, !dbg !3839
    #dbg_value(!DIArgList(i64 %155, i64 %and408), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor409 = xor i64 %155, %and408, !dbg !3840
    #dbg_value(i64 %xor409, !3561, !DIExpression(), !3523)
  %xor386 = xor i64 %xor154, %xor261, !dbg !3841
    #dbg_value(i64 %xor386, !3602, !DIExpression(), !3523)
  %156 = shl i64 %xor386, 10, !dbg !3842
  %157 = lshr i64 %xor386, 54, !dbg !3842
  %158 = or i64 %156, %157, !dbg !3842
    #dbg_value(i64 %158, !3583, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %155), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %158), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %149), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not404 = xor i64 %155, -1, !dbg !3843
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %not404), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and405 = and i64 %146, %not404, !dbg !3844
    #dbg_value(!DIArgList(i64 %158, i64 %and405), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor406 = xor i64 %158, %and405, !dbg !3845
    #dbg_value(i64 %xor406, !3559, !DIExpression(), !3523)
  %not401 = xor i64 %158, -1, !dbg !3846
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %not401), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and402 = and i64 %155, %not401, !dbg !3847
    #dbg_value(!DIArgList(i64 %149, i64 %and402), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor403 = xor i64 %149, %and402, !dbg !3848
    #dbg_value(i64 %xor403, !3557, !DIExpression(), !3523)
  %not398 = xor i64 %149, -1, !dbg !3849
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %not398), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and399 = and i64 %158, %not398, !dbg !3850
    #dbg_value(!DIArgList(i64 %152, i64 %and399), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor400 = xor i64 %152, %and399, !dbg !3851
    #dbg_value(i64 %xor400, !3555, !DIExpression(), !3523)
  %xor359 = xor i64 %xor221, %xor257, !dbg !3852
    #dbg_value(i64 %xor359, !3611, !DIExpression(), !3523)
  %159 = shl i64 %xor359, 18, !dbg !3853
  %160 = lshr i64 %xor359, 46, !dbg !3853
  %161 = or i64 %159, %160, !dbg !3853
    #dbg_value(i64 %161, !3585, !DIExpression(), !3523)
  %xor347 = xor i64 %xor122, %xor265, !dbg !3854
    #dbg_value(i64 %xor347, !3598, !DIExpression(), !3523)
  %162 = shl i64 %xor347, 6, !dbg !3855
  %163 = lshr i64 %xor347, 58, !dbg !3855
  %164 = or i64 %162, %163, !dbg !3855
    #dbg_value(i64 %164, !3582, !DIExpression(), !3523)
  %xor343 = xor i64 %xor84, %xor261, !dbg !3856
    #dbg_value(i64 %xor343, !3592, !DIExpression(), !3523)
  %165 = shl i64 %xor343, 1, !dbg !3857
  %166 = lshr i64 %xor343, 63, !dbg !3857
  %167 = or i64 %165, %166, !dbg !3857
    #dbg_value(i64 %167, !3581, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %167), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not375 = xor i64 %167, -1, !dbg !3858
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %not375), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and376 = and i64 %164, %not375, !dbg !3859
    #dbg_value(!DIArgList(i64 %161, i64 %and376), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor377 = xor i64 %161, %and376, !dbg !3860
    #dbg_value(i64 %xor377, !3553, !DIExpression(), !3523)
  %xor355 = xor i64 %xor198, %xor273, !dbg !3861
    #dbg_value(i64 %xor355, !3610, !DIExpression(), !3523)
  %168 = shl i64 %xor355, 8, !dbg !3862
  %169 = lshr i64 %xor355, 56, !dbg !3862
  %170 = or i64 %168, %169, !dbg !3862
    #dbg_value(i64 %170, !3584, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %161), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not372 = xor i64 %161, -1, !dbg !3863
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %not372), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and373 = and i64 %167, %not372, !dbg !3864
    #dbg_value(!DIArgList(i64 %170, i64 %and373), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor374 = xor i64 %170, %and373, !dbg !3865
    #dbg_value(i64 %xor374, !3551, !DIExpression(), !3523)
  %xor351 = xor i64 %xor160, %xor269, !dbg !3866
    #dbg_value(i64 %xor351, !3604, !DIExpression(), !3523)
  %171 = shl i64 %xor351, 25, !dbg !3867
  %172 = lshr i64 %xor351, 39, !dbg !3867
  %173 = or i64 %171, %172, !dbg !3867
    #dbg_value(i64 %173, !3583, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %170), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %173), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %164), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not369 = xor i64 %170, -1, !dbg !3868
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %not369), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and370 = and i64 %161, %not369, !dbg !3869
    #dbg_value(!DIArgList(i64 %173, i64 %and370), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor371 = xor i64 %173, %and370, !dbg !3870
    #dbg_value(i64 %xor371, !3549, !DIExpression(), !3523)
  %not366 = xor i64 %173, -1, !dbg !3871
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %not366), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and367 = and i64 %170, %not366, !dbg !3872
    #dbg_value(!DIArgList(i64 %164, i64 %and367), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor368 = xor i64 %164, %and367, !dbg !3873
    #dbg_value(i64 %xor368, !3547, !DIExpression(), !3523)
  %not363 = xor i64 %164, -1, !dbg !3874
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %not363), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and364 = and i64 %173, %not363, !dbg !3875
    #dbg_value(!DIArgList(i64 %167, i64 %and364), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor365 = xor i64 %167, %and364, !dbg !3876
    #dbg_value(i64 %xor365, !3545, !DIExpression(), !3523)
  %xor324 = xor i64 %xor227, %xor265, !dbg !3877
    #dbg_value(i64 %xor324, !3613, !DIExpression(), !3523)
  %174 = shl i64 %xor324, 61, !dbg !3878
  %175 = lshr i64 %xor324, 3, !dbg !3878
  %176 = or i64 %174, %175, !dbg !3878
    #dbg_value(i64 %176, !3585, !DIExpression(), !3523)
  %xor312 = xor i64 %xor128, %xor273, !dbg !3879
    #dbg_value(i64 %xor312, !3600, !DIExpression(), !3523)
  %177 = shl i64 %xor312, 20, !dbg !3880
  %178 = lshr i64 %xor312, 44, !dbg !3880
  %179 = or i64 %177, %178, !dbg !3880
    #dbg_value(i64 %179, !3582, !DIExpression(), !3523)
  %xor308 = xor i64 %xor90, %xor269, !dbg !3881
    #dbg_value(i64 %xor308, !3594, !DIExpression(), !3523)
  %180 = shl i64 %xor308, 28, !dbg !3882
  %181 = lshr i64 %xor308, 36, !dbg !3882
  %182 = or i64 %180, %181, !dbg !3882
    #dbg_value(i64 %182, !3581, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %182), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not340 = xor i64 %182, -1, !dbg !3883
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %not340), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and341 = and i64 %179, %not340, !dbg !3884
    #dbg_value(!DIArgList(i64 %176, i64 %and341), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor342 = xor i64 %176, %and341, !dbg !3885
    #dbg_value(i64 %xor342, !3543, !DIExpression(), !3523)
  %xor320 = xor i64 %xor189, %xor261, !dbg !3886
    #dbg_value(i64 %xor320, !3607, !DIExpression(), !3523)
  %183 = shl i64 %xor320, 45, !dbg !3887
  %184 = lshr i64 %xor320, 19, !dbg !3887
  %185 = or i64 %183, %184, !dbg !3887
    #dbg_value(i64 %185, !3584, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %176), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not337 = xor i64 %176, -1, !dbg !3888
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %not337), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and338 = and i64 %182, %not337, !dbg !3889
    #dbg_value(!DIArgList(i64 %185, i64 %and338), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor339 = xor i64 %185, %and338, !dbg !3890
    #dbg_value(i64 %xor339, !3541, !DIExpression(), !3523)
  %xor316 = xor i64 %xor151, %xor257, !dbg !3891
    #dbg_value(i64 %xor316, !3601, !DIExpression(), !3523)
  %186 = shl i64 %xor316, 3, !dbg !3892
  %187 = lshr i64 %xor316, 61, !dbg !3892
  %188 = or i64 %186, %187, !dbg !3892
    #dbg_value(i64 %188, !3583, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %185), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %188), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %179), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not334 = xor i64 %185, -1, !dbg !3893
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %not334), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and335 = and i64 %176, %not334, !dbg !3894
    #dbg_value(!DIArgList(i64 %188, i64 %and335), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor336 = xor i64 %188, %and335, !dbg !3895
    #dbg_value(i64 %xor336, !3539, !DIExpression(), !3523)
  %not331 = xor i64 %188, -1, !dbg !3896
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %not331), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and332 = and i64 %185, %not331, !dbg !3897
    #dbg_value(!DIArgList(i64 %179, i64 %and332), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor333 = xor i64 %179, %and332, !dbg !3898
    #dbg_value(i64 %xor333, !3537, !DIExpression(), !3523)
  %not328 = xor i64 %179, -1, !dbg !3899
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %not328), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and329 = and i64 %188, %not328, !dbg !3900
    #dbg_value(!DIArgList(i64 %182, i64 %and329), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor330 = xor i64 %182, %and329, !dbg !3901
    #dbg_value(i64 %xor330, !3535, !DIExpression(), !3523)
  %xor287 = xor i64 %xor233, %xor273, !dbg !3902
    #dbg_value(i64 %xor287, !3615, !DIExpression(), !3523)
  %189 = shl i64 %xor287, 14, !dbg !3903
  %190 = lshr i64 %xor287, 50, !dbg !3903
  %191 = or i64 %189, %190, !dbg !3903
    #dbg_value(i64 %191, !3585, !DIExpression(), !3523)
  %xor275 = xor i64 %xor119, %xor261, !dbg !3904
    #dbg_value(i64 %xor275, !3597, !DIExpression(), !3523)
  %192 = shl i64 %xor275, 44, !dbg !3905
  %193 = lshr i64 %xor275, 20, !dbg !3905
  %194 = or i64 %192, %193, !dbg !3905
    #dbg_value(i64 %194, !3582, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor81, i64 %xor257), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor274 = xor i64 %xor81, %xor257, !dbg !3906
    #dbg_value(i64 %xor274, !3591, !DIExpression(), !3523)
    #dbg_value(i64 %xor274, !3581, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor274), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not305 = xor i64 %xor274, -1, !dbg !3907
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %not305), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and306 = and i64 %194, %not305, !dbg !3908
    #dbg_value(!DIArgList(i64 %191, i64 %and306), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor307 = xor i64 %191, %and306, !dbg !3909
    #dbg_value(i64 %xor307, !3533, !DIExpression(), !3523)
  %xor283 = xor i64 %xor195, %xor269, !dbg !3910
    #dbg_value(i64 %xor283, !3609, !DIExpression(), !3523)
  %195 = shl i64 %xor283, 21, !dbg !3911
  %196 = lshr i64 %xor283, 43, !dbg !3911
  %197 = or i64 %195, %196, !dbg !3911
    #dbg_value(i64 %197, !3584, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %191), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not302 = xor i64 %191, -1, !dbg !3912
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %not302), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and303 = and i64 %xor274, %not302, !dbg !3913
    #dbg_value(!DIArgList(i64 %197, i64 %and303), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor304 = xor i64 %197, %and303, !dbg !3914
    #dbg_value(i64 %xor304, !3531, !DIExpression(), !3523)
  %xor279 = xor i64 %xor157, %xor265, !dbg !3915
    #dbg_value(i64 %xor279, !3603, !DIExpression(), !3523)
  %198 = shl i64 %xor279, 43, !dbg !3916
  %199 = lshr i64 %xor279, 21, !dbg !3916
  %200 = or i64 %198, %199, !dbg !3916
    #dbg_value(i64 %200, !3583, !DIExpression(), !3523)
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %197), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %200), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
    #dbg_value(!DIArgList(i64 %xor274, i64 %200, i64 %194), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %not299 = xor i64 %197, -1, !dbg !3917
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %not299), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and300 = and i64 %191, %not299, !dbg !3918
    #dbg_value(!DIArgList(i64 %200, i64 %and300), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor301 = xor i64 %200, %and300, !dbg !3919
    #dbg_value(i64 %xor301, !3529, !DIExpression(), !3523)
  %not296 = xor i64 %200, -1, !dbg !3920
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %not296), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3523)
  %and297 = and i64 %197, %not296, !dbg !3921
    #dbg_value(!DIArgList(i64 %194, i64 %and297), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %xor298 = xor i64 %194, %and297, !dbg !3922
    #dbg_value(i64 %xor298, !3527, !DIExpression(), !3523)
  %add = or disjoint i32 %round.0, 1, !dbg !3923
  %arrayidx294 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %add, !dbg !3924
  %201 = load i64, ptr %arrayidx294, align 8, !dbg !3924
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %194), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %not291 = xor i64 %194, -1, !dbg !3925
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %not291), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %and292 = and i64 %200, %not291, !dbg !3926
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %and292), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3523)
  %202 = xor i64 %and292, %201, !dbg !3927
  %xor295 = xor i64 %202, %xor274, !dbg !3927
    #dbg_value(i64 %xor295, !3525, !DIExpression(), !3523)
  %add448 = add nuw nsw i32 %round.0, 2, !dbg !3928
    #dbg_value(i32 %add448, !3574, !DIExpression(), !3523)
  br label %for.cond, !dbg !3929, !llvm.loop !3930

for.end:                                          ; preds = %for.cond
  %Aso.0.lcssa = phi i64 [ %Aso.0, %for.cond ], !dbg !3523
  %Asi.0.lcssa = phi i64 [ %Asi.0, %for.cond ], !dbg !3523
  %Ase.0.lcssa = phi i64 [ %Ase.0, %for.cond ], !dbg !3523
  %Asa.0.lcssa = phi i64 [ %Asa.0, %for.cond ], !dbg !3523
  %Amu.0.lcssa = phi i64 [ %Amu.0, %for.cond ], !dbg !3523
  %Amo.0.lcssa = phi i64 [ %Amo.0, %for.cond ], !dbg !3523
  %Ami.0.lcssa = phi i64 [ %Ami.0, %for.cond ], !dbg !3523
  %Ame.0.lcssa = phi i64 [ %Ame.0, %for.cond ], !dbg !3523
  %Ama.0.lcssa = phi i64 [ %Ama.0, %for.cond ], !dbg !3523
  %Aku.0.lcssa = phi i64 [ %Aku.0, %for.cond ], !dbg !3523
  %Ako.0.lcssa = phi i64 [ %Ako.0, %for.cond ], !dbg !3523
  %Aki.0.lcssa = phi i64 [ %Aki.0, %for.cond ], !dbg !3523
  %Ake.0.lcssa = phi i64 [ %Ake.0, %for.cond ], !dbg !3523
  %Aka.0.lcssa = phi i64 [ %Aka.0, %for.cond ], !dbg !3523
  %Agu.0.lcssa = phi i64 [ %Agu.0, %for.cond ], !dbg !3523
  %Ago.0.lcssa = phi i64 [ %Ago.0, %for.cond ], !dbg !3523
  %Agi.0.lcssa = phi i64 [ %Agi.0, %for.cond ], !dbg !3523
  %Age.0.lcssa = phi i64 [ %Age.0, %for.cond ], !dbg !3523
  %Aga.0.lcssa = phi i64 [ %Aga.0, %for.cond ], !dbg !3523
  %Abu.0.lcssa = phi i64 [ %Abu.0, %for.cond ], !dbg !3523
  %Abo.0.lcssa = phi i64 [ %Abo.0, %for.cond ], !dbg !3523
  %Abi.0.lcssa = phi i64 [ %Abi.0, %for.cond ], !dbg !3523
  %Abe.0.lcssa = phi i64 [ %Abe.0, %for.cond ], !dbg !3523
  %Aba.0.lcssa = phi i64 [ %Aba.0, %for.cond ], !dbg !3523
  %Asu.0.lcssa = phi i64 [ %Asu.0, %for.cond ], !dbg !3523
  store i64 %Aba.0.lcssa, ptr %state, align 8, !dbg !3932
  %arrayidx450 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3933
  store i64 %Abe.0.lcssa, ptr %arrayidx450, align 8, !dbg !3934
  %arrayidx451 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3935
  store i64 %Abi.0.lcssa, ptr %arrayidx451, align 8, !dbg !3936
  %arrayidx452 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3937
  store i64 %Abo.0.lcssa, ptr %arrayidx452, align 8, !dbg !3938
  %arrayidx453 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3939
  store i64 %Abu.0.lcssa, ptr %arrayidx453, align 8, !dbg !3940
  %arrayidx454 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3941
  store i64 %Aga.0.lcssa, ptr %arrayidx454, align 8, !dbg !3942
  %arrayidx455 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3943
  store i64 %Age.0.lcssa, ptr %arrayidx455, align 8, !dbg !3944
  %arrayidx456 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3945
  store i64 %Agi.0.lcssa, ptr %arrayidx456, align 8, !dbg !3946
  %arrayidx457 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3947
  store i64 %Ago.0.lcssa, ptr %arrayidx457, align 8, !dbg !3948
  %arrayidx458 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3949
  store i64 %Agu.0.lcssa, ptr %arrayidx458, align 8, !dbg !3950
  %arrayidx459 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3951
  store i64 %Aka.0.lcssa, ptr %arrayidx459, align 8, !dbg !3952
  %arrayidx460 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3953
  store i64 %Ake.0.lcssa, ptr %arrayidx460, align 8, !dbg !3954
  %arrayidx461 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3955
  store i64 %Aki.0.lcssa, ptr %arrayidx461, align 8, !dbg !3956
  %arrayidx462 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3957
  store i64 %Ako.0.lcssa, ptr %arrayidx462, align 8, !dbg !3958
  %arrayidx463 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3959
  store i64 %Aku.0.lcssa, ptr %arrayidx463, align 8, !dbg !3960
  %arrayidx464 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3961
  store i64 %Ama.0.lcssa, ptr %arrayidx464, align 8, !dbg !3962
  %arrayidx465 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3963
  store i64 %Ame.0.lcssa, ptr %arrayidx465, align 8, !dbg !3964
  %arrayidx466 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3965
  store i64 %Ami.0.lcssa, ptr %arrayidx466, align 8, !dbg !3966
  %arrayidx467 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3967
  store i64 %Amo.0.lcssa, ptr %arrayidx467, align 8, !dbg !3968
  %arrayidx468 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3969
  store i64 %Amu.0.lcssa, ptr %arrayidx468, align 8, !dbg !3970
  %arrayidx469 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3971
  store i64 %Asa.0.lcssa, ptr %arrayidx469, align 8, !dbg !3972
  %arrayidx470 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3973
  store i64 %Ase.0.lcssa, ptr %arrayidx470, align 8, !dbg !3974
  %arrayidx471 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3975
  store i64 %Asi.0.lcssa, ptr %arrayidx471, align 8, !dbg !3976
  %arrayidx472 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3977
  store i64 %Aso.0.lcssa, ptr %arrayidx472, align 8, !dbg !3978
  %arrayidx473 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3979
  store i64 %Asu.0.lcssa, ptr %arrayidx473, align 8, !dbg !3980
  ret void, !dbg !3981
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !3982 {
entry:
    #dbg_value(ptr %state, !3983, !DIExpression(), !3984)
  %0 = load ptr, ptr %state, align 4, !dbg !3985
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 168, i8 noundef zeroext 31) #4, !dbg !3986
  ret void, !dbg !3987
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_finalize(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !3988 {
entry:
    #dbg_value(ptr %s_inc, !3991, !DIExpression(), !3992)
    #dbg_value(i32 %r, !3993, !DIExpression(), !3992)
    #dbg_value(i8 %p, !3994, !DIExpression(), !3992)
  %conv = zext nneg i8 %p to i64, !dbg !3995
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3996
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3996
  %and = shl i64 %0, 3, !dbg !3997
  %mul = and i64 %and, 56, !dbg !3997
  %shl = shl nuw nsw i64 %conv, %mul, !dbg !3998
  %shr = lshr i64 %0, 3, !dbg !3999
  %idxprom = trunc i64 %shr to i32, !dbg !4000
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !4000
  %1 = load i64, ptr %arrayidx2, align 8, !dbg !4001
  %xor = xor i64 %1, %shl, !dbg !4001
  store i64 %xor, ptr %arrayidx2, align 8, !dbg !4001
  %sub = shl nuw nsw i32 %r, 3, !dbg !4002
  %and3 = add nuw nsw i32 %sub, 56, !dbg !4002
  %mul4 = and i32 %and3, 56, !dbg !4002
  %sh_prom = zext nneg i32 %mul4 to i64, !dbg !4003
  %shl5 = shl nuw i64 128, %sh_prom, !dbg !4003
  %sub6 = add nsw i32 %r, -1, !dbg !4004
  %shr7 = lshr i32 %sub6, 3, !dbg !4005
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr7, !dbg !4006
  %2 = load i64, ptr %arrayidx8, align 8, !dbg !4007
  %xor9 = xor i64 %2, %shl5, !dbg !4007
  store i64 %xor9, ptr %arrayidx8, align 8, !dbg !4007
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4008
  store i64 0, ptr %arrayidx10, align 8, !dbg !4009
  ret void, !dbg !4010
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !4011 {
entry:
    #dbg_value(ptr %output, !4014, !DIExpression(), !4015)
    #dbg_value(i32 %outlen, !4016, !DIExpression(), !4015)
    #dbg_value(ptr %state, !4017, !DIExpression(), !4015)
  %0 = load ptr, ptr %state, align 4, !dbg !4018
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 168) #4, !dbg !4019
  ret void, !dbg !4020
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_squeeze(ptr noundef %h, i32 noundef %outlen, ptr noundef %s_inc, i32 noundef range(i32 136, 169) %r) unnamed_addr #0 !dbg !4021 {
entry:
    #dbg_value(ptr %h, !4024, !DIExpression(), !4025)
    #dbg_value(i32 %outlen, !4026, !DIExpression(), !4025)
    #dbg_value(ptr %s_inc, !4027, !DIExpression(), !4025)
    #dbg_value(i32 %r, !4028, !DIExpression(), !4025)
    #dbg_value(i32 0, !4029, !DIExpression(), !4025)
  br label %for.cond, !dbg !4030

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4032
    #dbg_value(i32 %i.0, !4029, !DIExpression(), !4025)
  %exitcond = icmp ne i32 %i.0, %outlen, !dbg !4033
  br i1 %exitcond, label %land.rhs, label %for.end, !dbg !4035

land.rhs:                                         ; preds = %for.cond
  %conv = zext i32 %i.0 to i64, !dbg !4036
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4037
  %0 = load i64, ptr %arrayidx, align 8, !dbg !4037
  %cmp1 = icmp ugt i64 %0, %conv, !dbg !4038
  br i1 %cmp1, label %for.body, label %for.end, !dbg !4039

for.body:                                         ; preds = %land.rhs
  %conv3 = zext nneg i32 %r to i64, !dbg !4040
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4042
  %1 = load i64, ptr %arrayidx4, align 8, !dbg !4042
  %sub = sub i64 %conv3, %1, !dbg !4043
  %conv5 = zext i32 %i.0 to i64, !dbg !4044
  %add = add i64 %sub, %conv5, !dbg !4045
  %shr = lshr i64 %add, 3, !dbg !4046
  %idxprom = trunc i64 %shr to i32, !dbg !4047
  %arrayidx6 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !4047
  %2 = load i64, ptr %arrayidx6, align 8, !dbg !4047
  %conv7 = zext nneg i32 %r to i64, !dbg !4048
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4049
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !4049
  %sub9 = sub i64 %conv7, %3, !dbg !4050
  %conv10 = zext i32 %i.0 to i64, !dbg !4051
  %add11 = add i64 %sub9, %conv10, !dbg !4052
  %and = shl i64 %add11, 3, !dbg !4053
  %mul = and i64 %and, 56, !dbg !4053
  %shr12 = lshr i64 %2, %mul, !dbg !4054
  %conv13 = trunc i64 %shr12 to i8, !dbg !4055
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %h, i32 %i.0, !dbg !4056
  store i8 %conv13, ptr %arrayidx14, align 1, !dbg !4057
  %inc = add i32 %i.0, 1, !dbg !4058
    #dbg_value(i32 %inc, !4029, !DIExpression(), !4025)
  br label %for.cond, !dbg !4059, !llvm.loop !4060

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %outlen, %for.cond ], [ %i.0, %land.rhs ], !dbg !4032
  %add.ptr = getelementptr inbounds nuw i8, ptr %h, i32 %i.0.lcssa, !dbg !4062
    #dbg_value(ptr %add.ptr, !4024, !DIExpression(), !4025)
  %sub15 = sub i32 %outlen, %i.0.lcssa, !dbg !4063
    #dbg_value(i32 %sub15, !4026, !DIExpression(), !4025)
  %conv16 = zext i32 %i.0.lcssa to i64, !dbg !4064
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4065
  %4 = load i64, ptr %arrayidx17, align 8, !dbg !4066
  %sub18 = sub i64 %4, %conv16, !dbg !4066
  store i64 %sub18, ptr %arrayidx17, align 8, !dbg !4066
  br label %while.cond, !dbg !4067

while.cond:                                       ; preds = %for.end38, %for.end
  %outlen.addr.0 = phi i32 [ %sub15, %for.end ], [ %sub40, %for.end38 ], !dbg !4025
  %h.addr.0 = phi ptr [ %add.ptr, %for.end ], [ %add.ptr39, %for.end38 ], !dbg !4025
    #dbg_value(ptr %h.addr.0, !4024, !DIExpression(), !4025)
    #dbg_value(i32 %outlen.addr.0, !4026, !DIExpression(), !4025)
  %cmp19.not = icmp eq i32 %outlen.addr.0, 0, !dbg !4068
  br i1 %cmp19.not, label %while.end, label %while.body, !dbg !4067

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #4, !dbg !4069
    #dbg_value(i32 0, !4029, !DIExpression(), !4025)
  %5 = icmp ult i32 %outlen.addr.0, %r, !dbg !4071
  %6 = select i1 %5, i32 %outlen.addr.0, i32 %r, !dbg !4071
  br label %for.cond21, !dbg !4071

for.cond21:                                       ; preds = %for.body28, %while.body
  %i.1 = phi i32 [ 0, %while.body ], [ %inc37, %for.body28 ], !dbg !4073
    #dbg_value(i32 %i.1, !4029, !DIExpression(), !4025)
  %exitcond1 = icmp ne i32 %i.1, %6, !dbg !4074
  br i1 %exitcond1, label %for.body28, label %for.end38, !dbg !4076

for.body28:                                       ; preds = %for.cond21
  %shr29 = lshr i32 %i.1, 3, !dbg !4077
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr29, !dbg !4079
  %7 = load i64, ptr %arrayidx30, align 8, !dbg !4079
  %and31 = shl nuw nsw i32 %i.1, 3, !dbg !4080
  %mul32 = and i32 %and31, 56, !dbg !4080
  %sh_prom = zext nneg i32 %mul32 to i64, !dbg !4081
  %shr33 = lshr i64 %7, %sh_prom, !dbg !4081
  %conv34 = trunc i64 %shr33 to i8, !dbg !4082
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1, !dbg !4083
  store i8 %conv34, ptr %arrayidx35, align 1, !dbg !4084
  %inc37 = add nuw nsw i32 %i.1, 1, !dbg !4085
    #dbg_value(i32 %inc37, !4029, !DIExpression(), !4025)
  br label %for.cond21, !dbg !4086, !llvm.loop !4087

for.end38:                                        ; preds = %for.cond21
  %i.1.lcssa = phi i32 [ %i.1, %for.cond21 ], !dbg !4073
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1.lcssa, !dbg !4089
    #dbg_value(ptr %add.ptr39, !4024, !DIExpression(), !4025)
  %sub40 = sub i32 %outlen.addr.0, %i.1.lcssa, !dbg !4090
    #dbg_value(i32 %sub40, !4026, !DIExpression(), !4025)
  %sub41 = sub nsw i32 %r, %i.1.lcssa, !dbg !4091
  %conv42 = zext i32 %sub41 to i64, !dbg !4092
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4093
  store i64 %conv42, ptr %arrayidx43, align 8, !dbg !4094
  br label %while.cond, !dbg !4067, !llvm.loop !4095

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4097
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4098 {
entry:
    #dbg_value(ptr %dest, !4103, !DIExpression(), !4104)
    #dbg_value(ptr %src, !4105, !DIExpression(), !4104)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4106
  store ptr %call, ptr %dest, align 4, !dbg !4107
  %cmp = icmp eq ptr %call, null, !dbg !4108
  br i1 %cmp, label %if.then, label %if.end, !dbg !4108

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4110
  br label %if.end, !dbg !4112

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4113
  %1 = load ptr, ptr %src, align 4, !dbg !4114
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4115
  ret void, !dbg !4116
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4117 {
entry:
    #dbg_value(ptr %state, !4118, !DIExpression(), !4119)
  %0 = load ptr, ptr %state, align 4, !dbg !4120
  call void @free(ptr noundef %0) #6, !dbg !4121
  ret void, !dbg !4122
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4123 {
entry:
    #dbg_value(ptr %state, !4131, !DIExpression(), !4132)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4133
  store ptr %call, ptr %state, align 4, !dbg !4134
  %cmp = icmp eq ptr %call, null, !dbg !4135
  br i1 %cmp, label %if.then, label %if.end, !dbg !4135

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4137
  br label %if.end, !dbg !4139

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4140
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4141
  ret void, !dbg !4142
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4143 {
entry:
    #dbg_value(ptr %state, !4146, !DIExpression(), !4147)
    #dbg_value(ptr %input, !4148, !DIExpression(), !4147)
    #dbg_value(i32 %inlen, !4149, !DIExpression(), !4147)
  %0 = load ptr, ptr %state, align 4, !dbg !4150
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4151
  ret void, !dbg !4152
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !4153 {
entry:
    #dbg_value(ptr %state, !4154, !DIExpression(), !4155)
  %0 = load ptr, ptr %state, align 4, !dbg !4156
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 31) #4, !dbg !4157
  ret void, !dbg !4158
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !4159 {
entry:
    #dbg_value(ptr %output, !4162, !DIExpression(), !4163)
    #dbg_value(i32 %outlen, !4164, !DIExpression(), !4163)
    #dbg_value(ptr %state, !4165, !DIExpression(), !4163)
  %0 = load ptr, ptr %state, align 4, !dbg !4166
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 136) #4, !dbg !4167
  ret void, !dbg !4168
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4169 {
entry:
    #dbg_value(ptr %dest, !4174, !DIExpression(), !4175)
    #dbg_value(ptr %src, !4176, !DIExpression(), !4175)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4177
  store ptr %call, ptr %dest, align 4, !dbg !4178
  %cmp = icmp eq ptr %call, null, !dbg !4179
  br i1 %cmp, label %if.then, label %if.end, !dbg !4179

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4181
  br label %if.end, !dbg !4183

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4184
  %1 = load ptr, ptr %src, align 4, !dbg !4185
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4186
  ret void, !dbg !4187
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4188 {
entry:
    #dbg_value(ptr %state, !4189, !DIExpression(), !4190)
  %0 = load ptr, ptr %state, align 4, !dbg !4191
  call void @free(ptr noundef %0) #6, !dbg !4192
  ret void, !dbg !4193
}

; Function Attrs: nounwind
define dso_local void @shake128_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4194 {
entry:
    #dbg_value(ptr %state, !4202, !DIExpression(), !4203)
    #dbg_value(ptr %input, !4204, !DIExpression(), !4203)
    #dbg_value(i32 %inlen, !4205, !DIExpression(), !4203)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4206
  store ptr %call, ptr %state, align 4, !dbg !4207
  %cmp = icmp eq ptr %call, null, !dbg !4208
  br i1 %cmp, label %if.then, label %if.end, !dbg !4208

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4210
  br label %if.end, !dbg !4212

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4213
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !4214
  ret void, !dbg !4215
}

; Function Attrs: nounwind
define internal fastcc void @keccak_absorb(ptr noundef %s, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !4216 {
entry:
  %t = alloca [200 x i8], align 1
    #dbg_value(ptr %s, !4219, !DIExpression(), !4220)
    #dbg_value(i32 %r, !4221, !DIExpression(), !4220)
    #dbg_value(ptr %m, !4222, !DIExpression(), !4220)
    #dbg_value(i32 %mlen, !4223, !DIExpression(), !4220)
    #dbg_value(i8 %p, !4224, !DIExpression(), !4220)
    #dbg_declare(ptr %t, !4225, !DIExpression(), !4229)
    #dbg_value(i32 0, !4230, !DIExpression(), !4220)
  br label %for.cond, !dbg !4231

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4233
    #dbg_value(i32 %i.0, !4230, !DIExpression(), !4220)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !4234
  br i1 %exitcond, label %for.body, label %while.cond.preheader, !dbg !4236

while.cond.preheader:                             ; preds = %for.cond
  %0 = lshr i32 %r, 3, !dbg !4237
  br label %while.cond, !dbg !4237

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4238
  store i64 0, ptr %arrayidx, align 8, !dbg !4240
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4241
    #dbg_value(i32 %inc, !4230, !DIExpression(), !4220)
  br label %for.cond, !dbg !4242, !llvm.loop !4243

while.cond:                                       ; preds = %while.cond.preheader, %for.end8
  %m.addr.0 = phi ptr [ %add.ptr9, %for.end8 ], [ %m, %while.cond.preheader ]
  %mlen.addr.0 = phi i32 [ %sub, %for.end8 ], [ %mlen, %while.cond.preheader ]
    #dbg_value(i32 %mlen.addr.0, !4223, !DIExpression(), !4220)
    #dbg_value(ptr %m.addr.0, !4222, !DIExpression(), !4220)
  %cmp1.not = icmp ult i32 %mlen.addr.0, %r, !dbg !4245
  br i1 %cmp1.not, label %for.cond10.preheader, label %for.cond2.preheader, !dbg !4237

for.cond2.preheader:                              ; preds = %while.cond
  br label %for.cond2, !dbg !4246

for.cond10.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa5 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  br label %for.cond10, !dbg !4249

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %i.1 = phi i32 [ %inc7, %for.body4 ], [ 0, %for.cond2.preheader ], !dbg !4251
    #dbg_value(i32 %i.1, !4230, !DIExpression(), !4220)
  %exitcond3 = icmp ne i32 %i.1, %0, !dbg !4252
  br i1 %exitcond3, label %for.body4, label %for.end8, !dbg !4246

for.body4:                                        ; preds = %for.cond2
  %mul = shl nuw nsw i32 %i.1, 3, !dbg !4254
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %mul, !dbg !4256
  %call = call fastcc i64 @load64(ptr noundef %add.ptr) #4, !dbg !4257
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %s, i32 %i.1, !dbg !4258
  %1 = load i64, ptr %arrayidx5, align 8, !dbg !4259
  %xor = xor i64 %1, %call, !dbg !4259
  store i64 %xor, ptr %arrayidx5, align 8, !dbg !4259
  %inc7 = add nuw nsw i32 %i.1, 1, !dbg !4260
    #dbg_value(i32 %inc7, !4230, !DIExpression(), !4220)
  br label %for.cond2, !dbg !4261, !llvm.loop !4262

for.end8:                                         ; preds = %for.cond2
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !4264
  %sub = sub i32 %mlen.addr.0, %r, !dbg !4265
    #dbg_value(i32 %sub, !4223, !DIExpression(), !4220)
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %r, !dbg !4266
    #dbg_value(ptr %add.ptr9, !4222, !DIExpression(), !4220)
  br label %while.cond, !dbg !4237, !llvm.loop !4267

for.cond10:                                       ; preds = %for.cond10.preheader, %for.body12
  %i.2 = phi i32 [ %inc15, %for.body12 ], [ 0, %for.cond10.preheader ], !dbg !4269
    #dbg_value(i32 %i.2, !4230, !DIExpression(), !4220)
  %exitcond4 = icmp ne i32 %i.2, %r, !dbg !4270
  br i1 %exitcond4, label %for.body12, label %for.cond17.preheader, !dbg !4249

for.cond17.preheader:                             ; preds = %for.cond10
  br label %for.cond17, !dbg !4272

for.body12:                                       ; preds = %for.cond10
  %arrayidx13 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.2, !dbg !4274
  store i8 0, ptr %arrayidx13, align 1, !dbg !4276
  %inc15 = add nuw nsw i32 %i.2, 1, !dbg !4277
    #dbg_value(i32 %inc15, !4230, !DIExpression(), !4220)
  br label %for.cond10, !dbg !4278, !llvm.loop !4279

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body19
  %i.3 = phi i32 [ %inc23, %for.body19 ], [ 0, %for.cond17.preheader ], !dbg !4281
    #dbg_value(i32 %i.3, !4230, !DIExpression(), !4220)
  %exitcond6 = icmp ne i32 %i.3, %mlen.addr.0.lcssa5, !dbg !4282
  br i1 %exitcond6, label %for.body19, label %for.end24, !dbg !4272

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.3, !dbg !4284
  %2 = load i8, ptr %arrayidx20, align 1, !dbg !4284
  %arrayidx21 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3, !dbg !4286
  store i8 %2, ptr %arrayidx21, align 1, !dbg !4287
  %inc23 = add i32 %i.3, 1, !dbg !4288
    #dbg_value(i32 %inc23, !4230, !DIExpression(), !4220)
  br label %for.cond17, !dbg !4289, !llvm.loop !4290

for.end24:                                        ; preds = %for.cond17
  %i.3.lcssa = phi i32 [ %i.3, %for.cond17 ], !dbg !4281
  %arrayidx25 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3.lcssa, !dbg !4292
  store i8 %p, ptr %arrayidx25, align 1, !dbg !4293
  %sub26 = add nsw i32 %r, -1, !dbg !4294
  %arrayidx27 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %sub26, !dbg !4295
  %3 = load i8, ptr %arrayidx27, align 1, !dbg !4296
  %4 = or i8 %3, -128, !dbg !4296
  store i8 %4, ptr %arrayidx27, align 1, !dbg !4296
    #dbg_value(i32 0, !4230, !DIExpression(), !4220)
  br label %for.cond29, !dbg !4297

for.cond29:                                       ; preds = %for.body33, %for.end24
  %i.4 = phi i32 [ 0, %for.end24 ], [ %inc40, %for.body33 ], !dbg !4299
    #dbg_value(i32 %i.4, !4230, !DIExpression(), !4220)
  %exitcond7 = icmp ne i32 %i.4, %0, !dbg !4300
  br i1 %exitcond7, label %for.body33, label %for.end41, !dbg !4302

for.body33:                                       ; preds = %for.cond29
  %mul34 = shl nuw nsw i32 %i.4, 3, !dbg !4303
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %t, i32 %mul34, !dbg !4305
  %call36 = call fastcc i64 @load64(ptr noundef nonnull %add.ptr35) #4, !dbg !4306
  %arrayidx37 = getelementptr inbounds nuw i64, ptr %s, i32 %i.4, !dbg !4307
  %5 = load i64, ptr %arrayidx37, align 8, !dbg !4308
  %xor38 = xor i64 %5, %call36, !dbg !4308
  store i64 %xor38, ptr %arrayidx37, align 8, !dbg !4308
  %inc40 = add nuw nsw i32 %i.4, 1, !dbg !4309
    #dbg_value(i32 %inc40, !4230, !DIExpression(), !4220)
  br label %for.cond29, !dbg !4310, !llvm.loop !4311

for.end41:                                        ; preds = %for.cond29
  ret void, !dbg !4313
}

; Function Attrs: nounwind
define internal fastcc i64 @load64(ptr noundef %x) unnamed_addr #0 !dbg !4314 {
entry:
    #dbg_value(ptr %x, !4317, !DIExpression(), !4318)
    #dbg_value(i64 0, !4319, !DIExpression(), !4318)
    #dbg_value(i32 0, !4320, !DIExpression(), !4322)
  br label %for.cond, !dbg !4323

for.cond:                                         ; preds = %for.inc, %entry
  %r.0 = phi i64 [ 0, %entry ], [ %or, %for.inc ], !dbg !4318
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !4324
    #dbg_value(i32 %i.0, !4320, !DIExpression(), !4322)
    #dbg_value(i64 %r.0, !4319, !DIExpression(), !4318)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4325
  br i1 %exitcond, label %for.inc, label %for.end, !dbg !4327

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 poison, i8 poison, i32 poison), !4319, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4318)
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4328
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4328
    #dbg_value(!DIArgList(i64 %r.0, i8 %0, i32 %i.0), !4319, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4318)
  %conv = zext i8 %0 to i64, !dbg !4330
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %i.0), !4319, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4318)
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4331
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %mul), !4319, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4318)
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4332
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i64 %sh_prom), !4319, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4318)
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !4332
    #dbg_value(!DIArgList(i64 %r.0, i64 %shl), !4319, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !4318)
  %or = or i64 %r.0, %shl, !dbg !4333
    #dbg_value(i64 %or, !4319, !DIExpression(), !4318)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4334
    #dbg_value(i32 %inc, !4320, !DIExpression(), !4322)
  br label %for.cond, !dbg !4335, !llvm.loop !4336

for.end:                                          ; preds = %for.cond
  %r.0.lcssa = phi i64 [ %r.0, %for.cond ], !dbg !4318
  ret i64 %r.0.lcssa, !dbg !4338
}

; Function Attrs: nounwind
define dso_local void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4339 {
entry:
    #dbg_value(ptr %output, !4342, !DIExpression(), !4343)
    #dbg_value(i32 %nblocks, !4344, !DIExpression(), !4343)
    #dbg_value(ptr %state, !4345, !DIExpression(), !4343)
  %0 = load ptr, ptr %state, align 4, !dbg !4346
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 168) #4, !dbg !4347
  ret void, !dbg !4348
}

; Function Attrs: nounwind
define internal fastcc void @keccak_squeezeblocks(ptr noundef %h, i32 noundef %nblocks, ptr noundef %s, i32 noundef range(i32 72, 169) %r) unnamed_addr #0 !dbg !4349 {
entry:
    #dbg_value(ptr %h, !4350, !DIExpression(), !4351)
    #dbg_value(i32 %nblocks, !4352, !DIExpression(), !4351)
    #dbg_value(ptr %s, !4353, !DIExpression(), !4351)
    #dbg_value(i32 %r, !4354, !DIExpression(), !4351)
  %0 = lshr i32 %r, 3, !dbg !4355
  br label %while.cond, !dbg !4355

while.cond:                                       ; preds = %for.end, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %dec, %for.end ]
  %h.addr.0 = phi ptr [ %h, %entry ], [ %add.ptr2, %for.end ]
    #dbg_value(ptr %h.addr.0, !4350, !DIExpression(), !4351)
    #dbg_value(i32 %nblocks.addr.0, !4352, !DIExpression(), !4351)
  %cmp.not = icmp eq i32 %nblocks.addr.0, 0, !dbg !4356
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !4355

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !4357
    #dbg_value(i32 0, !4359, !DIExpression(), !4361)
  br label %for.cond, !dbg !4362

for.cond:                                         ; preds = %for.body, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc, %for.body ], !dbg !4363
    #dbg_value(i32 %i.0, !4359, !DIExpression(), !4361)
  %exitcond = icmp ne i32 %i.0, %0, !dbg !4364
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4366

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4367
  %add.ptr = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %mul, !dbg !4369
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4370
  %1 = load i64, ptr %arrayidx, align 8, !dbg !4370
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %1) #4, !dbg !4371
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4372
    #dbg_value(i32 %inc, !4359, !DIExpression(), !4361)
  br label %for.cond, !dbg !4373, !llvm.loop !4374

for.end:                                          ; preds = %for.cond
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %r, !dbg !4376
    #dbg_value(ptr %add.ptr2, !4350, !DIExpression(), !4351)
  %dec = add i32 %nblocks.addr.0, -1, !dbg !4377
    #dbg_value(i32 %dec, !4352, !DIExpression(), !4351)
  br label %while.cond, !dbg !4355, !llvm.loop !4378

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4380
}

; Function Attrs: nounwind
define internal fastcc void @store64(ptr noundef %x, i64 noundef %u) unnamed_addr #0 !dbg !4381 {
entry:
    #dbg_value(ptr %x, !4384, !DIExpression(), !4385)
    #dbg_value(i64 %u, !4386, !DIExpression(), !4385)
    #dbg_value(i32 0, !4387, !DIExpression(), !4389)
  br label %for.cond, !dbg !4390

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4391
    #dbg_value(i32 %i.0, !4387, !DIExpression(), !4389)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4392
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4394

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4395
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4397
  %shr = lshr i64 %u, %sh_prom, !dbg !4397
  %conv = trunc i64 %shr to i8, !dbg !4398
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4399
  store i8 %conv, ptr %arrayidx, align 1, !dbg !4400
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4401
    #dbg_value(i32 %inc, !4387, !DIExpression(), !4389)
  br label %for.cond, !dbg !4402, !llvm.loop !4403

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4405
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4406 {
entry:
    #dbg_value(ptr %dest, !4411, !DIExpression(), !4412)
    #dbg_value(ptr %src, !4413, !DIExpression(), !4412)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4414
  store ptr %call, ptr %dest, align 4, !dbg !4415
  %cmp = icmp eq ptr %call, null, !dbg !4416
  br i1 %cmp, label %if.then, label %if.end, !dbg !4416

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4418
  br label %if.end, !dbg !4420

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4421
  %1 = load ptr, ptr %src, align 4, !dbg !4422
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #6, !dbg !4423
  ret void, !dbg !4424
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4425 {
entry:
    #dbg_value(ptr %state, !4428, !DIExpression(), !4429)
  %0 = load ptr, ptr %state, align 4, !dbg !4430
  call void @free(ptr noundef %0) #6, !dbg !4431
  ret void, !dbg !4432
}

; Function Attrs: nounwind
define dso_local void @shake256_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4433 {
entry:
    #dbg_value(ptr %state, !4441, !DIExpression(), !4442)
    #dbg_value(ptr %input, !4443, !DIExpression(), !4442)
    #dbg_value(i32 %inlen, !4444, !DIExpression(), !4442)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4445
  store ptr %call, ptr %state, align 4, !dbg !4446
  %cmp = icmp eq ptr %call, null, !dbg !4447
  br i1 %cmp, label %if.then, label %if.end, !dbg !4447

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4449
  br label %if.end, !dbg !4451

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4452
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !4453
  ret void, !dbg !4454
}

; Function Attrs: nounwind
define dso_local void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4455 {
entry:
    #dbg_value(ptr %output, !4458, !DIExpression(), !4459)
    #dbg_value(i32 %nblocks, !4460, !DIExpression(), !4459)
    #dbg_value(ptr %state, !4461, !DIExpression(), !4459)
  %0 = load ptr, ptr %state, align 4, !dbg !4462
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 136) #4, !dbg !4463
  ret void, !dbg !4464
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4465 {
entry:
    #dbg_value(ptr %dest, !4470, !DIExpression(), !4471)
    #dbg_value(ptr %src, !4472, !DIExpression(), !4471)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4473
  store ptr %call, ptr %dest, align 4, !dbg !4474
  %cmp = icmp eq ptr %call, null, !dbg !4475
  br i1 %cmp, label %if.then, label %if.end, !dbg !4475

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4477
  br label %if.end, !dbg !4479

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4480
  %1 = load ptr, ptr %src, align 4, !dbg !4481
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #6, !dbg !4482
  ret void, !dbg !4483
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4484 {
entry:
    #dbg_value(ptr %state, !4487, !DIExpression(), !4488)
  %0 = load ptr, ptr %state, align 4, !dbg !4489
  call void @free(ptr noundef %0) #6, !dbg !4490
  ret void, !dbg !4491
}

; Function Attrs: nounwind
define dso_local void @shake128(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4492 {
entry:
  %t = alloca [168 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4495, !DIExpression(), !4496)
    #dbg_value(i32 %outlen, !4497, !DIExpression(), !4496)
    #dbg_value(ptr %input, !4498, !DIExpression(), !4496)
    #dbg_value(i32 %inlen, !4499, !DIExpression(), !4496)
  %div = udiv i32 %outlen, 168, !dbg !4500
    #dbg_value(i32 %div, !4501, !DIExpression(), !4496)
    #dbg_declare(ptr %t, !4502, !DIExpression(), !4506)
    #dbg_declare(ptr %s, !4507, !DIExpression(), !4508)
  call void @shake128_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4509
  call void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #4, !dbg !4510
  %mul = mul nuw i32 %div, 168, !dbg !4511
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4512
    #dbg_value(ptr %add.ptr, !4495, !DIExpression(), !4496)
  %mul1.neg = mul i32 %div, -168, !dbg !4513
  %sub = add i32 %mul1.neg, %outlen, !dbg !4514
    #dbg_value(i32 %sub, !4497, !DIExpression(), !4496)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4515
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4515

if.then:                                          ; preds = %entry
  call void @shake128_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #4, !dbg !4517
    #dbg_value(i32 0, !4519, !DIExpression(), !4521)
  br label %for.cond, !dbg !4522

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4523
    #dbg_value(i32 %i.0, !4519, !DIExpression(), !4521)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4524
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4526

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [168 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4527
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4527
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4529
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4530
  %inc = add i32 %i.0, 1, !dbg !4531
    #dbg_value(i32 %inc, !4519, !DIExpression(), !4521)
  br label %for.cond, !dbg !4532, !llvm.loop !4533

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4535

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake128_ctx_release(ptr noundef nonnull %s) #4, !dbg !4535
  ret void, !dbg !4536
}

; Function Attrs: nounwind
define dso_local void @shake256(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4537 {
entry:
  %t = alloca [136 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4538, !DIExpression(), !4539)
    #dbg_value(i32 %outlen, !4540, !DIExpression(), !4539)
    #dbg_value(ptr %input, !4541, !DIExpression(), !4539)
    #dbg_value(i32 %inlen, !4542, !DIExpression(), !4539)
  %div = udiv i32 %outlen, 136, !dbg !4543
    #dbg_value(i32 %div, !4544, !DIExpression(), !4539)
    #dbg_declare(ptr %t, !4545, !DIExpression(), !4549)
    #dbg_declare(ptr %s, !4550, !DIExpression(), !4551)
  call void @shake256_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4552
  call void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #4, !dbg !4553
  %mul = mul nuw i32 %div, 136, !dbg !4554
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4555
    #dbg_value(ptr %add.ptr, !4538, !DIExpression(), !4539)
  %mul1.neg = mul i32 %div, -136, !dbg !4556
  %sub = add i32 %mul1.neg, %outlen, !dbg !4557
    #dbg_value(i32 %sub, !4540, !DIExpression(), !4539)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4558
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4558

if.then:                                          ; preds = %entry
  call void @shake256_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #4, !dbg !4560
    #dbg_value(i32 0, !4562, !DIExpression(), !4564)
  br label %for.cond, !dbg !4565

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4566
    #dbg_value(i32 %i.0, !4562, !DIExpression(), !4564)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4567
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4569

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4570
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4570
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4572
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4573
  %inc = add i32 %i.0, 1, !dbg !4574
    #dbg_value(i32 %inc, !4562, !DIExpression(), !4564)
  br label %for.cond, !dbg !4575, !llvm.loop !4576

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4578

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake256_ctx_release(ptr noundef nonnull %s) #4, !dbg !4578
  ret void, !dbg !4579
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4580 {
entry:
    #dbg_value(ptr %state, !4588, !DIExpression(), !4589)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4590
  store ptr %call, ptr %state, align 4, !dbg !4591
  %cmp = icmp eq ptr %call, null, !dbg !4592
  br i1 %cmp, label %if.then, label %if.end, !dbg !4592

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4594
  br label %if.end, !dbg !4596

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4597
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4598
  ret void, !dbg !4599
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4600 {
entry:
    #dbg_value(ptr %dest, !4605, !DIExpression(), !4606)
    #dbg_value(ptr %src, !4607, !DIExpression(), !4606)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4608
  store ptr %call, ptr %dest, align 4, !dbg !4609
  %cmp = icmp eq ptr %call, null, !dbg !4610
  br i1 %cmp, label %if.then, label %if.end, !dbg !4610

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4612
  br label %if.end, !dbg !4614

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4615
  %1 = load ptr, ptr %src, align 4, !dbg !4616
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4617
  ret void, !dbg !4618
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4619 {
entry:
    #dbg_value(ptr %state, !4620, !DIExpression(), !4621)
  %0 = load ptr, ptr %state, align 4, !dbg !4622
  call void @free(ptr noundef %0) #6, !dbg !4623
  ret void, !dbg !4624
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4625 {
entry:
    #dbg_value(ptr %state, !4628, !DIExpression(), !4629)
    #dbg_value(ptr %input, !4630, !DIExpression(), !4629)
    #dbg_value(i32 %inlen, !4631, !DIExpression(), !4629)
  %0 = load ptr, ptr %state, align 4, !dbg !4632
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4633
  ret void, !dbg !4634
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4635 {
entry:
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4638, !DIExpression(), !4639)
    #dbg_value(ptr %state, !4640, !DIExpression(), !4639)
    #dbg_declare(ptr %t, !4641, !DIExpression(), !4642)
  %0 = load ptr, ptr %state, align 4, !dbg !4643
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 6) #4, !dbg !4644
  %1 = load ptr, ptr %state, align 4, !dbg !4645
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 136) #4, !dbg !4646
  call void @sha3_256_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4647
    #dbg_value(i32 0, !4648, !DIExpression(), !4650)
  br label %for.cond, !dbg !4651

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4652
    #dbg_value(i32 %i.0, !4648, !DIExpression(), !4650)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4653
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4655

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4656
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4656
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4658
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4659
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4660
    #dbg_value(i32 %inc, !4648, !DIExpression(), !4650)
  br label %for.cond, !dbg !4661, !llvm.loop !4662

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4664
}

; Function Attrs: nounwind
define dso_local void @sha3_256(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4665 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4668, !DIExpression(), !4669)
    #dbg_value(ptr %input, !4670, !DIExpression(), !4669)
    #dbg_value(i32 %inlen, !4671, !DIExpression(), !4669)
    #dbg_declare(ptr %s, !4672, !DIExpression(), !4676)
    #dbg_declare(ptr %t, !4677, !DIExpression(), !4678)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4679
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 136) #4, !dbg !4680
    #dbg_value(i32 0, !4681, !DIExpression(), !4683)
  br label %for.cond, !dbg !4684

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4685
    #dbg_value(i32 %i.0, !4681, !DIExpression(), !4683)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4686
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4688

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4689
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4689
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4691
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4692
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4693
    #dbg_value(i32 %inc, !4681, !DIExpression(), !4683)
  br label %for.cond, !dbg !4694, !llvm.loop !4695

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4697
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4698 {
entry:
    #dbg_value(ptr %state, !4706, !DIExpression(), !4707)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4708
  store ptr %call, ptr %state, align 4, !dbg !4709
  %cmp = icmp eq ptr %call, null, !dbg !4710
  br i1 %cmp, label %if.then, label %if.end, !dbg !4710

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4712
  br label %if.end, !dbg !4714

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4715
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4716
  ret void, !dbg !4717
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4718 {
entry:
    #dbg_value(ptr %dest, !4723, !DIExpression(), !4724)
    #dbg_value(ptr %src, !4725, !DIExpression(), !4724)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4726
  store ptr %call, ptr %dest, align 4, !dbg !4727
  %cmp = icmp eq ptr %call, null, !dbg !4728
  br i1 %cmp, label %if.then, label %if.end, !dbg !4728

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4730
  br label %if.end, !dbg !4732

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4733
  %1 = load ptr, ptr %src, align 4, !dbg !4734
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4735
  ret void, !dbg !4736
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4737 {
entry:
    #dbg_value(ptr %state, !4740, !DIExpression(), !4741)
    #dbg_value(ptr %input, !4742, !DIExpression(), !4741)
    #dbg_value(i32 %inlen, !4743, !DIExpression(), !4741)
  %0 = load ptr, ptr %state, align 4, !dbg !4744
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 104, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4745
  ret void, !dbg !4746
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4747 {
entry:
    #dbg_value(ptr %state, !4748, !DIExpression(), !4749)
  %0 = load ptr, ptr %state, align 4, !dbg !4750
  call void @free(ptr noundef %0) #6, !dbg !4751
  ret void, !dbg !4752
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4753 {
entry:
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4756, !DIExpression(), !4757)
    #dbg_value(ptr %state, !4758, !DIExpression(), !4757)
    #dbg_declare(ptr %t, !4759, !DIExpression(), !4761)
  %0 = load ptr, ptr %state, align 4, !dbg !4762
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 104, i8 noundef zeroext 6) #4, !dbg !4763
  %1 = load ptr, ptr %state, align 4, !dbg !4764
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 104) #4, !dbg !4765
  call void @sha3_384_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4766
    #dbg_value(i32 0, !4767, !DIExpression(), !4769)
  br label %for.cond, !dbg !4770

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4771
    #dbg_value(i32 %i.0, !4767, !DIExpression(), !4769)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4772
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4774

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4775
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4775
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4777
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4778
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4779
    #dbg_value(i32 %inc, !4767, !DIExpression(), !4769)
  br label %for.cond, !dbg !4780, !llvm.loop !4781

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4783
}

; Function Attrs: nounwind
define dso_local void @sha3_384(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4784 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4785, !DIExpression(), !4786)
    #dbg_value(ptr %input, !4787, !DIExpression(), !4786)
    #dbg_value(i32 %inlen, !4788, !DIExpression(), !4786)
    #dbg_declare(ptr %s, !4789, !DIExpression(), !4790)
    #dbg_declare(ptr %t, !4791, !DIExpression(), !4792)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 104, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4793
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 104) #4, !dbg !4794
    #dbg_value(i32 0, !4795, !DIExpression(), !4797)
  br label %for.cond, !dbg !4798

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4799
    #dbg_value(i32 %i.0, !4795, !DIExpression(), !4797)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4800
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4802

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4803
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4803
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4805
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4806
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4807
    #dbg_value(i32 %inc, !4795, !DIExpression(), !4797)
  br label %for.cond, !dbg !4808, !llvm.loop !4809

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4811
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4812 {
entry:
    #dbg_value(ptr %state, !4820, !DIExpression(), !4821)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4822
  store ptr %call, ptr %state, align 4, !dbg !4823
  %cmp = icmp eq ptr %call, null, !dbg !4824
  br i1 %cmp, label %if.then, label %if.end, !dbg !4824

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4826
  br label %if.end, !dbg !4828

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4829
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4830
  ret void, !dbg !4831
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4832 {
entry:
    #dbg_value(ptr %dest, !4837, !DIExpression(), !4838)
    #dbg_value(ptr %src, !4839, !DIExpression(), !4838)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4840
  store ptr %call, ptr %dest, align 4, !dbg !4841
  %cmp = icmp eq ptr %call, null, !dbg !4842
  br i1 %cmp, label %if.then, label %if.end, !dbg !4842

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4844
  br label %if.end, !dbg !4846

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4847
  %1 = load ptr, ptr %src, align 4, !dbg !4848
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4849
  ret void, !dbg !4850
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4851 {
entry:
    #dbg_value(ptr %state, !4854, !DIExpression(), !4855)
    #dbg_value(ptr %input, !4856, !DIExpression(), !4855)
    #dbg_value(i32 %inlen, !4857, !DIExpression(), !4855)
  %0 = load ptr, ptr %state, align 4, !dbg !4858
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 72, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4859
  ret void, !dbg !4860
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4861 {
entry:
    #dbg_value(ptr %state, !4862, !DIExpression(), !4863)
  %0 = load ptr, ptr %state, align 4, !dbg !4864
  call void @free(ptr noundef %0) #6, !dbg !4865
  ret void, !dbg !4866
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4867 {
entry:
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4870, !DIExpression(), !4871)
    #dbg_value(ptr %state, !4872, !DIExpression(), !4871)
    #dbg_declare(ptr %t, !4873, !DIExpression(), !4877)
  %0 = load ptr, ptr %state, align 4, !dbg !4878
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 72, i8 noundef zeroext 6) #4, !dbg !4879
  %1 = load ptr, ptr %state, align 4, !dbg !4880
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 72) #4, !dbg !4881
  call void @sha3_512_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4882
    #dbg_value(i32 0, !4883, !DIExpression(), !4885)
  br label %for.cond, !dbg !4886

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4887
    #dbg_value(i32 %i.0, !4883, !DIExpression(), !4885)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4888
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4890

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4891
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4891
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4893
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4894
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4895
    #dbg_value(i32 %inc, !4883, !DIExpression(), !4885)
  br label %for.cond, !dbg !4896, !llvm.loop !4897

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4899
}

; Function Attrs: nounwind
define dso_local void @sha3_512(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4900 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4901, !DIExpression(), !4902)
    #dbg_value(ptr %input, !4903, !DIExpression(), !4902)
    #dbg_value(i32 %inlen, !4904, !DIExpression(), !4902)
    #dbg_declare(ptr %s, !4905, !DIExpression(), !4906)
    #dbg_declare(ptr %t, !4907, !DIExpression(), !4908)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 72, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4909
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 72) #4, !dbg !4910
    #dbg_value(i32 0, !4911, !DIExpression(), !4913)
  br label %for.cond, !dbg !4914

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4915
    #dbg_value(i32 %i.0, !4911, !DIExpression(), !4913)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4916
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4918

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4919
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4919
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4921
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4922
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4923
    #dbg_value(i32 %inc, !4911, !DIExpression(), !4913)
  br label %for.cond, !dbg !4924, !llvm.loop !4925

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4927
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !4928 {
entry:
  %skey = alloca [22 x i64], align 8
    #dbg_value(ptr %r, !4936, !DIExpression(), !4937)
    #dbg_value(ptr %key, !4938, !DIExpression(), !4937)
    #dbg_declare(ptr %skey, !4939, !DIExpression(), !4943)
  %call = call dereferenceable_or_null(704) ptr @malloc(i32 noundef 704) #7, !dbg !4944
  store ptr %call, ptr %r, align 4, !dbg !4945
  %cmp = icmp eq ptr %call, null, !dbg !4946
  br i1 %cmp, label %if.then, label %if.end, !dbg !4946

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4948
  br label %if.end, !dbg !4950

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 16) #4, !dbg !4951
  %0 = load ptr, ptr %r, align 4, !dbg !4952
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 10) #4, !dbg !4953
  ret void, !dbg !4954
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %comp_skey, ptr noundef %key, i32 noundef range(i32 16, 33) %key_len) unnamed_addr #0 !dbg !4955 {
entry:
  %skey = alloca [60 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %comp_skey, !4958, !DIExpression(), !4959)
    #dbg_value(ptr %key, !4960, !DIExpression(), !4959)
    #dbg_value(i32 %key_len, !4961, !DIExpression(), !4959)
    #dbg_declare(ptr %skey, !4962, !DIExpression(), !4966)
  %0 = and i32 %key_len, 60, !dbg !4967
    #dbg_value(i32 %key_len, !4968, !DIExpression(DW_OP_constu, 16, DW_OP_minus, DW_OP_constu, 2, DW_OP_shr, DW_OP_plus_uconst, 10, DW_OP_stack_value), !4959)
  %shr1 = lshr i32 %key_len, 2, !dbg !4969
    #dbg_value(i32 %shr1, !4970, !DIExpression(), !4959)
  %shl = add nuw nsw i32 %0, 28, !dbg !4967
    #dbg_value(i32 %shl, !4971, !DIExpression(), !4959)
  %shr3 = lshr i32 %key_len, 2, !dbg !4972
  call fastcc void @br_range_dec32le(ptr noundef nonnull %skey, i32 noundef %shr3, ptr noundef %key) #4, !dbg !4973
  %shr4 = lshr i32 %key_len, 2, !dbg !4974
  %sub5 = add nsw i32 %shr4, -1, !dbg !4975
  %arrayidx = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub5, !dbg !4976
  %1 = load i32, ptr %arrayidx, align 4, !dbg !4976
    #dbg_value(i32 %1, !4977, !DIExpression(), !4959)
    #dbg_value(i32 %shr1, !4978, !DIExpression(), !4959)
    #dbg_value(i32 0, !4979, !DIExpression(), !4959)
    #dbg_value(i32 0, !4980, !DIExpression(), !4959)
  br label %for.cond, !dbg !4981

for.cond:                                         ; preds = %if.end16, %entry
  %i.0 = phi i32 [ %shr1, %entry ], [ %inc26, %if.end16 ], !dbg !4983
  %j.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end16 ], !dbg !4984
  %k.0 = phi i32 [ 0, %entry ], [ %spec.select1, %if.end16 ], !dbg !4984
  %tmp.0 = phi i32 [ %1, %entry ], [ %xor19, %if.end16 ], !dbg !4959
    #dbg_value(i32 %tmp.0, !4977, !DIExpression(), !4959)
    #dbg_value(i32 %k.0, !4980, !DIExpression(), !4959)
    #dbg_value(i32 %j.0, !4979, !DIExpression(), !4959)
    #dbg_value(i32 %i.0, !4978, !DIExpression(), !4959)
  %exitcond = icmp ne i32 %i.0, %shl, !dbg !4985
  br i1 %exitcond, label %for.body, label %for.cond27.preheader, !dbg !4987

for.cond27.preheader:                             ; preds = %for.cond
  br label %for.cond27, !dbg !4988

for.body:                                         ; preds = %for.cond
  %cmp6 = icmp eq i32 %j.0, 0, !dbg !4990
  br i1 %cmp6, label %if.then, label %if.else, !dbg !4990

if.then:                                          ; preds = %for.body
  %2 = shl i32 %tmp.0, 24, !dbg !4993
  %3 = lshr i32 %tmp.0, 8, !dbg !4993
  %4 = or i32 %2, %3, !dbg !4993
    #dbg_value(i32 %4, !4977, !DIExpression(), !4959)
  %call = call fastcc i32 @sub_word(i32 noundef %4) #4, !dbg !4995
  %arrayidx9 = getelementptr inbounds nuw [10 x i8], ptr @Rcon, i32 0, i32 %k.0, !dbg !4996
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !4996
  %conv = zext i8 %5 to i32, !dbg !4996
  %xor = xor i32 %call, %conv, !dbg !4997
    #dbg_value(i32 %xor, !4977, !DIExpression(), !4959)
  br label %if.end16, !dbg !4998

if.else:                                          ; preds = %for.body
  %cmp10 = icmp samesign ugt i32 %key_len, 27, !dbg !4999
  %cmp12 = icmp eq i32 %j.0, 4
  %or.cond = and i1 %cmp10, %cmp12, !dbg !5001
  br i1 %or.cond, label %if.then14, label %if.end16, !dbg !5001

if.then14:                                        ; preds = %if.else
  %call15 = call fastcc i32 @sub_word(i32 noundef %tmp.0) #4, !dbg !5002
    #dbg_value(i32 %call15, !4977, !DIExpression(), !4959)
  br label %if.end16, !dbg !5004

if.end16:                                         ; preds = %if.else, %if.then14, %if.then
  %tmp.2 = phi i32 [ %xor, %if.then ], [ %call15, %if.then14 ], [ %tmp.0, %if.else ], !dbg !5005
    #dbg_value(i32 %tmp.2, !4977, !DIExpression(), !4959)
  %sub17 = sub nuw nsw i32 %i.0, %shr1, !dbg !5006
  %arrayidx18 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub17, !dbg !5007
  %6 = load i32, ptr %arrayidx18, align 4, !dbg !5007
  %xor19 = xor i32 %tmp.2, %6, !dbg !5008
    #dbg_value(i32 %xor19, !4977, !DIExpression(), !4959)
  %arrayidx20 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %i.0, !dbg !5009
  store i32 %xor19, ptr %arrayidx20, align 4, !dbg !5010
  %inc = add i32 %j.0, 1, !dbg !5011
    #dbg_value(i32 %inc, !4979, !DIExpression(), !4959)
  %cmp21 = icmp eq i32 %inc, %shr1, !dbg !5013
  %spec.select = select i1 %cmp21, i32 0, i32 %inc, !dbg !5013
  %inc24 = zext i1 %cmp21 to i32, !dbg !5013
  %spec.select1 = add i32 %k.0, %inc24, !dbg !5013
    #dbg_value(i32 %spec.select1, !4980, !DIExpression(), !4959)
    #dbg_value(i32 %spec.select, !4979, !DIExpression(), !4959)
  %inc26 = add nuw nsw i32 %i.0, 1, !dbg !5014
    #dbg_value(i32 %inc26, !4978, !DIExpression(), !4959)
  br label %for.cond, !dbg !5015, !llvm.loop !5016

for.cond27:                                       ; preds = %for.cond27.preheader, %for.body30
  %i.1 = phi i32 [ %add73, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !5018
  %j.2 = phi i32 [ %add74, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !5018
    #dbg_value(i32 %j.2, !4979, !DIExpression(), !4959)
    #dbg_value(i32 %i.1, !4978, !DIExpression(), !4959)
  %cmp28 = icmp samesign ult i32 %i.1, %shl, !dbg !5019
  br i1 %cmp28, label %for.body30, label %for.end75, !dbg !4988

for.body30:                                       ; preds = %for.cond27
    #dbg_declare(ptr %q, !5021, !DIExpression(), !5026)
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5027
  %add.ptr = getelementptr inbounds nuw i32, ptr %skey, i32 %i.1, !dbg !5028
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q, ptr noundef nonnull %arrayidx32, ptr noundef nonnull %add.ptr) #4, !dbg !5029
  %7 = load i64, ptr %q, align 8, !dbg !5030
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5031
  store i64 %7, ptr %arrayidx35, align 8, !dbg !5032
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5033
  store i64 %7, ptr %arrayidx37, align 8, !dbg !5034
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5035
  store i64 %7, ptr %arrayidx39, align 8, !dbg !5036
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5037
  %8 = load i64, ptr %arrayidx40, align 8, !dbg !5037
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5038
  store i64 %8, ptr %arrayidx41, align 8, !dbg !5039
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5040
  store i64 %8, ptr %arrayidx43, align 8, !dbg !5041
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5042
  store i64 %8, ptr %arrayidx45, align 8, !dbg !5043
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5044
  %9 = load i64, ptr %q, align 8, !dbg !5045
  %and = and i64 %9, 1229782938247303441, !dbg !5046
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5047
  %10 = load i64, ptr %arrayidx48, align 8, !dbg !5047
  %and49 = and i64 %10, 2459565876494606882, !dbg !5048
  %or50 = or disjoint i64 %and, %and49, !dbg !5049
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5050
  %11 = load i64, ptr %arrayidx51, align 8, !dbg !5050
  %and52 = and i64 %11, 4919131752989213764, !dbg !5051
  %or53 = or disjoint i64 %or50, %and52, !dbg !5052
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5053
  %12 = load i64, ptr %arrayidx54, align 8, !dbg !5053
  %and55 = and i64 %12, -8608480567731124088, !dbg !5054
  %or56 = or disjoint i64 %or53, %and55, !dbg !5055
  %arrayidx58 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %j.2, !dbg !5056
  store i64 %or56, ptr %arrayidx58, align 8, !dbg !5057
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5058
  %13 = load i64, ptr %arrayidx59, align 8, !dbg !5058
  %and60 = and i64 %13, 1229782938247303441, !dbg !5059
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5060
  %14 = load i64, ptr %arrayidx61, align 8, !dbg !5060
  %and62 = and i64 %14, 2459565876494606882, !dbg !5061
  %or63 = or disjoint i64 %and60, %and62, !dbg !5062
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5063
  %15 = load i64, ptr %arrayidx64, align 8, !dbg !5063
  %and65 = and i64 %15, 4919131752989213764, !dbg !5064
  %or66 = or disjoint i64 %or63, %and65, !dbg !5065
  %arrayidx67 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5066
  %16 = load i64, ptr %arrayidx67, align 8, !dbg !5066
  %and68 = and i64 %16, -8608480567731124088, !dbg !5067
  %or69 = or disjoint i64 %or66, %and68, !dbg !5068
  %add70 = or disjoint i32 %j.2, 1, !dbg !5069
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %add70, !dbg !5070
  store i64 %or69, ptr %arrayidx71, align 8, !dbg !5071
  %add73 = add nuw nsw i32 %i.1, 4, !dbg !5072
    #dbg_value(i32 %add73, !4978, !DIExpression(), !4959)
  %add74 = add nuw nsw i32 %j.2, 2, !dbg !5073
    #dbg_value(i32 %add74, !4979, !DIExpression(), !4959)
  br label %for.cond27, !dbg !5074, !llvm.loop !5075

for.end75:                                        ; preds = %for.cond27
  ret void, !dbg !5077
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_skey_expand(ptr noundef %skey, ptr noundef nonnull %comp_skey, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5078 {
entry:
    #dbg_value(ptr %skey, !5081, !DIExpression(), !5082)
    #dbg_value(ptr %comp_skey, !5083, !DIExpression(), !5082)
    #dbg_value(i32 %nrounds, !5084, !DIExpression(), !5082)
  %add = shl nuw nsw i32 %nrounds, 1, !dbg !5085
  %shl = add nuw nsw i32 %add, 2, !dbg !5085
    #dbg_value(i32 %shl, !5086, !DIExpression(), !5082)
    #dbg_value(i32 0, !5087, !DIExpression(), !5082)
    #dbg_value(i32 0, !5088, !DIExpression(), !5082)
  br label %for.cond, !dbg !5089

for.cond:                                         ; preds = %for.body, %entry
  %u.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5091
  %v.0 = phi i32 [ 0, %entry ], [ %add21, %for.body ], !dbg !5091
    #dbg_value(i32 %v.0, !5088, !DIExpression(), !5082)
    #dbg_value(i32 %u.0, !5087, !DIExpression(), !5082)
  %exitcond = icmp ne i32 %u.0, %shl, !dbg !5092
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5094

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %u.0, !dbg !5095
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5095
    #dbg_value(i64 %0, !5097, !DIExpression(), !5098)
    #dbg_value(i64 %0, !5099, !DIExpression(), !5098)
    #dbg_value(i64 %0, !5100, !DIExpression(), !5098)
    #dbg_value(i64 %0, !5101, !DIExpression(), !5098)
  %and = and i64 %0, 1229782938247303441, !dbg !5102
    #dbg_value(i64 %and, !5101, !DIExpression(), !5098)
    #dbg_value(i64 %0, !5100, !DIExpression(DW_OP_constu, 2459565876494606882, DW_OP_and, DW_OP_stack_value), !5098)
    #dbg_value(i64 %0, !5099, !DIExpression(DW_OP_constu, 4919131752989213764, DW_OP_and, DW_OP_stack_value), !5098)
    #dbg_value(i64 %0, !5097, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !5098)
  %and1 = lshr i64 %0, 1, !dbg !5103
  %shr = and i64 %and1, 1229782938247303441, !dbg !5103
    #dbg_value(i64 %shr, !5100, !DIExpression(), !5098)
  %and2 = lshr i64 %0, 2, !dbg !5104
  %shr4 = and i64 %and2, 1229782938247303441, !dbg !5104
    #dbg_value(i64 %shr4, !5099, !DIExpression(), !5098)
  %and3 = lshr i64 %0, 3, !dbg !5105
  %shr5 = and i64 %and3, 1229782938247303441, !dbg !5105
    #dbg_value(i64 %shr5, !5097, !DIExpression(), !5098)
  %sub = mul nuw i64 %and, 15, !dbg !5106
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %skey, i32 %v.0, !dbg !5107
  store i64 %sub, ptr %arrayidx8, align 8, !dbg !5108
  %sub10 = mul nuw i64 %shr, 15, !dbg !5109
  %add11 = or disjoint i32 %v.0, 1, !dbg !5110
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %skey, i32 %add11, !dbg !5111
  store i64 %sub10, ptr %arrayidx12, align 8, !dbg !5112
  %sub14 = mul nuw i64 %shr4, 15, !dbg !5113
  %add15 = or disjoint i32 %v.0, 2, !dbg !5114
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %skey, i32 %add15, !dbg !5115
  store i64 %sub14, ptr %arrayidx16, align 8, !dbg !5116
  %sub18 = mul nuw i64 %shr5, 15, !dbg !5117
  %add19 = or disjoint i32 %v.0, 3, !dbg !5118
  %arrayidx20 = getelementptr inbounds nuw i64, ptr %skey, i32 %add19, !dbg !5119
  store i64 %sub18, ptr %arrayidx20, align 8, !dbg !5120
  %inc = add nuw nsw i32 %u.0, 1, !dbg !5121
    #dbg_value(i32 %inc, !5087, !DIExpression(), !5082)
  %add21 = add nuw nsw i32 %v.0, 4, !dbg !5122
    #dbg_value(i32 %add21, !5088, !DIExpression(), !5082)
  br label %for.cond, !dbg !5123, !llvm.loop !5124

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5126
}

; Function Attrs: nounwind
define internal fastcc void @br_range_dec32le(ptr noundef nonnull %v, i32 noundef range(i32 3, 17) %num, ptr noundef %src) unnamed_addr #0 !dbg !5127 {
entry:
    #dbg_value(ptr %v, !5131, !DIExpression(), !5132)
    #dbg_value(i32 %num, !5133, !DIExpression(), !5132)
    #dbg_value(ptr %src, !5134, !DIExpression(), !5132)
  br label %while.cond, !dbg !5135

while.cond:                                       ; preds = %while.body, %entry
  %src.addr.0 = phi ptr [ %src, %entry ], [ %add.ptr, %while.body ]
  %num.addr.0 = phi i32 [ %num, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
    #dbg_value(ptr %v.addr.0, !5131, !DIExpression(), !5132)
    #dbg_value(i32 %num.addr.0, !5133, !DIExpression(), !5132)
    #dbg_value(ptr %src.addr.0, !5134, !DIExpression(), !5132)
    #dbg_value(i32 %num.addr.0, !5133, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5132)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5136
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5135

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5137
    #dbg_value(i32 %dec, !5133, !DIExpression(), !5132)
  %call = call fastcc i32 @br_dec32le(ptr noundef %src.addr.0) #4, !dbg !5138
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5140
    #dbg_value(ptr %incdec.ptr, !5131, !DIExpression(), !5132)
  store i32 %call, ptr %v.addr.0, align 4, !dbg !5141
  %add.ptr = getelementptr inbounds nuw i8, ptr %src.addr.0, i32 4, !dbg !5142
    #dbg_value(ptr %add.ptr, !5134, !DIExpression(), !5132)
  br label %while.cond, !dbg !5135, !llvm.loop !5143

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5145
}

; Function Attrs: nounwind
define internal fastcc i32 @sub_word(i32 noundef %x) unnamed_addr #0 !dbg !5146 {
entry:
  %q = alloca [8 x i64], align 8
    #dbg_value(i32 %x, !5149, !DIExpression(), !5150)
    #dbg_declare(ptr %q, !5151, !DIExpression(), !5152)
  %call = call ptr @memset(ptr noundef nonnull %q, i32 noundef 0, i32 noundef 64) #6, !dbg !5153
  %conv = zext i32 %x to i64, !dbg !5154
  store i64 %conv, ptr %q, align 8, !dbg !5155
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5156
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5157
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5158
  %0 = load i64, ptr %q, align 8, !dbg !5159
  %conv5 = trunc i64 %0 to i32, !dbg !5160
  ret i32 %conv5, !dbg !5161
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q0, ptr noundef nonnull %q1, ptr noundef nonnull %w) unnamed_addr #0 !dbg !5162 {
entry:
    #dbg_value(ptr %q0, !5167, !DIExpression(), !5168)
    #dbg_value(ptr %q1, !5169, !DIExpression(), !5168)
    #dbg_value(ptr %w, !5170, !DIExpression(), !5168)
  %0 = load i32, ptr %w, align 4, !dbg !5171
  %conv = zext i32 %0 to i64, !dbg !5171
    #dbg_value(i64 %conv, !5172, !DIExpression(), !5168)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5173
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !5173
  %conv2 = zext i32 %1 to i64, !dbg !5173
    #dbg_value(i64 %conv2, !5174, !DIExpression(), !5168)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5175
  %2 = load i32, ptr %arrayidx3, align 4, !dbg !5175
  %conv4 = zext i32 %2 to i64, !dbg !5175
    #dbg_value(i64 %conv4, !5176, !DIExpression(), !5168)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5177
  %3 = load i32, ptr %arrayidx5, align 4, !dbg !5177
  %conv6 = zext i32 %3 to i64, !dbg !5177
    #dbg_value(i64 %conv6, !5178, !DIExpression(), !5168)
  %shl = shl nuw nsw i64 %conv, 16, !dbg !5179
  %or = or i64 %shl, %conv, !dbg !5180
    #dbg_value(i64 %or, !5172, !DIExpression(), !5168)
  %shl7 = shl nuw nsw i64 %conv2, 16, !dbg !5181
  %or8 = or i64 %shl7, %conv2, !dbg !5182
    #dbg_value(i64 %or8, !5174, !DIExpression(), !5168)
  %shl9 = shl nuw nsw i64 %conv4, 16, !dbg !5183
  %or10 = or i64 %shl9, %conv4, !dbg !5184
    #dbg_value(i64 %or10, !5176, !DIExpression(), !5168)
  %shl11 = shl nuw nsw i64 %conv6, 16, !dbg !5185
  %or12 = or i64 %shl11, %conv6, !dbg !5186
    #dbg_value(i64 %or12, !5178, !DIExpression(), !5168)
  %and = and i64 %or, 281470681808895, !dbg !5187
    #dbg_value(i64 %and, !5172, !DIExpression(), !5168)
  %and13 = and i64 %or8, 281470681808895, !dbg !5188
    #dbg_value(i64 %and13, !5174, !DIExpression(), !5168)
  %and14 = and i64 %or10, 281470681808895, !dbg !5189
    #dbg_value(i64 %and14, !5176, !DIExpression(), !5168)
  %and15 = and i64 %or12, 281470681808895, !dbg !5190
    #dbg_value(i64 %and15, !5178, !DIExpression(), !5168)
  %shl16 = shl nuw nsw i64 %and, 8, !dbg !5191
  %or17 = or i64 %and, %shl16, !dbg !5192
    #dbg_value(i64 %or17, !5172, !DIExpression(), !5168)
  %shl18 = shl nuw nsw i64 %and13, 8, !dbg !5193
  %or19 = or i64 %and13, %shl18, !dbg !5194
    #dbg_value(i64 %or19, !5174, !DIExpression(), !5168)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5176, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5168)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5178, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5168)
  %and24 = and i64 %or17, 71777214294589695, !dbg !5195
    #dbg_value(i64 %and24, !5172, !DIExpression(), !5168)
  %and25 = and i64 %or19, 71777214294589695, !dbg !5196
    #dbg_value(i64 %and25, !5174, !DIExpression(), !5168)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5176, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5168)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5178, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5168)
  %4 = shl nuw i64 %and14, 16, !dbg !5197
  %5 = shl nuw nsw i64 %and14, 8, !dbg !5197
  %and26 = or i64 %4, %5, !dbg !5197
  %shl28 = and i64 %and26, -71777214294589696, !dbg !5197
  %or29 = or disjoint i64 %and24, %shl28, !dbg !5198
  store i64 %or29, ptr %q0, align 8, !dbg !5199
  %6 = shl nuw i64 %and15, 16, !dbg !5200
  %7 = shl nuw nsw i64 %and15, 8, !dbg !5200
  %and27 = or i64 %6, %7, !dbg !5200
  %shl30 = and i64 %and27, -71777214294589696, !dbg !5200
  %or31 = or disjoint i64 %and25, %shl30, !dbg !5201
  store i64 %or31, ptr %q1, align 8, !dbg !5202
  ret void, !dbg !5203
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5204 {
entry:
    #dbg_value(ptr %q, !5205, !DIExpression(), !5206)
  %0 = load i64, ptr %q, align 8, !dbg !5207
    #dbg_value(i64 %0, !5209, !DIExpression(), !5210)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5207
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5207
    #dbg_value(i64 %1, !5211, !DIExpression(), !5210)
  %and = and i64 %0, 6148914691236517205, !dbg !5207
  %and2 = shl i64 %1, 1, !dbg !5207
  %shl = and i64 %and2, -6148914691236517206, !dbg !5207
  %or = or disjoint i64 %and, %shl, !dbg !5207
  store i64 %or, ptr %q, align 8, !dbg !5207
  %and4 = lshr i64 %0, 1, !dbg !5207
  %shr = and i64 %and4, 6148914691236517205, !dbg !5207
  %and5 = and i64 %1, -6148914691236517206, !dbg !5207
  %or6 = or disjoint i64 %shr, %and5, !dbg !5207
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5207
  store i64 %or6, ptr %arrayidx7, align 8, !dbg !5207
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5212
  %2 = load i64, ptr %arrayidx11, align 8, !dbg !5212
    #dbg_value(i64 %2, !5214, !DIExpression(), !5215)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5212
  %3 = load i64, ptr %arrayidx12, align 8, !dbg !5212
    #dbg_value(i64 %3, !5216, !DIExpression(), !5215)
  %and13 = and i64 %2, 6148914691236517205, !dbg !5212
  %and14 = shl i64 %3, 1, !dbg !5212
  %shl15 = and i64 %and14, -6148914691236517206, !dbg !5212
  %or16 = or disjoint i64 %and13, %shl15, !dbg !5212
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5212
  store i64 %or16, ptr %arrayidx17, align 8, !dbg !5212
  %and18 = lshr i64 %2, 1, !dbg !5212
  %shr19 = and i64 %and18, 6148914691236517205, !dbg !5212
  %and20 = and i64 %3, -6148914691236517206, !dbg !5212
  %or21 = or disjoint i64 %shr19, %and20, !dbg !5212
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5212
  store i64 %or21, ptr %arrayidx22, align 8, !dbg !5212
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5217
  %4 = load i64, ptr %arrayidx27, align 8, !dbg !5217
    #dbg_value(i64 %4, !5219, !DIExpression(), !5220)
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5217
  %5 = load i64, ptr %arrayidx28, align 8, !dbg !5217
    #dbg_value(i64 %5, !5221, !DIExpression(), !5220)
  %and29 = and i64 %4, 6148914691236517205, !dbg !5217
  %and30 = shl i64 %5, 1, !dbg !5217
  %shl31 = and i64 %and30, -6148914691236517206, !dbg !5217
  %or32 = or disjoint i64 %and29, %shl31, !dbg !5217
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5217
  store i64 %or32, ptr %arrayidx33, align 8, !dbg !5217
  %and34 = lshr i64 %4, 1, !dbg !5217
  %shr35 = and i64 %and34, 6148914691236517205, !dbg !5217
  %and36 = and i64 %5, -6148914691236517206, !dbg !5217
  %or37 = or disjoint i64 %shr35, %and36, !dbg !5217
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5217
  store i64 %or37, ptr %arrayidx38, align 8, !dbg !5217
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5222
  %6 = load i64, ptr %arrayidx43, align 8, !dbg !5222
    #dbg_value(i64 %6, !5224, !DIExpression(), !5225)
  %arrayidx44 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5222
  %7 = load i64, ptr %arrayidx44, align 8, !dbg !5222
    #dbg_value(i64 %7, !5226, !DIExpression(), !5225)
  %and45 = and i64 %6, 6148914691236517205, !dbg !5222
  %and46 = shl i64 %7, 1, !dbg !5222
  %shl47 = and i64 %and46, -6148914691236517206, !dbg !5222
  %or48 = or disjoint i64 %and45, %shl47, !dbg !5222
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5222
  store i64 %or48, ptr %arrayidx49, align 8, !dbg !5222
  %and50 = lshr i64 %6, 1, !dbg !5222
  %shr51 = and i64 %and50, 6148914691236517205, !dbg !5222
  %and52 = and i64 %7, -6148914691236517206, !dbg !5222
  %or53 = or disjoint i64 %shr51, %and52, !dbg !5222
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5222
  store i64 %or53, ptr %arrayidx54, align 8, !dbg !5222
  %8 = load i64, ptr %q, align 8, !dbg !5227
    #dbg_value(i64 %8, !5229, !DIExpression(), !5230)
  %arrayidx60 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5227
  %9 = load i64, ptr %arrayidx60, align 8, !dbg !5227
    #dbg_value(i64 %9, !5231, !DIExpression(), !5230)
  %and61 = and i64 %8, 3689348814741910323, !dbg !5227
  %and62 = shl i64 %9, 2, !dbg !5227
  %shl63 = and i64 %and62, -3689348814741910324, !dbg !5227
  %or64 = or disjoint i64 %and61, %shl63, !dbg !5227
  store i64 %or64, ptr %q, align 8, !dbg !5227
  %and66 = lshr i64 %8, 2, !dbg !5227
  %shr67 = and i64 %and66, 3689348814741910323, !dbg !5227
  %and68 = and i64 %9, -3689348814741910324, !dbg !5227
  %or69 = or disjoint i64 %shr67, %and68, !dbg !5227
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5227
  store i64 %or69, ptr %arrayidx70, align 8, !dbg !5227
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5232
  %10 = load i64, ptr %arrayidx75, align 8, !dbg !5232
    #dbg_value(i64 %10, !5234, !DIExpression(), !5235)
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5232
  %11 = load i64, ptr %arrayidx76, align 8, !dbg !5232
    #dbg_value(i64 %11, !5236, !DIExpression(), !5235)
  %and77 = and i64 %10, 3689348814741910323, !dbg !5232
  %and78 = shl i64 %11, 2, !dbg !5232
  %shl79 = and i64 %and78, -3689348814741910324, !dbg !5232
  %or80 = or disjoint i64 %and77, %shl79, !dbg !5232
  %arrayidx81 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5232
  store i64 %or80, ptr %arrayidx81, align 8, !dbg !5232
  %and82 = lshr i64 %10, 2, !dbg !5232
  %shr83 = and i64 %and82, 3689348814741910323, !dbg !5232
  %and84 = and i64 %11, -3689348814741910324, !dbg !5232
  %or85 = or disjoint i64 %shr83, %and84, !dbg !5232
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5232
  store i64 %or85, ptr %arrayidx86, align 8, !dbg !5232
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5237
  %12 = load i64, ptr %arrayidx91, align 8, !dbg !5237
    #dbg_value(i64 %12, !5239, !DIExpression(), !5240)
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5237
  %13 = load i64, ptr %arrayidx92, align 8, !dbg !5237
    #dbg_value(i64 %13, !5241, !DIExpression(), !5240)
  %and93 = and i64 %12, 3689348814741910323, !dbg !5237
  %and94 = shl i64 %13, 2, !dbg !5237
  %shl95 = and i64 %and94, -3689348814741910324, !dbg !5237
  %or96 = or disjoint i64 %and93, %shl95, !dbg !5237
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5237
  store i64 %or96, ptr %arrayidx97, align 8, !dbg !5237
  %and98 = lshr i64 %12, 2, !dbg !5237
  %shr99 = and i64 %and98, 3689348814741910323, !dbg !5237
  %and100 = and i64 %13, -3689348814741910324, !dbg !5237
  %or101 = or disjoint i64 %shr99, %and100, !dbg !5237
  %arrayidx102 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5237
  store i64 %or101, ptr %arrayidx102, align 8, !dbg !5237
  %arrayidx107 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5242
  %14 = load i64, ptr %arrayidx107, align 8, !dbg !5242
    #dbg_value(i64 %14, !5244, !DIExpression(), !5245)
  %arrayidx108 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5242
  %15 = load i64, ptr %arrayidx108, align 8, !dbg !5242
    #dbg_value(i64 %15, !5246, !DIExpression(), !5245)
  %and109 = and i64 %14, 3689348814741910323, !dbg !5242
  %and110 = shl i64 %15, 2, !dbg !5242
  %shl111 = and i64 %and110, -3689348814741910324, !dbg !5242
  %or112 = or disjoint i64 %and109, %shl111, !dbg !5242
  %arrayidx113 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5242
  store i64 %or112, ptr %arrayidx113, align 8, !dbg !5242
  %and114 = lshr i64 %14, 2, !dbg !5242
  %shr115 = and i64 %and114, 3689348814741910323, !dbg !5242
  %and116 = and i64 %15, -3689348814741910324, !dbg !5242
  %or117 = or disjoint i64 %shr115, %and116, !dbg !5242
  %arrayidx118 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5242
  store i64 %or117, ptr %arrayidx118, align 8, !dbg !5242
  %16 = load i64, ptr %q, align 8, !dbg !5247
    #dbg_value(i64 %16, !5249, !DIExpression(), !5250)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5247
  %17 = load i64, ptr %arrayidx124, align 8, !dbg !5247
    #dbg_value(i64 %17, !5251, !DIExpression(), !5250)
  %and125 = and i64 %16, 1085102592571150095, !dbg !5247
  %and126 = shl i64 %17, 4, !dbg !5247
  %shl127 = and i64 %and126, -1085102592571150096, !dbg !5247
  %or128 = or disjoint i64 %and125, %shl127, !dbg !5247
  store i64 %or128, ptr %q, align 8, !dbg !5247
  %and130 = lshr i64 %16, 4, !dbg !5247
  %shr131 = and i64 %and130, 1085102592571150095, !dbg !5247
  %and132 = and i64 %17, -1085102592571150096, !dbg !5247
  %or133 = or disjoint i64 %shr131, %and132, !dbg !5247
  %arrayidx134 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5247
  store i64 %or133, ptr %arrayidx134, align 8, !dbg !5247
  %arrayidx139 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5252
  %18 = load i64, ptr %arrayidx139, align 8, !dbg !5252
    #dbg_value(i64 %18, !5254, !DIExpression(), !5255)
  %arrayidx140 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5252
  %19 = load i64, ptr %arrayidx140, align 8, !dbg !5252
    #dbg_value(i64 %19, !5256, !DIExpression(), !5255)
  %and141 = and i64 %18, 1085102592571150095, !dbg !5252
  %and142 = shl i64 %19, 4, !dbg !5252
  %shl143 = and i64 %and142, -1085102592571150096, !dbg !5252
  %or144 = or disjoint i64 %and141, %shl143, !dbg !5252
  %arrayidx145 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5252
  store i64 %or144, ptr %arrayidx145, align 8, !dbg !5252
  %and146 = lshr i64 %18, 4, !dbg !5252
  %shr147 = and i64 %and146, 1085102592571150095, !dbg !5252
  %and148 = and i64 %19, -1085102592571150096, !dbg !5252
  %or149 = or disjoint i64 %shr147, %and148, !dbg !5252
  %arrayidx150 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5252
  store i64 %or149, ptr %arrayidx150, align 8, !dbg !5252
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5257
  %20 = load i64, ptr %arrayidx155, align 8, !dbg !5257
    #dbg_value(i64 %20, !5259, !DIExpression(), !5260)
  %arrayidx156 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5257
  %21 = load i64, ptr %arrayidx156, align 8, !dbg !5257
    #dbg_value(i64 %21, !5261, !DIExpression(), !5260)
  %and157 = and i64 %20, 1085102592571150095, !dbg !5257
  %and158 = shl i64 %21, 4, !dbg !5257
  %shl159 = and i64 %and158, -1085102592571150096, !dbg !5257
  %or160 = or disjoint i64 %and157, %shl159, !dbg !5257
  %arrayidx161 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5257
  store i64 %or160, ptr %arrayidx161, align 8, !dbg !5257
  %and162 = lshr i64 %20, 4, !dbg !5257
  %shr163 = and i64 %and162, 1085102592571150095, !dbg !5257
  %and164 = and i64 %21, -1085102592571150096, !dbg !5257
  %or165 = or disjoint i64 %shr163, %and164, !dbg !5257
  %arrayidx166 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5257
  store i64 %or165, ptr %arrayidx166, align 8, !dbg !5257
  %arrayidx171 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5262
  %22 = load i64, ptr %arrayidx171, align 8, !dbg !5262
    #dbg_value(i64 %22, !5264, !DIExpression(), !5265)
  %arrayidx172 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5262
  %23 = load i64, ptr %arrayidx172, align 8, !dbg !5262
    #dbg_value(i64 %23, !5266, !DIExpression(), !5265)
  %and173 = and i64 %22, 1085102592571150095, !dbg !5262
  %and174 = shl i64 %23, 4, !dbg !5262
  %shl175 = and i64 %and174, -1085102592571150096, !dbg !5262
  %or176 = or disjoint i64 %and173, %shl175, !dbg !5262
  %arrayidx177 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5262
  store i64 %or176, ptr %arrayidx177, align 8, !dbg !5262
  %and178 = lshr i64 %22, 4, !dbg !5262
  %shr179 = and i64 %and178, 1085102592571150095, !dbg !5262
  %and180 = and i64 %23, -1085102592571150096, !dbg !5262
  %or181 = or disjoint i64 %shr179, %and180, !dbg !5262
  %arrayidx182 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5262
  store i64 %or181, ptr %arrayidx182, align 8, !dbg !5262
  ret void, !dbg !5267
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5268 {
entry:
    #dbg_value(ptr %q, !5269, !DIExpression(), !5270)
  %arrayidx = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5271
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5271
    #dbg_value(i64 %0, !5272, !DIExpression(), !5270)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5273
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5273
    #dbg_value(i64 %1, !5274, !DIExpression(), !5270)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5275
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5275
    #dbg_value(i64 %2, !5276, !DIExpression(), !5270)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5277
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5277
    #dbg_value(i64 %3, !5278, !DIExpression(), !5270)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5279
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5279
    #dbg_value(i64 %4, !5280, !DIExpression(), !5270)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5281
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5281
    #dbg_value(i64 %5, !5282, !DIExpression(), !5270)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5283
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5283
    #dbg_value(i64 %6, !5284, !DIExpression(), !5270)
  %7 = load i64, ptr %q, align 8, !dbg !5285
    #dbg_value(i64 %7, !5286, !DIExpression(), !5270)
  %xor = xor i64 %3, %5, !dbg !5287
    #dbg_value(i64 %xor, !5288, !DIExpression(), !5270)
  %xor8 = xor i64 %0, %6, !dbg !5289
    #dbg_value(i64 %xor8, !5290, !DIExpression(), !5270)
  %xor9 = xor i64 %0, %3, !dbg !5291
    #dbg_value(i64 %xor9, !5292, !DIExpression(), !5270)
  %xor10 = xor i64 %0, %5, !dbg !5293
    #dbg_value(i64 %xor10, !5294, !DIExpression(), !5270)
  %xor11 = xor i64 %1, %2, !dbg !5295
    #dbg_value(i64 %xor11, !5296, !DIExpression(), !5270)
  %xor12 = xor i64 %xor11, %7, !dbg !5297
    #dbg_value(i64 %xor12, !5298, !DIExpression(), !5270)
  %xor13 = xor i64 %xor12, %3, !dbg !5299
    #dbg_value(i64 %xor13, !5300, !DIExpression(), !5270)
  %xor14 = xor i64 %xor8, %xor, !dbg !5301
    #dbg_value(i64 %xor14, !5302, !DIExpression(), !5270)
  %xor15 = xor i64 %xor12, %0, !dbg !5303
    #dbg_value(i64 %xor15, !5304, !DIExpression(), !5270)
  %xor16 = xor i64 %xor12, %6, !dbg !5305
    #dbg_value(i64 %xor16, !5306, !DIExpression(), !5270)
  %xor17 = xor i64 %xor16, %xor10, !dbg !5307
    #dbg_value(i64 %xor17, !5308, !DIExpression(), !5270)
  %xor18 = xor i64 %4, %xor14, !dbg !5309
    #dbg_value(i64 %xor18, !5310, !DIExpression(), !5270)
  %xor19 = xor i64 %xor18, %5, !dbg !5311
    #dbg_value(i64 %xor19, !5312, !DIExpression(), !5270)
  %xor20 = xor i64 %xor18, %1, !dbg !5313
    #dbg_value(i64 %xor20, !5314, !DIExpression(), !5270)
  %xor21 = xor i64 %xor19, %7, !dbg !5315
    #dbg_value(i64 %xor21, !5316, !DIExpression(), !5270)
  %xor22 = xor i64 %xor19, %xor11, !dbg !5317
    #dbg_value(i64 %xor22, !5318, !DIExpression(), !5270)
  %xor23 = xor i64 %xor20, %xor9, !dbg !5319
    #dbg_value(i64 %xor23, !5320, !DIExpression(), !5270)
  %xor24 = xor i64 %7, %xor23, !dbg !5321
    #dbg_value(i64 %xor24, !5322, !DIExpression(), !5270)
  %xor25 = xor i64 %xor22, %xor23, !dbg !5323
    #dbg_value(i64 %xor25, !5324, !DIExpression(), !5270)
    #dbg_value(!DIArgList(i64 %xor22, i64 %xor10), !5325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5270)
  %xor27 = xor i64 %xor11, %xor23, !dbg !5326
    #dbg_value(i64 %xor27, !5327, !DIExpression(), !5270)
    #dbg_value(!DIArgList(i64 %xor8, i64 %xor27), !5328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5270)
    #dbg_value(!DIArgList(i64 %0, i64 %xor27), !5329, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5270)
  %and = and i64 %xor14, %xor19, !dbg !5330
    #dbg_value(i64 %and, !5331, !DIExpression(), !5270)
  %and30 = and i64 %xor17, %xor21, !dbg !5332
    #dbg_value(i64 %and30, !5333, !DIExpression(), !5270)
  %xor31 = xor i64 %and30, %and, !dbg !5334
    #dbg_value(i64 %xor31, !5335, !DIExpression(), !5270)
  %and32 = and i64 %xor13, %7, !dbg !5336
    #dbg_value(i64 %and32, !5337, !DIExpression(), !5270)
    #dbg_value(!DIArgList(i64 %and32, i64 %and), !5338, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5270)
  %and34 = and i64 %xor8, %xor27, !dbg !5339
    #dbg_value(i64 %and34, !5340, !DIExpression(), !5270)
  %and35 = and i64 %xor16, %xor12, !dbg !5341
    #dbg_value(i64 %and35, !5342, !DIExpression(), !5270)
    #dbg_value(!DIArgList(i64 %and35, i64 %and34), !5343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5270)
  %and37 = and i64 %xor15, %xor24, !dbg !5344
    #dbg_value(i64 %and37, !5345, !DIExpression(), !5270)
    #dbg_value(!DIArgList(i64 %and37, i64 %and34), !5346, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5270)
  %and39 = and i64 %xor9, %xor23, !dbg !5347
    #dbg_value(i64 %and39, !5348, !DIExpression(), !5270)
  %and40 = and i64 %xor, %xor25, !dbg !5349
    #dbg_value(i64 %and40, !5350, !DIExpression(), !5270)
  %xor41 = xor i64 %and40, %and39, !dbg !5351
    #dbg_value(i64 %xor41, !5352, !DIExpression(), !5270)
  %and42 = and i64 %xor10, %xor22, !dbg !5353
    #dbg_value(i64 %and42, !5354, !DIExpression(), !5270)
  %xor43 = xor i64 %and42, %and39, !dbg !5355
    #dbg_value(i64 %xor43, !5356, !DIExpression(), !5270)
  %xor44 = xor i64 %xor31, %xor41, !dbg !5357
    #dbg_value(i64 %xor44, !5358, !DIExpression(), !5270)
    #dbg_value(!DIArgList(i64 %and32, i64 %xor43, i64 %and), !5359, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5270)
    #dbg_value(!DIArgList(i64 %and35, i64 %xor41, i64 %and34), !5360, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5270)
    #dbg_value(!DIArgList(i64 %and37, i64 %xor43, i64 %and34), !5361, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5270)
  %xor48 = xor i64 %xor44, %xor20, !dbg !5362
    #dbg_value(i64 %xor48, !5363, !DIExpression(), !5270)
  %8 = xor i64 %xor10, %and32, !dbg !5364
  %9 = xor i64 %8, %xor22, !dbg !5364
  %10 = xor i64 %9, %and, !dbg !5364
  %xor49 = xor i64 %10, %xor43, !dbg !5364
    #dbg_value(i64 %xor49, !5365, !DIExpression(), !5270)
  %11 = xor i64 %xor27, %and35, !dbg !5366
  %12 = xor i64 %11, %xor8, !dbg !5366
  %13 = xor i64 %12, %and34, !dbg !5366
  %xor50 = xor i64 %13, %xor41, !dbg !5366
    #dbg_value(i64 %xor50, !5367, !DIExpression(), !5270)
  %14 = xor i64 %xor27, %and37, !dbg !5368
  %15 = xor i64 %14, %0, !dbg !5368
  %16 = xor i64 %15, %and34, !dbg !5368
  %xor51 = xor i64 %16, %xor43, !dbg !5368
    #dbg_value(i64 %xor51, !5369, !DIExpression(), !5270)
  %xor52 = xor i64 %xor48, %xor49, !dbg !5370
    #dbg_value(i64 %xor52, !5371, !DIExpression(), !5270)
  %and53 = and i64 %xor48, %xor50, !dbg !5372
    #dbg_value(i64 %and53, !5373, !DIExpression(), !5270)
  %xor54 = xor i64 %xor51, %and53, !dbg !5374
    #dbg_value(i64 %xor54, !5375, !DIExpression(), !5270)
  %and55 = and i64 %xor52, %xor54, !dbg !5376
    #dbg_value(i64 %and55, !5377, !DIExpression(), !5270)
  %xor56 = xor i64 %and55, %xor49, !dbg !5378
    #dbg_value(i64 %xor56, !5379, !DIExpression(), !5270)
  %xor57 = xor i64 %xor50, %xor51, !dbg !5380
    #dbg_value(i64 %xor57, !5381, !DIExpression(), !5270)
  %xor58 = xor i64 %xor49, %and53, !dbg !5382
    #dbg_value(i64 %xor58, !5383, !DIExpression(), !5270)
  %and59 = and i64 %xor58, %xor57, !dbg !5384
    #dbg_value(i64 %and59, !5385, !DIExpression(), !5270)
  %xor60 = xor i64 %and59, %xor51, !dbg !5386
    #dbg_value(i64 %xor60, !5387, !DIExpression(), !5270)
  %xor61 = xor i64 %xor50, %xor60, !dbg !5388
    #dbg_value(i64 %xor61, !5389, !DIExpression(), !5270)
  %xor62 = xor i64 %and59, %and53, !dbg !5390
    #dbg_value(i64 %xor62, !5391, !DIExpression(), !5270)
  %and63 = and i64 %xor51, %xor62, !dbg !5392
    #dbg_value(i64 %and63, !5393, !DIExpression(), !5270)
  %xor64 = xor i64 %and63, %xor61, !dbg !5394
    #dbg_value(i64 %xor64, !5395, !DIExpression(), !5270)
  %xor65 = xor i64 %xor54, %and63, !dbg !5396
    #dbg_value(i64 %xor65, !5397, !DIExpression(), !5270)
  %and66 = and i64 %xor56, %xor65, !dbg !5398
    #dbg_value(i64 %and66, !5399, !DIExpression(), !5270)
  %xor67 = xor i64 %xor52, %and66, !dbg !5400
    #dbg_value(i64 %xor67, !5401, !DIExpression(), !5270)
  %xor68 = xor i64 %xor67, %xor64, !dbg !5402
    #dbg_value(i64 %xor68, !5403, !DIExpression(), !5270)
  %xor69 = xor i64 %xor56, %xor60, !dbg !5404
    #dbg_value(i64 %xor69, !5405, !DIExpression(), !5270)
  %xor70 = xor i64 %xor56, %xor67, !dbg !5406
    #dbg_value(i64 %xor70, !5407, !DIExpression(), !5270)
  %xor71 = xor i64 %and63, %xor50, !dbg !5408
    #dbg_value(i64 %xor71, !5409, !DIExpression(), !5270)
  %xor72 = xor i64 %xor69, %xor68, !dbg !5410
    #dbg_value(i64 %xor72, !5411, !DIExpression(), !5270)
  %and73 = and i64 %xor71, %xor19, !dbg !5412
    #dbg_value(i64 %and73, !5413, !DIExpression(), !5270)
  %and74 = and i64 %xor64, %xor21, !dbg !5414
    #dbg_value(i64 %and74, !5415, !DIExpression(), !5270)
  %and75 = and i64 %xor60, %7, !dbg !5416
    #dbg_value(i64 %and75, !5417, !DIExpression(), !5270)
  %and76 = and i64 %xor70, %xor27, !dbg !5418
    #dbg_value(i64 %and76, !5419, !DIExpression(), !5270)
  %and77 = and i64 %xor67, %xor12, !dbg !5420
    #dbg_value(i64 %and77, !5421, !DIExpression(), !5270)
  %and78 = and i64 %xor56, %xor24, !dbg !5422
    #dbg_value(i64 %and78, !5423, !DIExpression(), !5270)
  %and79 = and i64 %xor69, %xor23, !dbg !5424
    #dbg_value(i64 %and79, !5425, !DIExpression(), !5270)
  %and80 = and i64 %xor72, %xor25, !dbg !5426
    #dbg_value(i64 %and80, !5427, !DIExpression(), !5270)
  %and81 = and i64 %xor68, %xor22, !dbg !5428
    #dbg_value(i64 %and81, !5429, !DIExpression(), !5270)
  %and82 = and i64 %xor71, %xor14, !dbg !5430
    #dbg_value(i64 %and82, !5431, !DIExpression(), !5270)
  %and83 = and i64 %xor64, %xor17, !dbg !5432
    #dbg_value(i64 %and83, !5433, !DIExpression(), !5270)
  %and84 = and i64 %xor60, %xor13, !dbg !5434
    #dbg_value(i64 %and84, !5435, !DIExpression(), !5270)
  %and85 = and i64 %xor70, %xor8, !dbg !5436
    #dbg_value(i64 %and85, !5437, !DIExpression(), !5270)
  %and86 = and i64 %xor67, %xor16, !dbg !5438
    #dbg_value(i64 %and86, !5439, !DIExpression(), !5270)
  %and87 = and i64 %xor56, %xor15, !dbg !5440
    #dbg_value(i64 %and87, !5441, !DIExpression(), !5270)
  %and88 = and i64 %xor69, %xor9, !dbg !5442
    #dbg_value(i64 %and88, !5443, !DIExpression(), !5270)
  %and89 = and i64 %xor72, %xor, !dbg !5444
    #dbg_value(i64 %and89, !5445, !DIExpression(), !5270)
  %and90 = and i64 %xor68, %xor10, !dbg !5446
    #dbg_value(i64 %and90, !5447, !DIExpression(), !5270)
  %xor91 = xor i64 %and88, %and89, !dbg !5448
    #dbg_value(i64 %xor91, !5449, !DIExpression(), !5270)
  %xor92 = xor i64 %and83, %and84, !dbg !5450
    #dbg_value(i64 %xor92, !5451, !DIExpression(), !5270)
  %xor93 = xor i64 %and78, %and86, !dbg !5452
    #dbg_value(i64 %xor93, !5453, !DIExpression(), !5270)
  %xor94 = xor i64 %and82, %and83, !dbg !5454
    #dbg_value(i64 %xor94, !5455, !DIExpression(), !5270)
  %xor95 = xor i64 %and75, %and85, !dbg !5456
    #dbg_value(i64 %xor95, !5457, !DIExpression(), !5270)
  %xor96 = xor i64 %and75, %and78, !dbg !5458
    #dbg_value(i64 %xor96, !5459, !DIExpression(), !5270)
  %xor97 = xor i64 %and80, %and81, !dbg !5460
    #dbg_value(i64 %xor97, !5461, !DIExpression(), !5270)
  %xor98 = xor i64 %and73, %and76, !dbg !5462
    #dbg_value(i64 %xor98, !5463, !DIExpression(), !5270)
  %xor99 = xor i64 %and79, %and80, !dbg !5464
    #dbg_value(i64 %xor99, !5465, !DIExpression(), !5270)
  %xor100 = xor i64 %and89, %and90, !dbg !5466
    #dbg_value(i64 %xor100, !5467, !DIExpression(), !5270)
  %xor101 = xor i64 %and85, %xor93, !dbg !5468
    #dbg_value(i64 %xor101, !5469, !DIExpression(), !5270)
  %xor102 = xor i64 %xor95, %xor98, !dbg !5470
    #dbg_value(i64 %xor102, !5471, !DIExpression(), !5270)
  %xor103 = xor i64 %and77, %xor91, !dbg !5472
    #dbg_value(i64 %xor103, !5473, !DIExpression(), !5270)
  %xor104 = xor i64 %and76, %xor99, !dbg !5474
    #dbg_value(i64 %xor104, !5475, !DIExpression(), !5270)
  %xor105 = xor i64 %xor91, %xor102, !dbg !5476
    #dbg_value(i64 %xor105, !5477, !DIExpression(), !5270)
  %xor106 = xor i64 %and87, %xor102, !dbg !5478
    #dbg_value(i64 %xor106, !5479, !DIExpression(), !5270)
  %xor107 = xor i64 %xor97, %xor103, !dbg !5480
    #dbg_value(i64 %xor107, !5481, !DIExpression(), !5270)
  %xor108 = xor i64 %xor94, %xor103, !dbg !5482
    #dbg_value(i64 %xor108, !5483, !DIExpression(), !5270)
  %xor109 = xor i64 %and77, %xor104, !dbg !5484
    #dbg_value(i64 %xor109, !5485, !DIExpression(), !5270)
  %xor110 = xor i64 %xor106, %xor107, !dbg !5486
    #dbg_value(i64 %xor110, !5487, !DIExpression(), !5270)
  %xor111 = xor i64 %and74, %xor108, !dbg !5488
    #dbg_value(i64 %xor111, !5489, !DIExpression(), !5270)
  %xor112 = xor i64 %xor104, %xor108, !dbg !5490
    #dbg_value(i64 %xor112, !5491, !DIExpression(), !5270)
  %17 = xor i64 %xor107, %xor101, !dbg !5492
  %xor113 = xor i64 %17, -1, !dbg !5492
    #dbg_value(i64 %xor113, !5493, !DIExpression(), !5270)
  %18 = xor i64 %xor105, %xor93, !dbg !5494
  %xor115 = xor i64 %18, -1, !dbg !5494
    #dbg_value(i64 %xor115, !5495, !DIExpression(), !5270)
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor110), !5496, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5270)
  %xor117 = xor i64 %xor98, %xor111, !dbg !5497
    #dbg_value(i64 %xor117, !5498, !DIExpression(), !5270)
  %xor118 = xor i64 %xor96, %xor111, !dbg !5499
    #dbg_value(i64 %xor118, !5500, !DIExpression(), !5270)
  %xor119 = xor i64 %xor92, %xor110, !dbg !5501
    #dbg_value(i64 %xor119, !5502, !DIExpression(), !5270)
  %19 = xor i64 %xor117, %xor109, !dbg !5503
  %xor121 = xor i64 %19, -1, !dbg !5503
    #dbg_value(i64 %xor121, !5504, !DIExpression(), !5270)
  %20 = xor i64 %xor110, %xor100, !dbg !5505
  %21 = xor i64 %20, %xor109, !dbg !5505
  %xor123 = xor i64 %21, -1, !dbg !5505
    #dbg_value(i64 %xor123, !5506, !DIExpression(), !5270)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5507
  store i64 %xor112, ptr %arrayidx124, align 8, !dbg !5508
  %arrayidx125 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5509
  store i64 %xor121, ptr %arrayidx125, align 8, !dbg !5510
  %arrayidx126 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5511
  store i64 %xor123, ptr %arrayidx126, align 8, !dbg !5512
  %arrayidx127 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5513
  store i64 %xor117, ptr %arrayidx127, align 8, !dbg !5514
  %arrayidx128 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5515
  store i64 %xor118, ptr %arrayidx128, align 8, !dbg !5516
  %arrayidx129 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5517
  store i64 %xor119, ptr %arrayidx129, align 8, !dbg !5518
  %arrayidx130 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5519
  store i64 %xor113, ptr %arrayidx130, align 8, !dbg !5520
  store i64 %xor115, ptr %q, align 8, !dbg !5521
  ret void, !dbg !5522
}

; Function Attrs: nounwind
define internal fastcc i32 @br_dec32le(ptr noundef %src) unnamed_addr #0 !dbg !5523 {
entry:
    #dbg_value(ptr %src, !5526, !DIExpression(), !5527)
  %0 = load i8, ptr %src, align 1, !dbg !5528
  %conv = zext i8 %0 to i32, !dbg !5529
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %src, i32 1, !dbg !5530
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !5530
  %conv2 = zext i8 %1 to i32, !dbg !5531
  %shl = shl nuw nsw i32 %conv2, 8, !dbg !5532
  %or = or disjoint i32 %shl, %conv, !dbg !5533
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %src, i32 2, !dbg !5534
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !5534
  %conv4 = zext i8 %2 to i32, !dbg !5535
  %shl5 = shl nuw nsw i32 %conv4, 16, !dbg !5536
  %or6 = or disjoint i32 %or, %shl5, !dbg !5537
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %src, i32 3, !dbg !5538
  %3 = load i8, ptr %arrayidx7, align 1, !dbg !5538
  %conv8 = zext i8 %3 to i32, !dbg !5539
  %shl9 = shl nuw i32 %conv8, 24, !dbg !5540
  %or10 = or disjoint i32 %or6, %shl9, !dbg !5541
  ret i32 %or10, !dbg !5542
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5543 {
entry:
    #dbg_value(ptr %r, !5544, !DIExpression(), !5545)
    #dbg_value(ptr %key, !5546, !DIExpression(), !5545)
  call void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5547
  ret void, !dbg !5548
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5549 {
entry:
  %skey = alloca [26 x i64], align 8
    #dbg_value(ptr %r, !5557, !DIExpression(), !5558)
    #dbg_value(ptr %key, !5559, !DIExpression(), !5558)
    #dbg_declare(ptr %skey, !5560, !DIExpression(), !5564)
  %call = call dereferenceable_or_null(832) ptr @malloc(i32 noundef 832) #7, !dbg !5565
  store ptr %call, ptr %r, align 4, !dbg !5566
  %cmp = icmp eq ptr %call, null, !dbg !5567
  br i1 %cmp, label %if.then, label %if.end, !dbg !5567

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !5569
  br label %if.end, !dbg !5571

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 24) #4, !dbg !5572
  %0 = load ptr, ptr %r, align 4, !dbg !5573
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 12) #4, !dbg !5574
  ret void, !dbg !5575
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5576 {
entry:
    #dbg_value(ptr %r, !5577, !DIExpression(), !5578)
    #dbg_value(ptr %key, !5579, !DIExpression(), !5578)
  call void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5580
  ret void, !dbg !5581
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5582 {
entry:
  %skey = alloca [30 x i64], align 8
    #dbg_value(ptr %r, !5590, !DIExpression(), !5591)
    #dbg_value(ptr %key, !5592, !DIExpression(), !5591)
    #dbg_declare(ptr %skey, !5593, !DIExpression(), !5597)
  %call = call dereferenceable_or_null(960) ptr @malloc(i32 noundef 960) #7, !dbg !5598
  store ptr %call, ptr %r, align 4, !dbg !5599
  %cmp = icmp eq ptr %call, null, !dbg !5600
  br i1 %cmp, label %if.then, label %if.end, !dbg !5600

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !5602
  br label %if.end, !dbg !5604

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 32) #4, !dbg !5605
  %0 = load ptr, ptr %r, align 4, !dbg !5606
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 14) #4, !dbg !5607
  ret void, !dbg !5608
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5609 {
entry:
    #dbg_value(ptr %r, !5610, !DIExpression(), !5611)
    #dbg_value(ptr %key, !5612, !DIExpression(), !5611)
  call void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5613
  ret void, !dbg !5614
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5615 {
entry:
    #dbg_value(ptr %out, !5620, !DIExpression(), !5621)
    #dbg_value(ptr %in, !5622, !DIExpression(), !5621)
    #dbg_value(i32 %nblocks, !5623, !DIExpression(), !5621)
    #dbg_value(ptr %ctx, !5624, !DIExpression(), !5621)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5625
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 10) #4, !dbg !5626
  ret void, !dbg !5627
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5628 {
entry:
  %blocks = alloca [16 x i32], align 4
  %t = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5631, !DIExpression(), !5632)
    #dbg_value(ptr %in, !5633, !DIExpression(), !5632)
    #dbg_value(i32 %nblocks, !5634, !DIExpression(), !5632)
    #dbg_value(ptr %rkeys, !5635, !DIExpression(), !5632)
    #dbg_value(i32 %nrounds, !5636, !DIExpression(), !5632)
    #dbg_declare(ptr %blocks, !5637, !DIExpression(), !5639)
    #dbg_declare(ptr %t, !5640, !DIExpression(), !5644)
  br label %while.cond, !dbg !5645

while.cond:                                       ; preds = %while.body, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %sub, %while.body ]
  %in.addr.0 = phi ptr [ %in, %entry ], [ %add.ptr, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr2, %while.body ]
    #dbg_value(ptr %out.addr.0, !5631, !DIExpression(), !5632)
    #dbg_value(ptr %in.addr.0, !5633, !DIExpression(), !5632)
    #dbg_value(i32 %nblocks.addr.0, !5634, !DIExpression(), !5632)
  %cmp = icmp ugt i32 %nblocks.addr.0, 3, !dbg !5646
  br i1 %cmp, label %while.body, label %while.end, !dbg !5645

while.body:                                       ; preds = %while.cond
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef 16, ptr noundef %in.addr.0) #4, !dbg !5647
  call fastcc void @aes_ecb4x(ptr noundef %out.addr.0, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !5649
  %sub = add i32 %nblocks.addr.0, -4, !dbg !5650
    #dbg_value(i32 %sub, !5634, !DIExpression(), !5632)
  %add.ptr = getelementptr inbounds nuw i8, ptr %in.addr.0, i32 64, !dbg !5651
    #dbg_value(ptr %add.ptr, !5633, !DIExpression(), !5632)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !5652
    #dbg_value(ptr %add.ptr2, !5631, !DIExpression(), !5632)
  br label %while.cond, !dbg !5645, !llvm.loop !5653

while.end:                                        ; preds = %while.cond
  %nblocks.addr.0.lcssa = phi i32 [ %nblocks.addr.0, %while.cond ]
  %in.addr.0.lcssa = phi ptr [ %in.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %tobool.not = icmp eq i32 %nblocks.addr.0.lcssa, 0, !dbg !5655
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !5655

if.then:                                          ; preds = %while.end
  %mul = shl nuw nsw i32 %nblocks.addr.0.lcssa, 2, !dbg !5657
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef %mul, ptr noundef %in.addr.0.lcssa) #4, !dbg !5659
  call fastcc void @aes_ecb4x(ptr noundef nonnull %t, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !5660
  %mul7 = shl nuw nsw i32 %nblocks.addr.0.lcssa, 4, !dbg !5661
  %call = call ptr @memcpy(ptr noundef %out.addr.0.lcssa, ptr noundef nonnull %t, i32 noundef %mul7) #6, !dbg !5662
  br label %if.end, !dbg !5663

if.end:                                           ; preds = %if.then, %while.end
  ret void, !dbg !5664
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5665 {
entry:
  %w = alloca [16 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %out, !5668, !DIExpression(), !5669)
    #dbg_value(ptr %ivw, !5670, !DIExpression(), !5669)
    #dbg_value(ptr %sk_exp, !5671, !DIExpression(), !5669)
    #dbg_value(i32 %nrounds, !5672, !DIExpression(), !5669)
    #dbg_declare(ptr %w, !5673, !DIExpression(), !5674)
    #dbg_declare(ptr %q, !5675, !DIExpression(), !5676)
  %call = call ptr @memcpy(ptr noundef nonnull %w, ptr noundef nonnull %ivw, i32 noundef 64) #6, !dbg !5677
    #dbg_value(i32 0, !5678, !DIExpression(), !5669)
  br label %for.cond, !dbg !5679

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5681
    #dbg_value(i32 %i.0, !5678, !DIExpression(), !5669)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !5682
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5684

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.0, !dbg !5685
  %add = or disjoint i32 %i.0, 4, !dbg !5687
  %arrayidx1 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add, !dbg !5688
  %add.ptr.idx = shl nuw nsw i32 %i.0, 4, !dbg !5689
  %add.ptr = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr.idx, !dbg !5689
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx1, ptr noundef nonnull %add.ptr) #4, !dbg !5690
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5691
    #dbg_value(i32 %inc, !5678, !DIExpression(), !5669)
  br label %for.cond, !dbg !5692, !llvm.loop !5693

for.end:                                          ; preds = %for.cond
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5695
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk_exp) #4, !dbg !5696
    #dbg_value(i32 1, !5678, !DIExpression(), !5669)
  br label %for.cond5, !dbg !5697

for.cond5:                                        ; preds = %for.body7, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc15, %for.body7 ], !dbg !5699
    #dbg_value(i32 %i.1, !5678, !DIExpression(), !5669)
  %exitcond1 = icmp ne i32 %i.1, %nrounds, !dbg !5700
  br i1 %exitcond1, label %for.body7, label %for.end16, !dbg !5702

for.body7:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5703
  call fastcc void @shift_rows(ptr noundef nonnull %q) #4, !dbg !5705
  call fastcc void @mix_columns(ptr noundef nonnull %q) #4, !dbg !5706
  %add.ptr13.idx = shl nuw nsw i32 %i.1, 6, !dbg !5707
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr13.idx, !dbg !5707
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr13) #4, !dbg !5708
  %inc15 = add nuw nsw i32 %i.1, 1, !dbg !5709
    #dbg_value(i32 %inc15, !5678, !DIExpression(), !5669)
  br label %for.cond5, !dbg !5710, !llvm.loop !5711

for.end16:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5713
  call fastcc void @shift_rows(ptr noundef nonnull %q) #4, !dbg !5714
  %add.ptr20.idx = shl nuw nsw i32 %nrounds, 6, !dbg !5715
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr20.idx, !dbg !5715
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr20) #4, !dbg !5716
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5717
    #dbg_value(i32 0, !5678, !DIExpression(), !5669)
  br label %for.cond22, !dbg !5718

for.cond22:                                       ; preds = %for.body24, %for.end16
  %i.2 = phi i32 [ 0, %for.end16 ], [ %inc32, %for.body24 ], !dbg !5720
    #dbg_value(i32 %i.2, !5678, !DIExpression(), !5669)
  %exitcond2 = icmp ne i32 %i.2, 4, !dbg !5721
  br i1 %exitcond2, label %for.body24, label %for.end33, !dbg !5723

for.body24:                                       ; preds = %for.cond22
  %add.ptr27.idx = shl nuw nsw i32 %i.2, 4, !dbg !5724
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr27.idx, !dbg !5724
  %arrayidx28 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.2, !dbg !5726
  %0 = load i64, ptr %arrayidx28, align 8, !dbg !5726
  %add29 = or disjoint i32 %i.2, 4, !dbg !5727
  %arrayidx30 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add29, !dbg !5728
  %1 = load i64, ptr %arrayidx30, align 8, !dbg !5728
  call fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %add.ptr27, i64 noundef %0, i64 noundef %1) #4, !dbg !5729
  %inc32 = add nuw nsw i32 %i.2, 1, !dbg !5730
    #dbg_value(i32 %inc32, !5678, !DIExpression(), !5669)
  br label %for.cond22, !dbg !5731, !llvm.loop !5732

for.end33:                                        ; preds = %for.cond22
  call fastcc void @br_range_enc32le(ptr noundef %out, ptr noundef nonnull %w, i32 noundef 16) #4, !dbg !5734
  ret void, !dbg !5735
}

; Function Attrs: nounwind
define internal fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk) unnamed_addr #0 !dbg !5736 {
entry:
    #dbg_value(ptr %q, !5739, !DIExpression(), !5740)
    #dbg_value(ptr %sk, !5741, !DIExpression(), !5740)
  %0 = load i64, ptr %sk, align 8, !dbg !5742
  %1 = load i64, ptr %q, align 8, !dbg !5743
  %xor = xor i64 %1, %0, !dbg !5743
  store i64 %xor, ptr %q, align 8, !dbg !5743
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %sk, i32 8, !dbg !5744
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5744
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5745
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5746
  %xor4 = xor i64 %3, %2, !dbg !5746
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !5746
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %sk, i32 16, !dbg !5747
  %4 = load i64, ptr %arrayidx5, align 8, !dbg !5747
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5748
  %5 = load i64, ptr %arrayidx6, align 8, !dbg !5749
  %xor7 = xor i64 %5, %4, !dbg !5749
  store i64 %xor7, ptr %arrayidx6, align 8, !dbg !5749
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %sk, i32 24, !dbg !5750
  %6 = load i64, ptr %arrayidx8, align 8, !dbg !5750
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5751
  %7 = load i64, ptr %arrayidx9, align 8, !dbg !5752
  %xor10 = xor i64 %7, %6, !dbg !5752
  store i64 %xor10, ptr %arrayidx9, align 8, !dbg !5752
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %sk, i32 32, !dbg !5753
  %8 = load i64, ptr %arrayidx11, align 8, !dbg !5753
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5754
  %9 = load i64, ptr %arrayidx12, align 8, !dbg !5755
  %xor13 = xor i64 %9, %8, !dbg !5755
  store i64 %xor13, ptr %arrayidx12, align 8, !dbg !5755
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %sk, i32 40, !dbg !5756
  %10 = load i64, ptr %arrayidx14, align 8, !dbg !5756
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5757
  %11 = load i64, ptr %arrayidx15, align 8, !dbg !5758
  %xor16 = xor i64 %11, %10, !dbg !5758
  store i64 %xor16, ptr %arrayidx15, align 8, !dbg !5758
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %sk, i32 48, !dbg !5759
  %12 = load i64, ptr %arrayidx17, align 8, !dbg !5759
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5760
  %13 = load i64, ptr %arrayidx18, align 8, !dbg !5761
  %xor19 = xor i64 %13, %12, !dbg !5761
  store i64 %xor19, ptr %arrayidx18, align 8, !dbg !5761
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %sk, i32 56, !dbg !5762
  %14 = load i64, ptr %arrayidx20, align 8, !dbg !5762
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5763
  %15 = load i64, ptr %arrayidx21, align 8, !dbg !5764
  %xor22 = xor i64 %15, %14, !dbg !5764
  store i64 %xor22, ptr %arrayidx21, align 8, !dbg !5764
  ret void, !dbg !5765
}

; Function Attrs: nounwind
define internal fastcc void @shift_rows(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5766 {
entry:
    #dbg_value(ptr %q, !5767, !DIExpression(), !5768)
    #dbg_value(i32 0, !5769, !DIExpression(), !5768)
  br label %for.cond, !dbg !5770

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5772
    #dbg_value(i32 %i.0, !5769, !DIExpression(), !5768)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !5773
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5775

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5776
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5776
    #dbg_value(i64 %0, !5778, !DIExpression(), !5779)
  %and = and i64 %0, 65535, !dbg !5780
  %and1 = lshr i64 %0, 4, !dbg !5781
  %shr = and i64 %and1, 268369920, !dbg !5781
  %or = or disjoint i64 %and, %shr, !dbg !5782
  %and2 = shl i64 %0, 12, !dbg !5783
  %shl = and i64 %and2, 4026531840, !dbg !5783
  %or3 = or disjoint i64 %or, %shl, !dbg !5784
  %and4 = lshr i64 %0, 8, !dbg !5785
  %shr5 = and i64 %and4, 1095216660480, !dbg !5785
  %or6 = or disjoint i64 %or3, %shr5, !dbg !5786
  %and7 = shl i64 %0, 8, !dbg !5787
  %shl8 = and i64 %and7, 280375465082880, !dbg !5787
  %or9 = or disjoint i64 %or6, %shl8, !dbg !5788
  %and10 = lshr i64 %0, 12, !dbg !5789
  %shr11 = and i64 %and10, 4222124650659840, !dbg !5789
  %or12 = or disjoint i64 %or9, %shr11, !dbg !5790
  %and13 = shl i64 %0, 4, !dbg !5791
  %shl14 = and i64 %and13, -4503599627370496, !dbg !5791
  %or15 = or i64 %or12, %shl14, !dbg !5792
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5793
  store i64 %or15, ptr %arrayidx16, align 8, !dbg !5794
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5795
    #dbg_value(i32 %inc, !5769, !DIExpression(), !5768)
  br label %for.cond, !dbg !5796, !llvm.loop !5797

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5799
}

; Function Attrs: nounwind
define internal fastcc void @mix_columns(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5800 {
entry:
    #dbg_value(ptr %q, !5801, !DIExpression(), !5802)
  %0 = load i64, ptr %q, align 8, !dbg !5803
    #dbg_value(i64 %0, !5804, !DIExpression(), !5802)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5805
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5805
    #dbg_value(i64 %1, !5806, !DIExpression(), !5802)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5807
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5807
    #dbg_value(i64 %2, !5808, !DIExpression(), !5802)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5809
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5809
    #dbg_value(i64 %3, !5810, !DIExpression(), !5802)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5811
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5811
    #dbg_value(i64 %4, !5812, !DIExpression(), !5802)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5813
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5813
    #dbg_value(i64 %5, !5814, !DIExpression(), !5802)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5815
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5815
    #dbg_value(i64 %6, !5816, !DIExpression(), !5802)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5817
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !5817
    #dbg_value(i64 %7, !5818, !DIExpression(), !5802)
  %8 = shl i64 %0, 48, !dbg !5819
  %9 = lshr i64 %0, 16, !dbg !5819
  %10 = or i64 %8, %9, !dbg !5819
    #dbg_value(i64 %10, !5820, !DIExpression(), !5802)
  %11 = shl i64 %1, 48, !dbg !5821
  %12 = lshr i64 %1, 16, !dbg !5821
  %13 = or i64 %11, %12, !dbg !5821
    #dbg_value(i64 %13, !5822, !DIExpression(), !5802)
  %14 = shl i64 %2, 48, !dbg !5823
  %15 = lshr i64 %2, 16, !dbg !5823
  %16 = or i64 %14, %15, !dbg !5823
    #dbg_value(i64 %16, !5824, !DIExpression(), !5802)
  %17 = shl i64 %3, 48, !dbg !5825
  %18 = lshr i64 %3, 16, !dbg !5825
  %19 = or i64 %17, %18, !dbg !5825
    #dbg_value(i64 %19, !5826, !DIExpression(), !5802)
  %20 = shl i64 %4, 48, !dbg !5827
  %21 = lshr i64 %4, 16, !dbg !5827
  %22 = or i64 %20, %21, !dbg !5827
    #dbg_value(i64 %22, !5828, !DIExpression(), !5802)
  %23 = shl i64 %5, 48, !dbg !5829
  %24 = lshr i64 %5, 16, !dbg !5829
  %25 = or i64 %23, %24, !dbg !5829
    #dbg_value(i64 %25, !5830, !DIExpression(), !5802)
  %26 = shl i64 %6, 48, !dbg !5831
  %27 = lshr i64 %6, 16, !dbg !5831
  %28 = or i64 %26, %27, !dbg !5831
    #dbg_value(i64 %28, !5832, !DIExpression(), !5802)
  %29 = shl i64 %7, 48, !dbg !5833
  %30 = lshr i64 %7, 16, !dbg !5833
  %31 = or i64 %29, %30, !dbg !5833
    #dbg_value(i64 %31, !5834, !DIExpression(), !5802)
  %xor30 = xor i64 %0, %10, !dbg !5835
  %call = call fastcc i64 @rotr32(i64 noundef %xor30) #4, !dbg !5836
  %32 = xor i64 %31, %call, !dbg !5837
  %33 = xor i64 %32, %7, !dbg !5837
  %xor31 = xor i64 %33, %10, !dbg !5837
  store i64 %xor31, ptr %q, align 8, !dbg !5838
  %xor37 = xor i64 %1, %13, !dbg !5839
  %call38 = call fastcc i64 @rotr32(i64 noundef %xor37) #4, !dbg !5840
  %34 = xor i64 %10, %call38, !dbg !5841
  %35 = xor i64 %34, %0, !dbg !5841
  %36 = xor i64 %35, %7, !dbg !5841
  %37 = xor i64 %36, %31, !dbg !5841
  %xor39 = xor i64 %37, %13, !dbg !5841
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5842
  store i64 %xor39, ptr %arrayidx40, align 8, !dbg !5843
  %xor43 = xor i64 %2, %16, !dbg !5844
  %call44 = call fastcc i64 @rotr32(i64 noundef %xor43) #4, !dbg !5845
  %38 = xor i64 %13, %call44, !dbg !5846
  %39 = xor i64 %38, %1, !dbg !5846
  %xor45 = xor i64 %39, %16, !dbg !5846
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5847
  store i64 %xor45, ptr %arrayidx46, align 8, !dbg !5848
  %xor51 = xor i64 %3, %19, !dbg !5849
  %call52 = call fastcc i64 @rotr32(i64 noundef %xor51) #4, !dbg !5850
  %40 = xor i64 %16, %call52, !dbg !5851
  %41 = xor i64 %40, %2, !dbg !5851
  %42 = xor i64 %41, %7, !dbg !5851
  %43 = xor i64 %42, %31, !dbg !5851
  %xor53 = xor i64 %43, %19, !dbg !5851
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5852
  store i64 %xor53, ptr %arrayidx54, align 8, !dbg !5853
  %xor59 = xor i64 %4, %22, !dbg !5854
  %call60 = call fastcc i64 @rotr32(i64 noundef %xor59) #4, !dbg !5855
  %44 = xor i64 %19, %call60, !dbg !5856
  %45 = xor i64 %44, %3, !dbg !5856
  %46 = xor i64 %45, %7, !dbg !5856
  %47 = xor i64 %46, %31, !dbg !5856
  %xor61 = xor i64 %47, %22, !dbg !5856
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5857
  store i64 %xor61, ptr %arrayidx62, align 8, !dbg !5858
  %xor65 = xor i64 %5, %25, !dbg !5859
  %call66 = call fastcc i64 @rotr32(i64 noundef %xor65) #4, !dbg !5860
  %48 = xor i64 %22, %call66, !dbg !5861
  %49 = xor i64 %48, %4, !dbg !5861
  %xor67 = xor i64 %49, %25, !dbg !5861
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5862
  store i64 %xor67, ptr %arrayidx68, align 8, !dbg !5863
  %xor71 = xor i64 %6, %28, !dbg !5864
  %call72 = call fastcc i64 @rotr32(i64 noundef %xor71) #4, !dbg !5865
  %50 = xor i64 %25, %call72, !dbg !5866
  %51 = xor i64 %50, %5, !dbg !5866
  %xor73 = xor i64 %51, %28, !dbg !5866
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5867
  store i64 %xor73, ptr %arrayidx74, align 8, !dbg !5868
  %xor77 = xor i64 %7, %31, !dbg !5869
  %call78 = call fastcc i64 @rotr32(i64 noundef %xor77) #4, !dbg !5870
  %52 = xor i64 %28, %call78, !dbg !5871
  %53 = xor i64 %52, %6, !dbg !5871
  %xor79 = xor i64 %53, %31, !dbg !5871
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5872
  store i64 %xor79, ptr %arrayidx80, align 8, !dbg !5873
  ret void, !dbg !5874
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %w, i64 noundef %q0, i64 noundef %q1) unnamed_addr #0 !dbg !5875 {
entry:
    #dbg_value(ptr %w, !5878, !DIExpression(), !5879)
    #dbg_value(i64 %q0, !5880, !DIExpression(), !5879)
    #dbg_value(i64 %q1, !5881, !DIExpression(), !5879)
  %and = and i64 %q0, 71777214294589695, !dbg !5882
    #dbg_value(i64 %and, !5883, !DIExpression(), !5879)
  %and1 = and i64 %q1, 71777214294589695, !dbg !5884
    #dbg_value(i64 %and1, !5885, !DIExpression(), !5879)
  %shr = lshr i64 %q0, 8, !dbg !5886
  %and2 = and i64 %shr, 71776119077928960, !dbg !5887
    #dbg_value(i64 %shr, !5888, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5879)
  %shr3 = lshr i64 %q1, 8, !dbg !5889
  %and4 = and i64 %shr3, 71776119077928960, !dbg !5890
    #dbg_value(i64 %shr3, !5891, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5879)
  %shr5 = lshr i64 %and, 8, !dbg !5892
  %or = or disjoint i64 %and, %shr5, !dbg !5893
    #dbg_value(i64 %or, !5883, !DIExpression(), !5879)
  %shr6 = lshr i64 %and1, 8, !dbg !5894
  %or7 = or disjoint i64 %and1, %shr6, !dbg !5895
    #dbg_value(i64 %or7, !5885, !DIExpression(), !5879)
  %0 = and i64 %q0, 280375465148160, !dbg !5896
  %1 = or disjoint i64 %and2, %0, !dbg !5896
  %or9 = lshr exact i64 %1, 8, !dbg !5896
    #dbg_value(!DIArgList(i64 %and2, i64 %0), !5888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5879)
  %2 = and i64 %q1, 280375465148160, !dbg !5897
  %3 = or disjoint i64 %and4, %2, !dbg !5897
  %or11 = lshr exact i64 %3, 8, !dbg !5897
    #dbg_value(!DIArgList(i64 %and4, i64 %2), !5891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5879)
  %and12 = and i64 %or, 281470681808895, !dbg !5898
    #dbg_value(i64 %and12, !5883, !DIExpression(), !5879)
  %and13 = and i64 %or7, 281470681808895, !dbg !5899
    #dbg_value(i64 %and13, !5885, !DIExpression(), !5879)
    #dbg_value(i64 %or9, !5888, !DIExpression(), !5879)
    #dbg_value(i64 %or11, !5891, !DIExpression(), !5879)
  %shr16 = lshr i64 %and12, 16, !dbg !5900
  %or181 = or disjoint i64 %and12, %shr16, !dbg !5901
  %or18 = trunc i64 %or181 to i32, !dbg !5901
  store i32 %or18, ptr %w, align 4, !dbg !5902
  %shr20 = lshr i64 %and13, 16, !dbg !5903
  %or222 = or disjoint i64 %and13, %shr20, !dbg !5904
  %or22 = trunc i64 %or222 to i32, !dbg !5904
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5905
  store i32 %or22, ptr %arrayidx23, align 4, !dbg !5906
  %shr25 = lshr i64 %1, 24, !dbg !5907
  %or273 = or disjoint i64 %or9, %shr25, !dbg !5908
  %or27 = trunc i64 %or273 to i32, !dbg !5908
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5909
  store i32 %or27, ptr %arrayidx28, align 4, !dbg !5910
  %shr30 = lshr i64 %3, 24, !dbg !5911
  %or324 = or disjoint i64 %or11, %shr30, !dbg !5912
  %or32 = trunc i64 %or324 to i32, !dbg !5912
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5913
  store i32 %or32, ptr %arrayidx33, align 4, !dbg !5914
  ret void, !dbg !5915
}

; Function Attrs: nounwind
define internal fastcc void @br_range_enc32le(ptr noundef %dst, ptr noundef nonnull %v, i32 noundef %num) unnamed_addr #0 !dbg !5916 {
entry:
    #dbg_value(ptr %dst, !5919, !DIExpression(), !5920)
    #dbg_value(ptr %v, !5921, !DIExpression(), !5920)
    #dbg_value(i32 16, !5922, !DIExpression(), !5920)
  br label %while.cond, !dbg !5923

while.cond:                                       ; preds = %while.body, %entry
  %num.addr.0 = phi i32 [ 16, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
  %dst.addr.0 = phi ptr [ %dst, %entry ], [ %add.ptr, %while.body ]
    #dbg_value(ptr %dst.addr.0, !5919, !DIExpression(), !5920)
    #dbg_value(ptr %v.addr.0, !5921, !DIExpression(), !5920)
    #dbg_value(i32 %num.addr.0, !5922, !DIExpression(), !5920)
    #dbg_value(i32 %num.addr.0, !5922, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5920)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5924
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5923

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5925
    #dbg_value(i32 %dec, !5922, !DIExpression(), !5920)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5926
    #dbg_value(ptr %incdec.ptr, !5921, !DIExpression(), !5920)
  %0 = load i32, ptr %v.addr.0, align 4, !dbg !5928
  call fastcc void @br_enc32le(ptr noundef %dst.addr.0, i32 noundef %0) #4, !dbg !5929
  %add.ptr = getelementptr inbounds nuw i8, ptr %dst.addr.0, i32 4, !dbg !5930
    #dbg_value(ptr %add.ptr, !5919, !DIExpression(), !5920)
  br label %while.cond, !dbg !5923, !llvm.loop !5931

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5933
}

; Function Attrs: nounwind
define internal fastcc void @br_enc32le(ptr noundef %dst, i32 noundef %x) unnamed_addr #0 !dbg !5934 {
entry:
    #dbg_value(ptr %dst, !5937, !DIExpression(), !5938)
    #dbg_value(i32 %x, !5939, !DIExpression(), !5938)
  %conv = trunc i32 %x to i8, !dbg !5940
  store i8 %conv, ptr %dst, align 1, !dbg !5941
  %shr = lshr i32 %x, 8, !dbg !5942
  %conv1 = trunc i32 %shr to i8, !dbg !5943
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %dst, i32 1, !dbg !5944
  store i8 %conv1, ptr %arrayidx2, align 1, !dbg !5945
  %shr3 = lshr i32 %x, 16, !dbg !5946
  %conv4 = trunc i32 %shr3 to i8, !dbg !5947
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %dst, i32 2, !dbg !5948
  store i8 %conv4, ptr %arrayidx5, align 1, !dbg !5949
  %shr6 = lshr i32 %x, 24, !dbg !5950
  %conv7 = trunc nuw i32 %shr6 to i8, !dbg !5951
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %dst, i32 3, !dbg !5952
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !5953
  ret void, !dbg !5954
}

; Function Attrs: nounwind
define internal fastcc i64 @rotr32(i64 noundef %x) unnamed_addr #0 !dbg !5955 {
entry:
    #dbg_value(i64 %x, !5958, !DIExpression(), !5959)
  %0 = shl i64 %x, 32, !dbg !5960
  %1 = lshr i64 %x, 32, !dbg !5960
  %2 = or i64 %0, %1, !dbg !5960
  ret i64 %2, !dbg !5961
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5962 {
entry:
    #dbg_value(ptr %out, !5965, !DIExpression(), !5966)
    #dbg_value(i32 %outlen, !5967, !DIExpression(), !5966)
    #dbg_value(ptr %iv, !5968, !DIExpression(), !5966)
    #dbg_value(ptr %ctx, !5969, !DIExpression(), !5966)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5970
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 10) #4, !dbg !5971
  ret void, !dbg !5972
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5973 {
entry:
  %ivw = alloca [16 x i32], align 4
  %tmp = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5976, !DIExpression(), !5977)
    #dbg_value(i32 %outlen, !5978, !DIExpression(), !5977)
    #dbg_value(ptr %iv, !5979, !DIExpression(), !5977)
    #dbg_value(ptr %rkeys, !5980, !DIExpression(), !5977)
    #dbg_value(i32 %nrounds, !5981, !DIExpression(), !5977)
    #dbg_declare(ptr %ivw, !5982, !DIExpression(), !5983)
    #dbg_value(i32 0, !5984, !DIExpression(), !5977)
  call fastcc void @br_range_dec32le(ptr noundef nonnull %ivw, i32 noundef 3, ptr noundef %iv) #4, !dbg !5985
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 16, !dbg !5986
  %call = call ptr @memcpy(ptr noundef nonnull %add.ptr, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !5987
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %ivw, i32 32, !dbg !5988
  %call6 = call ptr @memcpy(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !5989
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %ivw, i32 48, !dbg !5990
  %call10 = call ptr @memcpy(ptr noundef nonnull %add.ptr8, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !5991
  %call11 = call fastcc i32 @br_swap32(i32 noundef 0) #4, !dbg !5992
  %arrayidx = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !5993
  store i32 %call11, ptr %arrayidx, align 4, !dbg !5994
  %call12 = call fastcc i32 @br_swap32(i32 noundef 1) #4, !dbg !5995
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !5996
  store i32 %call12, ptr %arrayidx13, align 4, !dbg !5997
  %call15 = call fastcc i32 @br_swap32(i32 noundef 2) #4, !dbg !5998
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !5999
  store i32 %call15, ptr %arrayidx16, align 4, !dbg !6000
  %call18 = call fastcc i32 @br_swap32(i32 noundef 3) #4, !dbg !6001
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !6002
  store i32 %call18, ptr %arrayidx19, align 4, !dbg !6003
  br label %while.cond, !dbg !6004

while.cond:                                       ; preds = %while.body, %entry
  %outlen.addr.0 = phi i32 [ %outlen, %entry ], [ %sub, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr21, %while.body ]
    #dbg_value(ptr %out.addr.0, !5976, !DIExpression(), !5977)
    #dbg_value(i32 %outlen.addr.0, !5978, !DIExpression(), !5977)
  %cmp = icmp ugt i32 %outlen.addr.0, 64, !dbg !6005
  br i1 %cmp, label %while.body, label %while.end, !dbg !6004

while.body:                                       ; preds = %while.cond
  call fastcc void @aes_ctr4x(ptr noundef %out.addr.0, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !6006
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !6008
    #dbg_value(ptr %add.ptr21, !5976, !DIExpression(), !5977)
  %sub = add i32 %outlen.addr.0, -64, !dbg !6009
    #dbg_value(i32 %sub, !5978, !DIExpression(), !5977)
  br label %while.cond, !dbg !6004, !llvm.loop !6010

while.end:                                        ; preds = %while.cond
  %outlen.addr.0.lcssa = phi i32 [ %outlen.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %cmp22.not = icmp eq i32 %outlen.addr.0.lcssa, 0, !dbg !6012
  br i1 %cmp22.not, label %if.end, label %if.then, !dbg !6012

if.then:                                          ; preds = %while.end
    #dbg_declare(ptr %tmp, !6014, !DIExpression(), !6016)
  call fastcc void @aes_ctr4x(ptr noundef nonnull %tmp, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !6017
    #dbg_value(i32 0, !6018, !DIExpression(), !5977)
  br label %for.cond, !dbg !6019

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !6021
    #dbg_value(i32 %i.0, !6018, !DIExpression(), !5977)
  %cmp25 = icmp ult i32 %i.0, %outlen.addr.0.lcssa, !dbg !6022
  br i1 %cmp25, label %for.body, label %if.end.loopexit, !dbg !6024

for.body:                                         ; preds = %for.cond
  %arrayidx26 = getelementptr inbounds nuw [64 x i8], ptr %tmp, i32 0, i32 %i.0, !dbg !6025
  %0 = load i8, ptr %arrayidx26, align 1, !dbg !6025
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out.addr.0.lcssa, i32 %i.0, !dbg !6027
  store i8 %0, ptr %arrayidx27, align 1, !dbg !6028
  %inc = add nuw nsw i32 %i.0, 1, !dbg !6029
    #dbg_value(i32 %inc, !6018, !DIExpression(), !5977)
  br label %for.cond, !dbg !6030, !llvm.loop !6031

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !6033

if.end:                                           ; preds = %if.end.loopexit, %while.end
  ret void, !dbg !6033
}

; Function Attrs: nounwind
define internal fastcc i32 @br_swap32(i32 noundef %x) unnamed_addr #0 !dbg !6034 {
entry:
    #dbg_value(i32 %x, !6035, !DIExpression(), !6036)
    #dbg_value(!DIArgList(i32 %x, i32 %x), !6035, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 18446744073692839680, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shr, DW_OP_constu, 16711935, DW_OP_and, DW_OP_or, DW_OP_stack_value), !6036)
  %0 = and i32 %x, 255, !dbg !6037
  %1 = shl i32 %0, 24, !dbg !6037
  %2 = and i32 %x, 65280, !dbg !6037
  %3 = shl i32 %2, 8, !dbg !6037
  %4 = and i32 %x, 16711680, !dbg !6037
  %5 = lshr i32 %4, 8, !dbg !6037
  %6 = and i32 %x, -16777216, !dbg !6037
  %7 = lshr i32 %6, 24, !dbg !6037
  %8 = or i32 %1, %3, !dbg !6037
  %9 = or i32 %8, %5, !dbg !6037
  %10 = or i32 %9, %7, !dbg !6037
  ret i32 %10, !dbg !6038
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !6039 {
entry:
    #dbg_value(ptr %out, !6042, !DIExpression(), !6043)
    #dbg_value(ptr %ivw, !6044, !DIExpression(), !6043)
    #dbg_value(ptr %sk_exp, !6045, !DIExpression(), !6043)
    #dbg_value(i32 %nrounds, !6046, !DIExpression(), !6043)
  call fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef %ivw, ptr noundef %sk_exp, i32 noundef %nrounds) #4, !dbg !6047
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !6048
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr) #4, !dbg !6049
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !6050
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr1) #4, !dbg !6051
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !6052
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr2) #4, !dbg !6053
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !6054
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr3) #4, !dbg !6055
  ret void, !dbg !6056
}

; Function Attrs: nounwind
define internal fastcc void @inc4_be(ptr noundef nonnull %x) unnamed_addr #0 !dbg !6057 {
entry:
    #dbg_value(ptr %x, !6060, !DIExpression(), !6061)
  %0 = load i32, ptr %x, align 4, !dbg !6062
  %call = call fastcc i32 @br_swap32(i32 noundef %0) #4, !dbg !6063
  %add = add i32 %call, 4, !dbg !6064
    #dbg_value(i32 %add, !6065, !DIExpression(), !6061)
  %call1 = call fastcc i32 @br_swap32(i32 noundef %add) #4, !dbg !6066
  store i32 %call1, ptr %x, align 4, !dbg !6067
  ret void, !dbg !6068
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6069 {
entry:
    #dbg_value(ptr %out, !6074, !DIExpression(), !6075)
    #dbg_value(ptr %in, !6076, !DIExpression(), !6075)
    #dbg_value(i32 %nblocks, !6077, !DIExpression(), !6075)
    #dbg_value(ptr %ctx, !6078, !DIExpression(), !6075)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6079
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 12) #4, !dbg !6080
  ret void, !dbg !6081
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6082 {
entry:
    #dbg_value(ptr %out, !6085, !DIExpression(), !6086)
    #dbg_value(i32 %outlen, !6087, !DIExpression(), !6086)
    #dbg_value(ptr %iv, !6088, !DIExpression(), !6086)
    #dbg_value(ptr %ctx, !6089, !DIExpression(), !6086)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6090
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 12) #4, !dbg !6091
  ret void, !dbg !6092
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6093 {
entry:
    #dbg_value(ptr %out, !6098, !DIExpression(), !6099)
    #dbg_value(ptr %in, !6100, !DIExpression(), !6099)
    #dbg_value(i32 %nblocks, !6101, !DIExpression(), !6099)
    #dbg_value(ptr %ctx, !6102, !DIExpression(), !6099)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6103
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 14) #4, !dbg !6104
  ret void, !dbg !6105
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6106 {
entry:
    #dbg_value(ptr %out, !6109, !DIExpression(), !6110)
    #dbg_value(i32 %outlen, !6111, !DIExpression(), !6110)
    #dbg_value(ptr %iv, !6112, !DIExpression(), !6110)
    #dbg_value(ptr %ctx, !6113, !DIExpression(), !6110)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6114
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 14) #4, !dbg !6115
  ret void, !dbg !6116
}

; Function Attrs: nounwind
define dso_local void @aes128_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6117 {
entry:
    #dbg_value(ptr %r, !6120, !DIExpression(), !6121)
  %0 = load ptr, ptr %r, align 4, !dbg !6122
  call void @free(ptr noundef %0) #6, !dbg !6123
  ret void, !dbg !6124
}

; Function Attrs: nounwind
define dso_local void @aes192_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6125 {
entry:
    #dbg_value(ptr %r, !6128, !DIExpression(), !6129)
  %0 = load ptr, ptr %r, align 4, !dbg !6130
  call void @free(ptr noundef %0) #6, !dbg !6131
  ret void, !dbg !6132
}

; Function Attrs: nounwind
define dso_local void @aes256_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6133 {
entry:
    #dbg_value(ptr %r, !6136, !DIExpression(), !6137)
  %0 = load ptr, ptr %r, align 4, !dbg !6138
  call void @free(ptr noundef %0) #6, !dbg !6139
  ret void, !dbg !6140
}

; Function Attrs: nounwind
define dso_local i32 @AES_128_CTR(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef %input, i32 noundef %inputByteLen) local_unnamed_addr #0 !dbg !6141 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
  %iv = alloca [16 x i8], align 1
    #dbg_value(ptr %output, !6144, !DIExpression(), !6145)
    #dbg_value(i32 %outputByteLen, !6146, !DIExpression(), !6145)
    #dbg_value(ptr %input, !6147, !DIExpression(), !6145)
    #dbg_value(i32 %inputByteLen, !6148, !DIExpression(), !6145)
    #dbg_declare(ptr %ctx, !6149, !DIExpression(), !6150)
    #dbg_declare(ptr %iv, !6151, !DIExpression(), !6152)
  call void @mayo_memset(ptr %iv, i8 0, i32 16), !dbg !6152
  call void @aes128_ctr_keyexp(ptr noundef nonnull %ctx, ptr noundef %input) #4, !dbg !6153
  call void @aes128_ctr(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef nonnull %iv, ptr noundef nonnull %ctx) #4, !dbg !6154
  call void @aes128_ctx_release(ptr noundef nonnull %ctx) #4, !dbg !6155
  ret i32 %outputByteLen, !dbg !6156
}

; Function Attrs: nounwind
define dso_local void @AES_256_ECB(ptr noundef %input, ptr noundef %key, ptr noundef %output) local_unnamed_addr #0 !dbg !6157 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %input, !6160, !DIExpression(), !6161)
    #dbg_value(ptr %key, !6162, !DIExpression(), !6161)
    #dbg_value(ptr %output, !6163, !DIExpression(), !6161)
    #dbg_declare(ptr %ctx, !6164, !DIExpression(), !6165)
  call void @aes256_ecb_keyexp(ptr noundef nonnull %ctx, ptr noundef %key) #4, !dbg !6166
  call void @aes256_ecb(ptr noundef %output, ptr noundef %input, i32 noundef 1, ptr noundef nonnull %ctx) #4, !dbg !6167
  call void @aes256_ctx_release(ptr noundef nonnull %ctx) #4, !dbg !6168
  ret void, !dbg !6169
}

; Function Attrs: nounwind
define dso_local void @mayo_secure_free(ptr noundef %mem, i32 noundef %size) local_unnamed_addr #0 !dbg !86 {
entry:
    #dbg_value(ptr %mem, !6170, !DIExpression(), !6171)
    #dbg_value(i32 %size, !6172, !DIExpression(), !6171)
  %tobool.not = icmp eq ptr %mem, null, !dbg !6173
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !6173

if.then:                                          ; preds = %entry
  %0 = load volatile ptr, ptr @mayo_secure_free.memset_func, align 4, !dbg !6175
  %call = call ptr %0(ptr noundef nonnull %mem, i32 noundef 0, i32 noundef %size) #6, !dbg !6175
  call void @free(ptr noundef nonnull %mem) #6, !dbg !6177
  br label %if.end, !dbg !6178

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6179
}

; Function Attrs: nounwind
define dso_local void @mayo_secure_clear(ptr noundef %mem, i32 noundef %size) local_unnamed_addr #0 !dbg !94 {
entry:
    #dbg_value(ptr %mem, !6180, !DIExpression(), !6181)
    #dbg_value(i32 %size, !6182, !DIExpression(), !6181)
  %0 = load volatile ptr, ptr @mayo_secure_clear.memset_func, align 4, !dbg !6183
  %call = call ptr %0(ptr noundef %mem, i32 noundef 0, i32 noundef %size) #6, !dbg !6183
  ret void, !dbg !6184
}

; Function Attrs: nounwind
define dso_local void @AES256_CTR_DRBG_Update(ptr noundef %provided_data, ptr noundef %Key, ptr noundef %V) local_unnamed_addr #0 !dbg !6185 {
entry:
  %temp = alloca [48 x i8], align 1
    #dbg_value(ptr %provided_data, !6188, !DIExpression(), !6189)
    #dbg_value(ptr %Key, !6190, !DIExpression(), !6189)
    #dbg_value(ptr %V, !6191, !DIExpression(), !6189)
    #dbg_declare(ptr %temp, !6192, !DIExpression(), !6196)
    #dbg_value(i32 0, !6197, !DIExpression(), !6199)
  br label %for.cond, !dbg !6200

for.cond:                                         ; preds = %for.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.end ], !dbg !6201
    #dbg_value(i32 %i.0, !6197, !DIExpression(), !6199)
  %exitcond = icmp ne i32 %i.0, 3, !dbg !6202
  br i1 %exitcond, label %for.cond1.preheader, label %for.end10, !dbg !6204

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !6205

for.cond1:                                        ; preds = %for.cond1.preheader, %if.then
  %j.0 = phi i32 [ %dec, %if.then ], [ 15, %for.cond1.preheader ], !dbg !6208
    #dbg_value(i32 %j.0, !6209, !DIExpression(), !6210)
  %cmp2 = icmp sgt i32 %j.0, -1, !dbg !6211
  br i1 %cmp2, label %for.body3, label %for.end.loopexit, !dbg !6205

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw i8, ptr %V, i32 %j.0, !dbg !6213
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6213
  %cmp4 = icmp eq i8 %0, -1, !dbg !6216
  br i1 %cmp4, label %if.then, label %if.else, !dbg !6216

if.then:                                          ; preds = %for.body3
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %V, i32 %j.0, !dbg !6217
  store i8 0, ptr %arrayidx6, align 1, !dbg !6219
  %dec = add nsw i32 %j.0, -1, !dbg !6220
    #dbg_value(i32 %dec, !6209, !DIExpression(), !6210)
  br label %for.cond1, !dbg !6221, !llvm.loop !6222

if.else:                                          ; preds = %for.body3
  %j.0.lcssa2 = phi i32 [ %j.0, %for.body3 ], !dbg !6208
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %V, i32 %j.0.lcssa2, !dbg !6224
  %1 = load i8, ptr %arrayidx7, align 1, !dbg !6226
  %inc = add i8 %1, 1, !dbg !6226
  store i8 %inc, ptr %arrayidx7, align 1, !dbg !6226
  br label %for.end, !dbg !6227

for.end.loopexit:                                 ; preds = %for.cond1
  br label %for.end, !dbg !6228

for.end:                                          ; preds = %for.end.loopexit, %if.else
  %mul = shl nuw nsw i32 %i.0, 4, !dbg !6228
  %add.ptr = getelementptr inbounds nuw i8, ptr %temp, i32 %mul, !dbg !6229
  call fastcc void @AES256_ECB(ptr noundef %Key, ptr noundef %V, ptr noundef nonnull %add.ptr) #4, !dbg !6230
  %inc9 = add nuw nsw i32 %i.0, 1, !dbg !6231
    #dbg_value(i32 %inc9, !6197, !DIExpression(), !6199)
  br label %for.cond, !dbg !6232, !llvm.loop !6233

for.end10:                                        ; preds = %for.cond
  %cmp11.not = icmp eq ptr %provided_data, null, !dbg !6235
  br i1 %cmp11.not, label %if.end27, label %for.cond15.preheader, !dbg !6235

for.cond15.preheader:                             ; preds = %for.end10
  br label %for.cond15, !dbg !6237

for.cond15:                                       ; preds = %for.cond15.preheader, %for.body18
  %i14.0 = phi i32 [ %inc25, %for.body18 ], [ 0, %for.cond15.preheader ], !dbg !6239
    #dbg_value(i32 %i14.0, !6240, !DIExpression(), !6241)
  %exitcond3 = icmp ne i32 %i14.0, 48, !dbg !6242
  br i1 %exitcond3, label %for.body18, label %if.end27.loopexit, !dbg !6237

for.body18:                                       ; preds = %for.cond15
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %provided_data, i32 %i14.0, !dbg !6244
  %2 = load i8, ptr %arrayidx19, align 1, !dbg !6244
  %arrayidx21 = getelementptr inbounds nuw [48 x i8], ptr %temp, i32 0, i32 %i14.0, !dbg !6246
  %3 = load i8, ptr %arrayidx21, align 1, !dbg !6247
  %xor1 = xor i8 %3, %2, !dbg !6247
  store i8 %xor1, ptr %arrayidx21, align 1, !dbg !6247
  %inc25 = add nuw nsw i32 %i14.0, 1, !dbg !6248
    #dbg_value(i32 %inc25, !6240, !DIExpression(), !6241)
  br label %for.cond15, !dbg !6249, !llvm.loop !6250

if.end27.loopexit:                                ; preds = %for.cond15
  br label %if.end27, !dbg !6252

if.end27:                                         ; preds = %if.end27.loopexit, %for.end10
  %call = call ptr @memcpy(ptr noundef %Key, ptr noundef nonnull %temp, i32 noundef 32) #6, !dbg !6252
  %add.ptr30 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !6253
  %call31 = call ptr @memcpy(ptr noundef %V, ptr noundef nonnull %add.ptr30, i32 noundef 16) #6, !dbg !6254
  ret void, !dbg !6255
}

; Function Attrs: nounwind
define internal fastcc void @AES256_ECB(ptr noundef %key, ptr noundef %ctr, ptr noundef nonnull %buffer) unnamed_addr #0 !dbg !6256 {
entry:
    #dbg_value(ptr %key, !6257, !DIExpression(), !6258)
    #dbg_value(ptr %ctr, !6259, !DIExpression(), !6258)
    #dbg_value(ptr %buffer, !6260, !DIExpression(), !6258)
  call void @AES_256_ECB(ptr noundef %ctr, ptr noundef %key, ptr noundef nonnull %buffer) #4, !dbg !6261
  ret void, !dbg !6262
}

; Function Attrs: nounwind
define dso_local i32 @randombytes(ptr noundef %random_array, i32 noundef %nbytes) local_unnamed_addr #0 !dbg !6263 {
entry:
    #dbg_value(ptr %random_array, !6266, !DIExpression(), !6267)
    #dbg_value(i32 %nbytes, !6268, !DIExpression(), !6267)
  %call = call fastcc i32 @randombytes_nist(ptr noundef %random_array, i32 noundef %nbytes) #4, !dbg !6269
    #dbg_value(i32 0, !6270, !DIExpression(), !6267)
  ret i32 0, !dbg !6271
}

; Function Attrs: nounwind
define internal fastcc i32 @randombytes_nist(ptr noundef %x, i32 noundef %xlen) unnamed_addr #0 !dbg !6272 {
entry:
  %block = alloca [16 x i8], align 1
    #dbg_value(ptr %x, !6273, !DIExpression(), !6274)
    #dbg_value(i32 %xlen, !6275, !DIExpression(), !6274)
    #dbg_declare(ptr %block, !6276, !DIExpression(), !6277)
    #dbg_value(i32 0, !6278, !DIExpression(), !6274)
  br label %while.cond, !dbg !6279

while.cond:                                       ; preds = %if.end15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %i.1, %if.end15 ], !dbg !6274
  %xlen.addr.0 = phi i32 [ %xlen, %entry ], [ %xlen.addr.1, %if.end15 ]
    #dbg_value(i32 %xlen.addr.0, !6275, !DIExpression(), !6274)
    #dbg_value(i32 %i.0, !6278, !DIExpression(), !6274)
  %cmp.not = icmp eq i32 %xlen.addr.0, 0, !dbg !6280
  br i1 %cmp.not, label %while.end, label %for.cond.preheader, !dbg !6279

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !6281

for.cond:                                         ; preds = %for.cond.preheader, %if.then
  %j.0 = phi i32 [ %dec, %if.then ], [ 15, %for.cond.preheader ], !dbg !6284
    #dbg_value(i32 %j.0, !6285, !DIExpression(), !6286)
  %cmp1 = icmp sgt i32 %j.0, -1, !dbg !6287
  br i1 %cmp1, label %for.body, label %for.end.loopexit, !dbg !6281

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0, !dbg !6289
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6289
  %cmp2 = icmp eq i8 %0, -1, !dbg !6292
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6292

if.then:                                          ; preds = %for.body
  %arrayidx4 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0, !dbg !6293
  store i8 0, ptr %arrayidx4, align 1, !dbg !6295
  %dec = add nsw i32 %j.0, -1, !dbg !6296
    #dbg_value(i32 %dec, !6285, !DIExpression(), !6286)
  br label %for.cond, !dbg !6297, !llvm.loop !6298

if.else:                                          ; preds = %for.body
  %j.0.lcssa1 = phi i32 [ %j.0, %for.body ], !dbg !6284
  %arrayidx5 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0.lcssa1, !dbg !6300
  %1 = load i8, ptr %arrayidx5, align 1, !dbg !6302
  %inc = add i8 %1, 1, !dbg !6302
  store i8 %inc, ptr %arrayidx5, align 1, !dbg !6302
  br label %for.end, !dbg !6303

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !6304

for.end:                                          ; preds = %for.end.loopexit, %if.else
  call fastcc void @AES256_ECB(ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), ptr noundef nonnull %block) #4, !dbg !6304
  %cmp6 = icmp ugt i32 %xlen.addr.0, 15, !dbg !6305
  br i1 %cmp6, label %if.then8, label %if.else10, !dbg !6305

if.then8:                                         ; preds = %for.end
  %add.ptr = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !6307
  %call = call ptr @memcpy(ptr noundef %add.ptr, ptr noundef nonnull %block, i32 noundef 16) #6, !dbg !6309
  %add = add i32 %i.0, 16, !dbg !6310
    #dbg_value(i32 %add, !6278, !DIExpression(), !6274)
  %sub = add i32 %xlen.addr.0, -16, !dbg !6311
    #dbg_value(i32 %sub, !6275, !DIExpression(), !6274)
  br label %if.end15, !dbg !6312

if.else10:                                        ; preds = %for.end
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !6313
  %call13 = call ptr @memcpy(ptr noundef %add.ptr11, ptr noundef nonnull %block, i32 noundef %xlen.addr.0) #6, !dbg !6315
  %add14 = add i32 %i.0, %xlen.addr.0, !dbg !6316
    #dbg_value(i32 %add14, !6278, !DIExpression(), !6274)
    #dbg_value(i32 0, !6275, !DIExpression(), !6274)
  br label %if.end15

if.end15:                                         ; preds = %if.else10, %if.then8
  %i.1 = phi i32 [ %add, %if.then8 ], [ %add14, %if.else10 ], !dbg !6317
  %xlen.addr.1 = phi i32 [ %sub, %if.then8 ], [ 0, %if.else10 ], !dbg !6317
    #dbg_value(i32 %xlen.addr.1, !6275, !DIExpression(), !6274)
    #dbg_value(i32 %i.1, !6278, !DIExpression(), !6274)
  br label %while.cond, !dbg !6279, !llvm.loop !6318

while.end:                                        ; preds = %while.cond
  call void @AES256_CTR_DRBG_Update(ptr noundef null, ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32)) #4, !dbg !6320
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6321
  %inc16 = add nsw i32 %2, 1, !dbg !6321
  store i32 %inc16, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6321
  ret i32 poison, !dbg !6322
}

; Function Attrs: nounwind
define dso_local void @randombytes_init(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) local_unnamed_addr #0 !dbg !6323 {
entry:
    #dbg_value(ptr %entropy_input, !6326, !DIExpression(), !6327)
    #dbg_value(ptr %personalization_string, !6328, !DIExpression(), !6327)
    #dbg_value(i32 %security_strength, !6329, !DIExpression(), !6327)
  call fastcc void @randombytes_init_nist(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) #4, !dbg !6330
  ret void, !dbg !6331
}

; Function Attrs: nounwind
define internal fastcc void @randombytes_init_nist(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) unnamed_addr #0 !dbg !6332 {
entry:
  %seed_material = alloca [48 x i8], align 1
    #dbg_value(ptr %entropy_input, !6333, !DIExpression(), !6334)
    #dbg_value(ptr %personalization_string, !6335, !DIExpression(), !6334)
    #dbg_value(i32 %security_strength, !6336, !DIExpression(), !6334)
    #dbg_declare(ptr %seed_material, !6337, !DIExpression(), !6338)
  %call = call ptr @memcpy(ptr noundef nonnull %seed_material, ptr noundef %entropy_input, i32 noundef 48) #6, !dbg !6339
  %tobool.not = icmp eq ptr %personalization_string, null, !dbg !6340
  br i1 %tobool.not, label %if.end, label %for.cond.preheader, !dbg !6340

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !6342

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !6344
    #dbg_value(i32 %i.0, !6345, !DIExpression(), !6346)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !6347
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !6342

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %personalization_string, i32 %i.0, !dbg !6349
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6349
  %arrayidx1 = getelementptr inbounds nuw [48 x i8], ptr %seed_material, i32 0, i32 %i.0, !dbg !6351
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !6352
  %xor1 = xor i8 %1, %0, !dbg !6352
  store i8 %xor1, ptr %arrayidx1, align 1, !dbg !6352
  %inc = add nuw nsw i32 %i.0, 1, !dbg !6353
    #dbg_value(i32 %inc, !6345, !DIExpression(), !6346)
  br label %for.cond, !dbg !6354, !llvm.loop !6355

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !6357

if.end:                                           ; preds = %if.end.loopexit, %entry
  %call4 = call ptr @memset(ptr noundef nonnull @DRBG_ctx, i32 noundef 0, i32 noundef 32) #6, !dbg !6357
  %call5 = call ptr @memset(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 noundef 0, i32 noundef 16) #6, !dbg !6358
  call void @AES256_CTR_DRBG_Update(ptr noundef nonnull %seed_material, ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32)) #4, !dbg !6359
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6360
  ret void, !dbg !6361
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
!42 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_5_ref_uint32_t_blocker", scope: !43, file: !58, line: 126, type: !63, isLocal: false, isDefinition: true)
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
!57 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_5_ref_uint64_t_blocker", scope: !43, file: !58, line: 127, type: !59, isLocal: false, isDefinition: true)
!58 = !DIFile(filename: "../../../src/arithmetic.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!59 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_5_ref_unsigned_char_blocker", scope: !43, file: !58, line: 128, type: !62, isLocal: false, isDefinition: true)
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
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 6874560, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 107415)
!183 = !DILocation(line: 32, column: 10, scope: !134)
!184 = !DILocalVariable(name: "esk", scope: !134, file: !129, line: 33, type: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !36, line: 291, baseType: !186)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 6843264, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 106926)
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
!275 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_keypair", scope: !25, file: !25, line: 298, type: !276, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!315 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_keypair_compact", scope: !25, file: !25, line: 537, type: !276, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!316 = !DILocalVariable(name: "p", arg: 1, scope: !315, file: !25, line: 537, type: !278)
!317 = !DILocation(line: 0, scope: !315)
!318 = !DILocalVariable(name: "cpk", arg: 2, scope: !315, file: !25, line: 537, type: !18)
!319 = !DILocalVariable(name: "csk", arg: 3, scope: !315, file: !25, line: 538, type: !18)
!320 = !DILocalVariable(name: "ret", scope: !315, file: !25, line: 539, type: !45)
!321 = !DILocalVariable(name: "seed_sk", scope: !315, file: !25, line: 540, type: !18)
!322 = !DILocalVariable(name: "S", scope: !315, file: !25, line: 541, type: !323)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 6944, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 868)
!326 = !DILocation(line: 541, column: 19, scope: !315)
!327 = !DILocalVariable(name: "P", scope: !315, file: !25, line: 542, type: !328)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 6829632, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 106713)
!331 = !DILocation(line: 542, column: 14, scope: !315)
!332 = !DILocalVariable(name: "P3", scope: !315, file: !25, line: 543, type: !333)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 82944, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 1296)
!336 = !DILocation(line: 543, column: 14, scope: !315)
!337 = !DILocalVariable(name: "O", scope: !315, file: !25, line: 546, type: !338)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 13632, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 1704)
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
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 44928, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 702)
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
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 576, elements: !682)
!682 = !{!683}
!683 = !DISubrange(count: 9)
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
!704 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_expand_sk", scope: !25, file: !25, line: 310, type: !705, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!775 = !DILocation(line: 234, column: 84, scope: !773)
!776 = !DILocation(line: 234, column: 127, scope: !773)
!777 = !DILocation(line: 234, column: 137, scope: !773)
!778 = !DILocation(line: 234, column: 108, scope: !773)
!779 = !DILocation(line: 234, column: 17, scope: !773)
!780 = !DILocation(line: 235, column: 47, scope: !773)
!781 = !DILocation(line: 235, column: 88, scope: !773)
!782 = !DILocation(line: 235, column: 84, scope: !773)
!783 = !DILocation(line: 235, column: 127, scope: !773)
!784 = !DILocation(line: 235, column: 137, scope: !773)
!785 = !DILocation(line: 235, column: 108, scope: !773)
!786 = !DILocation(line: 235, column: 17, scope: !773)
!787 = !DILocation(line: 233, column: 44, scope: !771)
!788 = !DILocation(line: 233, column: 13, scope: !771)
!789 = distinct !{!789, !765, !790, !244}
!790 = !DILocation(line: 236, column: 13, scope: !766)
!791 = !DILocation(line: 0, scope: !764)
!792 = !DILocation(line: 228, column: 39, scope: !761)
!793 = !DILocation(line: 228, column: 9, scope: !761)
!794 = distinct !{!794, !754, !795, !244}
!795 = !DILocation(line: 238, column: 9, scope: !755)
!796 = !DILocation(line: 227, column: 35, scope: !752)
!797 = !DILocation(line: 227, column: 5, scope: !752)
!798 = distinct !{!798, !753, !799, !244}
!799 = !DILocation(line: 239, column: 5, scope: !746)
!800 = !DILocation(line: 240, column: 1, scope: !735)
!801 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_sign_signature", scope: !25, file: !25, line: 359, type: !802, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!802 = !DISubroutineType(types: !803)
!803 = !{!45, !278, !18, !804, !49, !15, !49}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!805 = !DILocalVariable(name: "p", arg: 1, scope: !801, file: !25, line: 359, type: !278)
!806 = !DILocation(line: 0, scope: !801)
!807 = !DILocalVariable(name: "sig", arg: 2, scope: !801, file: !25, line: 359, type: !18)
!808 = !DILocalVariable(name: "siglen", arg: 3, scope: !801, file: !25, line: 360, type: !804)
!809 = !DILocalVariable(name: "m", arg: 4, scope: !801, file: !25, line: 360, type: !49)
!810 = !DILocalVariable(name: "mlen", arg: 5, scope: !801, file: !25, line: 361, type: !15)
!811 = !DILocalVariable(name: "csk", arg: 6, scope: !801, file: !25, line: 361, type: !49)
!812 = !DILocalVariable(name: "ret", scope: !801, file: !25, line: 362, type: !45)
!813 = !DILocalVariable(name: "tenc", scope: !801, file: !25, line: 363, type: !814)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 568, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 71)
!817 = !DILocation(line: 363, column: 19, scope: !801)
!818 = !DILocalVariable(name: "t", scope: !801, file: !25, line: 363, type: !819)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1136, elements: !820)
!820 = !{!821}
!821 = !DISubrange(count: 142)
!822 = !DILocation(line: 363, column: 38, scope: !801)
!823 = !DILocalVariable(name: "y", scope: !801, file: !25, line: 364, type: !819)
!824 = !DILocation(line: 364, column: 19, scope: !801)
!825 = !DILocalVariable(name: "salt", scope: !801, file: !25, line: 365, type: !826)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 320, elements: !827)
!827 = !{!828}
!828 = !DISubrange(count: 40)
!829 = !DILocation(line: 365, column: 19, scope: !801)
!830 = !DILocalVariable(name: "V", scope: !801, file: !25, line: 366, type: !831)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 7392, elements: !832)
!832 = !{!833}
!833 = !DISubrange(count: 924)
!834 = !DILocation(line: 366, column: 19, scope: !801)
!835 = !DILocalVariable(name: "Vdec", scope: !801, file: !25, line: 366, type: !338)
!836 = !DILocation(line: 366, column: 57, scope: !801)
!837 = !DILocalVariable(name: "A", scope: !801, file: !25, line: 367, type: !838)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 167040, elements: !839)
!839 = !{!840}
!840 = !DISubrange(count: 20880)
!841 = !DILocation(line: 367, column: 19, scope: !801)
!842 = !DILocalVariable(name: "x", scope: !801, file: !25, line: 368, type: !843)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 14784, elements: !844)
!844 = !{!845}
!845 = !DISubrange(count: 1848)
!846 = !DILocation(line: 368, column: 19, scope: !801)
!847 = !DILocalVariable(name: "r", scope: !801, file: !25, line: 369, type: !848)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1160, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 145)
!851 = !DILocation(line: 369, column: 19, scope: !801)
!852 = !DILocalVariable(name: "s", scope: !801, file: !25, line: 370, type: !843)
!853 = !DILocation(line: 370, column: 19, scope: !801)
!854 = !DILocalVariable(name: "sk", scope: !801, file: !25, line: 372, type: !185, align: 256)
!855 = !DILocation(line: 372, column: 22, scope: !801)
!856 = !DILocalVariable(name: "Ox", scope: !801, file: !25, line: 373, type: !819)
!857 = !DILocation(line: 373, column: 19, scope: !801)
!858 = !DILocalVariable(name: "tmp", scope: !801, file: !25, line: 374, type: !848)
!859 = !DILocation(line: 374, column: 19, scope: !801)
!860 = !DILocalVariable(name: "param_m", scope: !801, file: !25, line: 378, type: !343)
!861 = !DILocalVariable(name: "param_n", scope: !801, file: !25, line: 379, type: !343)
!862 = !DILocalVariable(name: "param_o", scope: !801, file: !25, line: 380, type: !343)
!863 = !DILocalVariable(name: "param_k", scope: !801, file: !25, line: 381, type: !343)
!864 = !DILocalVariable(name: "param_v", scope: !801, file: !25, line: 382, type: !343)
!865 = !DILocalVariable(name: "param_m_bytes", scope: !801, file: !25, line: 383, type: !343)
!866 = !DILocalVariable(name: "param_v_bytes", scope: !801, file: !25, line: 384, type: !343)
!867 = !DILocalVariable(name: "param_r_bytes", scope: !801, file: !25, line: 385, type: !343)
!868 = !DILocalVariable(name: "param_sig_bytes", scope: !801, file: !25, line: 386, type: !343)
!869 = !DILocalVariable(name: "param_A_cols", scope: !801, file: !25, line: 387, type: !343)
!870 = !DILocalVariable(name: "param_digest_bytes", scope: !801, file: !25, line: 388, type: !343)
!871 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !801, file: !25, line: 389, type: !343)
!872 = !DILocalVariable(name: "param_salt_bytes", scope: !801, file: !25, line: 390, type: !343)
!873 = !DILocation(line: 392, column: 11, scope: !801)
!874 = !DILocalVariable(name: "seed_sk", scope: !801, file: !25, line: 371, type: !49)
!875 = !DILocation(line: 401, column: 5, scope: !801)
!876 = !DILocalVariable(name: "P1", scope: !801, file: !25, line: 403, type: !5)
!877 = !DILocalVariable(name: "L", scope: !801, file: !25, line: 404, type: !5)
!878 = !DILocalVariable(name: "Mtmp", scope: !801, file: !25, line: 405, type: !333)
!879 = !DILocation(line: 405, column: 14, scope: !801)
!880 = !DILocation(line: 420, column: 25, scope: !881)
!881 = distinct !DILexicalBlock(scope: !801, file: !25, line: 420, column: 9)
!882 = !DILocation(line: 420, column: 9, scope: !881)
!883 = !DILocation(line: 427, column: 37, scope: !801)
!884 = !DILocation(line: 427, column: 5, scope: !801)
!885 = !DILocation(line: 429, column: 5, scope: !801)
!886 = !DILocation(line: 437, column: 16, scope: !801)
!887 = !DILocation(line: 437, column: 5, scope: !801)
!888 = !DILocation(line: 438, column: 59, scope: !801)
!889 = !DILocalVariable(name: "ctrbyte", scope: !801, file: !25, line: 375, type: !18)
!890 = !DILocation(line: 440, column: 5, scope: !801)
!891 = !DILocation(line: 442, column: 5, scope: !801)
!892 = !DILocation(line: 445, column: 18, scope: !801)
!893 = !DILocation(line: 447, column: 9, scope: !801)
!894 = !DILocalVariable(name: "i", scope: !895, file: !25, line: 451, type: !45)
!895 = distinct !DILexicalBlock(scope: !801, file: !25, line: 451, column: 9)
!896 = !DILocation(line: 0, scope: !895)
!897 = !DILocation(line: 451, column: 14, scope: !895)
!898 = !DILocation(line: 451, scope: !895)
!899 = !DILocation(line: 451, column: 27, scope: !900)
!900 = distinct !DILexicalBlock(scope: !895, file: !25, line: 451, column: 9)
!901 = !DILocation(line: 451, column: 9, scope: !895)
!902 = !DILocation(line: 452, column: 26, scope: !903)
!903 = distinct !DILexicalBlock(scope: !900, file: !25, line: 451, column: 48)
!904 = !DILocation(line: 452, column: 22, scope: !903)
!905 = !DILocation(line: 452, column: 52, scope: !903)
!906 = !DILocation(line: 452, column: 48, scope: !903)
!907 = !DILocation(line: 452, column: 13, scope: !903)
!908 = !DILocation(line: 451, column: 43, scope: !900)
!909 = !DILocation(line: 451, column: 9, scope: !900)
!910 = distinct !{!910, !901, !911, !244}
!911 = !DILocation(line: 453, column: 9, scope: !895)
!912 = !DILocation(line: 404, column: 23, scope: !801)
!913 = !DILocation(line: 455, column: 9, scope: !801)
!914 = !DILocation(line: 457, column: 9, scope: !801)
!915 = !DILocation(line: 458, column: 9, scope: !801)
!916 = !DILocalVariable(name: "i", scope: !917, file: !25, line: 460, type: !45)
!917 = distinct !DILexicalBlock(scope: !801, file: !25, line: 460, column: 9)
!918 = !DILocation(line: 0, scope: !917)
!919 = !DILocation(line: 460, column: 14, scope: !917)
!920 = !DILocation(line: 460, scope: !917)
!921 = !DILocation(line: 460, column: 27, scope: !922)
!922 = distinct !DILexicalBlock(scope: !917, file: !25, line: 460, column: 9)
!923 = !DILocation(line: 460, column: 9, scope: !917)
!924 = !DILocation(line: 462, column: 20, scope: !925)
!925 = distinct !DILexicalBlock(scope: !922, file: !25, line: 461, column: 9)
!926 = !DILocation(line: 462, column: 43, scope: !925)
!927 = !DILocation(line: 462, column: 13, scope: !925)
!928 = !DILocation(line: 462, column: 48, scope: !925)
!929 = !DILocation(line: 460, column: 39, scope: !922)
!930 = !DILocation(line: 460, column: 9, scope: !922)
!931 = distinct !{!931, !923, !932, !244}
!932 = !DILocation(line: 463, column: 9, scope: !917)
!933 = !DILocation(line: 465, column: 18, scope: !801)
!934 = !DILocation(line: 465, column: 9, scope: !801)
!935 = !DILocation(line: 469, column: 13, scope: !936)
!936 = distinct !DILexicalBlock(scope: !801, file: !25, line: 469, column: 13)
!937 = !DILocation(line: 472, column: 13, scope: !938)
!938 = distinct !DILexicalBlock(scope: !936, file: !25, line: 471, column: 16)
!939 = !DILocation(line: 473, column: 13, scope: !938)
!940 = !DILocalVariable(name: "i", scope: !941, file: !25, line: 477, type: !45)
!941 = distinct !DILexicalBlock(scope: !801, file: !25, line: 477, column: 5)
!942 = !DILocation(line: 0, scope: !941)
!943 = !DILocation(line: 477, column: 10, scope: !941)
!944 = !DILocation(line: 477, scope: !941)
!945 = !DILocation(line: 477, column: 23, scope: !946)
!946 = distinct !DILexicalBlock(scope: !941, file: !25, line: 477, column: 5)
!947 = !DILocation(line: 477, column: 5, scope: !941)
!948 = !DILocation(line: 478, column: 23, scope: !949)
!949 = distinct !DILexicalBlock(scope: !946, file: !25, line: 477, column: 44)
!950 = !DILocation(line: 478, column: 19, scope: !949)
!951 = !DILocalVariable(name: "vi", scope: !801, file: !25, line: 376, type: !18)
!952 = !DILocation(line: 479, column: 17, scope: !949)
!953 = !DILocation(line: 479, column: 33, scope: !949)
!954 = !DILocation(line: 479, column: 29, scope: !949)
!955 = !DILocation(line: 479, column: 9, scope: !949)
!956 = !DILocation(line: 480, column: 31, scope: !949)
!957 = !DILocation(line: 480, column: 27, scope: !949)
!958 = !DILocation(line: 480, column: 9, scope: !949)
!959 = !DILocation(line: 481, column: 22, scope: !949)
!960 = !DILocation(line: 481, column: 18, scope: !949)
!961 = !DILocation(line: 481, column: 32, scope: !949)
!962 = !DILocation(line: 481, column: 61, scope: !949)
!963 = !DILocation(line: 481, column: 57, scope: !949)
!964 = !DILocation(line: 481, column: 9, scope: !949)
!965 = !DILocation(line: 477, column: 39, scope: !946)
!966 = !DILocation(line: 477, column: 5, scope: !946)
!967 = distinct !{!967, !947, !968, !244}
!968 = !DILocation(line: 482, column: 5, scope: !941)
!969 = !DILocation(line: 483, column: 5, scope: !801)
!970 = !DILocation(line: 485, column: 34, scope: !801)
!971 = !DILocation(line: 485, column: 5, scope: !801)
!972 = !DILocation(line: 486, column: 13, scope: !801)
!973 = !DILabel(scope: !801, name: "err", file: !25, line: 488)
!974 = !DILocation(line: 488, column: 1, scope: !801)
!975 = !DILocation(line: 489, column: 5, scope: !801)
!976 = !DILocation(line: 490, column: 5, scope: !801)
!977 = !DILocation(line: 491, column: 5, scope: !801)
!978 = !DILocation(line: 492, column: 5, scope: !801)
!979 = !DILocation(line: 493, column: 23, scope: !801)
!980 = !DILocation(line: 493, column: 5, scope: !801)
!981 = !DILocation(line: 494, column: 5, scope: !801)
!982 = !DILocation(line: 495, column: 5, scope: !801)
!983 = !DILocation(line: 496, column: 5, scope: !801)
!984 = !DILocation(line: 497, column: 5, scope: !801)
!985 = !DILocation(line: 498, column: 5, scope: !801)
!986 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !425, file: !425, line: 244, type: !987, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !278, !49, !428, !428, !5, !5}
!989 = !DILocalVariable(name: "p", arg: 1, scope: !986, file: !425, line: 244, type: !278)
!990 = !DILocation(line: 0, scope: !986)
!991 = !DILocalVariable(name: "Vdec", arg: 2, scope: !986, file: !425, line: 244, type: !49)
!992 = !DILocalVariable(name: "L", arg: 3, scope: !986, file: !425, line: 244, type: !428)
!993 = !DILocalVariable(name: "P1", arg: 4, scope: !986, file: !425, line: 244, type: !428)
!994 = !DILocalVariable(name: "VL", arg: 5, scope: !986, file: !425, line: 244, type: !5)
!995 = !DILocalVariable(name: "VP1V", arg: 6, scope: !986, file: !425, line: 244, type: !5)
!996 = !DILocalVariable(name: "param_k", scope: !986, file: !425, line: 246, type: !343)
!997 = !DILocalVariable(name: "param_v", scope: !986, file: !425, line: 247, type: !343)
!998 = !DILocalVariable(name: "param_o", scope: !986, file: !425, line: 248, type: !343)
!999 = !DILocation(line: 251, column: 5, scope: !986)
!1000 = !DILocalVariable(name: "Pv", scope: !986, file: !425, line: 254, type: !1001)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 981504, elements: !1002)
!1002 = !{!1003}
!1003 = !DISubrange(count: 15336)
!1004 = !DILocation(line: 254, column: 14, scope: !986)
!1005 = !DILocation(line: 255, column: 5, scope: !986)
!1006 = !DILocation(line: 256, column: 5, scope: !986)
!1007 = !DILocation(line: 257, column: 1, scope: !986)
!1008 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 43, type: !1009, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{null, !278, !5, !49, !18}
!1011 = !DILocalVariable(name: "p", arg: 1, scope: !1008, file: !25, line: 43, type: !278)
!1012 = !DILocation(line: 0, scope: !1008)
!1013 = !DILocalVariable(name: "vPv", arg: 2, scope: !1008, file: !25, line: 43, type: !5)
!1014 = !DILocalVariable(name: "t", arg: 3, scope: !1008, file: !25, line: 43, type: !49)
!1015 = !DILocalVariable(name: "y", arg: 4, scope: !1008, file: !25, line: 43, type: !18)
!1016 = !DILocalVariable(name: "top_pos", scope: !1008, file: !25, line: 48, type: !1017)
!1017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!1018 = !DILocalVariable(name: "m_vec_limbs", scope: !1008, file: !25, line: 49, type: !1017)
!1019 = !DILocalVariable(name: "mask", scope: !1020, file: !25, line: 53, type: !6)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !25, line: 52, column: 29)
!1021 = distinct !DILexicalBlock(scope: !1008, file: !25, line: 52, column: 8)
!1022 = !DILocation(line: 0, scope: !1020)
!1023 = !DILocalVariable(name: "i", scope: !1024, file: !25, line: 56, type: !45)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !25, line: 56, column: 9)
!1025 = !DILocation(line: 0, scope: !1024)
!1026 = !DILocation(line: 56, column: 14, scope: !1024)
!1027 = !DILocation(line: 56, scope: !1024)
!1028 = !DILocation(line: 56, column: 27, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !25, line: 56, column: 9)
!1030 = !DILocation(line: 56, column: 9, scope: !1024)
!1031 = !DILocation(line: 58, column: 13, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !25, line: 57, column: 9)
!1033 = !DILocation(line: 58, column: 50, scope: !1032)
!1034 = !DILocation(line: 56, column: 53, scope: !1029)
!1035 = !DILocation(line: 56, column: 9, scope: !1029)
!1036 = distinct !{!1036, !1030, !1037, !244}
!1037 = !DILocation(line: 59, column: 9, scope: !1024)
!1038 = !DILocalVariable(name: "temp", scope: !1008, file: !25, line: 62, type: !681)
!1039 = !DILocation(line: 62, column: 14, scope: !1008)
!1040 = !DILocalVariable(name: "temp_bytes", scope: !1008, file: !25, line: 63, type: !18)
!1041 = !DILocalVariable(name: "i", scope: !1042, file: !25, line: 64, type: !45)
!1042 = distinct !DILexicalBlock(scope: !1008, file: !25, line: 64, column: 5)
!1043 = !DILocation(line: 0, scope: !1042)
!1044 = !DILocation(line: 64, column: 10, scope: !1042)
!1045 = !DILocation(line: 64, scope: !1042)
!1046 = !DILocation(line: 64, column: 36, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1042, file: !25, line: 64, column: 5)
!1048 = !DILocation(line: 64, column: 5, scope: !1042)
!1049 = !DILocation(line: 65, column: 9, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !25, line: 65, column: 9)
!1051 = distinct !DILexicalBlock(scope: !1047, file: !25, line: 64, column: 48)
!1052 = !DILocation(line: 99, column: 5, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1008, file: !25, line: 99, column: 5)
!1054 = !DILocation(line: 65, scope: !1050)
!1055 = !DILocalVariable(name: "j", scope: !1050, file: !25, line: 65, type: !45)
!1056 = !DILocation(line: 0, scope: !1050)
!1057 = !DILocation(line: 65, column: 27, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1050, file: !25, line: 65, column: 9)
!1059 = !DILocation(line: 67, column: 34, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1058, file: !25, line: 65, column: 46)
!1061 = !DILocation(line: 67, column: 54, scope: !1060)
!1062 = !DILocation(line: 67, column: 66, scope: !1060)
!1063 = !DILocalVariable(name: "top", scope: !1060, file: !25, line: 67, type: !14)
!1064 = !DILocation(line: 0, scope: !1060)
!1065 = !DILocation(line: 68, column: 13, scope: !1060)
!1066 = !DILocation(line: 68, column: 33, scope: !1060)
!1067 = !DILocalVariable(name: "k", scope: !1068, file: !25, line: 69, type: !45)
!1068 = distinct !DILexicalBlock(scope: !1060, file: !25, line: 69, column: 13)
!1069 = !DILocation(line: 0, scope: !1068)
!1070 = !DILocation(line: 69, column: 17, scope: !1068)
!1071 = !DILocation(line: 69, scope: !1068)
!1072 = !DILocation(line: 69, column: 43, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !25, line: 69, column: 13)
!1074 = !DILocation(line: 69, column: 13, scope: !1068)
!1075 = !DILocation(line: 74, column: 13, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1060, file: !25, line: 74, column: 13)
!1077 = !DILocation(line: 70, column: 30, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1073, file: !25, line: 69, column: 52)
!1079 = !DILocation(line: 70, column: 38, scope: !1078)
!1080 = !DILocation(line: 70, column: 23, scope: !1078)
!1081 = !DILocation(line: 70, column: 17, scope: !1078)
!1082 = !DILocation(line: 70, column: 27, scope: !1078)
!1083 = !DILocation(line: 71, column: 17, scope: !1078)
!1084 = !DILocation(line: 71, column: 25, scope: !1078)
!1085 = !DILocation(line: 69, column: 49, scope: !1073)
!1086 = !DILocation(line: 69, column: 13, scope: !1073)
!1087 = distinct !{!1087, !1074, !1088, !244}
!1088 = !DILocation(line: 72, column: 13, scope: !1068)
!1089 = !DILocation(line: 74, scope: !1076)
!1090 = !DILocalVariable(name: "jj", scope: !1076, file: !25, line: 74, type: !45)
!1091 = !DILocation(line: 0, scope: !1076)
!1092 = !DILocation(line: 74, column: 33, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1076, file: !25, line: 74, column: 13)
!1094 = !DILocation(line: 92, column: 13, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1060, file: !25, line: 92, column: 13)
!1096 = !DILocation(line: 75, column: 22, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !25, line: 75, column: 20)
!1098 = distinct !DILexicalBlock(scope: !1093, file: !25, line: 74, column: 53)
!1099 = !DILocation(line: 75, column: 25, scope: !1097)
!1100 = !DILocation(line: 79, column: 52, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1097, file: !25, line: 75, column: 30)
!1102 = !DILocation(line: 79, column: 41, scope: !1101)
!1103 = !DILocation(line: 79, column: 34, scope: !1101)
!1104 = !DILocation(line: 79, column: 21, scope: !1101)
!1105 = !DILocation(line: 79, column: 38, scope: !1101)
!1106 = !DILocation(line: 81, column: 17, scope: !1101)
!1107 = !DILocation(line: 86, column: 52, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1097, file: !25, line: 82, column: 22)
!1109 = !DILocation(line: 86, column: 41, scope: !1108)
!1110 = !DILocation(line: 86, column: 73, scope: !1108)
!1111 = !DILocation(line: 86, column: 34, scope: !1108)
!1112 = !DILocation(line: 86, column: 21, scope: !1108)
!1113 = !DILocation(line: 86, column: 38, scope: !1108)
!1114 = !DILocation(line: 74, column: 49, scope: !1093)
!1115 = !DILocation(line: 74, column: 13, scope: !1093)
!1116 = distinct !{!1116, !1075, !1117, !244}
!1117 = !DILocation(line: 89, column: 13, scope: !1076)
!1118 = !DILocation(line: 92, scope: !1095)
!1119 = !DILocalVariable(name: "k", scope: !1095, file: !25, line: 92, type: !15)
!1120 = !DILocation(line: 0, scope: !1095)
!1121 = !DILocation(line: 92, column: 31, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1095, file: !25, line: 92, column: 13)
!1123 = !DILocation(line: 93, column: 36, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1122, file: !25, line: 92, column: 51)
!1125 = !DILocation(line: 93, column: 49, scope: !1124)
!1126 = !DILocation(line: 93, column: 28, scope: !1124)
!1127 = !DILocation(line: 93, column: 78, scope: !1124)
!1128 = !DILocation(line: 93, column: 91, scope: !1124)
!1129 = !DILocation(line: 93, column: 104, scope: !1124)
!1130 = !DILocation(line: 93, column: 83, scope: !1124)
!1131 = !DILocation(line: 93, column: 82, scope: !1124)
!1132 = !DILocation(line: 93, column: 73, scope: !1124)
!1133 = !DILocation(line: 93, column: 17, scope: !1124)
!1134 = !DILocation(line: 93, column: 25, scope: !1124)
!1135 = !DILocation(line: 92, column: 48, scope: !1122)
!1136 = !DILocation(line: 92, column: 13, scope: !1122)
!1137 = distinct !{!1137, !1094, !1138, !244}
!1138 = !DILocation(line: 94, column: 13, scope: !1095)
!1139 = !DILocation(line: 65, column: 42, scope: !1058)
!1140 = !DILocation(line: 65, column: 9, scope: !1058)
!1141 = distinct !{!1141, !1049, !1142, !244}
!1142 = !DILocation(line: 95, column: 9, scope: !1050)
!1143 = !DILocation(line: 64, column: 44, scope: !1047)
!1144 = !DILocation(line: 64, column: 5, scope: !1047)
!1145 = distinct !{!1145, !1048, !1146, !244}
!1146 = !DILocation(line: 96, column: 5, scope: !1042)
!1147 = !DILocation(line: 99, scope: !1053)
!1148 = !DILocalVariable(name: "i", scope: !1053, file: !25, line: 99, type: !45)
!1149 = !DILocation(line: 0, scope: !1053)
!1150 = !DILocation(line: 99, column: 23, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1053, file: !25, line: 99, column: 5)
!1152 = !DILocation(line: 105, column: 18, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1151, file: !25, line: 100, column: 5)
!1154 = !DILocation(line: 105, column: 40, scope: !1153)
!1155 = !DILocation(line: 105, column: 28, scope: !1153)
!1156 = !DILocation(line: 105, column: 44, scope: !1153)
!1157 = !DILocation(line: 105, column: 25, scope: !1153)
!1158 = !DILocation(line: 105, column: 9, scope: !1153)
!1159 = !DILocation(line: 105, column: 16, scope: !1153)
!1160 = !DILocation(line: 106, column: 21, scope: !1153)
!1161 = !DILocation(line: 106, column: 18, scope: !1153)
!1162 = !DILocation(line: 106, column: 40, scope: !1153)
!1163 = !DILocation(line: 106, column: 28, scope: !1153)
!1164 = !DILocation(line: 106, column: 44, scope: !1153)
!1165 = !DILocation(line: 106, column: 25, scope: !1153)
!1166 = !DILocation(line: 106, column: 12, scope: !1153)
!1167 = !DILocation(line: 106, column: 9, scope: !1153)
!1168 = !DILocation(line: 106, column: 16, scope: !1153)
!1169 = !DILocation(line: 99, column: 38, scope: !1151)
!1170 = !DILocation(line: 99, column: 5, scope: !1151)
!1171 = distinct !{!1171, !1052, !1172, !244}
!1172 = !DILocation(line: 108, column: 5, scope: !1053)
!1173 = !DILocation(line: 109, column: 1, scope: !1008)
!1174 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 154, type: !1175, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{null, !278, !5, !18}
!1177 = !DILocalVariable(name: "p", arg: 1, scope: !1174, file: !25, line: 154, type: !278)
!1178 = !DILocation(line: 0, scope: !1174)
!1179 = !DILocalVariable(name: "VtL", arg: 2, scope: !1174, file: !25, line: 154, type: !5)
!1180 = !DILocalVariable(name: "A_out", arg: 3, scope: !1174, file: !25, line: 154, type: !18)
!1181 = !DILocalVariable(name: "bits_to_shift", scope: !1174, file: !25, line: 159, type: !45)
!1182 = !DILocalVariable(name: "words_to_shift", scope: !1174, file: !25, line: 160, type: !45)
!1183 = !DILocalVariable(name: "m_vec_limbs", scope: !1174, file: !25, line: 161, type: !343)
!1184 = !DILocalVariable(name: "A", scope: !1174, file: !25, line: 162, type: !1185)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 165888, elements: !1186)
!1186 = !{!1187}
!1187 = !DISubrange(count: 2592)
!1188 = !DILocation(line: 162, column: 14, scope: !1174)
!1189 = !DILocalVariable(name: "A_width", scope: !1174, file: !25, line: 163, type: !15)
!1190 = !DILocalVariable(name: "mask", scope: !1191, file: !25, line: 168, type: !6)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !25, line: 167, column: 29)
!1192 = distinct !DILexicalBlock(scope: !1174, file: !25, line: 167, column: 8)
!1193 = !DILocation(line: 0, scope: !1191)
!1194 = !DILocalVariable(name: "i", scope: !1195, file: !25, line: 171, type: !45)
!1195 = distinct !DILexicalBlock(scope: !1191, file: !25, line: 171, column: 9)
!1196 = !DILocation(line: 0, scope: !1195)
!1197 = !DILocation(line: 171, column: 14, scope: !1195)
!1198 = !DILocation(line: 171, scope: !1195)
!1199 = !DILocation(line: 171, column: 27, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1195, file: !25, line: 171, column: 9)
!1201 = !DILocation(line: 171, column: 9, scope: !1195)
!1202 = !DILocation(line: 177, column: 5, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1174, file: !25, line: 177, column: 5)
!1204 = !DILocation(line: 173, column: 13, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1200, file: !25, line: 172, column: 9)
!1206 = !DILocation(line: 173, column: 50, scope: !1205)
!1207 = !DILocation(line: 171, column: 53, scope: !1200)
!1208 = !DILocation(line: 171, column: 9, scope: !1200)
!1209 = distinct !{!1209, !1201, !1210, !244}
!1210 = !DILocation(line: 174, column: 9, scope: !1195)
!1211 = !DILocation(line: 177, scope: !1203)
!1212 = !DILocation(line: 160, column: 9, scope: !1174)
!1213 = !DILocation(line: 159, column: 9, scope: !1174)
!1214 = !DILocalVariable(name: "i", scope: !1203, file: !25, line: 177, type: !45)
!1215 = !DILocation(line: 0, scope: !1203)
!1216 = !DILocation(line: 177, column: 23, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1203, file: !25, line: 177, column: 5)
!1218 = !DILocation(line: 178, column: 9, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !25, line: 178, column: 9)
!1220 = distinct !DILexicalBlock(scope: !1217, file: !25, line: 177, column: 47)
!1221 = !DILocation(line: 212, column: 5, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1174, file: !25, line: 212, column: 5)
!1223 = !DILocation(line: 178, scope: !1219)
!1224 = !DILocalVariable(name: "j", scope: !1219, file: !25, line: 178, type: !45)
!1225 = !DILocation(line: 0, scope: !1219)
!1226 = !DILocation(line: 178, column: 40, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1219, file: !25, line: 178, column: 9)
!1228 = !DILocation(line: 180, column: 22, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1227, file: !25, line: 178, column: 51)
!1230 = !DILocalVariable(name: "Mj", scope: !1174, file: !25, line: 164, type: !428)
!1231 = !DILocalVariable(name: "c", scope: !1232, file: !25, line: 181, type: !45)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !25, line: 181, column: 13)
!1233 = !DILocation(line: 0, scope: !1232)
!1234 = !DILocation(line: 181, column: 18, scope: !1232)
!1235 = !DILocation(line: 181, scope: !1232)
!1236 = !DILocation(line: 181, column: 31, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1232, file: !25, line: 181, column: 13)
!1238 = !DILocation(line: 181, column: 13, scope: !1232)
!1239 = !DILocation(line: 182, column: 17, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !25, line: 182, column: 17)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !25, line: 181, column: 50)
!1242 = !DILocation(line: 182, scope: !1240)
!1243 = !DILocalVariable(name: "k", scope: !1240, file: !25, line: 182, type: !45)
!1244 = !DILocation(line: 0, scope: !1240)
!1245 = !DILocation(line: 182, column: 35, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1240, file: !25, line: 182, column: 17)
!1247 = !DILocation(line: 184, column: 78, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1246, file: !25, line: 183, column: 17)
!1249 = !DILocation(line: 184, column: 100, scope: !1248)
!1250 = !DILocation(line: 184, column: 35, scope: !1248)
!1251 = !DILocation(line: 184, column: 39, scope: !1248)
!1252 = !DILocation(line: 184, column: 48, scope: !1248)
!1253 = !DILocation(line: 184, column: 65, scope: !1248)
!1254 = !DILocation(line: 184, column: 43, scope: !1248)
!1255 = !DILocation(line: 184, column: 21, scope: !1248)
!1256 = !DILocation(line: 184, column: 75, scope: !1248)
!1257 = !DILocation(line: 185, column: 38, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1248, file: !25, line: 185, column: 24)
!1259 = !DILocation(line: 186, column: 86, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1258, file: !25, line: 185, column: 42)
!1261 = !DILocation(line: 186, column: 114, scope: !1260)
!1262 = !DILocation(line: 186, column: 108, scope: !1260)
!1263 = !DILocation(line: 186, column: 39, scope: !1260)
!1264 = !DILocation(line: 186, column: 43, scope: !1260)
!1265 = !DILocation(line: 186, column: 52, scope: !1260)
!1266 = !DILocation(line: 186, column: 73, scope: !1260)
!1267 = !DILocation(line: 186, column: 47, scope: !1260)
!1268 = !DILocation(line: 186, column: 25, scope: !1260)
!1269 = !DILocation(line: 186, column: 83, scope: !1260)
!1270 = !DILocation(line: 187, column: 21, scope: !1260)
!1271 = !DILocation(line: 182, column: 51, scope: !1246)
!1272 = !DILocation(line: 182, column: 17, scope: !1246)
!1273 = distinct !{!1273, !1239, !1274, !244}
!1274 = !DILocation(line: 188, column: 17, scope: !1240)
!1275 = !DILocation(line: 181, column: 46, scope: !1237)
!1276 = !DILocation(line: 181, column: 13, scope: !1237)
!1277 = distinct !{!1277, !1238, !1278, !244}
!1278 = !DILocation(line: 189, column: 13, scope: !1232)
!1279 = !DILocation(line: 191, column: 19, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1229, file: !25, line: 191, column: 17)
!1281 = !DILocation(line: 192, column: 26, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1280, file: !25, line: 191, column: 25)
!1283 = !DILocalVariable(name: "Mi", scope: !1174, file: !25, line: 164, type: !428)
!1284 = !DILocalVariable(name: "c", scope: !1285, file: !25, line: 193, type: !45)
!1285 = distinct !DILexicalBlock(scope: !1282, file: !25, line: 193, column: 17)
!1286 = !DILocation(line: 0, scope: !1285)
!1287 = !DILocation(line: 193, column: 22, scope: !1285)
!1288 = !DILocation(line: 193, scope: !1285)
!1289 = !DILocation(line: 193, column: 35, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1285, file: !25, line: 193, column: 17)
!1291 = !DILocation(line: 193, column: 17, scope: !1285)
!1292 = !DILocation(line: 194, column: 21, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !25, line: 194, column: 21)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !25, line: 193, column: 54)
!1295 = !DILocation(line: 194, scope: !1293)
!1296 = !DILocalVariable(name: "k", scope: !1293, file: !25, line: 194, type: !45)
!1297 = !DILocation(line: 0, scope: !1293)
!1298 = !DILocation(line: 194, column: 39, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1293, file: !25, line: 194, column: 21)
!1300 = !DILocation(line: 196, column: 81, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1299, file: !25, line: 195, column: 21)
!1302 = !DILocation(line: 196, column: 103, scope: !1301)
!1303 = !DILocation(line: 196, column: 38, scope: !1301)
!1304 = !DILocation(line: 196, column: 42, scope: !1301)
!1305 = !DILocation(line: 196, column: 51, scope: !1301)
!1306 = !DILocation(line: 196, column: 68, scope: !1301)
!1307 = !DILocation(line: 196, column: 46, scope: !1301)
!1308 = !DILocation(line: 196, column: 25, scope: !1301)
!1309 = !DILocation(line: 196, column: 78, scope: !1301)
!1310 = !DILocation(line: 197, column: 42, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1301, file: !25, line: 197, column: 28)
!1312 = !DILocation(line: 198, column: 89, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1311, file: !25, line: 197, column: 46)
!1314 = !DILocation(line: 198, column: 117, scope: !1313)
!1315 = !DILocation(line: 198, column: 111, scope: !1313)
!1316 = !DILocation(line: 198, column: 42, scope: !1313)
!1317 = !DILocation(line: 198, column: 46, scope: !1313)
!1318 = !DILocation(line: 198, column: 55, scope: !1313)
!1319 = !DILocation(line: 198, column: 76, scope: !1313)
!1320 = !DILocation(line: 198, column: 50, scope: !1313)
!1321 = !DILocation(line: 198, column: 29, scope: !1313)
!1322 = !DILocation(line: 198, column: 86, scope: !1313)
!1323 = !DILocation(line: 199, column: 25, scope: !1313)
!1324 = !DILocation(line: 194, column: 55, scope: !1299)
!1325 = !DILocation(line: 194, column: 21, scope: !1299)
!1326 = distinct !{!1326, !1292, !1327, !244}
!1327 = !DILocation(line: 200, column: 21, scope: !1293)
!1328 = !DILocation(line: 193, column: 50, scope: !1290)
!1329 = !DILocation(line: 193, column: 17, scope: !1290)
!1330 = distinct !{!1330, !1291, !1331, !244}
!1331 = !DILocation(line: 201, column: 17, scope: !1285)
!1332 = !DILocation(line: 204, column: 27, scope: !1229)
!1333 = !DILocation(line: 205, column: 30, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1229, file: !25, line: 205, column: 16)
!1335 = !DILocation(line: 178, column: 46, scope: !1227)
!1336 = !DILocation(line: 178, column: 9, scope: !1227)
!1337 = distinct !{!1337, !1218, !1338, !244}
!1338 = !DILocation(line: 209, column: 9, scope: !1219)
!1339 = !DILocation(line: 177, column: 42, scope: !1217)
!1340 = !DILocation(line: 177, column: 5, scope: !1217)
!1341 = distinct !{!1341, !1202, !1342, !244}
!1342 = !DILocation(line: 210, column: 5, scope: !1203)
!1343 = !DILocation(line: 212, scope: !1222)
!1344 = !DILocalVariable(name: "c", scope: !1222, file: !25, line: 212, type: !15)
!1345 = !DILocation(line: 0, scope: !1222)
!1346 = !DILocation(line: 212, column: 26, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1222, file: !25, line: 212, column: 5)
!1348 = !DILocation(line: 214, column: 35, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1347, file: !25, line: 213, column: 5)
!1350 = !DILocation(line: 214, column: 9, scope: !1349)
!1351 = !DILocation(line: 212, column: 91, scope: !1347)
!1352 = !DILocation(line: 212, column: 5, scope: !1347)
!1353 = distinct !{!1353, !1221, !1354, !244}
!1354 = !DILocation(line: 215, column: 5, scope: !1222)
!1355 = !DILocalVariable(name: "tab", scope: !1174, file: !25, line: 217, type: !116)
!1356 = !DILocation(line: 217, column: 19, scope: !1174)
!1357 = !DILocalVariable(name: "i", scope: !1358, file: !25, line: 218, type: !15)
!1358 = distinct !DILexicalBlock(scope: !1174, file: !25, line: 218, column: 5)
!1359 = !DILocation(line: 0, scope: !1358)
!1360 = !DILocation(line: 218, column: 10, scope: !1358)
!1361 = !DILocation(line: 218, scope: !1358)
!1362 = !DILocation(line: 218, column: 26, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1358, file: !25, line: 218, column: 5)
!1364 = !DILocation(line: 218, column: 5, scope: !1358)
!1365 = !DILocation(line: 228, column: 5, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1174, file: !25, line: 228, column: 5)
!1367 = !DILocation(line: 220, column: 28, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !25, line: 219, column: 5)
!1369 = !DILocation(line: 220, column: 22, scope: !1368)
!1370 = !DILocation(line: 220, column: 14, scope: !1368)
!1371 = !DILocation(line: 220, column: 9, scope: !1368)
!1372 = !DILocation(line: 220, column: 20, scope: !1368)
!1373 = !DILocation(line: 221, column: 22, scope: !1368)
!1374 = !DILocation(line: 221, column: 14, scope: !1368)
!1375 = !DILocation(line: 221, column: 16, scope: !1368)
!1376 = !DILocation(line: 221, column: 9, scope: !1368)
!1377 = !DILocation(line: 221, column: 20, scope: !1368)
!1378 = !DILocation(line: 222, column: 28, scope: !1368)
!1379 = !DILocation(line: 222, column: 22, scope: !1368)
!1380 = !DILocation(line: 222, column: 14, scope: !1368)
!1381 = !DILocation(line: 222, column: 16, scope: !1368)
!1382 = !DILocation(line: 222, column: 9, scope: !1368)
!1383 = !DILocation(line: 222, column: 20, scope: !1368)
!1384 = !DILocation(line: 223, column: 28, scope: !1368)
!1385 = !DILocation(line: 223, column: 22, scope: !1368)
!1386 = !DILocation(line: 223, column: 14, scope: !1368)
!1387 = !DILocation(line: 223, column: 16, scope: !1368)
!1388 = !DILocation(line: 223, column: 9, scope: !1368)
!1389 = !DILocation(line: 223, column: 20, scope: !1368)
!1390 = !DILocation(line: 218, column: 41, scope: !1363)
!1391 = !DILocation(line: 218, column: 5, scope: !1363)
!1392 = distinct !{!1392, !1364, !1393, !244}
!1393 = !DILocation(line: 224, column: 5, scope: !1358)
!1394 = !DILocation(line: 228, scope: !1366)
!1395 = !DILocalVariable(name: "c", scope: !1366, file: !25, line: 228, type: !15)
!1396 = !DILocation(line: 0, scope: !1366)
!1397 = !DILocation(line: 228, column: 26, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1366, file: !25, line: 228, column: 5)
!1399 = !DILocation(line: 230, column: 9, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !25, line: 230, column: 9)
!1401 = distinct !DILexicalBlock(scope: !1398, file: !25, line: 229, column: 5)
!1402 = !DILocation(line: 250, column: 5, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1174, file: !25, line: 250, column: 5)
!1404 = !DILocation(line: 230, scope: !1400)
!1405 = !DILocalVariable(name: "r", scope: !1400, file: !25, line: 230, type: !45)
!1406 = !DILocation(line: 0, scope: !1400)
!1407 = !DILocation(line: 230, column: 36, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1400, file: !25, line: 230, column: 9)
!1409 = !DILocation(line: 232, column: 28, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1408, file: !25, line: 231, column: 9)
!1411 = !DILocation(line: 232, column: 32, scope: !1410)
!1412 = !DILocation(line: 232, column: 41, scope: !1410)
!1413 = !DILocation(line: 232, column: 49, scope: !1410)
!1414 = !DILocation(line: 232, column: 45, scope: !1410)
!1415 = !DILocalVariable(name: "pos", scope: !1410, file: !25, line: 232, type: !15)
!1416 = !DILocation(line: 0, scope: !1410)
!1417 = !DILocation(line: 233, column: 28, scope: !1410)
!1418 = !DILocation(line: 233, column: 41, scope: !1410)
!1419 = !DILocalVariable(name: "t0", scope: !1410, file: !25, line: 233, type: !6)
!1420 = !DILocation(line: 234, column: 35, scope: !1410)
!1421 = !DILocation(line: 234, column: 41, scope: !1410)
!1422 = !DILocalVariable(name: "t1", scope: !1410, file: !25, line: 234, type: !6)
!1423 = !DILocation(line: 235, column: 35, scope: !1410)
!1424 = !DILocation(line: 235, column: 41, scope: !1410)
!1425 = !DILocalVariable(name: "t2", scope: !1410, file: !25, line: 235, type: !6)
!1426 = !DILocation(line: 236, column: 28, scope: !1410)
!1427 = !DILocation(line: 236, column: 35, scope: !1410)
!1428 = !DILocation(line: 236, column: 41, scope: !1410)
!1429 = !DILocalVariable(name: "t3", scope: !1410, file: !25, line: 236, type: !6)
!1430 = !DILocalVariable(name: "t", scope: !1431, file: !25, line: 237, type: !15)
!1431 = distinct !DILexicalBlock(scope: !1410, file: !25, line: 237, column: 13)
!1432 = !DILocation(line: 0, scope: !1431)
!1433 = !DILocation(line: 237, column: 18, scope: !1431)
!1434 = !DILocation(line: 237, scope: !1431)
!1435 = !DILocation(line: 237, column: 34, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1431, file: !25, line: 237, column: 13)
!1437 = !DILocation(line: 237, column: 13, scope: !1431)
!1438 = !DILocation(line: 239, column: 89, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1436, file: !25, line: 238, column: 13)
!1440 = !DILocation(line: 239, column: 84, scope: !1439)
!1441 = !DILocation(line: 239, column: 83, scope: !1439)
!1442 = !DILocation(line: 239, column: 105, scope: !1439)
!1443 = !DILocation(line: 239, column: 107, scope: !1439)
!1444 = !DILocation(line: 239, column: 100, scope: !1439)
!1445 = !DILocation(line: 239, column: 99, scope: !1439)
!1446 = !DILocation(line: 239, column: 95, scope: !1439)
!1447 = !DILocation(line: 239, column: 121, scope: !1439)
!1448 = !DILocation(line: 239, column: 123, scope: !1439)
!1449 = !DILocation(line: 239, column: 116, scope: !1439)
!1450 = !DILocation(line: 239, column: 115, scope: !1439)
!1451 = !DILocation(line: 239, column: 111, scope: !1439)
!1452 = !DILocation(line: 239, column: 137, scope: !1439)
!1453 = !DILocation(line: 239, column: 139, scope: !1439)
!1454 = !DILocation(line: 239, column: 132, scope: !1439)
!1455 = !DILocation(line: 239, column: 131, scope: !1439)
!1456 = !DILocation(line: 239, column: 127, scope: !1439)
!1457 = !DILocation(line: 239, column: 22, scope: !1439)
!1458 = !DILocation(line: 239, column: 24, scope: !1439)
!1459 = !DILocation(line: 239, column: 36, scope: !1439)
!1460 = !DILocation(line: 239, column: 40, scope: !1439)
!1461 = !DILocation(line: 239, column: 49, scope: !1439)
!1462 = !DILocation(line: 239, column: 58, scope: !1439)
!1463 = !DILocation(line: 239, column: 60, scope: !1439)
!1464 = !DILocation(line: 239, column: 72, scope: !1439)
!1465 = !DILocation(line: 239, column: 53, scope: !1439)
!1466 = !DILocation(line: 239, column: 17, scope: !1439)
!1467 = !DILocation(line: 239, column: 78, scope: !1439)
!1468 = !DILocation(line: 237, column: 49, scope: !1436)
!1469 = !DILocation(line: 237, column: 13, scope: !1436)
!1470 = distinct !{!1470, !1437, !1471, !244}
!1471 = !DILocation(line: 240, column: 13, scope: !1431)
!1472 = !DILocation(line: 230, column: 82, scope: !1408)
!1473 = !DILocation(line: 230, column: 9, scope: !1408)
!1474 = distinct !{!1474, !1399, !1475, !244}
!1475 = !DILocation(line: 241, column: 9, scope: !1400)
!1476 = !DILocation(line: 228, column: 38, scope: !1398)
!1477 = !DILocation(line: 228, column: 5, scope: !1398)
!1478 = distinct !{!1478, !1365, !1479, !244}
!1479 = !DILocation(line: 242, column: 5, scope: !1366)
!1480 = !DILocation(line: 250, scope: !1403)
!1481 = !DILocalVariable(name: "r", scope: !1403, file: !25, line: 250, type: !45)
!1482 = !DILocation(line: 0, scope: !1403)
!1483 = !DILocation(line: 250, column: 23, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1403, file: !25, line: 250, column: 5)
!1485 = !DILocation(line: 252, column: 9, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !25, line: 252, column: 9)
!1487 = distinct !DILexicalBlock(scope: !1484, file: !25, line: 251, column: 5)
!1488 = !DILocation(line: 252, scope: !1486)
!1489 = !DILocalVariable(name: "c", scope: !1486, file: !25, line: 252, type: !45)
!1490 = !DILocation(line: 0, scope: !1486)
!1491 = !DILocation(line: 252, column: 27, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1486, file: !25, line: 252, column: 9)
!1493 = !DILocation(line: 254, column: 13, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !25, line: 254, column: 13)
!1495 = distinct !DILexicalBlock(scope: !1492, file: !25, line: 253, column: 9)
!1496 = !DILocation(line: 254, scope: !1494)
!1497 = !DILocalVariable(name: "i", scope: !1494, file: !25, line: 254, type: !45)
!1498 = !DILocation(line: 0, scope: !1494)
!1499 = !DILocation(line: 254, column: 35, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1494, file: !25, line: 254, column: 13)
!1501 = !DILocation(line: 256, column: 55, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1500, file: !25, line: 255, column: 13)
!1503 = !DILocation(line: 256, column: 59, scope: !1502)
!1504 = !DILocation(line: 256, column: 63, scope: !1502)
!1505 = !DILocation(line: 256, column: 44, scope: !1502)
!1506 = !DILocation(line: 256, column: 95, scope: !1502)
!1507 = !DILocation(line: 256, column: 92, scope: !1502)
!1508 = !DILocation(line: 256, column: 75, scope: !1502)
!1509 = !DILocation(line: 256, column: 99, scope: !1502)
!1510 = !DILocation(line: 256, column: 104, scope: !1502)
!1511 = !DILocation(line: 256, column: 17, scope: !1502)
!1512 = !DILocation(line: 254, column: 50, scope: !1500)
!1513 = !DILocation(line: 254, column: 13, scope: !1500)
!1514 = distinct !{!1514, !1493, !1515, !244}
!1515 = !DILocation(line: 257, column: 13, scope: !1494)
!1516 = !DILocation(line: 252, column: 50, scope: !1492)
!1517 = !DILocation(line: 252, column: 9, scope: !1492)
!1518 = distinct !{!1518, !1485, !1519, !244}
!1519 = !DILocation(line: 258, column: 9, scope: !1486)
!1520 = !DILocation(line: 250, column: 38, scope: !1484)
!1521 = !DILocation(line: 250, column: 5, scope: !1484)
!1522 = distinct !{!1522, !1402, !1523, !244}
!1523 = !DILocation(line: 259, column: 5, scope: !1403)
!1524 = !DILocation(line: 260, column: 1, scope: !1174)
!1525 = distinct !DISubprogram(name: "mat_mul", scope: !595, file: !595, line: 79, type: !1526, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{null, !49, !49, !18, !45, !45, !45}
!1528 = !DILocalVariable(name: "a", arg: 1, scope: !1525, file: !595, line: 79, type: !49)
!1529 = !DILocation(line: 0, scope: !1525)
!1530 = !DILocalVariable(name: "b", arg: 2, scope: !1525, file: !595, line: 79, type: !49)
!1531 = !DILocalVariable(name: "c", arg: 3, scope: !1525, file: !595, line: 80, type: !18)
!1532 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1525, file: !595, line: 80, type: !45)
!1533 = !DILocalVariable(name: "row_a", arg: 5, scope: !1525, file: !595, line: 80, type: !45)
!1534 = !DILocalVariable(name: "col_b", arg: 6, scope: !1525, file: !595, line: 80, type: !45)
!1535 = !DILocalVariable(name: "i", scope: !1536, file: !595, line: 81, type: !45)
!1536 = distinct !DILexicalBlock(scope: !1525, file: !595, line: 81, column: 5)
!1537 = !DILocation(line: 0, scope: !1536)
!1538 = !DILocation(line: 81, column: 10, scope: !1536)
!1539 = !DILocation(line: 81, scope: !1536)
!1540 = !DILocation(line: 81, column: 23, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1536, file: !595, line: 81, column: 5)
!1542 = !DILocation(line: 81, column: 5, scope: !1536)
!1543 = !DILocation(line: 82, column: 9, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !595, line: 82, column: 9)
!1545 = distinct !DILexicalBlock(scope: !1541, file: !595, line: 81, column: 53)
!1546 = !DILocation(line: 82, scope: !1544)
!1547 = !DILocalVariable(name: "j", scope: !1544, file: !595, line: 82, type: !45)
!1548 = !DILocation(line: 0, scope: !1544)
!1549 = !DILocation(line: 83, column: 18, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !595, line: 82, column: 46)
!1551 = distinct !DILexicalBlock(scope: !1544, file: !595, line: 82, column: 9)
!1552 = !DILocation(line: 83, column: 16, scope: !1550)
!1553 = !DILocation(line: 82, column: 41, scope: !1551)
!1554 = !DILocation(line: 82, column: 9, scope: !1551)
!1555 = distinct !{!1555, !1543, !1556, !244}
!1556 = !DILocation(line: 84, column: 9, scope: !1544)
!1557 = !DILocation(line: 81, column: 32, scope: !1541)
!1558 = !DILocation(line: 81, column: 39, scope: !1541)
!1559 = !DILocation(line: 81, column: 5, scope: !1541)
!1560 = distinct !{!1560, !1542, !1561, !244}
!1561 = !DILocation(line: 85, column: 5, scope: !1536)
!1562 = !DILocation(line: 86, column: 1, scope: !1525)
!1563 = distinct !DISubprogram(name: "mat_add", scope: !595, file: !595, line: 88, type: !1564, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !49, !49, !18, !45, !45}
!1566 = !DILocalVariable(name: "a", arg: 1, scope: !1563, file: !595, line: 88, type: !49)
!1567 = !DILocation(line: 0, scope: !1563)
!1568 = !DILocalVariable(name: "b", arg: 2, scope: !1563, file: !595, line: 88, type: !49)
!1569 = !DILocalVariable(name: "c", arg: 3, scope: !1563, file: !595, line: 89, type: !18)
!1570 = !DILocalVariable(name: "m", arg: 4, scope: !1563, file: !595, line: 89, type: !45)
!1571 = !DILocalVariable(name: "n", arg: 5, scope: !1563, file: !595, line: 89, type: !45)
!1572 = !DILocalVariable(name: "i", scope: !1573, file: !595, line: 90, type: !45)
!1573 = distinct !DILexicalBlock(scope: !1563, file: !595, line: 90, column: 5)
!1574 = !DILocation(line: 0, scope: !1573)
!1575 = !DILocation(line: 90, column: 10, scope: !1573)
!1576 = !DILocation(line: 90, scope: !1573)
!1577 = !DILocation(line: 90, column: 23, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1573, file: !595, line: 90, column: 5)
!1579 = !DILocation(line: 90, column: 5, scope: !1573)
!1580 = !DILocalVariable(name: "j", scope: !1581, file: !595, line: 91, type: !45)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !595, line: 91, column: 9)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !595, line: 90, column: 33)
!1583 = !DILocation(line: 0, scope: !1581)
!1584 = !DILocation(line: 92, column: 42, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !595, line: 91, column: 37)
!1586 = distinct !DILexicalBlock(scope: !1581, file: !595, line: 91, column: 9)
!1587 = !DILocation(line: 92, column: 38, scope: !1585)
!1588 = !DILocation(line: 92, column: 60, scope: !1585)
!1589 = !DILocation(line: 92, column: 56, scope: !1585)
!1590 = !DILocation(line: 92, column: 32, scope: !1585)
!1591 = !DILocation(line: 92, column: 17, scope: !1585)
!1592 = !DILocation(line: 92, column: 30, scope: !1585)
!1593 = !DILocation(line: 90, column: 28, scope: !1578)
!1594 = !DILocation(line: 90, column: 5, scope: !1578)
!1595 = distinct !{!1595, !1579, !1596, !244}
!1596 = !DILocation(line: 94, column: 5, scope: !1573)
!1597 = !DILocation(line: 95, column: 1, scope: !1563)
!1598 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 32, type: !379, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1599 = !DILocalVariable(name: "m", arg: 1, scope: !1598, file: !25, line: 32, type: !49)
!1600 = !DILocation(line: 0, scope: !1598)
!1601 = !DILocalVariable(name: "menc", arg: 2, scope: !1598, file: !25, line: 32, type: !18)
!1602 = !DILocalVariable(name: "mlen", arg: 3, scope: !1598, file: !25, line: 32, type: !45)
!1603 = !DILocalVariable(name: "i", scope: !1598, file: !25, line: 33, type: !45)
!1604 = !DILocation(line: 34, column: 10, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1598, file: !25, line: 34, column: 5)
!1606 = !DILocation(line: 34, scope: !1605)
!1607 = !DILocation(line: 34, column: 19, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1605, file: !25, line: 34, column: 5)
!1609 = !DILocation(line: 34, column: 5, scope: !1605)
!1610 = !DILocation(line: 35, column: 20, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1608, file: !25, line: 34, column: 44)
!1612 = !DILocation(line: 35, column: 31, scope: !1611)
!1613 = !DILocation(line: 35, column: 27, scope: !1611)
!1614 = !DILocation(line: 35, column: 36, scope: !1611)
!1615 = !DILocation(line: 35, column: 24, scope: !1611)
!1616 = !DILocation(line: 35, column: 9, scope: !1611)
!1617 = !DILocation(line: 35, column: 17, scope: !1611)
!1618 = !DILocation(line: 34, column: 31, scope: !1608)
!1619 = !DILocation(line: 34, column: 38, scope: !1608)
!1620 = !DILocation(line: 34, column: 5, scope: !1608)
!1621 = distinct !{!1621, !1609, !1622, !244}
!1622 = !DILocation(line: 36, column: 5, scope: !1605)
!1623 = !DILocation(line: 41, column: 1, scope: !1598)
!1624 = distinct !DISubprogram(name: "add_f", scope: !595, file: !595, line: 43, type: !1625, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!14, !14, !14}
!1627 = !DILocalVariable(name: "a", arg: 1, scope: !1624, file: !595, line: 43, type: !14)
!1628 = !DILocation(line: 0, scope: !1624)
!1629 = !DILocalVariable(name: "b", arg: 2, scope: !1624, file: !595, line: 43, type: !14)
!1630 = !DILocation(line: 44, column: 14, scope: !1624)
!1631 = !DILocation(line: 44, column: 5, scope: !1624)
!1632 = distinct !DISubprogram(name: "lincomb", scope: !595, file: !595, line: 70, type: !1633, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!14, !49, !49, !45, !45}
!1635 = !DILocalVariable(name: "a", arg: 1, scope: !1632, file: !595, line: 70, type: !49)
!1636 = !DILocation(line: 0, scope: !1632)
!1637 = !DILocalVariable(name: "b", arg: 2, scope: !1632, file: !595, line: 71, type: !49)
!1638 = !DILocalVariable(name: "n", arg: 3, scope: !1632, file: !595, line: 71, type: !45)
!1639 = !DILocalVariable(name: "m", arg: 4, scope: !1632, file: !595, line: 71, type: !45)
!1640 = !DILocalVariable(name: "ret", scope: !1632, file: !595, line: 72, type: !14)
!1641 = !DILocalVariable(name: "i", scope: !1642, file: !595, line: 73, type: !45)
!1642 = distinct !DILexicalBlock(scope: !1632, file: !595, line: 73, column: 5)
!1643 = !DILocation(line: 0, scope: !1642)
!1644 = !DILocation(line: 73, column: 10, scope: !1642)
!1645 = !DILocation(line: 73, scope: !1642)
!1646 = !DILocation(line: 73, column: 23, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1642, file: !595, line: 73, column: 5)
!1648 = !DILocation(line: 73, column: 5, scope: !1642)
!1649 = !DILocation(line: 74, column: 27, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1647, file: !595, line: 73, column: 41)
!1651 = !DILocation(line: 74, column: 33, scope: !1650)
!1652 = !DILocation(line: 74, column: 21, scope: !1650)
!1653 = !DILocation(line: 74, column: 15, scope: !1650)
!1654 = !DILocation(line: 73, column: 28, scope: !1647)
!1655 = !DILocation(line: 73, column: 35, scope: !1647)
!1656 = !DILocation(line: 73, column: 5, scope: !1647)
!1657 = distinct !{!1657, !1648, !1658, !244}
!1658 = !DILocation(line: 75, column: 5, scope: !1642)
!1659 = !DILocation(line: 76, column: 5, scope: !1632)
!1660 = distinct !DISubprogram(name: "mul_f", scope: !595, file: !595, line: 9, type: !1625, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1661 = !DILocalVariable(name: "a", arg: 1, scope: !1660, file: !595, line: 9, type: !14)
!1662 = !DILocation(line: 0, scope: !1660)
!1663 = !DILocalVariable(name: "b", arg: 2, scope: !1660, file: !595, line: 9, type: !14)
!1664 = !DILocation(line: 14, column: 10, scope: !1660)
!1665 = !DILocation(line: 14, column: 7, scope: !1660)
!1666 = !DILocation(line: 17, column: 17, scope: !1660)
!1667 = !DILocalVariable(name: "p", scope: !1660, file: !595, line: 11, type: !14)
!1668 = !DILocation(line: 18, column: 13, scope: !1660)
!1669 = !DILocation(line: 18, column: 17, scope: !1660)
!1670 = !DILocation(line: 18, column: 7, scope: !1660)
!1671 = !DILocation(line: 19, column: 13, scope: !1660)
!1672 = !DILocation(line: 19, column: 17, scope: !1660)
!1673 = !DILocation(line: 19, column: 7, scope: !1660)
!1674 = !DILocation(line: 20, column: 13, scope: !1660)
!1675 = !DILocation(line: 20, column: 17, scope: !1660)
!1676 = !DILocation(line: 20, column: 7, scope: !1660)
!1677 = !DILocalVariable(name: "top_p", scope: !1660, file: !595, line: 23, type: !14)
!1678 = !DILocation(line: 24, column: 37, scope: !1660)
!1679 = !DILocation(line: 24, column: 52, scope: !1660)
!1680 = !DILocation(line: 24, column: 43, scope: !1660)
!1681 = !DILocation(line: 24, column: 59, scope: !1660)
!1682 = !DILocalVariable(name: "out", scope: !1660, file: !595, line: 24, type: !14)
!1683 = !DILocation(line: 25, column: 5, scope: !1660)
!1684 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 111, type: !5)
!1685 = !DILocation(line: 0, scope: !24)
!1686 = !DILocalVariable(name: "i", scope: !1687, file: !25, line: 117, type: !15)
!1687 = distinct !DILexicalBlock(scope: !24, file: !25, line: 117, column: 5)
!1688 = !DILocation(line: 0, scope: !1687)
!1689 = !DILocation(line: 117, column: 10, scope: !1687)
!1690 = !DILocation(line: 117, scope: !1687)
!1691 = !DILocation(line: 117, column: 26, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1687, file: !25, line: 117, column: 5)
!1693 = !DILocation(line: 117, column: 5, scope: !1687)
!1694 = !DILocation(line: 124, column: 5, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !24, file: !25, line: 124, column: 5)
!1696 = !DILocation(line: 119, column: 24, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1692, file: !25, line: 118, column: 5)
!1698 = !DILocation(line: 119, column: 29, scope: !1697)
!1699 = !DILocation(line: 119, column: 41, scope: !1697)
!1700 = !DILocation(line: 119, column: 38, scope: !1697)
!1701 = !DILocation(line: 119, column: 36, scope: !1697)
!1702 = !DILocation(line: 119, column: 46, scope: !1697)
!1703 = !DILocalVariable(name: "t", scope: !1697, file: !25, line: 119, type: !6)
!1704 = !DILocation(line: 0, scope: !1697)
!1705 = !DILocation(line: 120, column: 21, scope: !1697)
!1706 = !DILocation(line: 120, column: 9, scope: !1697)
!1707 = !DILocation(line: 120, column: 16, scope: !1697)
!1708 = !DILocation(line: 121, column: 12, scope: !1697)
!1709 = !DILocation(line: 121, column: 9, scope: !1697)
!1710 = !DILocation(line: 121, column: 16, scope: !1697)
!1711 = !DILocation(line: 117, column: 33, scope: !1692)
!1712 = !DILocation(line: 117, column: 5, scope: !1692)
!1713 = distinct !{!1713, !1693, !1714, !244}
!1714 = !DILocation(line: 122, column: 5, scope: !1687)
!1715 = !DILocation(line: 124, scope: !1695)
!1716 = !DILocalVariable(name: "i", scope: !1695, file: !25, line: 124, type: !15)
!1717 = !DILocation(line: 0, scope: !1695)
!1718 = !DILocation(line: 124, column: 26, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1695, file: !25, line: 124, column: 5)
!1720 = !DILocation(line: 134, column: 5, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !24, file: !25, line: 134, column: 5)
!1722 = !DILocation(line: 126, column: 25, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1719, file: !25, line: 125, column: 5)
!1724 = !DILocation(line: 126, column: 32, scope: !1723)
!1725 = !DILocation(line: 126, column: 43, scope: !1723)
!1726 = !DILocation(line: 126, column: 40, scope: !1723)
!1727 = !DILocation(line: 126, column: 38, scope: !1723)
!1728 = !DILocation(line: 126, column: 48, scope: !1723)
!1729 = !DILocalVariable(name: "t0", scope: !1723, file: !25, line: 126, type: !6)
!1730 = !DILocation(line: 0, scope: !1723)
!1731 = !DILocation(line: 127, column: 28, scope: !1723)
!1732 = !DILocation(line: 127, column: 25, scope: !1723)
!1733 = !DILocation(line: 127, column: 32, scope: !1723)
!1734 = !DILocation(line: 127, column: 43, scope: !1723)
!1735 = !DILocation(line: 127, column: 40, scope: !1723)
!1736 = !DILocation(line: 127, column: 38, scope: !1723)
!1737 = !DILocation(line: 127, column: 48, scope: !1723)
!1738 = !DILocalVariable(name: "t1", scope: !1723, file: !25, line: 127, type: !6)
!1739 = !DILocation(line: 128, column: 23, scope: !1723)
!1740 = !DILocation(line: 128, column: 9, scope: !1723)
!1741 = !DILocation(line: 128, column: 16, scope: !1723)
!1742 = !DILocation(line: 129, column: 23, scope: !1723)
!1743 = !DILocation(line: 129, column: 12, scope: !1723)
!1744 = !DILocation(line: 129, column: 9, scope: !1723)
!1745 = !DILocation(line: 129, column: 16, scope: !1723)
!1746 = !DILocation(line: 130, column: 12, scope: !1723)
!1747 = !DILocation(line: 130, column: 9, scope: !1723)
!1748 = !DILocation(line: 130, column: 16, scope: !1723)
!1749 = !DILocation(line: 131, column: 12, scope: !1723)
!1750 = !DILocation(line: 131, column: 9, scope: !1723)
!1751 = !DILocation(line: 131, column: 16, scope: !1723)
!1752 = !DILocation(line: 124, column: 33, scope: !1719)
!1753 = !DILocation(line: 124, column: 5, scope: !1719)
!1754 = distinct !{!1754, !1694, !1755, !244}
!1755 = !DILocation(line: 132, column: 5, scope: !1695)
!1756 = !DILocation(line: 134, scope: !1721)
!1757 = !DILocalVariable(name: "i", scope: !1721, file: !25, line: 134, type: !15)
!1758 = !DILocation(line: 0, scope: !1721)
!1759 = !DILocation(line: 134, column: 26, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1721, file: !25, line: 134, column: 5)
!1761 = !DILocation(line: 145, column: 5, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !24, file: !25, line: 145, column: 5)
!1763 = !DILocation(line: 136, column: 25, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1760, file: !25, line: 135, column: 5)
!1765 = !DILocation(line: 136, column: 32, scope: !1764)
!1766 = !DILocation(line: 136, column: 44, scope: !1764)
!1767 = !DILocation(line: 136, column: 41, scope: !1764)
!1768 = !DILocation(line: 136, column: 39, scope: !1764)
!1769 = !DILocation(line: 136, column: 50, scope: !1764)
!1770 = !DILocalVariable(name: "t0", scope: !1764, file: !25, line: 136, type: !6)
!1771 = !DILocation(line: 0, scope: !1764)
!1772 = !DILocation(line: 137, column: 28, scope: !1764)
!1773 = !DILocation(line: 137, column: 25, scope: !1764)
!1774 = !DILocation(line: 137, column: 32, scope: !1764)
!1775 = !DILocation(line: 137, column: 44, scope: !1764)
!1776 = !DILocation(line: 137, column: 41, scope: !1764)
!1777 = !DILocation(line: 137, column: 39, scope: !1764)
!1778 = !DILocation(line: 137, column: 50, scope: !1764)
!1779 = !DILocalVariable(name: "t1", scope: !1764, file: !25, line: 137, type: !6)
!1780 = !DILocation(line: 139, column: 23, scope: !1764)
!1781 = !DILocation(line: 139, column: 9, scope: !1764)
!1782 = !DILocation(line: 139, column: 17, scope: !1764)
!1783 = !DILocation(line: 140, column: 23, scope: !1764)
!1784 = !DILocation(line: 140, column: 12, scope: !1764)
!1785 = !DILocation(line: 140, column: 9, scope: !1764)
!1786 = !DILocation(line: 140, column: 17, scope: !1764)
!1787 = !DILocation(line: 141, column: 12, scope: !1764)
!1788 = !DILocation(line: 141, column: 9, scope: !1764)
!1789 = !DILocation(line: 141, column: 17, scope: !1764)
!1790 = !DILocation(line: 142, column: 12, scope: !1764)
!1791 = !DILocation(line: 142, column: 9, scope: !1764)
!1792 = !DILocation(line: 142, column: 17, scope: !1764)
!1793 = !DILocation(line: 134, column: 32, scope: !1760)
!1794 = !DILocation(line: 134, column: 5, scope: !1760)
!1795 = distinct !{!1795, !1720, !1796, !244}
!1796 = !DILocation(line: 143, column: 5, scope: !1721)
!1797 = !DILocation(line: 145, scope: !1762)
!1798 = !DILocalVariable(name: "i", scope: !1762, file: !25, line: 145, type: !15)
!1799 = !DILocation(line: 0, scope: !1762)
!1800 = !DILocation(line: 145, column: 26, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1762, file: !25, line: 145, column: 5)
!1802 = !DILocation(line: 147, column: 24, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1801, file: !25, line: 146, column: 5)
!1804 = !DILocation(line: 147, column: 28, scope: !1803)
!1805 = !DILocation(line: 147, column: 39, scope: !1803)
!1806 = !DILocation(line: 147, column: 36, scope: !1803)
!1807 = !DILocation(line: 147, column: 44, scope: !1803)
!1808 = !DILocalVariable(name: "t", scope: !1803, file: !25, line: 147, type: !6)
!1809 = !DILocation(line: 0, scope: !1803)
!1810 = !DILocation(line: 148, column: 21, scope: !1803)
!1811 = !DILocation(line: 148, column: 9, scope: !1803)
!1812 = !DILocation(line: 148, column: 16, scope: !1803)
!1813 = !DILocation(line: 149, column: 12, scope: !1803)
!1814 = !DILocation(line: 149, column: 9, scope: !1803)
!1815 = !DILocation(line: 149, column: 16, scope: !1803)
!1816 = !DILocation(line: 145, column: 32, scope: !1801)
!1817 = !DILocation(line: 145, column: 5, scope: !1801)
!1818 = distinct !{!1818, !1761, !1819, !244}
!1819 = !DILocation(line: 150, column: 5, scope: !1762)
!1820 = !DILocation(line: 151, column: 1, scope: !24)
!1821 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !425, file: !425, line: 61, type: !481, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1822 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1821, file: !425, line: 61, type: !343)
!1823 = !DILocation(line: 0, scope: !1821)
!1824 = !DILocalVariable(name: "mat", arg: 2, scope: !1821, file: !425, line: 61, type: !49)
!1825 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1821, file: !425, line: 61, type: !428)
!1826 = !DILocalVariable(name: "acc", arg: 4, scope: !1821, file: !425, line: 61, type: !5)
!1827 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1821, file: !425, line: 62, type: !343)
!1828 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1821, file: !425, line: 62, type: !343)
!1829 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1821, file: !425, line: 62, type: !343)
!1830 = !DILocalVariable(name: "r", scope: !1831, file: !425, line: 64, type: !45)
!1831 = distinct !DILexicalBlock(scope: !1821, file: !425, line: 64, column: 5)
!1832 = !DILocation(line: 0, scope: !1831)
!1833 = !DILocation(line: 64, column: 10, scope: !1831)
!1834 = !DILocation(line: 64, scope: !1831)
!1835 = !DILocation(line: 64, column: 23, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1831, file: !425, line: 64, column: 5)
!1837 = !DILocation(line: 64, column: 5, scope: !1831)
!1838 = !DILocation(line: 65, column: 9, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !425, line: 65, column: 9)
!1840 = distinct !DILexicalBlock(scope: !1836, file: !425, line: 64, column: 40)
!1841 = !DILocation(line: 65, scope: !1839)
!1842 = !DILocalVariable(name: "c", scope: !1839, file: !425, line: 65, type: !45)
!1843 = !DILocation(line: 0, scope: !1839)
!1844 = !DILocation(line: 65, column: 27, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1839, file: !425, line: 65, column: 9)
!1846 = !DILocation(line: 66, column: 13, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !425, line: 66, column: 13)
!1848 = distinct !DILexicalBlock(scope: !1845, file: !425, line: 65, column: 44)
!1849 = !DILocation(line: 66, scope: !1847)
!1850 = !DILocalVariable(name: "k", scope: !1847, file: !425, line: 66, type: !45)
!1851 = !DILocation(line: 0, scope: !1847)
!1852 = !DILocation(line: 66, column: 31, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1847, file: !425, line: 66, column: 13)
!1854 = !DILocation(line: 67, column: 70, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1853, file: !425, line: 66, column: 54)
!1856 = !DILocation(line: 67, column: 84, scope: !1855)
!1857 = !DILocation(line: 67, column: 51, scope: !1855)
!1858 = !DILocation(line: 67, column: 96, scope: !1855)
!1859 = !DILocation(line: 67, column: 90, scope: !1855)
!1860 = !DILocation(line: 67, column: 136, scope: !1855)
!1861 = !DILocation(line: 67, column: 150, scope: !1855)
!1862 = !DILocation(line: 67, column: 117, scope: !1855)
!1863 = !DILocation(line: 67, column: 17, scope: !1855)
!1864 = !DILocation(line: 66, column: 48, scope: !1853)
!1865 = !DILocation(line: 66, column: 13, scope: !1853)
!1866 = distinct !{!1866, !1846, !1867, !244}
!1867 = !DILocation(line: 68, column: 13, scope: !1847)
!1868 = !DILocation(line: 65, column: 40, scope: !1845)
!1869 = !DILocation(line: 65, column: 9, scope: !1845)
!1870 = distinct !{!1870, !1838, !1871, !244}
!1871 = !DILocation(line: 69, column: 9, scope: !1839)
!1872 = !DILocation(line: 64, column: 36, scope: !1836)
!1873 = !DILocation(line: 64, column: 5, scope: !1836)
!1874 = distinct !{!1874, !1837, !1875, !244}
!1875 = !DILocation(line: 70, column: 5, scope: !1831)
!1876 = !DILocation(line: 71, column: 1, scope: !1821)
!1877 = distinct !DISubprogram(name: "P1_times_Vt", scope: !425, file: !425, line: 82, type: !471, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1878 = !DILocalVariable(name: "p", arg: 1, scope: !1877, file: !425, line: 82, type: !278)
!1879 = !DILocation(line: 0, scope: !1877)
!1880 = !DILocalVariable(name: "P1", arg: 2, scope: !1877, file: !425, line: 82, type: !428)
!1881 = !DILocalVariable(name: "V", arg: 3, scope: !1877, file: !425, line: 82, type: !49)
!1882 = !DILocalVariable(name: "acc", arg: 4, scope: !1877, file: !425, line: 82, type: !5)
!1883 = !DILocation(line: 86, column: 5, scope: !1877)
!1884 = !DILocation(line: 87, column: 1, scope: !1877)
!1885 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !425, file: !425, line: 32, type: !611, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1886 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1885, file: !425, line: 32, type: !343)
!1887 = !DILocation(line: 0, scope: !1885)
!1888 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1885, file: !425, line: 32, type: !428)
!1889 = !DILocalVariable(name: "mat", arg: 3, scope: !1885, file: !425, line: 32, type: !49)
!1890 = !DILocalVariable(name: "acc", arg: 4, scope: !1885, file: !425, line: 32, type: !5)
!1891 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1885, file: !425, line: 33, type: !343)
!1892 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1885, file: !425, line: 33, type: !343)
!1893 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1885, file: !425, line: 33, type: !343)
!1894 = !DILocalVariable(name: "triangular", arg: 8, scope: !1885, file: !425, line: 33, type: !343)
!1895 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1885, file: !425, line: 34, type: !45)
!1896 = !DILocalVariable(name: "r", scope: !1897, file: !425, line: 35, type: !45)
!1897 = distinct !DILexicalBlock(scope: !1885, file: !425, line: 35, column: 5)
!1898 = !DILocation(line: 0, scope: !1897)
!1899 = !DILocation(line: 35, column: 10, scope: !1897)
!1900 = !DILocation(line: 34, column: 9, scope: !1885)
!1901 = !DILocation(line: 35, scope: !1897)
!1902 = !DILocation(line: 35, column: 23, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1897, file: !425, line: 35, column: 5)
!1904 = !DILocation(line: 35, column: 5, scope: !1897)
!1905 = !DILocation(line: 36, column: 9, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !425, line: 36, column: 9)
!1907 = distinct !DILexicalBlock(scope: !1903, file: !425, line: 35, column: 43)
!1908 = !DILocation(line: 36, scope: !1906)
!1909 = !DILocalVariable(name: "c", scope: !1906, file: !425, line: 36, type: !45)
!1910 = !DILocation(line: 0, scope: !1906)
!1911 = !DILocation(line: 36, column: 40, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1906, file: !425, line: 36, column: 9)
!1913 = !DILocation(line: 37, column: 13, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !425, line: 37, column: 13)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !425, line: 36, column: 60)
!1916 = !DILocation(line: 37, scope: !1914)
!1917 = !DILocalVariable(name: "k", scope: !1914, file: !425, line: 37, type: !45)
!1918 = !DILocation(line: 0, scope: !1914)
!1919 = !DILocation(line: 37, column: 31, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1914, file: !425, line: 37, column: 13)
!1921 = !DILocation(line: 38, column: 51, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1920, file: !425, line: 37, column: 51)
!1923 = !DILocation(line: 38, column: 94, scope: !1922)
!1924 = !DILocation(line: 38, column: 88, scope: !1922)
!1925 = !DILocation(line: 38, column: 137, scope: !1922)
!1926 = !DILocation(line: 38, column: 148, scope: !1922)
!1927 = !DILocation(line: 38, column: 118, scope: !1922)
!1928 = !DILocation(line: 38, column: 17, scope: !1922)
!1929 = !DILocation(line: 37, column: 45, scope: !1920)
!1930 = !DILocation(line: 37, column: 13, scope: !1920)
!1931 = distinct !{!1931, !1913, !1932, !244}
!1932 = !DILocation(line: 39, column: 13, scope: !1914)
!1933 = !DILocation(line: 40, column: 33, scope: !1915)
!1934 = !DILocation(line: 36, column: 56, scope: !1912)
!1935 = !DILocation(line: 36, column: 9, scope: !1912)
!1936 = distinct !{!1936, !1905, !1937, !244}
!1937 = !DILocation(line: 41, column: 9, scope: !1906)
!1938 = !DILocation(line: 35, column: 39, scope: !1903)
!1939 = !DILocation(line: 35, column: 5, scope: !1903)
!1940 = distinct !{!1940, !1904, !1941, !244}
!1941 = !DILocation(line: 42, column: 5, scope: !1897)
!1942 = !DILocation(line: 43, column: 1, scope: !1885)
!1943 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_sign", scope: !25, file: !25, line: 501, type: !802, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1944 = !DILocalVariable(name: "p", arg: 1, scope: !1943, file: !25, line: 501, type: !278)
!1945 = !DILocation(line: 0, scope: !1943)
!1946 = !DILocalVariable(name: "sm", arg: 2, scope: !1943, file: !25, line: 501, type: !18)
!1947 = !DILocalVariable(name: "smlen", arg: 3, scope: !1943, file: !25, line: 502, type: !804)
!1948 = !DILocalVariable(name: "m", arg: 4, scope: !1943, file: !25, line: 502, type: !49)
!1949 = !DILocalVariable(name: "mlen", arg: 5, scope: !1943, file: !25, line: 503, type: !15)
!1950 = !DILocalVariable(name: "csk", arg: 6, scope: !1943, file: !25, line: 503, type: !49)
!1951 = !DILocalVariable(name: "ret", scope: !1943, file: !25, line: 504, type: !45)
!1952 = !DILocalVariable(name: "param_sig_bytes", scope: !1943, file: !25, line: 505, type: !343)
!1953 = !DILocation(line: 507, column: 16, scope: !1943)
!1954 = !DILocation(line: 507, column: 5, scope: !1943)
!1955 = !DILocation(line: 508, column: 50, scope: !1943)
!1956 = !DILocalVariable(name: "siglen", scope: !1943, file: !25, line: 506, type: !15)
!1957 = !DILocation(line: 508, column: 11, scope: !1943)
!1958 = !DILocation(line: 509, column: 24, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1943, file: !25, line: 509, column: 9)
!1960 = !DILocation(line: 510, column: 23, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1959, file: !25, line: 509, column: 62)
!1962 = !DILocation(line: 510, column: 30, scope: !1961)
!1963 = !DILocation(line: 510, column: 9, scope: !1961)
!1964 = !DILocation(line: 511, column: 9, scope: !1961)
!1965 = !DILocation(line: 514, column: 14, scope: !1943)
!1966 = !DILocation(line: 514, column: 21, scope: !1943)
!1967 = !DILocation(line: 514, column: 12, scope: !1943)
!1968 = !DILocation(line: 514, column: 5, scope: !1943)
!1969 = !DILabel(scope: !1943, name: "err", file: !25, line: 515)
!1970 = !DILocation(line: 515, column: 1, scope: !1943)
!1971 = !DILocation(line: 516, column: 5, scope: !1943)
!1972 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_open", scope: !25, file: !25, line: 519, type: !802, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1973 = !DILocalVariable(name: "p", arg: 1, scope: !1972, file: !25, line: 519, type: !278)
!1974 = !DILocation(line: 0, scope: !1972)
!1975 = !DILocalVariable(name: "m", arg: 2, scope: !1972, file: !25, line: 519, type: !18)
!1976 = !DILocalVariable(name: "mlen", arg: 3, scope: !1972, file: !25, line: 520, type: !804)
!1977 = !DILocalVariable(name: "sm", arg: 4, scope: !1972, file: !25, line: 520, type: !49)
!1978 = !DILocalVariable(name: "smlen", arg: 5, scope: !1972, file: !25, line: 521, type: !15)
!1979 = !DILocalVariable(name: "pk", arg: 6, scope: !1972, file: !25, line: 521, type: !49)
!1980 = !DILocalVariable(name: "param_sig_bytes", scope: !1972, file: !25, line: 522, type: !343)
!1981 = !DILocation(line: 523, column: 15, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1972, file: !25, line: 523, column: 9)
!1983 = !DILocation(line: 526, column: 36, scope: !1972)
!1984 = !DILocation(line: 526, column: 61, scope: !1972)
!1985 = !DILocation(line: 526, column: 18, scope: !1972)
!1986 = !DILocalVariable(name: "result", scope: !1972, file: !25, line: 526, type: !45)
!1987 = !DILocation(line: 529, column: 16, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1972, file: !25, line: 529, column: 9)
!1989 = !DILocation(line: 530, column: 23, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1988, file: !25, line: 529, column: 28)
!1991 = !DILocation(line: 530, column: 15, scope: !1990)
!1992 = !DILocation(line: 531, column: 23, scope: !1990)
!1993 = !DILocation(line: 531, column: 9, scope: !1990)
!1994 = !DILocation(line: 532, column: 5, scope: !1990)
!1995 = !DILocation(line: 535, column: 1, scope: !1972)
!1996 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_verify", scope: !25, file: !25, line: 616, type: !1997, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!45, !278, !49, !15, !49, !49}
!1999 = !DILocalVariable(name: "p", arg: 1, scope: !1996, file: !25, line: 616, type: !278)
!2000 = !DILocation(line: 0, scope: !1996)
!2001 = !DILocalVariable(name: "m", arg: 2, scope: !1996, file: !25, line: 616, type: !49)
!2002 = !DILocalVariable(name: "mlen", arg: 3, scope: !1996, file: !25, line: 617, type: !15)
!2003 = !DILocalVariable(name: "sig", arg: 4, scope: !1996, file: !25, line: 617, type: !49)
!2004 = !DILocalVariable(name: "cpk", arg: 5, scope: !1996, file: !25, line: 618, type: !49)
!2005 = !DILocalVariable(name: "tEnc", scope: !1996, file: !25, line: 619, type: !814)
!2006 = !DILocation(line: 619, column: 19, scope: !1996)
!2007 = !DILocalVariable(name: "t", scope: !1996, file: !25, line: 620, type: !819)
!2008 = !DILocation(line: 620, column: 19, scope: !1996)
!2009 = !DILocalVariable(name: "y", scope: !1996, file: !25, line: 621, type: !2010)
!2010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2272, elements: !2011)
!2011 = !{!2012}
!2012 = !DISubrange(count: 284)
!2013 = !DILocation(line: 621, column: 19, scope: !1996)
!2014 = !DILocalVariable(name: "s", scope: !1996, file: !25, line: 622, type: !843)
!2015 = !DILocation(line: 622, column: 19, scope: !1996)
!2016 = !DILocalVariable(name: "pk", scope: !1996, file: !25, line: 623, type: !180)
!2017 = !DILocation(line: 623, column: 14, scope: !1996)
!2018 = !DILocalVariable(name: "tmp", scope: !1996, file: !25, line: 624, type: !2019)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 832, elements: !2020)
!2020 = !{!2021}
!2021 = !DISubrange(count: 104)
!2022 = !DILocation(line: 624, column: 19, scope: !1996)
!2023 = !DILocalVariable(name: "param_m", scope: !1996, file: !25, line: 626, type: !343)
!2024 = !DILocalVariable(name: "param_n", scope: !1996, file: !25, line: 627, type: !343)
!2025 = !DILocalVariable(name: "param_k", scope: !1996, file: !25, line: 628, type: !343)
!2026 = !DILocalVariable(name: "param_m_bytes", scope: !1996, file: !25, line: 629, type: !343)
!2027 = !DILocalVariable(name: "param_sig_bytes", scope: !1996, file: !25, line: 630, type: !343)
!2028 = !DILocalVariable(name: "param_digest_bytes", scope: !1996, file: !25, line: 631, type: !343)
!2029 = !DILocalVariable(name: "param_salt_bytes", scope: !1996, file: !25, line: 632, type: !343)
!2030 = !DILocation(line: 634, column: 15, scope: !1996)
!2031 = !DILocalVariable(name: "ret", scope: !1996, file: !25, line: 634, type: !45)
!2032 = !DILocalVariable(name: "P1", scope: !1996, file: !25, line: 639, type: !5)
!2033 = !DILocation(line: 640, column: 23, scope: !1996)
!2034 = !DILocalVariable(name: "P2", scope: !1996, file: !25, line: 640, type: !5)
!2035 = !DILocation(line: 641, column: 23, scope: !1996)
!2036 = !DILocalVariable(name: "P3", scope: !1996, file: !25, line: 641, type: !5)
!2037 = !DILocation(line: 656, column: 5, scope: !1996)
!2038 = !DILocation(line: 659, column: 16, scope: !1996)
!2039 = !DILocation(line: 659, column: 60, scope: !1996)
!2040 = !DILocation(line: 659, column: 5, scope: !1996)
!2041 = !DILocation(line: 661, column: 5, scope: !1996)
!2042 = !DILocation(line: 662, column: 5, scope: !1996)
!2043 = !DILocation(line: 665, column: 5, scope: !1996)
!2044 = !DILocation(line: 667, column: 5, scope: !1996)
!2045 = !DILocation(line: 669, column: 9, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1996, file: !25, line: 669, column: 9)
!2047 = !DILocation(line: 669, column: 31, scope: !2046)
!2048 = !DILocation(line: 673, column: 1, scope: !1996)
!2049 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_expand_pk", scope: !25, file: !25, line: 607, type: !705, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2050 = !DILocalVariable(name: "p", arg: 1, scope: !2049, file: !25, line: 607, type: !278)
!2051 = !DILocation(line: 0, scope: !2049)
!2052 = !DILocalVariable(name: "cpk", arg: 2, scope: !2049, file: !25, line: 607, type: !49)
!2053 = !DILocalVariable(name: "pk", arg: 3, scope: !2049, file: !25, line: 608, type: !5)
!2054 = !DILocation(line: 609, column: 5, scope: !2049)
!2055 = !DILocation(line: 611, column: 23, scope: !2049)
!2056 = !DILocation(line: 611, column: 72, scope: !2049)
!2057 = !DILocation(line: 611, column: 5, scope: !2049)
!2058 = !DILocation(line: 613, column: 5, scope: !2049)
!2059 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 288, type: !2060, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null, !278, !49, !428, !428, !428, !18}
!2062 = !DILocalVariable(name: "p", arg: 1, scope: !2059, file: !25, line: 288, type: !278)
!2063 = !DILocation(line: 0, scope: !2059)
!2064 = !DILocalVariable(name: "s", arg: 2, scope: !2059, file: !25, line: 288, type: !49)
!2065 = !DILocalVariable(name: "P1", arg: 3, scope: !2059, file: !25, line: 288, type: !428)
!2066 = !DILocalVariable(name: "P2", arg: 4, scope: !2059, file: !25, line: 288, type: !428)
!2067 = !DILocalVariable(name: "P3", arg: 5, scope: !2059, file: !25, line: 288, type: !428)
!2068 = !DILocalVariable(name: "eval", arg: 6, scope: !2059, file: !25, line: 288, type: !18)
!2069 = !DILocalVariable(name: "SPS", scope: !2059, file: !25, line: 289, type: !333)
!2070 = !DILocation(line: 289, column: 14, scope: !2059)
!2071 = !DILocation(line: 291, column: 5, scope: !2059)
!2072 = !DILocalVariable(name: "zero", scope: !2059, file: !25, line: 292, type: !819)
!2073 = !DILocation(line: 292, column: 19, scope: !2059)
!2074 = !DILocation(line: 293, column: 5, scope: !2059)
!2075 = !DILocation(line: 294, column: 1, scope: !2059)
!2076 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !425, file: !425, line: 277, type: !2077, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{null, !278, !428, !428, !428, !49, !5}
!2079 = !DILocalVariable(name: "p", arg: 1, scope: !2076, file: !425, line: 277, type: !278)
!2080 = !DILocation(line: 0, scope: !2076)
!2081 = !DILocalVariable(name: "P1", arg: 2, scope: !2076, file: !425, line: 277, type: !428)
!2082 = !DILocalVariable(name: "P2", arg: 3, scope: !2076, file: !425, line: 277, type: !428)
!2083 = !DILocalVariable(name: "P3", arg: 4, scope: !2076, file: !425, line: 277, type: !428)
!2084 = !DILocalVariable(name: "s", arg: 5, scope: !2076, file: !425, line: 277, type: !49)
!2085 = !DILocalVariable(name: "SPS", arg: 6, scope: !2076, file: !425, line: 278, type: !5)
!2086 = !DILocalVariable(name: "PS", scope: !2076, file: !425, line: 286, type: !2087)
!2087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1064448, elements: !2088)
!2088 = !{!2089}
!2089 = !DISubrange(count: 16632)
!2090 = !DILocation(line: 286, column: 14, scope: !2076)
!2091 = !DILocation(line: 287, column: 5, scope: !2076)
!2092 = !DILocation(line: 290, column: 5, scope: !2076)
!2093 = !DILocation(line: 292, column: 1, scope: !2076)
!2094 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !425, file: !425, line: 151, type: !2095, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{null, !428, !428, !428, !49, !343, !343, !343, !343, !5}
!2097 = !DILocalVariable(name: "P1", arg: 1, scope: !2094, file: !425, line: 151, type: !428)
!2098 = !DILocation(line: 0, scope: !2094)
!2099 = !DILocalVariable(name: "P2", arg: 2, scope: !2094, file: !425, line: 151, type: !428)
!2100 = !DILocalVariable(name: "P3", arg: 3, scope: !2094, file: !425, line: 151, type: !428)
!2101 = !DILocalVariable(name: "S", arg: 4, scope: !2094, file: !425, line: 151, type: !49)
!2102 = !DILocalVariable(name: "m", arg: 5, scope: !2094, file: !425, line: 152, type: !343)
!2103 = !DILocalVariable(name: "v", arg: 6, scope: !2094, file: !425, line: 152, type: !343)
!2104 = !DILocalVariable(name: "o", arg: 7, scope: !2094, file: !425, line: 152, type: !343)
!2105 = !DILocalVariable(name: "k", arg: 8, scope: !2094, file: !425, line: 152, type: !343)
!2106 = !DILocalVariable(name: "PS", arg: 9, scope: !2094, file: !425, line: 152, type: !5)
!2107 = !DILocalVariable(name: "n", scope: !2094, file: !425, line: 154, type: !343)
!2108 = !DILocalVariable(name: "m_vec_limbs", scope: !2094, file: !425, line: 155, type: !343)
!2109 = !DILocalVariable(name: "accumulator", scope: !2094, file: !425, line: 157, type: !2110)
!2110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 17031168, elements: !2111)
!2111 = !{!2112}
!2112 = !DISubrange(count: 266112)
!2113 = !DILocation(line: 157, column: 14, scope: !2094)
!2114 = !DILocalVariable(name: "P1_used", scope: !2094, file: !425, line: 158, type: !45)
!2115 = !DILocalVariable(name: "row", scope: !2116, file: !425, line: 159, type: !45)
!2116 = distinct !DILexicalBlock(scope: !2094, file: !425, line: 159, column: 5)
!2117 = !DILocation(line: 0, scope: !2116)
!2118 = !DILocation(line: 159, column: 10, scope: !2116)
!2119 = !DILocation(line: 158, column: 9, scope: !2094)
!2120 = !DILocation(line: 159, scope: !2116)
!2121 = !DILocation(line: 159, column: 27, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2116, file: !425, line: 159, column: 5)
!2123 = !DILocation(line: 159, column: 5, scope: !2116)
!2124 = !DILocation(line: 160, column: 9, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !425, line: 160, column: 9)
!2126 = distinct !DILexicalBlock(scope: !2122, file: !425, line: 159, column: 39)
!2127 = !DILocation(line: 175, column: 5, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2094, file: !425, line: 175, column: 5)
!2129 = !DILocation(line: 160, scope: !2125)
!2130 = !DILocalVariable(name: "j", scope: !2125, file: !425, line: 160, type: !45)
!2131 = !DILocation(line: 0, scope: !2125)
!2132 = !DILocation(line: 160, column: 29, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2125, file: !425, line: 160, column: 9)
!2134 = !DILocation(line: 167, column: 9, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2126, file: !425, line: 167, column: 9)
!2136 = !DILocation(line: 161, column: 13, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !425, line: 161, column: 13)
!2138 = distinct !DILexicalBlock(scope: !2133, file: !425, line: 160, column: 39)
!2139 = !DILocation(line: 161, scope: !2137)
!2140 = !DILocalVariable(name: "col", scope: !2137, file: !425, line: 161, type: !45)
!2141 = !DILocation(line: 0, scope: !2137)
!2142 = !DILocation(line: 161, column: 35, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2137, file: !425, line: 161, column: 13)
!2144 = !DILocation(line: 162, column: 43, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2143, file: !425, line: 161, column: 47)
!2146 = !DILocation(line: 162, column: 91, scope: !2145)
!2147 = !DILocation(line: 162, column: 95, scope: !2145)
!2148 = !DILocation(line: 162, column: 102, scope: !2145)
!2149 = !DILocation(line: 162, column: 115, scope: !2145)
!2150 = !DILocation(line: 162, column: 109, scope: !2145)
!2151 = !DILocation(line: 162, column: 107, scope: !2145)
!2152 = !DILocation(line: 162, column: 82, scope: !2145)
!2153 = !DILocation(line: 162, column: 17, scope: !2145)
!2154 = !DILocation(line: 161, column: 43, scope: !2143)
!2155 = !DILocation(line: 161, column: 13, scope: !2143)
!2156 = distinct !{!2156, !2136, !2157, !244}
!2157 = !DILocation(line: 163, column: 13, scope: !2137)
!2158 = !DILocation(line: 164, column: 21, scope: !2138)
!2159 = !DILocation(line: 160, column: 35, scope: !2133)
!2160 = !DILocation(line: 160, column: 9, scope: !2133)
!2161 = distinct !{!2161, !2124, !2162, !244}
!2162 = !DILocation(line: 165, column: 9, scope: !2125)
!2163 = !DILocation(line: 167, scope: !2135)
!2164 = !DILocalVariable(name: "j", scope: !2135, file: !425, line: 167, type: !45)
!2165 = !DILocation(line: 0, scope: !2135)
!2166 = !DILocation(line: 167, column: 27, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2135, file: !425, line: 167, column: 9)
!2168 = !DILocation(line: 168, column: 13, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !425, line: 168, column: 13)
!2170 = distinct !DILexicalBlock(scope: !2167, file: !425, line: 167, column: 37)
!2171 = !DILocation(line: 168, scope: !2169)
!2172 = !DILocalVariable(name: "col", scope: !2169, file: !425, line: 168, type: !45)
!2173 = !DILocation(line: 0, scope: !2169)
!2174 = !DILocation(line: 168, column: 35, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2169, file: !425, line: 168, column: 13)
!2176 = !DILocation(line: 169, column: 50, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2175, file: !425, line: 168, column: 47)
!2178 = !DILocation(line: 169, column: 54, scope: !2177)
!2179 = !DILocation(line: 169, column: 43, scope: !2177)
!2180 = !DILocation(line: 169, column: 93, scope: !2177)
!2181 = !DILocation(line: 169, column: 97, scope: !2177)
!2182 = !DILocation(line: 169, column: 104, scope: !2177)
!2183 = !DILocation(line: 169, column: 118, scope: !2177)
!2184 = !DILocation(line: 169, column: 111, scope: !2177)
!2185 = !DILocation(line: 169, column: 109, scope: !2177)
!2186 = !DILocation(line: 169, column: 84, scope: !2177)
!2187 = !DILocation(line: 169, column: 17, scope: !2177)
!2188 = !DILocation(line: 168, column: 43, scope: !2175)
!2189 = !DILocation(line: 168, column: 13, scope: !2175)
!2190 = distinct !{!2190, !2168, !2191, !244}
!2191 = !DILocation(line: 170, column: 13, scope: !2169)
!2192 = !DILocation(line: 167, column: 33, scope: !2167)
!2193 = !DILocation(line: 167, column: 9, scope: !2167)
!2194 = distinct !{!2194, !2134, !2195, !244}
!2195 = !DILocation(line: 171, column: 9, scope: !2135)
!2196 = !DILocation(line: 159, column: 35, scope: !2122)
!2197 = !DILocation(line: 159, column: 5, scope: !2122)
!2198 = distinct !{!2198, !2123, !2199, !244}
!2199 = !DILocation(line: 172, column: 5, scope: !2116)
!2200 = !DILocation(line: 174, column: 9, scope: !2094)
!2201 = !DILocation(line: 175, scope: !2128)
!2202 = !DILocalVariable(name: "row", scope: !2128, file: !425, line: 175, type: !45)
!2203 = !DILocation(line: 0, scope: !2128)
!2204 = !DILocalVariable(name: "P3_used", scope: !2094, file: !425, line: 174, type: !45)
!2205 = !DILocation(line: 175, column: 27, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2128, file: !425, line: 175, column: 5)
!2207 = !DILocation(line: 176, column: 9, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !425, line: 176, column: 9)
!2209 = distinct !DILexicalBlock(scope: !2206, file: !425, line: 175, column: 39)
!2210 = !DILocation(line: 186, column: 5, scope: !2094)
!2211 = !DILocation(line: 176, scope: !2208)
!2212 = !DILocalVariable(name: "j", scope: !2208, file: !425, line: 176, type: !45)
!2213 = !DILocation(line: 0, scope: !2208)
!2214 = !DILocation(line: 176, column: 29, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2208, file: !425, line: 176, column: 9)
!2216 = !DILocation(line: 177, column: 13, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !425, line: 177, column: 13)
!2218 = distinct !DILexicalBlock(scope: !2215, file: !425, line: 176, column: 39)
!2219 = !DILocation(line: 177, scope: !2217)
!2220 = !DILocalVariable(name: "col", scope: !2217, file: !425, line: 177, type: !45)
!2221 = !DILocation(line: 0, scope: !2217)
!2222 = !DILocation(line: 177, column: 35, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2217, file: !425, line: 177, column: 13)
!2224 = !DILocation(line: 178, column: 43, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2223, file: !425, line: 177, column: 47)
!2226 = !DILocation(line: 178, column: 89, scope: !2225)
!2227 = !DILocation(line: 178, column: 93, scope: !2225)
!2228 = !DILocation(line: 178, column: 100, scope: !2225)
!2229 = !DILocation(line: 178, column: 113, scope: !2225)
!2230 = !DILocation(line: 178, column: 107, scope: !2225)
!2231 = !DILocation(line: 178, column: 105, scope: !2225)
!2232 = !DILocation(line: 178, column: 80, scope: !2225)
!2233 = !DILocation(line: 178, column: 17, scope: !2225)
!2234 = !DILocation(line: 177, column: 43, scope: !2223)
!2235 = !DILocation(line: 177, column: 13, scope: !2223)
!2236 = distinct !{!2236, !2216, !2237, !244}
!2237 = !DILocation(line: 179, column: 13, scope: !2217)
!2238 = !DILocation(line: 180, column: 21, scope: !2218)
!2239 = !DILocation(line: 176, column: 35, scope: !2215)
!2240 = !DILocation(line: 176, column: 9, scope: !2215)
!2241 = distinct !{!2241, !2207, !2242, !244}
!2242 = !DILocation(line: 181, column: 9, scope: !2208)
!2243 = !DILocation(line: 175, column: 35, scope: !2206)
!2244 = !DILocation(line: 175, column: 5, scope: !2206)
!2245 = distinct !{!2245, !2127, !2246, !244}
!2246 = !DILocation(line: 182, column: 5, scope: !2128)
!2247 = !DILocalVariable(name: "i", scope: !2094, file: !425, line: 185, type: !45)
!2248 = !DILocation(line: 186, column: 14, scope: !2094)
!2249 = !DILocation(line: 187, column: 54, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2094, file: !425, line: 186, column: 23)
!2251 = !DILocation(line: 187, column: 81, scope: !2250)
!2252 = !DILocation(line: 187, column: 9, scope: !2250)
!2253 = !DILocation(line: 188, column: 10, scope: !2250)
!2254 = distinct !{!2254, !2210, !2255, !244}
!2255 = !DILocation(line: 189, column: 5, scope: !2094)
!2256 = !DILocation(line: 191, column: 1, scope: !2094)
!2257 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !425, file: !425, line: 195, type: !2258, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{null, !428, !49, !45, !45, !45, !5}
!2260 = !DILocalVariable(name: "PS", arg: 1, scope: !2257, file: !425, line: 195, type: !428)
!2261 = !DILocation(line: 0, scope: !2257)
!2262 = !DILocalVariable(name: "S", arg: 2, scope: !2257, file: !425, line: 195, type: !49)
!2263 = !DILocalVariable(name: "m", arg: 3, scope: !2257, file: !425, line: 195, type: !45)
!2264 = !DILocalVariable(name: "k", arg: 4, scope: !2257, file: !425, line: 195, type: !45)
!2265 = !DILocalVariable(name: "n", arg: 5, scope: !2257, file: !425, line: 195, type: !45)
!2266 = !DILocalVariable(name: "SPS", arg: 6, scope: !2257, file: !425, line: 195, type: !5)
!2267 = !DILocalVariable(name: "accumulator", scope: !2257, file: !425, line: 196, type: !2268)
!2268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1327104, elements: !2269)
!2269 = !{!2270}
!2270 = !DISubrange(count: 20736)
!2271 = !DILocation(line: 196, column: 14, scope: !2257)
!2272 = !DILocalVariable(name: "m_vec_limbs", scope: !2257, file: !425, line: 197, type: !343)
!2273 = !DILocalVariable(name: "row", scope: !2274, file: !425, line: 198, type: !45)
!2274 = distinct !DILexicalBlock(scope: !2257, file: !425, line: 198, column: 5)
!2275 = !DILocation(line: 0, scope: !2274)
!2276 = !DILocation(line: 198, column: 10, scope: !2274)
!2277 = !DILocation(line: 198, scope: !2274)
!2278 = !DILocation(line: 198, column: 27, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2274, file: !425, line: 198, column: 5)
!2280 = !DILocation(line: 198, column: 5, scope: !2274)
!2281 = !DILocation(line: 199, column: 9, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !425, line: 199, column: 9)
!2283 = distinct !DILexicalBlock(scope: !2279, file: !425, line: 198, column: 39)
!2284 = !DILocation(line: 208, column: 5, scope: !2257)
!2285 = !DILocation(line: 199, scope: !2282)
!2286 = !DILocalVariable(name: "j", scope: !2282, file: !425, line: 199, type: !45)
!2287 = !DILocation(line: 0, scope: !2282)
!2288 = !DILocation(line: 199, column: 27, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2282, file: !425, line: 199, column: 9)
!2290 = !DILocation(line: 200, column: 13, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !425, line: 200, column: 13)
!2292 = distinct !DILexicalBlock(scope: !2289, file: !425, line: 199, column: 37)
!2293 = !DILocation(line: 200, scope: !2291)
!2294 = !DILocalVariable(name: "col", scope: !2291, file: !425, line: 200, type: !45)
!2295 = !DILocation(line: 0, scope: !2291)
!2296 = !DILocation(line: 200, column: 35, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2291, file: !425, line: 200, column: 13)
!2298 = !DILocation(line: 201, column: 52, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2297, file: !425, line: 200, column: 50)
!2300 = !DILocation(line: 201, column: 56, scope: !2299)
!2301 = !DILocation(line: 201, column: 47, scope: !2299)
!2302 = !DILocation(line: 201, column: 99, scope: !2299)
!2303 = !DILocation(line: 201, column: 103, scope: !2299)
!2304 = !DILocation(line: 201, column: 110, scope: !2299)
!2305 = !DILocation(line: 201, column: 123, scope: !2299)
!2306 = !DILocation(line: 201, column: 117, scope: !2299)
!2307 = !DILocation(line: 201, column: 115, scope: !2299)
!2308 = !DILocation(line: 201, column: 90, scope: !2299)
!2309 = !DILocation(line: 201, column: 21, scope: !2299)
!2310 = !DILocation(line: 200, column: 44, scope: !2297)
!2311 = !DILocation(line: 200, column: 13, scope: !2297)
!2312 = distinct !{!2312, !2290, !2313, !244}
!2313 = !DILocation(line: 202, column: 13, scope: !2291)
!2314 = !DILocation(line: 199, column: 33, scope: !2289)
!2315 = !DILocation(line: 199, column: 9, scope: !2289)
!2316 = distinct !{!2316, !2281, !2317, !244}
!2317 = !DILocation(line: 203, column: 9, scope: !2282)
!2318 = !DILocation(line: 198, column: 35, scope: !2279)
!2319 = !DILocation(line: 198, column: 5, scope: !2279)
!2320 = distinct !{!2320, !2280, !2321, !244}
!2321 = !DILocation(line: 204, column: 5, scope: !2274)
!2322 = !DILocalVariable(name: "i", scope: !2257, file: !425, line: 207, type: !45)
!2323 = !DILocation(line: 208, column: 14, scope: !2257)
!2324 = !DILocation(line: 209, column: 54, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2257, file: !425, line: 208, column: 21)
!2326 = !DILocation(line: 209, column: 82, scope: !2325)
!2327 = !DILocation(line: 209, column: 9, scope: !2325)
!2328 = !DILocation(line: 210, column: 10, scope: !2325)
!2329 = distinct !{!2329, !2284, !2330, !244}
!2330 = !DILocation(line: 211, column: 5, scope: !2257)
!2331 = !DILocation(line: 212, column: 1, scope: !2257)
!2332 = distinct !DISubprogram(name: "m_vec_add", scope: !539, file: !539, line: 22, type: !2333, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{null, !45, !428, !5}
!2335 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2332, file: !539, line: 22, type: !45)
!2336 = !DILocation(line: 0, scope: !2332)
!2337 = !DILocalVariable(name: "in", arg: 2, scope: !2332, file: !539, line: 22, type: !428)
!2338 = !DILocalVariable(name: "acc", arg: 3, scope: !2332, file: !539, line: 22, type: !5)
!2339 = !DILocalVariable(name: "i", scope: !2340, file: !539, line: 24, type: !15)
!2340 = distinct !DILexicalBlock(scope: !2332, file: !539, line: 24, column: 5)
!2341 = !DILocation(line: 0, scope: !2340)
!2342 = !DILocation(line: 24, column: 10, scope: !2340)
!2343 = !DILocation(line: 24, scope: !2340)
!2344 = !DILocation(line: 24, column: 26, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2340, file: !539, line: 24, column: 5)
!2346 = !DILocation(line: 24, column: 5, scope: !2340)
!2347 = !DILocation(line: 26, column: 19, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2345, file: !539, line: 25, column: 5)
!2349 = !DILocation(line: 26, column: 9, scope: !2348)
!2350 = !DILocation(line: 26, column: 16, scope: !2348)
!2351 = !DILocation(line: 24, column: 46, scope: !2345)
!2352 = !DILocation(line: 24, column: 5, scope: !2345)
!2353 = distinct !{!2353, !2346, !2354, !244}
!2354 = !DILocation(line: 27, column: 5, scope: !2340)
!2355 = !DILocation(line: 28, column: 1, scope: !2332)
!2356 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !539, file: !539, line: 66, type: !2357, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{null, !45, !5, !5}
!2359 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2356, file: !539, line: 66, type: !45)
!2360 = !DILocation(line: 0, scope: !2356)
!2361 = !DILocalVariable(name: "bins", arg: 2, scope: !2356, file: !539, line: 66, type: !5)
!2362 = !DILocalVariable(name: "out", arg: 3, scope: !2356, file: !539, line: 66, type: !5)
!2363 = !DILocation(line: 67, column: 44, scope: !2356)
!2364 = !DILocation(line: 67, column: 73, scope: !2356)
!2365 = !DILocation(line: 67, column: 5, scope: !2356)
!2366 = !DILocation(line: 68, column: 40, scope: !2356)
!2367 = !DILocation(line: 68, column: 69, scope: !2356)
!2368 = !DILocation(line: 68, column: 5, scope: !2356)
!2369 = !DILocation(line: 69, column: 44, scope: !2356)
!2370 = !DILocation(line: 69, column: 74, scope: !2356)
!2371 = !DILocation(line: 69, column: 5, scope: !2356)
!2372 = !DILocation(line: 70, column: 40, scope: !2356)
!2373 = !DILocation(line: 70, column: 69, scope: !2356)
!2374 = !DILocation(line: 70, column: 5, scope: !2356)
!2375 = !DILocation(line: 71, column: 44, scope: !2356)
!2376 = !DILocation(line: 71, column: 73, scope: !2356)
!2377 = !DILocation(line: 71, column: 5, scope: !2356)
!2378 = !DILocation(line: 72, column: 40, scope: !2356)
!2379 = !DILocation(line: 72, column: 69, scope: !2356)
!2380 = !DILocation(line: 72, column: 5, scope: !2356)
!2381 = !DILocation(line: 73, column: 44, scope: !2356)
!2382 = !DILocation(line: 73, column: 74, scope: !2356)
!2383 = !DILocation(line: 73, column: 5, scope: !2356)
!2384 = !DILocation(line: 74, column: 40, scope: !2356)
!2385 = !DILocation(line: 74, column: 69, scope: !2356)
!2386 = !DILocation(line: 74, column: 5, scope: !2356)
!2387 = !DILocation(line: 75, column: 44, scope: !2356)
!2388 = !DILocation(line: 75, column: 74, scope: !2356)
!2389 = !DILocation(line: 75, column: 5, scope: !2356)
!2390 = !DILocation(line: 76, column: 40, scope: !2356)
!2391 = !DILocation(line: 76, column: 69, scope: !2356)
!2392 = !DILocation(line: 76, column: 5, scope: !2356)
!2393 = !DILocation(line: 77, column: 44, scope: !2356)
!2394 = !DILocation(line: 77, column: 74, scope: !2356)
!2395 = !DILocation(line: 77, column: 5, scope: !2356)
!2396 = !DILocation(line: 78, column: 40, scope: !2356)
!2397 = !DILocation(line: 78, column: 69, scope: !2356)
!2398 = !DILocation(line: 78, column: 5, scope: !2356)
!2399 = !DILocation(line: 79, column: 44, scope: !2356)
!2400 = !DILocation(line: 79, column: 74, scope: !2356)
!2401 = !DILocation(line: 79, column: 5, scope: !2356)
!2402 = !DILocation(line: 80, column: 40, scope: !2356)
!2403 = !DILocation(line: 80, column: 69, scope: !2356)
!2404 = !DILocation(line: 80, column: 5, scope: !2356)
!2405 = !DILocation(line: 81, column: 35, scope: !2356)
!2406 = !DILocation(line: 81, column: 5, scope: !2356)
!2407 = !DILocation(line: 82, column: 1, scope: !2356)
!2408 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !539, file: !539, line: 56, type: !2333, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2409 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2408, file: !539, line: 56, type: !45)
!2410 = !DILocation(line: 0, scope: !2408)
!2411 = !DILocalVariable(name: "in", arg: 2, scope: !2408, file: !539, line: 56, type: !428)
!2412 = !DILocalVariable(name: "acc", arg: 3, scope: !2408, file: !539, line: 56, type: !5)
!2413 = !DILocalVariable(name: "mask_lsb", scope: !2408, file: !539, line: 58, type: !6)
!2414 = !DILocalVariable(name: "i", scope: !2415, file: !539, line: 59, type: !45)
!2415 = distinct !DILexicalBlock(scope: !2408, file: !539, line: 59, column: 5)
!2416 = !DILocation(line: 0, scope: !2415)
!2417 = !DILocation(line: 59, column: 9, scope: !2415)
!2418 = !DILocation(line: 59, scope: !2415)
!2419 = !DILocation(line: 59, column: 20, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2415, file: !539, line: 59, column: 5)
!2421 = !DILocation(line: 59, column: 5, scope: !2415)
!2422 = !DILocation(line: 60, column: 22, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2420, file: !539, line: 59, column: 43)
!2424 = !DILocation(line: 60, column: 28, scope: !2423)
!2425 = !DILocalVariable(name: "t", scope: !2423, file: !539, line: 60, type: !6)
!2426 = !DILocation(line: 0, scope: !2423)
!2427 = !DILocation(line: 61, column: 32, scope: !2423)
!2428 = !DILocation(line: 61, column: 43, scope: !2423)
!2429 = !DILocation(line: 61, column: 38, scope: !2423)
!2430 = !DILocation(line: 61, column: 9, scope: !2423)
!2431 = !DILocation(line: 61, column: 16, scope: !2423)
!2432 = !DILocation(line: 59, column: 40, scope: !2420)
!2433 = !DILocation(line: 59, column: 5, scope: !2420)
!2434 = distinct !{!2434, !2421, !2435, !244}
!2435 = !DILocation(line: 62, column: 5, scope: !2415)
!2436 = !DILocation(line: 63, column: 1, scope: !2408)
!2437 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !539, file: !539, line: 46, type: !2333, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2438 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2437, file: !539, line: 46, type: !45)
!2439 = !DILocation(line: 0, scope: !2437)
!2440 = !DILocalVariable(name: "in", arg: 2, scope: !2437, file: !539, line: 46, type: !428)
!2441 = !DILocalVariable(name: "acc", arg: 3, scope: !2437, file: !539, line: 46, type: !5)
!2442 = !DILocalVariable(name: "mask_msb", scope: !2437, file: !539, line: 48, type: !6)
!2443 = !DILocalVariable(name: "i", scope: !2444, file: !539, line: 49, type: !45)
!2444 = distinct !DILexicalBlock(scope: !2437, file: !539, line: 49, column: 5)
!2445 = !DILocation(line: 0, scope: !2444)
!2446 = !DILocation(line: 49, column: 9, scope: !2444)
!2447 = !DILocation(line: 49, scope: !2444)
!2448 = !DILocation(line: 49, column: 20, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2444, file: !539, line: 49, column: 5)
!2450 = !DILocation(line: 49, column: 5, scope: !2444)
!2451 = !DILocation(line: 50, column: 22, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2449, file: !539, line: 49, column: 43)
!2453 = !DILocalVariable(name: "t", scope: !2452, file: !539, line: 50, type: !6)
!2454 = !DILocation(line: 0, scope: !2452)
!2455 = !DILocation(line: 51, column: 32, scope: !2452)
!2456 = !DILocation(line: 51, column: 44, scope: !2452)
!2457 = !DILocation(line: 51, column: 50, scope: !2452)
!2458 = !DILocation(line: 51, column: 38, scope: !2452)
!2459 = !DILocation(line: 51, column: 9, scope: !2452)
!2460 = !DILocation(line: 51, column: 16, scope: !2452)
!2461 = !DILocation(line: 49, column: 40, scope: !2449)
!2462 = !DILocation(line: 49, column: 5, scope: !2449)
!2463 = distinct !{!2463, !2450, !2464, !244}
!2464 = !DILocation(line: 52, column: 5, scope: !2444)
!2465 = !DILocation(line: 53, column: 1, scope: !2437)
!2466 = distinct !DISubprogram(name: "m_vec_copy", scope: !539, file: !539, line: 13, type: !2333, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2467 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2466, file: !539, line: 13, type: !45)
!2468 = !DILocation(line: 0, scope: !2466)
!2469 = !DILocalVariable(name: "in", arg: 2, scope: !2466, file: !539, line: 13, type: !428)
!2470 = !DILocalVariable(name: "out", arg: 3, scope: !2466, file: !539, line: 13, type: !5)
!2471 = !DILocalVariable(name: "i", scope: !2472, file: !539, line: 15, type: !15)
!2472 = distinct !DILexicalBlock(scope: !2466, file: !539, line: 15, column: 5)
!2473 = !DILocation(line: 0, scope: !2472)
!2474 = !DILocation(line: 15, column: 10, scope: !2472)
!2475 = !DILocation(line: 15, scope: !2472)
!2476 = !DILocation(line: 15, column: 26, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2472, file: !539, line: 15, column: 5)
!2478 = !DILocation(line: 15, column: 5, scope: !2472)
!2479 = !DILocation(line: 17, column: 18, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2477, file: !539, line: 16, column: 5)
!2481 = !DILocation(line: 17, column: 9, scope: !2480)
!2482 = !DILocation(line: 17, column: 16, scope: !2480)
!2483 = !DILocation(line: 15, column: 46, scope: !2477)
!2484 = !DILocation(line: 15, column: 5, scope: !2477)
!2485 = distinct !{!2485, !2478, !2486, !244}
!2486 = !DILocation(line: 18, column: 5, scope: !2472)
!2487 = !DILocation(line: 19, column: 1, scope: !2466)
!2488 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_m_upper", scope: !58, file: !58, line: 14, type: !2489, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{null, !2491, !428, !5, !45}
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 32)
!2492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2493)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2494)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2495)
!2495 = !{!2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2494, file: !36, line: 266, baseType: !45, size: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2494, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2494, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2494, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2494, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2494, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2494, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2494, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2494, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2494, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2494, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2494, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2494, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2494, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2494, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2494, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2494, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2494, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2494, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2494, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2494, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2494, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2494, file: !36, line: 288, baseType: !165, size: 32, offset: 704)
!2519 = !DILocalVariable(name: "p", arg: 1, scope: !2488, file: !58, line: 14, type: !2491)
!2520 = !DILocation(line: 0, scope: !2488)
!2521 = !DILocalVariable(name: "in", arg: 2, scope: !2488, file: !58, line: 14, type: !428)
!2522 = !DILocalVariable(name: "out", arg: 3, scope: !2488, file: !58, line: 14, type: !5)
!2523 = !DILocalVariable(name: "size", arg: 4, scope: !2488, file: !58, line: 14, type: !45)
!2524 = !DILocalVariable(name: "m_vec_limbs", scope: !2488, file: !58, line: 19, type: !343)
!2525 = !DILocalVariable(name: "m_vecs_stored", scope: !2488, file: !58, line: 20, type: !45)
!2526 = !DILocalVariable(name: "r", scope: !2527, file: !58, line: 21, type: !45)
!2527 = distinct !DILexicalBlock(scope: !2488, file: !58, line: 21, column: 5)
!2528 = !DILocation(line: 0, scope: !2527)
!2529 = !DILocation(line: 21, column: 10, scope: !2527)
!2530 = !DILocation(line: 20, column: 9, scope: !2488)
!2531 = !DILocation(line: 21, scope: !2527)
!2532 = !DILocation(line: 21, column: 23, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2527, file: !58, line: 21, column: 5)
!2534 = !DILocation(line: 21, column: 5, scope: !2527)
!2535 = !DILocation(line: 22, column: 9, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !58, line: 22, column: 9)
!2537 = distinct !DILexicalBlock(scope: !2533, file: !58, line: 21, column: 36)
!2538 = !DILocation(line: 22, scope: !2536)
!2539 = !DILocalVariable(name: "c", scope: !2536, file: !58, line: 22, type: !45)
!2540 = !DILocation(line: 0, scope: !2536)
!2541 = !DILocation(line: 22, column: 27, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2536, file: !58, line: 22, column: 9)
!2543 = !DILocation(line: 23, column: 59, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2542, file: !58, line: 22, column: 40)
!2545 = !DILocation(line: 23, column: 66, scope: !2544)
!2546 = !DILocation(line: 23, column: 40, scope: !2544)
!2547 = !DILocation(line: 23, column: 76, scope: !2544)
!2548 = !DILocation(line: 23, column: 13, scope: !2544)
!2549 = !DILocation(line: 24, column: 19, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2544, file: !58, line: 24, column: 17)
!2551 = !DILocation(line: 25, column: 62, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2550, file: !58, line: 24, column: 25)
!2553 = !DILocation(line: 25, column: 69, scope: !2552)
!2554 = !DILocation(line: 25, column: 43, scope: !2552)
!2555 = !DILocation(line: 25, column: 79, scope: !2552)
!2556 = !DILocation(line: 25, column: 17, scope: !2552)
!2557 = !DILocation(line: 26, column: 13, scope: !2552)
!2558 = !DILocation(line: 27, column: 27, scope: !2544)
!2559 = !DILocation(line: 22, column: 36, scope: !2542)
!2560 = !DILocation(line: 22, column: 9, scope: !2542)
!2561 = distinct !{!2561, !2535, !2562, !244}
!2562 = !DILocation(line: 28, column: 9, scope: !2536)
!2563 = !DILocation(line: 21, column: 32, scope: !2533)
!2564 = !DILocation(line: 21, column: 5, scope: !2533)
!2565 = distinct !{!2565, !2534, !2566, !244}
!2566 = !DILocation(line: 29, column: 5, scope: !2527)
!2567 = !DILocation(line: 30, column: 1, scope: !2488)
!2568 = distinct !DISubprogram(name: "m_vec_copy", scope: !539, file: !539, line: 13, type: !2333, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2569 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2568, file: !539, line: 13, type: !45)
!2570 = !DILocation(line: 0, scope: !2568)
!2571 = !DILocalVariable(name: "in", arg: 2, scope: !2568, file: !539, line: 13, type: !428)
!2572 = !DILocalVariable(name: "out", arg: 3, scope: !2568, file: !539, line: 13, type: !5)
!2573 = !DILocalVariable(name: "i", scope: !2574, file: !539, line: 15, type: !15)
!2574 = distinct !DILexicalBlock(scope: !2568, file: !539, line: 15, column: 5)
!2575 = !DILocation(line: 0, scope: !2574)
!2576 = !DILocation(line: 15, column: 10, scope: !2574)
!2577 = !DILocation(line: 15, scope: !2574)
!2578 = !DILocation(line: 15, column: 26, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2574, file: !539, line: 15, column: 5)
!2580 = !DILocation(line: 15, column: 5, scope: !2574)
!2581 = !DILocation(line: 17, column: 18, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2579, file: !539, line: 16, column: 5)
!2583 = !DILocation(line: 17, column: 9, scope: !2582)
!2584 = !DILocation(line: 17, column: 16, scope: !2582)
!2585 = !DILocation(line: 15, column: 46, scope: !2579)
!2586 = !DILocation(line: 15, column: 5, scope: !2579)
!2587 = distinct !{!2587, !2580, !2588, !244}
!2588 = !DILocation(line: 18, column: 5, scope: !2574)
!2589 = !DILocation(line: 19, column: 1, scope: !2568)
!2590 = distinct !DISubprogram(name: "m_vec_add", scope: !539, file: !539, line: 22, type: !2333, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2591 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2590, file: !539, line: 22, type: !45)
!2592 = !DILocation(line: 0, scope: !2590)
!2593 = !DILocalVariable(name: "in", arg: 2, scope: !2590, file: !539, line: 22, type: !428)
!2594 = !DILocalVariable(name: "acc", arg: 3, scope: !2590, file: !539, line: 22, type: !5)
!2595 = !DILocalVariable(name: "i", scope: !2596, file: !539, line: 24, type: !15)
!2596 = distinct !DILexicalBlock(scope: !2590, file: !539, line: 24, column: 5)
!2597 = !DILocation(line: 0, scope: !2596)
!2598 = !DILocation(line: 24, column: 10, scope: !2596)
!2599 = !DILocation(line: 24, scope: !2596)
!2600 = !DILocation(line: 24, column: 26, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2596, file: !539, line: 24, column: 5)
!2602 = !DILocation(line: 24, column: 5, scope: !2596)
!2603 = !DILocation(line: 26, column: 19, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2601, file: !539, line: 25, column: 5)
!2605 = !DILocation(line: 26, column: 9, scope: !2604)
!2606 = !DILocation(line: 26, column: 16, scope: !2604)
!2607 = !DILocation(line: 24, column: 46, scope: !2601)
!2608 = !DILocation(line: 24, column: 5, scope: !2601)
!2609 = distinct !{!2609, !2602, !2610, !244}
!2610 = !DILocation(line: 27, column: 5, scope: !2596)
!2611 = !DILocation(line: 28, column: 1, scope: !2590)
!2612 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2613, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!45, !2491, !18, !49, !49, !18, !45, !45, !45, !45}
!2615 = !DILocalVariable(name: "p", arg: 1, scope: !2612, file: !58, line: 40, type: !2491)
!2616 = !DILocation(line: 0, scope: !2612)
!2617 = !DILocalVariable(name: "A", arg: 2, scope: !2612, file: !58, line: 40, type: !18)
!2618 = !DILocalVariable(name: "y", arg: 3, scope: !2612, file: !58, line: 41, type: !49)
!2619 = !DILocalVariable(name: "r", arg: 4, scope: !2612, file: !58, line: 41, type: !49)
!2620 = !DILocalVariable(name: "x", arg: 5, scope: !2612, file: !58, line: 42, type: !18)
!2621 = !DILocalVariable(name: "k", arg: 6, scope: !2612, file: !58, line: 42, type: !45)
!2622 = !DILocalVariable(name: "o", arg: 7, scope: !2612, file: !58, line: 42, type: !45)
!2623 = !DILocalVariable(name: "m", arg: 8, scope: !2612, file: !58, line: 42, type: !45)
!2624 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2612, file: !58, line: 42, type: !45)
!2625 = !DILocalVariable(name: "i", scope: !2626, file: !58, line: 51, type: !45)
!2626 = distinct !DILexicalBlock(scope: !2612, file: !58, line: 51, column: 5)
!2627 = !DILocation(line: 0, scope: !2626)
!2628 = !DILocation(line: 51, column: 10, scope: !2626)
!2629 = !DILocation(line: 51, scope: !2626)
!2630 = !DILocation(line: 51, column: 23, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2626, file: !58, line: 51, column: 5)
!2632 = !DILocation(line: 51, column: 5, scope: !2626)
!2633 = !DILocation(line: 57, column: 5, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2612, file: !58, line: 57, column: 5)
!2635 = !DILocation(line: 52, column: 16, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2631, file: !58, line: 51, column: 37)
!2637 = !DILocation(line: 52, column: 9, scope: !2636)
!2638 = !DILocation(line: 52, column: 14, scope: !2636)
!2639 = !DILocation(line: 51, column: 33, scope: !2631)
!2640 = !DILocation(line: 51, column: 5, scope: !2631)
!2641 = distinct !{!2641, !2632, !2642, !244}
!2642 = !DILocation(line: 53, column: 5, scope: !2626)
!2643 = !DILocation(line: 57, scope: !2634)
!2644 = !DILocalVariable(name: "i", scope: !2634, file: !58, line: 57, type: !45)
!2645 = !DILocation(line: 0, scope: !2634)
!2646 = !DILocation(line: 57, column: 23, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2634, file: !58, line: 57, column: 5)
!2648 = !DILocation(line: 58, column: 13, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2647, file: !58, line: 57, column: 33)
!2650 = !DILocation(line: 58, column: 26, scope: !2649)
!2651 = !DILocation(line: 58, column: 30, scope: !2649)
!2652 = !DILocation(line: 58, column: 21, scope: !2649)
!2653 = !DILocation(line: 58, column: 9, scope: !2649)
!2654 = !DILocation(line: 58, column: 36, scope: !2649)
!2655 = !DILocation(line: 57, column: 29, scope: !2647)
!2656 = !DILocation(line: 57, column: 5, scope: !2647)
!2657 = distinct !{!2657, !2633, !2658, !244}
!2658 = !DILocation(line: 59, column: 5, scope: !2634)
!2659 = !DILocation(line: 60, column: 25, scope: !2612)
!2660 = !DILocation(line: 60, column: 29, scope: !2612)
!2661 = !DILocation(line: 60, column: 5, scope: !2612)
!2662 = !DILocalVariable(name: "i", scope: !2663, file: !58, line: 63, type: !45)
!2663 = distinct !DILexicalBlock(scope: !2612, file: !58, line: 63, column: 5)
!2664 = !DILocation(line: 0, scope: !2663)
!2665 = !DILocation(line: 63, column: 10, scope: !2663)
!2666 = !DILocation(line: 63, scope: !2663)
!2667 = !DILocation(line: 63, column: 23, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2663, file: !58, line: 63, column: 5)
!2669 = !DILocation(line: 63, column: 5, scope: !2663)
!2670 = !DILocation(line: 64, column: 44, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2668, file: !58, line: 63, column: 33)
!2672 = !DILocation(line: 64, column: 50, scope: !2671)
!2673 = !DILocation(line: 64, column: 38, scope: !2671)
!2674 = !DILocation(line: 64, column: 13, scope: !2671)
!2675 = !DILocation(line: 64, column: 26, scope: !2671)
!2676 = !DILocation(line: 64, column: 30, scope: !2671)
!2677 = !DILocation(line: 64, column: 21, scope: !2671)
!2678 = !DILocation(line: 64, column: 9, scope: !2671)
!2679 = !DILocation(line: 64, column: 36, scope: !2671)
!2680 = !DILocation(line: 63, column: 29, scope: !2668)
!2681 = !DILocation(line: 63, column: 5, scope: !2668)
!2682 = distinct !{!2682, !2669, !2683, !244}
!2683 = !DILocation(line: 65, column: 5, scope: !2663)
!2684 = !DILocation(line: 67, column: 16, scope: !2612)
!2685 = !DILocation(line: 67, column: 20, scope: !2612)
!2686 = !DILocation(line: 67, column: 5, scope: !2612)
!2687 = !DILocalVariable(name: "full_rank", scope: !2612, file: !58, line: 70, type: !14)
!2688 = !DILocalVariable(name: "i", scope: !2689, file: !58, line: 71, type: !45)
!2689 = distinct !DILexicalBlock(scope: !2612, file: !58, line: 71, column: 5)
!2690 = !DILocation(line: 0, scope: !2689)
!2691 = !DILocation(line: 71, column: 10, scope: !2689)
!2692 = !DILocation(line: 71, scope: !2689)
!2693 = !DILocation(line: 71, column: 23, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2689, file: !58, line: 71, column: 5)
!2695 = !DILocation(line: 71, column: 5, scope: !2689)
!2696 = !DILocation(line: 72, column: 27, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2694, file: !58, line: 71, column: 42)
!2698 = !DILocation(line: 72, column: 32, scope: !2697)
!2699 = !DILocation(line: 72, column: 22, scope: !2697)
!2700 = !DILocation(line: 72, column: 19, scope: !2697)
!2701 = !DILocation(line: 71, column: 38, scope: !2694)
!2702 = !DILocation(line: 71, column: 5, scope: !2694)
!2703 = distinct !{!2703, !2695, !2704, !244}
!2704 = !DILocation(line: 73, column: 5, scope: !2689)
!2705 = !DILocation(line: 80, column: 19, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2612, file: !58, line: 80, column: 9)
!2707 = !DILocation(line: 88, column: 5, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2612, file: !58, line: 88, column: 5)
!2709 = distinct !{!2709, !2707, !2710, !244}
!2710 = !DILocation(line: 122, column: 5, scope: !2708)
!2711 = !DILocation(line: 88, scope: !2708)
!2712 = !DILocalVariable(name: "row", scope: !2708, file: !58, line: 88, type: !45)
!2713 = !DILocation(line: 0, scope: !2708)
!2714 = !DILocation(line: 88, column: 31, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2708, file: !58, line: 88, column: 5)
!2716 = !DILocalVariable(name: "finished", scope: !2612, file: !58, line: 46, type: !14)
!2717 = !DILocation(line: 90, column: 27, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2715, file: !58, line: 88, column: 44)
!2719 = !DILocalVariable(name: "col_upper_bound", scope: !2612, file: !58, line: 47, type: !45)
!2720 = !DILocalVariable(name: "col", scope: !2721, file: !58, line: 93, type: !45)
!2721 = distinct !DILexicalBlock(scope: !2718, file: !58, line: 93, column: 9)
!2722 = !DILocation(line: 0, scope: !2721)
!2723 = !DILocation(line: 93, column: 14, scope: !2721)
!2724 = !DILocation(line: 0, scope: !2718)
!2725 = !DILocation(line: 93, scope: !2721)
!2726 = !DILocation(line: 93, column: 33, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2721, file: !58, line: 93, column: 9)
!2728 = !DILocation(line: 93, column: 9, scope: !2721)
!2729 = !DILocation(line: 97, column: 50, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2727, file: !58, line: 93, column: 60)
!2731 = !DILocation(line: 97, column: 44, scope: !2730)
!2732 = !DILocation(line: 97, column: 30, scope: !2730)
!2733 = !DILocation(line: 97, column: 73, scope: !2730)
!2734 = !DILocalVariable(name: "correct_column", scope: !2612, file: !58, line: 48, type: !14)
!2735 = !DILocation(line: 99, column: 63, scope: !2730)
!2736 = !DILocation(line: 99, column: 48, scope: !2730)
!2737 = !DILocation(line: 99, column: 46, scope: !2730)
!2738 = !DILocalVariable(name: "u", scope: !2730, file: !58, line: 99, type: !14)
!2739 = !DILocation(line: 0, scope: !2730)
!2740 = !DILocation(line: 100, column: 13, scope: !2730)
!2741 = !DILocation(line: 100, column: 20, scope: !2730)
!2742 = !DILocalVariable(name: "i", scope: !2743, file: !58, line: 102, type: !45)
!2743 = distinct !DILexicalBlock(scope: !2730, file: !58, line: 102, column: 13)
!2744 = !DILocation(line: 0, scope: !2743)
!2745 = !DILocation(line: 102, column: 18, scope: !2743)
!2746 = !DILocation(line: 102, scope: !2743)
!2747 = !DILocation(line: 102, column: 31, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2743, file: !58, line: 102, column: 13)
!2749 = !DILocation(line: 102, column: 13, scope: !2743)
!2750 = !DILocation(line: 103, column: 53, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2748, file: !58, line: 102, column: 46)
!2752 = !DILocation(line: 103, column: 45, scope: !2751)
!2753 = !DILocation(line: 103, column: 34, scope: !2751)
!2754 = !DILocation(line: 103, column: 95, scope: !2751)
!2755 = !DILocation(line: 103, column: 99, scope: !2751)
!2756 = !DILocation(line: 103, column: 91, scope: !2751)
!2757 = !DILocation(line: 103, column: 80, scope: !2751)
!2758 = !DILocation(line: 103, column: 115, scope: !2751)
!2759 = !DILocation(line: 103, column: 76, scope: !2751)
!2760 = !DILocation(line: 104, column: 49, scope: !2751)
!2761 = !DILocation(line: 104, column: 53, scope: !2751)
!2762 = !DILocation(line: 104, column: 45, scope: !2751)
!2763 = !DILocation(line: 104, column: 34, scope: !2751)
!2764 = !DILocation(line: 104, column: 69, scope: !2751)
!2765 = !DILocation(line: 104, column: 30, scope: !2751)
!2766 = !DILocation(line: 104, column: 95, scope: !2751)
!2767 = !DILocation(line: 104, column: 99, scope: !2751)
!2768 = !DILocation(line: 104, column: 91, scope: !2751)
!2769 = !DILocation(line: 104, column: 80, scope: !2751)
!2770 = !DILocation(line: 104, column: 115, scope: !2751)
!2771 = !DILocation(line: 104, column: 76, scope: !2751)
!2772 = !DILocation(line: 105, column: 49, scope: !2751)
!2773 = !DILocation(line: 105, column: 53, scope: !2751)
!2774 = !DILocation(line: 105, column: 45, scope: !2751)
!2775 = !DILocation(line: 105, column: 34, scope: !2751)
!2776 = !DILocation(line: 105, column: 69, scope: !2751)
!2777 = !DILocation(line: 105, column: 30, scope: !2751)
!2778 = !DILocation(line: 105, column: 95, scope: !2751)
!2779 = !DILocation(line: 105, column: 99, scope: !2751)
!2780 = !DILocation(line: 105, column: 91, scope: !2751)
!2781 = !DILocation(line: 105, column: 80, scope: !2751)
!2782 = !DILocation(line: 105, column: 115, scope: !2751)
!2783 = !DILocation(line: 105, column: 76, scope: !2751)
!2784 = !DILocation(line: 106, column: 49, scope: !2751)
!2785 = !DILocation(line: 106, column: 53, scope: !2751)
!2786 = !DILocation(line: 106, column: 45, scope: !2751)
!2787 = !DILocation(line: 106, column: 34, scope: !2751)
!2788 = !DILocation(line: 106, column: 69, scope: !2751)
!2789 = !DILocation(line: 106, column: 30, scope: !2751)
!2790 = !DILocation(line: 106, column: 95, scope: !2751)
!2791 = !DILocation(line: 106, column: 99, scope: !2751)
!2792 = !DILocation(line: 106, column: 91, scope: !2751)
!2793 = !DILocation(line: 106, column: 80, scope: !2751)
!2794 = !DILocation(line: 106, column: 115, scope: !2751)
!2795 = !DILocation(line: 106, column: 76, scope: !2751)
!2796 = !DILocalVariable(name: "tmp", scope: !2751, file: !58, line: 103, type: !6)
!2797 = !DILocation(line: 0, scope: !2751)
!2798 = !DILocation(line: 108, column: 23, scope: !2751)
!2799 = !DILocation(line: 110, column: 34, scope: !2751)
!2800 = !DILocation(line: 110, column: 17, scope: !2751)
!2801 = !DILocation(line: 110, column: 48, scope: !2751)
!2802 = !DILocation(line: 111, column: 56, scope: !2751)
!2803 = !DILocation(line: 111, column: 34, scope: !2751)
!2804 = !DILocation(line: 111, column: 17, scope: !2751)
!2805 = !DILocation(line: 111, column: 48, scope: !2751)
!2806 = !DILocation(line: 112, column: 56, scope: !2751)
!2807 = !DILocation(line: 112, column: 34, scope: !2751)
!2808 = !DILocation(line: 112, column: 17, scope: !2751)
!2809 = !DILocation(line: 112, column: 48, scope: !2751)
!2810 = !DILocation(line: 113, column: 56, scope: !2751)
!2811 = !DILocation(line: 113, column: 34, scope: !2751)
!2812 = !DILocation(line: 113, column: 17, scope: !2751)
!2813 = !DILocation(line: 113, column: 48, scope: !2751)
!2814 = !DILocation(line: 114, column: 56, scope: !2751)
!2815 = !DILocation(line: 114, column: 34, scope: !2751)
!2816 = !DILocation(line: 114, column: 17, scope: !2751)
!2817 = !DILocation(line: 114, column: 48, scope: !2751)
!2818 = !DILocation(line: 115, column: 56, scope: !2751)
!2819 = !DILocation(line: 115, column: 34, scope: !2751)
!2820 = !DILocation(line: 115, column: 17, scope: !2751)
!2821 = !DILocation(line: 115, column: 48, scope: !2751)
!2822 = !DILocation(line: 116, column: 56, scope: !2751)
!2823 = !DILocation(line: 116, column: 34, scope: !2751)
!2824 = !DILocation(line: 116, column: 17, scope: !2751)
!2825 = !DILocation(line: 116, column: 48, scope: !2751)
!2826 = !DILocation(line: 117, column: 56, scope: !2751)
!2827 = !DILocation(line: 117, column: 34, scope: !2751)
!2828 = !DILocation(line: 117, column: 17, scope: !2751)
!2829 = !DILocation(line: 117, column: 48, scope: !2751)
!2830 = !DILocation(line: 102, column: 40, scope: !2748)
!2831 = !DILocation(line: 102, column: 13, scope: !2748)
!2832 = distinct !{!2832, !2749, !2833, !244}
!2833 = !DILocation(line: 118, column: 13, scope: !2743)
!2834 = !DILocation(line: 120, column: 33, scope: !2730)
!2835 = !DILocation(line: 93, column: 56, scope: !2727)
!2836 = !DILocation(line: 93, column: 9, scope: !2727)
!2837 = distinct !{!2837, !2728, !2838, !244}
!2838 = !DILocation(line: 121, column: 9, scope: !2721)
!2839 = !DILocation(line: 124, column: 1, scope: !2612)
!2840 = distinct !DISubprogram(name: "mat_mul", scope: !595, file: !595, line: 79, type: !1526, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2841 = !DILocalVariable(name: "a", arg: 1, scope: !2840, file: !595, line: 79, type: !49)
!2842 = !DILocation(line: 0, scope: !2840)
!2843 = !DILocalVariable(name: "b", arg: 2, scope: !2840, file: !595, line: 79, type: !49)
!2844 = !DILocalVariable(name: "c", arg: 3, scope: !2840, file: !595, line: 80, type: !18)
!2845 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2840, file: !595, line: 80, type: !45)
!2846 = !DILocalVariable(name: "row_a", arg: 5, scope: !2840, file: !595, line: 80, type: !45)
!2847 = !DILocalVariable(name: "col_b", arg: 6, scope: !2840, file: !595, line: 80, type: !45)
!2848 = !DILocalVariable(name: "i", scope: !2849, file: !595, line: 81, type: !45)
!2849 = distinct !DILexicalBlock(scope: !2840, file: !595, line: 81, column: 5)
!2850 = !DILocation(line: 0, scope: !2849)
!2851 = !DILocation(line: 81, column: 10, scope: !2849)
!2852 = !DILocation(line: 81, scope: !2849)
!2853 = !DILocation(line: 81, column: 23, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2849, file: !595, line: 81, column: 5)
!2855 = !DILocation(line: 81, column: 5, scope: !2849)
!2856 = !DILocation(line: 82, column: 9, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !595, line: 82, column: 9)
!2858 = distinct !DILexicalBlock(scope: !2854, file: !595, line: 81, column: 53)
!2859 = !DILocation(line: 82, scope: !2857)
!2860 = !DILocalVariable(name: "j", scope: !2857, file: !595, line: 82, type: !45)
!2861 = !DILocation(line: 0, scope: !2857)
!2862 = !DILocation(line: 83, column: 18, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !595, line: 82, column: 46)
!2864 = distinct !DILexicalBlock(scope: !2857, file: !595, line: 82, column: 9)
!2865 = !DILocation(line: 83, column: 16, scope: !2863)
!2866 = !DILocation(line: 82, column: 41, scope: !2864)
!2867 = !DILocation(line: 82, column: 9, scope: !2864)
!2868 = distinct !{!2868, !2856, !2869, !244}
!2869 = !DILocation(line: 84, column: 9, scope: !2857)
!2870 = !DILocation(line: 81, column: 32, scope: !2854)
!2871 = !DILocation(line: 81, column: 39, scope: !2854)
!2872 = !DILocation(line: 81, column: 5, scope: !2854)
!2873 = distinct !{!2873, !2855, !2874, !244}
!2874 = !DILocation(line: 85, column: 5, scope: !2849)
!2875 = !DILocation(line: 86, column: 1, scope: !2840)
!2876 = distinct !DISubprogram(name: "sub_f", scope: !595, file: !595, line: 48, type: !1625, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2877 = !DILocalVariable(name: "a", arg: 1, scope: !2876, file: !595, line: 48, type: !14)
!2878 = !DILocation(line: 0, scope: !2876)
!2879 = !DILocalVariable(name: "b", arg: 2, scope: !2876, file: !595, line: 48, type: !14)
!2880 = !DILocation(line: 49, column: 14, scope: !2876)
!2881 = !DILocation(line: 49, column: 5, scope: !2876)
!2882 = distinct !DISubprogram(name: "EF", scope: !2883, file: !2883, line: 60, type: !2884, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2883 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2884 = !DISubroutineType(types: !2885)
!2885 = !{null, !18, !45, !45}
!2886 = !DILocalVariable(name: "A", arg: 1, scope: !2882, file: !2883, line: 60, type: !18)
!2887 = !DILocation(line: 0, scope: !2882)
!2888 = !DILocalVariable(name: "nrows", arg: 2, scope: !2882, file: !2883, line: 60, type: !45)
!2889 = !DILocalVariable(name: "ncols", arg: 3, scope: !2882, file: !2883, line: 60, type: !45)
!2890 = !DILocalVariable(name: "_pivot_row", scope: !2882, file: !2883, line: 62, type: !2891, align: 256)
!2891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !82)
!2892 = !DILocation(line: 62, column: 27, scope: !2882)
!2893 = !DILocalVariable(name: "_pivot_row2", scope: !2882, file: !2883, line: 63, type: !2891, align: 256)
!2894 = !DILocation(line: 63, column: 27, scope: !2882)
!2895 = !DILocalVariable(name: "packed_A", scope: !2882, file: !2883, line: 64, type: !2896, align: 256)
!2896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 90880, elements: !2897)
!2897 = !{!2898}
!2898 = !DISubrange(count: 1420)
!2899 = !DILocation(line: 64, column: 27, scope: !2882)
!2900 = !DILocation(line: 66, column: 26, scope: !2882)
!2901 = !DILocation(line: 66, column: 32, scope: !2882)
!2902 = !DILocalVariable(name: "row_len", scope: !2882, file: !2883, line: 66, type: !45)
!2903 = !DILocalVariable(name: "i", scope: !2904, file: !2883, line: 69, type: !45)
!2904 = distinct !DILexicalBlock(scope: !2882, file: !2883, line: 69, column: 5)
!2905 = !DILocation(line: 0, scope: !2904)
!2906 = !DILocation(line: 69, column: 10, scope: !2904)
!2907 = !DILocation(line: 69, scope: !2904)
!2908 = !DILocation(line: 69, column: 23, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2904, file: !2883, line: 69, column: 5)
!2910 = !DILocation(line: 69, column: 5, scope: !2904)
!2911 = !DILocation(line: 77, column: 5, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2882, file: !2883, line: 77, column: 5)
!2913 = !DILocation(line: 70, column: 29, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2909, file: !2883, line: 69, column: 37)
!2915 = !DILocation(line: 70, column: 25, scope: !2914)
!2916 = !DILocation(line: 70, column: 51, scope: !2914)
!2917 = !DILocation(line: 70, column: 47, scope: !2914)
!2918 = !DILocation(line: 70, column: 9, scope: !2914)
!2919 = !DILocation(line: 69, column: 33, scope: !2909)
!2920 = !DILocation(line: 69, column: 5, scope: !2909)
!2921 = distinct !{!2921, !2910, !2922, !244}
!2922 = !DILocation(line: 71, column: 5, scope: !2904)
!2923 = !DILocation(line: 77, scope: !2912)
!2924 = !DILocalVariable(name: "pivot_row", scope: !2882, file: !2883, line: 76, type: !45)
!2925 = !DILocalVariable(name: "pivot_col", scope: !2912, file: !2883, line: 77, type: !45)
!2926 = !DILocation(line: 0, scope: !2912)
!2927 = !DILocation(line: 77, column: 39, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2912, file: !2883, line: 77, column: 5)
!2929 = !DILocation(line: 138, column: 5, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2882, file: !2883, line: 138, column: 5)
!2931 = !DILocation(line: 79, column: 37, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2928, file: !2883, line: 77, column: 61)
!2933 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2932, file: !2883, line: 79, type: !45)
!2934 = !DILocation(line: 0, scope: !2932)
!2935 = !DILocation(line: 80, column: 37, scope: !2932)
!2936 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2932, file: !2883, line: 80, type: !45)
!2937 = !DILocalVariable(name: "i", scope: !2938, file: !2883, line: 85, type: !45)
!2938 = distinct !DILexicalBlock(scope: !2932, file: !2883, line: 85, column: 9)
!2939 = !DILocation(line: 0, scope: !2938)
!2940 = !DILocation(line: 85, column: 14, scope: !2938)
!2941 = !DILocation(line: 85, scope: !2938)
!2942 = !DILocation(line: 85, column: 27, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2938, file: !2883, line: 85, column: 9)
!2944 = !DILocation(line: 85, column: 9, scope: !2938)
!2945 = !DILocation(line: 93, column: 9, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2932, file: !2883, line: 93, column: 9)
!2947 = !DILocation(line: 86, column: 13, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2943, file: !2883, line: 85, column: 43)
!2949 = !DILocation(line: 86, column: 27, scope: !2948)
!2950 = !DILocation(line: 87, column: 13, scope: !2948)
!2951 = !DILocation(line: 87, column: 28, scope: !2948)
!2952 = !DILocation(line: 85, column: 39, scope: !2943)
!2953 = !DILocation(line: 85, column: 9, scope: !2943)
!2954 = distinct !{!2954, !2944, !2955, !244}
!2955 = !DILocation(line: 88, column: 9, scope: !2938)
!2956 = !DILocation(line: 0, scope: !2946)
!2957 = !DILocalVariable(name: "row", scope: !2946, file: !2883, line: 93, type: !45)
!2958 = !DILocalVariable(name: "pivot", scope: !2932, file: !2883, line: 91, type: !14)
!2959 = !DILocalVariable(name: "pivot_is_zero", scope: !2932, file: !2883, line: 92, type: !6)
!2960 = !DILocation(line: 94, column: 24, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2946, file: !2883, line: 93, column: 9)
!2962 = !DILocation(line: 94, column: 21, scope: !2961)
!2963 = !DILocation(line: 96, column: 38, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2961, file: !2883, line: 94, column: 80)
!2965 = !DILocation(line: 96, column: 37, scope: !2964)
!2966 = !DILocalVariable(name: "is_pivot_row", scope: !2964, file: !2883, line: 96, type: !6)
!2967 = !DILocation(line: 0, scope: !2964)
!2968 = !DILocation(line: 97, column: 40, scope: !2964)
!2969 = !DILocalVariable(name: "below_pivot_row", scope: !2964, file: !2883, line: 97, type: !6)
!2970 = !DILocalVariable(name: "j", scope: !2971, file: !2883, line: 99, type: !45)
!2971 = distinct !DILexicalBlock(scope: !2964, file: !2883, line: 99, column: 13)
!2972 = !DILocation(line: 0, scope: !2971)
!2973 = !DILocation(line: 99, column: 18, scope: !2971)
!2974 = !DILocation(line: 99, scope: !2971)
!2975 = !DILocation(line: 99, column: 31, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2971, file: !2883, line: 99, column: 13)
!2977 = !DILocation(line: 99, column: 13, scope: !2971)
!2978 = !DILocation(line: 100, column: 67, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2976, file: !2883, line: 99, column: 47)
!2980 = !DILocation(line: 100, column: 48, scope: !2979)
!2981 = !DILocation(line: 101, column: 47, scope: !2979)
!2982 = !DILocation(line: 101, column: 57, scope: !2979)
!2983 = !DILocation(line: 101, column: 34, scope: !2979)
!2984 = !DILocation(line: 100, column: 85, scope: !2979)
!2985 = !DILocation(line: 100, column: 17, scope: !2979)
!2986 = !DILocation(line: 100, column: 31, scope: !2979)
!2987 = !DILocation(line: 99, column: 43, scope: !2976)
!2988 = !DILocation(line: 99, column: 13, scope: !2976)
!2989 = distinct !{!2989, !2977, !2990, !244}
!2990 = !DILocation(line: 102, column: 13, scope: !2971)
!2991 = !DILocation(line: 103, column: 21, scope: !2964)
!2992 = !DILocation(line: 104, column: 44, scope: !2964)
!2993 = !DILocation(line: 104, column: 30, scope: !2964)
!2994 = !DILocation(line: 104, column: 29, scope: !2964)
!2995 = !DILocation(line: 94, column: 76, scope: !2961)
!2996 = !DILocation(line: 93, column: 9, scope: !2961)
!2997 = distinct !{!2997, !2945, !2998, !244}
!2998 = !DILocation(line: 105, column: 9, scope: !2946)
!2999 = !DILocation(line: 108, column: 19, scope: !2932)
!3000 = !DILocalVariable(name: "inverse", scope: !2882, file: !2883, line: 75, type: !14)
!3001 = !DILocation(line: 109, column: 9, scope: !2932)
!3002 = !DILocalVariable(name: "row", scope: !3003, file: !2883, line: 113, type: !45)
!3003 = distinct !DILexicalBlock(scope: !2932, file: !2883, line: 113, column: 9)
!3004 = !DILocation(line: 0, scope: !3003)
!3005 = !DILocation(line: 113, column: 14, scope: !3003)
!3006 = !DILocation(line: 113, scope: !3003)
!3007 = !DILocation(line: 113, column: 51, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3003, file: !2883, line: 113, column: 9)
!3009 = !DILocation(line: 113, column: 9, scope: !3003)
!3010 = !DILocation(line: 124, column: 9, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2932, file: !2883, line: 124, column: 9)
!3012 = !DILocation(line: 114, column: 33, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3008, file: !2883, line: 113, column: 84)
!3014 = !DILocation(line: 114, column: 63, scope: !3013)
!3015 = !DILocalVariable(name: "do_copy", scope: !3013, file: !2883, line: 114, type: !6)
!3016 = !DILocation(line: 0, scope: !3013)
!3017 = !DILocalVariable(name: "do_not_copy", scope: !3013, file: !2883, line: 115, type: !6)
!3018 = !DILocalVariable(name: "col", scope: !3019, file: !2883, line: 116, type: !45)
!3019 = distinct !DILexicalBlock(scope: !3013, file: !2883, line: 116, column: 13)
!3020 = !DILocation(line: 0, scope: !3019)
!3021 = !DILocation(line: 116, column: 18, scope: !3019)
!3022 = !DILocation(line: 116, scope: !3019)
!3023 = !DILocation(line: 116, column: 35, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3019, file: !2883, line: 116, column: 13)
!3025 = !DILocation(line: 116, column: 13, scope: !3019)
!3026 = !DILocation(line: 118, column: 49, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3024, file: !2883, line: 116, column: 53)
!3028 = !DILocation(line: 118, column: 59, scope: !3027)
!3029 = !DILocation(line: 118, column: 36, scope: !3027)
!3030 = !DILocation(line: 118, column: 34, scope: !3027)
!3031 = !DILocation(line: 119, column: 32, scope: !3027)
!3032 = !DILocation(line: 119, column: 30, scope: !3027)
!3033 = !DILocation(line: 118, column: 67, scope: !3027)
!3034 = !DILocation(line: 117, column: 30, scope: !3027)
!3035 = !DILocation(line: 117, column: 40, scope: !3027)
!3036 = !DILocation(line: 117, column: 17, scope: !3027)
!3037 = !DILocation(line: 117, column: 47, scope: !3027)
!3038 = !DILocation(line: 116, column: 49, scope: !3024)
!3039 = !DILocation(line: 116, column: 13, scope: !3024)
!3040 = distinct !{!3040, !3025, !3041, !244}
!3041 = !DILocation(line: 120, column: 13, scope: !3019)
!3042 = !DILocation(line: 113, column: 80, scope: !3008)
!3043 = !DILocation(line: 113, column: 9, scope: !3008)
!3044 = distinct !{!3044, !3009, !3045, !244}
!3045 = !DILocation(line: 121, column: 9, scope: !3003)
!3046 = !DILocation(line: 124, scope: !3011)
!3047 = !DILocalVariable(name: "row", scope: !3011, file: !2883, line: 124, type: !45)
!3048 = !DILocation(line: 0, scope: !3011)
!3049 = !DILocation(line: 124, column: 51, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3011, file: !2883, line: 124, column: 9)
!3051 = !DILocation(line: 125, column: 46, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3050, file: !2883, line: 124, column: 67)
!3053 = !DILocalVariable(name: "below_pivot", scope: !3052, file: !2883, line: 125, type: !14)
!3054 = !DILocation(line: 0, scope: !3052)
!3055 = !DILocation(line: 126, column: 74, scope: !3052)
!3056 = !DILocation(line: 126, column: 68, scope: !3052)
!3057 = !DILocation(line: 126, column: 41, scope: !3052)
!3058 = !DILocalVariable(name: "elt_to_elim", scope: !3052, file: !2883, line: 126, type: !14)
!3059 = !DILocation(line: 128, column: 63, scope: !3052)
!3060 = !DILocation(line: 129, column: 52, scope: !3052)
!3061 = !DILocation(line: 129, column: 46, scope: !3052)
!3062 = !DILocation(line: 128, column: 13, scope: !3052)
!3063 = !DILocation(line: 124, column: 63, scope: !3050)
!3064 = !DILocation(line: 124, column: 9, scope: !3050)
!3065 = distinct !{!3065, !3010, !3066, !244}
!3066 = !DILocation(line: 130, column: 9, scope: !3011)
!3067 = !DILocation(line: 132, column: 19, scope: !2932)
!3068 = !DILocation(line: 77, column: 57, scope: !2928)
!3069 = !DILocation(line: 77, column: 5, scope: !2928)
!3070 = distinct !{!3070, !2911, !3071, !244}
!3071 = !DILocation(line: 133, column: 5, scope: !2912)
!3072 = !DILocation(line: 138, scope: !2930)
!3073 = !DILocalVariable(name: "i", scope: !2930, file: !2883, line: 138, type: !45)
!3074 = !DILocation(line: 0, scope: !2930)
!3075 = !DILocation(line: 138, column: 23, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !2930, file: !2883, line: 138, column: 5)
!3077 = !DILocation(line: 139, column: 47, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3076, file: !2883, line: 138, column: 37)
!3079 = !DILocation(line: 139, column: 43, scope: !3078)
!3080 = !DILocation(line: 139, column: 9, scope: !3078)
!3081 = !DILocalVariable(name: "j", scope: !3082, file: !2883, line: 140, type: !45)
!3082 = distinct !DILexicalBlock(scope: !3078, file: !2883, line: 140, column: 9)
!3083 = !DILocation(line: 0, scope: !3082)
!3084 = !DILocation(line: 140, column: 14, scope: !3082)
!3085 = !DILocation(line: 140, scope: !3082)
!3086 = !DILocation(line: 140, column: 27, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3082, file: !2883, line: 140, column: 9)
!3088 = !DILocation(line: 140, column: 9, scope: !3082)
!3089 = !DILocation(line: 141, column: 32, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3087, file: !2883, line: 140, column: 41)
!3091 = !DILocation(line: 141, column: 17, scope: !3090)
!3092 = !DILocation(line: 141, column: 13, scope: !3090)
!3093 = !DILocation(line: 141, column: 30, scope: !3090)
!3094 = !DILocation(line: 140, column: 37, scope: !3087)
!3095 = !DILocation(line: 140, column: 9, scope: !3087)
!3096 = distinct !{!3096, !3088, !3097, !244}
!3097 = !DILocation(line: 142, column: 9, scope: !3082)
!3098 = !DILocation(line: 138, column: 33, scope: !3076)
!3099 = !DILocation(line: 138, column: 5, scope: !3076)
!3100 = distinct !{!3100, !2929, !3101, !244}
!3101 = !DILocation(line: 143, column: 5, scope: !2930)
!3102 = !DILocation(line: 145, column: 5, scope: !2882)
!3103 = !DILocation(line: 146, column: 5, scope: !2882)
!3104 = !DILocation(line: 147, column: 5, scope: !2882)
!3105 = !DILocation(line: 148, column: 5, scope: !2882)
!3106 = !DILocation(line: 149, column: 1, scope: !2882)
!3107 = distinct !DISubprogram(name: "ct_compare_8", scope: !3108, file: !3108, line: 51, type: !1625, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3108 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3109 = !DILocalVariable(name: "a", arg: 1, scope: !3107, file: !3108, line: 51, type: !14)
!3110 = !DILocation(line: 0, scope: !3107)
!3111 = !DILocalVariable(name: "b", arg: 2, scope: !3107, file: !3108, line: 51, type: !14)
!3112 = !DILocation(line: 52, column: 42, scope: !3107)
!3113 = !DILocation(line: 52, column: 13, scope: !3107)
!3114 = !DILocation(line: 52, column: 71, scope: !3107)
!3115 = !DILocation(line: 52, column: 69, scope: !3107)
!3116 = !DILocation(line: 52, column: 5, scope: !3107)
!3117 = distinct !DISubprogram(name: "mul_fx8", scope: !595, file: !595, line: 28, type: !3118, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!6, !14, !6}
!3120 = !DILocalVariable(name: "a", arg: 1, scope: !3117, file: !595, line: 28, type: !14)
!3121 = !DILocation(line: 0, scope: !3117)
!3122 = !DILocalVariable(name: "b", arg: 2, scope: !3117, file: !595, line: 28, type: !6)
!3123 = !DILocation(line: 31, column: 13, scope: !3117)
!3124 = !DILocation(line: 31, column: 10, scope: !3117)
!3125 = !DILocation(line: 31, column: 17, scope: !3117)
!3126 = !DILocalVariable(name: "p", scope: !3117, file: !595, line: 30, type: !6)
!3127 = !DILocation(line: 32, column: 13, scope: !3117)
!3128 = !DILocation(line: 32, column: 10, scope: !3117)
!3129 = !DILocation(line: 32, column: 17, scope: !3117)
!3130 = !DILocation(line: 32, column: 7, scope: !3117)
!3131 = !DILocation(line: 33, column: 13, scope: !3117)
!3132 = !DILocation(line: 33, column: 10, scope: !3117)
!3133 = !DILocation(line: 33, column: 17, scope: !3117)
!3134 = !DILocation(line: 33, column: 7, scope: !3117)
!3135 = !DILocation(line: 34, column: 13, scope: !3117)
!3136 = !DILocation(line: 34, column: 10, scope: !3117)
!3137 = !DILocation(line: 34, column: 17, scope: !3117)
!3138 = !DILocation(line: 34, column: 7, scope: !3117)
!3139 = !DILocalVariable(name: "top_p", scope: !3117, file: !595, line: 37, type: !6)
!3140 = !DILocation(line: 38, column: 32, scope: !3117)
!3141 = !DILocation(line: 38, column: 47, scope: !3117)
!3142 = !DILocation(line: 38, column: 38, scope: !3117)
!3143 = !DILocation(line: 38, column: 54, scope: !3117)
!3144 = !DILocalVariable(name: "out", scope: !3117, file: !595, line: 38, type: !6)
!3145 = !DILocation(line: 39, column: 5, scope: !3117)
!3146 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2883, file: !2883, line: 24, type: !3147, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{null, !49, !5, !45}
!3149 = !DILocalVariable(name: "in", arg: 1, scope: !3146, file: !2883, line: 24, type: !49)
!3150 = !DILocation(line: 0, scope: !3146)
!3151 = !DILocalVariable(name: "out", arg: 2, scope: !3146, file: !2883, line: 24, type: !5)
!3152 = !DILocalVariable(name: "ncols", arg: 3, scope: !3146, file: !2883, line: 24, type: !45)
!3153 = !DILocalVariable(name: "out8", scope: !3146, file: !2883, line: 26, type: !18)
!3154 = !DILocalVariable(name: "i", scope: !3146, file: !2883, line: 25, type: !45)
!3155 = !DILocation(line: 27, column: 9, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3146, file: !2883, line: 27, column: 5)
!3157 = !DILocation(line: 27, scope: !3156)
!3158 = !DILocation(line: 27, column: 17, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3156, file: !2883, line: 27, column: 5)
!3160 = !DILocation(line: 27, column: 20, scope: !3159)
!3161 = !DILocation(line: 27, column: 5, scope: !3156)
!3162 = !DILocation(line: 31, column: 23, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3159, file: !2883, line: 27, column: 36)
!3164 = !DILocation(line: 31, column: 44, scope: !3163)
!3165 = !DILocation(line: 31, column: 40, scope: !3163)
!3166 = !DILocation(line: 31, column: 48, scope: !3163)
!3167 = !DILocation(line: 31, column: 37, scope: !3163)
!3168 = !DILocation(line: 31, column: 15, scope: !3163)
!3169 = !DILocation(line: 31, column: 9, scope: !3163)
!3170 = !DILocation(line: 31, column: 20, scope: !3163)
!3171 = !DILocation(line: 27, column: 31, scope: !3159)
!3172 = !DILocation(line: 27, column: 5, scope: !3159)
!3173 = distinct !{!3173, !3161, !3174, !244}
!3174 = !DILocation(line: 33, column: 5, scope: !3156)
!3175 = !DILocation(line: 34, column: 19, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3146, file: !2883, line: 34, column: 9)
!3177 = !DILocation(line: 38, column: 23, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3176, file: !2883, line: 34, column: 24)
!3179 = !DILocation(line: 38, column: 15, scope: !3178)
!3180 = !DILocation(line: 38, column: 9, scope: !3178)
!3181 = !DILocation(line: 38, column: 20, scope: !3178)
!3182 = !DILocation(line: 40, column: 5, scope: !3178)
!3183 = !DILocation(line: 41, column: 1, scope: !3146)
!3184 = distinct !DISubprogram(name: "ct_compare_64", scope: !3108, file: !3108, line: 46, type: !3185, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!6, !45, !45}
!3187 = !DILocalVariable(name: "a", arg: 1, scope: !3184, file: !3108, line: 46, type: !45)
!3188 = !DILocation(line: 0, scope: !3184)
!3189 = !DILocalVariable(name: "b", arg: 2, scope: !3184, file: !3108, line: 46, type: !45)
!3190 = !DILocation(line: 47, column: 38, scope: !3184)
!3191 = !DILocation(line: 47, column: 44, scope: !3184)
!3192 = !DILocation(line: 47, column: 73, scope: !3184)
!3193 = !DILocation(line: 47, column: 71, scope: !3184)
!3194 = !DILocation(line: 47, column: 5, scope: !3184)
!3195 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3108, file: !3108, line: 35, type: !3185, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3196 = !DILocalVariable(name: "a", arg: 1, scope: !3195, file: !3108, line: 35, type: !45)
!3197 = !DILocation(line: 0, scope: !3195)
!3198 = !DILocalVariable(name: "b", arg: 2, scope: !3195, file: !3108, line: 35, type: !45)
!3199 = !DILocalVariable(name: "diff", scope: !3195, file: !3108, line: 36, type: !46)
!3200 = !DILocation(line: 37, column: 30, scope: !3195)
!3201 = !DILocation(line: 37, column: 59, scope: !3195)
!3202 = !DILocation(line: 37, column: 57, scope: !3195)
!3203 = !DILocation(line: 37, column: 5, scope: !3195)
!3204 = distinct !DISubprogram(name: "m_extract_element", scope: !2883, file: !2883, line: 16, type: !3205, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!14, !428, !45}
!3207 = !DILocalVariable(name: "in", arg: 1, scope: !3204, file: !2883, line: 16, type: !428)
!3208 = !DILocation(line: 0, scope: !3204)
!3209 = !DILocalVariable(name: "index", arg: 2, scope: !3204, file: !2883, line: 16, type: !45)
!3210 = !DILocation(line: 17, column: 27, scope: !3204)
!3211 = !DILocalVariable(name: "leg", scope: !3204, file: !2883, line: 17, type: !343)
!3212 = !DILocation(line: 18, column: 30, scope: !3204)
!3213 = !DILocalVariable(name: "offset", scope: !3204, file: !2883, line: 18, type: !343)
!3214 = !DILocation(line: 20, column: 13, scope: !3204)
!3215 = !DILocation(line: 20, column: 31, scope: !3204)
!3216 = !DILocation(line: 20, column: 21, scope: !3204)
!3217 = !DILocation(line: 20, column: 12, scope: !3204)
!3218 = !DILocation(line: 20, column: 5, scope: !3204)
!3219 = distinct !DISubprogram(name: "inverse_f", scope: !595, file: !595, line: 57, type: !3220, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!14, !14}
!3222 = !DILocalVariable(name: "a", arg: 1, scope: !3219, file: !595, line: 57, type: !14)
!3223 = !DILocation(line: 0, scope: !3219)
!3224 = !DILocation(line: 61, column: 24, scope: !3219)
!3225 = !DILocalVariable(name: "a2", scope: !3219, file: !595, line: 61, type: !14)
!3226 = !DILocation(line: 62, column: 24, scope: !3219)
!3227 = !DILocalVariable(name: "a4", scope: !3219, file: !595, line: 62, type: !14)
!3228 = !DILocation(line: 63, column: 24, scope: !3219)
!3229 = !DILocalVariable(name: "a8", scope: !3219, file: !595, line: 63, type: !14)
!3230 = !DILocation(line: 64, column: 24, scope: !3219)
!3231 = !DILocalVariable(name: "a6", scope: !3219, file: !595, line: 64, type: !14)
!3232 = !DILocation(line: 65, column: 25, scope: !3219)
!3233 = !DILocalVariable(name: "a14", scope: !3219, file: !595, line: 65, type: !14)
!3234 = !DILocation(line: 67, column: 5, scope: !3219)
!3235 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3108, file: !3108, line: 94, type: !3236, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{null, !343, !428, !14, !5}
!3238 = !DILocalVariable(name: "legs", arg: 1, scope: !3235, file: !3108, line: 94, type: !343)
!3239 = !DILocation(line: 0, scope: !3235)
!3240 = !DILocalVariable(name: "in", arg: 2, scope: !3235, file: !3108, line: 94, type: !428)
!3241 = !DILocalVariable(name: "a", arg: 3, scope: !3235, file: !3108, line: 94, type: !14)
!3242 = !DILocalVariable(name: "acc", arg: 4, scope: !3235, file: !3108, line: 94, type: !5)
!3243 = !DILocation(line: 95, column: 20, scope: !3235)
!3244 = !DILocalVariable(name: "tab", scope: !3235, file: !3108, line: 95, type: !19)
!3245 = !DILocalVariable(name: "lsb_ask", scope: !3235, file: !3108, line: 97, type: !6)
!3246 = !DILocalVariable(name: "i", scope: !3247, file: !3108, line: 99, type: !45)
!3247 = distinct !DILexicalBlock(scope: !3235, file: !3108, line: 99, column: 5)
!3248 = !DILocation(line: 0, scope: !3247)
!3249 = !DILocation(line: 99, column: 9, scope: !3247)
!3250 = !DILocation(line: 99, scope: !3247)
!3251 = !DILocation(line: 99, column: 20, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3247, file: !3108, line: 99, column: 5)
!3253 = !DILocation(line: 99, column: 5, scope: !3247)
!3254 = !DILocation(line: 100, column: 21, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3252, file: !3108, line: 99, column: 32)
!3256 = !DILocation(line: 100, column: 33, scope: !3255)
!3257 = !DILocation(line: 100, column: 51, scope: !3255)
!3258 = !DILocation(line: 100, column: 46, scope: !3255)
!3259 = !DILocation(line: 100, column: 44, scope: !3255)
!3260 = !DILocation(line: 101, column: 27, scope: !3255)
!3261 = !DILocation(line: 101, column: 33, scope: !3255)
!3262 = !DILocation(line: 101, column: 52, scope: !3255)
!3263 = !DILocation(line: 101, column: 59, scope: !3255)
!3264 = !DILocation(line: 101, column: 46, scope: !3255)
!3265 = !DILocation(line: 101, column: 44, scope: !3255)
!3266 = !DILocation(line: 101, column: 17, scope: !3255)
!3267 = !DILocation(line: 102, column: 21, scope: !3255)
!3268 = !DILocation(line: 102, column: 27, scope: !3255)
!3269 = !DILocation(line: 102, column: 33, scope: !3255)
!3270 = !DILocation(line: 102, column: 52, scope: !3255)
!3271 = !DILocation(line: 102, column: 59, scope: !3255)
!3272 = !DILocation(line: 102, column: 46, scope: !3255)
!3273 = !DILocation(line: 102, column: 44, scope: !3255)
!3274 = !DILocation(line: 102, column: 17, scope: !3255)
!3275 = !DILocation(line: 103, column: 21, scope: !3255)
!3276 = !DILocation(line: 103, column: 27, scope: !3255)
!3277 = !DILocation(line: 103, column: 33, scope: !3255)
!3278 = !DILocation(line: 103, column: 52, scope: !3255)
!3279 = !DILocation(line: 103, column: 59, scope: !3255)
!3280 = !DILocation(line: 103, column: 46, scope: !3255)
!3281 = !DILocation(line: 103, column: 44, scope: !3255)
!3282 = !DILocation(line: 103, column: 17, scope: !3255)
!3283 = !DILocation(line: 100, column: 9, scope: !3255)
!3284 = !DILocation(line: 100, column: 16, scope: !3255)
!3285 = !DILocation(line: 99, column: 29, scope: !3252)
!3286 = !DILocation(line: 99, column: 5, scope: !3252)
!3287 = distinct !{!3287, !3253, !3288, !244}
!3288 = !DILocation(line: 104, column: 5, scope: !3247)
!3289 = !DILocation(line: 105, column: 1, scope: !3235)
!3290 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2883, file: !2883, line: 44, type: !3291, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{null, !45, !428, !18}
!3293 = !DILocalVariable(name: "legs", arg: 1, scope: !3290, file: !2883, line: 44, type: !45)
!3294 = !DILocation(line: 0, scope: !3290)
!3295 = !DILocalVariable(name: "in", arg: 2, scope: !3290, file: !2883, line: 44, type: !428)
!3296 = !DILocalVariable(name: "out", arg: 3, scope: !3290, file: !2883, line: 44, type: !18)
!3297 = !DILocalVariable(name: "in8", scope: !3290, file: !2883, line: 45, type: !49)
!3298 = !DILocalVariable(name: "i", scope: !3299, file: !2883, line: 46, type: !45)
!3299 = distinct !DILexicalBlock(scope: !3290, file: !2883, line: 46, column: 5)
!3300 = !DILocation(line: 0, scope: !3299)
!3301 = !DILocation(line: 46, column: 9, scope: !3299)
!3302 = !DILocation(line: 46, scope: !3299)
!3303 = !DILocation(line: 46, column: 29, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3299, file: !2883, line: 46, column: 5)
!3305 = !DILocation(line: 46, column: 22, scope: !3304)
!3306 = !DILocation(line: 46, column: 5, scope: !3299)
!3307 = !DILocation(line: 51, column: 26, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3304, file: !2883, line: 46, column: 42)
!3309 = !DILocation(line: 51, column: 21, scope: !3308)
!3310 = !DILocation(line: 51, column: 31, scope: !3308)
!3311 = !DILocation(line: 51, column: 9, scope: !3308)
!3312 = !DILocation(line: 51, column: 18, scope: !3308)
!3313 = !DILocation(line: 52, column: 26, scope: !3308)
!3314 = !DILocation(line: 52, column: 21, scope: !3308)
!3315 = !DILocation(line: 52, column: 30, scope: !3308)
!3316 = !DILocation(line: 52, column: 14, scope: !3308)
!3317 = !DILocation(line: 52, column: 9, scope: !3308)
!3318 = !DILocation(line: 52, column: 18, scope: !3308)
!3319 = !DILocation(line: 46, column: 37, scope: !3304)
!3320 = !DILocation(line: 46, column: 5, scope: !3304)
!3321 = distinct !{!3321, !3306, !3322, !244}
!3322 = !DILocation(line: 54, column: 5, scope: !3299)
!3323 = !DILocation(line: 55, column: 1, scope: !3290)
!3324 = distinct !DISubprogram(name: "mul_table", scope: !595, file: !595, line: 129, type: !596, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3325 = !DILocalVariable(name: "b", arg: 1, scope: !3324, file: !595, line: 129, type: !12)
!3326 = !DILocation(line: 0, scope: !3324)
!3327 = !DILocation(line: 130, column: 19, scope: !3324)
!3328 = !DILocation(line: 130, column: 33, scope: !3324)
!3329 = !DILocalVariable(name: "x", scope: !3324, file: !595, line: 130, type: !19)
!3330 = !DILocalVariable(name: "high_nibble_mask", scope: !3324, file: !595, line: 132, type: !19)
!3331 = !DILocation(line: 134, column: 28, scope: !3324)
!3332 = !DILocalVariable(name: "high_half", scope: !3324, file: !595, line: 134, type: !19)
!3333 = !DILocation(line: 135, column: 28, scope: !3324)
!3334 = !DILocation(line: 135, column: 47, scope: !3324)
!3335 = !DILocation(line: 135, column: 34, scope: !3324)
!3336 = !DILocation(line: 135, column: 5, scope: !3324)
!3337 = distinct !DISubprogram(name: "mul_f", scope: !595, file: !595, line: 9, type: !1625, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3338 = !DILocalVariable(name: "a", arg: 1, scope: !3337, file: !595, line: 9, type: !14)
!3339 = !DILocation(line: 0, scope: !3337)
!3340 = !DILocalVariable(name: "b", arg: 2, scope: !3337, file: !595, line: 9, type: !14)
!3341 = !DILocation(line: 14, column: 10, scope: !3337)
!3342 = !DILocation(line: 14, column: 7, scope: !3337)
!3343 = !DILocation(line: 17, column: 17, scope: !3337)
!3344 = !DILocalVariable(name: "p", scope: !3337, file: !595, line: 11, type: !14)
!3345 = !DILocation(line: 18, column: 13, scope: !3337)
!3346 = !DILocation(line: 18, column: 17, scope: !3337)
!3347 = !DILocation(line: 18, column: 7, scope: !3337)
!3348 = !DILocation(line: 19, column: 13, scope: !3337)
!3349 = !DILocation(line: 19, column: 17, scope: !3337)
!3350 = !DILocation(line: 19, column: 7, scope: !3337)
!3351 = !DILocation(line: 20, column: 13, scope: !3337)
!3352 = !DILocation(line: 20, column: 17, scope: !3337)
!3353 = !DILocation(line: 20, column: 7, scope: !3337)
!3354 = !DILocalVariable(name: "top_p", scope: !3337, file: !595, line: 23, type: !14)
!3355 = !DILocation(line: 24, column: 37, scope: !3337)
!3356 = !DILocation(line: 24, column: 52, scope: !3337)
!3357 = !DILocation(line: 24, column: 43, scope: !3337)
!3358 = !DILocation(line: 24, column: 59, scope: !3337)
!3359 = !DILocalVariable(name: "out", scope: !3337, file: !595, line: 24, type: !14)
!3360 = !DILocation(line: 25, column: 5, scope: !3337)
!3361 = distinct !DISubprogram(name: "lincomb", scope: !595, file: !595, line: 70, type: !1633, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3362 = !DILocalVariable(name: "a", arg: 1, scope: !3361, file: !595, line: 70, type: !49)
!3363 = !DILocation(line: 0, scope: !3361)
!3364 = !DILocalVariable(name: "b", arg: 2, scope: !3361, file: !595, line: 71, type: !49)
!3365 = !DILocalVariable(name: "n", arg: 3, scope: !3361, file: !595, line: 71, type: !45)
!3366 = !DILocalVariable(name: "m", arg: 4, scope: !3361, file: !595, line: 71, type: !45)
!3367 = !DILocalVariable(name: "ret", scope: !3361, file: !595, line: 72, type: !14)
!3368 = !DILocalVariable(name: "i", scope: !3369, file: !595, line: 73, type: !45)
!3369 = distinct !DILexicalBlock(scope: !3361, file: !595, line: 73, column: 5)
!3370 = !DILocation(line: 0, scope: !3369)
!3371 = !DILocation(line: 73, column: 10, scope: !3369)
!3372 = !DILocation(line: 73, scope: !3369)
!3373 = !DILocation(line: 73, column: 23, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3369, file: !595, line: 73, column: 5)
!3375 = !DILocation(line: 73, column: 5, scope: !3369)
!3376 = !DILocation(line: 74, column: 27, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3374, file: !595, line: 73, column: 41)
!3378 = !DILocation(line: 74, column: 33, scope: !3377)
!3379 = !DILocation(line: 74, column: 21, scope: !3377)
!3380 = !DILocation(line: 74, column: 15, scope: !3377)
!3381 = !DILocation(line: 73, column: 28, scope: !3374)
!3382 = !DILocation(line: 73, column: 35, scope: !3374)
!3383 = !DILocation(line: 73, column: 5, scope: !3374)
!3384 = distinct !{!3384, !3375, !3385, !244}
!3385 = !DILocation(line: 75, column: 5, scope: !3369)
!3386 = !DILocation(line: 76, column: 5, scope: !3361)
!3387 = distinct !DISubprogram(name: "add_f", scope: !595, file: !595, line: 43, type: !1625, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3388 = !DILocalVariable(name: "a", arg: 1, scope: !3387, file: !595, line: 43, type: !14)
!3389 = !DILocation(line: 0, scope: !3387)
!3390 = !DILocalVariable(name: "b", arg: 2, scope: !3387, file: !595, line: 43, type: !14)
!3391 = !DILocation(line: 44, column: 14, scope: !3387)
!3392 = !DILocation(line: 44, column: 5, scope: !3387)
!3393 = distinct !DISubprogram(name: "shake128_inc_init", scope: !71, file: !71, line: 688, type: !3394, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{null, !3396}
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 32)
!3397 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128incctx", file: !71, line: 31, baseType: !3398)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 29, size: 32, elements: !3399)
!3399 = !{!3400}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3398, file: !71, line: 30, baseType: !5, size: 32)
!3401 = !DILocalVariable(name: "state", arg: 1, scope: !3393, file: !71, line: 688, type: !3396)
!3402 = !DILocation(line: 0, scope: !3393)
!3403 = !DILocation(line: 689, column: 18, scope: !3393)
!3404 = !DILocation(line: 689, column: 16, scope: !3393)
!3405 = !DILocation(line: 690, column: 20, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3393, file: !71, line: 690, column: 9)
!3407 = !DILocation(line: 691, column: 9, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3406, file: !71, line: 690, column: 29)
!3409 = !DILocation(line: 692, column: 5, scope: !3408)
!3410 = !DILocation(line: 693, column: 28, scope: !3393)
!3411 = !DILocation(line: 693, column: 5, scope: !3393)
!3412 = !DILocation(line: 694, column: 1, scope: !3393)
!3413 = distinct !DISubprogram(name: "keccak_inc_init", scope: !71, file: !71, line: 580, type: !26, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3414 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3413, file: !71, line: 580, type: !5)
!3415 = !DILocation(line: 0, scope: !3413)
!3416 = !DILocalVariable(name: "i", scope: !3413, file: !71, line: 581, type: !15)
!3417 = !DILocation(line: 583, column: 10, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3413, file: !71, line: 583, column: 5)
!3419 = !DILocation(line: 583, scope: !3418)
!3420 = !DILocation(line: 583, column: 19, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3418, file: !71, line: 583, column: 5)
!3422 = !DILocation(line: 583, column: 5, scope: !3418)
!3423 = !DILocation(line: 584, column: 9, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3421, file: !71, line: 583, column: 30)
!3425 = !DILocation(line: 584, column: 18, scope: !3424)
!3426 = !DILocation(line: 583, column: 25, scope: !3421)
!3427 = !DILocation(line: 583, column: 5, scope: !3421)
!3428 = distinct !{!3428, !3422, !3429, !244}
!3429 = !DILocation(line: 585, column: 5, scope: !3418)
!3430 = !DILocation(line: 586, column: 5, scope: !3413)
!3431 = !DILocation(line: 586, column: 15, scope: !3413)
!3432 = !DILocation(line: 587, column: 1, scope: !3413)
!3433 = distinct !DISubprogram(name: "shake128_inc_absorb", scope: !71, file: !71, line: 696, type: !3434, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{null, !3396, !257, !15}
!3436 = !DILocalVariable(name: "state", arg: 1, scope: !3433, file: !71, line: 696, type: !3396)
!3437 = !DILocation(line: 0, scope: !3433)
!3438 = !DILocalVariable(name: "input", arg: 2, scope: !3433, file: !71, line: 696, type: !257)
!3439 = !DILocalVariable(name: "inlen", arg: 3, scope: !3433, file: !71, line: 696, type: !15)
!3440 = !DILocation(line: 697, column: 30, scope: !3433)
!3441 = !DILocation(line: 697, column: 5, scope: !3433)
!3442 = !DILocation(line: 698, column: 1, scope: !3433)
!3443 = distinct !DISubprogram(name: "keccak_inc_absorb", scope: !71, file: !71, line: 603, type: !3444, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{null, !5, !19, !257, !15}
!3446 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3443, file: !71, line: 603, type: !5)
!3447 = !DILocation(line: 0, scope: !3443)
!3448 = !DILocalVariable(name: "r", arg: 2, scope: !3443, file: !71, line: 603, type: !19)
!3449 = !DILocalVariable(name: "m", arg: 3, scope: !3443, file: !71, line: 603, type: !257)
!3450 = !DILocalVariable(name: "mlen", arg: 4, scope: !3443, file: !71, line: 604, type: !15)
!3451 = !DILocation(line: 608, column: 5, scope: !3443)
!3452 = !DILocation(line: 608, column: 12, scope: !3443)
!3453 = !DILocation(line: 608, column: 19, scope: !3443)
!3454 = !DILocation(line: 608, column: 17, scope: !3443)
!3455 = !DILocation(line: 608, column: 32, scope: !3443)
!3456 = !DILocation(line: 608, column: 29, scope: !3443)
!3457 = !DILocation(line: 609, column: 9, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !71, line: 609, column: 9)
!3459 = distinct !DILexicalBlock(scope: !3443, file: !71, line: 608, column: 35)
!3460 = !DILocation(line: 621, column: 5, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3443, file: !71, line: 621, column: 5)
!3462 = !DILocation(line: 609, scope: !3458)
!3463 = !DILocalVariable(name: "i", scope: !3443, file: !71, line: 605, type: !15)
!3464 = !DILocation(line: 609, column: 39, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3458, file: !71, line: 609, column: 9)
!3466 = !DILocation(line: 609, column: 29, scope: !3465)
!3467 = !DILocation(line: 609, column: 27, scope: !3465)
!3468 = !DILocation(line: 609, column: 23, scope: !3465)
!3469 = !DILocation(line: 612, column: 54, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3465, file: !71, line: 609, column: 55)
!3471 = !DILocation(line: 612, column: 44, scope: !3470)
!3472 = !DILocation(line: 612, column: 69, scope: !3470)
!3473 = !DILocation(line: 612, column: 81, scope: !3470)
!3474 = !DILocation(line: 612, column: 79, scope: !3470)
!3475 = !DILocation(line: 612, column: 65, scope: !3470)
!3476 = !DILocation(line: 612, column: 59, scope: !3470)
!3477 = !DILocation(line: 612, column: 20, scope: !3470)
!3478 = !DILocation(line: 612, column: 32, scope: !3470)
!3479 = !DILocation(line: 612, column: 30, scope: !3470)
!3480 = !DILocation(line: 612, column: 35, scope: !3470)
!3481 = !DILocation(line: 612, column: 13, scope: !3470)
!3482 = !DILocation(line: 612, column: 41, scope: !3470)
!3483 = !DILocation(line: 609, column: 51, scope: !3465)
!3484 = !DILocation(line: 609, column: 9, scope: !3465)
!3485 = distinct !{!3485, !3457, !3486, !244}
!3486 = !DILocation(line: 613, column: 9, scope: !3458)
!3487 = !DILocation(line: 614, column: 30, scope: !3459)
!3488 = !DILocation(line: 614, column: 17, scope: !3459)
!3489 = !DILocation(line: 614, column: 14, scope: !3459)
!3490 = !DILocation(line: 615, column: 11, scope: !3459)
!3491 = !DILocation(line: 616, column: 9, scope: !3459)
!3492 = !DILocation(line: 616, column: 19, scope: !3459)
!3493 = !DILocation(line: 618, column: 9, scope: !3459)
!3494 = distinct !{!3494, !3451, !3495, !244}
!3495 = !DILocation(line: 619, column: 5, scope: !3443)
!3496 = !DILocation(line: 621, scope: !3461)
!3497 = !DILocation(line: 621, column: 19, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3461, file: !71, line: 621, column: 5)
!3499 = !DILocation(line: 622, column: 50, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3498, file: !71, line: 621, column: 32)
!3501 = !DILocation(line: 622, column: 40, scope: !3500)
!3502 = !DILocation(line: 622, column: 65, scope: !3500)
!3503 = !DILocation(line: 622, column: 77, scope: !3500)
!3504 = !DILocation(line: 622, column: 75, scope: !3500)
!3505 = !DILocation(line: 622, column: 61, scope: !3500)
!3506 = !DILocation(line: 622, column: 55, scope: !3500)
!3507 = !DILocation(line: 622, column: 16, scope: !3500)
!3508 = !DILocation(line: 622, column: 28, scope: !3500)
!3509 = !DILocation(line: 622, column: 26, scope: !3500)
!3510 = !DILocation(line: 622, column: 31, scope: !3500)
!3511 = !DILocation(line: 622, column: 9, scope: !3500)
!3512 = !DILocation(line: 622, column: 37, scope: !3500)
!3513 = !DILocation(line: 621, column: 28, scope: !3498)
!3514 = !DILocation(line: 621, column: 5, scope: !3498)
!3515 = distinct !{!3515, !3460, !3516, !244}
!3516 = !DILocation(line: 623, column: 5, scope: !3461)
!3517 = !DILocation(line: 624, column: 18, scope: !3443)
!3518 = !DILocation(line: 624, column: 5, scope: !3443)
!3519 = !DILocation(line: 624, column: 15, scope: !3443)
!3520 = !DILocation(line: 625, column: 1, scope: !3443)
!3521 = distinct !DISubprogram(name: "KeccakF1600_StatePermute", scope: !71, file: !71, line: 236, type: !26, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3522 = !DILocalVariable(name: "state", arg: 1, scope: !3521, file: !71, line: 236, type: !5)
!3523 = !DILocation(line: 0, scope: !3521)
!3524 = !DILocation(line: 253, column: 11, scope: !3521)
!3525 = !DILocalVariable(name: "Aba", scope: !3521, file: !71, line: 239, type: !6)
!3526 = !DILocation(line: 254, column: 11, scope: !3521)
!3527 = !DILocalVariable(name: "Abe", scope: !3521, file: !71, line: 239, type: !6)
!3528 = !DILocation(line: 255, column: 11, scope: !3521)
!3529 = !DILocalVariable(name: "Abi", scope: !3521, file: !71, line: 239, type: !6)
!3530 = !DILocation(line: 256, column: 11, scope: !3521)
!3531 = !DILocalVariable(name: "Abo", scope: !3521, file: !71, line: 239, type: !6)
!3532 = !DILocation(line: 257, column: 11, scope: !3521)
!3533 = !DILocalVariable(name: "Abu", scope: !3521, file: !71, line: 239, type: !6)
!3534 = !DILocation(line: 258, column: 11, scope: !3521)
!3535 = !DILocalVariable(name: "Aga", scope: !3521, file: !71, line: 240, type: !6)
!3536 = !DILocation(line: 259, column: 11, scope: !3521)
!3537 = !DILocalVariable(name: "Age", scope: !3521, file: !71, line: 240, type: !6)
!3538 = !DILocation(line: 260, column: 11, scope: !3521)
!3539 = !DILocalVariable(name: "Agi", scope: !3521, file: !71, line: 240, type: !6)
!3540 = !DILocation(line: 261, column: 11, scope: !3521)
!3541 = !DILocalVariable(name: "Ago", scope: !3521, file: !71, line: 240, type: !6)
!3542 = !DILocation(line: 262, column: 11, scope: !3521)
!3543 = !DILocalVariable(name: "Agu", scope: !3521, file: !71, line: 240, type: !6)
!3544 = !DILocation(line: 263, column: 11, scope: !3521)
!3545 = !DILocalVariable(name: "Aka", scope: !3521, file: !71, line: 241, type: !6)
!3546 = !DILocation(line: 264, column: 11, scope: !3521)
!3547 = !DILocalVariable(name: "Ake", scope: !3521, file: !71, line: 241, type: !6)
!3548 = !DILocation(line: 265, column: 11, scope: !3521)
!3549 = !DILocalVariable(name: "Aki", scope: !3521, file: !71, line: 241, type: !6)
!3550 = !DILocation(line: 266, column: 11, scope: !3521)
!3551 = !DILocalVariable(name: "Ako", scope: !3521, file: !71, line: 241, type: !6)
!3552 = !DILocation(line: 267, column: 11, scope: !3521)
!3553 = !DILocalVariable(name: "Aku", scope: !3521, file: !71, line: 241, type: !6)
!3554 = !DILocation(line: 268, column: 11, scope: !3521)
!3555 = !DILocalVariable(name: "Ama", scope: !3521, file: !71, line: 242, type: !6)
!3556 = !DILocation(line: 269, column: 11, scope: !3521)
!3557 = !DILocalVariable(name: "Ame", scope: !3521, file: !71, line: 242, type: !6)
!3558 = !DILocation(line: 270, column: 11, scope: !3521)
!3559 = !DILocalVariable(name: "Ami", scope: !3521, file: !71, line: 242, type: !6)
!3560 = !DILocation(line: 271, column: 11, scope: !3521)
!3561 = !DILocalVariable(name: "Amo", scope: !3521, file: !71, line: 242, type: !6)
!3562 = !DILocation(line: 272, column: 11, scope: !3521)
!3563 = !DILocalVariable(name: "Amu", scope: !3521, file: !71, line: 242, type: !6)
!3564 = !DILocation(line: 273, column: 11, scope: !3521)
!3565 = !DILocalVariable(name: "Asa", scope: !3521, file: !71, line: 243, type: !6)
!3566 = !DILocation(line: 274, column: 11, scope: !3521)
!3567 = !DILocalVariable(name: "Ase", scope: !3521, file: !71, line: 243, type: !6)
!3568 = !DILocation(line: 275, column: 11, scope: !3521)
!3569 = !DILocalVariable(name: "Asi", scope: !3521, file: !71, line: 243, type: !6)
!3570 = !DILocation(line: 276, column: 11, scope: !3521)
!3571 = !DILocalVariable(name: "Aso", scope: !3521, file: !71, line: 243, type: !6)
!3572 = !DILocation(line: 277, column: 11, scope: !3521)
!3573 = !DILocalVariable(name: "Asu", scope: !3521, file: !71, line: 243, type: !6)
!3574 = !DILocalVariable(name: "round", scope: !3521, file: !71, line: 237, type: !45)
!3575 = !DILocation(line: 279, column: 10, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3521, file: !71, line: 279, column: 5)
!3577 = !DILocation(line: 279, scope: !3576)
!3578 = !DILocation(line: 279, column: 27, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3576, file: !71, line: 279, column: 5)
!3580 = !DILocation(line: 279, column: 5, scope: !3576)
!3581 = !DILocalVariable(name: "BCa", scope: !3521, file: !71, line: 244, type: !6)
!3582 = !DILocalVariable(name: "BCe", scope: !3521, file: !71, line: 244, type: !6)
!3583 = !DILocalVariable(name: "BCi", scope: !3521, file: !71, line: 244, type: !6)
!3584 = !DILocalVariable(name: "BCo", scope: !3521, file: !71, line: 244, type: !6)
!3585 = !DILocalVariable(name: "BCu", scope: !3521, file: !71, line: 244, type: !6)
!3586 = !DILocalVariable(name: "Da", scope: !3521, file: !71, line: 245, type: !6)
!3587 = !DILocalVariable(name: "De", scope: !3521, file: !71, line: 245, type: !6)
!3588 = !DILocalVariable(name: "Di", scope: !3521, file: !71, line: 245, type: !6)
!3589 = !DILocalVariable(name: "Do", scope: !3521, file: !71, line: 245, type: !6)
!3590 = !DILocalVariable(name: "Du", scope: !3521, file: !71, line: 245, type: !6)
!3591 = !DILocalVariable(name: "Eba", scope: !3521, file: !71, line: 246, type: !6)
!3592 = !DILocalVariable(name: "Ebe", scope: !3521, file: !71, line: 246, type: !6)
!3593 = !DILocalVariable(name: "Ebi", scope: !3521, file: !71, line: 246, type: !6)
!3594 = !DILocalVariable(name: "Ebo", scope: !3521, file: !71, line: 246, type: !6)
!3595 = !DILocalVariable(name: "Ebu", scope: !3521, file: !71, line: 246, type: !6)
!3596 = !DILocalVariable(name: "Ega", scope: !3521, file: !71, line: 247, type: !6)
!3597 = !DILocalVariable(name: "Ege", scope: !3521, file: !71, line: 247, type: !6)
!3598 = !DILocalVariable(name: "Egi", scope: !3521, file: !71, line: 247, type: !6)
!3599 = !DILocalVariable(name: "Ego", scope: !3521, file: !71, line: 247, type: !6)
!3600 = !DILocalVariable(name: "Egu", scope: !3521, file: !71, line: 247, type: !6)
!3601 = !DILocalVariable(name: "Eka", scope: !3521, file: !71, line: 248, type: !6)
!3602 = !DILocalVariable(name: "Eke", scope: !3521, file: !71, line: 248, type: !6)
!3603 = !DILocalVariable(name: "Eki", scope: !3521, file: !71, line: 248, type: !6)
!3604 = !DILocalVariable(name: "Eko", scope: !3521, file: !71, line: 248, type: !6)
!3605 = !DILocalVariable(name: "Eku", scope: !3521, file: !71, line: 248, type: !6)
!3606 = !DILocalVariable(name: "Ema", scope: !3521, file: !71, line: 249, type: !6)
!3607 = !DILocalVariable(name: "Eme", scope: !3521, file: !71, line: 249, type: !6)
!3608 = !DILocalVariable(name: "Emi", scope: !3521, file: !71, line: 249, type: !6)
!3609 = !DILocalVariable(name: "Emo", scope: !3521, file: !71, line: 249, type: !6)
!3610 = !DILocalVariable(name: "Emu", scope: !3521, file: !71, line: 249, type: !6)
!3611 = !DILocalVariable(name: "Esa", scope: !3521, file: !71, line: 250, type: !6)
!3612 = !DILocalVariable(name: "Ese", scope: !3521, file: !71, line: 250, type: !6)
!3613 = !DILocalVariable(name: "Esi", scope: !3521, file: !71, line: 250, type: !6)
!3614 = !DILocalVariable(name: "Eso", scope: !3521, file: !71, line: 250, type: !6)
!3615 = !DILocalVariable(name: "Esu", scope: !3521, file: !71, line: 250, type: !6)
!3616 = !DILocation(line: 283, column: 19, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3579, file: !71, line: 279, column: 50)
!3618 = !DILocation(line: 283, column: 25, scope: !3617)
!3619 = !DILocation(line: 283, column: 31, scope: !3617)
!3620 = !DILocation(line: 283, column: 37, scope: !3617)
!3621 = !DILocation(line: 285, column: 19, scope: !3617)
!3622 = !DILocation(line: 285, column: 25, scope: !3617)
!3623 = !DILocation(line: 285, column: 31, scope: !3617)
!3624 = !DILocation(line: 285, column: 37, scope: !3617)
!3625 = !DILocation(line: 291, column: 20, scope: !3617)
!3626 = !DILocation(line: 291, column: 18, scope: !3617)
!3627 = !DILocation(line: 361, column: 13, scope: !3617)
!3628 = !DILocation(line: 362, column: 15, scope: !3617)
!3629 = !DILocation(line: 282, column: 19, scope: !3617)
!3630 = !DILocation(line: 282, column: 25, scope: !3617)
!3631 = !DILocation(line: 282, column: 31, scope: !3617)
!3632 = !DILocation(line: 282, column: 37, scope: !3617)
!3633 = !DILocation(line: 288, column: 20, scope: !3617)
!3634 = !DILocation(line: 288, column: 18, scope: !3617)
!3635 = !DILocation(line: 365, column: 13, scope: !3617)
!3636 = !DILocation(line: 366, column: 15, scope: !3617)
!3637 = !DILocation(line: 284, column: 19, scope: !3617)
!3638 = !DILocation(line: 284, column: 25, scope: !3617)
!3639 = !DILocation(line: 284, column: 31, scope: !3617)
!3640 = !DILocation(line: 284, column: 37, scope: !3617)
!3641 = !DILocation(line: 281, column: 19, scope: !3617)
!3642 = !DILocation(line: 281, column: 25, scope: !3617)
!3643 = !DILocation(line: 281, column: 31, scope: !3617)
!3644 = !DILocation(line: 281, column: 37, scope: !3617)
!3645 = !DILocation(line: 292, column: 20, scope: !3617)
!3646 = !DILocation(line: 292, column: 18, scope: !3617)
!3647 = !DILocation(line: 363, column: 13, scope: !3617)
!3648 = !DILocation(line: 364, column: 15, scope: !3617)
!3649 = !DILocation(line: 370, column: 23, scope: !3617)
!3650 = !DILocation(line: 370, column: 29, scope: !3617)
!3651 = !DILocation(line: 370, column: 19, scope: !3617)
!3652 = !DILocation(line: 290, column: 20, scope: !3617)
!3653 = !DILocation(line: 290, column: 18, scope: !3617)
!3654 = !DILocation(line: 298, column: 13, scope: !3617)
!3655 = !DILocation(line: 299, column: 15, scope: !3617)
!3656 = !DILocation(line: 289, column: 20, scope: !3617)
!3657 = !DILocation(line: 289, column: 18, scope: !3617)
!3658 = !DILocation(line: 296, column: 13, scope: !3617)
!3659 = !DILocation(line: 297, column: 15, scope: !3617)
!3660 = !DILocation(line: 304, column: 23, scope: !3617)
!3661 = !DILocation(line: 304, column: 29, scope: !3617)
!3662 = !DILocation(line: 305, column: 16, scope: !3617)
!3663 = !DILocation(line: 305, column: 13, scope: !3617)
!3664 = !DILocation(line: 294, column: 13, scope: !3617)
!3665 = !DILocation(line: 311, column: 13, scope: !3617)
!3666 = !DILocation(line: 312, column: 15, scope: !3617)
!3667 = !DILocation(line: 315, column: 13, scope: !3617)
!3668 = !DILocation(line: 316, column: 15, scope: !3617)
!3669 = !DILocation(line: 313, column: 13, scope: !3617)
!3670 = !DILocation(line: 314, column: 15, scope: !3617)
!3671 = !DILocation(line: 321, column: 23, scope: !3617)
!3672 = !DILocation(line: 321, column: 29, scope: !3617)
!3673 = !DILocation(line: 321, column: 19, scope: !3617)
!3674 = !DILocation(line: 376, column: 19, scope: !3617)
!3675 = !DILocation(line: 327, column: 13, scope: !3617)
!3676 = !DILocation(line: 328, column: 15, scope: !3617)
!3677 = !DILocation(line: 331, column: 13, scope: !3617)
!3678 = !DILocation(line: 332, column: 15, scope: !3617)
!3679 = !DILocation(line: 329, column: 13, scope: !3617)
!3680 = !DILocation(line: 330, column: 15, scope: !3617)
!3681 = !DILocation(line: 337, column: 23, scope: !3617)
!3682 = !DILocation(line: 337, column: 29, scope: !3617)
!3683 = !DILocation(line: 337, column: 19, scope: !3617)
!3684 = !DILocation(line: 376, column: 25, scope: !3617)
!3685 = !DILocation(line: 343, column: 13, scope: !3617)
!3686 = !DILocation(line: 344, column: 15, scope: !3617)
!3687 = !DILocation(line: 347, column: 13, scope: !3617)
!3688 = !DILocation(line: 348, column: 15, scope: !3617)
!3689 = !DILocation(line: 345, column: 13, scope: !3617)
!3690 = !DILocation(line: 346, column: 15, scope: !3617)
!3691 = !DILocation(line: 353, column: 23, scope: !3617)
!3692 = !DILocation(line: 353, column: 29, scope: !3617)
!3693 = !DILocation(line: 353, column: 19, scope: !3617)
!3694 = !DILocation(line: 376, column: 31, scope: !3617)
!3695 = !DILocation(line: 359, column: 13, scope: !3617)
!3696 = !DILocation(line: 360, column: 15, scope: !3617)
!3697 = !DILocation(line: 369, column: 23, scope: !3617)
!3698 = !DILocation(line: 369, column: 29, scope: !3617)
!3699 = !DILocation(line: 369, column: 19, scope: !3617)
!3700 = !DILocation(line: 376, column: 37, scope: !3617)
!3701 = !DILocation(line: 302, column: 13, scope: !3617)
!3702 = !DILocation(line: 303, column: 15, scope: !3617)
!3703 = !DILocation(line: 300, column: 13, scope: !3617)
!3704 = !DILocation(line: 301, column: 15, scope: !3617)
!3705 = !DILocation(line: 307, column: 23, scope: !3617)
!3706 = !DILocation(line: 307, column: 29, scope: !3617)
!3707 = !DILocation(line: 307, column: 19, scope: !3617)
!3708 = !DILocation(line: 319, column: 13, scope: !3617)
!3709 = !DILocation(line: 320, column: 15, scope: !3617)
!3710 = !DILocation(line: 317, column: 13, scope: !3617)
!3711 = !DILocation(line: 318, column: 15, scope: !3617)
!3712 = !DILocation(line: 323, column: 23, scope: !3617)
!3713 = !DILocation(line: 323, column: 29, scope: !3617)
!3714 = !DILocation(line: 323, column: 19, scope: !3617)
!3715 = !DILocation(line: 378, column: 19, scope: !3617)
!3716 = !DILocation(line: 335, column: 13, scope: !3617)
!3717 = !DILocation(line: 336, column: 15, scope: !3617)
!3718 = !DILocation(line: 333, column: 13, scope: !3617)
!3719 = !DILocation(line: 334, column: 15, scope: !3617)
!3720 = !DILocation(line: 339, column: 23, scope: !3617)
!3721 = !DILocation(line: 339, column: 29, scope: !3617)
!3722 = !DILocation(line: 339, column: 19, scope: !3617)
!3723 = !DILocation(line: 378, column: 25, scope: !3617)
!3724 = !DILocation(line: 351, column: 13, scope: !3617)
!3725 = !DILocation(line: 352, column: 15, scope: !3617)
!3726 = !DILocation(line: 349, column: 13, scope: !3617)
!3727 = !DILocation(line: 350, column: 15, scope: !3617)
!3728 = !DILocation(line: 355, column: 23, scope: !3617)
!3729 = !DILocation(line: 355, column: 29, scope: !3617)
!3730 = !DILocation(line: 355, column: 19, scope: !3617)
!3731 = !DILocation(line: 378, column: 31, scope: !3617)
!3732 = !DILocation(line: 367, column: 13, scope: !3617)
!3733 = !DILocation(line: 368, column: 15, scope: !3617)
!3734 = !DILocation(line: 371, column: 23, scope: !3617)
!3735 = !DILocation(line: 371, column: 29, scope: !3617)
!3736 = !DILocation(line: 371, column: 19, scope: !3617)
!3737 = !DILocation(line: 378, column: 37, scope: !3617)
!3738 = !DILocation(line: 384, column: 20, scope: !3617)
!3739 = !DILocation(line: 384, column: 18, scope: !3617)
!3740 = !DILocation(line: 462, column: 13, scope: !3617)
!3741 = !DILocation(line: 463, column: 15, scope: !3617)
!3742 = !DILocation(line: 324, column: 23, scope: !3617)
!3743 = !DILocation(line: 324, column: 29, scope: !3617)
!3744 = !DILocation(line: 324, column: 19, scope: !3617)
!3745 = !DILocation(line: 309, column: 23, scope: !3617)
!3746 = !DILocation(line: 309, column: 29, scope: !3617)
!3747 = !DILocation(line: 309, column: 19, scope: !3617)
!3748 = !DILocation(line: 325, column: 23, scope: !3617)
!3749 = !DILocation(line: 325, column: 29, scope: !3617)
!3750 = !DILocation(line: 325, column: 19, scope: !3617)
!3751 = !DILocation(line: 380, column: 19, scope: !3617)
!3752 = !DILocation(line: 341, column: 23, scope: !3617)
!3753 = !DILocation(line: 341, column: 29, scope: !3617)
!3754 = !DILocation(line: 341, column: 19, scope: !3617)
!3755 = !DILocation(line: 380, column: 25, scope: !3617)
!3756 = !DILocation(line: 357, column: 23, scope: !3617)
!3757 = !DILocation(line: 357, column: 29, scope: !3617)
!3758 = !DILocation(line: 357, column: 19, scope: !3617)
!3759 = !DILocation(line: 380, column: 31, scope: !3617)
!3760 = !DILocation(line: 373, column: 23, scope: !3617)
!3761 = !DILocation(line: 373, column: 29, scope: !3617)
!3762 = !DILocation(line: 373, column: 19, scope: !3617)
!3763 = !DILocation(line: 380, column: 37, scope: !3617)
!3764 = !DILocation(line: 386, column: 20, scope: !3617)
!3765 = !DILocation(line: 386, column: 18, scope: !3617)
!3766 = !DILocation(line: 456, column: 13, scope: !3617)
!3767 = !DILocation(line: 457, column: 15, scope: !3617)
!3768 = !DILocation(line: 306, column: 23, scope: !3617)
!3769 = !DILocation(line: 306, column: 29, scope: !3617)
!3770 = !DILocation(line: 306, column: 19, scope: !3617)
!3771 = !DILocation(line: 322, column: 23, scope: !3617)
!3772 = !DILocation(line: 322, column: 29, scope: !3617)
!3773 = !DILocation(line: 322, column: 19, scope: !3617)
!3774 = !DILocation(line: 377, column: 19, scope: !3617)
!3775 = !DILocation(line: 338, column: 23, scope: !3617)
!3776 = !DILocation(line: 338, column: 29, scope: !3617)
!3777 = !DILocation(line: 338, column: 19, scope: !3617)
!3778 = !DILocation(line: 377, column: 25, scope: !3617)
!3779 = !DILocation(line: 354, column: 23, scope: !3617)
!3780 = !DILocation(line: 354, column: 29, scope: !3617)
!3781 = !DILocation(line: 354, column: 19, scope: !3617)
!3782 = !DILocation(line: 377, column: 31, scope: !3617)
!3783 = !DILocation(line: 377, column: 37, scope: !3617)
!3784 = !DILocation(line: 308, column: 23, scope: !3617)
!3785 = !DILocation(line: 308, column: 29, scope: !3617)
!3786 = !DILocation(line: 308, column: 19, scope: !3617)
!3787 = !DILocation(line: 379, column: 19, scope: !3617)
!3788 = !DILocation(line: 340, column: 23, scope: !3617)
!3789 = !DILocation(line: 340, column: 29, scope: !3617)
!3790 = !DILocation(line: 340, column: 19, scope: !3617)
!3791 = !DILocation(line: 379, column: 25, scope: !3617)
!3792 = !DILocation(line: 356, column: 23, scope: !3617)
!3793 = !DILocation(line: 356, column: 29, scope: !3617)
!3794 = !DILocation(line: 356, column: 19, scope: !3617)
!3795 = !DILocation(line: 379, column: 31, scope: !3617)
!3796 = !DILocation(line: 372, column: 23, scope: !3617)
!3797 = !DILocation(line: 372, column: 29, scope: !3617)
!3798 = !DILocation(line: 372, column: 19, scope: !3617)
!3799 = !DILocation(line: 379, column: 37, scope: !3617)
!3800 = !DILocation(line: 385, column: 20, scope: !3617)
!3801 = !DILocation(line: 385, column: 18, scope: !3617)
!3802 = !DILocation(line: 454, column: 13, scope: !3617)
!3803 = !DILocation(line: 455, column: 15, scope: !3617)
!3804 = !DILocation(line: 468, column: 23, scope: !3617)
!3805 = !DILocation(line: 468, column: 29, scope: !3617)
!3806 = !DILocation(line: 468, column: 19, scope: !3617)
!3807 = !DILocation(line: 383, column: 20, scope: !3617)
!3808 = !DILocation(line: 383, column: 18, scope: !3617)
!3809 = !DILocation(line: 460, column: 13, scope: !3617)
!3810 = !DILocation(line: 461, column: 15, scope: !3617)
!3811 = !DILocation(line: 467, column: 23, scope: !3617)
!3812 = !DILocation(line: 467, column: 29, scope: !3617)
!3813 = !DILocation(line: 467, column: 19, scope: !3617)
!3814 = !DILocation(line: 387, column: 20, scope: !3617)
!3815 = !DILocation(line: 387, column: 18, scope: !3617)
!3816 = !DILocation(line: 458, column: 13, scope: !3617)
!3817 = !DILocation(line: 459, column: 15, scope: !3617)
!3818 = !DILocation(line: 466, column: 23, scope: !3617)
!3819 = !DILocation(line: 466, column: 29, scope: !3617)
!3820 = !DILocation(line: 466, column: 19, scope: !3617)
!3821 = !DILocation(line: 465, column: 23, scope: !3617)
!3822 = !DILocation(line: 465, column: 29, scope: !3617)
!3823 = !DILocation(line: 465, column: 19, scope: !3617)
!3824 = !DILocation(line: 464, column: 23, scope: !3617)
!3825 = !DILocation(line: 464, column: 29, scope: !3617)
!3826 = !DILocation(line: 464, column: 19, scope: !3617)
!3827 = !DILocation(line: 446, column: 13, scope: !3617)
!3828 = !DILocation(line: 447, column: 15, scope: !3617)
!3829 = !DILocation(line: 440, column: 13, scope: !3617)
!3830 = !DILocation(line: 441, column: 15, scope: !3617)
!3831 = !DILocation(line: 438, column: 13, scope: !3617)
!3832 = !DILocation(line: 439, column: 15, scope: !3617)
!3833 = !DILocation(line: 452, column: 23, scope: !3617)
!3834 = !DILocation(line: 452, column: 29, scope: !3617)
!3835 = !DILocation(line: 452, column: 19, scope: !3617)
!3836 = !DILocation(line: 444, column: 13, scope: !3617)
!3837 = !DILocation(line: 445, column: 15, scope: !3617)
!3838 = !DILocation(line: 451, column: 23, scope: !3617)
!3839 = !DILocation(line: 451, column: 29, scope: !3617)
!3840 = !DILocation(line: 451, column: 19, scope: !3617)
!3841 = !DILocation(line: 442, column: 13, scope: !3617)
!3842 = !DILocation(line: 443, column: 15, scope: !3617)
!3843 = !DILocation(line: 450, column: 23, scope: !3617)
!3844 = !DILocation(line: 450, column: 29, scope: !3617)
!3845 = !DILocation(line: 450, column: 19, scope: !3617)
!3846 = !DILocation(line: 449, column: 23, scope: !3617)
!3847 = !DILocation(line: 449, column: 29, scope: !3617)
!3848 = !DILocation(line: 449, column: 19, scope: !3617)
!3849 = !DILocation(line: 448, column: 23, scope: !3617)
!3850 = !DILocation(line: 448, column: 29, scope: !3617)
!3851 = !DILocation(line: 448, column: 19, scope: !3617)
!3852 = !DILocation(line: 430, column: 13, scope: !3617)
!3853 = !DILocation(line: 431, column: 15, scope: !3617)
!3854 = !DILocation(line: 424, column: 13, scope: !3617)
!3855 = !DILocation(line: 425, column: 15, scope: !3617)
!3856 = !DILocation(line: 422, column: 13, scope: !3617)
!3857 = !DILocation(line: 423, column: 15, scope: !3617)
!3858 = !DILocation(line: 436, column: 23, scope: !3617)
!3859 = !DILocation(line: 436, column: 29, scope: !3617)
!3860 = !DILocation(line: 436, column: 19, scope: !3617)
!3861 = !DILocation(line: 428, column: 13, scope: !3617)
!3862 = !DILocation(line: 429, column: 15, scope: !3617)
!3863 = !DILocation(line: 435, column: 23, scope: !3617)
!3864 = !DILocation(line: 435, column: 29, scope: !3617)
!3865 = !DILocation(line: 435, column: 19, scope: !3617)
!3866 = !DILocation(line: 426, column: 13, scope: !3617)
!3867 = !DILocation(line: 427, column: 15, scope: !3617)
!3868 = !DILocation(line: 434, column: 23, scope: !3617)
!3869 = !DILocation(line: 434, column: 29, scope: !3617)
!3870 = !DILocation(line: 434, column: 19, scope: !3617)
!3871 = !DILocation(line: 433, column: 23, scope: !3617)
!3872 = !DILocation(line: 433, column: 29, scope: !3617)
!3873 = !DILocation(line: 433, column: 19, scope: !3617)
!3874 = !DILocation(line: 432, column: 23, scope: !3617)
!3875 = !DILocation(line: 432, column: 29, scope: !3617)
!3876 = !DILocation(line: 432, column: 19, scope: !3617)
!3877 = !DILocation(line: 414, column: 13, scope: !3617)
!3878 = !DILocation(line: 415, column: 15, scope: !3617)
!3879 = !DILocation(line: 408, column: 13, scope: !3617)
!3880 = !DILocation(line: 409, column: 15, scope: !3617)
!3881 = !DILocation(line: 406, column: 13, scope: !3617)
!3882 = !DILocation(line: 407, column: 15, scope: !3617)
!3883 = !DILocation(line: 420, column: 23, scope: !3617)
!3884 = !DILocation(line: 420, column: 29, scope: !3617)
!3885 = !DILocation(line: 420, column: 19, scope: !3617)
!3886 = !DILocation(line: 412, column: 13, scope: !3617)
!3887 = !DILocation(line: 413, column: 15, scope: !3617)
!3888 = !DILocation(line: 419, column: 23, scope: !3617)
!3889 = !DILocation(line: 419, column: 29, scope: !3617)
!3890 = !DILocation(line: 419, column: 19, scope: !3617)
!3891 = !DILocation(line: 410, column: 13, scope: !3617)
!3892 = !DILocation(line: 411, column: 15, scope: !3617)
!3893 = !DILocation(line: 418, column: 23, scope: !3617)
!3894 = !DILocation(line: 418, column: 29, scope: !3617)
!3895 = !DILocation(line: 418, column: 19, scope: !3617)
!3896 = !DILocation(line: 417, column: 23, scope: !3617)
!3897 = !DILocation(line: 417, column: 29, scope: !3617)
!3898 = !DILocation(line: 417, column: 19, scope: !3617)
!3899 = !DILocation(line: 416, column: 23, scope: !3617)
!3900 = !DILocation(line: 416, column: 29, scope: !3617)
!3901 = !DILocation(line: 416, column: 19, scope: !3617)
!3902 = !DILocation(line: 397, column: 13, scope: !3617)
!3903 = !DILocation(line: 398, column: 15, scope: !3617)
!3904 = !DILocation(line: 391, column: 13, scope: !3617)
!3905 = !DILocation(line: 392, column: 15, scope: !3617)
!3906 = !DILocation(line: 389, column: 13, scope: !3617)
!3907 = !DILocation(line: 404, column: 23, scope: !3617)
!3908 = !DILocation(line: 404, column: 29, scope: !3617)
!3909 = !DILocation(line: 404, column: 19, scope: !3617)
!3910 = !DILocation(line: 395, column: 13, scope: !3617)
!3911 = !DILocation(line: 396, column: 15, scope: !3617)
!3912 = !DILocation(line: 403, column: 23, scope: !3617)
!3913 = !DILocation(line: 403, column: 29, scope: !3617)
!3914 = !DILocation(line: 403, column: 19, scope: !3617)
!3915 = !DILocation(line: 393, column: 13, scope: !3617)
!3916 = !DILocation(line: 394, column: 15, scope: !3617)
!3917 = !DILocation(line: 402, column: 23, scope: !3617)
!3918 = !DILocation(line: 402, column: 29, scope: !3617)
!3919 = !DILocation(line: 402, column: 19, scope: !3617)
!3920 = !DILocation(line: 401, column: 23, scope: !3617)
!3921 = !DILocation(line: 401, column: 29, scope: !3617)
!3922 = !DILocation(line: 401, column: 19, scope: !3617)
!3923 = !DILocation(line: 400, column: 45, scope: !3617)
!3924 = !DILocation(line: 400, column: 16, scope: !3617)
!3925 = !DILocation(line: 399, column: 23, scope: !3617)
!3926 = !DILocation(line: 399, column: 29, scope: !3617)
!3927 = !DILocation(line: 400, column: 13, scope: !3617)
!3928 = !DILocation(line: 279, column: 44, scope: !3579)
!3929 = !DILocation(line: 279, column: 5, scope: !3579)
!3930 = distinct !{!3930, !3580, !3931, !244}
!3931 = !DILocation(line: 469, column: 5, scope: !3576)
!3932 = !DILocation(line: 472, column: 14, scope: !3521)
!3933 = !DILocation(line: 473, column: 5, scope: !3521)
!3934 = !DILocation(line: 473, column: 14, scope: !3521)
!3935 = !DILocation(line: 474, column: 5, scope: !3521)
!3936 = !DILocation(line: 474, column: 14, scope: !3521)
!3937 = !DILocation(line: 475, column: 5, scope: !3521)
!3938 = !DILocation(line: 475, column: 14, scope: !3521)
!3939 = !DILocation(line: 476, column: 5, scope: !3521)
!3940 = !DILocation(line: 476, column: 14, scope: !3521)
!3941 = !DILocation(line: 477, column: 5, scope: !3521)
!3942 = !DILocation(line: 477, column: 14, scope: !3521)
!3943 = !DILocation(line: 478, column: 5, scope: !3521)
!3944 = !DILocation(line: 478, column: 14, scope: !3521)
!3945 = !DILocation(line: 479, column: 5, scope: !3521)
!3946 = !DILocation(line: 479, column: 14, scope: !3521)
!3947 = !DILocation(line: 480, column: 5, scope: !3521)
!3948 = !DILocation(line: 480, column: 14, scope: !3521)
!3949 = !DILocation(line: 481, column: 5, scope: !3521)
!3950 = !DILocation(line: 481, column: 14, scope: !3521)
!3951 = !DILocation(line: 482, column: 5, scope: !3521)
!3952 = !DILocation(line: 482, column: 15, scope: !3521)
!3953 = !DILocation(line: 483, column: 5, scope: !3521)
!3954 = !DILocation(line: 483, column: 15, scope: !3521)
!3955 = !DILocation(line: 484, column: 5, scope: !3521)
!3956 = !DILocation(line: 484, column: 15, scope: !3521)
!3957 = !DILocation(line: 485, column: 5, scope: !3521)
!3958 = !DILocation(line: 485, column: 15, scope: !3521)
!3959 = !DILocation(line: 486, column: 5, scope: !3521)
!3960 = !DILocation(line: 486, column: 15, scope: !3521)
!3961 = !DILocation(line: 487, column: 5, scope: !3521)
!3962 = !DILocation(line: 487, column: 15, scope: !3521)
!3963 = !DILocation(line: 488, column: 5, scope: !3521)
!3964 = !DILocation(line: 488, column: 15, scope: !3521)
!3965 = !DILocation(line: 489, column: 5, scope: !3521)
!3966 = !DILocation(line: 489, column: 15, scope: !3521)
!3967 = !DILocation(line: 490, column: 5, scope: !3521)
!3968 = !DILocation(line: 490, column: 15, scope: !3521)
!3969 = !DILocation(line: 491, column: 5, scope: !3521)
!3970 = !DILocation(line: 491, column: 15, scope: !3521)
!3971 = !DILocation(line: 492, column: 5, scope: !3521)
!3972 = !DILocation(line: 492, column: 15, scope: !3521)
!3973 = !DILocation(line: 493, column: 5, scope: !3521)
!3974 = !DILocation(line: 493, column: 15, scope: !3521)
!3975 = !DILocation(line: 494, column: 5, scope: !3521)
!3976 = !DILocation(line: 494, column: 15, scope: !3521)
!3977 = !DILocation(line: 495, column: 5, scope: !3521)
!3978 = !DILocation(line: 495, column: 15, scope: !3521)
!3979 = !DILocation(line: 496, column: 5, scope: !3521)
!3980 = !DILocation(line: 496, column: 15, scope: !3521)
!3981 = !DILocation(line: 497, column: 1, scope: !3521)
!3982 = distinct !DISubprogram(name: "shake128_inc_finalize", scope: !71, file: !71, line: 700, type: !3394, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3983 = !DILocalVariable(name: "state", arg: 1, scope: !3982, file: !71, line: 700, type: !3396)
!3984 = !DILocation(line: 0, scope: !3982)
!3985 = !DILocation(line: 701, column: 32, scope: !3982)
!3986 = !DILocation(line: 701, column: 5, scope: !3982)
!3987 = !DILocation(line: 702, column: 1, scope: !3982)
!3988 = distinct !DISubprogram(name: "keccak_inc_finalize", scope: !71, file: !71, line: 640, type: !3989, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{null, !5, !19, !12}
!3991 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3988, file: !71, line: 640, type: !5)
!3992 = !DILocation(line: 0, scope: !3988)
!3993 = !DILocalVariable(name: "r", arg: 2, scope: !3988, file: !71, line: 640, type: !19)
!3994 = !DILocalVariable(name: "p", arg: 3, scope: !3988, file: !71, line: 640, type: !12)
!3995 = !DILocation(line: 643, column: 30, scope: !3988)
!3996 = !DILocation(line: 643, column: 51, scope: !3988)
!3997 = !DILocation(line: 643, column: 48, scope: !3988)
!3998 = !DILocation(line: 643, column: 42, scope: !3988)
!3999 = !DILocation(line: 643, column: 21, scope: !3988)
!4000 = !DILocation(line: 643, column: 5, scope: !3988)
!4001 = !DILocation(line: 643, column: 27, scope: !3988)
!4002 = !DILocation(line: 644, column: 48, scope: !3988)
!4003 = !DILocation(line: 644, column: 42, scope: !3988)
!4004 = !DILocation(line: 644, column: 14, scope: !3988)
!4005 = !DILocation(line: 644, column: 19, scope: !3988)
!4006 = !DILocation(line: 644, column: 5, scope: !3988)
!4007 = !DILocation(line: 644, column: 25, scope: !3988)
!4008 = !DILocation(line: 645, column: 5, scope: !3988)
!4009 = !DILocation(line: 645, column: 15, scope: !3988)
!4010 = !DILocation(line: 646, column: 1, scope: !3988)
!4011 = distinct !DISubprogram(name: "shake128_inc_squeeze", scope: !71, file: !71, line: 704, type: !4012, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{null, !11, !15, !3396}
!4014 = !DILocalVariable(name: "output", arg: 1, scope: !4011, file: !71, line: 704, type: !11)
!4015 = !DILocation(line: 0, scope: !4011)
!4016 = !DILocalVariable(name: "outlen", arg: 2, scope: !4011, file: !71, line: 704, type: !15)
!4017 = !DILocalVariable(name: "state", arg: 3, scope: !4011, file: !71, line: 704, type: !3396)
!4018 = !DILocation(line: 705, column: 47, scope: !4011)
!4019 = !DILocation(line: 705, column: 5, scope: !4011)
!4020 = !DILocation(line: 706, column: 1, scope: !4011)
!4021 = distinct !DISubprogram(name: "keccak_inc_squeeze", scope: !71, file: !71, line: 661, type: !4022, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{null, !11, !15, !5, !19}
!4024 = !DILocalVariable(name: "h", arg: 1, scope: !4021, file: !71, line: 661, type: !11)
!4025 = !DILocation(line: 0, scope: !4021)
!4026 = !DILocalVariable(name: "outlen", arg: 2, scope: !4021, file: !71, line: 661, type: !15)
!4027 = !DILocalVariable(name: "s_inc", arg: 3, scope: !4021, file: !71, line: 662, type: !5)
!4028 = !DILocalVariable(name: "r", arg: 4, scope: !4021, file: !71, line: 662, type: !19)
!4029 = !DILocalVariable(name: "i", scope: !4021, file: !71, line: 663, type: !15)
!4030 = !DILocation(line: 666, column: 10, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4021, file: !71, line: 666, column: 5)
!4032 = !DILocation(line: 666, scope: !4031)
!4033 = !DILocation(line: 666, column: 19, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4031, file: !71, line: 666, column: 5)
!4035 = !DILocation(line: 666, column: 28, scope: !4034)
!4036 = !DILocation(line: 666, column: 31, scope: !4034)
!4037 = !DILocation(line: 666, column: 35, scope: !4034)
!4038 = !DILocation(line: 666, column: 33, scope: !4034)
!4039 = !DILocation(line: 666, column: 5, scope: !4031)
!4040 = !DILocation(line: 669, column: 33, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4034, file: !71, line: 666, column: 51)
!4042 = !DILocation(line: 669, column: 37, scope: !4041)
!4043 = !DILocation(line: 669, column: 35, scope: !4041)
!4044 = !DILocation(line: 669, column: 49, scope: !4041)
!4045 = !DILocation(line: 669, column: 47, scope: !4041)
!4046 = !DILocation(line: 669, column: 52, scope: !4041)
!4047 = !DILocation(line: 669, column: 26, scope: !4041)
!4048 = !DILocation(line: 669, column: 68, scope: !4041)
!4049 = !DILocation(line: 669, column: 72, scope: !4041)
!4050 = !DILocation(line: 669, column: 70, scope: !4041)
!4051 = !DILocation(line: 669, column: 84, scope: !4041)
!4052 = !DILocation(line: 669, column: 82, scope: !4041)
!4053 = !DILocation(line: 669, column: 64, scope: !4041)
!4054 = !DILocation(line: 669, column: 58, scope: !4041)
!4055 = !DILocation(line: 669, column: 16, scope: !4041)
!4056 = !DILocation(line: 669, column: 9, scope: !4041)
!4057 = !DILocation(line: 669, column: 14, scope: !4041)
!4058 = !DILocation(line: 666, column: 47, scope: !4034)
!4059 = !DILocation(line: 666, column: 5, scope: !4034)
!4060 = distinct !{!4060, !4039, !4061, !244}
!4061 = !DILocation(line: 670, column: 5, scope: !4031)
!4062 = !DILocation(line: 671, column: 7, scope: !4021)
!4063 = !DILocation(line: 672, column: 12, scope: !4021)
!4064 = !DILocation(line: 673, column: 18, scope: !4021)
!4065 = !DILocation(line: 673, column: 5, scope: !4021)
!4066 = !DILocation(line: 673, column: 15, scope: !4021)
!4067 = !DILocation(line: 676, column: 5, scope: !4021)
!4068 = !DILocation(line: 676, column: 19, scope: !4021)
!4069 = !DILocation(line: 677, column: 9, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4021, file: !71, line: 676, column: 24)
!4071 = !DILocation(line: 679, column: 14, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4070, file: !71, line: 679, column: 9)
!4073 = !DILocation(line: 679, scope: !4072)
!4074 = !DILocation(line: 679, column: 32, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4072, file: !71, line: 679, column: 9)
!4076 = !DILocation(line: 679, column: 9, scope: !4072)
!4077 = !DILocation(line: 680, column: 38, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4075, file: !71, line: 679, column: 47)
!4079 = !DILocation(line: 680, column: 30, scope: !4078)
!4080 = !DILocation(line: 680, column: 50, scope: !4078)
!4081 = !DILocation(line: 680, column: 44, scope: !4078)
!4082 = !DILocation(line: 680, column: 20, scope: !4078)
!4083 = !DILocation(line: 680, column: 13, scope: !4078)
!4084 = !DILocation(line: 680, column: 18, scope: !4078)
!4085 = !DILocation(line: 679, column: 43, scope: !4075)
!4086 = !DILocation(line: 679, column: 9, scope: !4075)
!4087 = distinct !{!4087, !4076, !4088, !244}
!4088 = !DILocation(line: 681, column: 9, scope: !4072)
!4089 = !DILocation(line: 682, column: 11, scope: !4070)
!4090 = !DILocation(line: 683, column: 16, scope: !4070)
!4091 = !DILocation(line: 684, column: 23, scope: !4070)
!4092 = !DILocation(line: 684, column: 21, scope: !4070)
!4093 = !DILocation(line: 684, column: 9, scope: !4070)
!4094 = !DILocation(line: 684, column: 19, scope: !4070)
!4095 = distinct !{!4095, !4067, !4096, !244}
!4096 = !DILocation(line: 685, column: 5, scope: !4021)
!4097 = !DILocation(line: 686, column: 1, scope: !4021)
!4098 = distinct !DISubprogram(name: "shake128_inc_ctx_clone", scope: !71, file: !71, line: 708, type: !4099, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{null, !3396, !4101}
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 32)
!4102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3397)
!4103 = !DILocalVariable(name: "dest", arg: 1, scope: !4098, file: !71, line: 708, type: !3396)
!4104 = !DILocation(line: 0, scope: !4098)
!4105 = !DILocalVariable(name: "src", arg: 2, scope: !4098, file: !71, line: 708, type: !4101)
!4106 = !DILocation(line: 709, column: 17, scope: !4098)
!4107 = !DILocation(line: 709, column: 15, scope: !4098)
!4108 = !DILocation(line: 710, column: 19, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4098, file: !71, line: 710, column: 9)
!4110 = !DILocation(line: 711, column: 9, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4109, file: !71, line: 710, column: 28)
!4112 = !DILocation(line: 712, column: 5, scope: !4111)
!4113 = !DILocation(line: 713, column: 18, scope: !4098)
!4114 = !DILocation(line: 713, column: 28, scope: !4098)
!4115 = !DILocation(line: 713, column: 5, scope: !4098)
!4116 = !DILocation(line: 714, column: 1, scope: !4098)
!4117 = distinct !DISubprogram(name: "shake128_inc_ctx_release", scope: !71, file: !71, line: 716, type: !3394, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4118 = !DILocalVariable(name: "state", arg: 1, scope: !4117, file: !71, line: 716, type: !3396)
!4119 = !DILocation(line: 0, scope: !4117)
!4120 = !DILocation(line: 717, column: 17, scope: !4117)
!4121 = !DILocation(line: 717, column: 5, scope: !4117)
!4122 = !DILocation(line: 718, column: 1, scope: !4117)
!4123 = distinct !DISubprogram(name: "shake256_inc_init", scope: !71, file: !71, line: 720, type: !4124, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{null, !4126}
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 32)
!4127 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256incctx", file: !71, line: 41, baseType: !4128)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 39, size: 32, elements: !4129)
!4129 = !{!4130}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4128, file: !71, line: 40, baseType: !5, size: 32)
!4131 = !DILocalVariable(name: "state", arg: 1, scope: !4123, file: !71, line: 720, type: !4126)
!4132 = !DILocation(line: 0, scope: !4123)
!4133 = !DILocation(line: 721, column: 18, scope: !4123)
!4134 = !DILocation(line: 721, column: 16, scope: !4123)
!4135 = !DILocation(line: 722, column: 20, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4123, file: !71, line: 722, column: 9)
!4137 = !DILocation(line: 723, column: 9, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4136, file: !71, line: 722, column: 29)
!4139 = !DILocation(line: 724, column: 5, scope: !4138)
!4140 = !DILocation(line: 725, column: 28, scope: !4123)
!4141 = !DILocation(line: 725, column: 5, scope: !4123)
!4142 = !DILocation(line: 726, column: 1, scope: !4123)
!4143 = distinct !DISubprogram(name: "shake256_inc_absorb", scope: !71, file: !71, line: 728, type: !4144, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{null, !4126, !257, !15}
!4146 = !DILocalVariable(name: "state", arg: 1, scope: !4143, file: !71, line: 728, type: !4126)
!4147 = !DILocation(line: 0, scope: !4143)
!4148 = !DILocalVariable(name: "input", arg: 2, scope: !4143, file: !71, line: 728, type: !257)
!4149 = !DILocalVariable(name: "inlen", arg: 3, scope: !4143, file: !71, line: 728, type: !15)
!4150 = !DILocation(line: 729, column: 30, scope: !4143)
!4151 = !DILocation(line: 729, column: 5, scope: !4143)
!4152 = !DILocation(line: 730, column: 1, scope: !4143)
!4153 = distinct !DISubprogram(name: "shake256_inc_finalize", scope: !71, file: !71, line: 732, type: !4124, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4154 = !DILocalVariable(name: "state", arg: 1, scope: !4153, file: !71, line: 732, type: !4126)
!4155 = !DILocation(line: 0, scope: !4153)
!4156 = !DILocation(line: 733, column: 32, scope: !4153)
!4157 = !DILocation(line: 733, column: 5, scope: !4153)
!4158 = !DILocation(line: 734, column: 1, scope: !4153)
!4159 = distinct !DISubprogram(name: "shake256_inc_squeeze", scope: !71, file: !71, line: 736, type: !4160, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{null, !11, !15, !4126}
!4162 = !DILocalVariable(name: "output", arg: 1, scope: !4159, file: !71, line: 736, type: !11)
!4163 = !DILocation(line: 0, scope: !4159)
!4164 = !DILocalVariable(name: "outlen", arg: 2, scope: !4159, file: !71, line: 736, type: !15)
!4165 = !DILocalVariable(name: "state", arg: 3, scope: !4159, file: !71, line: 736, type: !4126)
!4166 = !DILocation(line: 737, column: 47, scope: !4159)
!4167 = !DILocation(line: 737, column: 5, scope: !4159)
!4168 = !DILocation(line: 738, column: 1, scope: !4159)
!4169 = distinct !DISubprogram(name: "shake256_inc_ctx_clone", scope: !71, file: !71, line: 740, type: !4170, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{null, !4126, !4172}
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 32)
!4173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4127)
!4174 = !DILocalVariable(name: "dest", arg: 1, scope: !4169, file: !71, line: 740, type: !4126)
!4175 = !DILocation(line: 0, scope: !4169)
!4176 = !DILocalVariable(name: "src", arg: 2, scope: !4169, file: !71, line: 740, type: !4172)
!4177 = !DILocation(line: 741, column: 17, scope: !4169)
!4178 = !DILocation(line: 741, column: 15, scope: !4169)
!4179 = !DILocation(line: 742, column: 19, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4169, file: !71, line: 742, column: 9)
!4181 = !DILocation(line: 743, column: 9, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4180, file: !71, line: 742, column: 28)
!4183 = !DILocation(line: 744, column: 5, scope: !4182)
!4184 = !DILocation(line: 745, column: 18, scope: !4169)
!4185 = !DILocation(line: 745, column: 28, scope: !4169)
!4186 = !DILocation(line: 745, column: 5, scope: !4169)
!4187 = !DILocation(line: 746, column: 1, scope: !4169)
!4188 = distinct !DISubprogram(name: "shake256_inc_ctx_release", scope: !71, file: !71, line: 748, type: !4124, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4189 = !DILocalVariable(name: "state", arg: 1, scope: !4188, file: !71, line: 748, type: !4126)
!4190 = !DILocation(line: 0, scope: !4188)
!4191 = !DILocation(line: 749, column: 17, scope: !4188)
!4192 = !DILocation(line: 749, column: 5, scope: !4188)
!4193 = !DILocation(line: 750, column: 1, scope: !4188)
!4194 = distinct !DISubprogram(name: "shake128_absorb", scope: !71, file: !71, line: 764, type: !4195, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{null, !4197, !257, !15}
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 32)
!4198 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128ctx", file: !71, line: 36, baseType: !4199)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 34, size: 32, elements: !4200)
!4200 = !{!4201}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4199, file: !71, line: 35, baseType: !5, size: 32)
!4202 = !DILocalVariable(name: "state", arg: 1, scope: !4194, file: !71, line: 764, type: !4197)
!4203 = !DILocation(line: 0, scope: !4194)
!4204 = !DILocalVariable(name: "input", arg: 2, scope: !4194, file: !71, line: 764, type: !257)
!4205 = !DILocalVariable(name: "inlen", arg: 3, scope: !4194, file: !71, line: 764, type: !15)
!4206 = !DILocation(line: 765, column: 18, scope: !4194)
!4207 = !DILocation(line: 765, column: 16, scope: !4194)
!4208 = !DILocation(line: 766, column: 20, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4194, file: !71, line: 766, column: 9)
!4210 = !DILocation(line: 767, column: 9, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4209, file: !71, line: 766, column: 29)
!4212 = !DILocation(line: 768, column: 5, scope: !4211)
!4213 = !DILocation(line: 769, column: 26, scope: !4194)
!4214 = !DILocation(line: 769, column: 5, scope: !4194)
!4215 = !DILocation(line: 770, column: 1, scope: !4194)
!4216 = distinct !DISubprogram(name: "keccak_absorb", scope: !71, file: !71, line: 512, type: !4217, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{null, !5, !19, !257, !15, !12}
!4219 = !DILocalVariable(name: "s", arg: 1, scope: !4216, file: !71, line: 512, type: !5)
!4220 = !DILocation(line: 0, scope: !4216)
!4221 = !DILocalVariable(name: "r", arg: 2, scope: !4216, file: !71, line: 512, type: !19)
!4222 = !DILocalVariable(name: "m", arg: 3, scope: !4216, file: !71, line: 512, type: !257)
!4223 = !DILocalVariable(name: "mlen", arg: 4, scope: !4216, file: !71, line: 513, type: !15)
!4224 = !DILocalVariable(name: "p", arg: 5, scope: !4216, file: !71, line: 513, type: !12)
!4225 = !DILocalVariable(name: "t", scope: !4216, file: !71, line: 515, type: !4226)
!4226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1600, elements: !4227)
!4227 = !{!4228}
!4228 = !DISubrange(count: 200)
!4229 = !DILocation(line: 515, column: 13, scope: !4216)
!4230 = !DILocalVariable(name: "i", scope: !4216, file: !71, line: 514, type: !15)
!4231 = !DILocation(line: 518, column: 10, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4216, file: !71, line: 518, column: 5)
!4233 = !DILocation(line: 518, scope: !4232)
!4234 = !DILocation(line: 518, column: 19, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4232, file: !71, line: 518, column: 5)
!4236 = !DILocation(line: 518, column: 5, scope: !4232)
!4237 = !DILocation(line: 522, column: 5, scope: !4216)
!4238 = !DILocation(line: 519, column: 9, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4235, file: !71, line: 518, column: 30)
!4240 = !DILocation(line: 519, column: 14, scope: !4239)
!4241 = !DILocation(line: 518, column: 25, scope: !4235)
!4242 = !DILocation(line: 518, column: 5, scope: !4235)
!4243 = distinct !{!4243, !4236, !4244, !244}
!4244 = !DILocation(line: 520, column: 5, scope: !4232)
!4245 = !DILocation(line: 522, column: 17, scope: !4216)
!4246 = !DILocation(line: 523, column: 9, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4248, file: !71, line: 523, column: 9)
!4248 = distinct !DILexicalBlock(scope: !4216, file: !71, line: 522, column: 23)
!4249 = !DILocation(line: 532, column: 5, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4216, file: !71, line: 532, column: 5)
!4251 = !DILocation(line: 523, scope: !4247)
!4252 = !DILocation(line: 523, column: 23, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4247, file: !71, line: 523, column: 9)
!4254 = !DILocation(line: 524, column: 34, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4253, file: !71, line: 523, column: 37)
!4256 = !DILocation(line: 524, column: 30, scope: !4255)
!4257 = !DILocation(line: 524, column: 21, scope: !4255)
!4258 = !DILocation(line: 524, column: 13, scope: !4255)
!4259 = !DILocation(line: 524, column: 18, scope: !4255)
!4260 = !DILocation(line: 523, column: 32, scope: !4253)
!4261 = !DILocation(line: 523, column: 9, scope: !4253)
!4262 = distinct !{!4262, !4246, !4263, !244}
!4263 = !DILocation(line: 525, column: 9, scope: !4247)
!4264 = !DILocation(line: 527, column: 9, scope: !4248)
!4265 = !DILocation(line: 528, column: 14, scope: !4248)
!4266 = !DILocation(line: 529, column: 11, scope: !4248)
!4267 = distinct !{!4267, !4237, !4268, !244}
!4268 = !DILocation(line: 530, column: 5, scope: !4216)
!4269 = !DILocation(line: 532, scope: !4250)
!4270 = !DILocation(line: 532, column: 19, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4250, file: !71, line: 532, column: 5)
!4272 = !DILocation(line: 535, column: 5, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4216, file: !71, line: 535, column: 5)
!4274 = !DILocation(line: 533, column: 9, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4271, file: !71, line: 532, column: 29)
!4276 = !DILocation(line: 533, column: 14, scope: !4275)
!4277 = !DILocation(line: 532, column: 24, scope: !4271)
!4278 = !DILocation(line: 532, column: 5, scope: !4271)
!4279 = distinct !{!4279, !4249, !4280, !244}
!4280 = !DILocation(line: 534, column: 5, scope: !4250)
!4281 = !DILocation(line: 535, scope: !4273)
!4282 = !DILocation(line: 535, column: 19, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4273, file: !71, line: 535, column: 5)
!4284 = !DILocation(line: 536, column: 16, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4283, file: !71, line: 535, column: 32)
!4286 = !DILocation(line: 536, column: 9, scope: !4285)
!4287 = !DILocation(line: 536, column: 14, scope: !4285)
!4288 = !DILocation(line: 535, column: 27, scope: !4283)
!4289 = !DILocation(line: 535, column: 5, scope: !4283)
!4290 = distinct !{!4290, !4272, !4291, !244}
!4291 = !DILocation(line: 537, column: 5, scope: !4273)
!4292 = !DILocation(line: 538, column: 5, scope: !4216)
!4293 = !DILocation(line: 538, column: 10, scope: !4216)
!4294 = !DILocation(line: 539, column: 9, scope: !4216)
!4295 = !DILocation(line: 539, column: 5, scope: !4216)
!4296 = !DILocation(line: 539, column: 14, scope: !4216)
!4297 = !DILocation(line: 540, column: 10, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4216, file: !71, line: 540, column: 5)
!4299 = !DILocation(line: 540, scope: !4298)
!4300 = !DILocation(line: 540, column: 19, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4298, file: !71, line: 540, column: 5)
!4302 = !DILocation(line: 540, column: 5, scope: !4298)
!4303 = !DILocation(line: 541, column: 30, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4301, file: !71, line: 540, column: 33)
!4305 = !DILocation(line: 541, column: 26, scope: !4304)
!4306 = !DILocation(line: 541, column: 17, scope: !4304)
!4307 = !DILocation(line: 541, column: 9, scope: !4304)
!4308 = !DILocation(line: 541, column: 14, scope: !4304)
!4309 = !DILocation(line: 540, column: 28, scope: !4301)
!4310 = !DILocation(line: 540, column: 5, scope: !4301)
!4311 = distinct !{!4311, !4302, !4312, !244}
!4312 = !DILocation(line: 542, column: 5, scope: !4298)
!4313 = !DILocation(line: 543, column: 1, scope: !4216)
!4314 = distinct !DISubprogram(name: "load64", scope: !71, file: !71, line: 190, type: !4315, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!6, !257}
!4317 = !DILocalVariable(name: "x", arg: 1, scope: !4314, file: !71, line: 190, type: !257)
!4318 = !DILocation(line: 0, scope: !4314)
!4319 = !DILocalVariable(name: "r", scope: !4314, file: !71, line: 191, type: !6)
!4320 = !DILocalVariable(name: "i", scope: !4321, file: !71, line: 192, type: !15)
!4321 = distinct !DILexicalBlock(scope: !4314, file: !71, line: 192, column: 5)
!4322 = !DILocation(line: 0, scope: !4321)
!4323 = !DILocation(line: 192, column: 10, scope: !4321)
!4324 = !DILocation(line: 192, scope: !4321)
!4325 = !DILocation(line: 192, column: 26, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4321, file: !71, line: 192, column: 5)
!4327 = !DILocation(line: 192, column: 5, scope: !4321)
!4328 = !DILocation(line: 193, column: 24, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4326, file: !71, line: 192, column: 36)
!4330 = !DILocation(line: 193, column: 14, scope: !4329)
!4331 = !DILocation(line: 193, column: 34, scope: !4329)
!4332 = !DILocation(line: 193, column: 29, scope: !4329)
!4333 = !DILocation(line: 193, column: 11, scope: !4329)
!4334 = !DILocation(line: 192, column: 31, scope: !4326)
!4335 = !DILocation(line: 192, column: 5, scope: !4326)
!4336 = distinct !{!4336, !4327, !4337, !244}
!4337 = !DILocation(line: 194, column: 5, scope: !4321)
!4338 = !DILocation(line: 196, column: 5, scope: !4314)
!4339 = distinct !DISubprogram(name: "shake128_squeezeblocks", scope: !71, file: !71, line: 784, type: !4340, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{null, !11, !15, !4197}
!4342 = !DILocalVariable(name: "output", arg: 1, scope: !4339, file: !71, line: 784, type: !11)
!4343 = !DILocation(line: 0, scope: !4339)
!4344 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4339, file: !71, line: 784, type: !15)
!4345 = !DILocalVariable(name: "state", arg: 3, scope: !4339, file: !71, line: 784, type: !4197)
!4346 = !DILocation(line: 785, column: 50, scope: !4339)
!4347 = !DILocation(line: 785, column: 5, scope: !4339)
!4348 = !DILocation(line: 786, column: 1, scope: !4339)
!4349 = distinct !DISubprogram(name: "keccak_squeezeblocks", scope: !71, file: !71, line: 558, type: !4022, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4350 = !DILocalVariable(name: "h", arg: 1, scope: !4349, file: !71, line: 558, type: !11)
!4351 = !DILocation(line: 0, scope: !4349)
!4352 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4349, file: !71, line: 558, type: !15)
!4353 = !DILocalVariable(name: "s", arg: 3, scope: !4349, file: !71, line: 559, type: !5)
!4354 = !DILocalVariable(name: "r", arg: 4, scope: !4349, file: !71, line: 559, type: !19)
!4355 = !DILocation(line: 560, column: 5, scope: !4349)
!4356 = !DILocation(line: 560, column: 20, scope: !4349)
!4357 = !DILocation(line: 561, column: 9, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4349, file: !71, line: 560, column: 25)
!4359 = !DILocalVariable(name: "i", scope: !4360, file: !71, line: 562, type: !15)
!4360 = distinct !DILexicalBlock(scope: !4358, file: !71, line: 562, column: 9)
!4361 = !DILocation(line: 0, scope: !4360)
!4362 = !DILocation(line: 562, column: 14, scope: !4360)
!4363 = !DILocation(line: 562, scope: !4360)
!4364 = !DILocation(line: 562, column: 30, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4360, file: !71, line: 562, column: 9)
!4366 = !DILocation(line: 562, column: 9, scope: !4360)
!4367 = !DILocation(line: 563, column: 27, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4365, file: !71, line: 562, column: 47)
!4369 = !DILocation(line: 563, column: 23, scope: !4368)
!4370 = !DILocation(line: 563, column: 32, scope: !4368)
!4371 = !DILocation(line: 563, column: 13, scope: !4368)
!4372 = !DILocation(line: 562, column: 43, scope: !4365)
!4373 = !DILocation(line: 562, column: 9, scope: !4365)
!4374 = distinct !{!4374, !4366, !4375, !244}
!4375 = !DILocation(line: 564, column: 9, scope: !4360)
!4376 = !DILocation(line: 565, column: 11, scope: !4358)
!4377 = !DILocation(line: 566, column: 16, scope: !4358)
!4378 = distinct !{!4378, !4355, !4379, !244}
!4379 = !DILocation(line: 567, column: 5, scope: !4349)
!4380 = !DILocation(line: 568, column: 1, scope: !4349)
!4381 = distinct !DISubprogram(name: "store64", scope: !71, file: !71, line: 207, type: !4382, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{null, !11, !6}
!4384 = !DILocalVariable(name: "x", arg: 1, scope: !4381, file: !71, line: 207, type: !11)
!4385 = !DILocation(line: 0, scope: !4381)
!4386 = !DILocalVariable(name: "u", arg: 2, scope: !4381, file: !71, line: 207, type: !6)
!4387 = !DILocalVariable(name: "i", scope: !4388, file: !71, line: 208, type: !15)
!4388 = distinct !DILexicalBlock(scope: !4381, file: !71, line: 208, column: 5)
!4389 = !DILocation(line: 0, scope: !4388)
!4390 = !DILocation(line: 208, column: 10, scope: !4388)
!4391 = !DILocation(line: 208, scope: !4388)
!4392 = !DILocation(line: 208, column: 26, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4388, file: !71, line: 208, column: 5)
!4394 = !DILocation(line: 208, column: 5, scope: !4388)
!4395 = !DILocation(line: 209, column: 34, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4393, file: !71, line: 208, column: 36)
!4397 = !DILocation(line: 209, column: 29, scope: !4396)
!4398 = !DILocation(line: 209, column: 16, scope: !4396)
!4399 = !DILocation(line: 209, column: 9, scope: !4396)
!4400 = !DILocation(line: 209, column: 14, scope: !4396)
!4401 = !DILocation(line: 208, column: 31, scope: !4393)
!4402 = !DILocation(line: 208, column: 5, scope: !4393)
!4403 = distinct !{!4403, !4394, !4404, !244}
!4404 = !DILocation(line: 210, column: 5, scope: !4388)
!4405 = !DILocation(line: 211, column: 1, scope: !4381)
!4406 = distinct !DISubprogram(name: "shake128_ctx_clone", scope: !71, file: !71, line: 788, type: !4407, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{null, !4197, !4409}
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 32)
!4410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4198)
!4411 = !DILocalVariable(name: "dest", arg: 1, scope: !4406, file: !71, line: 788, type: !4197)
!4412 = !DILocation(line: 0, scope: !4406)
!4413 = !DILocalVariable(name: "src", arg: 2, scope: !4406, file: !71, line: 788, type: !4409)
!4414 = !DILocation(line: 789, column: 17, scope: !4406)
!4415 = !DILocation(line: 789, column: 15, scope: !4406)
!4416 = !DILocation(line: 790, column: 19, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4406, file: !71, line: 790, column: 9)
!4418 = !DILocation(line: 791, column: 9, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4417, file: !71, line: 790, column: 28)
!4420 = !DILocation(line: 792, column: 5, scope: !4419)
!4421 = !DILocation(line: 793, column: 18, scope: !4406)
!4422 = !DILocation(line: 793, column: 28, scope: !4406)
!4423 = !DILocation(line: 793, column: 5, scope: !4406)
!4424 = !DILocation(line: 794, column: 1, scope: !4406)
!4425 = distinct !DISubprogram(name: "shake128_ctx_release", scope: !71, file: !71, line: 797, type: !4426, scopeLine: 797, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{null, !4197}
!4428 = !DILocalVariable(name: "state", arg: 1, scope: !4425, file: !71, line: 797, type: !4197)
!4429 = !DILocation(line: 0, scope: !4425)
!4430 = !DILocation(line: 798, column: 17, scope: !4425)
!4431 = !DILocation(line: 798, column: 5, scope: !4425)
!4432 = !DILocation(line: 799, column: 1, scope: !4425)
!4433 = distinct !DISubprogram(name: "shake256_absorb", scope: !71, file: !71, line: 812, type: !4434, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{null, !4436, !257, !15}
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 32)
!4437 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256ctx", file: !71, line: 46, baseType: !4438)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 44, size: 32, elements: !4439)
!4439 = !{!4440}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4438, file: !71, line: 45, baseType: !5, size: 32)
!4441 = !DILocalVariable(name: "state", arg: 1, scope: !4433, file: !71, line: 812, type: !4436)
!4442 = !DILocation(line: 0, scope: !4433)
!4443 = !DILocalVariable(name: "input", arg: 2, scope: !4433, file: !71, line: 812, type: !257)
!4444 = !DILocalVariable(name: "inlen", arg: 3, scope: !4433, file: !71, line: 812, type: !15)
!4445 = !DILocation(line: 813, column: 18, scope: !4433)
!4446 = !DILocation(line: 813, column: 16, scope: !4433)
!4447 = !DILocation(line: 814, column: 20, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4433, file: !71, line: 814, column: 9)
!4449 = !DILocation(line: 815, column: 9, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4448, file: !71, line: 814, column: 29)
!4451 = !DILocation(line: 816, column: 5, scope: !4450)
!4452 = !DILocation(line: 817, column: 26, scope: !4433)
!4453 = !DILocation(line: 817, column: 5, scope: !4433)
!4454 = !DILocation(line: 818, column: 1, scope: !4433)
!4455 = distinct !DISubprogram(name: "shake256_squeezeblocks", scope: !71, file: !71, line: 832, type: !4456, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{null, !11, !15, !4436}
!4458 = !DILocalVariable(name: "output", arg: 1, scope: !4455, file: !71, line: 832, type: !11)
!4459 = !DILocation(line: 0, scope: !4455)
!4460 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4455, file: !71, line: 832, type: !15)
!4461 = !DILocalVariable(name: "state", arg: 3, scope: !4455, file: !71, line: 832, type: !4436)
!4462 = !DILocation(line: 833, column: 50, scope: !4455)
!4463 = !DILocation(line: 833, column: 5, scope: !4455)
!4464 = !DILocation(line: 834, column: 1, scope: !4455)
!4465 = distinct !DISubprogram(name: "shake256_ctx_clone", scope: !71, file: !71, line: 836, type: !4466, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{null, !4436, !4468}
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 32)
!4469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4437)
!4470 = !DILocalVariable(name: "dest", arg: 1, scope: !4465, file: !71, line: 836, type: !4436)
!4471 = !DILocation(line: 0, scope: !4465)
!4472 = !DILocalVariable(name: "src", arg: 2, scope: !4465, file: !71, line: 836, type: !4468)
!4473 = !DILocation(line: 837, column: 17, scope: !4465)
!4474 = !DILocation(line: 837, column: 15, scope: !4465)
!4475 = !DILocation(line: 838, column: 19, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4465, file: !71, line: 838, column: 9)
!4477 = !DILocation(line: 839, column: 9, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4476, file: !71, line: 838, column: 28)
!4479 = !DILocation(line: 840, column: 5, scope: !4478)
!4480 = !DILocation(line: 841, column: 18, scope: !4465)
!4481 = !DILocation(line: 841, column: 28, scope: !4465)
!4482 = !DILocation(line: 841, column: 5, scope: !4465)
!4483 = !DILocation(line: 842, column: 1, scope: !4465)
!4484 = distinct !DISubprogram(name: "shake256_ctx_release", scope: !71, file: !71, line: 845, type: !4485, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{null, !4436}
!4487 = !DILocalVariable(name: "state", arg: 1, scope: !4484, file: !71, line: 845, type: !4436)
!4488 = !DILocation(line: 0, scope: !4484)
!4489 = !DILocation(line: 846, column: 17, scope: !4484)
!4490 = !DILocation(line: 846, column: 5, scope: !4484)
!4491 = !DILocation(line: 847, column: 1, scope: !4484)
!4492 = distinct !DISubprogram(name: "shake128", scope: !71, file: !71, line: 859, type: !4493, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{null, !11, !15, !257, !15}
!4495 = !DILocalVariable(name: "output", arg: 1, scope: !4492, file: !71, line: 859, type: !11)
!4496 = !DILocation(line: 0, scope: !4492)
!4497 = !DILocalVariable(name: "outlen", arg: 2, scope: !4492, file: !71, line: 859, type: !15)
!4498 = !DILocalVariable(name: "input", arg: 3, scope: !4492, file: !71, line: 860, type: !257)
!4499 = !DILocalVariable(name: "inlen", arg: 4, scope: !4492, file: !71, line: 860, type: !15)
!4500 = !DILocation(line: 861, column: 29, scope: !4492)
!4501 = !DILocalVariable(name: "nblocks", scope: !4492, file: !71, line: 861, type: !15)
!4502 = !DILocalVariable(name: "t", scope: !4492, file: !71, line: 862, type: !4503)
!4503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1344, elements: !4504)
!4504 = !{!4505}
!4505 = !DISubrange(count: 168)
!4506 = !DILocation(line: 862, column: 13, scope: !4492)
!4507 = !DILocalVariable(name: "s", scope: !4492, file: !71, line: 863, type: !4198)
!4508 = !DILocation(line: 863, column: 17, scope: !4492)
!4509 = !DILocation(line: 865, column: 5, scope: !4492)
!4510 = !DILocation(line: 866, column: 5, scope: !4492)
!4511 = !DILocation(line: 868, column: 23, scope: !4492)
!4512 = !DILocation(line: 868, column: 12, scope: !4492)
!4513 = !DILocation(line: 869, column: 23, scope: !4492)
!4514 = !DILocation(line: 869, column: 12, scope: !4492)
!4515 = !DILocation(line: 871, column: 9, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4492, file: !71, line: 871, column: 9)
!4517 = !DILocation(line: 872, column: 9, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4516, file: !71, line: 871, column: 17)
!4519 = !DILocalVariable(name: "i", scope: !4520, file: !71, line: 873, type: !15)
!4520 = distinct !DILexicalBlock(scope: !4518, file: !71, line: 873, column: 9)
!4521 = !DILocation(line: 0, scope: !4520)
!4522 = !DILocation(line: 873, column: 14, scope: !4520)
!4523 = !DILocation(line: 873, scope: !4520)
!4524 = !DILocation(line: 873, column: 30, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4520, file: !71, line: 873, column: 9)
!4526 = !DILocation(line: 873, column: 9, scope: !4520)
!4527 = !DILocation(line: 874, column: 25, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4525, file: !71, line: 873, column: 45)
!4529 = !DILocation(line: 874, column: 13, scope: !4528)
!4530 = !DILocation(line: 874, column: 23, scope: !4528)
!4531 = !DILocation(line: 873, column: 40, scope: !4525)
!4532 = !DILocation(line: 873, column: 9, scope: !4525)
!4533 = distinct !{!4533, !4526, !4534, !244}
!4534 = !DILocation(line: 875, column: 9, scope: !4520)
!4535 = !DILocation(line: 877, column: 5, scope: !4492)
!4536 = !DILocation(line: 878, column: 1, scope: !4492)
!4537 = distinct !DISubprogram(name: "shake256", scope: !71, file: !71, line: 890, type: !4493, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4538 = !DILocalVariable(name: "output", arg: 1, scope: !4537, file: !71, line: 890, type: !11)
!4539 = !DILocation(line: 0, scope: !4537)
!4540 = !DILocalVariable(name: "outlen", arg: 2, scope: !4537, file: !71, line: 890, type: !15)
!4541 = !DILocalVariable(name: "input", arg: 3, scope: !4537, file: !71, line: 891, type: !257)
!4542 = !DILocalVariable(name: "inlen", arg: 4, scope: !4537, file: !71, line: 891, type: !15)
!4543 = !DILocation(line: 892, column: 29, scope: !4537)
!4544 = !DILocalVariable(name: "nblocks", scope: !4537, file: !71, line: 892, type: !15)
!4545 = !DILocalVariable(name: "t", scope: !4537, file: !71, line: 893, type: !4546)
!4546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1088, elements: !4547)
!4547 = !{!4548}
!4548 = !DISubrange(count: 136)
!4549 = !DILocation(line: 893, column: 13, scope: !4537)
!4550 = !DILocalVariable(name: "s", scope: !4537, file: !71, line: 894, type: !4437)
!4551 = !DILocation(line: 894, column: 17, scope: !4537)
!4552 = !DILocation(line: 896, column: 5, scope: !4537)
!4553 = !DILocation(line: 897, column: 5, scope: !4537)
!4554 = !DILocation(line: 899, column: 23, scope: !4537)
!4555 = !DILocation(line: 899, column: 12, scope: !4537)
!4556 = !DILocation(line: 900, column: 23, scope: !4537)
!4557 = !DILocation(line: 900, column: 12, scope: !4537)
!4558 = !DILocation(line: 902, column: 9, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4537, file: !71, line: 902, column: 9)
!4560 = !DILocation(line: 903, column: 9, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4559, file: !71, line: 902, column: 17)
!4562 = !DILocalVariable(name: "i", scope: !4563, file: !71, line: 904, type: !15)
!4563 = distinct !DILexicalBlock(scope: !4561, file: !71, line: 904, column: 9)
!4564 = !DILocation(line: 0, scope: !4563)
!4565 = !DILocation(line: 904, column: 14, scope: !4563)
!4566 = !DILocation(line: 904, scope: !4563)
!4567 = !DILocation(line: 904, column: 30, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4563, file: !71, line: 904, column: 9)
!4569 = !DILocation(line: 904, column: 9, scope: !4563)
!4570 = !DILocation(line: 905, column: 25, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4568, file: !71, line: 904, column: 45)
!4572 = !DILocation(line: 905, column: 13, scope: !4571)
!4573 = !DILocation(line: 905, column: 23, scope: !4571)
!4574 = !DILocation(line: 904, column: 40, scope: !4568)
!4575 = !DILocation(line: 904, column: 9, scope: !4568)
!4576 = distinct !{!4576, !4569, !4577, !244}
!4577 = !DILocation(line: 906, column: 9, scope: !4563)
!4578 = !DILocation(line: 908, column: 5, scope: !4537)
!4579 = !DILocation(line: 909, column: 1, scope: !4537)
!4580 = distinct !DISubprogram(name: "sha3_256_inc_init", scope: !71, file: !71, line: 911, type: !4581, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{null, !4583}
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 32)
!4584 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_256incctx", file: !71, line: 51, baseType: !4585)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 49, size: 32, elements: !4586)
!4586 = !{!4587}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4585, file: !71, line: 50, baseType: !5, size: 32)
!4588 = !DILocalVariable(name: "state", arg: 1, scope: !4580, file: !71, line: 911, type: !4583)
!4589 = !DILocation(line: 0, scope: !4580)
!4590 = !DILocation(line: 912, column: 18, scope: !4580)
!4591 = !DILocation(line: 912, column: 16, scope: !4580)
!4592 = !DILocation(line: 913, column: 20, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4580, file: !71, line: 913, column: 9)
!4594 = !DILocation(line: 914, column: 9, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4593, file: !71, line: 913, column: 29)
!4596 = !DILocation(line: 915, column: 5, scope: !4595)
!4597 = !DILocation(line: 916, column: 28, scope: !4580)
!4598 = !DILocation(line: 916, column: 5, scope: !4580)
!4599 = !DILocation(line: 917, column: 1, scope: !4580)
!4600 = distinct !DISubprogram(name: "sha3_256_inc_ctx_clone", scope: !71, file: !71, line: 919, type: !4601, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{null, !4583, !4603}
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 32)
!4604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4584)
!4605 = !DILocalVariable(name: "dest", arg: 1, scope: !4600, file: !71, line: 919, type: !4583)
!4606 = !DILocation(line: 0, scope: !4600)
!4607 = !DILocalVariable(name: "src", arg: 2, scope: !4600, file: !71, line: 919, type: !4603)
!4608 = !DILocation(line: 920, column: 17, scope: !4600)
!4609 = !DILocation(line: 920, column: 15, scope: !4600)
!4610 = !DILocation(line: 921, column: 19, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4600, file: !71, line: 921, column: 9)
!4612 = !DILocation(line: 922, column: 9, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4611, file: !71, line: 921, column: 28)
!4614 = !DILocation(line: 923, column: 5, scope: !4613)
!4615 = !DILocation(line: 924, column: 18, scope: !4600)
!4616 = !DILocation(line: 924, column: 28, scope: !4600)
!4617 = !DILocation(line: 924, column: 5, scope: !4600)
!4618 = !DILocation(line: 925, column: 1, scope: !4600)
!4619 = distinct !DISubprogram(name: "sha3_256_inc_ctx_release", scope: !71, file: !71, line: 927, type: !4581, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4620 = !DILocalVariable(name: "state", arg: 1, scope: !4619, file: !71, line: 927, type: !4583)
!4621 = !DILocation(line: 0, scope: !4619)
!4622 = !DILocation(line: 928, column: 17, scope: !4619)
!4623 = !DILocation(line: 928, column: 5, scope: !4619)
!4624 = !DILocation(line: 929, column: 1, scope: !4619)
!4625 = distinct !DISubprogram(name: "sha3_256_inc_absorb", scope: !71, file: !71, line: 931, type: !4626, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{null, !4583, !257, !15}
!4628 = !DILocalVariable(name: "state", arg: 1, scope: !4625, file: !71, line: 931, type: !4583)
!4629 = !DILocation(line: 0, scope: !4625)
!4630 = !DILocalVariable(name: "input", arg: 2, scope: !4625, file: !71, line: 931, type: !257)
!4631 = !DILocalVariable(name: "inlen", arg: 3, scope: !4625, file: !71, line: 931, type: !15)
!4632 = !DILocation(line: 932, column: 30, scope: !4625)
!4633 = !DILocation(line: 932, column: 5, scope: !4625)
!4634 = !DILocation(line: 933, column: 1, scope: !4625)
!4635 = distinct !DISubprogram(name: "sha3_256_inc_finalize", scope: !71, file: !71, line: 935, type: !4636, scopeLine: 935, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{null, !11, !4583}
!4638 = !DILocalVariable(name: "output", arg: 1, scope: !4635, file: !71, line: 935, type: !11)
!4639 = !DILocation(line: 0, scope: !4635)
!4640 = !DILocalVariable(name: "state", arg: 2, scope: !4635, file: !71, line: 935, type: !4583)
!4641 = !DILocalVariable(name: "t", scope: !4635, file: !71, line: 936, type: !4546)
!4642 = !DILocation(line: 936, column: 13, scope: !4635)
!4643 = !DILocation(line: 937, column: 32, scope: !4635)
!4644 = !DILocation(line: 937, column: 5, scope: !4635)
!4645 = !DILocation(line: 939, column: 39, scope: !4635)
!4646 = !DILocation(line: 939, column: 5, scope: !4635)
!4647 = !DILocation(line: 941, column: 5, scope: !4635)
!4648 = !DILocalVariable(name: "i", scope: !4649, file: !71, line: 943, type: !15)
!4649 = distinct !DILexicalBlock(scope: !4635, file: !71, line: 943, column: 5)
!4650 = !DILocation(line: 0, scope: !4649)
!4651 = !DILocation(line: 943, column: 10, scope: !4649)
!4652 = !DILocation(line: 943, scope: !4649)
!4653 = !DILocation(line: 943, column: 26, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4649, file: !71, line: 943, column: 5)
!4655 = !DILocation(line: 943, column: 5, scope: !4649)
!4656 = !DILocation(line: 944, column: 21, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4654, file: !71, line: 943, column: 37)
!4658 = !DILocation(line: 944, column: 9, scope: !4657)
!4659 = !DILocation(line: 944, column: 19, scope: !4657)
!4660 = !DILocation(line: 943, column: 33, scope: !4654)
!4661 = !DILocation(line: 943, column: 5, scope: !4654)
!4662 = distinct !{!4662, !4655, !4663, !244}
!4663 = !DILocation(line: 945, column: 5, scope: !4649)
!4664 = !DILocation(line: 946, column: 1, scope: !4635)
!4665 = distinct !DISubprogram(name: "sha3_256", scope: !71, file: !71, line: 957, type: !4666, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{null, !11, !257, !15}
!4668 = !DILocalVariable(name: "output", arg: 1, scope: !4665, file: !71, line: 957, type: !11)
!4669 = !DILocation(line: 0, scope: !4665)
!4670 = !DILocalVariable(name: "input", arg: 2, scope: !4665, file: !71, line: 957, type: !257)
!4671 = !DILocalVariable(name: "inlen", arg: 3, scope: !4665, file: !71, line: 957, type: !15)
!4672 = !DILocalVariable(name: "s", scope: !4665, file: !71, line: 958, type: !4673)
!4673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1600, elements: !4674)
!4674 = !{!4675}
!4675 = !DISubrange(count: 25)
!4676 = !DILocation(line: 958, column: 14, scope: !4665)
!4677 = !DILocalVariable(name: "t", scope: !4665, file: !71, line: 959, type: !4546)
!4678 = !DILocation(line: 959, column: 13, scope: !4665)
!4679 = !DILocation(line: 962, column: 5, scope: !4665)
!4680 = !DILocation(line: 965, column: 5, scope: !4665)
!4681 = !DILocalVariable(name: "i", scope: !4682, file: !71, line: 967, type: !15)
!4682 = distinct !DILexicalBlock(scope: !4665, file: !71, line: 967, column: 5)
!4683 = !DILocation(line: 0, scope: !4682)
!4684 = !DILocation(line: 967, column: 10, scope: !4682)
!4685 = !DILocation(line: 967, scope: !4682)
!4686 = !DILocation(line: 967, column: 26, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4682, file: !71, line: 967, column: 5)
!4688 = !DILocation(line: 967, column: 5, scope: !4682)
!4689 = !DILocation(line: 968, column: 21, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4687, file: !71, line: 967, column: 37)
!4691 = !DILocation(line: 968, column: 9, scope: !4690)
!4692 = !DILocation(line: 968, column: 19, scope: !4690)
!4693 = !DILocation(line: 967, column: 33, scope: !4687)
!4694 = !DILocation(line: 967, column: 5, scope: !4687)
!4695 = distinct !{!4695, !4688, !4696, !244}
!4696 = !DILocation(line: 969, column: 5, scope: !4682)
!4697 = !DILocation(line: 970, column: 1, scope: !4665)
!4698 = distinct !DISubprogram(name: "sha3_384_inc_init", scope: !71, file: !71, line: 972, type: !4699, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{null, !4701}
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 32)
!4702 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_384incctx", file: !71, line: 56, baseType: !4703)
!4703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 54, size: 32, elements: !4704)
!4704 = !{!4705}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4703, file: !71, line: 55, baseType: !5, size: 32)
!4706 = !DILocalVariable(name: "state", arg: 1, scope: !4698, file: !71, line: 972, type: !4701)
!4707 = !DILocation(line: 0, scope: !4698)
!4708 = !DILocation(line: 973, column: 18, scope: !4698)
!4709 = !DILocation(line: 973, column: 16, scope: !4698)
!4710 = !DILocation(line: 974, column: 20, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4698, file: !71, line: 974, column: 9)
!4712 = !DILocation(line: 975, column: 9, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4711, file: !71, line: 974, column: 29)
!4714 = !DILocation(line: 976, column: 5, scope: !4713)
!4715 = !DILocation(line: 977, column: 28, scope: !4698)
!4716 = !DILocation(line: 977, column: 5, scope: !4698)
!4717 = !DILocation(line: 978, column: 1, scope: !4698)
!4718 = distinct !DISubprogram(name: "sha3_384_inc_ctx_clone", scope: !71, file: !71, line: 980, type: !4719, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{null, !4701, !4721}
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 32)
!4722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4702)
!4723 = !DILocalVariable(name: "dest", arg: 1, scope: !4718, file: !71, line: 980, type: !4701)
!4724 = !DILocation(line: 0, scope: !4718)
!4725 = !DILocalVariable(name: "src", arg: 2, scope: !4718, file: !71, line: 980, type: !4721)
!4726 = !DILocation(line: 981, column: 17, scope: !4718)
!4727 = !DILocation(line: 981, column: 15, scope: !4718)
!4728 = !DILocation(line: 982, column: 19, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4718, file: !71, line: 982, column: 9)
!4730 = !DILocation(line: 983, column: 9, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4729, file: !71, line: 982, column: 28)
!4732 = !DILocation(line: 984, column: 5, scope: !4731)
!4733 = !DILocation(line: 985, column: 18, scope: !4718)
!4734 = !DILocation(line: 985, column: 28, scope: !4718)
!4735 = !DILocation(line: 985, column: 5, scope: !4718)
!4736 = !DILocation(line: 986, column: 1, scope: !4718)
!4737 = distinct !DISubprogram(name: "sha3_384_inc_absorb", scope: !71, file: !71, line: 988, type: !4738, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{null, !4701, !257, !15}
!4740 = !DILocalVariable(name: "state", arg: 1, scope: !4737, file: !71, line: 988, type: !4701)
!4741 = !DILocation(line: 0, scope: !4737)
!4742 = !DILocalVariable(name: "input", arg: 2, scope: !4737, file: !71, line: 988, type: !257)
!4743 = !DILocalVariable(name: "inlen", arg: 3, scope: !4737, file: !71, line: 988, type: !15)
!4744 = !DILocation(line: 989, column: 30, scope: !4737)
!4745 = !DILocation(line: 989, column: 5, scope: !4737)
!4746 = !DILocation(line: 990, column: 1, scope: !4737)
!4747 = distinct !DISubprogram(name: "sha3_384_inc_ctx_release", scope: !71, file: !71, line: 992, type: !4699, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4748 = !DILocalVariable(name: "state", arg: 1, scope: !4747, file: !71, line: 992, type: !4701)
!4749 = !DILocation(line: 0, scope: !4747)
!4750 = !DILocation(line: 993, column: 17, scope: !4747)
!4751 = !DILocation(line: 993, column: 5, scope: !4747)
!4752 = !DILocation(line: 994, column: 1, scope: !4747)
!4753 = distinct !DISubprogram(name: "sha3_384_inc_finalize", scope: !71, file: !71, line: 996, type: !4754, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{null, !11, !4701}
!4756 = !DILocalVariable(name: "output", arg: 1, scope: !4753, file: !71, line: 996, type: !11)
!4757 = !DILocation(line: 0, scope: !4753)
!4758 = !DILocalVariable(name: "state", arg: 2, scope: !4753, file: !71, line: 996, type: !4701)
!4759 = !DILocalVariable(name: "t", scope: !4753, file: !71, line: 997, type: !4760)
!4760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 832, elements: !2020)
!4761 = !DILocation(line: 997, column: 13, scope: !4753)
!4762 = !DILocation(line: 998, column: 32, scope: !4753)
!4763 = !DILocation(line: 998, column: 5, scope: !4753)
!4764 = !DILocation(line: 1000, column: 39, scope: !4753)
!4765 = !DILocation(line: 1000, column: 5, scope: !4753)
!4766 = !DILocation(line: 1002, column: 5, scope: !4753)
!4767 = !DILocalVariable(name: "i", scope: !4768, file: !71, line: 1004, type: !15)
!4768 = distinct !DILexicalBlock(scope: !4753, file: !71, line: 1004, column: 5)
!4769 = !DILocation(line: 0, scope: !4768)
!4770 = !DILocation(line: 1004, column: 10, scope: !4768)
!4771 = !DILocation(line: 1004, scope: !4768)
!4772 = !DILocation(line: 1004, column: 26, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4768, file: !71, line: 1004, column: 5)
!4774 = !DILocation(line: 1004, column: 5, scope: !4768)
!4775 = !DILocation(line: 1005, column: 21, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4773, file: !71, line: 1004, column: 37)
!4777 = !DILocation(line: 1005, column: 9, scope: !4776)
!4778 = !DILocation(line: 1005, column: 19, scope: !4776)
!4779 = !DILocation(line: 1004, column: 33, scope: !4773)
!4780 = !DILocation(line: 1004, column: 5, scope: !4773)
!4781 = distinct !{!4781, !4774, !4782, !244}
!4782 = !DILocation(line: 1006, column: 5, scope: !4768)
!4783 = !DILocation(line: 1007, column: 1, scope: !4753)
!4784 = distinct !DISubprogram(name: "sha3_384", scope: !71, file: !71, line: 1018, type: !4666, scopeLine: 1018, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4785 = !DILocalVariable(name: "output", arg: 1, scope: !4784, file: !71, line: 1018, type: !11)
!4786 = !DILocation(line: 0, scope: !4784)
!4787 = !DILocalVariable(name: "input", arg: 2, scope: !4784, file: !71, line: 1018, type: !257)
!4788 = !DILocalVariable(name: "inlen", arg: 3, scope: !4784, file: !71, line: 1018, type: !15)
!4789 = !DILocalVariable(name: "s", scope: !4784, file: !71, line: 1019, type: !4673)
!4790 = !DILocation(line: 1019, column: 14, scope: !4784)
!4791 = !DILocalVariable(name: "t", scope: !4784, file: !71, line: 1020, type: !4760)
!4792 = !DILocation(line: 1020, column: 13, scope: !4784)
!4793 = !DILocation(line: 1023, column: 5, scope: !4784)
!4794 = !DILocation(line: 1026, column: 5, scope: !4784)
!4795 = !DILocalVariable(name: "i", scope: !4796, file: !71, line: 1028, type: !15)
!4796 = distinct !DILexicalBlock(scope: !4784, file: !71, line: 1028, column: 5)
!4797 = !DILocation(line: 0, scope: !4796)
!4798 = !DILocation(line: 1028, column: 10, scope: !4796)
!4799 = !DILocation(line: 1028, scope: !4796)
!4800 = !DILocation(line: 1028, column: 26, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4796, file: !71, line: 1028, column: 5)
!4802 = !DILocation(line: 1028, column: 5, scope: !4796)
!4803 = !DILocation(line: 1029, column: 21, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4801, file: !71, line: 1028, column: 37)
!4805 = !DILocation(line: 1029, column: 9, scope: !4804)
!4806 = !DILocation(line: 1029, column: 19, scope: !4804)
!4807 = !DILocation(line: 1028, column: 33, scope: !4801)
!4808 = !DILocation(line: 1028, column: 5, scope: !4801)
!4809 = distinct !{!4809, !4802, !4810, !244}
!4810 = !DILocation(line: 1030, column: 5, scope: !4796)
!4811 = !DILocation(line: 1031, column: 1, scope: !4784)
!4812 = distinct !DISubprogram(name: "sha3_512_inc_init", scope: !71, file: !71, line: 1033, type: !4813, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{null, !4815}
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 32)
!4816 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_512incctx", file: !71, line: 61, baseType: !4817)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 59, size: 32, elements: !4818)
!4818 = !{!4819}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4817, file: !71, line: 60, baseType: !5, size: 32)
!4820 = !DILocalVariable(name: "state", arg: 1, scope: !4812, file: !71, line: 1033, type: !4815)
!4821 = !DILocation(line: 0, scope: !4812)
!4822 = !DILocation(line: 1034, column: 18, scope: !4812)
!4823 = !DILocation(line: 1034, column: 16, scope: !4812)
!4824 = !DILocation(line: 1035, column: 20, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4812, file: !71, line: 1035, column: 9)
!4826 = !DILocation(line: 1036, column: 9, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4825, file: !71, line: 1035, column: 29)
!4828 = !DILocation(line: 1037, column: 5, scope: !4827)
!4829 = !DILocation(line: 1038, column: 28, scope: !4812)
!4830 = !DILocation(line: 1038, column: 5, scope: !4812)
!4831 = !DILocation(line: 1039, column: 1, scope: !4812)
!4832 = distinct !DISubprogram(name: "sha3_512_inc_ctx_clone", scope: !71, file: !71, line: 1041, type: !4833, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{null, !4815, !4835}
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 32)
!4836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4816)
!4837 = !DILocalVariable(name: "dest", arg: 1, scope: !4832, file: !71, line: 1041, type: !4815)
!4838 = !DILocation(line: 0, scope: !4832)
!4839 = !DILocalVariable(name: "src", arg: 2, scope: !4832, file: !71, line: 1041, type: !4835)
!4840 = !DILocation(line: 1042, column: 17, scope: !4832)
!4841 = !DILocation(line: 1042, column: 15, scope: !4832)
!4842 = !DILocation(line: 1043, column: 19, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4832, file: !71, line: 1043, column: 9)
!4844 = !DILocation(line: 1044, column: 9, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4843, file: !71, line: 1043, column: 28)
!4846 = !DILocation(line: 1045, column: 5, scope: !4845)
!4847 = !DILocation(line: 1046, column: 18, scope: !4832)
!4848 = !DILocation(line: 1046, column: 28, scope: !4832)
!4849 = !DILocation(line: 1046, column: 5, scope: !4832)
!4850 = !DILocation(line: 1047, column: 1, scope: !4832)
!4851 = distinct !DISubprogram(name: "sha3_512_inc_absorb", scope: !71, file: !71, line: 1049, type: !4852, scopeLine: 1049, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{null, !4815, !257, !15}
!4854 = !DILocalVariable(name: "state", arg: 1, scope: !4851, file: !71, line: 1049, type: !4815)
!4855 = !DILocation(line: 0, scope: !4851)
!4856 = !DILocalVariable(name: "input", arg: 2, scope: !4851, file: !71, line: 1049, type: !257)
!4857 = !DILocalVariable(name: "inlen", arg: 3, scope: !4851, file: !71, line: 1049, type: !15)
!4858 = !DILocation(line: 1050, column: 30, scope: !4851)
!4859 = !DILocation(line: 1050, column: 5, scope: !4851)
!4860 = !DILocation(line: 1051, column: 1, scope: !4851)
!4861 = distinct !DISubprogram(name: "sha3_512_inc_ctx_release", scope: !71, file: !71, line: 1053, type: !4813, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4862 = !DILocalVariable(name: "state", arg: 1, scope: !4861, file: !71, line: 1053, type: !4815)
!4863 = !DILocation(line: 0, scope: !4861)
!4864 = !DILocation(line: 1054, column: 17, scope: !4861)
!4865 = !DILocation(line: 1054, column: 5, scope: !4861)
!4866 = !DILocation(line: 1055, column: 1, scope: !4861)
!4867 = distinct !DISubprogram(name: "sha3_512_inc_finalize", scope: !71, file: !71, line: 1057, type: !4868, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{null, !11, !4815}
!4870 = !DILocalVariable(name: "output", arg: 1, scope: !4867, file: !71, line: 1057, type: !11)
!4871 = !DILocation(line: 0, scope: !4867)
!4872 = !DILocalVariable(name: "state", arg: 2, scope: !4867, file: !71, line: 1057, type: !4815)
!4873 = !DILocalVariable(name: "t", scope: !4867, file: !71, line: 1058, type: !4874)
!4874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 576, elements: !4875)
!4875 = !{!4876}
!4876 = !DISubrange(count: 72)
!4877 = !DILocation(line: 1058, column: 13, scope: !4867)
!4878 = !DILocation(line: 1059, column: 32, scope: !4867)
!4879 = !DILocation(line: 1059, column: 5, scope: !4867)
!4880 = !DILocation(line: 1061, column: 39, scope: !4867)
!4881 = !DILocation(line: 1061, column: 5, scope: !4867)
!4882 = !DILocation(line: 1063, column: 5, scope: !4867)
!4883 = !DILocalVariable(name: "i", scope: !4884, file: !71, line: 1065, type: !15)
!4884 = distinct !DILexicalBlock(scope: !4867, file: !71, line: 1065, column: 5)
!4885 = !DILocation(line: 0, scope: !4884)
!4886 = !DILocation(line: 1065, column: 10, scope: !4884)
!4887 = !DILocation(line: 1065, scope: !4884)
!4888 = !DILocation(line: 1065, column: 26, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4884, file: !71, line: 1065, column: 5)
!4890 = !DILocation(line: 1065, column: 5, scope: !4884)
!4891 = !DILocation(line: 1066, column: 21, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4889, file: !71, line: 1065, column: 37)
!4893 = !DILocation(line: 1066, column: 9, scope: !4892)
!4894 = !DILocation(line: 1066, column: 19, scope: !4892)
!4895 = !DILocation(line: 1065, column: 33, scope: !4889)
!4896 = !DILocation(line: 1065, column: 5, scope: !4889)
!4897 = distinct !{!4897, !4890, !4898, !244}
!4898 = !DILocation(line: 1067, column: 5, scope: !4884)
!4899 = !DILocation(line: 1068, column: 1, scope: !4867)
!4900 = distinct !DISubprogram(name: "sha3_512", scope: !71, file: !71, line: 1079, type: !4666, scopeLine: 1079, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4901 = !DILocalVariable(name: "output", arg: 1, scope: !4900, file: !71, line: 1079, type: !11)
!4902 = !DILocation(line: 0, scope: !4900)
!4903 = !DILocalVariable(name: "input", arg: 2, scope: !4900, file: !71, line: 1079, type: !257)
!4904 = !DILocalVariable(name: "inlen", arg: 3, scope: !4900, file: !71, line: 1079, type: !15)
!4905 = !DILocalVariable(name: "s", scope: !4900, file: !71, line: 1080, type: !4673)
!4906 = !DILocation(line: 1080, column: 14, scope: !4900)
!4907 = !DILocalVariable(name: "t", scope: !4900, file: !71, line: 1081, type: !4874)
!4908 = !DILocation(line: 1081, column: 13, scope: !4900)
!4909 = !DILocation(line: 1084, column: 5, scope: !4900)
!4910 = !DILocation(line: 1087, column: 5, scope: !4900)
!4911 = !DILocalVariable(name: "i", scope: !4912, file: !71, line: 1089, type: !15)
!4912 = distinct !DILexicalBlock(scope: !4900, file: !71, line: 1089, column: 5)
!4913 = !DILocation(line: 0, scope: !4912)
!4914 = !DILocation(line: 1089, column: 10, scope: !4912)
!4915 = !DILocation(line: 1089, scope: !4912)
!4916 = !DILocation(line: 1089, column: 26, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4912, file: !71, line: 1089, column: 5)
!4918 = !DILocation(line: 1089, column: 5, scope: !4912)
!4919 = !DILocation(line: 1090, column: 21, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4917, file: !71, line: 1089, column: 37)
!4921 = !DILocation(line: 1090, column: 9, scope: !4920)
!4922 = !DILocation(line: 1090, column: 19, scope: !4920)
!4923 = !DILocation(line: 1089, column: 33, scope: !4917)
!4924 = !DILocation(line: 1089, column: 5, scope: !4917)
!4925 = distinct !{!4925, !4918, !4926, !244}
!4926 = !DILocation(line: 1091, column: 5, scope: !4912)
!4927 = !DILocation(line: 1092, column: 1, scope: !4900)
!4928 = distinct !DISubprogram(name: "aes128_ecb_keyexp", scope: !80, file: !80, line: 635, type: !4929, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{null, !4931, !49}
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 32)
!4932 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes128ctx", file: !80, line: 46, baseType: !4933)
!4933 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 44, size: 32, elements: !4934)
!4934 = !{!4935}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !4933, file: !80, line: 45, baseType: !5, size: 32)
!4936 = !DILocalVariable(name: "r", arg: 1, scope: !4928, file: !80, line: 635, type: !4931)
!4937 = !DILocation(line: 0, scope: !4928)
!4938 = !DILocalVariable(name: "key", arg: 2, scope: !4928, file: !80, line: 635, type: !49)
!4939 = !DILocalVariable(name: "skey", scope: !4928, file: !80, line: 636, type: !4940)
!4940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1408, elements: !4941)
!4941 = !{!4942}
!4942 = !DISubrange(count: 22)
!4943 = !DILocation(line: 636, column: 14, scope: !4928)
!4944 = !DILocation(line: 638, column: 17, scope: !4928)
!4945 = !DILocation(line: 638, column: 15, scope: !4928)
!4946 = !DILocation(line: 639, column: 19, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4928, file: !80, line: 639, column: 9)
!4948 = !DILocation(line: 640, column: 9, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4947, file: !80, line: 639, column: 28)
!4950 = !DILocation(line: 641, column: 5, scope: !4949)
!4951 = !DILocation(line: 643, column: 5, scope: !4928)
!4952 = !DILocation(line: 644, column: 32, scope: !4928)
!4953 = !DILocation(line: 644, column: 5, scope: !4928)
!4954 = !DILocation(line: 645, column: 1, scope: !4928)
!4955 = distinct !DISubprogram(name: "br_aes_ct64_keysched", scope: !80, file: !80, line: 403, type: !4956, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{null, !5, !49, !17}
!4958 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !4955, file: !80, line: 403, type: !5)
!4959 = !DILocation(line: 0, scope: !4955)
!4960 = !DILocalVariable(name: "key", arg: 2, scope: !4955, file: !80, line: 403, type: !49)
!4961 = !DILocalVariable(name: "key_len", arg: 3, scope: !4955, file: !80, line: 403, type: !17)
!4962 = !DILocalVariable(name: "skey", scope: !4955, file: !80, line: 406, type: !4963)
!4963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1920, elements: !4964)
!4964 = !{!4965}
!4965 = !DISubrange(count: 60)
!4966 = !DILocation(line: 406, column: 14, scope: !4955)
!4967 = !DILocation(line: 410, column: 26, scope: !4955)
!4968 = !DILocalVariable(name: "nrounds", scope: !4955, file: !80, line: 407, type: !17)
!4969 = !DILocation(line: 409, column: 19, scope: !4955)
!4970 = !DILocalVariable(name: "nk", scope: !4955, file: !80, line: 404, type: !17)
!4971 = !DILocalVariable(name: "nkf", scope: !4955, file: !80, line: 404, type: !17)
!4972 = !DILocation(line: 411, column: 37, scope: !4955)
!4973 = !DILocation(line: 411, column: 5, scope: !4955)
!4974 = !DILocation(line: 412, column: 25, scope: !4955)
!4975 = !DILocation(line: 412, column: 31, scope: !4955)
!4976 = !DILocation(line: 412, column: 11, scope: !4955)
!4977 = !DILocalVariable(name: "tmp", scope: !4955, file: !80, line: 405, type: !19)
!4978 = !DILocalVariable(name: "i", scope: !4955, file: !80, line: 404, type: !17)
!4979 = !DILocalVariable(name: "j", scope: !4955, file: !80, line: 404, type: !17)
!4980 = !DILocalVariable(name: "k", scope: !4955, file: !80, line: 404, type: !17)
!4981 = !DILocation(line: 413, column: 10, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4955, file: !80, line: 413, column: 5)
!4983 = !DILocation(line: 413, scope: !4982)
!4984 = !DILocation(line: 0, scope: !4982)
!4985 = !DILocation(line: 413, column: 34, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4982, file: !80, line: 413, column: 5)
!4987 = !DILocation(line: 413, column: 5, scope: !4982)
!4988 = !DILocation(line: 428, column: 5, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4955, file: !80, line: 428, column: 5)
!4990 = !DILocation(line: 414, column: 15, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4992, file: !80, line: 414, column: 13)
!4992 = distinct !DILexicalBlock(scope: !4986, file: !80, line: 413, column: 47)
!4993 = !DILocation(line: 415, column: 31, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4991, file: !80, line: 414, column: 21)
!4995 = !DILocation(line: 416, column: 19, scope: !4994)
!4996 = !DILocation(line: 416, column: 35, scope: !4994)
!4997 = !DILocation(line: 416, column: 33, scope: !4994)
!4998 = !DILocation(line: 417, column: 9, scope: !4994)
!4999 = !DILocation(line: 417, column: 23, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4991, file: !80, line: 417, column: 20)
!5001 = !DILocation(line: 417, column: 27, scope: !5000)
!5002 = !DILocation(line: 418, column: 19, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !5000, file: !80, line: 417, column: 38)
!5004 = !DILocation(line: 419, column: 9, scope: !5003)
!5005 = !DILocation(line: 0, scope: !4991)
!5006 = !DILocation(line: 420, column: 23, scope: !4992)
!5007 = !DILocation(line: 420, column: 16, scope: !4992)
!5008 = !DILocation(line: 420, column: 13, scope: !4992)
!5009 = !DILocation(line: 421, column: 9, scope: !4992)
!5010 = !DILocation(line: 421, column: 17, scope: !4992)
!5011 = !DILocation(line: 422, column: 13, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !4992, file: !80, line: 422, column: 13)
!5013 = !DILocation(line: 422, column: 18, scope: !5012)
!5014 = !DILocation(line: 413, column: 43, scope: !4986)
!5015 = !DILocation(line: 413, column: 5, scope: !4986)
!5016 = distinct !{!5016, !4987, !5017, !244}
!5017 = !DILocation(line: 426, column: 5, scope: !4982)
!5018 = !DILocation(line: 428, scope: !4989)
!5019 = !DILocation(line: 428, column: 26, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !4989, file: !80, line: 428, column: 5)
!5021 = !DILocalVariable(name: "q", scope: !5022, file: !80, line: 429, type: !5023)
!5022 = distinct !DILexicalBlock(scope: !5020, file: !80, line: 428, column: 49)
!5023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !5024)
!5024 = !{!5025}
!5025 = !DISubrange(count: 8)
!5026 = !DILocation(line: 429, column: 18, scope: !5022)
!5027 = !DILocation(line: 431, column: 43, scope: !5022)
!5028 = !DILocation(line: 431, column: 54, scope: !5022)
!5029 = !DILocation(line: 431, column: 9, scope: !5022)
!5030 = !DILocation(line: 432, column: 16, scope: !5022)
!5031 = !DILocation(line: 432, column: 9, scope: !5022)
!5032 = !DILocation(line: 432, column: 14, scope: !5022)
!5033 = !DILocation(line: 433, column: 9, scope: !5022)
!5034 = !DILocation(line: 433, column: 14, scope: !5022)
!5035 = !DILocation(line: 434, column: 9, scope: !5022)
!5036 = !DILocation(line: 434, column: 14, scope: !5022)
!5037 = !DILocation(line: 435, column: 16, scope: !5022)
!5038 = !DILocation(line: 435, column: 9, scope: !5022)
!5039 = !DILocation(line: 435, column: 14, scope: !5022)
!5040 = !DILocation(line: 436, column: 9, scope: !5022)
!5041 = !DILocation(line: 436, column: 14, scope: !5022)
!5042 = !DILocation(line: 437, column: 9, scope: !5022)
!5043 = !DILocation(line: 437, column: 14, scope: !5022)
!5044 = !DILocation(line: 438, column: 9, scope: !5022)
!5045 = !DILocation(line: 440, column: 14, scope: !5022)
!5046 = !DILocation(line: 440, column: 19, scope: !5022)
!5047 = !DILocation(line: 441, column: 16, scope: !5022)
!5048 = !DILocation(line: 441, column: 21, scope: !5022)
!5049 = !DILocation(line: 441, column: 13, scope: !5022)
!5050 = !DILocation(line: 442, column: 16, scope: !5022)
!5051 = !DILocation(line: 442, column: 21, scope: !5022)
!5052 = !DILocation(line: 442, column: 13, scope: !5022)
!5053 = !DILocation(line: 443, column: 16, scope: !5022)
!5054 = !DILocation(line: 443, column: 21, scope: !5022)
!5055 = !DILocation(line: 443, column: 13, scope: !5022)
!5056 = !DILocation(line: 439, column: 9, scope: !5022)
!5057 = !DILocation(line: 439, column: 26, scope: !5022)
!5058 = !DILocation(line: 445, column: 14, scope: !5022)
!5059 = !DILocation(line: 445, column: 19, scope: !5022)
!5060 = !DILocation(line: 446, column: 16, scope: !5022)
!5061 = !DILocation(line: 446, column: 21, scope: !5022)
!5062 = !DILocation(line: 446, column: 13, scope: !5022)
!5063 = !DILocation(line: 447, column: 16, scope: !5022)
!5064 = !DILocation(line: 447, column: 21, scope: !5022)
!5065 = !DILocation(line: 447, column: 13, scope: !5022)
!5066 = !DILocation(line: 448, column: 16, scope: !5022)
!5067 = !DILocation(line: 448, column: 21, scope: !5022)
!5068 = !DILocation(line: 448, column: 13, scope: !5022)
!5069 = !DILocation(line: 444, column: 21, scope: !5022)
!5070 = !DILocation(line: 444, column: 9, scope: !5022)
!5071 = !DILocation(line: 444, column: 26, scope: !5022)
!5072 = !DILocation(line: 428, column: 35, scope: !5020)
!5073 = !DILocation(line: 428, column: 43, scope: !5020)
!5074 = !DILocation(line: 428, column: 5, scope: !5020)
!5075 = distinct !{!5075, !4988, !5076, !244}
!5076 = !DILocation(line: 449, column: 5, scope: !4989)
!5077 = !DILocation(line: 450, column: 1, scope: !4955)
!5078 = distinct !DISubprogram(name: "br_aes_ct64_skey_expand", scope: !80, file: !80, line: 452, type: !5079, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{null, !5, !428, !17}
!5081 = !DILocalVariable(name: "skey", arg: 1, scope: !5078, file: !80, line: 452, type: !5)
!5082 = !DILocation(line: 0, scope: !5078)
!5083 = !DILocalVariable(name: "comp_skey", arg: 2, scope: !5078, file: !80, line: 452, type: !428)
!5084 = !DILocalVariable(name: "nrounds", arg: 3, scope: !5078, file: !80, line: 452, type: !17)
!5085 = !DILocation(line: 455, column: 23, scope: !5078)
!5086 = !DILocalVariable(name: "n", scope: !5078, file: !80, line: 453, type: !17)
!5087 = !DILocalVariable(name: "u", scope: !5078, file: !80, line: 453, type: !17)
!5088 = !DILocalVariable(name: "v", scope: !5078, file: !80, line: 453, type: !17)
!5089 = !DILocation(line: 456, column: 10, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5078, file: !80, line: 456, column: 5)
!5091 = !DILocation(line: 456, scope: !5090)
!5092 = !DILocation(line: 456, column: 26, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5090, file: !80, line: 456, column: 5)
!5094 = !DILocation(line: 456, column: 5, scope: !5090)
!5095 = !DILocation(line: 459, column: 29, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5093, file: !80, line: 456, column: 45)
!5097 = !DILocalVariable(name: "x3", scope: !5096, file: !80, line: 457, type: !6)
!5098 = !DILocation(line: 0, scope: !5096)
!5099 = !DILocalVariable(name: "x2", scope: !5096, file: !80, line: 457, type: !6)
!5100 = !DILocalVariable(name: "x1", scope: !5096, file: !80, line: 457, type: !6)
!5101 = !DILocalVariable(name: "x0", scope: !5096, file: !80, line: 457, type: !6)
!5102 = !DILocation(line: 460, column: 12, scope: !5096)
!5103 = !DILocation(line: 464, column: 12, scope: !5096)
!5104 = !DILocation(line: 465, column: 12, scope: !5096)
!5105 = !DILocation(line: 466, column: 12, scope: !5096)
!5106 = !DILocation(line: 467, column: 33, scope: !5096)
!5107 = !DILocation(line: 467, column: 9, scope: !5096)
!5108 = !DILocation(line: 467, column: 21, scope: !5096)
!5109 = !DILocation(line: 468, column: 33, scope: !5096)
!5110 = !DILocation(line: 468, column: 16, scope: !5096)
!5111 = !DILocation(line: 468, column: 9, scope: !5096)
!5112 = !DILocation(line: 468, column: 21, scope: !5096)
!5113 = !DILocation(line: 469, column: 33, scope: !5096)
!5114 = !DILocation(line: 469, column: 16, scope: !5096)
!5115 = !DILocation(line: 469, column: 9, scope: !5096)
!5116 = !DILocation(line: 469, column: 21, scope: !5096)
!5117 = !DILocation(line: 470, column: 33, scope: !5096)
!5118 = !DILocation(line: 470, column: 16, scope: !5096)
!5119 = !DILocation(line: 470, column: 9, scope: !5096)
!5120 = !DILocation(line: 470, column: 21, scope: !5096)
!5121 = !DILocation(line: 456, column: 33, scope: !5093)
!5122 = !DILocation(line: 456, column: 39, scope: !5093)
!5123 = !DILocation(line: 456, column: 5, scope: !5093)
!5124 = distinct !{!5124, !5094, !5125, !244}
!5125 = !DILocation(line: 471, column: 5, scope: !5090)
!5126 = !DILocation(line: 472, column: 1, scope: !5078)
!5127 = distinct !DISubprogram(name: "br_range_dec32le", scope: !80, file: !80, line: 104, type: !5128, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{null, !5130, !15, !49}
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!5131 = !DILocalVariable(name: "v", arg: 1, scope: !5127, file: !80, line: 104, type: !5130)
!5132 = !DILocation(line: 0, scope: !5127)
!5133 = !DILocalVariable(name: "num", arg: 2, scope: !5127, file: !80, line: 104, type: !15)
!5134 = !DILocalVariable(name: "src", arg: 3, scope: !5127, file: !80, line: 104, type: !49)
!5135 = !DILocation(line: 105, column: 5, scope: !5127)
!5136 = !DILocation(line: 105, column: 18, scope: !5127)
!5137 = !DILocation(line: 105, column: 15, scope: !5127)
!5138 = !DILocation(line: 106, column: 17, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5127, file: !80, line: 105, column: 23)
!5140 = !DILocation(line: 106, column: 12, scope: !5139)
!5141 = !DILocation(line: 106, column: 15, scope: !5139)
!5142 = !DILocation(line: 107, column: 13, scope: !5139)
!5143 = distinct !{!5143, !5135, !5144, !244}
!5144 = !DILocation(line: 108, column: 5, scope: !5127)
!5145 = !DILocation(line: 109, column: 1, scope: !5127)
!5146 = distinct !DISubprogram(name: "sub_word", scope: !80, file: !80, line: 392, type: !5147, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5147 = !DISubroutineType(types: !5148)
!5148 = !{!19, !19}
!5149 = !DILocalVariable(name: "x", arg: 1, scope: !5146, file: !80, line: 392, type: !19)
!5150 = !DILocation(line: 0, scope: !5146)
!5151 = !DILocalVariable(name: "q", scope: !5146, file: !80, line: 393, type: !5023)
!5152 = !DILocation(line: 393, column: 14, scope: !5146)
!5153 = !DILocation(line: 395, column: 5, scope: !5146)
!5154 = !DILocation(line: 396, column: 12, scope: !5146)
!5155 = !DILocation(line: 396, column: 10, scope: !5146)
!5156 = !DILocation(line: 397, column: 5, scope: !5146)
!5157 = !DILocation(line: 398, column: 5, scope: !5146)
!5158 = !DILocation(line: 399, column: 5, scope: !5146)
!5159 = !DILocation(line: 400, column: 22, scope: !5146)
!5160 = !DILocation(line: 400, column: 12, scope: !5146)
!5161 = !DILocation(line: 400, column: 5, scope: !5146)
!5162 = distinct !DISubprogram(name: "br_aes_ct64_interleave_in", scope: !80, file: !80, line: 339, type: !5163, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{null, !5, !5, !5165}
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 32)
!5166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!5167 = !DILocalVariable(name: "q0", arg: 1, scope: !5162, file: !80, line: 339, type: !5)
!5168 = !DILocation(line: 0, scope: !5162)
!5169 = !DILocalVariable(name: "q1", arg: 2, scope: !5162, file: !80, line: 339, type: !5)
!5170 = !DILocalVariable(name: "w", arg: 3, scope: !5162, file: !80, line: 339, type: !5165)
!5171 = !DILocation(line: 342, column: 10, scope: !5162)
!5172 = !DILocalVariable(name: "x0", scope: !5162, file: !80, line: 340, type: !6)
!5173 = !DILocation(line: 343, column: 10, scope: !5162)
!5174 = !DILocalVariable(name: "x1", scope: !5162, file: !80, line: 340, type: !6)
!5175 = !DILocation(line: 344, column: 10, scope: !5162)
!5176 = !DILocalVariable(name: "x2", scope: !5162, file: !80, line: 340, type: !6)
!5177 = !DILocation(line: 345, column: 10, scope: !5162)
!5178 = !DILocalVariable(name: "x3", scope: !5162, file: !80, line: 340, type: !6)
!5179 = !DILocation(line: 346, column: 15, scope: !5162)
!5180 = !DILocation(line: 346, column: 8, scope: !5162)
!5181 = !DILocation(line: 347, column: 15, scope: !5162)
!5182 = !DILocation(line: 347, column: 8, scope: !5162)
!5183 = !DILocation(line: 348, column: 15, scope: !5162)
!5184 = !DILocation(line: 348, column: 8, scope: !5162)
!5185 = !DILocation(line: 349, column: 15, scope: !5162)
!5186 = !DILocation(line: 349, column: 8, scope: !5162)
!5187 = !DILocation(line: 350, column: 8, scope: !5162)
!5188 = !DILocation(line: 351, column: 8, scope: !5162)
!5189 = !DILocation(line: 352, column: 8, scope: !5162)
!5190 = !DILocation(line: 353, column: 8, scope: !5162)
!5191 = !DILocation(line: 354, column: 15, scope: !5162)
!5192 = !DILocation(line: 354, column: 8, scope: !5162)
!5193 = !DILocation(line: 355, column: 15, scope: !5162)
!5194 = !DILocation(line: 355, column: 8, scope: !5162)
!5195 = !DILocation(line: 358, column: 8, scope: !5162)
!5196 = !DILocation(line: 359, column: 8, scope: !5162)
!5197 = !DILocation(line: 362, column: 20, scope: !5162)
!5198 = !DILocation(line: 362, column: 14, scope: !5162)
!5199 = !DILocation(line: 362, column: 9, scope: !5162)
!5200 = !DILocation(line: 363, column: 20, scope: !5162)
!5201 = !DILocation(line: 363, column: 14, scope: !5162)
!5202 = !DILocation(line: 363, column: 9, scope: !5162)
!5203 = !DILocation(line: 364, column: 1, scope: !5162)
!5204 = distinct !DISubprogram(name: "br_aes_ct64_ortho", scope: !80, file: !80, line: 309, type: !26, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5205 = !DILocalVariable(name: "q", arg: 1, scope: !5204, file: !80, line: 309, type: !5)
!5206 = !DILocation(line: 0, scope: !5204)
!5207 = !DILocation(line: 322, column: 5, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5204, file: !80, line: 322, column: 5)
!5209 = !DILocalVariable(name: "a", scope: !5208, file: !80, line: 322, type: !6)
!5210 = !DILocation(line: 0, scope: !5208)
!5211 = !DILocalVariable(name: "b", scope: !5208, file: !80, line: 322, type: !6)
!5212 = !DILocation(line: 323, column: 5, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5204, file: !80, line: 323, column: 5)
!5214 = !DILocalVariable(name: "a", scope: !5213, file: !80, line: 323, type: !6)
!5215 = !DILocation(line: 0, scope: !5213)
!5216 = !DILocalVariable(name: "b", scope: !5213, file: !80, line: 323, type: !6)
!5217 = !DILocation(line: 324, column: 5, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5204, file: !80, line: 324, column: 5)
!5219 = !DILocalVariable(name: "a", scope: !5218, file: !80, line: 324, type: !6)
!5220 = !DILocation(line: 0, scope: !5218)
!5221 = !DILocalVariable(name: "b", scope: !5218, file: !80, line: 324, type: !6)
!5222 = !DILocation(line: 325, column: 5, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5204, file: !80, line: 325, column: 5)
!5224 = !DILocalVariable(name: "a", scope: !5223, file: !80, line: 325, type: !6)
!5225 = !DILocation(line: 0, scope: !5223)
!5226 = !DILocalVariable(name: "b", scope: !5223, file: !80, line: 325, type: !6)
!5227 = !DILocation(line: 327, column: 5, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5204, file: !80, line: 327, column: 5)
!5229 = !DILocalVariable(name: "a", scope: !5228, file: !80, line: 327, type: !6)
!5230 = !DILocation(line: 0, scope: !5228)
!5231 = !DILocalVariable(name: "b", scope: !5228, file: !80, line: 327, type: !6)
!5232 = !DILocation(line: 328, column: 5, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5204, file: !80, line: 328, column: 5)
!5234 = !DILocalVariable(name: "a", scope: !5233, file: !80, line: 328, type: !6)
!5235 = !DILocation(line: 0, scope: !5233)
!5236 = !DILocalVariable(name: "b", scope: !5233, file: !80, line: 328, type: !6)
!5237 = !DILocation(line: 329, column: 5, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5204, file: !80, line: 329, column: 5)
!5239 = !DILocalVariable(name: "a", scope: !5238, file: !80, line: 329, type: !6)
!5240 = !DILocation(line: 0, scope: !5238)
!5241 = !DILocalVariable(name: "b", scope: !5238, file: !80, line: 329, type: !6)
!5242 = !DILocation(line: 330, column: 5, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5204, file: !80, line: 330, column: 5)
!5244 = !DILocalVariable(name: "a", scope: !5243, file: !80, line: 330, type: !6)
!5245 = !DILocation(line: 0, scope: !5243)
!5246 = !DILocalVariable(name: "b", scope: !5243, file: !80, line: 330, type: !6)
!5247 = !DILocation(line: 332, column: 5, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5204, file: !80, line: 332, column: 5)
!5249 = !DILocalVariable(name: "a", scope: !5248, file: !80, line: 332, type: !6)
!5250 = !DILocation(line: 0, scope: !5248)
!5251 = !DILocalVariable(name: "b", scope: !5248, file: !80, line: 332, type: !6)
!5252 = !DILocation(line: 333, column: 5, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5204, file: !80, line: 333, column: 5)
!5254 = !DILocalVariable(name: "a", scope: !5253, file: !80, line: 333, type: !6)
!5255 = !DILocation(line: 0, scope: !5253)
!5256 = !DILocalVariable(name: "b", scope: !5253, file: !80, line: 333, type: !6)
!5257 = !DILocation(line: 334, column: 5, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5204, file: !80, line: 334, column: 5)
!5259 = !DILocalVariable(name: "a", scope: !5258, file: !80, line: 334, type: !6)
!5260 = !DILocation(line: 0, scope: !5258)
!5261 = !DILocalVariable(name: "b", scope: !5258, file: !80, line: 334, type: !6)
!5262 = !DILocation(line: 335, column: 5, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5204, file: !80, line: 335, column: 5)
!5264 = !DILocalVariable(name: "a", scope: !5263, file: !80, line: 335, type: !6)
!5265 = !DILocation(line: 0, scope: !5263)
!5266 = !DILocalVariable(name: "b", scope: !5263, file: !80, line: 335, type: !6)
!5267 = !DILocation(line: 336, column: 1, scope: !5204)
!5268 = distinct !DISubprogram(name: "br_aes_ct64_bitslice_Sbox", scope: !80, file: !80, line: 135, type: !26, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5269 = !DILocalVariable(name: "q", arg: 1, scope: !5268, file: !80, line: 135, type: !5)
!5270 = !DILocation(line: 0, scope: !5268)
!5271 = !DILocation(line: 161, column: 10, scope: !5268)
!5272 = !DILocalVariable(name: "x0", scope: !5268, file: !80, line: 146, type: !6)
!5273 = !DILocation(line: 162, column: 10, scope: !5268)
!5274 = !DILocalVariable(name: "x1", scope: !5268, file: !80, line: 146, type: !6)
!5275 = !DILocation(line: 163, column: 10, scope: !5268)
!5276 = !DILocalVariable(name: "x2", scope: !5268, file: !80, line: 146, type: !6)
!5277 = !DILocation(line: 164, column: 10, scope: !5268)
!5278 = !DILocalVariable(name: "x3", scope: !5268, file: !80, line: 146, type: !6)
!5279 = !DILocation(line: 165, column: 10, scope: !5268)
!5280 = !DILocalVariable(name: "x4", scope: !5268, file: !80, line: 146, type: !6)
!5281 = !DILocation(line: 166, column: 10, scope: !5268)
!5282 = !DILocalVariable(name: "x5", scope: !5268, file: !80, line: 146, type: !6)
!5283 = !DILocation(line: 167, column: 10, scope: !5268)
!5284 = !DILocalVariable(name: "x6", scope: !5268, file: !80, line: 146, type: !6)
!5285 = !DILocation(line: 168, column: 10, scope: !5268)
!5286 = !DILocalVariable(name: "x7", scope: !5268, file: !80, line: 146, type: !6)
!5287 = !DILocation(line: 173, column: 14, scope: !5268)
!5288 = !DILocalVariable(name: "y14", scope: !5268, file: !80, line: 148, type: !6)
!5289 = !DILocation(line: 174, column: 14, scope: !5268)
!5290 = !DILocalVariable(name: "y13", scope: !5268, file: !80, line: 148, type: !6)
!5291 = !DILocation(line: 175, column: 13, scope: !5268)
!5292 = !DILocalVariable(name: "y9", scope: !5268, file: !80, line: 147, type: !6)
!5293 = !DILocation(line: 176, column: 13, scope: !5268)
!5294 = !DILocalVariable(name: "y8", scope: !5268, file: !80, line: 147, type: !6)
!5295 = !DILocation(line: 177, column: 13, scope: !5268)
!5296 = !DILocalVariable(name: "t0", scope: !5268, file: !80, line: 152, type: !6)
!5297 = !DILocation(line: 178, column: 13, scope: !5268)
!5298 = !DILocalVariable(name: "y1", scope: !5268, file: !80, line: 147, type: !6)
!5299 = !DILocation(line: 179, column: 13, scope: !5268)
!5300 = !DILocalVariable(name: "y4", scope: !5268, file: !80, line: 147, type: !6)
!5301 = !DILocation(line: 180, column: 15, scope: !5268)
!5302 = !DILocalVariable(name: "y12", scope: !5268, file: !80, line: 148, type: !6)
!5303 = !DILocation(line: 181, column: 13, scope: !5268)
!5304 = !DILocalVariable(name: "y2", scope: !5268, file: !80, line: 147, type: !6)
!5305 = !DILocation(line: 182, column: 13, scope: !5268)
!5306 = !DILocalVariable(name: "y5", scope: !5268, file: !80, line: 147, type: !6)
!5307 = !DILocation(line: 183, column: 13, scope: !5268)
!5308 = !DILocalVariable(name: "y3", scope: !5268, file: !80, line: 147, type: !6)
!5309 = !DILocation(line: 184, column: 13, scope: !5268)
!5310 = !DILocalVariable(name: "t1", scope: !5268, file: !80, line: 152, type: !6)
!5311 = !DILocation(line: 185, column: 14, scope: !5268)
!5312 = !DILocalVariable(name: "y15", scope: !5268, file: !80, line: 148, type: !6)
!5313 = !DILocation(line: 186, column: 14, scope: !5268)
!5314 = !DILocalVariable(name: "y20", scope: !5268, file: !80, line: 149, type: !6)
!5315 = !DILocation(line: 187, column: 14, scope: !5268)
!5316 = !DILocalVariable(name: "y6", scope: !5268, file: !80, line: 147, type: !6)
!5317 = !DILocation(line: 188, column: 15, scope: !5268)
!5318 = !DILocalVariable(name: "y10", scope: !5268, file: !80, line: 148, type: !6)
!5319 = !DILocation(line: 189, column: 15, scope: !5268)
!5320 = !DILocalVariable(name: "y11", scope: !5268, file: !80, line: 148, type: !6)
!5321 = !DILocation(line: 190, column: 13, scope: !5268)
!5322 = !DILocalVariable(name: "y7", scope: !5268, file: !80, line: 147, type: !6)
!5323 = !DILocation(line: 191, column: 15, scope: !5268)
!5324 = !DILocalVariable(name: "y17", scope: !5268, file: !80, line: 148, type: !6)
!5325 = !DILocalVariable(name: "y19", scope: !5268, file: !80, line: 148, type: !6)
!5326 = !DILocation(line: 193, column: 14, scope: !5268)
!5327 = !DILocalVariable(name: "y16", scope: !5268, file: !80, line: 148, type: !6)
!5328 = !DILocalVariable(name: "y21", scope: !5268, file: !80, line: 149, type: !6)
!5329 = !DILocalVariable(name: "y18", scope: !5268, file: !80, line: 148, type: !6)
!5330 = !DILocation(line: 200, column: 14, scope: !5268)
!5331 = !DILocalVariable(name: "t2", scope: !5268, file: !80, line: 152, type: !6)
!5332 = !DILocation(line: 201, column: 13, scope: !5268)
!5333 = !DILocalVariable(name: "t3", scope: !5268, file: !80, line: 152, type: !6)
!5334 = !DILocation(line: 202, column: 13, scope: !5268)
!5335 = !DILocalVariable(name: "t4", scope: !5268, file: !80, line: 152, type: !6)
!5336 = !DILocation(line: 203, column: 13, scope: !5268)
!5337 = !DILocalVariable(name: "t5", scope: !5268, file: !80, line: 152, type: !6)
!5338 = !DILocalVariable(name: "t6", scope: !5268, file: !80, line: 152, type: !6)
!5339 = !DILocation(line: 205, column: 14, scope: !5268)
!5340 = !DILocalVariable(name: "t7", scope: !5268, file: !80, line: 152, type: !6)
!5341 = !DILocation(line: 206, column: 13, scope: !5268)
!5342 = !DILocalVariable(name: "t8", scope: !5268, file: !80, line: 152, type: !6)
!5343 = !DILocalVariable(name: "t9", scope: !5268, file: !80, line: 152, type: !6)
!5344 = !DILocation(line: 208, column: 14, scope: !5268)
!5345 = !DILocalVariable(name: "t10", scope: !5268, file: !80, line: 153, type: !6)
!5346 = !DILocalVariable(name: "t11", scope: !5268, file: !80, line: 153, type: !6)
!5347 = !DILocation(line: 210, column: 14, scope: !5268)
!5348 = !DILocalVariable(name: "t12", scope: !5268, file: !80, line: 153, type: !6)
!5349 = !DILocation(line: 211, column: 15, scope: !5268)
!5350 = !DILocalVariable(name: "t13", scope: !5268, file: !80, line: 153, type: !6)
!5351 = !DILocation(line: 212, column: 15, scope: !5268)
!5352 = !DILocalVariable(name: "t14", scope: !5268, file: !80, line: 153, type: !6)
!5353 = !DILocation(line: 213, column: 14, scope: !5268)
!5354 = !DILocalVariable(name: "t15", scope: !5268, file: !80, line: 153, type: !6)
!5355 = !DILocation(line: 214, column: 15, scope: !5268)
!5356 = !DILocalVariable(name: "t16", scope: !5268, file: !80, line: 153, type: !6)
!5357 = !DILocation(line: 215, column: 14, scope: !5268)
!5358 = !DILocalVariable(name: "t17", scope: !5268, file: !80, line: 153, type: !6)
!5359 = !DILocalVariable(name: "t18", scope: !5268, file: !80, line: 153, type: !6)
!5360 = !DILocalVariable(name: "t19", scope: !5268, file: !80, line: 153, type: !6)
!5361 = !DILocalVariable(name: "t20", scope: !5268, file: !80, line: 154, type: !6)
!5362 = !DILocation(line: 219, column: 15, scope: !5268)
!5363 = !DILocalVariable(name: "t21", scope: !5268, file: !80, line: 154, type: !6)
!5364 = !DILocation(line: 220, column: 15, scope: !5268)
!5365 = !DILocalVariable(name: "t22", scope: !5268, file: !80, line: 154, type: !6)
!5366 = !DILocation(line: 221, column: 15, scope: !5268)
!5367 = !DILocalVariable(name: "t23", scope: !5268, file: !80, line: 154, type: !6)
!5368 = !DILocation(line: 222, column: 15, scope: !5268)
!5369 = !DILocalVariable(name: "t24", scope: !5268, file: !80, line: 154, type: !6)
!5370 = !DILocation(line: 224, column: 15, scope: !5268)
!5371 = !DILocalVariable(name: "t25", scope: !5268, file: !80, line: 154, type: !6)
!5372 = !DILocation(line: 225, column: 15, scope: !5268)
!5373 = !DILocalVariable(name: "t26", scope: !5268, file: !80, line: 154, type: !6)
!5374 = !DILocation(line: 226, column: 15, scope: !5268)
!5375 = !DILocalVariable(name: "t27", scope: !5268, file: !80, line: 154, type: !6)
!5376 = !DILocation(line: 227, column: 15, scope: !5268)
!5377 = !DILocalVariable(name: "t28", scope: !5268, file: !80, line: 154, type: !6)
!5378 = !DILocation(line: 228, column: 15, scope: !5268)
!5379 = !DILocalVariable(name: "t29", scope: !5268, file: !80, line: 154, type: !6)
!5380 = !DILocation(line: 229, column: 15, scope: !5268)
!5381 = !DILocalVariable(name: "t30", scope: !5268, file: !80, line: 155, type: !6)
!5382 = !DILocation(line: 230, column: 15, scope: !5268)
!5383 = !DILocalVariable(name: "t31", scope: !5268, file: !80, line: 155, type: !6)
!5384 = !DILocation(line: 231, column: 15, scope: !5268)
!5385 = !DILocalVariable(name: "t32", scope: !5268, file: !80, line: 155, type: !6)
!5386 = !DILocation(line: 232, column: 15, scope: !5268)
!5387 = !DILocalVariable(name: "t33", scope: !5268, file: !80, line: 155, type: !6)
!5388 = !DILocation(line: 233, column: 15, scope: !5268)
!5389 = !DILocalVariable(name: "t34", scope: !5268, file: !80, line: 155, type: !6)
!5390 = !DILocation(line: 234, column: 15, scope: !5268)
!5391 = !DILocalVariable(name: "t35", scope: !5268, file: !80, line: 155, type: !6)
!5392 = !DILocation(line: 235, column: 15, scope: !5268)
!5393 = !DILocalVariable(name: "t36", scope: !5268, file: !80, line: 155, type: !6)
!5394 = !DILocation(line: 236, column: 15, scope: !5268)
!5395 = !DILocalVariable(name: "t37", scope: !5268, file: !80, line: 155, type: !6)
!5396 = !DILocation(line: 237, column: 15, scope: !5268)
!5397 = !DILocalVariable(name: "t38", scope: !5268, file: !80, line: 155, type: !6)
!5398 = !DILocation(line: 238, column: 15, scope: !5268)
!5399 = !DILocalVariable(name: "t39", scope: !5268, file: !80, line: 155, type: !6)
!5400 = !DILocation(line: 239, column: 15, scope: !5268)
!5401 = !DILocalVariable(name: "t40", scope: !5268, file: !80, line: 156, type: !6)
!5402 = !DILocation(line: 241, column: 15, scope: !5268)
!5403 = !DILocalVariable(name: "t41", scope: !5268, file: !80, line: 156, type: !6)
!5404 = !DILocation(line: 242, column: 15, scope: !5268)
!5405 = !DILocalVariable(name: "t42", scope: !5268, file: !80, line: 156, type: !6)
!5406 = !DILocation(line: 243, column: 15, scope: !5268)
!5407 = !DILocalVariable(name: "t43", scope: !5268, file: !80, line: 156, type: !6)
!5408 = !DILocation(line: 244, column: 15, scope: !5268)
!5409 = !DILocalVariable(name: "t44", scope: !5268, file: !80, line: 156, type: !6)
!5410 = !DILocation(line: 245, column: 15, scope: !5268)
!5411 = !DILocalVariable(name: "t45", scope: !5268, file: !80, line: 156, type: !6)
!5412 = !DILocation(line: 246, column: 14, scope: !5268)
!5413 = !DILocalVariable(name: "z0", scope: !5268, file: !80, line: 150, type: !6)
!5414 = !DILocation(line: 247, column: 14, scope: !5268)
!5415 = !DILocalVariable(name: "z1", scope: !5268, file: !80, line: 150, type: !6)
!5416 = !DILocation(line: 248, column: 14, scope: !5268)
!5417 = !DILocalVariable(name: "z2", scope: !5268, file: !80, line: 150, type: !6)
!5418 = !DILocation(line: 249, column: 14, scope: !5268)
!5419 = !DILocalVariable(name: "z3", scope: !5268, file: !80, line: 150, type: !6)
!5420 = !DILocation(line: 250, column: 14, scope: !5268)
!5421 = !DILocalVariable(name: "z4", scope: !5268, file: !80, line: 150, type: !6)
!5422 = !DILocation(line: 251, column: 14, scope: !5268)
!5423 = !DILocalVariable(name: "z5", scope: !5268, file: !80, line: 150, type: !6)
!5424 = !DILocation(line: 252, column: 14, scope: !5268)
!5425 = !DILocalVariable(name: "z6", scope: !5268, file: !80, line: 150, type: !6)
!5426 = !DILocation(line: 253, column: 14, scope: !5268)
!5427 = !DILocalVariable(name: "z7", scope: !5268, file: !80, line: 150, type: !6)
!5428 = !DILocation(line: 254, column: 14, scope: !5268)
!5429 = !DILocalVariable(name: "z8", scope: !5268, file: !80, line: 150, type: !6)
!5430 = !DILocation(line: 255, column: 14, scope: !5268)
!5431 = !DILocalVariable(name: "z9", scope: !5268, file: !80, line: 150, type: !6)
!5432 = !DILocation(line: 256, column: 15, scope: !5268)
!5433 = !DILocalVariable(name: "z10", scope: !5268, file: !80, line: 151, type: !6)
!5434 = !DILocation(line: 257, column: 15, scope: !5268)
!5435 = !DILocalVariable(name: "z11", scope: !5268, file: !80, line: 151, type: !6)
!5436 = !DILocation(line: 258, column: 15, scope: !5268)
!5437 = !DILocalVariable(name: "z12", scope: !5268, file: !80, line: 151, type: !6)
!5438 = !DILocation(line: 259, column: 15, scope: !5268)
!5439 = !DILocalVariable(name: "z13", scope: !5268, file: !80, line: 151, type: !6)
!5440 = !DILocation(line: 260, column: 15, scope: !5268)
!5441 = !DILocalVariable(name: "z14", scope: !5268, file: !80, line: 151, type: !6)
!5442 = !DILocation(line: 261, column: 15, scope: !5268)
!5443 = !DILocalVariable(name: "z15", scope: !5268, file: !80, line: 151, type: !6)
!5444 = !DILocation(line: 262, column: 15, scope: !5268)
!5445 = !DILocalVariable(name: "z16", scope: !5268, file: !80, line: 151, type: !6)
!5446 = !DILocation(line: 263, column: 15, scope: !5268)
!5447 = !DILocalVariable(name: "z17", scope: !5268, file: !80, line: 151, type: !6)
!5448 = !DILocation(line: 268, column: 15, scope: !5268)
!5449 = !DILocalVariable(name: "t46", scope: !5268, file: !80, line: 156, type: !6)
!5450 = !DILocation(line: 269, column: 15, scope: !5268)
!5451 = !DILocalVariable(name: "t47", scope: !5268, file: !80, line: 156, type: !6)
!5452 = !DILocation(line: 270, column: 14, scope: !5268)
!5453 = !DILocalVariable(name: "t48", scope: !5268, file: !80, line: 156, type: !6)
!5454 = !DILocation(line: 271, column: 14, scope: !5268)
!5455 = !DILocalVariable(name: "t49", scope: !5268, file: !80, line: 156, type: !6)
!5456 = !DILocation(line: 272, column: 14, scope: !5268)
!5457 = !DILocalVariable(name: "t50", scope: !5268, file: !80, line: 157, type: !6)
!5458 = !DILocation(line: 273, column: 14, scope: !5268)
!5459 = !DILocalVariable(name: "t51", scope: !5268, file: !80, line: 157, type: !6)
!5460 = !DILocation(line: 274, column: 14, scope: !5268)
!5461 = !DILocalVariable(name: "t52", scope: !5268, file: !80, line: 157, type: !6)
!5462 = !DILocation(line: 275, column: 14, scope: !5268)
!5463 = !DILocalVariable(name: "t53", scope: !5268, file: !80, line: 157, type: !6)
!5464 = !DILocation(line: 276, column: 14, scope: !5268)
!5465 = !DILocalVariable(name: "t54", scope: !5268, file: !80, line: 157, type: !6)
!5466 = !DILocation(line: 277, column: 15, scope: !5268)
!5467 = !DILocalVariable(name: "t55", scope: !5268, file: !80, line: 157, type: !6)
!5468 = !DILocation(line: 278, column: 15, scope: !5268)
!5469 = !DILocalVariable(name: "t56", scope: !5268, file: !80, line: 157, type: !6)
!5470 = !DILocation(line: 279, column: 15, scope: !5268)
!5471 = !DILocalVariable(name: "t57", scope: !5268, file: !80, line: 157, type: !6)
!5472 = !DILocation(line: 280, column: 14, scope: !5268)
!5473 = !DILocalVariable(name: "t58", scope: !5268, file: !80, line: 157, type: !6)
!5474 = !DILocation(line: 281, column: 14, scope: !5268)
!5475 = !DILocalVariable(name: "t59", scope: !5268, file: !80, line: 157, type: !6)
!5476 = !DILocation(line: 282, column: 15, scope: !5268)
!5477 = !DILocalVariable(name: "t60", scope: !5268, file: !80, line: 158, type: !6)
!5478 = !DILocation(line: 283, column: 15, scope: !5268)
!5479 = !DILocalVariable(name: "t61", scope: !5268, file: !80, line: 158, type: !6)
!5480 = !DILocation(line: 284, column: 15, scope: !5268)
!5481 = !DILocalVariable(name: "t62", scope: !5268, file: !80, line: 158, type: !6)
!5482 = !DILocation(line: 285, column: 15, scope: !5268)
!5483 = !DILocalVariable(name: "t63", scope: !5268, file: !80, line: 158, type: !6)
!5484 = !DILocation(line: 286, column: 14, scope: !5268)
!5485 = !DILocalVariable(name: "t64", scope: !5268, file: !80, line: 158, type: !6)
!5486 = !DILocation(line: 287, column: 15, scope: !5268)
!5487 = !DILocalVariable(name: "t65", scope: !5268, file: !80, line: 158, type: !6)
!5488 = !DILocation(line: 288, column: 14, scope: !5268)
!5489 = !DILocalVariable(name: "t66", scope: !5268, file: !80, line: 158, type: !6)
!5490 = !DILocation(line: 289, column: 14, scope: !5268)
!5491 = !DILocalVariable(name: "s0", scope: !5268, file: !80, line: 159, type: !6)
!5492 = !DILocation(line: 290, column: 14, scope: !5268)
!5493 = !DILocalVariable(name: "s6", scope: !5268, file: !80, line: 159, type: !6)
!5494 = !DILocation(line: 291, column: 14, scope: !5268)
!5495 = !DILocalVariable(name: "s7", scope: !5268, file: !80, line: 159, type: !6)
!5496 = !DILocalVariable(name: "t67", scope: !5268, file: !80, line: 158, type: !6)
!5497 = !DILocation(line: 293, column: 14, scope: !5268)
!5498 = !DILocalVariable(name: "s3", scope: !5268, file: !80, line: 159, type: !6)
!5499 = !DILocation(line: 294, column: 14, scope: !5268)
!5500 = !DILocalVariable(name: "s4", scope: !5268, file: !80, line: 159, type: !6)
!5501 = !DILocation(line: 295, column: 14, scope: !5268)
!5502 = !DILocalVariable(name: "s5", scope: !5268, file: !80, line: 159, type: !6)
!5503 = !DILocation(line: 296, column: 14, scope: !5268)
!5504 = !DILocalVariable(name: "s1", scope: !5268, file: !80, line: 159, type: !6)
!5505 = !DILocation(line: 297, column: 14, scope: !5268)
!5506 = !DILocalVariable(name: "s2", scope: !5268, file: !80, line: 159, type: !6)
!5507 = !DILocation(line: 299, column: 5, scope: !5268)
!5508 = !DILocation(line: 299, column: 10, scope: !5268)
!5509 = !DILocation(line: 300, column: 5, scope: !5268)
!5510 = !DILocation(line: 300, column: 10, scope: !5268)
!5511 = !DILocation(line: 301, column: 5, scope: !5268)
!5512 = !DILocation(line: 301, column: 10, scope: !5268)
!5513 = !DILocation(line: 302, column: 5, scope: !5268)
!5514 = !DILocation(line: 302, column: 10, scope: !5268)
!5515 = !DILocation(line: 303, column: 5, scope: !5268)
!5516 = !DILocation(line: 303, column: 10, scope: !5268)
!5517 = !DILocation(line: 304, column: 5, scope: !5268)
!5518 = !DILocation(line: 304, column: 10, scope: !5268)
!5519 = !DILocation(line: 305, column: 5, scope: !5268)
!5520 = !DILocation(line: 305, column: 10, scope: !5268)
!5521 = !DILocation(line: 306, column: 10, scope: !5268)
!5522 = !DILocation(line: 307, column: 1, scope: !5268)
!5523 = distinct !DISubprogram(name: "br_dec32le", scope: !80, file: !80, line: 96, type: !5524, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5524 = !DISubroutineType(types: !5525)
!5525 = !{!19, !49}
!5526 = !DILocalVariable(name: "src", arg: 1, scope: !5523, file: !80, line: 96, type: !49)
!5527 = !DILocation(line: 0, scope: !5523)
!5528 = !DILocation(line: 97, column: 22, scope: !5523)
!5529 = !DILocation(line: 97, column: 12, scope: !5523)
!5530 = !DILocation(line: 98, column: 25, scope: !5523)
!5531 = !DILocation(line: 98, column: 15, scope: !5523)
!5532 = !DILocation(line: 98, column: 32, scope: !5523)
!5533 = !DILocation(line: 98, column: 12, scope: !5523)
!5534 = !DILocation(line: 99, column: 25, scope: !5523)
!5535 = !DILocation(line: 99, column: 15, scope: !5523)
!5536 = !DILocation(line: 99, column: 32, scope: !5523)
!5537 = !DILocation(line: 99, column: 12, scope: !5523)
!5538 = !DILocation(line: 100, column: 25, scope: !5523)
!5539 = !DILocation(line: 100, column: 15, scope: !5523)
!5540 = !DILocation(line: 100, column: 32, scope: !5523)
!5541 = !DILocation(line: 100, column: 12, scope: !5523)
!5542 = !DILocation(line: 97, column: 5, scope: !5523)
!5543 = distinct !DISubprogram(name: "aes128_ctr_keyexp", scope: !80, file: !80, line: 647, type: !4929, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5544 = !DILocalVariable(name: "r", arg: 1, scope: !5543, file: !80, line: 647, type: !4931)
!5545 = !DILocation(line: 0, scope: !5543)
!5546 = !DILocalVariable(name: "key", arg: 2, scope: !5543, file: !80, line: 647, type: !49)
!5547 = !DILocation(line: 648, column: 5, scope: !5543)
!5548 = !DILocation(line: 649, column: 1, scope: !5543)
!5549 = distinct !DISubprogram(name: "aes192_ecb_keyexp", scope: !80, file: !80, line: 652, type: !5550, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5550 = !DISubroutineType(types: !5551)
!5551 = !{null, !5552, !49}
!5552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5553, size: 32)
!5553 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes192ctx", file: !80, line: 51, baseType: !5554)
!5554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 49, size: 32, elements: !5555)
!5555 = !{!5556}
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5554, file: !80, line: 50, baseType: !5, size: 32)
!5557 = !DILocalVariable(name: "r", arg: 1, scope: !5549, file: !80, line: 652, type: !5552)
!5558 = !DILocation(line: 0, scope: !5549)
!5559 = !DILocalVariable(name: "key", arg: 2, scope: !5549, file: !80, line: 652, type: !49)
!5560 = !DILocalVariable(name: "skey", scope: !5549, file: !80, line: 653, type: !5561)
!5561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1664, elements: !5562)
!5562 = !{!5563}
!5563 = !DISubrange(count: 26)
!5564 = !DILocation(line: 653, column: 14, scope: !5549)
!5565 = !DILocation(line: 654, column: 17, scope: !5549)
!5566 = !DILocation(line: 654, column: 15, scope: !5549)
!5567 = !DILocation(line: 655, column: 19, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5549, file: !80, line: 655, column: 9)
!5569 = !DILocation(line: 656, column: 9, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5568, file: !80, line: 655, column: 28)
!5571 = !DILocation(line: 657, column: 5, scope: !5570)
!5572 = !DILocation(line: 659, column: 5, scope: !5549)
!5573 = !DILocation(line: 660, column: 32, scope: !5549)
!5574 = !DILocation(line: 660, column: 5, scope: !5549)
!5575 = !DILocation(line: 661, column: 1, scope: !5549)
!5576 = distinct !DISubprogram(name: "aes192_ctr_keyexp", scope: !80, file: !80, line: 664, type: !5550, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5577 = !DILocalVariable(name: "r", arg: 1, scope: !5576, file: !80, line: 664, type: !5552)
!5578 = !DILocation(line: 0, scope: !5576)
!5579 = !DILocalVariable(name: "key", arg: 2, scope: !5576, file: !80, line: 664, type: !49)
!5580 = !DILocation(line: 665, column: 5, scope: !5576)
!5581 = !DILocation(line: 666, column: 1, scope: !5576)
!5582 = distinct !DISubprogram(name: "aes256_ecb_keyexp", scope: !80, file: !80, line: 669, type: !5583, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5583 = !DISubroutineType(types: !5584)
!5584 = !{null, !5585, !49}
!5585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5586, size: 32)
!5586 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes256ctx", file: !80, line: 56, baseType: !5587)
!5587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 54, size: 32, elements: !5588)
!5588 = !{!5589}
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5587, file: !80, line: 55, baseType: !5, size: 32)
!5590 = !DILocalVariable(name: "r", arg: 1, scope: !5582, file: !80, line: 669, type: !5585)
!5591 = !DILocation(line: 0, scope: !5582)
!5592 = !DILocalVariable(name: "key", arg: 2, scope: !5582, file: !80, line: 669, type: !49)
!5593 = !DILocalVariable(name: "skey", scope: !5582, file: !80, line: 670, type: !5594)
!5594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1920, elements: !5595)
!5595 = !{!5596}
!5596 = !DISubrange(count: 30)
!5597 = !DILocation(line: 670, column: 14, scope: !5582)
!5598 = !DILocation(line: 671, column: 17, scope: !5582)
!5599 = !DILocation(line: 671, column: 15, scope: !5582)
!5600 = !DILocation(line: 672, column: 19, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5582, file: !80, line: 672, column: 9)
!5602 = !DILocation(line: 673, column: 9, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5601, file: !80, line: 672, column: 28)
!5604 = !DILocation(line: 674, column: 5, scope: !5603)
!5605 = !DILocation(line: 676, column: 5, scope: !5582)
!5606 = !DILocation(line: 677, column: 32, scope: !5582)
!5607 = !DILocation(line: 677, column: 5, scope: !5582)
!5608 = !DILocation(line: 678, column: 1, scope: !5582)
!5609 = distinct !DISubprogram(name: "aes256_ctr_keyexp", scope: !80, file: !80, line: 681, type: !5583, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5610 = !DILocalVariable(name: "r", arg: 1, scope: !5609, file: !80, line: 681, type: !5585)
!5611 = !DILocation(line: 0, scope: !5609)
!5612 = !DILocalVariable(name: "key", arg: 2, scope: !5609, file: !80, line: 681, type: !49)
!5613 = !DILocation(line: 682, column: 5, scope: !5609)
!5614 = !DILocation(line: 683, column: 1, scope: !5609)
!5615 = distinct !DISubprogram(name: "aes128_ecb", scope: !80, file: !80, line: 686, type: !5616, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5616 = !DISubroutineType(types: !5617)
!5617 = !{null, !18, !49, !15, !5618}
!5618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5619, size: 32)
!5619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4932)
!5620 = !DILocalVariable(name: "out", arg: 1, scope: !5615, file: !80, line: 686, type: !18)
!5621 = !DILocation(line: 0, scope: !5615)
!5622 = !DILocalVariable(name: "in", arg: 2, scope: !5615, file: !80, line: 686, type: !49)
!5623 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5615, file: !80, line: 686, type: !15)
!5624 = !DILocalVariable(name: "ctx", arg: 4, scope: !5615, file: !80, line: 686, type: !5618)
!5625 = !DILocation(line: 687, column: 36, scope: !5615)
!5626 = !DILocation(line: 687, column: 5, scope: !5615)
!5627 = !DILocation(line: 688, column: 1, scope: !5615)
!5628 = distinct !DISubprogram(name: "aes_ecb", scope: !80, file: !80, line: 587, type: !5629, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5629 = !DISubroutineType(types: !5630)
!5630 = !{null, !18, !49, !15, !428, !17}
!5631 = !DILocalVariable(name: "out", arg: 1, scope: !5628, file: !80, line: 587, type: !18)
!5632 = !DILocation(line: 0, scope: !5628)
!5633 = !DILocalVariable(name: "in", arg: 2, scope: !5628, file: !80, line: 587, type: !49)
!5634 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5628, file: !80, line: 587, type: !15)
!5635 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5628, file: !80, line: 587, type: !428)
!5636 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5628, file: !80, line: 587, type: !17)
!5637 = !DILocalVariable(name: "blocks", scope: !5628, file: !80, line: 588, type: !5638)
!5638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !117)
!5639 = !DILocation(line: 588, column: 14, scope: !5628)
!5640 = !DILocalVariable(name: "t", scope: !5628, file: !80, line: 589, type: !5641)
!5641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !5642)
!5642 = !{!5643}
!5643 = !DISubrange(count: 64)
!5644 = !DILocation(line: 589, column: 19, scope: !5628)
!5645 = !DILocation(line: 591, column: 5, scope: !5628)
!5646 = !DILocation(line: 591, column: 20, scope: !5628)
!5647 = !DILocation(line: 592, column: 9, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5628, file: !80, line: 591, column: 26)
!5649 = !DILocation(line: 593, column: 9, scope: !5648)
!5650 = !DILocation(line: 594, column: 17, scope: !5648)
!5651 = !DILocation(line: 595, column: 12, scope: !5648)
!5652 = !DILocation(line: 596, column: 13, scope: !5648)
!5653 = distinct !{!5653, !5645, !5654, !244}
!5654 = !DILocation(line: 597, column: 5, scope: !5628)
!5655 = !DILocation(line: 599, column: 9, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5628, file: !80, line: 599, column: 9)
!5657 = !DILocation(line: 600, column: 42, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5656, file: !80, line: 599, column: 18)
!5659 = !DILocation(line: 600, column: 9, scope: !5658)
!5660 = !DILocation(line: 601, column: 9, scope: !5658)
!5661 = !DILocation(line: 602, column: 32, scope: !5658)
!5662 = !DILocation(line: 602, column: 9, scope: !5658)
!5663 = !DILocation(line: 603, column: 5, scope: !5658)
!5664 = !DILocation(line: 604, column: 1, scope: !5628)
!5665 = distinct !DISubprogram(name: "aes_ecb4x", scope: !80, file: !80, line: 545, type: !5666, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5666 = !DISubroutineType(types: !5667)
!5667 = !{null, !18, !5165, !428, !17}
!5668 = !DILocalVariable(name: "out", arg: 1, scope: !5665, file: !80, line: 545, type: !18)
!5669 = !DILocation(line: 0, scope: !5665)
!5670 = !DILocalVariable(name: "ivw", arg: 2, scope: !5665, file: !80, line: 545, type: !5165)
!5671 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !5665, file: !80, line: 545, type: !428)
!5672 = !DILocalVariable(name: "nrounds", arg: 4, scope: !5665, file: !80, line: 545, type: !17)
!5673 = !DILocalVariable(name: "w", scope: !5665, file: !80, line: 546, type: !5638)
!5674 = !DILocation(line: 546, column: 14, scope: !5665)
!5675 = !DILocalVariable(name: "q", scope: !5665, file: !80, line: 547, type: !5023)
!5676 = !DILocation(line: 547, column: 14, scope: !5665)
!5677 = !DILocation(line: 550, column: 5, scope: !5665)
!5678 = !DILocalVariable(name: "i", scope: !5665, file: !80, line: 548, type: !17)
!5679 = !DILocation(line: 551, column: 10, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5665, file: !80, line: 551, column: 5)
!5681 = !DILocation(line: 551, scope: !5680)
!5682 = !DILocation(line: 551, column: 19, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5680, file: !80, line: 551, column: 5)
!5684 = !DILocation(line: 551, column: 5, scope: !5680)
!5685 = !DILocation(line: 552, column: 36, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5683, file: !80, line: 551, column: 29)
!5687 = !DILocation(line: 552, column: 47, scope: !5686)
!5688 = !DILocation(line: 552, column: 43, scope: !5686)
!5689 = !DILocation(line: 552, column: 55, scope: !5686)
!5690 = !DILocation(line: 552, column: 9, scope: !5686)
!5691 = !DILocation(line: 551, column: 25, scope: !5683)
!5692 = !DILocation(line: 551, column: 5, scope: !5683)
!5693 = distinct !{!5693, !5684, !5694, !244}
!5694 = !DILocation(line: 553, column: 5, scope: !5680)
!5695 = !DILocation(line: 554, column: 5, scope: !5665)
!5696 = !DILocation(line: 557, column: 5, scope: !5665)
!5697 = !DILocation(line: 558, column: 10, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5665, file: !80, line: 558, column: 5)
!5699 = !DILocation(line: 558, scope: !5698)
!5700 = !DILocation(line: 558, column: 19, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5698, file: !80, line: 558, column: 5)
!5702 = !DILocation(line: 558, column: 5, scope: !5698)
!5703 = !DILocation(line: 559, column: 9, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5701, file: !80, line: 558, column: 35)
!5705 = !DILocation(line: 560, column: 9, scope: !5704)
!5706 = !DILocation(line: 561, column: 9, scope: !5704)
!5707 = !DILocation(line: 562, column: 33, scope: !5704)
!5708 = !DILocation(line: 562, column: 9, scope: !5704)
!5709 = !DILocation(line: 558, column: 31, scope: !5701)
!5710 = !DILocation(line: 558, column: 5, scope: !5701)
!5711 = distinct !{!5711, !5702, !5712, !244}
!5712 = !DILocation(line: 563, column: 5, scope: !5698)
!5713 = !DILocation(line: 564, column: 5, scope: !5665)
!5714 = !DILocation(line: 565, column: 5, scope: !5665)
!5715 = !DILocation(line: 566, column: 29, scope: !5665)
!5716 = !DILocation(line: 566, column: 5, scope: !5665)
!5717 = !DILocation(line: 568, column: 5, scope: !5665)
!5718 = !DILocation(line: 569, column: 10, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5665, file: !80, line: 569, column: 5)
!5720 = !DILocation(line: 569, scope: !5719)
!5721 = !DILocation(line: 569, column: 19, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5719, file: !80, line: 569, column: 5)
!5723 = !DILocation(line: 569, column: 5, scope: !5719)
!5724 = !DILocation(line: 570, column: 38, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5722, file: !80, line: 569, column: 30)
!5726 = !DILocation(line: 570, column: 50, scope: !5725)
!5727 = !DILocation(line: 570, column: 60, scope: !5725)
!5728 = !DILocation(line: 570, column: 56, scope: !5725)
!5729 = !DILocation(line: 570, column: 9, scope: !5725)
!5730 = !DILocation(line: 569, column: 26, scope: !5722)
!5731 = !DILocation(line: 569, column: 5, scope: !5722)
!5732 = distinct !{!5732, !5723, !5733, !244}
!5733 = !DILocation(line: 571, column: 5, scope: !5719)
!5734 = !DILocation(line: 572, column: 5, scope: !5665)
!5735 = !DILocation(line: 573, column: 1, scope: !5665)
!5736 = distinct !DISubprogram(name: "add_round_key", scope: !80, file: !80, line: 475, type: !5737, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5737 = !DISubroutineType(types: !5738)
!5738 = !{null, !5, !428}
!5739 = !DILocalVariable(name: "q", arg: 1, scope: !5736, file: !80, line: 475, type: !5)
!5740 = !DILocation(line: 0, scope: !5736)
!5741 = !DILocalVariable(name: "sk", arg: 2, scope: !5736, file: !80, line: 475, type: !428)
!5742 = !DILocation(line: 476, column: 13, scope: !5736)
!5743 = !DILocation(line: 476, column: 10, scope: !5736)
!5744 = !DILocation(line: 477, column: 13, scope: !5736)
!5745 = !DILocation(line: 477, column: 5, scope: !5736)
!5746 = !DILocation(line: 477, column: 10, scope: !5736)
!5747 = !DILocation(line: 478, column: 13, scope: !5736)
!5748 = !DILocation(line: 478, column: 5, scope: !5736)
!5749 = !DILocation(line: 478, column: 10, scope: !5736)
!5750 = !DILocation(line: 479, column: 13, scope: !5736)
!5751 = !DILocation(line: 479, column: 5, scope: !5736)
!5752 = !DILocation(line: 479, column: 10, scope: !5736)
!5753 = !DILocation(line: 480, column: 13, scope: !5736)
!5754 = !DILocation(line: 480, column: 5, scope: !5736)
!5755 = !DILocation(line: 480, column: 10, scope: !5736)
!5756 = !DILocation(line: 481, column: 13, scope: !5736)
!5757 = !DILocation(line: 481, column: 5, scope: !5736)
!5758 = !DILocation(line: 481, column: 10, scope: !5736)
!5759 = !DILocation(line: 482, column: 13, scope: !5736)
!5760 = !DILocation(line: 482, column: 5, scope: !5736)
!5761 = !DILocation(line: 482, column: 10, scope: !5736)
!5762 = !DILocation(line: 483, column: 13, scope: !5736)
!5763 = !DILocation(line: 483, column: 5, scope: !5736)
!5764 = !DILocation(line: 483, column: 10, scope: !5736)
!5765 = !DILocation(line: 484, column: 1, scope: !5736)
!5766 = distinct !DISubprogram(name: "shift_rows", scope: !80, file: !80, line: 486, type: !26, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5767 = !DILocalVariable(name: "q", arg: 1, scope: !5766, file: !80, line: 486, type: !5)
!5768 = !DILocation(line: 0, scope: !5766)
!5769 = !DILocalVariable(name: "i", scope: !5766, file: !80, line: 487, type: !45)
!5770 = !DILocation(line: 489, column: 10, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5766, file: !80, line: 489, column: 5)
!5772 = !DILocation(line: 489, scope: !5771)
!5773 = !DILocation(line: 489, column: 19, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5771, file: !80, line: 489, column: 5)
!5775 = !DILocation(line: 489, column: 5, scope: !5771)
!5776 = !DILocation(line: 492, column: 13, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5774, file: !80, line: 489, column: 30)
!5778 = !DILocalVariable(name: "x", scope: !5777, file: !80, line: 490, type: !6)
!5779 = !DILocation(line: 0, scope: !5777)
!5780 = !DILocation(line: 493, column: 19, scope: !5777)
!5781 = !DILocation(line: 494, column: 54, scope: !5777)
!5782 = !DILocation(line: 494, column: 16, scope: !5777)
!5783 = !DILocation(line: 495, column: 54, scope: !5777)
!5784 = !DILocation(line: 495, column: 16, scope: !5777)
!5785 = !DILocation(line: 496, column: 54, scope: !5777)
!5786 = !DILocation(line: 496, column: 16, scope: !5777)
!5787 = !DILocation(line: 497, column: 54, scope: !5777)
!5788 = !DILocation(line: 497, column: 16, scope: !5777)
!5789 = !DILocation(line: 498, column: 54, scope: !5777)
!5790 = !DILocation(line: 498, column: 16, scope: !5777)
!5791 = !DILocation(line: 499, column: 54, scope: !5777)
!5792 = !DILocation(line: 499, column: 16, scope: !5777)
!5793 = !DILocation(line: 493, column: 9, scope: !5777)
!5794 = !DILocation(line: 493, column: 14, scope: !5777)
!5795 = !DILocation(line: 489, column: 26, scope: !5774)
!5796 = !DILocation(line: 489, column: 5, scope: !5774)
!5797 = distinct !{!5797, !5775, !5798, !244}
!5798 = !DILocation(line: 500, column: 5, scope: !5771)
!5799 = !DILocation(line: 501, column: 1, scope: !5766)
!5800 = distinct !DISubprogram(name: "mix_columns", scope: !80, file: !80, line: 507, type: !26, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5801 = !DILocalVariable(name: "q", arg: 1, scope: !5800, file: !80, line: 507, type: !5)
!5802 = !DILocation(line: 0, scope: !5800)
!5803 = !DILocation(line: 511, column: 10, scope: !5800)
!5804 = !DILocalVariable(name: "q0", scope: !5800, file: !80, line: 508, type: !6)
!5805 = !DILocation(line: 512, column: 10, scope: !5800)
!5806 = !DILocalVariable(name: "q1", scope: !5800, file: !80, line: 508, type: !6)
!5807 = !DILocation(line: 513, column: 10, scope: !5800)
!5808 = !DILocalVariable(name: "q2", scope: !5800, file: !80, line: 508, type: !6)
!5809 = !DILocation(line: 514, column: 10, scope: !5800)
!5810 = !DILocalVariable(name: "q3", scope: !5800, file: !80, line: 508, type: !6)
!5811 = !DILocation(line: 515, column: 10, scope: !5800)
!5812 = !DILocalVariable(name: "q4", scope: !5800, file: !80, line: 508, type: !6)
!5813 = !DILocation(line: 516, column: 10, scope: !5800)
!5814 = !DILocalVariable(name: "q5", scope: !5800, file: !80, line: 508, type: !6)
!5815 = !DILocation(line: 517, column: 10, scope: !5800)
!5816 = !DILocalVariable(name: "q6", scope: !5800, file: !80, line: 508, type: !6)
!5817 = !DILocation(line: 518, column: 10, scope: !5800)
!5818 = !DILocalVariable(name: "q7", scope: !5800, file: !80, line: 508, type: !6)
!5819 = !DILocation(line: 519, column: 21, scope: !5800)
!5820 = !DILocalVariable(name: "r0", scope: !5800, file: !80, line: 509, type: !6)
!5821 = !DILocation(line: 520, column: 21, scope: !5800)
!5822 = !DILocalVariable(name: "r1", scope: !5800, file: !80, line: 509, type: !6)
!5823 = !DILocation(line: 521, column: 21, scope: !5800)
!5824 = !DILocalVariable(name: "r2", scope: !5800, file: !80, line: 509, type: !6)
!5825 = !DILocation(line: 522, column: 21, scope: !5800)
!5826 = !DILocalVariable(name: "r3", scope: !5800, file: !80, line: 509, type: !6)
!5827 = !DILocation(line: 523, column: 21, scope: !5800)
!5828 = !DILocalVariable(name: "r4", scope: !5800, file: !80, line: 509, type: !6)
!5829 = !DILocation(line: 524, column: 21, scope: !5800)
!5830 = !DILocalVariable(name: "r5", scope: !5800, file: !80, line: 509, type: !6)
!5831 = !DILocation(line: 525, column: 21, scope: !5800)
!5832 = !DILocalVariable(name: "r6", scope: !5800, file: !80, line: 509, type: !6)
!5833 = !DILocation(line: 526, column: 21, scope: !5800)
!5834 = !DILocalVariable(name: "r7", scope: !5800, file: !80, line: 509, type: !6)
!5835 = !DILocation(line: 528, column: 37, scope: !5800)
!5836 = !DILocation(line: 528, column: 27, scope: !5800)
!5837 = !DILocation(line: 528, column: 25, scope: !5800)
!5838 = !DILocation(line: 528, column: 10, scope: !5800)
!5839 = !DILocation(line: 529, column: 47, scope: !5800)
!5840 = !DILocation(line: 529, column: 37, scope: !5800)
!5841 = !DILocation(line: 529, column: 35, scope: !5800)
!5842 = !DILocation(line: 529, column: 5, scope: !5800)
!5843 = !DILocation(line: 529, column: 10, scope: !5800)
!5844 = !DILocation(line: 530, column: 37, scope: !5800)
!5845 = !DILocation(line: 530, column: 27, scope: !5800)
!5846 = !DILocation(line: 530, column: 25, scope: !5800)
!5847 = !DILocation(line: 530, column: 5, scope: !5800)
!5848 = !DILocation(line: 530, column: 10, scope: !5800)
!5849 = !DILocation(line: 531, column: 47, scope: !5800)
!5850 = !DILocation(line: 531, column: 37, scope: !5800)
!5851 = !DILocation(line: 531, column: 35, scope: !5800)
!5852 = !DILocation(line: 531, column: 5, scope: !5800)
!5853 = !DILocation(line: 531, column: 10, scope: !5800)
!5854 = !DILocation(line: 532, column: 47, scope: !5800)
!5855 = !DILocation(line: 532, column: 37, scope: !5800)
!5856 = !DILocation(line: 532, column: 35, scope: !5800)
!5857 = !DILocation(line: 532, column: 5, scope: !5800)
!5858 = !DILocation(line: 532, column: 10, scope: !5800)
!5859 = !DILocation(line: 533, column: 37, scope: !5800)
!5860 = !DILocation(line: 533, column: 27, scope: !5800)
!5861 = !DILocation(line: 533, column: 25, scope: !5800)
!5862 = !DILocation(line: 533, column: 5, scope: !5800)
!5863 = !DILocation(line: 533, column: 10, scope: !5800)
!5864 = !DILocation(line: 534, column: 37, scope: !5800)
!5865 = !DILocation(line: 534, column: 27, scope: !5800)
!5866 = !DILocation(line: 534, column: 25, scope: !5800)
!5867 = !DILocation(line: 534, column: 5, scope: !5800)
!5868 = !DILocation(line: 534, column: 10, scope: !5800)
!5869 = !DILocation(line: 535, column: 37, scope: !5800)
!5870 = !DILocation(line: 535, column: 27, scope: !5800)
!5871 = !DILocation(line: 535, column: 25, scope: !5800)
!5872 = !DILocation(line: 535, column: 5, scope: !5800)
!5873 = !DILocation(line: 535, column: 10, scope: !5800)
!5874 = !DILocation(line: 536, column: 1, scope: !5800)
!5875 = distinct !DISubprogram(name: "br_aes_ct64_interleave_out", scope: !80, file: !80, line: 367, type: !5876, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5876 = !DISubroutineType(types: !5877)
!5877 = !{null, !5130, !6, !6}
!5878 = !DILocalVariable(name: "w", arg: 1, scope: !5875, file: !80, line: 367, type: !5130)
!5879 = !DILocation(line: 0, scope: !5875)
!5880 = !DILocalVariable(name: "q0", arg: 2, scope: !5875, file: !80, line: 367, type: !6)
!5881 = !DILocalVariable(name: "q1", arg: 3, scope: !5875, file: !80, line: 367, type: !6)
!5882 = !DILocation(line: 370, column: 13, scope: !5875)
!5883 = !DILocalVariable(name: "x0", scope: !5875, file: !80, line: 368, type: !6)
!5884 = !DILocation(line: 371, column: 13, scope: !5875)
!5885 = !DILocalVariable(name: "x1", scope: !5875, file: !80, line: 368, type: !6)
!5886 = !DILocation(line: 372, column: 14, scope: !5875)
!5887 = !DILocation(line: 372, column: 20, scope: !5875)
!5888 = !DILocalVariable(name: "x2", scope: !5875, file: !80, line: 368, type: !6)
!5889 = !DILocation(line: 373, column: 14, scope: !5875)
!5890 = !DILocation(line: 373, column: 20, scope: !5875)
!5891 = !DILocalVariable(name: "x3", scope: !5875, file: !80, line: 368, type: !6)
!5892 = !DILocation(line: 374, column: 15, scope: !5875)
!5893 = !DILocation(line: 374, column: 8, scope: !5875)
!5894 = !DILocation(line: 375, column: 15, scope: !5875)
!5895 = !DILocation(line: 375, column: 8, scope: !5875)
!5896 = !DILocation(line: 376, column: 8, scope: !5875)
!5897 = !DILocation(line: 377, column: 8, scope: !5875)
!5898 = !DILocation(line: 378, column: 8, scope: !5875)
!5899 = !DILocation(line: 379, column: 8, scope: !5875)
!5900 = !DILocation(line: 382, column: 41, scope: !5875)
!5901 = !DILocation(line: 382, column: 25, scope: !5875)
!5902 = !DILocation(line: 382, column: 10, scope: !5875)
!5903 = !DILocation(line: 383, column: 41, scope: !5875)
!5904 = !DILocation(line: 383, column: 25, scope: !5875)
!5905 = !DILocation(line: 383, column: 5, scope: !5875)
!5906 = !DILocation(line: 383, column: 10, scope: !5875)
!5907 = !DILocation(line: 384, column: 41, scope: !5875)
!5908 = !DILocation(line: 384, column: 25, scope: !5875)
!5909 = !DILocation(line: 384, column: 5, scope: !5875)
!5910 = !DILocation(line: 384, column: 10, scope: !5875)
!5911 = !DILocation(line: 385, column: 41, scope: !5875)
!5912 = !DILocation(line: 385, column: 25, scope: !5875)
!5913 = !DILocation(line: 385, column: 5, scope: !5875)
!5914 = !DILocation(line: 385, column: 10, scope: !5875)
!5915 = !DILocation(line: 386, column: 1, scope: !5875)
!5916 = distinct !DISubprogram(name: "br_range_enc32le", scope: !80, file: !80, line: 127, type: !5917, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5917 = !DISubroutineType(types: !5918)
!5918 = !{null, !18, !5165, !15}
!5919 = !DILocalVariable(name: "dst", arg: 1, scope: !5916, file: !80, line: 127, type: !18)
!5920 = !DILocation(line: 0, scope: !5916)
!5921 = !DILocalVariable(name: "v", arg: 2, scope: !5916, file: !80, line: 127, type: !5165)
!5922 = !DILocalVariable(name: "num", arg: 3, scope: !5916, file: !80, line: 127, type: !15)
!5923 = !DILocation(line: 128, column: 5, scope: !5916)
!5924 = !DILocation(line: 128, column: 18, scope: !5916)
!5925 = !DILocation(line: 128, column: 15, scope: !5916)
!5926 = !DILocation(line: 129, column: 28, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !5916, file: !80, line: 128, column: 23)
!5928 = !DILocation(line: 129, column: 25, scope: !5927)
!5929 = !DILocation(line: 129, column: 9, scope: !5927)
!5930 = !DILocation(line: 130, column: 13, scope: !5927)
!5931 = distinct !{!5931, !5923, !5932, !244}
!5932 = !DILocation(line: 131, column: 5, scope: !5916)
!5933 = !DILocation(line: 132, column: 1, scope: !5916)
!5934 = distinct !DISubprogram(name: "br_enc32le", scope: !80, file: !80, line: 119, type: !5935, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5935 = !DISubroutineType(types: !5936)
!5936 = !{null, !18, !19}
!5937 = !DILocalVariable(name: "dst", arg: 1, scope: !5934, file: !80, line: 119, type: !18)
!5938 = !DILocation(line: 0, scope: !5934)
!5939 = !DILocalVariable(name: "x", arg: 2, scope: !5934, file: !80, line: 119, type: !19)
!5940 = !DILocation(line: 120, column: 14, scope: !5934)
!5941 = !DILocation(line: 120, column: 12, scope: !5934)
!5942 = !DILocation(line: 121, column: 32, scope: !5934)
!5943 = !DILocation(line: 121, column: 14, scope: !5934)
!5944 = !DILocation(line: 121, column: 5, scope: !5934)
!5945 = !DILocation(line: 121, column: 12, scope: !5934)
!5946 = !DILocation(line: 122, column: 32, scope: !5934)
!5947 = !DILocation(line: 122, column: 14, scope: !5934)
!5948 = !DILocation(line: 122, column: 5, scope: !5934)
!5949 = !DILocation(line: 122, column: 12, scope: !5934)
!5950 = !DILocation(line: 123, column: 32, scope: !5934)
!5951 = !DILocation(line: 123, column: 14, scope: !5934)
!5952 = !DILocation(line: 123, column: 5, scope: !5934)
!5953 = !DILocation(line: 123, column: 12, scope: !5934)
!5954 = !DILocation(line: 124, column: 1, scope: !5934)
!5955 = distinct !DISubprogram(name: "rotr32", scope: !80, file: !80, line: 503, type: !5956, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5956 = !DISubroutineType(types: !5957)
!5957 = !{!6, !6}
!5958 = !DILocalVariable(name: "x", arg: 1, scope: !5955, file: !80, line: 503, type: !6)
!5959 = !DILocation(line: 0, scope: !5955)
!5960 = !DILocation(line: 504, column: 22, scope: !5955)
!5961 = !DILocation(line: 504, column: 5, scope: !5955)
!5962 = distinct !DISubprogram(name: "aes128_ctr", scope: !80, file: !80, line: 690, type: !5963, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5963 = !DISubroutineType(types: !5964)
!5964 = !{null, !18, !15, !49, !5618}
!5965 = !DILocalVariable(name: "out", arg: 1, scope: !5962, file: !80, line: 690, type: !18)
!5966 = !DILocation(line: 0, scope: !5962)
!5967 = !DILocalVariable(name: "outlen", arg: 2, scope: !5962, file: !80, line: 690, type: !15)
!5968 = !DILocalVariable(name: "iv", arg: 3, scope: !5962, file: !80, line: 690, type: !49)
!5969 = !DILocalVariable(name: "ctx", arg: 4, scope: !5962, file: !80, line: 690, type: !5618)
!5970 = !DILocation(line: 691, column: 35, scope: !5962)
!5971 = !DILocation(line: 691, column: 5, scope: !5962)
!5972 = !DILocation(line: 692, column: 1, scope: !5962)
!5973 = distinct !DISubprogram(name: "aes_ctr", scope: !80, file: !80, line: 607, type: !5974, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5974 = !DISubroutineType(types: !5975)
!5975 = !{null, !18, !15, !49, !428, !17}
!5976 = !DILocalVariable(name: "out", arg: 1, scope: !5973, file: !80, line: 607, type: !18)
!5977 = !DILocation(line: 0, scope: !5973)
!5978 = !DILocalVariable(name: "outlen", arg: 2, scope: !5973, file: !80, line: 607, type: !15)
!5979 = !DILocalVariable(name: "iv", arg: 3, scope: !5973, file: !80, line: 607, type: !49)
!5980 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5973, file: !80, line: 607, type: !428)
!5981 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5973, file: !80, line: 607, type: !17)
!5982 = !DILocalVariable(name: "ivw", scope: !5973, file: !80, line: 608, type: !5638)
!5983 = !DILocation(line: 608, column: 14, scope: !5973)
!5984 = !DILocalVariable(name: "cc", scope: !5973, file: !80, line: 610, type: !19)
!5985 = !DILocation(line: 612, column: 5, scope: !5973)
!5986 = !DILocation(line: 613, column: 16, scope: !5973)
!5987 = !DILocation(line: 613, column: 5, scope: !5973)
!5988 = !DILocation(line: 614, column: 16, scope: !5973)
!5989 = !DILocation(line: 614, column: 5, scope: !5973)
!5990 = !DILocation(line: 615, column: 16, scope: !5973)
!5991 = !DILocation(line: 615, column: 5, scope: !5973)
!5992 = !DILocation(line: 616, column: 15, scope: !5973)
!5993 = !DILocation(line: 616, column: 5, scope: !5973)
!5994 = !DILocation(line: 616, column: 13, scope: !5973)
!5995 = !DILocation(line: 617, column: 15, scope: !5973)
!5996 = !DILocation(line: 617, column: 5, scope: !5973)
!5997 = !DILocation(line: 617, column: 13, scope: !5973)
!5998 = !DILocation(line: 618, column: 15, scope: !5973)
!5999 = !DILocation(line: 618, column: 5, scope: !5973)
!6000 = !DILocation(line: 618, column: 13, scope: !5973)
!6001 = !DILocation(line: 619, column: 15, scope: !5973)
!6002 = !DILocation(line: 619, column: 5, scope: !5973)
!6003 = !DILocation(line: 619, column: 13, scope: !5973)
!6004 = !DILocation(line: 621, column: 5, scope: !5973)
!6005 = !DILocation(line: 621, column: 19, scope: !5973)
!6006 = !DILocation(line: 622, column: 9, scope: !6007)
!6007 = distinct !DILexicalBlock(scope: !5973, file: !80, line: 621, column: 25)
!6008 = !DILocation(line: 623, column: 13, scope: !6007)
!6009 = !DILocation(line: 624, column: 16, scope: !6007)
!6010 = distinct !{!6010, !6004, !6011, !244}
!6011 = !DILocation(line: 625, column: 5, scope: !5973)
!6012 = !DILocation(line: 626, column: 16, scope: !6013)
!6013 = distinct !DILexicalBlock(scope: !5973, file: !80, line: 626, column: 9)
!6014 = !DILocalVariable(name: "tmp", scope: !6015, file: !80, line: 627, type: !5641)
!6015 = distinct !DILexicalBlock(scope: !6013, file: !80, line: 626, column: 21)
!6016 = !DILocation(line: 627, column: 23, scope: !6015)
!6017 = !DILocation(line: 628, column: 9, scope: !6015)
!6018 = !DILocalVariable(name: "i", scope: !5973, file: !80, line: 609, type: !15)
!6019 = !DILocation(line: 629, column: 14, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !6015, file: !80, line: 629, column: 9)
!6021 = !DILocation(line: 629, scope: !6020)
!6022 = !DILocation(line: 629, column: 23, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !6020, file: !80, line: 629, column: 9)
!6024 = !DILocation(line: 629, column: 9, scope: !6020)
!6025 = !DILocation(line: 630, column: 22, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !6023, file: !80, line: 629, column: 38)
!6027 = !DILocation(line: 630, column: 13, scope: !6026)
!6028 = !DILocation(line: 630, column: 20, scope: !6026)
!6029 = !DILocation(line: 629, column: 34, scope: !6023)
!6030 = !DILocation(line: 629, column: 9, scope: !6023)
!6031 = distinct !{!6031, !6024, !6032, !244}
!6032 = !DILocation(line: 631, column: 9, scope: !6020)
!6033 = !DILocation(line: 633, column: 1, scope: !5973)
!6034 = distinct !DISubprogram(name: "br_swap32", scope: !80, file: !80, line: 112, type: !5147, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6035 = !DILocalVariable(name: "x", arg: 1, scope: !6034, file: !80, line: 112, type: !19)
!6036 = !DILocation(line: 0, scope: !6034)
!6037 = !DILocation(line: 115, column: 22, scope: !6034)
!6038 = !DILocation(line: 115, column: 5, scope: !6034)
!6039 = distinct !DISubprogram(name: "aes_ctr4x", scope: !80, file: !80, line: 576, type: !6040, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6040 = !DISubroutineType(types: !6041)
!6041 = !{null, !18, !5130, !428, !17}
!6042 = !DILocalVariable(name: "out", arg: 1, scope: !6039, file: !80, line: 576, type: !18)
!6043 = !DILocation(line: 0, scope: !6039)
!6044 = !DILocalVariable(name: "ivw", arg: 2, scope: !6039, file: !80, line: 576, type: !5130)
!6045 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !6039, file: !80, line: 576, type: !428)
!6046 = !DILocalVariable(name: "nrounds", arg: 4, scope: !6039, file: !80, line: 576, type: !17)
!6047 = !DILocation(line: 577, column: 5, scope: !6039)
!6048 = !DILocation(line: 580, column: 17, scope: !6039)
!6049 = !DILocation(line: 580, column: 5, scope: !6039)
!6050 = !DILocation(line: 581, column: 17, scope: !6039)
!6051 = !DILocation(line: 581, column: 5, scope: !6039)
!6052 = !DILocation(line: 582, column: 17, scope: !6039)
!6053 = !DILocation(line: 582, column: 5, scope: !6039)
!6054 = !DILocation(line: 583, column: 17, scope: !6039)
!6055 = !DILocation(line: 583, column: 5, scope: !6039)
!6056 = !DILocation(line: 584, column: 1, scope: !6039)
!6057 = distinct !DISubprogram(name: "inc4_be", scope: !80, file: !80, line: 539, type: !6058, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6058 = !DISubroutineType(types: !6059)
!6059 = !{null, !5130}
!6060 = !DILocalVariable(name: "x", arg: 1, scope: !6057, file: !80, line: 539, type: !5130)
!6061 = !DILocation(line: 0, scope: !6057)
!6062 = !DILocation(line: 540, column: 28, scope: !6057)
!6063 = !DILocation(line: 540, column: 18, scope: !6057)
!6064 = !DILocation(line: 540, column: 32, scope: !6057)
!6065 = !DILocalVariable(name: "t", scope: !6057, file: !80, line: 540, type: !19)
!6066 = !DILocation(line: 541, column: 10, scope: !6057)
!6067 = !DILocation(line: 541, column: 8, scope: !6057)
!6068 = !DILocation(line: 542, column: 1, scope: !6057)
!6069 = distinct !DISubprogram(name: "aes192_ecb", scope: !80, file: !80, line: 694, type: !6070, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6070 = !DISubroutineType(types: !6071)
!6071 = !{null, !18, !49, !15, !6072}
!6072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6073, size: 32)
!6073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5553)
!6074 = !DILocalVariable(name: "out", arg: 1, scope: !6069, file: !80, line: 694, type: !18)
!6075 = !DILocation(line: 0, scope: !6069)
!6076 = !DILocalVariable(name: "in", arg: 2, scope: !6069, file: !80, line: 694, type: !49)
!6077 = !DILocalVariable(name: "nblocks", arg: 3, scope: !6069, file: !80, line: 694, type: !15)
!6078 = !DILocalVariable(name: "ctx", arg: 4, scope: !6069, file: !80, line: 694, type: !6072)
!6079 = !DILocation(line: 695, column: 36, scope: !6069)
!6080 = !DILocation(line: 695, column: 5, scope: !6069)
!6081 = !DILocation(line: 696, column: 1, scope: !6069)
!6082 = distinct !DISubprogram(name: "aes192_ctr", scope: !80, file: !80, line: 698, type: !6083, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6083 = !DISubroutineType(types: !6084)
!6084 = !{null, !18, !15, !49, !6072}
!6085 = !DILocalVariable(name: "out", arg: 1, scope: !6082, file: !80, line: 698, type: !18)
!6086 = !DILocation(line: 0, scope: !6082)
!6087 = !DILocalVariable(name: "outlen", arg: 2, scope: !6082, file: !80, line: 698, type: !15)
!6088 = !DILocalVariable(name: "iv", arg: 3, scope: !6082, file: !80, line: 698, type: !49)
!6089 = !DILocalVariable(name: "ctx", arg: 4, scope: !6082, file: !80, line: 698, type: !6072)
!6090 = !DILocation(line: 699, column: 35, scope: !6082)
!6091 = !DILocation(line: 699, column: 5, scope: !6082)
!6092 = !DILocation(line: 700, column: 1, scope: !6082)
!6093 = distinct !DISubprogram(name: "aes256_ecb", scope: !80, file: !80, line: 702, type: !6094, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6094 = !DISubroutineType(types: !6095)
!6095 = !{null, !18, !49, !15, !6096}
!6096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6097, size: 32)
!6097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5586)
!6098 = !DILocalVariable(name: "out", arg: 1, scope: !6093, file: !80, line: 702, type: !18)
!6099 = !DILocation(line: 0, scope: !6093)
!6100 = !DILocalVariable(name: "in", arg: 2, scope: !6093, file: !80, line: 702, type: !49)
!6101 = !DILocalVariable(name: "nblocks", arg: 3, scope: !6093, file: !80, line: 702, type: !15)
!6102 = !DILocalVariable(name: "ctx", arg: 4, scope: !6093, file: !80, line: 702, type: !6096)
!6103 = !DILocation(line: 703, column: 36, scope: !6093)
!6104 = !DILocation(line: 703, column: 5, scope: !6093)
!6105 = !DILocation(line: 704, column: 1, scope: !6093)
!6106 = distinct !DISubprogram(name: "aes256_ctr", scope: !80, file: !80, line: 706, type: !6107, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6107 = !DISubroutineType(types: !6108)
!6108 = !{null, !18, !15, !49, !6096}
!6109 = !DILocalVariable(name: "out", arg: 1, scope: !6106, file: !80, line: 706, type: !18)
!6110 = !DILocation(line: 0, scope: !6106)
!6111 = !DILocalVariable(name: "outlen", arg: 2, scope: !6106, file: !80, line: 706, type: !15)
!6112 = !DILocalVariable(name: "iv", arg: 3, scope: !6106, file: !80, line: 706, type: !49)
!6113 = !DILocalVariable(name: "ctx", arg: 4, scope: !6106, file: !80, line: 706, type: !6096)
!6114 = !DILocation(line: 707, column: 35, scope: !6106)
!6115 = !DILocation(line: 707, column: 5, scope: !6106)
!6116 = !DILocation(line: 708, column: 1, scope: !6106)
!6117 = distinct !DISubprogram(name: "aes128_ctx_release", scope: !80, file: !80, line: 710, type: !6118, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6118 = !DISubroutineType(types: !6119)
!6119 = !{null, !4931}
!6120 = !DILocalVariable(name: "r", arg: 1, scope: !6117, file: !80, line: 710, type: !4931)
!6121 = !DILocation(line: 0, scope: !6117)
!6122 = !DILocation(line: 711, column: 13, scope: !6117)
!6123 = !DILocation(line: 711, column: 5, scope: !6117)
!6124 = !DILocation(line: 712, column: 1, scope: !6117)
!6125 = distinct !DISubprogram(name: "aes192_ctx_release", scope: !80, file: !80, line: 714, type: !6126, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6126 = !DISubroutineType(types: !6127)
!6127 = !{null, !5552}
!6128 = !DILocalVariable(name: "r", arg: 1, scope: !6125, file: !80, line: 714, type: !5552)
!6129 = !DILocation(line: 0, scope: !6125)
!6130 = !DILocation(line: 715, column: 13, scope: !6125)
!6131 = !DILocation(line: 715, column: 5, scope: !6125)
!6132 = !DILocation(line: 716, column: 1, scope: !6125)
!6133 = distinct !DISubprogram(name: "aes256_ctx_release", scope: !80, file: !80, line: 718, type: !6134, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6134 = !DISubroutineType(types: !6135)
!6135 = !{null, !5585}
!6136 = !DILocalVariable(name: "r", arg: 1, scope: !6133, file: !80, line: 718, type: !5585)
!6137 = !DILocation(line: 0, scope: !6133)
!6138 = !DILocation(line: 719, column: 13, scope: !6133)
!6139 = !DILocation(line: 719, column: 5, scope: !6133)
!6140 = !DILocation(line: 720, column: 1, scope: !6133)
!6141 = distinct !DISubprogram(name: "AES_128_CTR", scope: !80, file: !80, line: 722, type: !6142, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6142 = !DISubroutineType(types: !6143)
!6143 = !{!45, !18, !15, !49, !15}
!6144 = !DILocalVariable(name: "output", arg: 1, scope: !6141, file: !80, line: 722, type: !18)
!6145 = !DILocation(line: 0, scope: !6141)
!6146 = !DILocalVariable(name: "outputByteLen", arg: 2, scope: !6141, file: !80, line: 722, type: !15)
!6147 = !DILocalVariable(name: "input", arg: 3, scope: !6141, file: !80, line: 723, type: !49)
!6148 = !DILocalVariable(name: "inputByteLen", arg: 4, scope: !6141, file: !80, line: 723, type: !15)
!6149 = !DILocalVariable(name: "ctx", scope: !6141, file: !80, line: 724, type: !4932)
!6150 = !DILocation(line: 724, column: 15, scope: !6141)
!6151 = !DILocalVariable(name: "iv", scope: !6141, file: !80, line: 725, type: !116)
!6152 = !DILocation(line: 725, column: 19, scope: !6141)
!6153 = !DILocation(line: 727, column: 5, scope: !6141)
!6154 = !DILocation(line: 728, column: 5, scope: !6141)
!6155 = !DILocation(line: 729, column: 5, scope: !6141)
!6156 = !DILocation(line: 731, column: 5, scope: !6141)
!6157 = distinct !DISubprogram(name: "AES_256_ECB", scope: !80, file: !80, line: 734, type: !6158, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6158 = !DISubroutineType(types: !6159)
!6159 = !{null, !257, !49, !18}
!6160 = !DILocalVariable(name: "input", arg: 1, scope: !6157, file: !80, line: 734, type: !257)
!6161 = !DILocation(line: 0, scope: !6157)
!6162 = !DILocalVariable(name: "key", arg: 2, scope: !6157, file: !80, line: 734, type: !49)
!6163 = !DILocalVariable(name: "output", arg: 3, scope: !6157, file: !80, line: 734, type: !18)
!6164 = !DILocalVariable(name: "ctx", scope: !6157, file: !80, line: 735, type: !5586)
!6165 = !DILocation(line: 735, column: 15, scope: !6157)
!6166 = !DILocation(line: 737, column: 5, scope: !6157)
!6167 = !DILocation(line: 738, column: 5, scope: !6157)
!6168 = !DILocation(line: 739, column: 5, scope: !6157)
!6169 = !DILocation(line: 740, column: 1, scope: !6157)
!6170 = !DILocalVariable(name: "mem", arg: 1, scope: !86, file: !87, line: 7, type: !69)
!6171 = !DILocation(line: 0, scope: !86)
!6172 = !DILocalVariable(name: "size", arg: 2, scope: !86, file: !87, line: 7, type: !15)
!6173 = !DILocation(line: 8, column: 9, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !86, file: !87, line: 8, column: 9)
!6175 = !DILocation(line: 11, column: 9, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6174, file: !87, line: 8, column: 14)
!6177 = !DILocation(line: 12, column: 9, scope: !6176)
!6178 = !DILocation(line: 13, column: 5, scope: !6176)
!6179 = !DILocation(line: 14, column: 1, scope: !86)
!6180 = !DILocalVariable(name: "mem", arg: 1, scope: !94, file: !87, line: 15, type: !69)
!6181 = !DILocation(line: 0, scope: !94)
!6182 = !DILocalVariable(name: "size", arg: 2, scope: !94, file: !87, line: 15, type: !15)
!6183 = !DILocation(line: 18, column: 5, scope: !94)
!6184 = !DILocation(line: 19, column: 1, scope: !94)
!6185 = distinct !DISubprogram(name: "AES256_CTR_DRBG_Update", scope: !107, file: !107, line: 101, type: !6186, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6186 = !DISubroutineType(types: !6187)
!6187 = !{null, !18, !18, !18}
!6188 = !DILocalVariable(name: "provided_data", arg: 1, scope: !6185, file: !107, line: 101, type: !18)
!6189 = !DILocation(line: 0, scope: !6185)
!6190 = !DILocalVariable(name: "Key", arg: 2, scope: !6185, file: !107, line: 102, type: !18)
!6191 = !DILocalVariable(name: "V", arg: 3, scope: !6185, file: !107, line: 103, type: !18)
!6192 = !DILocalVariable(name: "temp", scope: !6185, file: !107, line: 104, type: !6193)
!6193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 384, elements: !6194)
!6194 = !{!6195}
!6195 = !DISubrange(count: 48)
!6196 = !DILocation(line: 104, column: 21, scope: !6185)
!6197 = !DILocalVariable(name: "i", scope: !6198, file: !107, line: 106, type: !45)
!6198 = distinct !DILexicalBlock(scope: !6185, file: !107, line: 106, column: 5)
!6199 = !DILocation(line: 0, scope: !6198)
!6200 = !DILocation(line: 106, column: 10, scope: !6198)
!6201 = !DILocation(line: 106, scope: !6198)
!6202 = !DILocation(line: 106, column: 23, scope: !6203)
!6203 = distinct !DILexicalBlock(scope: !6198, file: !107, line: 106, column: 5)
!6204 = !DILocation(line: 106, column: 5, scope: !6198)
!6205 = !DILocation(line: 108, column: 9, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6207, file: !107, line: 108, column: 9)
!6207 = distinct !DILexicalBlock(scope: !6203, file: !107, line: 106, column: 33)
!6208 = !DILocation(line: 108, scope: !6206)
!6209 = !DILocalVariable(name: "j", scope: !6206, file: !107, line: 108, type: !45)
!6210 = !DILocation(line: 0, scope: !6206)
!6211 = !DILocation(line: 108, column: 28, scope: !6212)
!6212 = distinct !DILexicalBlock(scope: !6206, file: !107, line: 108, column: 9)
!6213 = !DILocation(line: 109, column: 18, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6215, file: !107, line: 109, column: 18)
!6215 = distinct !DILexicalBlock(scope: !6212, file: !107, line: 108, column: 39)
!6216 = !DILocation(line: 109, column: 23, scope: !6214)
!6217 = !DILocation(line: 110, column: 17, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6214, file: !107, line: 109, column: 33)
!6219 = !DILocation(line: 110, column: 22, scope: !6218)
!6220 = !DILocation(line: 108, column: 35, scope: !6212)
!6221 = !DILocation(line: 108, column: 9, scope: !6212)
!6222 = distinct !{!6222, !6205, !6223, !244}
!6223 = !DILocation(line: 115, column: 9, scope: !6206)
!6224 = !DILocation(line: 112, column: 17, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6214, file: !107, line: 111, column: 20)
!6226 = !DILocation(line: 112, column: 21, scope: !6225)
!6227 = !DILocation(line: 113, column: 17, scope: !6225)
!6228 = !DILocation(line: 117, column: 38, scope: !6207)
!6229 = !DILocation(line: 117, column: 33, scope: !6207)
!6230 = !DILocation(line: 117, column: 9, scope: !6207)
!6231 = !DILocation(line: 106, column: 29, scope: !6203)
!6232 = !DILocation(line: 106, column: 5, scope: !6203)
!6233 = distinct !{!6233, !6204, !6234, !244}
!6234 = !DILocation(line: 118, column: 5, scope: !6198)
!6235 = !DILocation(line: 119, column: 24, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6185, file: !107, line: 119, column: 10)
!6237 = !DILocation(line: 120, column: 9, scope: !6238)
!6238 = distinct !DILexicalBlock(scope: !6236, file: !107, line: 120, column: 9)
!6239 = !DILocation(line: 120, scope: !6238)
!6240 = !DILocalVariable(name: "i", scope: !6238, file: !107, line: 120, type: !45)
!6241 = !DILocation(line: 0, scope: !6238)
!6242 = !DILocation(line: 120, column: 27, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6238, file: !107, line: 120, column: 9)
!6244 = !DILocation(line: 121, column: 24, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6243, file: !107, line: 120, column: 38)
!6246 = !DILocation(line: 121, column: 13, scope: !6245)
!6247 = !DILocation(line: 121, column: 21, scope: !6245)
!6248 = !DILocation(line: 120, column: 34, scope: !6243)
!6249 = !DILocation(line: 120, column: 9, scope: !6243)
!6250 = distinct !{!6250, !6237, !6251, !244}
!6251 = !DILocation(line: 122, column: 9, scope: !6238)
!6252 = !DILocation(line: 123, column: 5, scope: !6185)
!6253 = !DILocation(line: 124, column: 20, scope: !6185)
!6254 = !DILocation(line: 124, column: 5, scope: !6185)
!6255 = !DILocation(line: 125, column: 1, scope: !6185)
!6256 = distinct !DISubprogram(name: "AES256_ECB", scope: !107, file: !107, line: 24, type: !6186, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6257 = !DILocalVariable(name: "key", arg: 1, scope: !6256, file: !107, line: 24, type: !18)
!6258 = !DILocation(line: 0, scope: !6256)
!6259 = !DILocalVariable(name: "ctr", arg: 2, scope: !6256, file: !107, line: 24, type: !18)
!6260 = !DILocalVariable(name: "buffer", arg: 3, scope: !6256, file: !107, line: 24, type: !18)
!6261 = !DILocation(line: 25, column: 5, scope: !6256)
!6262 = !DILocation(line: 26, column: 1, scope: !6256)
!6263 = distinct !DISubprogram(name: "randombytes", scope: !107, file: !107, line: 127, type: !6264, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6264 = !DISubroutineType(types: !6265)
!6265 = !{!45, !18, !15}
!6266 = !DILocalVariable(name: "random_array", arg: 1, scope: !6263, file: !107, line: 127, type: !18)
!6267 = !DILocation(line: 0, scope: !6263)
!6268 = !DILocalVariable(name: "nbytes", arg: 2, scope: !6263, file: !107, line: 127, type: !15)
!6269 = !DILocation(line: 128, column: 15, scope: !6263)
!6270 = !DILocalVariable(name: "ret", scope: !6263, file: !107, line: 128, type: !45)
!6271 = !DILocation(line: 132, column: 5, scope: !6263)
!6272 = distinct !DISubprogram(name: "randombytes_nist", scope: !107, file: !107, line: 69, type: !6264, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6273 = !DILocalVariable(name: "x", arg: 1, scope: !6272, file: !107, line: 69, type: !18)
!6274 = !DILocation(line: 0, scope: !6272)
!6275 = !DILocalVariable(name: "xlen", arg: 2, scope: !6272, file: !107, line: 69, type: !15)
!6276 = !DILocalVariable(name: "block", scope: !6272, file: !107, line: 70, type: !116)
!6277 = !DILocation(line: 70, column: 21, scope: !6272)
!6278 = !DILocalVariable(name: "i", scope: !6272, file: !107, line: 71, type: !15)
!6279 = !DILocation(line: 73, column: 5, scope: !6272)
!6280 = !DILocation(line: 73, column: 18, scope: !6272)
!6281 = !DILocation(line: 75, column: 9, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6283, file: !107, line: 75, column: 9)
!6283 = distinct !DILexicalBlock(scope: !6272, file: !107, line: 73, column: 24)
!6284 = !DILocation(line: 75, scope: !6282)
!6285 = !DILocalVariable(name: "j", scope: !6282, file: !107, line: 75, type: !45)
!6286 = !DILocation(line: 0, scope: !6282)
!6287 = !DILocation(line: 75, column: 28, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6282, file: !107, line: 75, column: 9)
!6289 = !DILocation(line: 76, column: 18, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6291, file: !107, line: 76, column: 18)
!6291 = distinct !DILexicalBlock(scope: !6288, file: !107, line: 75, column: 39)
!6292 = !DILocation(line: 76, column: 32, scope: !6290)
!6293 = !DILocation(line: 77, column: 17, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6290, file: !107, line: 76, column: 42)
!6295 = !DILocation(line: 77, column: 31, scope: !6294)
!6296 = !DILocation(line: 75, column: 35, scope: !6288)
!6297 = !DILocation(line: 75, column: 9, scope: !6288)
!6298 = distinct !{!6298, !6281, !6299, !244}
!6299 = !DILocation(line: 82, column: 9, scope: !6282)
!6300 = !DILocation(line: 79, column: 17, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6290, file: !107, line: 78, column: 20)
!6302 = !DILocation(line: 79, column: 30, scope: !6301)
!6303 = !DILocation(line: 80, column: 17, scope: !6301)
!6304 = !DILocation(line: 83, column: 9, scope: !6283)
!6305 = !DILocation(line: 84, column: 19, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6283, file: !107, line: 84, column: 14)
!6307 = !DILocation(line: 85, column: 22, scope: !6308)
!6308 = distinct !DILexicalBlock(scope: !6306, file: !107, line: 84, column: 26)
!6309 = !DILocation(line: 85, column: 13, scope: !6308)
!6310 = !DILocation(line: 86, column: 15, scope: !6308)
!6311 = !DILocation(line: 87, column: 18, scope: !6308)
!6312 = !DILocation(line: 88, column: 9, scope: !6308)
!6313 = !DILocation(line: 89, column: 22, scope: !6314)
!6314 = distinct !DILexicalBlock(scope: !6306, file: !107, line: 88, column: 16)
!6315 = !DILocation(line: 89, column: 13, scope: !6314)
!6316 = !DILocation(line: 90, column: 15, scope: !6314)
!6317 = !DILocation(line: 0, scope: !6306)
!6318 = distinct !{!6318, !6279, !6319, !244}
!6319 = !DILocation(line: 93, column: 5, scope: !6272)
!6320 = !DILocation(line: 94, column: 5, scope: !6272)
!6321 = !DILocation(line: 95, column: 28, scope: !6272)
!6322 = !DILocation(line: 97, column: 5, scope: !6272)
!6323 = distinct !DISubprogram(name: "randombytes_init", scope: !107, file: !107, line: 136, type: !6324, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6324 = !DISubroutineType(types: !6325)
!6325 = !{null, !18, !18, !45}
!6326 = !DILocalVariable(name: "entropy_input", arg: 1, scope: !6323, file: !107, line: 136, type: !18)
!6327 = !DILocation(line: 0, scope: !6323)
!6328 = !DILocalVariable(name: "personalization_string", arg: 2, scope: !6323, file: !107, line: 137, type: !18)
!6329 = !DILocalVariable(name: "security_strength", arg: 3, scope: !6323, file: !107, line: 138, type: !45)
!6330 = !DILocation(line: 139, column: 12, scope: !6323)
!6331 = !DILocation(line: 139, column: 5, scope: !6323)
!6332 = distinct !DISubprogram(name: "randombytes_init_nist", scope: !107, file: !107, line: 51, type: !6324, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6333 = !DILocalVariable(name: "entropy_input", arg: 1, scope: !6332, file: !107, line: 51, type: !18)
!6334 = !DILocation(line: 0, scope: !6332)
!6335 = !DILocalVariable(name: "personalization_string", arg: 2, scope: !6332, file: !107, line: 52, type: !18)
!6336 = !DILocalVariable(name: "security_strength", arg: 3, scope: !6332, file: !107, line: 53, type: !45)
!6337 = !DILocalVariable(name: "seed_material", scope: !6332, file: !107, line: 54, type: !6193)
!6338 = !DILocation(line: 54, column: 21, scope: !6332)
!6339 = !DILocation(line: 57, column: 5, scope: !6332)
!6340 = !DILocation(line: 58, column: 9, scope: !6341)
!6341 = distinct !DILexicalBlock(scope: !6332, file: !107, line: 58, column: 9)
!6342 = !DILocation(line: 59, column: 9, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6341, file: !107, line: 59, column: 9)
!6344 = !DILocation(line: 59, scope: !6343)
!6345 = !DILocalVariable(name: "i", scope: !6343, file: !107, line: 59, type: !45)
!6346 = !DILocation(line: 0, scope: !6343)
!6347 = !DILocation(line: 59, column: 27, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6343, file: !107, line: 59, column: 9)
!6349 = !DILocation(line: 60, column: 33, scope: !6350)
!6350 = distinct !DILexicalBlock(scope: !6348, file: !107, line: 59, column: 38)
!6351 = !DILocation(line: 60, column: 13, scope: !6350)
!6352 = !DILocation(line: 60, column: 30, scope: !6350)
!6353 = !DILocation(line: 59, column: 34, scope: !6348)
!6354 = !DILocation(line: 59, column: 9, scope: !6348)
!6355 = distinct !{!6355, !6342, !6356, !244}
!6356 = !DILocation(line: 61, column: 9, scope: !6343)
!6357 = !DILocation(line: 62, column: 5, scope: !6332)
!6358 = !DILocation(line: 63, column: 5, scope: !6332)
!6359 = !DILocation(line: 64, column: 5, scope: !6332)
!6360 = !DILocation(line: 65, column: 29, scope: !6332)
!6361 = !DILocation(line: 66, column: 1, scope: !6332)
