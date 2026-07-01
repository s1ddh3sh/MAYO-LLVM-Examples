; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-unknown-none-eabihf"

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
    #dbg_value(i32 %c106.0, !1344, !DIExpression(), !1343)
  %cmp109 = icmp samesign ult i32 %c106.0, 2016, !dbg !1345
  br i1 %cmp109, label %for.body110, label %for.end114, !dbg !1221

for.body110:                                      ; preds = %for.cond107
  %add.ptr111 = getelementptr inbounds nuw i64, ptr %A, i32 %c106.0, !dbg !1347
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr111) #4, !dbg !1349
  %add113 = add nuw nsw i32 %c106.0, 16, !dbg !1350
    #dbg_value(i32 %add113, !1344, !DIExpression(), !1343)
  br label %for.cond107, !dbg !1351, !llvm.loop !1352

for.end114:                                       ; preds = %for.cond107
    #dbg_declare(ptr %tab, !1354, !DIExpression(), !1355)
  call void @mayo_memset(ptr %tab, i8 0, i32 16), !dbg !1355
    #dbg_value(i32 0, !1356, !DIExpression(), !1358)
  br label %for.cond116, !dbg !1359

for.cond116:                                      ; preds = %for.body118, %for.end114
  %i115.0 = phi i32 [ 0, %for.end114 ], [ %inc138, %for.body118 ], !dbg !1360
    #dbg_value(i32 %i115.0, !1356, !DIExpression(), !1358)
  %exitcond9 = icmp ne i32 %i115.0, 4, !dbg !1361
  br i1 %exitcond9, label %for.body118, label %for.cond141.preheader, !dbg !1363

for.cond141.preheader:                            ; preds = %for.cond116
  br label %for.cond141, !dbg !1364

for.body118:                                      ; preds = %for.cond116
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1366
  %16 = load i8, ptr %arrayidx119, align 1, !dbg !1366
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 1) #4, !dbg !1368
  %mul120 = shl nuw nsw i32 %i115.0, 2, !dbg !1369
  %arrayidx121 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120, !dbg !1370
  store i8 %call, ptr %arrayidx121, align 1, !dbg !1371
  %call123 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 2) #4, !dbg !1372
  %mul124 = shl nuw nsw i32 %i115.0, 2, !dbg !1373
  %add125 = or disjoint i32 %mul124, 1, !dbg !1374
  %arrayidx126 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125, !dbg !1375
  store i8 %call123, ptr %arrayidx126, align 1, !dbg !1376
  %arrayidx127 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1377
  %17 = load i8, ptr %arrayidx127, align 1, !dbg !1377
  %call128 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %17, i8 noundef zeroext 4) #4, !dbg !1378
  %mul129 = shl nuw nsw i32 %i115.0, 2, !dbg !1379
  %add130 = or disjoint i32 %mul129, 2, !dbg !1380
  %arrayidx131 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130, !dbg !1381
  store i8 %call128, ptr %arrayidx131, align 1, !dbg !1382
  %arrayidx132 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1383
  %18 = load i8, ptr %arrayidx132, align 1, !dbg !1383
  %call133 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %18, i8 noundef zeroext 8) #4, !dbg !1384
  %mul134 = shl nuw nsw i32 %i115.0, 2, !dbg !1385
  %add135 = or disjoint i32 %mul134, 3, !dbg !1386
  %arrayidx136 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135, !dbg !1387
  store i8 %call133, ptr %arrayidx136, align 1, !dbg !1388
  %inc138 = add nuw nsw i32 %i115.0, 1, !dbg !1389
    #dbg_value(i32 %inc138, !1356, !DIExpression(), !1358)
  br label %for.cond116, !dbg !1390, !llvm.loop !1391

for.cond141:                                      ; preds = %for.cond141.preheader, %for.inc203
  %c140.0 = phi i32 [ %add204, %for.inc203 ], [ 0, %for.cond141.preheader ], !dbg !1393
    #dbg_value(i32 %c140.0, !1394, !DIExpression(), !1395)
  %cmp142 = icmp samesign ult i32 %c140.0, 144, !dbg !1396
  br i1 %cmp142, label %for.cond144.preheader, label %for.cond207.preheader, !dbg !1364

for.cond144.preheader:                            ; preds = %for.cond141
  br label %for.cond144, !dbg !1398

for.cond207.preheader:                            ; preds = %for.cond141
  br label %for.cond207, !dbg !1401

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc200
  %r.0 = phi i32 [ %inc201, %for.inc200 ], [ 142, %for.cond144.preheader ], !dbg !1403
    #dbg_value(i32 %r.0, !1404, !DIExpression(), !1403)
  %exitcond11 = icmp ne i32 %r.0, 220, !dbg !1405
  br i1 %exitcond11, label %for.body146, label %for.inc203, !dbg !1398

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1407
  %mul147 = mul nuw nsw i32 %div1, 144, !dbg !1409
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1410
  %rem = and i32 %r.0, 15, !dbg !1411
  %add149 = or disjoint i32 %add148, %rem, !dbg !1412
    #dbg_value(i32 %add149, !1413, !DIExpression(), !1414)
  %arrayidx150 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add149, !dbg !1415
  %19 = load i64, ptr %arrayidx150, align 8, !dbg !1415
  %and151 = and i64 %19, 1229782938247303441, !dbg !1416
    #dbg_value(i64 %and151, !1417, !DIExpression(), !1414)
  %shr153 = lshr i64 %19, 1, !dbg !1418
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1419
    #dbg_value(i64 %and154, !1420, !DIExpression(), !1414)
  %shr156 = lshr i64 %19, 2, !dbg !1421
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1422
    #dbg_value(i64 %and157, !1423, !DIExpression(), !1414)
  %arrayidx158 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add149, !dbg !1424
  %20 = load i64, ptr %arrayidx158, align 8, !dbg !1424
  %shr159 = lshr i64 %20, 3, !dbg !1425
  %and160 = and i64 %shr159, 1229782938247303441, !dbg !1426
    #dbg_value(i64 %and160, !1427, !DIExpression(), !1414)
    #dbg_value(i32 0, !1428, !DIExpression(), !1430)
  br label %for.cond161, !dbg !1431

for.cond161:                                      ; preds = %for.body163, %for.body146
  %t.0 = phi i32 [ 0, %for.body146 ], [ %inc198, %for.body163 ], !dbg !1432
    #dbg_value(i32 %t.0, !1428, !DIExpression(), !1430)
  %exitcond10 = icmp ne i32 %t.0, 4, !dbg !1433
  br i1 %exitcond10, label %for.body163, label %for.inc200, !dbg !1435

for.body163:                                      ; preds = %for.cond161
  %mul164 = shl nuw nsw i32 %t.0, 2, !dbg !1436
  %arrayidx166 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul164, !dbg !1438
  %21 = load i8, ptr %arrayidx166, align 1, !dbg !1438
  %conv = zext i8 %21 to i64, !dbg !1438
  %mul167 = mul i64 %and151, %conv, !dbg !1439
  %mul168 = shl nuw nsw i32 %t.0, 2, !dbg !1440
  %add169 = or disjoint i32 %mul168, 1, !dbg !1441
  %arrayidx170 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add169, !dbg !1442
  %22 = load i8, ptr %arrayidx170, align 1, !dbg !1442
  %conv171 = zext i8 %22 to i64, !dbg !1442
  %mul172 = mul i64 %and154, %conv171, !dbg !1443
  %xor173 = xor i64 %mul167, %mul172, !dbg !1444
  %mul174 = shl nuw nsw i32 %t.0, 2, !dbg !1445
  %add175 = or disjoint i32 %mul174, 2, !dbg !1446
  %arrayidx176 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add175, !dbg !1447
  %23 = load i8, ptr %arrayidx176, align 1, !dbg !1447
  %conv177 = zext i8 %23 to i64, !dbg !1447
  %mul178 = mul i64 %and157, %conv177, !dbg !1448
  %xor179 = xor i64 %xor173, %mul178, !dbg !1449
  %mul180 = shl nuw nsw i32 %t.0, 2, !dbg !1450
  %add181 = or disjoint i32 %mul180, 3, !dbg !1451
  %arrayidx182 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add181, !dbg !1452
  %24 = load i8, ptr %arrayidx182, align 1, !dbg !1452
  %conv183 = zext i8 %24 to i64, !dbg !1452
  %mul184 = mul i64 %and160, %conv183, !dbg !1453
  %xor185 = xor i64 %xor179, %mul184, !dbg !1454
  %add186 = add nuw nsw i32 %r.0, %t.0, !dbg !1455
  %sub187 = add nsw i32 %add186, -142, !dbg !1456
  %div1882 = lshr i32 %sub187, 4, !dbg !1457
  %mul189 = mul i32 %div1882, 144, !dbg !1458
  %add190 = add i32 %mul189, %c140.0, !dbg !1459
  %add191 = add nuw nsw i32 %r.0, %t.0, !dbg !1460
  %sub192 = add nuw nsw i32 %add191, 2, !dbg !1461
  %rem193 = and i32 %sub192, 15, !dbg !1462
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1463
  %arrayidx195 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add194, !dbg !1464
  %25 = load i64, ptr %arrayidx195, align 8, !dbg !1465
  %xor196 = xor i64 %25, %xor185, !dbg !1465
  store i64 %xor196, ptr %arrayidx195, align 8, !dbg !1465
  %inc198 = add nuw nsw i32 %t.0, 1, !dbg !1466
    #dbg_value(i32 %inc198, !1428, !DIExpression(), !1430)
  br label %for.cond161, !dbg !1467, !llvm.loop !1468

for.inc200:                                       ; preds = %for.cond161
  %inc201 = add nuw nsw i32 %r.0, 1, !dbg !1470
    #dbg_value(i32 %inc201, !1404, !DIExpression(), !1403)
  br label %for.cond144, !dbg !1471, !llvm.loop !1472

for.inc203:                                       ; preds = %for.cond144
  %add204 = add nuw nsw i32 %c140.0, 16, !dbg !1474
    #dbg_value(i32 %add204, !1394, !DIExpression(), !1395)
  br label %for.cond141, !dbg !1475, !llvm.loop !1476

for.cond207:                                      ; preds = %for.cond207.preheader, %for.inc241
  %indvars.iv = phi i32 [ 142, %for.cond207.preheader ], [ %indvars.iv.next, %for.inc241 ], !dbg !1478
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond207.preheader ], !dbg !1478
    #dbg_value(i32 %r206.0, !1479, !DIExpression(), !1480)
  %cmp208 = icmp samesign ult i32 %r206.0, 142, !dbg !1481
  br i1 %cmp208, label %for.cond212.preheader, label %for.end243, !dbg !1401

for.cond212.preheader:                            ; preds = %for.cond207
  br label %for.cond212, !dbg !1483

for.cond212:                                      ; preds = %for.cond212.preheader, %for.inc238
  %c211.0 = phi i32 [ %add239, %for.inc238 ], [ 0, %for.cond212.preheader ], !dbg !1486
    #dbg_value(i32 %c211.0, !1487, !DIExpression(), !1488)
  %cmp213 = icmp samesign ult i32 %c211.0, 144, !dbg !1489
  br i1 %cmp213, label %for.cond217.preheader, label %for.inc241, !dbg !1483

for.cond217.preheader:                            ; preds = %for.cond212
  br label %for.cond217, !dbg !1491

for.cond217:                                      ; preds = %for.cond217.preheader, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond217.preheader ], !dbg !1494
    #dbg_value(i32 %i216.0, !1495, !DIExpression(), !1496)
  %exitcond12 = icmp ne i32 %i216.0, %indvars.iv, !dbg !1497
  br i1 %exitcond12, label %for.body221, label %for.inc238, !dbg !1491

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 9, !dbg !1499
  %add224 = add nuw nsw i32 %div223, %c211.0, !dbg !1501
  %add225 = add nuw nsw i32 %add224, %i216.0, !dbg !1502
  %arrayidx226 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add225, !dbg !1503
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1504
  %mul228 = mul nuw nsw i32 %add227, 145, !dbg !1505
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1506
  %add.ptr230 = getelementptr inbounds nuw i8, ptr %add.ptr229, i32 %c211.0, !dbg !1507
  %cmp232 = icmp samesign ult i32 %c211.0, 128, !dbg !1508
  %sub234 = sub nuw nsw i32 144, %c211.0, !dbg !1508
  %cond = select i1 %cmp232, i32 16, i32 %sub234, !dbg !1508
  call fastcc void @decode(ptr noundef nonnull %arrayidx226, ptr noundef nonnull %add.ptr230, i32 noundef %cond) #4, !dbg !1509
  %inc236 = add nuw nsw i32 %i216.0, 1, !dbg !1510
    #dbg_value(i32 %inc236, !1495, !DIExpression(), !1496)
  br label %for.cond217, !dbg !1511, !llvm.loop !1512

for.inc238:                                       ; preds = %for.cond217
  %add239 = add nuw nsw i32 %c211.0, 16, !dbg !1514
    #dbg_value(i32 %add239, !1487, !DIExpression(), !1488)
  br label %for.cond212, !dbg !1515, !llvm.loop !1516

for.inc241:                                       ; preds = %for.cond212
  %add242 = add nuw nsw i32 %r206.0, 16, !dbg !1518
    #dbg_value(i32 %add242, !1479, !DIExpression(), !1480)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1519
  br label %for.cond207, !dbg !1519, !llvm.loop !1520

for.end243:                                       ; preds = %for.cond207
  ret void, !dbg !1522
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1523 {
entry:
    #dbg_value(ptr %a, !1526, !DIExpression(), !1527)
    #dbg_value(ptr %b, !1528, !DIExpression(), !1527)
    #dbg_value(ptr %c, !1529, !DIExpression(), !1527)
    #dbg_value(i32 12, !1530, !DIExpression(), !1527)
    #dbg_value(i32 142, !1531, !DIExpression(), !1527)
    #dbg_value(i32 1, !1532, !DIExpression(), !1527)
    #dbg_value(i32 0, !1533, !DIExpression(), !1535)
  br label %for.cond, !dbg !1536

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1537
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1526, !DIExpression(), !1527)
    #dbg_value(ptr %c.addr.0, !1529, !DIExpression(), !1527)
    #dbg_value(i32 %i.0, !1533, !DIExpression(), !1535)
  %exitcond = icmp ne i32 %i.0, 142, !dbg !1538
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !1540

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1541

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !1544
    #dbg_value(i32 poison, !1545, !DIExpression(), !1546)
    #dbg_value(ptr %c.addr.1, !1529, !DIExpression(), !1527)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !1541

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef 12, i32 noundef 1) #4, !dbg !1547
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1550
    #dbg_value(i32 1, !1545, !DIExpression(), !1546)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1551
    #dbg_value(ptr %incdec.ptr, !1529, !DIExpression(), !1527)
  br label %for.cond1, !dbg !1552, !llvm.loop !1553

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw nsw i32 %i.0, 1, !dbg !1555
    #dbg_value(i32 %inc5, !1533, !DIExpression(), !1535)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %a.addr.0, i32 12, !dbg !1556
    #dbg_value(ptr %add.ptr6, !1526, !DIExpression(), !1527)
  br label %for.cond, !dbg !1557, !llvm.loop !1558

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1560
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1561 {
entry:
    #dbg_value(ptr %a, !1564, !DIExpression(), !1565)
    #dbg_value(ptr %b, !1566, !DIExpression(), !1565)
    #dbg_value(ptr %c, !1567, !DIExpression(), !1565)
    #dbg_value(i32 142, !1568, !DIExpression(), !1565)
    #dbg_value(i32 1, !1569, !DIExpression(), !1565)
    #dbg_value(i32 0, !1570, !DIExpression(), !1572)
  br label %for.cond, !dbg !1573

for.cond:                                         ; preds = %for.body3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ], !dbg !1574
    #dbg_value(i32 %i.0, !1570, !DIExpression(), !1572)
  %exitcond = icmp ne i32 %i.0, 142, !dbg !1575
  br i1 %exitcond, label %for.body3, label %for.end13, !dbg !1577

for.body3:                                        ; preds = %for.cond
    #dbg_value(i32 poison, !1578, !DIExpression(), !1581)
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1582
  %0 = load i8, ptr %add.ptr, align 1, !dbg !1585
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %b, i32 %i.0, !dbg !1586
  %1 = load i8, ptr %add.ptr6, align 1, !dbg !1587
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #4, !dbg !1588
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !1589
  store i8 %call, ptr %add.ptr9, align 1, !dbg !1590
    #dbg_value(i32 1, !1578, !DIExpression(), !1581)
    #dbg_value(i32 poison, !1578, !DIExpression(), !1581)
  %inc12 = add nuw nsw i32 %i.0, 1, !dbg !1591
    #dbg_value(i32 %inc12, !1570, !DIExpression(), !1572)
  br label %for.cond, !dbg !1592, !llvm.loop !1593

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1595
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef nonnull %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1596 {
entry:
    #dbg_value(ptr %m, !1597, !DIExpression(), !1598)
    #dbg_value(ptr %menc, !1599, !DIExpression(), !1598)
    #dbg_value(i32 1848, !1600, !DIExpression(), !1598)
    #dbg_value(i32 0, !1601, !DIExpression(), !1598)
  br label %for.cond, !dbg !1602

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1604
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1597, !DIExpression(), !1598)
    #dbg_value(i32 %i.0, !1601, !DIExpression(), !1598)
  %exitcond = icmp ne i32 %i.0, 924, !dbg !1605
  br i1 %exitcond, label %for.body, label %if.end, !dbg !1607

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1608
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1610
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1611
  %shl = shl i8 %1, 4, !dbg !1612
  %or = or i8 %shl, %0, !dbg !1613
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1614
  store i8 %or, ptr %arrayidx, align 1, !dbg !1615
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1616
    #dbg_value(i32 %inc, !1601, !DIExpression(), !1598)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1617
    #dbg_value(ptr %add.ptr3, !1597, !DIExpression(), !1598)
  br label %for.cond, !dbg !1618, !llvm.loop !1619

if.end:                                           ; preds = %for.cond
  ret void, !dbg !1621
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1622 {
entry:
    #dbg_value(i8 %a, !1625, !DIExpression(), !1626)
    #dbg_value(i8 %b, !1627, !DIExpression(), !1626)
  %xor1 = xor i8 %a, %b, !dbg !1628
  ret i8 %xor1, !dbg !1629
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef nonnull %a, ptr noundef nonnull %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1630 {
entry:
    #dbg_value(ptr %a, !1633, !DIExpression(), !1634)
    #dbg_value(ptr %b, !1635, !DIExpression(), !1634)
    #dbg_value(i32 12, !1636, !DIExpression(), !1634)
    #dbg_value(i32 1, !1637, !DIExpression(), !1634)
    #dbg_value(i8 0, !1638, !DIExpression(), !1634)
    #dbg_value(i32 0, !1639, !DIExpression(), !1641)
  br label %for.cond, !dbg !1642

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1634
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1643
    #dbg_value(i32 %i.0, !1639, !DIExpression(), !1641)
    #dbg_value(ptr %b.addr.0, !1635, !DIExpression(), !1634)
    #dbg_value(i8 %ret.0, !1638, !DIExpression(), !1634)
  %exitcond = icmp ne i32 %i.0, 12, !dbg !1644
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1646

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1647
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1647
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1649
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #4, !dbg !1650
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #4, !dbg !1651
    #dbg_value(i8 %call1, !1638, !DIExpression(), !1634)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1652
    #dbg_value(i32 %inc, !1639, !DIExpression(), !1641)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !1653
    #dbg_value(ptr %add.ptr, !1635, !DIExpression(), !1634)
  br label %for.cond, !dbg !1654, !llvm.loop !1655

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1634
  ret i8 %ret.0.lcssa, !dbg !1657
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1658 {
entry:
    #dbg_value(i8 %a, !1659, !DIExpression(), !1660)
    #dbg_value(i8 %b, !1661, !DIExpression(), !1660)
  %0 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !1662
  %xor1 = xor i8 %a, %0, !dbg !1663
    #dbg_value(i8 %xor1, !1659, !DIExpression(), !1660)
  %1 = trunc i8 %xor1 to i1, !dbg !1664
    #dbg_value(i8 poison, !1665, !DIExpression(), !1660)
  %2 = and i8 %xor1, 2, !dbg !1666
  %mul9 = mul i8 %2, %b, !dbg !1667
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1664
  %xor11 = xor i8 %conv10, %mul9, !dbg !1668
    #dbg_value(i8 %xor11, !1665, !DIExpression(), !1660)
  %3 = and i8 %xor1, 4, !dbg !1669
  %mul16 = mul i8 %3, %b, !dbg !1670
  %xor18 = xor i8 %mul16, %xor11, !dbg !1671
    #dbg_value(i8 %xor18, !1665, !DIExpression(), !1660)
  %4 = and i8 %xor1, 8, !dbg !1672
  %mul23 = mul i8 %4, %b, !dbg !1673
  %xor25 = xor i8 %mul23, %xor18, !dbg !1674
    #dbg_value(i8 %xor25, !1665, !DIExpression(), !1660)
    #dbg_value(i8 %xor25, !1675, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1660)
  %5 = lshr i8 %xor25, 4, !dbg !1676
  %6 = lshr i8 %xor25, 3, !dbg !1677
  %7 = and i8 %6, 14, !dbg !1677
  %8 = xor i8 %5, %7, !dbg !1678
  %xor25.masked = and i8 %xor25, 15, !dbg !1679
  %9 = xor i8 %8, %xor25.masked, !dbg !1679
    #dbg_value(i8 %9, !1680, !DIExpression(), !1660)
  ret i8 %9, !dbg !1681
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1682, !DIExpression(), !1683)
    #dbg_value(i32 0, !1684, !DIExpression(), !1686)
  br label %for.cond, !dbg !1687

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1688
    #dbg_value(i32 %i.0, !1684, !DIExpression(), !1686)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1689
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1691

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1692

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1694
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1694
  %shr = lshr i64 %0, 4, !dbg !1696
  %add = or disjoint i32 %i.0, 1, !dbg !1697
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1698
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1698
  %xor = xor i64 %shr, %1, !dbg !1699
  %and = and i64 %xor, 1085102592571150095, !dbg !1700
    #dbg_value(i64 %and, !1701, !DIExpression(), !1702)
  %shl = shl nuw i64 %and, 4, !dbg !1703
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1704
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1705
  %xor3 = xor i64 %2, %shl, !dbg !1705
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1705
  %add4 = or disjoint i32 %i.0, 1, !dbg !1706
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1707
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1708
  %xor6 = xor i64 %3, %and, !dbg !1708
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1708
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1709
    #dbg_value(i32 %add7, !1684, !DIExpression(), !1686)
  br label %for.cond, !dbg !1710, !llvm.loop !1711

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1713
    #dbg_value(i32 %i8.0, !1714, !DIExpression(), !1715)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1716
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1692

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1718

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1720
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1720
  %shr13 = lshr i64 %4, 8, !dbg !1722
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1723
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1724
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1724
  %xor16 = xor i64 %shr13, %5, !dbg !1725
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1726
    #dbg_value(i64 %and17, !1727, !DIExpression(), !1728)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1729
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1730
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1730
  %shr20 = lshr i64 %6, 8, !dbg !1731
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1732
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1733
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1733
  %xor23 = xor i64 %shr20, %7, !dbg !1734
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1735
    #dbg_value(i64 %and24, !1736, !DIExpression(), !1728)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1737
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1738
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1739
  %xor27 = xor i64 %8, %shl25, !dbg !1739
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1739
  %shl28 = shl nuw i64 %and24, 8, !dbg !1740
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1741
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1742
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1743
  %xor31 = xor i64 %9, %shl28, !dbg !1743
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1743
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1744
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1745
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1746
  %xor34 = xor i64 %10, %and17, !dbg !1746
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1746
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1747
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1748
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1749
  %xor37 = xor i64 %11, %and24, !dbg !1749
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1749
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1750
    #dbg_value(i32 %add39, !1714, !DIExpression(), !1715)
  br label %for.cond9, !dbg !1751, !llvm.loop !1752

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1754
    #dbg_value(i32 %i41.0, !1755, !DIExpression(), !1756)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1757
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1718

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1759

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1761
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1761
  %shr47 = lshr i64 %12, 16, !dbg !1763
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1764
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1765
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1765
  %xor50 = xor i64 %shr47, %13, !dbg !1766
  %and51 = and i64 %xor50, 281470681808895, !dbg !1767
    #dbg_value(i64 %and51, !1768, !DIExpression(), !1769)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1770
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1771
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1771
  %shr55 = lshr i64 %14, 16, !dbg !1772
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1773
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1774
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1774
  %xor58 = xor i64 %shr55, %15, !dbg !1775
  %and59 = and i64 %xor58, 281470681808895, !dbg !1776
    #dbg_value(i64 %and59, !1777, !DIExpression(), !1769)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1778
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1779
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1780
  %xor62 = xor i64 %16, %shl60, !dbg !1780
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1780
  %shl63 = shl nuw i64 %and59, 16, !dbg !1781
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1782
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1783
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1784
  %xor66 = xor i64 %17, %shl63, !dbg !1784
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1784
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1785
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1786
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1787
  %xor69 = xor i64 %18, %and51, !dbg !1787
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1787
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1788
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1789
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1790
  %xor72 = xor i64 %19, %and59, !dbg !1790
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1790
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1791
    #dbg_value(i32 %inc, !1755, !DIExpression(), !1756)
  br label %for.cond42, !dbg !1792, !llvm.loop !1793

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1795
    #dbg_value(i32 %i75.0, !1796, !DIExpression(), !1797)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1798
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1759

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1800
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1800
  %shr81 = lshr i64 %20, 32, !dbg !1802
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1803
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1804
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1804
  %.masked = and i64 %21, 4294967295, !dbg !1805
  %and85 = xor i64 %shr81, %.masked, !dbg !1805
    #dbg_value(i64 %and85, !1806, !DIExpression(), !1807)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1808
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1809
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1810
  %xor88 = xor i64 %22, %shl86, !dbg !1810
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1810
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1811
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1812
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1813
  %xor91 = xor i64 %23, %and85, !dbg !1813
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1813
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1814
    #dbg_value(i32 %inc93, !1796, !DIExpression(), !1797)
  br label %for.cond76, !dbg !1815, !llvm.loop !1816

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1818
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !1819 {
entry:
    #dbg_value(i32 9, !1820, !DIExpression(), !1821)
    #dbg_value(ptr %mat, !1822, !DIExpression(), !1821)
    #dbg_value(ptr %bs_mat, !1823, !DIExpression(), !1821)
    #dbg_value(ptr %acc, !1824, !DIExpression(), !1821)
    #dbg_value(i32 12, !1825, !DIExpression(), !1821)
    #dbg_value(i32 142, !1826, !DIExpression(), !1821)
    #dbg_value(i32 12, !1827, !DIExpression(), !1821)
    #dbg_value(i32 0, !1828, !DIExpression(), !1830)
  br label %for.cond, !dbg !1831

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1832
    #dbg_value(i32 %r.0, !1828, !DIExpression(), !1830)
  %exitcond2 = icmp ne i32 %r.0, 12, !dbg !1833
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1835

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1836

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1839
    #dbg_value(i32 %c.0, !1840, !DIExpression(), !1841)
  %exitcond1 = icmp ne i32 %c.0, 142, !dbg !1842
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1836

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1844

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1847
    #dbg_value(i32 %k.0, !1848, !DIExpression(), !1849)
  %exitcond = icmp ne i32 %k.0, 12, !dbg !1850
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1844

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, 12, !dbg !1852
  %add = add nuw nsw i32 %mul, %k.0, !dbg !1854
  %add.ptr.idx = mul nuw nsw i32 %add, 72, !dbg !1855
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1855
  %mul8 = mul nuw nsw i32 %r.0, 142, !dbg !1856
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1857
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1857
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1857
  %mul10 = mul nuw nsw i32 %r.0, 12, !dbg !1858
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !1859
  %add.ptr13.idx = mul nuw nsw i32 %add11, 72, !dbg !1860
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !1860
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #4, !dbg !1861
  %add14 = add nuw nsw i32 %k.0, 1, !dbg !1862
    #dbg_value(i32 %add14, !1848, !DIExpression(), !1849)
  br label %for.cond4, !dbg !1863, !llvm.loop !1864

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1866
    #dbg_value(i32 %inc, !1840, !DIExpression(), !1841)
  br label %for.cond1, !dbg !1867, !llvm.loop !1868

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1870
    #dbg_value(i32 %inc18, !1828, !DIExpression(), !1830)
  br label %for.cond, !dbg !1871, !llvm.loop !1872

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1874
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %V, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !1875 {
entry:
    #dbg_value(ptr %p, !1876, !DIExpression(), !1877)
    #dbg_value(ptr %P1, !1878, !DIExpression(), !1877)
    #dbg_value(ptr %V, !1879, !DIExpression(), !1877)
    #dbg_value(ptr %acc, !1880, !DIExpression(), !1877)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 9, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 142, i32 noundef 142, i32 noundef 12, i32 noundef 1) #4, !dbg !1881
  ret void, !dbg !1882
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1883 {
entry:
    #dbg_value(i32 9, !1884, !DIExpression(), !1885)
    #dbg_value(ptr %bs_mat, !1886, !DIExpression(), !1885)
    #dbg_value(ptr %mat, !1887, !DIExpression(), !1885)
    #dbg_value(ptr %acc, !1888, !DIExpression(), !1885)
    #dbg_value(i32 142, !1889, !DIExpression(), !1885)
    #dbg_value(i32 142, !1890, !DIExpression(), !1885)
    #dbg_value(i32 12, !1891, !DIExpression(), !1885)
    #dbg_value(i32 1, !1892, !DIExpression(), !1885)
    #dbg_value(i32 0, !1893, !DIExpression(), !1885)
    #dbg_value(i32 0, !1894, !DIExpression(), !1896)
  br label %for.cond, !dbg !1897

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 142, %entry ], !dbg !1898
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1898
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1899
    #dbg_value(i32 %r.0, !1894, !DIExpression(), !1896)
    #dbg_value(i32 %bs_mat_entries_used.0, !1893, !DIExpression(), !1885)
  %exitcond2 = icmp ne i32 %r.0, 142, !dbg !1900
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1902

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !1903
  br label %for.cond1, !dbg !1903

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %bs_mat_entries_used.1 = phi i32 [ %add14, %for.inc15 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !1885
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ %r.0, %for.cond1.preheader ], !dbg !1906
    #dbg_value(i32 %c.0, !1907, !DIExpression(), !1908)
    #dbg_value(i32 %bs_mat_entries_used.1, !1893, !DIExpression(), !1885)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !1909
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1903

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1911

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1914
    #dbg_value(i32 %k.0, !1915, !DIExpression(), !1916)
  %exitcond = icmp ne i32 %k.0, 12, !dbg !1917
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1911

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !1919
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1919
  %mul8 = mul nuw nsw i32 %k.0, 142, !dbg !1921
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1922
  %arrayidx = getelementptr i8, ptr %1, i32 %c.0, !dbg !1922
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1922
  %mul9 = mul nuw nsw i32 %r.0, 12, !dbg !1923
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !1924
  %add.ptr12.idx = mul nuw nsw i32 %add10, 72, !dbg !1925
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !1925
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #4, !dbg !1926
  %add13 = add nuw nsw i32 %k.0, 1, !dbg !1927
    #dbg_value(i32 %add13, !1915, !DIExpression(), !1916)
  br label %for.cond4, !dbg !1928, !llvm.loop !1929

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1893, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1885)
  %add14 = add i32 %bs_mat_entries_used.1, 1, !dbg !1931
    #dbg_value(i32 %add14, !1893, !DIExpression(), !1885)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1932
    #dbg_value(i32 %inc, !1907, !DIExpression(), !1908)
  br label %for.cond1, !dbg !1933, !llvm.loop !1934

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1885
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1936
    #dbg_value(i32 %inc18, !1894, !DIExpression(), !1896)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !1937
  br label %for.cond, !dbg !1937, !llvm.loop !1938

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1940
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1941 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1942, !DIExpression(), !1943)
    #dbg_value(ptr %sm, !1944, !DIExpression(), !1943)
    #dbg_value(ptr %smlen, !1945, !DIExpression(), !1943)
    #dbg_value(ptr %m, !1946, !DIExpression(), !1943)
    #dbg_value(i32 %mlen, !1947, !DIExpression(), !1943)
    #dbg_value(ptr %csk, !1948, !DIExpression(), !1943)
    #dbg_value(i32 0, !1949, !DIExpression(), !1943)
    #dbg_value(i32 964, !1950, !DIExpression(), !1943)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1951
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #6, !dbg !1952
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1953
    #dbg_value(ptr %siglen, !1954, !DIExpression(DW_OP_deref), !1943)
  %call2 = call i32 @pqmayo_MAYO_5_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #4, !dbg !1955
    #dbg_value(i32 0, !1949, !DIExpression(), !1943)
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1954, !DIExpression(), !1943)
  %cmp3.not = icmp eq i32 %0, 964
  br i1 %cmp3.not, label %if.end, label %if.then, !dbg !1956

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1958
    #dbg_value(i32 %1, !1954, !DIExpression(), !1943)
  %add = add i32 %1, %mlen, !dbg !1960
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #6, !dbg !1961
  br label %err, !dbg !1962

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1963
    #dbg_value(i32 %2, !1954, !DIExpression(), !1943)
  %add5 = add i32 %2, %mlen, !dbg !1964
  store i32 %add5, ptr %smlen, align 4, !dbg !1965
  br label %err, !dbg !1966

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1967, !1968)
  ret i32 0, !dbg !1969
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1970 {
entry:
    #dbg_value(ptr %p, !1971, !DIExpression(), !1972)
    #dbg_value(ptr %m, !1973, !DIExpression(), !1972)
    #dbg_value(ptr %mlen, !1974, !DIExpression(), !1972)
    #dbg_value(ptr %sm, !1975, !DIExpression(), !1972)
    #dbg_value(i32 %smlen, !1976, !DIExpression(), !1972)
    #dbg_value(ptr %pk, !1977, !DIExpression(), !1972)
    #dbg_value(i32 964, !1978, !DIExpression(), !1972)
  %cmp = icmp ult i32 %smlen, 964, !dbg !1979
  br i1 %cmp, label %return, label %if.end, !dbg !1979

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1981
  %sub = add i32 %smlen, -964, !dbg !1982
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #4, !dbg !1983
    #dbg_value(i32 %call, !1984, !DIExpression(), !1972)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1985
  br i1 %cmp1, label %if.then2, label %return, !dbg !1985

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -964, !dbg !1987
  store i32 %sub3, ptr %mlen, align 4, !dbg !1989
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !1990
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #6, !dbg !1991
  br label %return, !dbg !1992

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ %call, %if.end ], !dbg !1972
  ret i32 %retval.0, !dbg !1993
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1994 {
entry:
  %tEnc = alloca [71 x i8], align 1
  %t = alloca [142 x i8], align 1
  %y = alloca [284 x i8], align 1
  %s = alloca [1848 x i8], align 1
  %pk = alloca [107415 x i64], align 8
  %tmp = alloca [104 x i8], align 1
    #dbg_value(ptr %p, !1997, !DIExpression(), !1998)
    #dbg_value(ptr %m, !1999, !DIExpression(), !1998)
    #dbg_value(i32 %mlen, !2000, !DIExpression(), !1998)
    #dbg_value(ptr %sig, !2001, !DIExpression(), !1998)
    #dbg_value(ptr %cpk, !2002, !DIExpression(), !1998)
    #dbg_declare(ptr %tEnc, !2003, !DIExpression(), !2004)
    #dbg_declare(ptr %t, !2005, !DIExpression(), !2006)
    #dbg_declare(ptr %y, !2007, !DIExpression(), !2011)
  call void @mayo_memset(ptr %y, i8 0, i32 284), !dbg !2011
    #dbg_declare(ptr %s, !2012, !DIExpression(), !2013)
    #dbg_declare(ptr %pk, !2014, !DIExpression(), !2015)
  call void @mayo_memset(ptr %pk, i8 0, i32 859320), !dbg !2015
    #dbg_declare(ptr %tmp, !2016, !DIExpression(), !2020)
    #dbg_value(i32 142, !2021, !DIExpression(), !1998)
    #dbg_value(i32 154, !2022, !DIExpression(), !1998)
    #dbg_value(i32 12, !2023, !DIExpression(), !1998)
    #dbg_value(i32 71, !2024, !DIExpression(), !1998)
    #dbg_value(i32 964, !2025, !DIExpression(), !1998)
    #dbg_value(i32 64, !2026, !DIExpression(), !1998)
    #dbg_value(i32 40, !2027, !DIExpression(), !1998)
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #4, !dbg !2028
    #dbg_value(i32 0, !2029, !DIExpression(), !1998)
    #dbg_value(ptr %pk, !2030, !DIExpression(), !1998)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 731016, !dbg !2031
    #dbg_value(ptr %add.ptr, !2032, !DIExpression(), !1998)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 853704, !dbg !2033
    #dbg_value(ptr %add.ptr2, !2034, !DIExpression(), !1998)
  call void @shake256(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef %m, i32 noundef %mlen) #4, !dbg !2035
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 64, !dbg !2036
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 924, !dbg !2037
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 40) #6, !dbg !2038
  call void @shake256(ptr noundef nonnull %tEnc, i32 noundef 71, ptr noundef nonnull %tmp, i32 noundef 104) #4, !dbg !2039
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 142) #4, !dbg !2040
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 1848) #4, !dbg !2041
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #4, !dbg !2042
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 142) #6, !dbg !2043
  %cmp21 = icmp ne i32 %call20, 0, !dbg !2045
  %. = zext i1 %cmp21 to i32, !dbg !1998
  ret i32 %., !dbg !2046
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !2047 {
entry:
    #dbg_value(ptr %p, !2048, !DIExpression(), !2049)
    #dbg_value(ptr %cpk, !2050, !DIExpression(), !2049)
    #dbg_value(ptr %pk, !2051, !DIExpression(), !2049)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #4, !dbg !2052
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !2053
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 853704, !dbg !2054
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 78, i32 noundef 142) #4, !dbg !2055
  ret i32 0, !dbg !2056
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %eval) unnamed_addr #0 !dbg !2057 {
entry:
  %SPS = alloca [1296 x i64], align 8
  %zero = alloca [142 x i8], align 1
    #dbg_value(ptr %p, !2060, !DIExpression(), !2061)
    #dbg_value(ptr %s, !2062, !DIExpression(), !2061)
    #dbg_value(ptr %P1, !2063, !DIExpression(), !2061)
    #dbg_value(ptr %P2, !2064, !DIExpression(), !2061)
    #dbg_value(ptr %P3, !2065, !DIExpression(), !2061)
    #dbg_value(ptr %eval, !2066, !DIExpression(), !2061)
    #dbg_declare(ptr %SPS, !2067, !DIExpression(), !2068)
  call void @mayo_memset(ptr %SPS, i8 0, i32 10368), !dbg !2068
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #4, !dbg !2069
    #dbg_declare(ptr %zero, !2070, !DIExpression(), !2071)
  call void @mayo_memset(ptr %zero, i8 0, i32 142), !dbg !2071
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #4, !dbg !2072
  ret void, !dbg !2073
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %s, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2074 {
entry:
  %PS = alloca [16632 x i64], align 8
    #dbg_value(ptr %p, !2077, !DIExpression(), !2078)
    #dbg_value(ptr %P1, !2079, !DIExpression(), !2078)
    #dbg_value(ptr %P2, !2080, !DIExpression(), !2078)
    #dbg_value(ptr %P3, !2081, !DIExpression(), !2078)
    #dbg_value(ptr %s, !2082, !DIExpression(), !2078)
    #dbg_value(ptr %SPS, !2083, !DIExpression(), !2078)
    #dbg_declare(ptr %PS, !2084, !DIExpression(), !2088)
  call void @mayo_memset(ptr %PS, i8 0, i32 133056), !dbg !2088
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 142, i32 noundef 142, i32 noundef 12, i32 noundef 12, ptr noundef nonnull %PS) #4, !dbg !2089
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 142, i32 noundef 12, i32 noundef 154, ptr noundef %SPS) #4, !dbg !2090
  ret void, !dbg !2091
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef nonnull %PS) unnamed_addr #0 !dbg !2092 {
entry:
  %accumulator = alloca [266112 x i64], align 8
    #dbg_value(ptr %P1, !2095, !DIExpression(), !2096)
    #dbg_value(ptr %P2, !2097, !DIExpression(), !2096)
    #dbg_value(ptr %P3, !2098, !DIExpression(), !2096)
    #dbg_value(ptr %S, !2099, !DIExpression(), !2096)
    #dbg_value(i32 142, !2100, !DIExpression(), !2096)
    #dbg_value(i32 142, !2101, !DIExpression(), !2096)
    #dbg_value(i32 12, !2102, !DIExpression(), !2096)
    #dbg_value(i32 12, !2103, !DIExpression(), !2096)
    #dbg_value(ptr %PS, !2104, !DIExpression(), !2096)
    #dbg_value(i32 154, !2105, !DIExpression(), !2096)
    #dbg_value(i32 9, !2106, !DIExpression(), !2096)
    #dbg_declare(ptr %accumulator, !2107, !DIExpression(), !2111)
  call void @mayo_memset(ptr %accumulator, i8 0, i32 2128896), !dbg !2111
    #dbg_value(i32 0, !2112, !DIExpression(), !2096)
    #dbg_value(i32 0, !2113, !DIExpression(), !2115)
  br label %for.cond, !dbg !2116

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ 142, %entry ], !dbg !2117
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2117
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2118
    #dbg_value(i32 %row.0, !2113, !DIExpression(), !2115)
    #dbg_value(i32 %P1_used.0, !2112, !DIExpression(), !2096)
  %exitcond4 = icmp ne i32 %row.0, 142, !dbg !2119
  br i1 %exitcond4, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2121

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2122
  br label %for.cond2, !dbg !2122

for.cond56.preheader:                             ; preds = %for.cond
  br label %for.cond56, !dbg !2125

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !2096
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2127
    #dbg_value(i32 %j.0, !2128, !DIExpression(), !2129)
    #dbg_value(i32 %P1_used.1, !2112, !DIExpression(), !2096)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2130
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2122

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !2096
  br label %for.cond21, !dbg !2132

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2134

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2137
    #dbg_value(i32 %col.0, !2138, !DIExpression(), !2139)
  %exitcond = icmp ne i32 %col.0, 12, !dbg !2140
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2134

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %P1_used.1, 72, !dbg !2142
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !2142
  %mul8 = mul nuw nsw i32 %row.0, 12, !dbg !2144
  %add9 = add nuw nsw i32 %mul8, %col.0, !dbg !2145
  %mul10 = shl nuw nsw i32 %add9, 4, !dbg !2146
  %mul11 = mul nuw nsw i32 %col.0, 154, !dbg !2147
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2148
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2148
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2148
  %conv = zext i8 %2 to i32, !dbg !2148
  %add13 = add nuw nsw i32 %mul10, %conv, !dbg !2149
  %add.ptr15.idx = mul nuw nsw i32 %add13, 72, !dbg !2150
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr15.idx, !dbg !2150
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #4, !dbg !2151
  %inc = add nuw nsw i32 %col.0, 1, !dbg !2152
    #dbg_value(i32 %inc, !2138, !DIExpression(), !2139)
  br label %for.cond5, !dbg !2153, !llvm.loop !2154

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2112, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2096)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2156
    #dbg_value(i32 %inc16, !2112, !DIExpression(), !2096)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2157
    #dbg_value(i32 %inc18, !2128, !DIExpression(), !2129)
  br label %for.cond2, !dbg !2158, !llvm.loop !2159

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2161
    #dbg_value(i32 %j20.0, !2162, !DIExpression(), !2163)
  %exitcond3 = icmp ne i32 %j20.0, 12, !dbg !2164
  br i1 %exitcond3, label %for.cond26.preheader, label %for.inc52, !dbg !2132

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2166

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2169
    #dbg_value(i32 %col25.0, !2170, !DIExpression(), !2171)
  %exitcond2 = icmp ne i32 %col25.0, 12, !dbg !2172
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2166

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nuw nsw i32 %row.0, 12, !dbg !2174
  %add31 = add nuw nsw i32 %mul30, %j20.0, !dbg !2176
  %add.ptr33.idx = mul nuw nsw i32 %add31, 72, !dbg !2177
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr33.idx, !dbg !2177
  %mul35 = mul nuw nsw i32 %row.0, 12, !dbg !2178
  %add36 = add nuw nsw i32 %mul35, %col25.0, !dbg !2179
  %mul37 = shl nuw nsw i32 %add36, 4, !dbg !2180
  %mul38 = mul nuw nsw i32 %col25.0, 154, !dbg !2181
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2182
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2182
  %arrayidx41 = getelementptr i8, ptr %4, i32 142, !dbg !2182
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2182
  %conv42 = zext i8 %5 to i32, !dbg !2182
  %add43 = add nuw nsw i32 %mul37, %conv42, !dbg !2183
  %add.ptr45.idx = mul nuw nsw i32 %add43, 72, !dbg !2184
  %add.ptr45 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr45.idx, !dbg !2184
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #4, !dbg !2185
  %inc47 = add nuw nsw i32 %col25.0, 1, !dbg !2186
    #dbg_value(i32 %inc47, !2170, !DIExpression(), !2171)
  br label %for.cond26, !dbg !2187, !llvm.loop !2188

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw nsw i32 %j20.0, 1, !dbg !2190
    #dbg_value(i32 %inc50, !2162, !DIExpression(), !2163)
  br label %for.cond21, !dbg !2191, !llvm.loop !2192

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw nsw i32 %row.0, 1, !dbg !2194
    #dbg_value(i32 %inc53, !2113, !DIExpression(), !2115)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !2195
  br label %for.cond, !dbg !2195, !llvm.loop !2196

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %indvars.iv6 = phi i32 [ 12, %for.cond56.preheader ], [ %indvars.iv.next7, %for.inc90 ], !dbg !2198
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2198
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ 142, %for.cond56.preheader ], !dbg !2199
    #dbg_value(i32 %row55.0, !2200, !DIExpression(), !2201)
    #dbg_value(i32 %P3_used.0, !2202, !DIExpression(), !2096)
  %exitcond9 = icmp ne i32 %row55.0, 154, !dbg !2203
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2125

for.cond61.preheader:                             ; preds = %for.cond56
  %6 = add i32 %P3_used.0, %indvars.iv6, !dbg !2205
  br label %for.cond61, !dbg !2205

while.cond.preheader:                             ; preds = %for.cond56
  br label %while.cond, !dbg !2208

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !2096
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2209
    #dbg_value(i32 %j60.0, !2210, !DIExpression(), !2211)
    #dbg_value(i32 %P3_used.1, !2202, !DIExpression(), !2096)
  %exitcond8 = icmp ne i32 %P3_used.1, %6, !dbg !2212
  br i1 %exitcond8, label %for.cond66.preheader, label %for.inc90, !dbg !2205

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2214

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2217
    #dbg_value(i32 %col65.0, !2218, !DIExpression(), !2219)
  %exitcond5 = icmp ne i32 %col65.0, 12, !dbg !2220
  br i1 %exitcond5, label %for.body69, label %for.inc87, !dbg !2214

for.body69:                                       ; preds = %for.cond66
  %add.ptr71.idx = mul nsw i32 %P3_used.1, 72, !dbg !2222
  %add.ptr71 = getelementptr inbounds i8, ptr %P3, i32 %add.ptr71.idx, !dbg !2222
  %mul73 = mul nuw nsw i32 %row55.0, 12, !dbg !2224
  %add74 = add nuw nsw i32 %mul73, %col65.0, !dbg !2225
  %mul75 = shl nuw nsw i32 %add74, 4, !dbg !2226
  %mul76 = mul nuw nsw i32 %col65.0, 154, !dbg !2227
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2228
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2228
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2228
  %conv79 = zext i8 %8 to i32, !dbg !2228
  %add80 = add nuw nsw i32 %mul75, %conv79, !dbg !2229
  %add.ptr82.idx = mul nuw nsw i32 %add80, 72, !dbg !2230
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr82.idx, !dbg !2230
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #4, !dbg !2231
  %inc84 = add nuw nsw i32 %col65.0, 1, !dbg !2232
    #dbg_value(i32 %inc84, !2218, !DIExpression(), !2219)
  br label %for.cond66, !dbg !2233, !llvm.loop !2234

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2202, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2096)
  %inc86 = add i32 %P3_used.1, 1, !dbg !2236
    #dbg_value(i32 %inc86, !2202, !DIExpression(), !2096)
  %inc88 = add nuw nsw i32 %j60.0, 1, !dbg !2237
    #dbg_value(i32 %inc88, !2210, !DIExpression(), !2211)
  br label %for.cond61, !dbg !2238, !llvm.loop !2239

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !2096
  %inc91 = add nuw nsw i32 %row55.0, 1, !dbg !2241
    #dbg_value(i32 %inc91, !2200, !DIExpression(), !2201)
  %indvars.iv.next7 = add nsw i32 %indvars.iv6, -1, !dbg !2242
  br label %for.cond56, !dbg !2242, !llvm.loop !2243

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !2096
    #dbg_value(i32 %i.0, !2245, !DIExpression(), !2096)
  %exitcond10 = icmp ne i32 %i.0, 1848, !dbg !2246
  br i1 %exitcond10, label %while.body, label %while.end, !dbg !2208

while.body:                                       ; preds = %while.cond
  %add.ptr99.idx = mul nuw nsw i32 %i.0, 1152, !dbg !2247
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr99.idx, !dbg !2247
  %add.ptr101.idx = mul nuw nsw i32 %i.0, 72, !dbg !2249
  %add.ptr101 = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr101.idx, !dbg !2249
  call fastcc void @m_vec_multiply_bins(i32 noundef 9, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #4, !dbg !2250
  %inc102 = add nuw nsw i32 %i.0, 1, !dbg !2251
    #dbg_value(i32 %inc102, !2245, !DIExpression(), !2096)
  br label %while.cond, !dbg !2208, !llvm.loop !2252

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2254
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2255 {
entry:
  %accumulator = alloca [20736 x i64], align 8
    #dbg_value(ptr %PS, !2258, !DIExpression(), !2259)
    #dbg_value(ptr %S, !2260, !DIExpression(), !2259)
    #dbg_value(i32 142, !2261, !DIExpression(), !2259)
    #dbg_value(i32 12, !2262, !DIExpression(), !2259)
    #dbg_value(i32 154, !2263, !DIExpression(), !2259)
    #dbg_value(ptr %SPS, !2264, !DIExpression(), !2259)
    #dbg_declare(ptr %accumulator, !2265, !DIExpression(), !2269)
  call void @mayo_memset(ptr %accumulator, i8 0, i32 165888), !dbg !2269
    #dbg_value(i32 9, !2270, !DIExpression(), !2259)
    #dbg_value(i32 0, !2271, !DIExpression(), !2273)
  br label %for.cond, !dbg !2274

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2275
    #dbg_value(i32 %row.0, !2271, !DIExpression(), !2273)
  %exitcond2 = icmp ne i32 %row.0, 12, !dbg !2276
  br i1 %exitcond2, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2278

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2279

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !2282

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2283
    #dbg_value(i32 %j.0, !2284, !DIExpression(), !2285)
  %exitcond1 = icmp ne i32 %j.0, 154, !dbg !2286
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2279

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2288

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2291
    #dbg_value(i32 %col.0, !2292, !DIExpression(), !2293)
  %exitcond = icmp ne i32 %col.0, 12, !dbg !2294
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2288

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %j.0, 12, !dbg !2296
  %add7 = add nuw nsw i32 %mul, %col.0, !dbg !2298
  %add.ptr.idx = mul nuw nsw i32 %add7, 72, !dbg !2299
  %add.ptr = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr.idx, !dbg !2299
  %mul9 = mul nuw nsw i32 %row.0, 12, !dbg !2300
  %add10 = add nuw nsw i32 %mul9, %col.0, !dbg !2301
  %mul11 = shl nuw nsw i32 %add10, 4, !dbg !2302
  %mul12 = mul nuw nsw i32 %row.0, 154, !dbg !2303
  %0 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2304
  %arrayidx = getelementptr i8, ptr %0, i32 %j.0, !dbg !2304
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2304
  %conv = zext i8 %1 to i32, !dbg !2304
  %add14 = add nuw nsw i32 %mul11, %conv, !dbg !2305
  %add.ptr16.idx = mul nuw nsw i32 %add14, 72, !dbg !2306
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr16.idx, !dbg !2306
  call fastcc void @m_vec_add(i32 noundef 9, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #4, !dbg !2307
  %add17 = add nuw nsw i32 %col.0, 1, !dbg !2308
    #dbg_value(i32 %add17, !2292, !DIExpression(), !2293)
  br label %for.cond4, !dbg !2309, !llvm.loop !2310

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %j.0, 1, !dbg !2312
    #dbg_value(i32 %inc, !2284, !DIExpression(), !2285)
  br label %for.cond1, !dbg !2313, !llvm.loop !2314

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw nsw i32 %row.0, 1, !dbg !2316
    #dbg_value(i32 %inc21, !2271, !DIExpression(), !2273)
  br label %for.cond, !dbg !2317, !llvm.loop !2318

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2259
    #dbg_value(i32 %i.0, !2320, !DIExpression(), !2259)
  %exitcond3 = icmp ne i32 %i.0, 144, !dbg !2321
  br i1 %exitcond3, label %while.body, label %while.end, !dbg !2282

while.body:                                       ; preds = %while.cond
  %add.ptr29.idx = mul nuw nsw i32 %i.0, 1152, !dbg !2322
  %add.ptr29 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr29.idx, !dbg !2322
  %add.ptr31.idx = mul nuw nsw i32 %i.0, 72, !dbg !2324
  %add.ptr31 = getelementptr inbounds nuw i8, ptr %SPS, i32 %add.ptr31.idx, !dbg !2324
  call fastcc void @m_vec_multiply_bins(i32 noundef 9, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #4, !dbg !2325
  %inc32 = add nuw nsw i32 %i.0, 1, !dbg !2326
    #dbg_value(i32 %inc32, !2320, !DIExpression(), !2259)
  br label %while.cond, !dbg !2282, !llvm.loop !2327

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2329
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2330 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2333, !DIExpression(), !2334)
    #dbg_value(ptr %in, !2335, !DIExpression(), !2334)
    #dbg_value(ptr %acc, !2336, !DIExpression(), !2334)
    #dbg_value(i32 0, !2337, !DIExpression(), !2339)
  br label %for.cond, !dbg !2340

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2341
    #dbg_value(i32 %i.0, !2337, !DIExpression(), !2339)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2342
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2344

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2345
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2345
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2347
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2348
  %xor = xor i64 %1, %0, !dbg !2348
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2348
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2349
    #dbg_value(i32 %inc, !2337, !DIExpression(), !2339)
  br label %for.cond, !dbg !2350, !llvm.loop !2351

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2353
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef nonnull %bins, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2354 {
entry:
    #dbg_value(i32 9, !2357, !DIExpression(), !2358)
    #dbg_value(ptr %bins, !2359, !DIExpression(), !2358)
    #dbg_value(ptr %out, !2360, !DIExpression(), !2358)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 360, !dbg !2361
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 720, !dbg !2362
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #4, !dbg !2363
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 792, !dbg !2364
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 864, !dbg !2365
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #4, !dbg !2366
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 720, !dbg !2367
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2368
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #4, !dbg !2369
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 864, !dbg !2370
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 432, !dbg !2371
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #4, !dbg !2372
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2373
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 1008, !dbg !2374
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #4, !dbg !2375
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 432, !dbg !2376
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 216, !dbg !2377
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #4, !dbg !2378
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 1008, !dbg !2379
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 1080, !dbg !2380
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #4, !dbg !2381
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 216, !dbg !2382
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 576, !dbg !2383
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #4, !dbg !2384
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 1080, !dbg !2385
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 936, !dbg !2386
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #4, !dbg !2387
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 576, !dbg !2388
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2389
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #4, !dbg !2390
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 936, !dbg !2391
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 648, !dbg !2392
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #4, !dbg !2393
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2394
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 144, !dbg !2395
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #4, !dbg !2396
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 648, !dbg !2397
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2398
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 9, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #4, !dbg !2399
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 144, !dbg !2400
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2401
  call fastcc void @m_vec_mul_add_x(i32 noundef 9, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #4, !dbg !2402
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2403
  call fastcc void @m_vec_copy(i32 noundef 9, ptr noundef nonnull %add.ptr28, ptr noundef %out) #4, !dbg !2404
  ret void, !dbg !2405
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2406 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2407, !DIExpression(), !2408)
    #dbg_value(ptr %in, !2409, !DIExpression(), !2408)
    #dbg_value(ptr %acc, !2410, !DIExpression(), !2408)
    #dbg_value(i64 1229782938247303441, !2411, !DIExpression(), !2408)
    #dbg_value(i32 0, !2412, !DIExpression(), !2414)
  br label %for.cond, !dbg !2415

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2416
    #dbg_value(i32 %i.0, !2412, !DIExpression(), !2414)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2417
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2419

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2420
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2420
  %and = and i64 %0, 1229782938247303441, !dbg !2422
    #dbg_value(i64 %and, !2423, !DIExpression(), !2424)
  %xor = lshr i64 %0, 1, !dbg !2425
  %shr = and i64 %xor, 8608480567731124087, !dbg !2425
  %mul = mul nuw i64 %and, 9, !dbg !2426
  %xor2 = xor i64 %shr, %mul, !dbg !2427
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2428
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2429
  %xor4 = xor i64 %1, %xor2, !dbg !2429
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2429
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2430
    #dbg_value(i32 %inc, !2412, !DIExpression(), !2414)
  br label %for.cond, !dbg !2431, !llvm.loop !2432

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2434
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2435 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2436, !DIExpression(), !2437)
    #dbg_value(ptr %in, !2438, !DIExpression(), !2437)
    #dbg_value(ptr %acc, !2439, !DIExpression(), !2437)
    #dbg_value(i64 -8608480567731124088, !2440, !DIExpression(), !2437)
    #dbg_value(i32 0, !2441, !DIExpression(), !2443)
  br label %for.cond, !dbg !2444

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2445
    #dbg_value(i32 %i.0, !2441, !DIExpression(), !2443)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2446
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2448

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2449
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2449
    #dbg_value(i64 %0, !2451, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2452)
  %xor = shl i64 %0, 1, !dbg !2453
  %shl = and i64 %xor, -1229782938247303442, !dbg !2453
  %and = lshr i64 %0, 3, !dbg !2454
  %shr = and i64 %and, 1229782938247303441, !dbg !2454
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2455
  %xor2 = xor i64 %shl, %mul, !dbg !2456
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2457
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2458
  %xor4 = xor i64 %1, %xor2, !dbg !2458
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2458
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2459
    #dbg_value(i32 %inc, !2441, !DIExpression(), !2443)
  br label %for.cond, !dbg !2460, !llvm.loop !2461

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2463
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2464 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2465, !DIExpression(), !2466)
    #dbg_value(ptr %in, !2467, !DIExpression(), !2466)
    #dbg_value(ptr %out, !2468, !DIExpression(), !2466)
    #dbg_value(i32 0, !2469, !DIExpression(), !2471)
  br label %for.cond, !dbg !2472

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2473
    #dbg_value(i32 %i.0, !2469, !DIExpression(), !2471)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2474
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2476

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2477
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2477
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2479
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2480
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2481
    #dbg_value(i32 %inc, !2469, !DIExpression(), !2471)
  br label %for.cond, !dbg !2482, !llvm.loop !2483

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2485
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_5_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2486 {
entry:
    #dbg_value(ptr %p, !2517, !DIExpression(), !2518)
    #dbg_value(ptr %in, !2519, !DIExpression(), !2518)
    #dbg_value(ptr %out, !2520, !DIExpression(), !2518)
    #dbg_value(i32 %size, !2521, !DIExpression(), !2518)
    #dbg_value(i32 9, !2522, !DIExpression(), !2518)
    #dbg_value(i32 0, !2523, !DIExpression(), !2518)
    #dbg_value(i32 0, !2524, !DIExpression(), !2526)
  %0 = icmp sgt i32 %size, 0, !dbg !2527
  %1 = select i1 %0, i32 %size, i32 0, !dbg !2527
  br label %for.cond, !dbg !2527

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2528
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2528
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2529
    #dbg_value(i32 %r.0, !2524, !DIExpression(), !2526)
    #dbg_value(i32 %m_vecs_stored.0, !2523, !DIExpression(), !2518)
  %exitcond1 = icmp ne i32 %r.0, %1, !dbg !2530
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2532

for.cond1.preheader:                              ; preds = %for.cond
  %2 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2533
  br label %for.cond1, !dbg !2533

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2518
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2536
    #dbg_value(i32 %c.0, !2537, !DIExpression(), !2538)
    #dbg_value(i32 %m_vecs_stored.1, !2523, !DIExpression(), !2518)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %2, !dbg !2539
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2533

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2541
  %add = add nsw i32 %mul, %c.0, !dbg !2543
  %add.ptr.idx = mul nsw i32 %add, 72, !dbg !2544
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2544
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 72, !dbg !2545
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2545
  call fastcc void @m_vec_copy.17(i32 noundef 9, ptr noundef %add.ptr, ptr noundef %add.ptr6) #4, !dbg !2546
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2547
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2547

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2549
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2551
  %add.ptr11.idx = mul nsw i32 %add9, 72, !dbg !2552
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2552
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 72, !dbg !2553
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2553
  call fastcc void @m_vec_add.18(i32 noundef 9, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #4, !dbg !2554
  br label %for.inc, !dbg !2555

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2523, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2518)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2556
    #dbg_value(i32 %inc, !2523, !DIExpression(), !2518)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2557
    #dbg_value(i32 %inc14, !2537, !DIExpression(), !2538)
  br label %for.cond1, !dbg !2558, !llvm.loop !2559

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2518
  %inc16 = add nuw i32 %r.0, 1, !dbg !2561
    #dbg_value(i32 %inc16, !2524, !DIExpression(), !2526)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2562
  br label %for.cond, !dbg !2562, !llvm.loop !2563

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2565
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2566 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2567, !DIExpression(), !2568)
    #dbg_value(ptr %in, !2569, !DIExpression(), !2568)
    #dbg_value(ptr %out, !2570, !DIExpression(), !2568)
    #dbg_value(i32 0, !2571, !DIExpression(), !2573)
  br label %for.cond, !dbg !2574

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2575
    #dbg_value(i32 %i.0, !2571, !DIExpression(), !2573)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2576
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2578

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2579
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2579
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2581
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2582
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2583
    #dbg_value(i32 %inc, !2571, !DIExpression(), !2573)
  br label %for.cond, !dbg !2584, !llvm.loop !2585

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2587
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2588 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2589, !DIExpression(), !2590)
    #dbg_value(ptr %in, !2591, !DIExpression(), !2590)
    #dbg_value(ptr %acc, !2592, !DIExpression(), !2590)
    #dbg_value(i32 0, !2593, !DIExpression(), !2595)
  br label %for.cond, !dbg !2596

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2597
    #dbg_value(i32 %i.0, !2593, !DIExpression(), !2595)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2598
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2600

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2601
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2601
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2603
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2604
  %xor = xor i64 %1, %0, !dbg !2604
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2604
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2605
    #dbg_value(i32 %inc, !2593, !DIExpression(), !2595)
  br label %for.cond, !dbg !2606, !llvm.loop !2607

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2609
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2610 {
entry:
  %Ar = alloca [142 x i8], align 1
    #dbg_value(ptr %p, !2613, !DIExpression(), !2614)
    #dbg_value(ptr %A, !2615, !DIExpression(), !2614)
    #dbg_value(ptr %y, !2616, !DIExpression(), !2614)
    #dbg_value(ptr %r, !2617, !DIExpression(), !2614)
    #dbg_value(ptr %x, !2618, !DIExpression(), !2614)
    #dbg_value(i32 %k, !2619, !DIExpression(), !2614)
    #dbg_value(i32 %o, !2620, !DIExpression(), !2614)
    #dbg_value(i32 %m, !2621, !DIExpression(), !2614)
    #dbg_value(i32 %A_cols, !2622, !DIExpression(), !2614)
    #dbg_value(i32 0, !2623, !DIExpression(), !2625)
  %0 = mul nsw i32 %o, %k, !dbg !2626
  %1 = icmp sgt i32 %0, 0, !dbg !2626
  %2 = select i1 %1, i32 %0, i32 0, !dbg !2626
  br label %for.cond, !dbg !2626

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2627
    #dbg_value(i32 %i.0, !2623, !DIExpression(), !2625)
  %exitcond = icmp ne i32 %i.0, %2, !dbg !2628
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2630

for.cond3.preheader:                              ; preds = %for.cond
  %3 = icmp sgt i32 %m, 0, !dbg !2631
  %4 = select i1 %3, i32 %m, i32 0, !dbg !2631
  br label %for.cond3, !dbg !2631

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2633
  %5 = load i8, ptr %arrayidx, align 1, !dbg !2633
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2635
  store i8 %5, ptr %arrayidx1, align 1, !dbg !2636
  %inc = add nuw i32 %i.0, 1, !dbg !2637
    #dbg_value(i32 %inc, !2623, !DIExpression(), !2625)
  br label %for.cond, !dbg !2638, !llvm.loop !2639

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2641
    #dbg_value(i32 %i2.0, !2642, !DIExpression(), !2643)
  %exitcond14 = icmp ne i32 %i2.0, %4, !dbg !2644
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2631

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2646
  %mul7 = mul nsw i32 %k, %o, !dbg !2648
  %add = add nsw i32 %mul7, 1, !dbg !2649
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2650
  %6 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2651
  %arrayidx10 = getelementptr i8, ptr %6, i32 %mul8, !dbg !2651
  store i8 0, ptr %arrayidx10, align 1, !dbg !2652
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2653
    #dbg_value(i32 %inc12, !2642, !DIExpression(), !2643)
  br label %for.cond3, !dbg !2654, !llvm.loop !2655

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2657
  %add15 = add nsw i32 %mul14, 1, !dbg !2658
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #4, !dbg !2659
    #dbg_value(i32 0, !2660, !DIExpression(), !2662)
  br label %for.cond17, !dbg !2663

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2664
    #dbg_value(i32 %i16.0, !2660, !DIExpression(), !2662)
  %exitcond15 = icmp ne i32 %i16.0, %4, !dbg !2665
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2667

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2668
  %7 = load i8, ptr %arrayidx20, align 1, !dbg !2668
  %arrayidx21 = getelementptr inbounds nuw [142 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2670
  %8 = load i8, ptr %arrayidx21, align 1, !dbg !2670
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %7, i8 noundef zeroext %8) #4, !dbg !2671
  %mul22 = mul nsw i32 %k, %o, !dbg !2672
  %mul23 = mul nsw i32 %k, %o, !dbg !2673
  %add24 = add nsw i32 %mul23, 1, !dbg !2674
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2675
  %9 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2676
  %arrayidx27 = getelementptr i8, ptr %9, i32 %mul25, !dbg !2676
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2677
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2678
    #dbg_value(i32 %inc29, !2660, !DIExpression(), !2662)
  br label %for.cond17, !dbg !2679, !llvm.loop !2680

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2682
  %add32 = add nsw i32 %mul31, 1, !dbg !2683
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #4, !dbg !2684
    #dbg_value(i8 0, !2685, !DIExpression(), !2614)
    #dbg_value(i32 0, !2686, !DIExpression(), !2688)
  %10 = add i32 %A_cols, -1, !dbg !2689
  %11 = icmp sgt i32 %10, 0, !dbg !2689
  %12 = select i1 %11, i32 %10, i32 0, !dbg !2689
  br label %for.cond34, !dbg !2689

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2614
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2690
    #dbg_value(i32 %i33.0, !2686, !DIExpression(), !2688)
    #dbg_value(i8 %full_rank.0, !2685, !DIExpression(), !2614)
  %exitcond17 = icmp ne i32 %i33.0, %12, !dbg !2691
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2693

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2685, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2614)
  %sub37 = add nsw i32 %m, -1, !dbg !2694
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2696
  %13 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2697
  %arrayidx40 = getelementptr i8, ptr %13, i32 %i33.0, !dbg !2697
  %14 = load i8, ptr %arrayidx40, align 1, !dbg !2697
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %14), !2685, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2614)
  %or12 = or i8 %full_rank.0, %14, !dbg !2698
    #dbg_value(i8 %or12, !2685, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2614)
    #dbg_value(i8 %or12, !2685, !DIExpression(), !2614)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2699
    #dbg_value(i32 %inc44, !2686, !DIExpression(), !2688)
  br label %for.cond34, !dbg !2700, !llvm.loop !2701

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2614
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2703
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2703

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2705

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2705, !llvm.loop !2707

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2709
    #dbg_value(i32 %row.0, !2710, !DIExpression(), !2711)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2712
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2705

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2714, !DIExpression(), !2614)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2715
  %div = sdiv i32 32, %sub54, !dbg !2715
  %add55 = add nsw i32 %row.0, %div, !dbg !2715
  %mul56 = mul nsw i32 %k, %o, !dbg !2715
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2715
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2715

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2715
  %div60 = sdiv i32 32, %sub59, !dbg !2715
  %add61 = add nsw i32 %row.0, %div60, !dbg !2715
  br label %cond.end, !dbg !2715

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2715
  br label %cond.end, !dbg !2715

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2715
    #dbg_value(i32 %cond, !2717, !DIExpression(), !2614)
    #dbg_value(i32 %row.0, !2718, !DIExpression(), !2720)
  br label %for.cond63, !dbg !2721

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2722
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2723
    #dbg_value(i32 %col.0, !2718, !DIExpression(), !2720)
    #dbg_value(i8 %finished.0, !2714, !DIExpression(), !2614)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2724
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2726

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2727
  %15 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2729
  %arrayidx69 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2729
  %16 = load i8, ptr %arrayidx69, align 1, !dbg !2729
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %16, i8 noundef zeroext 0) #4, !dbg !2730
  %not = xor i8 %finished.0, -1, !dbg !2731
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2732, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2614)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2733
  %17 = getelementptr i8, ptr %A, i32 %add76, !dbg !2734
  %arrayidx78 = getelementptr i8, ptr %17, i32 -1, !dbg !2734
  %18 = load i8, ptr %arrayidx78, align 1, !dbg !2734
  %19 = and i8 %18, %not, !dbg !2735
  %and801 = and i8 %19, %call70, !dbg !2735
    #dbg_value(i8 %and801, !2736, !DIExpression(), !2737)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2738
  %20 = load i8, ptr %arrayidx83, align 1, !dbg !2739
  %xor2 = xor i8 %20, %and801, !dbg !2739
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2739
    #dbg_value(i32 0, !2740, !DIExpression(), !2742)
  br label %for.cond87, !dbg !2743

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2744
    #dbg_value(i32 %i86.0, !2740, !DIExpression(), !2742)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2745
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2747

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2748
  %21 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2750
  %arrayidx93 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2750
  %22 = load i8, ptr %arrayidx93, align 1, !dbg !2750
  %conv94 = zext i8 %22 to i64, !dbg !2751
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2752
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2753
  %23 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2754
  %arrayidx98 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2754
  %24 = load i8, ptr %arrayidx98, align 1, !dbg !2754
  %conv99 = zext i8 %24 to i64, !dbg !2755
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2756
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2757
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2758
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2759
  %25 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2760
  %arrayidx105 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2760
  %26 = load i8, ptr %arrayidx105, align 1, !dbg !2760
  %conv106 = zext i8 %26 to i64, !dbg !2761
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2762
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2763
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2764
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2765
  %27 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2766
  %arrayidx112 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2766
  %28 = load i8, ptr %arrayidx112, align 1, !dbg !2766
  %conv113 = zext i8 %28 to i64, !dbg !2767
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2768
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2769
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2770
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2771
  %29 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2772
  %arrayidx119 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2772
  %30 = load i8, ptr %arrayidx119, align 1, !dbg !2772
  %conv120 = zext i8 %30 to i64, !dbg !2773
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2774
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2775
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2776
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2777
  %31 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2778
  %arrayidx126 = getelementptr i8, ptr %31, i32 %col.0, !dbg !2778
  %32 = load i8, ptr %arrayidx126, align 1, !dbg !2778
  %conv127 = zext i8 %32 to i64, !dbg !2779
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2780
  %xor129 = xor i64 %xor122, %shl128, !dbg !2781
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2782
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2783
  %33 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2784
  %arrayidx133 = getelementptr i8, ptr %33, i32 %col.0, !dbg !2784
  %34 = load i8, ptr %arrayidx133, align 1, !dbg !2784
  %conv134 = zext i8 %34 to i64, !dbg !2785
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2786
  %xor136 = xor i64 %xor129, %shl135, !dbg !2787
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2788
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2789
  %35 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2790
  %arrayidx140 = getelementptr i8, ptr %35, i32 %col.0, !dbg !2790
  %36 = load i8, ptr %arrayidx140, align 1, !dbg !2790
  %conv141 = zext i8 %36 to i64, !dbg !2791
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2792
  %xor143 = xor i64 %xor136, %shl142, !dbg !2793
    #dbg_value(i64 %xor143, !2794, !DIExpression(), !2795)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #4, !dbg !2796
    #dbg_value(i64 %call144, !2794, !DIExpression(), !2795)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2797
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2797
  %37 = getelementptr i8, ptr %A, i32 %add147, !dbg !2798
  %arrayidx149 = getelementptr i8, ptr %37, i32 -1, !dbg !2798
  %38 = load i8, ptr %arrayidx149, align 1, !dbg !2799
  %39 = trunc i64 %call144 to i8, !dbg !2799
  %40 = and i8 %39, 15, !dbg !2799
  %conv152 = xor i8 %40, %38, !dbg !2799
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2799
  %shr = lshr i64 %call144, 8, !dbg !2800
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2801
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2801
  %41 = getelementptr i8, ptr %A, i32 %add156, !dbg !2802
  %arrayidx158 = getelementptr i8, ptr %41, i32 -1, !dbg !2802
  %42 = load i8, ptr %arrayidx158, align 1, !dbg !2803
  %43 = trunc i64 %shr to i8, !dbg !2803
  %44 = and i8 %43, 15, !dbg !2803
  %conv161 = xor i8 %44, %42, !dbg !2803
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2803
  %shr162 = lshr i64 %call144, 16, !dbg !2804
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2805
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2805
  %45 = getelementptr i8, ptr %A, i32 %add166, !dbg !2806
  %arrayidx168 = getelementptr i8, ptr %45, i32 -1, !dbg !2806
  %46 = load i8, ptr %arrayidx168, align 1, !dbg !2807
  %47 = trunc i64 %shr162 to i8, !dbg !2807
  %48 = and i8 %47, 15, !dbg !2807
  %conv171 = xor i8 %48, %46, !dbg !2807
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2807
  %shr172 = lshr i64 %call144, 24, !dbg !2808
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2809
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2809
  %49 = getelementptr i8, ptr %A, i32 %add176, !dbg !2810
  %arrayidx178 = getelementptr i8, ptr %49, i32 -1, !dbg !2810
  %50 = load i8, ptr %arrayidx178, align 1, !dbg !2811
  %51 = trunc i64 %shr172 to i8, !dbg !2811
  %52 = and i8 %51, 15, !dbg !2811
  %conv181 = xor i8 %52, %50, !dbg !2811
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2811
  %shr182 = lshr i64 %call144, 32, !dbg !2812
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2813
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2813
  %53 = getelementptr i8, ptr %A, i32 %add186, !dbg !2814
  %arrayidx188 = getelementptr i8, ptr %53, i32 -1, !dbg !2814
  %54 = load i8, ptr %arrayidx188, align 1, !dbg !2815
  %55 = trunc i64 %shr182 to i8, !dbg !2815
  %56 = and i8 %55, 15, !dbg !2815
  %conv191 = xor i8 %56, %54, !dbg !2815
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2815
  %shr192 = lshr i64 %call144, 40, !dbg !2816
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2817
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2817
  %57 = getelementptr i8, ptr %A, i32 %add196, !dbg !2818
  %arrayidx198 = getelementptr i8, ptr %57, i32 -1, !dbg !2818
  %58 = load i8, ptr %arrayidx198, align 1, !dbg !2819
  %59 = trunc i64 %shr192 to i8, !dbg !2819
  %60 = and i8 %59, 15, !dbg !2819
  %conv201 = xor i8 %60, %58, !dbg !2819
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2819
  %shr202 = lshr i64 %call144, 48, !dbg !2820
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2821
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2821
  %61 = getelementptr i8, ptr %A, i32 %add206, !dbg !2822
  %arrayidx208 = getelementptr i8, ptr %61, i32 -1, !dbg !2822
  %62 = load i8, ptr %arrayidx208, align 1, !dbg !2823
  %63 = trunc i64 %shr202 to i8, !dbg !2823
  %64 = and i8 %63, 15, !dbg !2823
  %conv211 = xor i8 %64, %62, !dbg !2823
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2823
  %shr212 = lshr i64 %call144, 56, !dbg !2824
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2825
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2825
  %65 = getelementptr i8, ptr %A, i32 %add216, !dbg !2826
  %arrayidx218 = getelementptr i8, ptr %65, i32 -1, !dbg !2826
  %66 = load i8, ptr %arrayidx218, align 1, !dbg !2827
  %67 = trunc nuw nsw i64 %shr212 to i8, !dbg !2827
  %conv221 = xor i8 %66, %67, !dbg !2827
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2827
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2828
    #dbg_value(i32 %add223, !2740, !DIExpression(), !2742)
  br label %for.cond87, !dbg !2829, !llvm.loop !2830

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2714, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2614)
  %or2273 = or i8 %finished.0, %call70, !dbg !2832
    #dbg_value(i8 %or2273, !2714, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2614)
    #dbg_value(i8 %or2273, !2714, !DIExpression(), !2614)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2833
    #dbg_value(i32 %inc230, !2718, !DIExpression(), !2720)
  br label %for.cond63, !dbg !2834, !llvm.loop !2835

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2837

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2614
  ret i32 %retval.0, !dbg !2837
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef nonnull %c, i32 noundef range(i32 -2147483647, -2147483648) %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2838 {
entry:
    #dbg_value(ptr %a, !2839, !DIExpression(), !2840)
    #dbg_value(ptr %b, !2841, !DIExpression(), !2840)
    #dbg_value(ptr %c, !2842, !DIExpression(), !2840)
    #dbg_value(i32 %colrow_ab, !2843, !DIExpression(), !2840)
    #dbg_value(i32 %row_a, !2844, !DIExpression(), !2840)
    #dbg_value(i32 1, !2845, !DIExpression(), !2840)
    #dbg_value(i32 0, !2846, !DIExpression(), !2848)
  %0 = icmp sgt i32 %row_a, 0, !dbg !2849
  %1 = select i1 %0, i32 %row_a, i32 0, !dbg !2849
  br label %for.cond, !dbg !2849

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2850
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2839, !DIExpression(), !2840)
    #dbg_value(ptr %c.addr.0, !2842, !DIExpression(), !2840)
    #dbg_value(i32 %i.0, !2846, !DIExpression(), !2848)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !2851
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !2853

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2854

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !2857
    #dbg_value(i32 poison, !2858, !DIExpression(), !2859)
    #dbg_value(ptr %c.addr.1, !2842, !DIExpression(), !2840)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !2854

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef %colrow_ab, i32 noundef 1) #4, !dbg !2860
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2863
    #dbg_value(i32 1, !2858, !DIExpression(), !2859)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2864
    #dbg_value(ptr %incdec.ptr, !2842, !DIExpression(), !2840)
  br label %for.cond1, !dbg !2865, !llvm.loop !2866

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2868
    #dbg_value(i32 %inc5, !2846, !DIExpression(), !2848)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2869
    #dbg_value(ptr %add.ptr6, !2839, !DIExpression(), !2840)
  br label %for.cond, !dbg !2870, !llvm.loop !2871

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2873
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2874 {
entry:
    #dbg_value(i8 %a, !2875, !DIExpression(), !2876)
    #dbg_value(i8 %b, !2877, !DIExpression(), !2876)
  %xor1 = xor i8 %a, %b, !dbg !2878
  ret i8 %xor1, !dbg !2879
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !2880 {
entry:
  %_pivot_row = alloca [10 x i64], align 32
  %_pivot_row2 = alloca [10 x i64], align 32
  %packed_A = alloca [1420 x i64], align 32
  %temp = alloca [160 x i8], align 1
    #dbg_value(ptr %A, !2884, !DIExpression(), !2885)
    #dbg_value(i32 %nrows, !2886, !DIExpression(), !2885)
    #dbg_value(i32 %ncols, !2887, !DIExpression(), !2885)
    #dbg_declare(ptr %_pivot_row, !2888, !DIExpression(), !2890)
    #dbg_declare(ptr %_pivot_row2, !2891, !DIExpression(), !2892)
    #dbg_declare(ptr %packed_A, !2893, !DIExpression(), !2897)
  call void @mayo_memset(ptr %packed_A, i8 0, i32 11360), !dbg !2897
  %add = add nsw i32 %ncols, 15, !dbg !2898
  %div = sdiv i32 %add, 16, !dbg !2899
    #dbg_value(i32 %div, !2900, !DIExpression(), !2885)
    #dbg_value(i32 0, !2901, !DIExpression(), !2903)
  %0 = icmp sgt i32 %nrows, 0, !dbg !2904
  %1 = select i1 %0, i32 %nrows, i32 0, !dbg !2904
  br label %for.cond, !dbg !2904

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2905
    #dbg_value(i32 %i.0, !2901, !DIExpression(), !2903)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !2906
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2908

for.cond3.preheader:                              ; preds = %for.cond
  %2 = icmp sgt i32 %div, 0, !dbg !2909
  %3 = select i1 %2, i32 %div, i32 0, !dbg !2909
  %4 = icmp sgt i32 %ncols, 0, !dbg !2909
  %5 = select i1 %4, i32 %ncols, i32 0, !dbg !2909
  br label %for.cond3, !dbg !2909

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2911
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2913
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2914
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2915
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #4, !dbg !2916
  %inc = add nuw i32 %i.0, 1, !dbg !2917
    #dbg_value(i32 %inc, !2901, !DIExpression(), !2903)
  br label %for.cond, !dbg !2918, !llvm.loop !2919

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2921
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2885
    #dbg_value(i32 %pivot_row.0, !2922, !DIExpression(), !2885)
    #dbg_value(i32 %pivot_col.0, !2923, !DIExpression(), !2924)
  %exitcond6 = icmp ne i32 %pivot_col.0, %5, !dbg !2925
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2909

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2927

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2929
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2929
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2929
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2929
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2929
    #dbg_value(i32 %cond, !2931, !DIExpression(), !2932)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2933
    #dbg_value(i32 %cond16, !2934, !DIExpression(), !2932)
    #dbg_value(i32 0, !2935, !DIExpression(), !2937)
  br label %for.cond18, !dbg !2938

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2939
    #dbg_value(i32 %i17.0, !2935, !DIExpression(), !2937)
  %exitcond2 = icmp ne i32 %i17.0, %3, !dbg !2940
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !2942

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2933
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2933
  br label %for.cond25, !dbg !2943

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2945
  store i64 0, ptr %arrayidx, align 8, !dbg !2947
  %arrayidx21 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2948
  store i64 0, ptr %arrayidx21, align 8, !dbg !2949
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2950
    #dbg_value(i32 %inc23, !2935, !DIExpression(), !2937)
  br label %for.cond18, !dbg !2951, !llvm.loop !2952

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2932
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2932
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2954
    #dbg_value(i32 %row.0, !2955, !DIExpression(), !2954)
    #dbg_value(i8 %pivot.0, !2956, !DIExpression(), !2932)
    #dbg_value(i64 %pivot_is_zero.0, !2957, !DIExpression(), !2932)
  %add27 = add nsw i32 %cond16, 32, !dbg !2958
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2958
  %sub30 = add nsw i32 %nrows, -1, !dbg !2958
  %add32 = add nsw i32 %cond16, 32, !dbg !2958
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2958
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2960
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2943

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #4, !dbg !2961
  %not = xor i64 %call, -1, !dbg !2963
    #dbg_value(i64 %not, !2964, !DIExpression(), !2965)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #4, !dbg !2966
    #dbg_value(i64 %call37, !2967, !DIExpression(), !2965)
    #dbg_value(i32 0, !2968, !DIExpression(), !2970)
  br label %for.cond38, !dbg !2971

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2972
    #dbg_value(i32 %j.0, !2968, !DIExpression(), !2970)
  %exitcond3 = icmp ne i32 %j.0, %3, !dbg !2973
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !2975

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2976
  %or = or i64 %and, %not, !dbg !2978
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2979
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2980
  %arrayidx43 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2981
  %6 = load i64, ptr %arrayidx43, align 8, !dbg !2981
  %and44 = and i64 %or, %6, !dbg !2982
  %arrayidx45 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2983
  %7 = load i64, ptr %arrayidx45, align 8, !dbg !2984
  %xor = xor i64 %7, %and44, !dbg !2984
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2984
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2985
    #dbg_value(i32 %inc47, !2968, !DIExpression(), !2970)
  br label %for.cond38, !dbg !2986, !llvm.loop !2987

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #4, !dbg !2989
    #dbg_value(i8 %call50, !2956, !DIExpression(), !2932)
  %conv = zext nneg i8 %call50 to i32, !dbg !2990
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #4, !dbg !2991
    #dbg_value(i64 %call51, !2957, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2932)
  %not52 = xor i64 %call51, -1, !dbg !2992
    #dbg_value(i64 %not52, !2957, !DIExpression(), !2932)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2993
    #dbg_value(i32 %inc54, !2955, !DIExpression(), !2954)
  br label %for.cond25, !dbg !2994, !llvm.loop !2995

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2932
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2932
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #4, !dbg !2997
    #dbg_value(i8 %call56, !2998, !DIExpression(), !2885)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #4, !dbg !2999
    #dbg_value(i32 %cond, !3000, !DIExpression(), !3002)
  br label %for.cond60, !dbg !3003

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !3004
    #dbg_value(i32 %row59.0, !3000, !DIExpression(), !3002)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !3005
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !3007

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !3008

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #4, !dbg !3010
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !3012
  %and67 = xor i64 %and67.demorgan, -1, !dbg !3012
    #dbg_value(i64 %and67, !3013, !DIExpression(), !3014)
    #dbg_value(i64 %and67.demorgan, !3015, !DIExpression(), !3014)
    #dbg_value(i32 0, !3016, !DIExpression(), !3018)
  br label %for.cond69, !dbg !3019

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !3020
    #dbg_value(i32 %col.0, !3016, !DIExpression(), !3018)
  %exitcond4 = icmp ne i32 %col.0, %3, !dbg !3021
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !3023

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !3024
  %add74 = add nsw i32 %mul73, %col.0, !dbg !3026
  %arrayidx75 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !3027
  %8 = load i64, ptr %arrayidx75, align 8, !dbg !3027
  %and76 = and i64 %and67.demorgan, %8, !dbg !3028
  %arrayidx77 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !3029
  %9 = load i64, ptr %arrayidx77, align 8, !dbg !3029
  %and78 = and i64 %9, %and67, !dbg !3030
  %add79 = add i64 %and76, %and78, !dbg !3031
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !3032
  %add81 = add nsw i32 %mul80, %col.0, !dbg !3033
  %arrayidx82 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !3034
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !3035
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !3036
    #dbg_value(i32 %inc84, !3016, !DIExpression(), !3018)
  br label %for.cond69, !dbg !3037, !llvm.loop !3038

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !3040
    #dbg_value(i32 %inc87, !3000, !DIExpression(), !3002)
  br label %for.cond60, !dbg !3041, !llvm.loop !3042

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !3044
    #dbg_value(i32 %row89.0, !3045, !DIExpression(), !3046)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !3047
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !3008

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !3049
    #dbg_value(i1 %cmp94, !3051, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3052)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !3053
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !3054
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #4, !dbg !3055
    #dbg_value(i8 %call100, !3056, !DIExpression(), !3052)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !3057
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !3058
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !3059
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #4, !dbg !3060
  %inc110 = add nsw i32 %row89.0, 1, !dbg !3061
    #dbg_value(i32 %inc110, !3045, !DIExpression(), !3046)
  br label %for.cond90, !dbg !3062, !llvm.loop !3063

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2922, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2885)
  %10 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !3065
  %11 = add i32 %10, 1, !dbg !3065
  %conv116 = add i32 %11, %pivot_row.0, !dbg !3065
    #dbg_value(i32 %conv116, !2922, !DIExpression(), !2885)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !3066
    #dbg_value(i32 %inc118, !2923, !DIExpression(), !2924)
  br label %for.cond3, !dbg !3067, !llvm.loop !3068

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !3070
    #dbg_value(i32 %i120.0, !3071, !DIExpression(), !3072)
  %exitcond8 = icmp ne i32 %i120.0, %1, !dbg !3073
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2927

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !3075
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !3077
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #4, !dbg !3078
    #dbg_value(i32 0, !3079, !DIExpression(), !3081)
  br label %for.cond130, !dbg !3082

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !3083
    #dbg_value(i32 %j129.0, !3079, !DIExpression(), !3081)
  %exitcond7 = icmp ne i32 %j129.0, %5, !dbg !3084
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !3086

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [160 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !3087
  %12 = load i8, ptr %arrayidx134, align 1, !dbg !3087
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !3089
  %13 = getelementptr i8, ptr %A, i32 %mul135, !dbg !3090
  %arrayidx137 = getelementptr i8, ptr %13, i32 %j129.0, !dbg !3090
  store i8 %12, ptr %arrayidx137, align 1, !dbg !3091
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3092
    #dbg_value(i32 %inc139, !3079, !DIExpression(), !3081)
  br label %for.cond130, !dbg !3093, !llvm.loop !3094

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3096
    #dbg_value(i32 %inc142, !3071, !DIExpression(), !3072)
  br label %for.cond121, !dbg !3097, !llvm.loop !3098

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 160) #4, !dbg !3100
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 80) #4, !dbg !3101
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 80) #4, !dbg !3102
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 11360) #4, !dbg !3103
  ret void, !dbg !3104
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3105 {
entry:
    #dbg_value(i8 %a, !3107, !DIExpression(), !3108)
    #dbg_value(i8 0, !3109, !DIExpression(), !3108)
  %0 = icmp ne i8 %a, 0, !dbg !3110
  %conv3 = sext i1 %0 to i8, !dbg !3111
  %1 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !3112
  %xor5 = xor i8 %1, %conv3, !dbg !3113
  ret i8 %xor5, !dbg !3114
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3115 {
entry:
    #dbg_value(i8 %a, !3118, !DIExpression(), !3119)
    #dbg_value(i64 %b, !3120, !DIExpression(), !3119)
  %0 = and i8 %a, 1, !dbg !3121
  %conv1 = zext nneg i8 %0 to i64, !dbg !3122
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3123
    #dbg_value(i64 %mul, !3124, !DIExpression(), !3119)
  %1 = and i8 %a, 2, !dbg !3125
  %conv4 = zext nneg i8 %1 to i64, !dbg !3126
  %mul5 = mul i64 %b, %conv4, !dbg !3127
  %xor = xor i64 %mul, %mul5, !dbg !3128
    #dbg_value(i64 %xor, !3124, !DIExpression(), !3119)
  %2 = and i8 %a, 4, !dbg !3129
  %conv8 = zext nneg i8 %2 to i64, !dbg !3130
  %mul9 = mul i64 %b, %conv8, !dbg !3131
  %xor10 = xor i64 %xor, %mul9, !dbg !3132
    #dbg_value(i64 %xor10, !3124, !DIExpression(), !3119)
  %3 = and i8 %a, 8, !dbg !3133
  %conv13 = zext nneg i8 %3 to i64, !dbg !3134
  %mul14 = mul i64 %b, %conv13, !dbg !3135
  %xor15 = xor i64 %xor10, %mul14, !dbg !3136
    #dbg_value(i64 %xor15, !3124, !DIExpression(), !3119)
    #dbg_value(i64 %xor15, !3137, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3119)
  %shr = lshr i64 %xor15, 4, !dbg !3138
  %and16 = lshr i64 %xor15, 3, !dbg !3139
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3139
  %4 = xor i64 %shr, %shr18, !dbg !3140
  %xor19 = xor i64 %4, %xor15, !dbg !3140
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3141
    #dbg_value(i64 %and20, !3142, !DIExpression(), !3119)
  ret i64 %and20, !dbg !3143
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef nonnull %out, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !3144 {
entry:
    #dbg_value(ptr %in, !3147, !DIExpression(), !3148)
    #dbg_value(ptr %out, !3149, !DIExpression(), !3148)
    #dbg_value(i32 %ncols, !3150, !DIExpression(), !3148)
    #dbg_value(ptr %out, !3151, !DIExpression(), !3148)
    #dbg_value(i32 0, !3152, !DIExpression(), !3148)
  br label %for.cond, !dbg !3153

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3155
    #dbg_value(i32 %i.0, !3152, !DIExpression(), !3148)
  %add = or disjoint i32 %i.0, 1, !dbg !3156
  %cmp = icmp slt i32 %add, %ncols, !dbg !3158
  br i1 %cmp, label %for.body, label %for.end, !dbg !3159

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3160
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3160
  %add2 = or disjoint i32 %i.0, 1, !dbg !3162
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3163
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3163
  %shl5 = shl i8 %1, 4, !dbg !3164
  %or = or i8 %shl5, %0, !dbg !3165
  %div = lshr exact i32 %i.0, 1, !dbg !3166
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3167
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3168
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3169
    #dbg_value(i32 %add8, !3152, !DIExpression(), !3148)
  br label %for.cond, !dbg !3170, !llvm.loop !3171

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3155
  %2 = and i32 %ncols, -2147483647, !dbg !3173
  %cmp9 = icmp eq i32 %2, 1, !dbg !3173
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3173

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3175
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3175
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3177
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3178
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3179
  br label %if.end, !dbg !3180

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3181
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3182 {
entry:
    #dbg_value(i32 %a, !3185, !DIExpression(), !3186)
    #dbg_value(i32 %b, !3187, !DIExpression(), !3186)
  %xor = xor i32 %a, %b, !dbg !3188
  %0 = icmp sgt i32 %xor, 0, !dbg !3189
  %shr = sext i1 %0 to i64, !dbg !3189
  %1 = load volatile i64, ptr @pqmayo_MAYO_5_ref_uint64_t_blocker, align 8, !dbg !3190
  %xor1 = xor i64 %1, %shr, !dbg !3191
  ret i64 %xor1, !dbg !3192
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3193 {
entry:
    #dbg_value(i32 %a, !3194, !DIExpression(), !3195)
    #dbg_value(i32 %b, !3196, !DIExpression(), !3195)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3197, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3195)
  %0 = icmp slt i32 %b, %a, !dbg !3198
  %shr = sext i1 %0 to i64, !dbg !3198
  %1 = load volatile i64, ptr @pqmayo_MAYO_5_ref_uint64_t_blocker, align 8, !dbg !3199
  %xor = xor i64 %1, %shr, !dbg !3200
  ret i64 %xor, !dbg !3201
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef nonnull %in, i32 noundef range(i32 -2147483648, 2147483647) %index) unnamed_addr #0 !dbg !3202 {
entry:
    #dbg_value(ptr %in, !3205, !DIExpression(), !3206)
    #dbg_value(i32 %index, !3207, !DIExpression(), !3206)
  %div = sdiv i32 %index, 16, !dbg !3208
    #dbg_value(i32 %div, !3209, !DIExpression(), !3206)
  %rem = srem i32 %index, 16, !dbg !3210
    #dbg_value(i32 %rem, !3211, !DIExpression(), !3206)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3212
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3212
  %mul = shl nsw i32 %rem, 2, !dbg !3213
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3214
  %shr = lshr i64 %0, %sh_prom, !dbg !3214
  %1 = trunc i64 %shr to i8, !dbg !3215
  %conv = and i8 %1, 15, !dbg !3215
  ret i8 %conv, !dbg !3216
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext range(i8 0, 16) %a) unnamed_addr #0 !dbg !3217 {
entry:
    #dbg_value(i8 %a, !3220, !DIExpression(), !3221)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #4, !dbg !3222
    #dbg_value(i8 %call, !3223, !DIExpression(), !3221)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #4, !dbg !3224
    #dbg_value(i8 %call1, !3225, !DIExpression(), !3221)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #4, !dbg !3226
    #dbg_value(i8 %call2, !3227, !DIExpression(), !3221)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #4, !dbg !3228
    #dbg_value(i8 %call3, !3229, !DIExpression(), !3221)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #4, !dbg !3230
    #dbg_value(i8 %call4, !3231, !DIExpression(), !3221)
  ret i8 %call4, !dbg !3232
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, i8 noundef zeroext range(i8 0, 16) %a, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !3233 {
entry:
    #dbg_value(i32 %legs, !3236, !DIExpression(), !3237)
    #dbg_value(ptr %in, !3238, !DIExpression(), !3237)
    #dbg_value(i8 %a, !3239, !DIExpression(), !3237)
    #dbg_value(ptr %acc, !3240, !DIExpression(), !3237)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #4, !dbg !3241
    #dbg_value(i32 %call, !3242, !DIExpression(), !3237)
    #dbg_value(i64 1229782938247303441, !3243, !DIExpression(), !3237)
    #dbg_value(i32 0, !3244, !DIExpression(), !3246)
  %0 = icmp sgt i32 %legs, 0, !dbg !3247
  %1 = select i1 %0, i32 %legs, i32 0, !dbg !3247
  br label %for.cond, !dbg !3247

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3248
    #dbg_value(i32 %i.0, !3244, !DIExpression(), !3246)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !3249
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3251

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3252
  %2 = load i64, ptr %arrayidx, align 8, !dbg !3252
  %and = and i64 %2, 1229782938247303441, !dbg !3254
  %and1 = and i32 %call, 255, !dbg !3255
  %conv = zext nneg i32 %and1 to i64, !dbg !3256
  %mul = mul i64 %and, %conv, !dbg !3257
  %shr = lshr i64 %2, 1, !dbg !3258
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3259
  %shr4 = lshr i32 %call, 8, !dbg !3260
  %and5 = and i32 %shr4, 15, !dbg !3261
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3262
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3263
  %xor = xor i64 %mul, %mul7, !dbg !3264
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3265
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !3265
  %shr9 = lshr i64 %3, 2, !dbg !3266
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3267
  %shr11 = lshr i32 %call, 16, !dbg !3268
  %and12 = and i32 %shr11, 15, !dbg !3269
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3270
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3271
  %xor15 = xor i64 %xor, %mul14, !dbg !3272
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3273
  %4 = load i64, ptr %arrayidx16, align 8, !dbg !3273
  %shr17 = lshr i64 %4, 3, !dbg !3274
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3275
  %shr19 = lshr i32 %call, 24, !dbg !3276
  %and20 = and i32 %shr19, 15, !dbg !3277
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3278
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3279
  %xor23 = xor i64 %xor15, %mul22, !dbg !3280
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3281
  %5 = load i64, ptr %arrayidx24, align 8, !dbg !3282
  %xor25 = xor i64 %5, %xor23, !dbg !3282
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3282
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3283
    #dbg_value(i32 %inc, !3244, !DIExpression(), !3246)
  br label %for.cond, !dbg !3284, !llvm.loop !3285

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3287
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !3288 {
entry:
    #dbg_value(i32 %legs, !3291, !DIExpression(), !3292)
    #dbg_value(ptr %in, !3293, !DIExpression(), !3292)
    #dbg_value(ptr %out, !3294, !DIExpression(), !3292)
    #dbg_value(ptr %in, !3295, !DIExpression(), !3292)
    #dbg_value(i32 0, !3296, !DIExpression(), !3298)
  br label %for.cond, !dbg !3299

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3300
    #dbg_value(i32 %i.0, !3296, !DIExpression(), !3298)
  %mul = shl nsw i32 %legs, 4, !dbg !3301
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3303
  br i1 %cmp, label %for.body, label %for.end, !dbg !3304

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3305
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3307
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3307
  %1 = and i8 %0, 15, !dbg !3308
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3309
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3310
  %div3 = lshr exact i32 %i.0, 1, !dbg !3311
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3312
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3312
  %3 = lshr i8 %2, 4, !dbg !3313
  %add = or disjoint i32 %i.0, 1, !dbg !3314
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3315
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3316
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3317
    #dbg_value(i32 %add8, !3296, !DIExpression(), !3298)
  br label %for.cond, !dbg !3318, !llvm.loop !3319

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3321
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, -2147483648) i32 @mul_table.22(i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3322 {
entry:
    #dbg_value(i8 %b, !3323, !DIExpression(), !3324)
  %conv = zext nneg i8 %b to i32, !dbg !3325
  %mul = mul nuw nsw i32 %conv, 134480385, !dbg !3326
    #dbg_value(i32 %mul, !3327, !DIExpression(), !3324)
    #dbg_value(i32 -252645136, !3328, !DIExpression(), !3324)
  %and = and i32 %mul, 1894838512, !dbg !3329
    #dbg_value(i32 %and, !3330, !DIExpression(), !3324)
  %shr = lshr exact i32 %and, 4, !dbg !3331
  %shr1 = lshr exact i32 %and, 3, !dbg !3332
  %0 = xor i32 %shr, %shr1, !dbg !3333
  %xor2 = xor i32 %0, %mul, !dbg !3333
  ret i32 %xor2, !dbg !3334
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3335 {
entry:
    #dbg_value(i8 %a, !3336, !DIExpression(), !3337)
    #dbg_value(i8 %b, !3338, !DIExpression(), !3337)
  %0 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !3339
  %xor1 = xor i8 %a, %0, !dbg !3340
    #dbg_value(i8 %xor1, !3336, !DIExpression(), !3337)
  %1 = trunc i8 %xor1 to i1, !dbg !3341
    #dbg_value(i8 poison, !3342, !DIExpression(), !3337)
  %2 = and i8 %xor1, 2, !dbg !3343
  %mul9 = mul i8 %2, %b, !dbg !3344
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3341
  %xor11 = xor i8 %conv10, %mul9, !dbg !3345
    #dbg_value(i8 %xor11, !3342, !DIExpression(), !3337)
  %3 = and i8 %xor1, 4, !dbg !3346
  %mul16 = mul i8 %3, %b, !dbg !3347
  %xor18 = xor i8 %mul16, %xor11, !dbg !3348
    #dbg_value(i8 %xor18, !3342, !DIExpression(), !3337)
  %4 = and i8 %xor1, 8, !dbg !3349
  %mul23 = mul i8 %4, %b, !dbg !3350
  %xor25 = xor i8 %mul23, %xor18, !dbg !3351
    #dbg_value(i8 %xor25, !3342, !DIExpression(), !3337)
    #dbg_value(i8 %xor25, !3352, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3337)
  %5 = lshr i8 %xor25, 4, !dbg !3353
  %6 = lshr i8 %xor25, 3, !dbg !3354
  %7 = and i8 %6, 14, !dbg !3354
  %8 = xor i8 %5, %7, !dbg !3355
  %xor25.masked = and i8 %xor25, 15, !dbg !3356
  %9 = xor i8 %8, %xor25.masked, !dbg !3356
    #dbg_value(i8 %9, !3357, !DIExpression(), !3337)
  ret i8 %9, !dbg !3358
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef range(i32 -2147483647, -2147483648) %n, i32 noundef %m) unnamed_addr #0 !dbg !3359 {
entry:
    #dbg_value(ptr %a, !3360, !DIExpression(), !3361)
    #dbg_value(ptr %b, !3362, !DIExpression(), !3361)
    #dbg_value(i32 %n, !3363, !DIExpression(), !3361)
    #dbg_value(i32 1, !3364, !DIExpression(), !3361)
    #dbg_value(i8 0, !3365, !DIExpression(), !3361)
    #dbg_value(i32 0, !3366, !DIExpression(), !3368)
  %0 = icmp sgt i32 %n, 0, !dbg !3369
  %1 = select i1 %0, i32 %n, i32 0, !dbg !3369
  br label %for.cond, !dbg !3369

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3361
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3370
    #dbg_value(i32 %i.0, !3366, !DIExpression(), !3368)
    #dbg_value(ptr %b.addr.0, !3362, !DIExpression(), !3361)
    #dbg_value(i8 %ret.0, !3365, !DIExpression(), !3361)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !3371
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3373

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3374
  %2 = load i8, ptr %arrayidx, align 1, !dbg !3374
  %3 = load i8, ptr %b.addr.0, align 1, !dbg !3376
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %2, i8 noundef zeroext %3) #4, !dbg !3377
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #4, !dbg !3378
    #dbg_value(i8 %call1, !3365, !DIExpression(), !3361)
  %inc = add nuw i32 %i.0, 1, !dbg !3379
    #dbg_value(i32 %inc, !3366, !DIExpression(), !3368)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !3380
    #dbg_value(ptr %add.ptr, !3362, !DIExpression(), !3361)
  br label %for.cond, !dbg !3381, !llvm.loop !3382

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3361
  ret i8 %ret.0.lcssa, !dbg !3384
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @add_f.25(i8 noundef zeroext range(i8 0, 16) %a, i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3385 {
entry:
    #dbg_value(i8 %a, !3386, !DIExpression(), !3387)
    #dbg_value(i8 %b, !3388, !DIExpression(), !3387)
  %xor1 = xor i8 %a, %b, !dbg !3389
  ret i8 %xor1, !dbg !3390
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !3391 {
entry:
    #dbg_value(ptr %state, !3399, !DIExpression(), !3400)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !3401
  store ptr %call, ptr %state, align 4, !dbg !3402
  %cmp = icmp eq ptr %call, null, !dbg !3403
  br i1 %cmp, label %if.then, label %if.end, !dbg !3403

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !3405
  br label %if.end, !dbg !3407

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !3408
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !3409
  ret void, !dbg !3410
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i32 noundef) local_unnamed_addr #3

declare dso_local void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_init(ptr noundef %s_inc) unnamed_addr #0 !dbg !3411 {
entry:
    #dbg_value(ptr %s_inc, !3412, !DIExpression(), !3413)
    #dbg_value(i32 0, !3414, !DIExpression(), !3413)
  br label %for.cond, !dbg !3415

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3417
    #dbg_value(i32 %i.0, !3414, !DIExpression(), !3413)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !3418
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3420

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s_inc, i32 %i.0, !dbg !3421
  store i64 0, ptr %arrayidx, align 8, !dbg !3423
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3424
    #dbg_value(i32 %inc, !3414, !DIExpression(), !3413)
  br label %for.cond, !dbg !3425, !llvm.loop !3426

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3428
  store i64 0, ptr %arrayidx1, align 8, !dbg !3429
  ret void, !dbg !3430
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3431 {
entry:
    #dbg_value(ptr %state, !3434, !DIExpression(), !3435)
    #dbg_value(ptr %input, !3436, !DIExpression(), !3435)
    #dbg_value(i32 %inlen, !3437, !DIExpression(), !3435)
  %0 = load ptr, ptr %state, align 4, !dbg !3438
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen) #4, !dbg !3439
  ret void, !dbg !3440
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_absorb(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen) unnamed_addr #0 !dbg !3441 {
entry:
    #dbg_value(ptr %s_inc, !3444, !DIExpression(), !3445)
    #dbg_value(i32 %r, !3446, !DIExpression(), !3445)
    #dbg_value(ptr %m, !3447, !DIExpression(), !3445)
    #dbg_value(i32 %mlen, !3448, !DIExpression(), !3445)
  br label %while.cond, !dbg !3449

while.cond:                                       ; preds = %for.end, %entry
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr, %for.end ]
  %mlen.addr.0 = phi i32 [ %mlen, %entry ], [ %sub20, %for.end ]
    #dbg_value(i32 %mlen.addr.0, !3448, !DIExpression(), !3445)
    #dbg_value(ptr %m.addr.0, !3447, !DIExpression(), !3445)
  %conv = zext i32 %mlen.addr.0 to i64, !dbg !3450
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3451
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3451
  %add = add i64 %0, %conv, !dbg !3452
  %conv1 = zext nneg i32 %r to i64, !dbg !3453
  %cmp.not = icmp ult i64 %add, %conv1, !dbg !3454
  br i1 %cmp.not, label %for.cond25.preheader, label %for.cond.preheader, !dbg !3449

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !3455

for.cond25.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa1 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  %mlen.addr.0.lcssa = phi i32 [ %mlen.addr.0, %while.cond ]
  br label %for.cond25, !dbg !3458

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !3460
    #dbg_value(i32 %i.0, !3461, !DIExpression(), !3445)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3462
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !3462
  %conv4 = trunc i64 %1 to i32, !dbg !3464
  %sub = sub i32 %r, %conv4, !dbg !3465
  %cmp5 = icmp ult i32 %i.0, %sub, !dbg !3466
  br i1 %cmp5, label %for.body, label %for.end, !dbg !3455

for.body:                                         ; preds = %for.cond
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %i.0, !dbg !3467
  %2 = load i8, ptr %arrayidx7, align 1, !dbg !3467
  %conv8 = zext i8 %2 to i64, !dbg !3469
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3470
  %3 = load i64, ptr %arrayidx9, align 8, !dbg !3470
  %conv10 = zext i32 %i.0 to i64, !dbg !3471
  %add11 = add i64 %3, %conv10, !dbg !3472
  %and = shl i64 %add11, 3, !dbg !3473
  %mul = and i64 %and, 56, !dbg !3473
  %shl = shl nuw i64 %conv8, %mul, !dbg !3474
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3475
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !3475
  %conv13 = zext i32 %i.0 to i64, !dbg !3476
  %add14 = add i64 %4, %conv13, !dbg !3477
  %shr = lshr i64 %add14, 3, !dbg !3478
  %idxprom = trunc i64 %shr to i32, !dbg !3479
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3479
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !3480
  %xor = xor i64 %5, %shl, !dbg !3480
  store i64 %xor, ptr %arrayidx15, align 8, !dbg !3480
  %inc = add nuw i32 %i.0, 1, !dbg !3481
    #dbg_value(i32 %inc, !3461, !DIExpression(), !3445)
  br label %for.cond, !dbg !3482, !llvm.loop !3483

for.end:                                          ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3485
  %6 = load i64, ptr %arrayidx17, align 8, !dbg !3485
  %7 = trunc i64 %6 to i32, !dbg !3486
  %conv19.neg = sub i32 %7, %r, !dbg !3486
  %sub20 = add i32 %conv19.neg, %mlen.addr.0, !dbg !3487
    #dbg_value(i32 %sub20, !3448, !DIExpression(), !3445)
  %8 = trunc i64 %6 to i32, !dbg !3488
  %idx.ext = sub i32 %r, %8, !dbg !3488
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %idx.ext, !dbg !3488
    #dbg_value(ptr %add.ptr, !3447, !DIExpression(), !3445)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3489
  store i64 0, ptr %arrayidx24, align 8, !dbg !3490
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #4, !dbg !3491
  br label %while.cond, !dbg !3449, !llvm.loop !3492

for.cond25:                                       ; preds = %for.cond25.preheader, %for.body28
  %i.1 = phi i32 [ %inc45, %for.body28 ], [ 0, %for.cond25.preheader ], !dbg !3494
    #dbg_value(i32 %i.1, !3461, !DIExpression(), !3445)
  %exitcond = icmp ne i32 %i.1, %mlen.addr.0.lcssa1, !dbg !3495
  br i1 %exitcond, label %for.body28, label %for.end46, !dbg !3458

for.body28:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.1, !dbg !3497
  %9 = load i8, ptr %arrayidx29, align 1, !dbg !3497
  %conv30 = zext i8 %9 to i64, !dbg !3499
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3500
  %10 = load i64, ptr %arrayidx31, align 8, !dbg !3500
  %conv32 = zext i32 %i.1 to i64, !dbg !3501
  %add33 = add i64 %10, %conv32, !dbg !3502
  %and34 = shl i64 %add33, 3, !dbg !3503
  %mul35 = and i64 %and34, 56, !dbg !3503
  %shl36 = shl nuw i64 %conv30, %mul35, !dbg !3504
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3505
  %11 = load i64, ptr %arrayidx37, align 8, !dbg !3505
  %conv38 = zext i32 %i.1 to i64, !dbg !3506
  %add39 = add i64 %11, %conv38, !dbg !3507
  %shr40 = lshr i64 %add39, 3, !dbg !3508
  %idxprom41 = trunc i64 %shr40 to i32, !dbg !3509
  %arrayidx42 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom41, !dbg !3509
  %12 = load i64, ptr %arrayidx42, align 8, !dbg !3510
  %xor43 = xor i64 %12, %shl36, !dbg !3510
  store i64 %xor43, ptr %arrayidx42, align 8, !dbg !3510
  %inc45 = add i32 %i.1, 1, !dbg !3511
    #dbg_value(i32 %inc45, !3461, !DIExpression(), !3445)
  br label %for.cond25, !dbg !3512, !llvm.loop !3513

for.end46:                                        ; preds = %for.cond25
  %conv47 = zext i32 %mlen.addr.0.lcssa to i64, !dbg !3515
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3516
  %13 = load i64, ptr %arrayidx48, align 8, !dbg !3517
  %add49 = add i64 %13, %conv47, !dbg !3517
  store i64 %add49, ptr %arrayidx48, align 8, !dbg !3517
  ret void, !dbg !3518
}

; Function Attrs: nounwind
define internal fastcc void @KeccakF1600_StatePermute(ptr noundef %state) unnamed_addr #0 !dbg !3519 {
entry:
    #dbg_value(ptr %state, !3520, !DIExpression(), !3521)
  %0 = load i64, ptr %state, align 8, !dbg !3522
    #dbg_value(i64 %0, !3523, !DIExpression(), !3521)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3524
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !3524
    #dbg_value(i64 %1, !3525, !DIExpression(), !3521)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3526
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !3526
    #dbg_value(i64 %2, !3527, !DIExpression(), !3521)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3528
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !3528
    #dbg_value(i64 %3, !3529, !DIExpression(), !3521)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3530
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !3530
    #dbg_value(i64 %4, !3531, !DIExpression(), !3521)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3532
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !3532
    #dbg_value(i64 %5, !3533, !DIExpression(), !3521)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3534
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !3534
    #dbg_value(i64 %6, !3535, !DIExpression(), !3521)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3536
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !3536
    #dbg_value(i64 %7, !3537, !DIExpression(), !3521)
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3538
  %8 = load i64, ptr %arrayidx8, align 8, !dbg !3538
    #dbg_value(i64 %8, !3539, !DIExpression(), !3521)
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3540
  %9 = load i64, ptr %arrayidx9, align 8, !dbg !3540
    #dbg_value(i64 %9, !3541, !DIExpression(), !3521)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3542
  %10 = load i64, ptr %arrayidx10, align 8, !dbg !3542
    #dbg_value(i64 %10, !3543, !DIExpression(), !3521)
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3544
  %11 = load i64, ptr %arrayidx11, align 8, !dbg !3544
    #dbg_value(i64 %11, !3545, !DIExpression(), !3521)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3546
  %12 = load i64, ptr %arrayidx12, align 8, !dbg !3546
    #dbg_value(i64 %12, !3547, !DIExpression(), !3521)
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3548
  %13 = load i64, ptr %arrayidx13, align 8, !dbg !3548
    #dbg_value(i64 %13, !3549, !DIExpression(), !3521)
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3550
  %14 = load i64, ptr %arrayidx14, align 8, !dbg !3550
    #dbg_value(i64 %14, !3551, !DIExpression(), !3521)
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3552
  %15 = load i64, ptr %arrayidx15, align 8, !dbg !3552
    #dbg_value(i64 %15, !3553, !DIExpression(), !3521)
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3554
  %16 = load i64, ptr %arrayidx16, align 8, !dbg !3554
    #dbg_value(i64 %16, !3555, !DIExpression(), !3521)
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3556
  %17 = load i64, ptr %arrayidx17, align 8, !dbg !3556
    #dbg_value(i64 %17, !3557, !DIExpression(), !3521)
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3558
  %18 = load i64, ptr %arrayidx18, align 8, !dbg !3558
    #dbg_value(i64 %18, !3559, !DIExpression(), !3521)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3560
  %19 = load i64, ptr %arrayidx19, align 8, !dbg !3560
    #dbg_value(i64 %19, !3561, !DIExpression(), !3521)
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3562
  %20 = load i64, ptr %arrayidx20, align 8, !dbg !3562
    #dbg_value(i64 %20, !3563, !DIExpression(), !3521)
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3564
  %21 = load i64, ptr %arrayidx21, align 8, !dbg !3564
    #dbg_value(i64 %21, !3565, !DIExpression(), !3521)
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3566
  %22 = load i64, ptr %arrayidx22, align 8, !dbg !3566
    #dbg_value(i64 %22, !3567, !DIExpression(), !3521)
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3568
  %23 = load i64, ptr %arrayidx23, align 8, !dbg !3568
    #dbg_value(i64 %23, !3569, !DIExpression(), !3521)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3570
  %24 = load i64, ptr %arrayidx24, align 8, !dbg !3570
    #dbg_value(i64 %24, !3571, !DIExpression(), !3521)
    #dbg_value(i32 0, !3572, !DIExpression(), !3521)
  br label %for.cond, !dbg !3573

for.cond:                                         ; preds = %for.inc, %entry
  %Aso.0 = phi i64 [ %23, %entry ], [ %xor444, %for.inc ], !dbg !3521
  %Asi.0 = phi i64 [ %22, %entry ], [ %xor441, %for.inc ], !dbg !3521
  %Ase.0 = phi i64 [ %21, %entry ], [ %xor438, %for.inc ], !dbg !3521
  %Asa.0 = phi i64 [ %20, %entry ], [ %xor435, %for.inc ], !dbg !3521
  %Amu.0 = phi i64 [ %19, %entry ], [ %xor412, %for.inc ], !dbg !3521
  %Amo.0 = phi i64 [ %18, %entry ], [ %xor409, %for.inc ], !dbg !3521
  %Ami.0 = phi i64 [ %17, %entry ], [ %xor406, %for.inc ], !dbg !3521
  %Ame.0 = phi i64 [ %16, %entry ], [ %xor403, %for.inc ], !dbg !3521
  %Ama.0 = phi i64 [ %15, %entry ], [ %xor400, %for.inc ], !dbg !3521
  %Aku.0 = phi i64 [ %14, %entry ], [ %xor377, %for.inc ], !dbg !3521
  %Ako.0 = phi i64 [ %13, %entry ], [ %xor374, %for.inc ], !dbg !3521
  %Aki.0 = phi i64 [ %12, %entry ], [ %xor371, %for.inc ], !dbg !3521
  %Ake.0 = phi i64 [ %11, %entry ], [ %xor368, %for.inc ], !dbg !3521
  %Aka.0 = phi i64 [ %10, %entry ], [ %xor365, %for.inc ], !dbg !3521
  %Agu.0 = phi i64 [ %9, %entry ], [ %xor342, %for.inc ], !dbg !3521
  %Ago.0 = phi i64 [ %8, %entry ], [ %xor339, %for.inc ], !dbg !3521
  %Agi.0 = phi i64 [ %7, %entry ], [ %xor336, %for.inc ], !dbg !3521
  %Age.0 = phi i64 [ %6, %entry ], [ %xor333, %for.inc ], !dbg !3521
  %Aga.0 = phi i64 [ %5, %entry ], [ %xor330, %for.inc ], !dbg !3521
  %Abu.0 = phi i64 [ %4, %entry ], [ %xor307, %for.inc ], !dbg !3521
  %Abo.0 = phi i64 [ %3, %entry ], [ %xor304, %for.inc ], !dbg !3521
  %Abi.0 = phi i64 [ %2, %entry ], [ %xor301, %for.inc ], !dbg !3521
  %Abe.0 = phi i64 [ %1, %entry ], [ %xor298, %for.inc ], !dbg !3521
  %Aba.0 = phi i64 [ %0, %entry ], [ %xor295, %for.inc ], !dbg !3521
  %round.0 = phi i32 [ 0, %entry ], [ %add448, %for.inc ], !dbg !3575
  %Asu.0 = phi i64 [ %24, %entry ], [ %xor447, %for.inc ], !dbg !3521
    #dbg_value(i64 %Asu.0, !3571, !DIExpression(), !3521)
    #dbg_value(i32 %round.0, !3572, !DIExpression(), !3521)
    #dbg_value(i64 %Aba.0, !3523, !DIExpression(), !3521)
    #dbg_value(i64 %Abe.0, !3525, !DIExpression(), !3521)
    #dbg_value(i64 %Abi.0, !3527, !DIExpression(), !3521)
    #dbg_value(i64 %Abo.0, !3529, !DIExpression(), !3521)
    #dbg_value(i64 %Abu.0, !3531, !DIExpression(), !3521)
    #dbg_value(i64 %Aga.0, !3533, !DIExpression(), !3521)
    #dbg_value(i64 %Age.0, !3535, !DIExpression(), !3521)
    #dbg_value(i64 %Agi.0, !3537, !DIExpression(), !3521)
    #dbg_value(i64 %Ago.0, !3539, !DIExpression(), !3521)
    #dbg_value(i64 %Agu.0, !3541, !DIExpression(), !3521)
    #dbg_value(i64 %Aka.0, !3543, !DIExpression(), !3521)
    #dbg_value(i64 %Ake.0, !3545, !DIExpression(), !3521)
    #dbg_value(i64 %Aki.0, !3547, !DIExpression(), !3521)
    #dbg_value(i64 %Ako.0, !3549, !DIExpression(), !3521)
    #dbg_value(i64 %Aku.0, !3551, !DIExpression(), !3521)
    #dbg_value(i64 %Ama.0, !3553, !DIExpression(), !3521)
    #dbg_value(i64 %Ame.0, !3555, !DIExpression(), !3521)
    #dbg_value(i64 %Ami.0, !3557, !DIExpression(), !3521)
    #dbg_value(i64 %Amo.0, !3559, !DIExpression(), !3521)
    #dbg_value(i64 %Amu.0, !3561, !DIExpression(), !3521)
    #dbg_value(i64 %Asa.0, !3563, !DIExpression(), !3521)
    #dbg_value(i64 %Ase.0, !3565, !DIExpression(), !3521)
    #dbg_value(i64 %Asi.0, !3567, !DIExpression(), !3521)
    #dbg_value(i64 %Aso.0, !3569, !DIExpression(), !3521)
  %cmp = icmp samesign ult i32 %round.0, 24, !dbg !3576
  br i1 %cmp, label %for.inc, label %for.end, !dbg !3578

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0, i64 %Aga.0), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0, i64 %Age.0), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0, i64 %Agi.0), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0, i64 %Ago.0), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0, i64 %Agu.0), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3586, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3580, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3581, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3579, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3580, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3581, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3579, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3580, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3581, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3579, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3580, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3581, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3579, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3580, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3581, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3586, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3580, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3581, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3579, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3580, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3581, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3579, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3580, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3581, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3579, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3580, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3581, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3579, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3580, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3581, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3582, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 poison, !3583, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor32 = xor i64 %Abi.0, %Agi.0, !dbg !3614
    #dbg_value(!DIArgList(i64 %xor32, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor33 = xor i64 %xor32, %Aki.0, !dbg !3616
    #dbg_value(!DIArgList(i64 %xor33, i64 %Asi.0, i64 %Ami.0), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor34 = xor i64 %xor33, %Ami.0, !dbg !3617
    #dbg_value(!DIArgList(i64 %xor34, i64 %Asi.0), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor35 = xor i64 %xor34, %Asi.0, !dbg !3618
    #dbg_value(i64 %xor35, !3581, !DIExpression(), !3521)
  %xor40 = xor i64 %Abu.0, %Agu.0, !dbg !3619
    #dbg_value(!DIArgList(i64 %xor40, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor41 = xor i64 %xor40, %Aku.0, !dbg !3620
    #dbg_value(!DIArgList(i64 %xor41, i64 %Asu.0, i64 %Amu.0), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor42 = xor i64 %xor41, %Amu.0, !dbg !3621
    #dbg_value(!DIArgList(i64 %xor42, i64 %Asu.0), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor43 = xor i64 %xor42, %Asu.0, !dbg !3622
    #dbg_value(i64 %xor43, !3583, !DIExpression(), !3521)
  %25 = shl i64 %xor43, 1, !dbg !3623
  %26 = lshr i64 %xor43, 63, !dbg !3623
  %27 = or i64 %25, %26, !dbg !3623
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor35, i64 %27), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor35, i64 %27), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor35, i64 %27), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor35, i64 %27), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor35, i64 %27), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor35, i64 %27), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor57 = xor i64 %xor35, %27, !dbg !3624
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor57), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor57), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor57), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor57), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor57), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 %xor57, !3587, !DIExpression(), !3521)
  %xor203 = xor i64 %Ago.0, %xor57, !dbg !3625
    #dbg_value(i64 %xor203, !3539, !DIExpression(), !3521)
  %28 = shl i64 %xor203, 55, !dbg !3626
  %29 = lshr i64 %xor203, 9, !dbg !3626
  %30 = or i64 %28, %29, !dbg !3626
    #dbg_value(i64 %30, !3580, !DIExpression(), !3521)
  %xor28 = xor i64 %Abe.0, %Age.0, !dbg !3627
    #dbg_value(!DIArgList(i64 %xor28, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor29 = xor i64 %xor28, %Ake.0, !dbg !3628
    #dbg_value(!DIArgList(i64 %xor29, i64 %Ase.0, i64 %Ame.0), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor30 = xor i64 %xor29, %Ame.0, !dbg !3629
    #dbg_value(!DIArgList(i64 %xor30, i64 %Ase.0), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor31 = xor i64 %xor30, %Ase.0, !dbg !3630
    #dbg_value(i64 %xor31, !3580, !DIExpression(), !3521)
  %31 = shl i64 %xor31, 1, !dbg !3631
  %32 = lshr i64 %xor31, 63, !dbg !3631
  %33 = or i64 %31, %32, !dbg !3631
    #dbg_value(!DIArgList(i64 %xor43, i64 %33), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor43, i64 %33), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor43, i64 %33), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor43, i64 %33), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor43, i64 %33), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor45 = xor i64 %xor43, %33, !dbg !3632
    #dbg_value(i64 %xor45, !3584, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor45), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor45), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor45), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor45), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor211 = xor i64 %Ama.0, %xor45, !dbg !3633
    #dbg_value(i64 %xor211, !3553, !DIExpression(), !3521)
  %34 = shl i64 %xor211, 41, !dbg !3634
  %35 = lshr i64 %xor211, 23, !dbg !3634
  %36 = or i64 %34, %35, !dbg !3634
    #dbg_value(i64 %36, !3582, !DIExpression(), !3521)
  %xor36 = xor i64 %Abo.0, %Ago.0, !dbg !3635
    #dbg_value(!DIArgList(i64 %xor36, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor37 = xor i64 %xor36, %Ako.0, !dbg !3636
    #dbg_value(!DIArgList(i64 %xor37, i64 %Aso.0, i64 %Amo.0), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor38 = xor i64 %xor37, %Amo.0, !dbg !3637
    #dbg_value(!DIArgList(i64 %xor38, i64 %Aso.0), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor39 = xor i64 %xor38, %Aso.0, !dbg !3638
    #dbg_value(i64 %xor39, !3582, !DIExpression(), !3521)
  %xor = xor i64 %Aba.0, %Aga.0, !dbg !3639
    #dbg_value(!DIArgList(i64 %xor, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor25 = xor i64 %xor, %Aka.0, !dbg !3640
    #dbg_value(!DIArgList(i64 %xor25, i64 %Asa.0, i64 %Ama.0), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor26 = xor i64 %xor25, %Ama.0, !dbg !3641
    #dbg_value(!DIArgList(i64 %xor26, i64 %Asa.0), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor27 = xor i64 %xor26, %Asa.0, !dbg !3642
    #dbg_value(i64 %xor27, !3579, !DIExpression(), !3521)
  %37 = shl i64 %xor27, 1, !dbg !3643
  %38 = lshr i64 %xor27, 63, !dbg !3643
  %39 = or i64 %37, %38, !dbg !3643
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor39, i64 %39), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor39, i64 %39), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor39, i64 %39), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor39, i64 %39), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor39, i64 %39), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor39, i64 %39), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor61 = xor i64 %xor39, %39, !dbg !3644
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor61), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor61), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor61), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor61), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 %xor61, !3588, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor61), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor207 = xor i64 %Aku.0, %xor61, !dbg !3645
    #dbg_value(i64 %xor207, !3551, !DIExpression(), !3521)
  %40 = shl i64 %xor207, 39, !dbg !3646
  %41 = lshr i64 %xor207, 25, !dbg !3646
  %42 = or i64 %40, %41, !dbg !3646
    #dbg_value(i64 %42, !3581, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %42), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not222 = xor i64 %42, -1, !dbg !3647
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %not222), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and223 = and i64 %36, %not222, !dbg !3648
    #dbg_value(!DIArgList(i64 %30, i64 %and223), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor224 = xor i64 %30, %and223, !dbg !3649
    #dbg_value(i64 %xor224, !3610, !DIExpression(), !3521)
  %43 = shl i64 %xor39, 1, !dbg !3650
  %44 = lshr i64 %xor39, 63, !dbg !3650
  %45 = or i64 %43, %44, !dbg !3650
    #dbg_value(!DIArgList(i64 %xor31, i64 %45), !3586, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor31, i64 %45), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor31, i64 %45), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor31, i64 %45), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor31, i64 %45), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor31, i64 %45), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor53 = xor i64 %xor31, %45, !dbg !3651
    #dbg_value(i64 %xor53, !3586, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor53), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor53), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor53), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor53), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor53), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor67 = xor i64 %Aki.0, %xor53, !dbg !3652
    #dbg_value(i64 %xor67, !3547, !DIExpression(), !3521)
  %46 = shl i64 %xor67, 43, !dbg !3653
  %47 = lshr i64 %xor67, 21, !dbg !3653
  %48 = or i64 %46, %47, !dbg !3653
    #dbg_value(i64 %48, !3581, !DIExpression(), !3521)
  %49 = shl i64 %xor35, 1, !dbg !3654
  %50 = lshr i64 %xor35, 63, !dbg !3654
  %51 = or i64 %49, %50, !dbg !3654
    #dbg_value(!DIArgList(i64 %xor27, i64 %51), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor27, i64 %51), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor27, i64 %51), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor27, i64 %51), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor27, i64 %51), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor27, i64 %51), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor49 = xor i64 %xor27, %51, !dbg !3655
    #dbg_value(i64 %xor49, !3585, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor49), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor49), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor49), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor49), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor49), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor63 = xor i64 %Age.0, %xor49, !dbg !3656
    #dbg_value(i64 %xor63, !3535, !DIExpression(), !3521)
  %52 = shl i64 %xor63, 44, !dbg !3657
  %53 = lshr i64 %xor63, 20, !dbg !3657
  %54 = or i64 %52, %53, !dbg !3657
    #dbg_value(i64 %54, !3580, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %54), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not = xor i64 %54, -1, !dbg !3658
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %not), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and = and i64 %48, %not, !dbg !3659
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %and, i64 %xor45), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %arrayidx80 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %round.0, !dbg !3660
  %55 = load i64, ptr %arrayidx80, align 8, !dbg !3660
    #dbg_value(!DIArgList(i64 %and, i64 %Aba.0, i64 %xor45, i64 %55), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %56 = xor i64 %and, %55, !dbg !3661
    #dbg_value(!DIArgList(i64 %56, i64 %Aba.0, i64 %xor45), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor62 = xor i64 %Aba.0, %xor45, !dbg !3662
    #dbg_value(i64 %xor62, !3523, !DIExpression(), !3521)
    #dbg_value(i64 %xor62, !3579, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %56, i64 %xor62), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor81 = xor i64 %56, %xor62, !dbg !3661
    #dbg_value(i64 %xor81, !3589, !DIExpression(), !3521)
  %xor94 = xor i64 %Abo.0, %xor57, !dbg !3663
    #dbg_value(i64 %xor94, !3529, !DIExpression(), !3521)
  %57 = shl i64 %xor94, 28, !dbg !3664
  %58 = lshr i64 %xor94, 36, !dbg !3664
  %59 = or i64 %57, %58, !dbg !3664
    #dbg_value(i64 %59, !3579, !DIExpression(), !3521)
  %xor102 = xor i64 %Aka.0, %xor45, !dbg !3665
    #dbg_value(i64 %xor102, !3543, !DIExpression(), !3521)
  %60 = shl i64 %xor102, 3, !dbg !3666
  %61 = lshr i64 %xor102, 61, !dbg !3666
  %62 = or i64 %60, %61, !dbg !3666
    #dbg_value(i64 %62, !3581, !DIExpression(), !3521)
  %xor98 = xor i64 %Agu.0, %xor61, !dbg !3667
    #dbg_value(i64 %xor98, !3541, !DIExpression(), !3521)
  %63 = shl i64 %xor98, 20, !dbg !3668
  %64 = lshr i64 %xor98, 44, !dbg !3668
  %65 = or i64 %63, %64, !dbg !3668
    #dbg_value(i64 %65, !3580, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %65), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not114 = xor i64 %65, -1, !dbg !3669
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %not114), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and115 = and i64 %62, %not114, !dbg !3670
    #dbg_value(!DIArgList(i64 %59, i64 %and115), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor116 = xor i64 %59, %and115, !dbg !3671
    #dbg_value(i64 %xor116, !3594, !DIExpression(), !3521)
  %xor234 = xor i64 %xor81, %xor116, !dbg !3672
  %xor129 = xor i64 %Abe.0, %xor49, !dbg !3673
    #dbg_value(i64 %xor129, !3525, !DIExpression(), !3521)
  %66 = shl i64 %xor129, 1, !dbg !3674
  %67 = lshr i64 %xor129, 63, !dbg !3674
  %68 = or i64 %66, %67, !dbg !3674
    #dbg_value(i64 %68, !3579, !DIExpression(), !3521)
  %xor137 = xor i64 %Ako.0, %xor57, !dbg !3675
    #dbg_value(i64 %xor137, !3549, !DIExpression(), !3521)
  %69 = shl i64 %xor137, 25, !dbg !3676
  %70 = lshr i64 %xor137, 39, !dbg !3676
  %71 = or i64 %69, %70, !dbg !3676
    #dbg_value(i64 %71, !3581, !DIExpression(), !3521)
  %xor133 = xor i64 %Agi.0, %xor53, !dbg !3677
    #dbg_value(i64 %xor133, !3537, !DIExpression(), !3521)
  %72 = shl i64 %xor133, 6, !dbg !3678
  %73 = lshr i64 %xor133, 58, !dbg !3678
  %74 = or i64 %72, %73, !dbg !3678
    #dbg_value(i64 %74, !3580, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %74), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not149 = xor i64 %74, -1, !dbg !3679
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %not149), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and150 = and i64 %71, %not149, !dbg !3680
    #dbg_value(!DIArgList(i64 %68, i64 %and150), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor151 = xor i64 %68, %and150, !dbg !3681
    #dbg_value(i64 %xor151, !3599, !DIExpression(), !3521)
  %xor235 = xor i64 %xor234, %xor151, !dbg !3682
  %xor164 = xor i64 %Abu.0, %xor61, !dbg !3683
    #dbg_value(i64 %xor164, !3531, !DIExpression(), !3521)
  %75 = shl i64 %xor164, 27, !dbg !3684
  %76 = lshr i64 %xor164, 37, !dbg !3684
  %77 = or i64 %75, %76, !dbg !3684
    #dbg_value(i64 %77, !3579, !DIExpression(), !3521)
  %xor172 = xor i64 %Ake.0, %xor49, !dbg !3685
    #dbg_value(i64 %xor172, !3545, !DIExpression(), !3521)
  %78 = shl i64 %xor172, 10, !dbg !3686
  %79 = lshr i64 %xor172, 54, !dbg !3686
  %80 = or i64 %78, %79, !dbg !3686
    #dbg_value(i64 %80, !3581, !DIExpression(), !3521)
  %xor168 = xor i64 %Aga.0, %xor45, !dbg !3687
    #dbg_value(i64 %xor168, !3533, !DIExpression(), !3521)
  %81 = shl i64 %xor168, 36, !dbg !3688
  %82 = lshr i64 %xor168, 28, !dbg !3688
  %83 = or i64 %81, %82, !dbg !3688
    #dbg_value(i64 %83, !3580, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %83), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not184 = xor i64 %83, -1, !dbg !3689
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %not184), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and185 = and i64 %80, %not184, !dbg !3690
    #dbg_value(!DIArgList(i64 %77, i64 %and185), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor186 = xor i64 %77, %and185, !dbg !3691
    #dbg_value(i64 %xor186, !3604, !DIExpression(), !3521)
  %xor236 = xor i64 %xor235, %xor186, !dbg !3692
  %xor199 = xor i64 %Abi.0, %xor53, !dbg !3693
    #dbg_value(i64 %xor199, !3527, !DIExpression(), !3521)
  %84 = shl i64 %xor199, 62, !dbg !3694
  %85 = lshr i64 %xor199, 2, !dbg !3694
  %86 = or i64 %84, %85, !dbg !3694
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %30), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %30), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %not219 = xor i64 %30, -1, !dbg !3695
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %not219), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %not219), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %and220 = and i64 %42, %not219, !dbg !3696
    #dbg_value(!DIArgList(i64 %86, i64 %and220), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %and220), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor221 = xor i64 %86, %and220, !dbg !3697
    #dbg_value(i64 %xor221, !3609, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor221), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor237 = xor i64 %xor236, %xor221, !dbg !3698
    #dbg_value(i64 %xor237, !3579, !DIExpression(), !3521)
  %xor75 = xor i64 %Asu.0, %xor61, !dbg !3699
    #dbg_value(i64 %xor75, !3571, !DIExpression(), !3521)
  %87 = shl i64 %xor75, 14, !dbg !3700
  %88 = lshr i64 %xor75, 50, !dbg !3700
  %89 = or i64 %87, %88, !dbg !3700
    #dbg_value(i64 %89, !3583, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %xor62), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor71 = xor i64 %Amo.0, %xor57, !dbg !3701
    #dbg_value(i64 %xor71, !3559, !DIExpression(), !3521)
  %90 = shl i64 %xor71, 21, !dbg !3702
  %91 = lshr i64 %xor71, 43, !dbg !3702
  %92 = or i64 %90, %91, !dbg !3702
    #dbg_value(i64 %92, !3582, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %92), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %54, i64 %92, i64 %48), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %92, i64 %xor62, i64 %89), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not85 = xor i64 %92, -1, !dbg !3703
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %not85), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and86 = and i64 %89, %not85, !dbg !3704
    #dbg_value(!DIArgList(i64 %48, i64 %and86), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor87 = xor i64 %48, %and86, !dbg !3705
    #dbg_value(i64 %xor87, !3591, !DIExpression(), !3521)
  %xor110 = xor i64 %Asi.0, %xor53, !dbg !3706
    #dbg_value(i64 %xor110, !3567, !DIExpression(), !3521)
  %93 = shl i64 %xor110, 61, !dbg !3707
  %94 = lshr i64 %xor110, 3, !dbg !3707
  %95 = or i64 %93, %94, !dbg !3707
    #dbg_value(i64 %95, !3583, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %59), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor106 = xor i64 %Ame.0, %xor49, !dbg !3708
    #dbg_value(i64 %xor106, !3555, !DIExpression(), !3521)
  %96 = shl i64 %xor106, 45, !dbg !3709
  %97 = lshr i64 %xor106, 19, !dbg !3709
  %98 = or i64 %96, %97, !dbg !3709
    #dbg_value(i64 %98, !3582, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %98), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %95), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %65, i64 %98, i64 %62), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not120 = xor i64 %98, -1, !dbg !3710
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %not120), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and121 = and i64 %95, %not120, !dbg !3711
    #dbg_value(!DIArgList(i64 %62, i64 %and121), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor122 = xor i64 %62, %and121, !dbg !3712
    #dbg_value(i64 %xor122, !3596, !DIExpression(), !3521)
  %xor242 = xor i64 %xor87, %xor122, !dbg !3713
  %xor145 = xor i64 %Asa.0, %xor45, !dbg !3714
    #dbg_value(i64 %xor145, !3563, !DIExpression(), !3521)
  %99 = shl i64 %xor145, 18, !dbg !3715
  %100 = lshr i64 %xor145, 46, !dbg !3715
  %101 = or i64 %99, %100, !dbg !3715
    #dbg_value(i64 %101, !3583, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %68), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor141 = xor i64 %Amu.0, %xor61, !dbg !3716
    #dbg_value(i64 %xor141, !3561, !DIExpression(), !3521)
  %102 = shl i64 %xor141, 8, !dbg !3717
  %103 = lshr i64 %xor141, 56, !dbg !3717
  %104 = or i64 %102, %103, !dbg !3717
    #dbg_value(i64 %104, !3582, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %104), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %74, i64 %104, i64 %71), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %104, i64 %68, i64 %101), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not155 = xor i64 %104, -1, !dbg !3718
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %not155), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and156 = and i64 %101, %not155, !dbg !3719
    #dbg_value(!DIArgList(i64 %71, i64 %and156), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor157 = xor i64 %71, %and156, !dbg !3720
    #dbg_value(i64 %xor157, !3601, !DIExpression(), !3521)
  %xor243 = xor i64 %xor242, %xor157, !dbg !3721
  %xor180 = xor i64 %Aso.0, %xor57, !dbg !3722
    #dbg_value(i64 %xor180, !3569, !DIExpression(), !3521)
  %105 = shl i64 %xor180, 56, !dbg !3723
  %106 = lshr i64 %xor180, 8, !dbg !3723
  %107 = or i64 %105, %106, !dbg !3723
    #dbg_value(i64 %107, !3583, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %77), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor176 = xor i64 %Ami.0, %xor53, !dbg !3724
    #dbg_value(i64 %xor176, !3557, !DIExpression(), !3521)
  %108 = shl i64 %xor176, 15, !dbg !3725
  %109 = lshr i64 %xor176, 49, !dbg !3725
  %110 = or i64 %108, %109, !dbg !3725
    #dbg_value(i64 %110, !3582, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %110), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %83, i64 %110, i64 %80), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %110, i64 %77, i64 %107), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %48), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %not190 = xor i64 %110, -1, !dbg !3726
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %not190), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and191 = and i64 %107, %not190, !dbg !3727
    #dbg_value(!DIArgList(i64 %80, i64 %and191), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor192 = xor i64 %80, %and191, !dbg !3728
    #dbg_value(i64 %xor192, !3606, !DIExpression(), !3521)
  %xor244 = xor i64 %xor243, %xor192, !dbg !3729
  %xor215 = xor i64 %Ase.0, %xor49, !dbg !3730
    #dbg_value(i64 %xor215, !3565, !DIExpression(), !3521)
  %111 = shl i64 %xor215, 2, !dbg !3731
  %112 = lshr i64 %xor215, 62, !dbg !3731
  %113 = or i64 %111, %112, !dbg !3731
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %36), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %86), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %36, i64 %86, i64 %113), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %36), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %95), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %xor62), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %not225 = xor i64 %36, -1, !dbg !3732
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %not225), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %not225), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %and226 = and i64 %113, %not225, !dbg !3733
    #dbg_value(!DIArgList(i64 %42, i64 %and226), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %and226), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor227 = xor i64 %42, %and226, !dbg !3734
    #dbg_value(i64 %xor227, !3611, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor227), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor245 = xor i64 %xor244, %xor227, !dbg !3735
    #dbg_value(i64 %xor245, !3581, !DIExpression(), !3521)
  %114 = shl i64 %xor245, 1, !dbg !3736
  %115 = lshr i64 %xor245, 63, !dbg !3736
  %116 = or i64 %114, %115, !dbg !3736
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor237, i64 %116), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %54, i64 %xor237, i64 %92, i64 %48, i64 %116), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %65, i64 %xor237, i64 %98, i64 %62, i64 %116), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %74, i64 %xor237, i64 %104, i64 %71, i64 %116), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %83, i64 %xor237, i64 %110, i64 %80, i64 %116), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor237, i64 %116), !3585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor261 = xor i64 %xor237, %116, !dbg !3737
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor261), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %48), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %62), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %71), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %80), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 %xor261, !3585, !DIExpression(), !3521)
  %xor429 = xor i64 %xor224, %xor261, !dbg !3738
    #dbg_value(i64 %xor429, !3610, !DIExpression(), !3521)
  %117 = shl i64 %xor429, 2, !dbg !3739
  %118 = lshr i64 %xor429, 62, !dbg !3739
  %119 = or i64 %117, %118, !dbg !3739
    #dbg_value(i64 %119, !3583, !DIExpression(), !3521)
  %not123 = xor i64 %95, -1, !dbg !3740
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %not123), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %not123), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %and124 = and i64 %59, %not123, !dbg !3741
    #dbg_value(!DIArgList(i64 %98, i64 %and124), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %and124), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor125 = xor i64 %98, %and124, !dbg !3742
    #dbg_value(i64 %xor125, !3597, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %89), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %not91 = xor i64 %xor62, -1, !dbg !3743
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %not91), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %not91), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %and92 = and i64 %54, %not91, !dbg !3744
    #dbg_value(!DIArgList(i64 %89, i64 %and92), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %and92), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor93 = xor i64 %89, %and92, !dbg !3745
    #dbg_value(i64 %xor93, !3593, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %not126 = xor i64 %59, -1, !dbg !3746
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %not126), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %not126), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %and127 = and i64 %65, %not126, !dbg !3747
    #dbg_value(!DIArgList(i64 %95, i64 %and127), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %and127), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor128 = xor i64 %95, %and127, !dbg !3748
    #dbg_value(i64 %xor128, !3598, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %xor128), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor250 = xor i64 %xor93, %xor128, !dbg !3749
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %not161 = xor i64 %68, -1, !dbg !3750
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %not161), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %not161), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %and162 = and i64 %74, %not161, !dbg !3751
    #dbg_value(!DIArgList(i64 %101, i64 %and162), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %and162), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor163 = xor i64 %101, %and162, !dbg !3752
    #dbg_value(i64 %xor163, !3603, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %xor163), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor251 = xor i64 %xor250, %xor163, !dbg !3753
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %not196 = xor i64 %77, -1, !dbg !3754
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %not196), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %not196), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %and197 = and i64 %83, %not196, !dbg !3755
    #dbg_value(!DIArgList(i64 %107, i64 %and197), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %and197), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor198 = xor i64 %107, %and197, !dbg !3756
    #dbg_value(i64 %xor198, !3608, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %xor198), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor252 = xor i64 %xor251, %xor198, !dbg !3757
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %86), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %not231 = xor i64 %86, -1, !dbg !3758
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %not231), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %not231), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %and232 = and i64 %30, %not231, !dbg !3759
    #dbg_value(!DIArgList(i64 %113, i64 %and232), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %and232), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor233 = xor i64 %113, %and232, !dbg !3760
    #dbg_value(i64 %xor233, !3613, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor233), !3583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor253 = xor i64 %xor252, %xor233, !dbg !3761
    #dbg_value(i64 %xor253, !3583, !DIExpression(), !3521)
  %120 = shl i64 %xor253, 1, !dbg !3762
  %121 = lshr i64 %xor253, 63, !dbg !3762
  %122 = or i64 %120, %121, !dbg !3762
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor245, i64 %122), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %92, i64 %xor245, i64 %xor62, i64 %89, i64 %122), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %104, i64 %xor245, i64 %68, i64 %101, i64 %122), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %110, i64 %xor245, i64 %77, i64 %107, i64 %122), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %36, i64 %xor245, i64 %86, i64 %113, i64 %122), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor245, i64 %122), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor269 = xor i64 %xor245, %122, !dbg !3763
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor269), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %89), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %101), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %107), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %113), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 %xor269, !3587, !DIExpression(), !3521)
  %xor417 = xor i64 %xor125, %xor269, !dbg !3764
    #dbg_value(i64 %xor417, !3597, !DIExpression(), !3521)
  %123 = shl i64 %xor417, 55, !dbg !3765
  %124 = lshr i64 %xor417, 9, !dbg !3765
  %125 = or i64 %123, %124, !dbg !3765
    #dbg_value(i64 %125, !3580, !DIExpression(), !3521)
  %not82 = xor i64 %48, -1, !dbg !3766
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %not82), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %not82), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %and83 = and i64 %92, %not82, !dbg !3767
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %and83), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %and83), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor84 = xor i64 %54, %and83, !dbg !3768
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor261), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %not117 = xor i64 %62, -1, !dbg !3769
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %not117), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %not117), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %and118 = and i64 %98, %not117, !dbg !3770
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %and118), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %and118), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor119 = xor i64 %65, %and118, !dbg !3771
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %xor119), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor119, i64 %xor261), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor238 = xor i64 %xor84, %xor119, !dbg !3772
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %not152 = xor i64 %71, -1, !dbg !3773
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %not152), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %not152), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %and153 = and i64 %104, %not152, !dbg !3774
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %and153), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %and153), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor154 = xor i64 %74, %and153, !dbg !3775
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %xor154), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor154, i64 %xor261), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor239 = xor i64 %xor238, %xor154, !dbg !3776
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %80), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %not187 = xor i64 %80, -1, !dbg !3777
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %not187), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %not187), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %and188 = and i64 %110, %not187, !dbg !3778
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %and188), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %and188), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor189 = xor i64 %83, %and188, !dbg !3779
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor189), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor189, i64 %xor261), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor240 = xor i64 %xor239, %xor189, !dbg !3780
    #dbg_value(!DIArgList(i64 %xor240, i64 %xor224), !3580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor241 = xor i64 %xor240, %xor224, !dbg !3781
    #dbg_value(i64 %xor241, !3580, !DIExpression(), !3521)
  %not88 = xor i64 %89, -1, !dbg !3782
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %not88), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %not88), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %and89 = and i64 %xor62, %not88, !dbg !3783
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %and89), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %and89), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor90 = xor i64 %92, %and89, !dbg !3784
    #dbg_value(!DIArgList(i64 %xor90, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor90, i64 %xor269), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor246 = xor i64 %xor90, %xor125, !dbg !3785
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %not158 = xor i64 %101, -1, !dbg !3786
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %not158), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %not158), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %and159 = and i64 %68, %not158, !dbg !3787
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %and159), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %and159), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor160 = xor i64 %104, %and159, !dbg !3788
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %xor160), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor160, i64 %xor269), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor247 = xor i64 %xor246, %xor160, !dbg !3789
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %not193 = xor i64 %107, -1, !dbg !3790
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %not193), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %not193), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %and194 = and i64 %77, %not193, !dbg !3791
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %and194), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %and194), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor195 = xor i64 %110, %and194, !dbg !3792
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %xor195), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor195, i64 %xor269), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor248 = xor i64 %xor247, %xor195, !dbg !3793
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %113), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %not228 = xor i64 %113, -1, !dbg !3794
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %not228), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %not228), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %and229 = and i64 %86, %not228, !dbg !3795
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %and229), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %and229), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor230 = xor i64 %36, %and229, !dbg !3796
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor230), !3582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor230, i64 %xor269), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor249 = xor i64 %xor248, %xor230, !dbg !3797
    #dbg_value(i64 %xor249, !3582, !DIExpression(), !3521)
  %126 = shl i64 %xor249, 1, !dbg !3798
  %127 = lshr i64 %xor249, 63, !dbg !3798
  %128 = or i64 %126, %127, !dbg !3798
    #dbg_value(!DIArgList(i64 %xor241, i64 %128), !3586, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor241, i64 %128), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor241, i64 %128), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor241, i64 %128), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor241, i64 %128), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor241, i64 %128), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor265 = xor i64 %xor241, %128, !dbg !3799
    #dbg_value(i64 %xor265, !3586, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor265), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor265), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor265), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor265), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor265), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor413 = xor i64 %xor87, %xor265, !dbg !3800
    #dbg_value(i64 %xor413, !3591, !DIExpression(), !3521)
  %129 = shl i64 %xor413, 62, !dbg !3801
  %130 = lshr i64 %xor413, 2, !dbg !3801
  %131 = or i64 %129, %130, !dbg !3801
    #dbg_value(i64 %131, !3579, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %131), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not445 = xor i64 %131, -1, !dbg !3802
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %not445), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and446 = and i64 %125, %not445, !dbg !3803
    #dbg_value(!DIArgList(i64 %119, i64 %and446), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor447 = xor i64 %119, %and446, !dbg !3804
    #dbg_value(i64 %xor447, !3571, !DIExpression(), !3521)
  %132 = shl i64 %xor241, 1, !dbg !3805
  %133 = lshr i64 %xor241, 63, !dbg !3805
  %134 = or i64 %132, %133, !dbg !3805
    #dbg_value(!DIArgList(i64 %xor253, i64 %134), !3584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor253, i64 %134), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor253, i64 %134), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor253, i64 %134), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor253, i64 %134), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor257 = xor i64 %xor253, %134, !dbg !3806
    #dbg_value(i64 %xor257, !3584, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor257), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor257), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor257), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor257), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor425 = xor i64 %xor186, %xor257, !dbg !3807
    #dbg_value(i64 %xor425, !3604, !DIExpression(), !3521)
  %135 = shl i64 %xor425, 41, !dbg !3808
  %136 = lshr i64 %xor425, 23, !dbg !3808
  %137 = or i64 %135, %136, !dbg !3808
    #dbg_value(i64 %137, !3582, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %119), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not442 = xor i64 %119, -1, !dbg !3809
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %not442), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and443 = and i64 %131, %not442, !dbg !3810
    #dbg_value(!DIArgList(i64 %137, i64 %and443), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor444 = xor i64 %137, %and443, !dbg !3811
    #dbg_value(i64 %xor444, !3569, !DIExpression(), !3521)
  %138 = shl i64 %xor237, 1, !dbg !3812
  %139 = lshr i64 %xor237, 63, !dbg !3812
  %140 = or i64 %138, %139, !dbg !3812
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor249, i64 %140), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor249, i64 %140), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor249, i64 %140), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor249, i64 %140), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor249, i64 %140), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor249, i64 %140), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor273 = xor i64 %xor249, %140, !dbg !3813
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor273), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor273), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor273), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor273), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(i64 %xor273, !3588, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor273), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor421 = xor i64 %xor163, %xor273, !dbg !3814
    #dbg_value(i64 %xor421, !3603, !DIExpression(), !3521)
  %141 = shl i64 %xor421, 39, !dbg !3815
  %142 = lshr i64 %xor421, 25, !dbg !3815
  %143 = or i64 %141, %142, !dbg !3815
    #dbg_value(i64 %143, !3581, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %137), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %143), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %125), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not439 = xor i64 %137, -1, !dbg !3816
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %not439), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and440 = and i64 %119, %not439, !dbg !3817
    #dbg_value(!DIArgList(i64 %143, i64 %and440), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor441 = xor i64 %143, %and440, !dbg !3818
    #dbg_value(i64 %xor441, !3567, !DIExpression(), !3521)
  %not436 = xor i64 %143, -1, !dbg !3819
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %not436), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and437 = and i64 %137, %not436, !dbg !3820
    #dbg_value(!DIArgList(i64 %125, i64 %and437), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor438 = xor i64 %125, %and437, !dbg !3821
    #dbg_value(i64 %xor438, !3565, !DIExpression(), !3521)
  %not433 = xor i64 %125, -1, !dbg !3822
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %not433), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and434 = and i64 %143, %not433, !dbg !3823
    #dbg_value(!DIArgList(i64 %131, i64 %and434), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor435 = xor i64 %131, %and434, !dbg !3824
    #dbg_value(i64 %xor435, !3563, !DIExpression(), !3521)
  %xor394 = xor i64 %xor230, %xor269, !dbg !3825
    #dbg_value(i64 %xor394, !3612, !DIExpression(), !3521)
  %144 = shl i64 %xor394, 56, !dbg !3826
  %145 = lshr i64 %xor394, 8, !dbg !3826
  %146 = or i64 %144, %145, !dbg !3826
    #dbg_value(i64 %146, !3583, !DIExpression(), !3521)
  %xor382 = xor i64 %xor116, %xor257, !dbg !3827
    #dbg_value(i64 %xor382, !3594, !DIExpression(), !3521)
  %147 = shl i64 %xor382, 36, !dbg !3828
  %148 = lshr i64 %xor382, 28, !dbg !3828
  %149 = or i64 %147, %148, !dbg !3828
    #dbg_value(i64 %149, !3580, !DIExpression(), !3521)
  %xor378 = xor i64 %xor93, %xor273, !dbg !3829
    #dbg_value(i64 %xor378, !3593, !DIExpression(), !3521)
  %150 = shl i64 %xor378, 27, !dbg !3830
  %151 = lshr i64 %xor378, 37, !dbg !3830
  %152 = or i64 %150, %151, !dbg !3830
    #dbg_value(i64 %152, !3579, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %152), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not410 = xor i64 %152, -1, !dbg !3831
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %not410), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and411 = and i64 %149, %not410, !dbg !3832
    #dbg_value(!DIArgList(i64 %146, i64 %and411), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor412 = xor i64 %146, %and411, !dbg !3833
    #dbg_value(i64 %xor412, !3561, !DIExpression(), !3521)
  %xor390 = xor i64 %xor192, %xor265, !dbg !3834
    #dbg_value(i64 %xor390, !3606, !DIExpression(), !3521)
  %153 = shl i64 %xor390, 15, !dbg !3835
  %154 = lshr i64 %xor390, 49, !dbg !3835
  %155 = or i64 %153, %154, !dbg !3835
    #dbg_value(i64 %155, !3582, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %146), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not407 = xor i64 %146, -1, !dbg !3836
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %not407), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and408 = and i64 %152, %not407, !dbg !3837
    #dbg_value(!DIArgList(i64 %155, i64 %and408), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor409 = xor i64 %155, %and408, !dbg !3838
    #dbg_value(i64 %xor409, !3559, !DIExpression(), !3521)
  %xor386 = xor i64 %xor154, %xor261, !dbg !3839
    #dbg_value(i64 %xor386, !3600, !DIExpression(), !3521)
  %156 = shl i64 %xor386, 10, !dbg !3840
  %157 = lshr i64 %xor386, 54, !dbg !3840
  %158 = or i64 %156, %157, !dbg !3840
    #dbg_value(i64 %158, !3581, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %155), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %158), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %149), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not404 = xor i64 %155, -1, !dbg !3841
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %not404), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and405 = and i64 %146, %not404, !dbg !3842
    #dbg_value(!DIArgList(i64 %158, i64 %and405), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor406 = xor i64 %158, %and405, !dbg !3843
    #dbg_value(i64 %xor406, !3557, !DIExpression(), !3521)
  %not401 = xor i64 %158, -1, !dbg !3844
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %not401), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and402 = and i64 %155, %not401, !dbg !3845
    #dbg_value(!DIArgList(i64 %149, i64 %and402), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor403 = xor i64 %149, %and402, !dbg !3846
    #dbg_value(i64 %xor403, !3555, !DIExpression(), !3521)
  %not398 = xor i64 %149, -1, !dbg !3847
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %not398), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and399 = and i64 %158, %not398, !dbg !3848
    #dbg_value(!DIArgList(i64 %152, i64 %and399), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor400 = xor i64 %152, %and399, !dbg !3849
    #dbg_value(i64 %xor400, !3553, !DIExpression(), !3521)
  %xor359 = xor i64 %xor221, %xor257, !dbg !3850
    #dbg_value(i64 %xor359, !3609, !DIExpression(), !3521)
  %159 = shl i64 %xor359, 18, !dbg !3851
  %160 = lshr i64 %xor359, 46, !dbg !3851
  %161 = or i64 %159, %160, !dbg !3851
    #dbg_value(i64 %161, !3583, !DIExpression(), !3521)
  %xor347 = xor i64 %xor122, %xor265, !dbg !3852
    #dbg_value(i64 %xor347, !3596, !DIExpression(), !3521)
  %162 = shl i64 %xor347, 6, !dbg !3853
  %163 = lshr i64 %xor347, 58, !dbg !3853
  %164 = or i64 %162, %163, !dbg !3853
    #dbg_value(i64 %164, !3580, !DIExpression(), !3521)
  %xor343 = xor i64 %xor84, %xor261, !dbg !3854
    #dbg_value(i64 %xor343, !3590, !DIExpression(), !3521)
  %165 = shl i64 %xor343, 1, !dbg !3855
  %166 = lshr i64 %xor343, 63, !dbg !3855
  %167 = or i64 %165, %166, !dbg !3855
    #dbg_value(i64 %167, !3579, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %167), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not375 = xor i64 %167, -1, !dbg !3856
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %not375), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and376 = and i64 %164, %not375, !dbg !3857
    #dbg_value(!DIArgList(i64 %161, i64 %and376), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor377 = xor i64 %161, %and376, !dbg !3858
    #dbg_value(i64 %xor377, !3551, !DIExpression(), !3521)
  %xor355 = xor i64 %xor198, %xor273, !dbg !3859
    #dbg_value(i64 %xor355, !3608, !DIExpression(), !3521)
  %168 = shl i64 %xor355, 8, !dbg !3860
  %169 = lshr i64 %xor355, 56, !dbg !3860
  %170 = or i64 %168, %169, !dbg !3860
    #dbg_value(i64 %170, !3582, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %161), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not372 = xor i64 %161, -1, !dbg !3861
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %not372), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and373 = and i64 %167, %not372, !dbg !3862
    #dbg_value(!DIArgList(i64 %170, i64 %and373), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor374 = xor i64 %170, %and373, !dbg !3863
    #dbg_value(i64 %xor374, !3549, !DIExpression(), !3521)
  %xor351 = xor i64 %xor160, %xor269, !dbg !3864
    #dbg_value(i64 %xor351, !3602, !DIExpression(), !3521)
  %171 = shl i64 %xor351, 25, !dbg !3865
  %172 = lshr i64 %xor351, 39, !dbg !3865
  %173 = or i64 %171, %172, !dbg !3865
    #dbg_value(i64 %173, !3581, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %170), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %173), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %164), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not369 = xor i64 %170, -1, !dbg !3866
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %not369), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and370 = and i64 %161, %not369, !dbg !3867
    #dbg_value(!DIArgList(i64 %173, i64 %and370), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor371 = xor i64 %173, %and370, !dbg !3868
    #dbg_value(i64 %xor371, !3547, !DIExpression(), !3521)
  %not366 = xor i64 %173, -1, !dbg !3869
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %not366), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and367 = and i64 %170, %not366, !dbg !3870
    #dbg_value(!DIArgList(i64 %164, i64 %and367), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor368 = xor i64 %164, %and367, !dbg !3871
    #dbg_value(i64 %xor368, !3545, !DIExpression(), !3521)
  %not363 = xor i64 %164, -1, !dbg !3872
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %not363), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and364 = and i64 %173, %not363, !dbg !3873
    #dbg_value(!DIArgList(i64 %167, i64 %and364), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor365 = xor i64 %167, %and364, !dbg !3874
    #dbg_value(i64 %xor365, !3543, !DIExpression(), !3521)
  %xor324 = xor i64 %xor227, %xor265, !dbg !3875
    #dbg_value(i64 %xor324, !3611, !DIExpression(), !3521)
  %174 = shl i64 %xor324, 61, !dbg !3876
  %175 = lshr i64 %xor324, 3, !dbg !3876
  %176 = or i64 %174, %175, !dbg !3876
    #dbg_value(i64 %176, !3583, !DIExpression(), !3521)
  %xor312 = xor i64 %xor128, %xor273, !dbg !3877
    #dbg_value(i64 %xor312, !3598, !DIExpression(), !3521)
  %177 = shl i64 %xor312, 20, !dbg !3878
  %178 = lshr i64 %xor312, 44, !dbg !3878
  %179 = or i64 %177, %178, !dbg !3878
    #dbg_value(i64 %179, !3580, !DIExpression(), !3521)
  %xor308 = xor i64 %xor90, %xor269, !dbg !3879
    #dbg_value(i64 %xor308, !3592, !DIExpression(), !3521)
  %180 = shl i64 %xor308, 28, !dbg !3880
  %181 = lshr i64 %xor308, 36, !dbg !3880
  %182 = or i64 %180, %181, !dbg !3880
    #dbg_value(i64 %182, !3579, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %182), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not340 = xor i64 %182, -1, !dbg !3881
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %not340), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and341 = and i64 %179, %not340, !dbg !3882
    #dbg_value(!DIArgList(i64 %176, i64 %and341), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor342 = xor i64 %176, %and341, !dbg !3883
    #dbg_value(i64 %xor342, !3541, !DIExpression(), !3521)
  %xor320 = xor i64 %xor189, %xor261, !dbg !3884
    #dbg_value(i64 %xor320, !3605, !DIExpression(), !3521)
  %183 = shl i64 %xor320, 45, !dbg !3885
  %184 = lshr i64 %xor320, 19, !dbg !3885
  %185 = or i64 %183, %184, !dbg !3885
    #dbg_value(i64 %185, !3582, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %176), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not337 = xor i64 %176, -1, !dbg !3886
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %not337), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and338 = and i64 %182, %not337, !dbg !3887
    #dbg_value(!DIArgList(i64 %185, i64 %and338), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor339 = xor i64 %185, %and338, !dbg !3888
    #dbg_value(i64 %xor339, !3539, !DIExpression(), !3521)
  %xor316 = xor i64 %xor151, %xor257, !dbg !3889
    #dbg_value(i64 %xor316, !3599, !DIExpression(), !3521)
  %186 = shl i64 %xor316, 3, !dbg !3890
  %187 = lshr i64 %xor316, 61, !dbg !3890
  %188 = or i64 %186, %187, !dbg !3890
    #dbg_value(i64 %188, !3581, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %185), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %188), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %179), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not334 = xor i64 %185, -1, !dbg !3891
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %not334), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and335 = and i64 %176, %not334, !dbg !3892
    #dbg_value(!DIArgList(i64 %188, i64 %and335), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor336 = xor i64 %188, %and335, !dbg !3893
    #dbg_value(i64 %xor336, !3537, !DIExpression(), !3521)
  %not331 = xor i64 %188, -1, !dbg !3894
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %not331), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and332 = and i64 %185, %not331, !dbg !3895
    #dbg_value(!DIArgList(i64 %179, i64 %and332), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor333 = xor i64 %179, %and332, !dbg !3896
    #dbg_value(i64 %xor333, !3535, !DIExpression(), !3521)
  %not328 = xor i64 %179, -1, !dbg !3897
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %not328), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and329 = and i64 %188, %not328, !dbg !3898
    #dbg_value(!DIArgList(i64 %182, i64 %and329), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor330 = xor i64 %182, %and329, !dbg !3899
    #dbg_value(i64 %xor330, !3533, !DIExpression(), !3521)
  %xor287 = xor i64 %xor233, %xor273, !dbg !3900
    #dbg_value(i64 %xor287, !3613, !DIExpression(), !3521)
  %189 = shl i64 %xor287, 14, !dbg !3901
  %190 = lshr i64 %xor287, 50, !dbg !3901
  %191 = or i64 %189, %190, !dbg !3901
    #dbg_value(i64 %191, !3583, !DIExpression(), !3521)
  %xor275 = xor i64 %xor119, %xor261, !dbg !3902
    #dbg_value(i64 %xor275, !3595, !DIExpression(), !3521)
  %192 = shl i64 %xor275, 44, !dbg !3903
  %193 = lshr i64 %xor275, 20, !dbg !3903
  %194 = or i64 %192, %193, !dbg !3903
    #dbg_value(i64 %194, !3580, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor81, i64 %xor257), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor274 = xor i64 %xor81, %xor257, !dbg !3904
    #dbg_value(i64 %xor274, !3589, !DIExpression(), !3521)
    #dbg_value(i64 %xor274, !3579, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor274), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not305 = xor i64 %xor274, -1, !dbg !3905
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %not305), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and306 = and i64 %194, %not305, !dbg !3906
    #dbg_value(!DIArgList(i64 %191, i64 %and306), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor307 = xor i64 %191, %and306, !dbg !3907
    #dbg_value(i64 %xor307, !3531, !DIExpression(), !3521)
  %xor283 = xor i64 %xor195, %xor269, !dbg !3908
    #dbg_value(i64 %xor283, !3607, !DIExpression(), !3521)
  %195 = shl i64 %xor283, 21, !dbg !3909
  %196 = lshr i64 %xor283, 43, !dbg !3909
  %197 = or i64 %195, %196, !dbg !3909
    #dbg_value(i64 %197, !3582, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %191), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not302 = xor i64 %191, -1, !dbg !3910
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %not302), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and303 = and i64 %xor274, %not302, !dbg !3911
    #dbg_value(!DIArgList(i64 %197, i64 %and303), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor304 = xor i64 %197, %and303, !dbg !3912
    #dbg_value(i64 %xor304, !3529, !DIExpression(), !3521)
  %xor279 = xor i64 %xor157, %xor265, !dbg !3913
    #dbg_value(i64 %xor279, !3601, !DIExpression(), !3521)
  %198 = shl i64 %xor279, 43, !dbg !3914
  %199 = lshr i64 %xor279, 21, !dbg !3914
  %200 = or i64 %198, %199, !dbg !3914
    #dbg_value(i64 %200, !3581, !DIExpression(), !3521)
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %197), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %200), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
    #dbg_value(!DIArgList(i64 %xor274, i64 %200, i64 %194), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %not299 = xor i64 %197, -1, !dbg !3915
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %not299), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and300 = and i64 %191, %not299, !dbg !3916
    #dbg_value(!DIArgList(i64 %200, i64 %and300), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor301 = xor i64 %200, %and300, !dbg !3917
    #dbg_value(i64 %xor301, !3527, !DIExpression(), !3521)
  %not296 = xor i64 %200, -1, !dbg !3918
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %not296), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3521)
  %and297 = and i64 %197, %not296, !dbg !3919
    #dbg_value(!DIArgList(i64 %194, i64 %and297), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %xor298 = xor i64 %194, %and297, !dbg !3920
    #dbg_value(i64 %xor298, !3525, !DIExpression(), !3521)
  %add = or disjoint i32 %round.0, 1, !dbg !3921
  %arrayidx294 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %add, !dbg !3922
  %201 = load i64, ptr %arrayidx294, align 8, !dbg !3922
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %194), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %not291 = xor i64 %194, -1, !dbg !3923
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %not291), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %and292 = and i64 %200, %not291, !dbg !3924
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %and292), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3521)
  %202 = xor i64 %and292, %201, !dbg !3925
  %xor295 = xor i64 %202, %xor274, !dbg !3925
    #dbg_value(i64 %xor295, !3523, !DIExpression(), !3521)
  %add448 = add nuw nsw i32 %round.0, 2, !dbg !3926
    #dbg_value(i32 %add448, !3572, !DIExpression(), !3521)
  br label %for.cond, !dbg !3927, !llvm.loop !3928

for.end:                                          ; preds = %for.cond
  %Aso.0.lcssa = phi i64 [ %Aso.0, %for.cond ], !dbg !3521
  %Asi.0.lcssa = phi i64 [ %Asi.0, %for.cond ], !dbg !3521
  %Ase.0.lcssa = phi i64 [ %Ase.0, %for.cond ], !dbg !3521
  %Asa.0.lcssa = phi i64 [ %Asa.0, %for.cond ], !dbg !3521
  %Amu.0.lcssa = phi i64 [ %Amu.0, %for.cond ], !dbg !3521
  %Amo.0.lcssa = phi i64 [ %Amo.0, %for.cond ], !dbg !3521
  %Ami.0.lcssa = phi i64 [ %Ami.0, %for.cond ], !dbg !3521
  %Ame.0.lcssa = phi i64 [ %Ame.0, %for.cond ], !dbg !3521
  %Ama.0.lcssa = phi i64 [ %Ama.0, %for.cond ], !dbg !3521
  %Aku.0.lcssa = phi i64 [ %Aku.0, %for.cond ], !dbg !3521
  %Ako.0.lcssa = phi i64 [ %Ako.0, %for.cond ], !dbg !3521
  %Aki.0.lcssa = phi i64 [ %Aki.0, %for.cond ], !dbg !3521
  %Ake.0.lcssa = phi i64 [ %Ake.0, %for.cond ], !dbg !3521
  %Aka.0.lcssa = phi i64 [ %Aka.0, %for.cond ], !dbg !3521
  %Agu.0.lcssa = phi i64 [ %Agu.0, %for.cond ], !dbg !3521
  %Ago.0.lcssa = phi i64 [ %Ago.0, %for.cond ], !dbg !3521
  %Agi.0.lcssa = phi i64 [ %Agi.0, %for.cond ], !dbg !3521
  %Age.0.lcssa = phi i64 [ %Age.0, %for.cond ], !dbg !3521
  %Aga.0.lcssa = phi i64 [ %Aga.0, %for.cond ], !dbg !3521
  %Abu.0.lcssa = phi i64 [ %Abu.0, %for.cond ], !dbg !3521
  %Abo.0.lcssa = phi i64 [ %Abo.0, %for.cond ], !dbg !3521
  %Abi.0.lcssa = phi i64 [ %Abi.0, %for.cond ], !dbg !3521
  %Abe.0.lcssa = phi i64 [ %Abe.0, %for.cond ], !dbg !3521
  %Aba.0.lcssa = phi i64 [ %Aba.0, %for.cond ], !dbg !3521
  %Asu.0.lcssa = phi i64 [ %Asu.0, %for.cond ], !dbg !3521
  store i64 %Aba.0.lcssa, ptr %state, align 8, !dbg !3930
  %arrayidx450 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3931
  store i64 %Abe.0.lcssa, ptr %arrayidx450, align 8, !dbg !3932
  %arrayidx451 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3933
  store i64 %Abi.0.lcssa, ptr %arrayidx451, align 8, !dbg !3934
  %arrayidx452 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3935
  store i64 %Abo.0.lcssa, ptr %arrayidx452, align 8, !dbg !3936
  %arrayidx453 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3937
  store i64 %Abu.0.lcssa, ptr %arrayidx453, align 8, !dbg !3938
  %arrayidx454 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3939
  store i64 %Aga.0.lcssa, ptr %arrayidx454, align 8, !dbg !3940
  %arrayidx455 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3941
  store i64 %Age.0.lcssa, ptr %arrayidx455, align 8, !dbg !3942
  %arrayidx456 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3943
  store i64 %Agi.0.lcssa, ptr %arrayidx456, align 8, !dbg !3944
  %arrayidx457 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3945
  store i64 %Ago.0.lcssa, ptr %arrayidx457, align 8, !dbg !3946
  %arrayidx458 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3947
  store i64 %Agu.0.lcssa, ptr %arrayidx458, align 8, !dbg !3948
  %arrayidx459 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3949
  store i64 %Aka.0.lcssa, ptr %arrayidx459, align 8, !dbg !3950
  %arrayidx460 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3951
  store i64 %Ake.0.lcssa, ptr %arrayidx460, align 8, !dbg !3952
  %arrayidx461 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3953
  store i64 %Aki.0.lcssa, ptr %arrayidx461, align 8, !dbg !3954
  %arrayidx462 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3955
  store i64 %Ako.0.lcssa, ptr %arrayidx462, align 8, !dbg !3956
  %arrayidx463 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3957
  store i64 %Aku.0.lcssa, ptr %arrayidx463, align 8, !dbg !3958
  %arrayidx464 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3959
  store i64 %Ama.0.lcssa, ptr %arrayidx464, align 8, !dbg !3960
  %arrayidx465 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3961
  store i64 %Ame.0.lcssa, ptr %arrayidx465, align 8, !dbg !3962
  %arrayidx466 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3963
  store i64 %Ami.0.lcssa, ptr %arrayidx466, align 8, !dbg !3964
  %arrayidx467 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3965
  store i64 %Amo.0.lcssa, ptr %arrayidx467, align 8, !dbg !3966
  %arrayidx468 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3967
  store i64 %Amu.0.lcssa, ptr %arrayidx468, align 8, !dbg !3968
  %arrayidx469 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3969
  store i64 %Asa.0.lcssa, ptr %arrayidx469, align 8, !dbg !3970
  %arrayidx470 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3971
  store i64 %Ase.0.lcssa, ptr %arrayidx470, align 8, !dbg !3972
  %arrayidx471 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3973
  store i64 %Asi.0.lcssa, ptr %arrayidx471, align 8, !dbg !3974
  %arrayidx472 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3975
  store i64 %Aso.0.lcssa, ptr %arrayidx472, align 8, !dbg !3976
  %arrayidx473 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3977
  store i64 %Asu.0.lcssa, ptr %arrayidx473, align 8, !dbg !3978
  ret void, !dbg !3979
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !3980 {
entry:
    #dbg_value(ptr %state, !3981, !DIExpression(), !3982)
  %0 = load ptr, ptr %state, align 4, !dbg !3983
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 168, i8 noundef zeroext 31) #4, !dbg !3984
  ret void, !dbg !3985
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_finalize(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !3986 {
entry:
    #dbg_value(ptr %s_inc, !3989, !DIExpression(), !3990)
    #dbg_value(i32 %r, !3991, !DIExpression(), !3990)
    #dbg_value(i8 %p, !3992, !DIExpression(), !3990)
  %conv = zext nneg i8 %p to i64, !dbg !3993
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3994
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3994
  %and = shl i64 %0, 3, !dbg !3995
  %mul = and i64 %and, 56, !dbg !3995
  %shl = shl nuw nsw i64 %conv, %mul, !dbg !3996
  %shr = lshr i64 %0, 3, !dbg !3997
  %idxprom = trunc i64 %shr to i32, !dbg !3998
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3998
  %1 = load i64, ptr %arrayidx2, align 8, !dbg !3999
  %xor = xor i64 %1, %shl, !dbg !3999
  store i64 %xor, ptr %arrayidx2, align 8, !dbg !3999
  %sub = shl nuw nsw i32 %r, 3, !dbg !4000
  %and3 = add nuw nsw i32 %sub, 56, !dbg !4000
  %mul4 = and i32 %and3, 56, !dbg !4000
  %sh_prom = zext nneg i32 %mul4 to i64, !dbg !4001
  %shl5 = shl nuw i64 128, %sh_prom, !dbg !4001
  %sub6 = add nsw i32 %r, -1, !dbg !4002
  %shr7 = lshr i32 %sub6, 3, !dbg !4003
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr7, !dbg !4004
  %2 = load i64, ptr %arrayidx8, align 8, !dbg !4005
  %xor9 = xor i64 %2, %shl5, !dbg !4005
  store i64 %xor9, ptr %arrayidx8, align 8, !dbg !4005
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4006
  store i64 0, ptr %arrayidx10, align 8, !dbg !4007
  ret void, !dbg !4008
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !4009 {
entry:
    #dbg_value(ptr %output, !4012, !DIExpression(), !4013)
    #dbg_value(i32 %outlen, !4014, !DIExpression(), !4013)
    #dbg_value(ptr %state, !4015, !DIExpression(), !4013)
  %0 = load ptr, ptr %state, align 4, !dbg !4016
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 168) #4, !dbg !4017
  ret void, !dbg !4018
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_squeeze(ptr noundef %h, i32 noundef %outlen, ptr noundef %s_inc, i32 noundef range(i32 136, 169) %r) unnamed_addr #0 !dbg !4019 {
entry:
    #dbg_value(ptr %h, !4022, !DIExpression(), !4023)
    #dbg_value(i32 %outlen, !4024, !DIExpression(), !4023)
    #dbg_value(ptr %s_inc, !4025, !DIExpression(), !4023)
    #dbg_value(i32 %r, !4026, !DIExpression(), !4023)
    #dbg_value(i32 0, !4027, !DIExpression(), !4023)
  br label %for.cond, !dbg !4028

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4030
    #dbg_value(i32 %i.0, !4027, !DIExpression(), !4023)
  %exitcond = icmp ne i32 %i.0, %outlen, !dbg !4031
  br i1 %exitcond, label %land.rhs, label %for.end, !dbg !4033

land.rhs:                                         ; preds = %for.cond
  %conv = zext i32 %i.0 to i64, !dbg !4034
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4035
  %0 = load i64, ptr %arrayidx, align 8, !dbg !4035
  %cmp1 = icmp ugt i64 %0, %conv, !dbg !4036
  br i1 %cmp1, label %for.body, label %for.end, !dbg !4037

for.body:                                         ; preds = %land.rhs
  %conv3 = zext nneg i32 %r to i64, !dbg !4038
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4040
  %1 = load i64, ptr %arrayidx4, align 8, !dbg !4040
  %sub = sub i64 %conv3, %1, !dbg !4041
  %conv5 = zext i32 %i.0 to i64, !dbg !4042
  %add = add i64 %sub, %conv5, !dbg !4043
  %shr = lshr i64 %add, 3, !dbg !4044
  %idxprom = trunc i64 %shr to i32, !dbg !4045
  %arrayidx6 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !4045
  %2 = load i64, ptr %arrayidx6, align 8, !dbg !4045
  %conv7 = zext nneg i32 %r to i64, !dbg !4046
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4047
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !4047
  %sub9 = sub i64 %conv7, %3, !dbg !4048
  %conv10 = zext i32 %i.0 to i64, !dbg !4049
  %add11 = add i64 %sub9, %conv10, !dbg !4050
  %and = shl i64 %add11, 3, !dbg !4051
  %mul = and i64 %and, 56, !dbg !4051
  %shr12 = lshr i64 %2, %mul, !dbg !4052
  %conv13 = trunc i64 %shr12 to i8, !dbg !4053
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %h, i32 %i.0, !dbg !4054
  store i8 %conv13, ptr %arrayidx14, align 1, !dbg !4055
  %inc = add i32 %i.0, 1, !dbg !4056
    #dbg_value(i32 %inc, !4027, !DIExpression(), !4023)
  br label %for.cond, !dbg !4057, !llvm.loop !4058

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %outlen, %for.cond ], [ %i.0, %land.rhs ], !dbg !4030
  %add.ptr = getelementptr inbounds nuw i8, ptr %h, i32 %i.0.lcssa, !dbg !4060
    #dbg_value(ptr %add.ptr, !4022, !DIExpression(), !4023)
  %sub15 = sub i32 %outlen, %i.0.lcssa, !dbg !4061
    #dbg_value(i32 %sub15, !4024, !DIExpression(), !4023)
  %conv16 = zext i32 %i.0.lcssa to i64, !dbg !4062
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4063
  %4 = load i64, ptr %arrayidx17, align 8, !dbg !4064
  %sub18 = sub i64 %4, %conv16, !dbg !4064
  store i64 %sub18, ptr %arrayidx17, align 8, !dbg !4064
  br label %while.cond, !dbg !4065

while.cond:                                       ; preds = %for.end38, %for.end
  %outlen.addr.0 = phi i32 [ %sub15, %for.end ], [ %sub40, %for.end38 ], !dbg !4023
  %h.addr.0 = phi ptr [ %add.ptr, %for.end ], [ %add.ptr39, %for.end38 ], !dbg !4023
    #dbg_value(ptr %h.addr.0, !4022, !DIExpression(), !4023)
    #dbg_value(i32 %outlen.addr.0, !4024, !DIExpression(), !4023)
  %cmp19.not = icmp eq i32 %outlen.addr.0, 0, !dbg !4066
  br i1 %cmp19.not, label %while.end, label %while.body, !dbg !4065

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #4, !dbg !4067
    #dbg_value(i32 0, !4027, !DIExpression(), !4023)
  %5 = icmp ult i32 %outlen.addr.0, %r, !dbg !4069
  %6 = select i1 %5, i32 %outlen.addr.0, i32 %r, !dbg !4069
  br label %for.cond21, !dbg !4069

for.cond21:                                       ; preds = %for.body28, %while.body
  %i.1 = phi i32 [ 0, %while.body ], [ %inc37, %for.body28 ], !dbg !4071
    #dbg_value(i32 %i.1, !4027, !DIExpression(), !4023)
  %exitcond1 = icmp ne i32 %i.1, %6, !dbg !4072
  br i1 %exitcond1, label %for.body28, label %for.end38, !dbg !4074

for.body28:                                       ; preds = %for.cond21
  %shr29 = lshr i32 %i.1, 3, !dbg !4075
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr29, !dbg !4077
  %7 = load i64, ptr %arrayidx30, align 8, !dbg !4077
  %and31 = shl nuw nsw i32 %i.1, 3, !dbg !4078
  %mul32 = and i32 %and31, 56, !dbg !4078
  %sh_prom = zext nneg i32 %mul32 to i64, !dbg !4079
  %shr33 = lshr i64 %7, %sh_prom, !dbg !4079
  %conv34 = trunc i64 %shr33 to i8, !dbg !4080
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1, !dbg !4081
  store i8 %conv34, ptr %arrayidx35, align 1, !dbg !4082
  %inc37 = add nuw nsw i32 %i.1, 1, !dbg !4083
    #dbg_value(i32 %inc37, !4027, !DIExpression(), !4023)
  br label %for.cond21, !dbg !4084, !llvm.loop !4085

for.end38:                                        ; preds = %for.cond21
  %i.1.lcssa = phi i32 [ %i.1, %for.cond21 ], !dbg !4071
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1.lcssa, !dbg !4087
    #dbg_value(ptr %add.ptr39, !4022, !DIExpression(), !4023)
  %sub40 = sub i32 %outlen.addr.0, %i.1.lcssa, !dbg !4088
    #dbg_value(i32 %sub40, !4024, !DIExpression(), !4023)
  %sub41 = sub nsw i32 %r, %i.1.lcssa, !dbg !4089
  %conv42 = zext i32 %sub41 to i64, !dbg !4090
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4091
  store i64 %conv42, ptr %arrayidx43, align 8, !dbg !4092
  br label %while.cond, !dbg !4065, !llvm.loop !4093

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4095
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4096 {
entry:
    #dbg_value(ptr %dest, !4101, !DIExpression(), !4102)
    #dbg_value(ptr %src, !4103, !DIExpression(), !4102)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4104
  store ptr %call, ptr %dest, align 4, !dbg !4105
  %cmp = icmp eq ptr %call, null, !dbg !4106
  br i1 %cmp, label %if.then, label %if.end, !dbg !4106

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4108
  br label %if.end, !dbg !4110

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4111
  %1 = load ptr, ptr %src, align 4, !dbg !4112
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4113
  ret void, !dbg !4114
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4115 {
entry:
    #dbg_value(ptr %state, !4116, !DIExpression(), !4117)
  %0 = load ptr, ptr %state, align 4, !dbg !4118
  call void @free(ptr noundef %0) #6, !dbg !4119
  ret void, !dbg !4120
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4121 {
entry:
    #dbg_value(ptr %state, !4129, !DIExpression(), !4130)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4131
  store ptr %call, ptr %state, align 4, !dbg !4132
  %cmp = icmp eq ptr %call, null, !dbg !4133
  br i1 %cmp, label %if.then, label %if.end, !dbg !4133

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4135
  br label %if.end, !dbg !4137

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4138
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4139
  ret void, !dbg !4140
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4141 {
entry:
    #dbg_value(ptr %state, !4144, !DIExpression(), !4145)
    #dbg_value(ptr %input, !4146, !DIExpression(), !4145)
    #dbg_value(i32 %inlen, !4147, !DIExpression(), !4145)
  %0 = load ptr, ptr %state, align 4, !dbg !4148
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4149
  ret void, !dbg !4150
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !4151 {
entry:
    #dbg_value(ptr %state, !4152, !DIExpression(), !4153)
  %0 = load ptr, ptr %state, align 4, !dbg !4154
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 31) #4, !dbg !4155
  ret void, !dbg !4156
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !4157 {
entry:
    #dbg_value(ptr %output, !4160, !DIExpression(), !4161)
    #dbg_value(i32 %outlen, !4162, !DIExpression(), !4161)
    #dbg_value(ptr %state, !4163, !DIExpression(), !4161)
  %0 = load ptr, ptr %state, align 4, !dbg !4164
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 136) #4, !dbg !4165
  ret void, !dbg !4166
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4167 {
entry:
    #dbg_value(ptr %dest, !4172, !DIExpression(), !4173)
    #dbg_value(ptr %src, !4174, !DIExpression(), !4173)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4175
  store ptr %call, ptr %dest, align 4, !dbg !4176
  %cmp = icmp eq ptr %call, null, !dbg !4177
  br i1 %cmp, label %if.then, label %if.end, !dbg !4177

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4179
  br label %if.end, !dbg !4181

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4182
  %1 = load ptr, ptr %src, align 4, !dbg !4183
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4184
  ret void, !dbg !4185
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4186 {
entry:
    #dbg_value(ptr %state, !4187, !DIExpression(), !4188)
  %0 = load ptr, ptr %state, align 4, !dbg !4189
  call void @free(ptr noundef %0) #6, !dbg !4190
  ret void, !dbg !4191
}

; Function Attrs: nounwind
define dso_local void @shake128_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4192 {
entry:
    #dbg_value(ptr %state, !4200, !DIExpression(), !4201)
    #dbg_value(ptr %input, !4202, !DIExpression(), !4201)
    #dbg_value(i32 %inlen, !4203, !DIExpression(), !4201)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4204
  store ptr %call, ptr %state, align 4, !dbg !4205
  %cmp = icmp eq ptr %call, null, !dbg !4206
  br i1 %cmp, label %if.then, label %if.end, !dbg !4206

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4208
  br label %if.end, !dbg !4210

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4211
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !4212
  ret void, !dbg !4213
}

; Function Attrs: nounwind
define internal fastcc void @keccak_absorb(ptr noundef %s, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !4214 {
entry:
  %t = alloca [200 x i8], align 1
    #dbg_value(ptr %s, !4217, !DIExpression(), !4218)
    #dbg_value(i32 %r, !4219, !DIExpression(), !4218)
    #dbg_value(ptr %m, !4220, !DIExpression(), !4218)
    #dbg_value(i32 %mlen, !4221, !DIExpression(), !4218)
    #dbg_value(i8 %p, !4222, !DIExpression(), !4218)
    #dbg_declare(ptr %t, !4223, !DIExpression(), !4227)
    #dbg_value(i32 0, !4228, !DIExpression(), !4218)
  br label %for.cond, !dbg !4229

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4231
    #dbg_value(i32 %i.0, !4228, !DIExpression(), !4218)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !4232
  br i1 %exitcond, label %for.body, label %while.cond.preheader, !dbg !4234

while.cond.preheader:                             ; preds = %for.cond
  %0 = lshr i32 %r, 3, !dbg !4235
  br label %while.cond, !dbg !4235

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4236
  store i64 0, ptr %arrayidx, align 8, !dbg !4238
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4239
    #dbg_value(i32 %inc, !4228, !DIExpression(), !4218)
  br label %for.cond, !dbg !4240, !llvm.loop !4241

while.cond:                                       ; preds = %while.cond.preheader, %for.end8
  %m.addr.0 = phi ptr [ %add.ptr9, %for.end8 ], [ %m, %while.cond.preheader ]
  %mlen.addr.0 = phi i32 [ %sub, %for.end8 ], [ %mlen, %while.cond.preheader ]
    #dbg_value(i32 %mlen.addr.0, !4221, !DIExpression(), !4218)
    #dbg_value(ptr %m.addr.0, !4220, !DIExpression(), !4218)
  %cmp1.not = icmp ult i32 %mlen.addr.0, %r, !dbg !4243
  br i1 %cmp1.not, label %for.cond10.preheader, label %for.cond2.preheader, !dbg !4235

for.cond2.preheader:                              ; preds = %while.cond
  br label %for.cond2, !dbg !4244

for.cond10.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa5 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  br label %for.cond10, !dbg !4247

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %i.1 = phi i32 [ %inc7, %for.body4 ], [ 0, %for.cond2.preheader ], !dbg !4249
    #dbg_value(i32 %i.1, !4228, !DIExpression(), !4218)
  %exitcond3 = icmp ne i32 %i.1, %0, !dbg !4250
  br i1 %exitcond3, label %for.body4, label %for.end8, !dbg !4244

for.body4:                                        ; preds = %for.cond2
  %mul = shl nuw nsw i32 %i.1, 3, !dbg !4252
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %mul, !dbg !4254
  %call = call fastcc i64 @load64(ptr noundef %add.ptr) #4, !dbg !4255
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %s, i32 %i.1, !dbg !4256
  %1 = load i64, ptr %arrayidx5, align 8, !dbg !4257
  %xor = xor i64 %1, %call, !dbg !4257
  store i64 %xor, ptr %arrayidx5, align 8, !dbg !4257
  %inc7 = add nuw nsw i32 %i.1, 1, !dbg !4258
    #dbg_value(i32 %inc7, !4228, !DIExpression(), !4218)
  br label %for.cond2, !dbg !4259, !llvm.loop !4260

for.end8:                                         ; preds = %for.cond2
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !4262
  %sub = sub i32 %mlen.addr.0, %r, !dbg !4263
    #dbg_value(i32 %sub, !4221, !DIExpression(), !4218)
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %r, !dbg !4264
    #dbg_value(ptr %add.ptr9, !4220, !DIExpression(), !4218)
  br label %while.cond, !dbg !4235, !llvm.loop !4265

for.cond10:                                       ; preds = %for.cond10.preheader, %for.body12
  %i.2 = phi i32 [ %inc15, %for.body12 ], [ 0, %for.cond10.preheader ], !dbg !4267
    #dbg_value(i32 %i.2, !4228, !DIExpression(), !4218)
  %exitcond4 = icmp ne i32 %i.2, %r, !dbg !4268
  br i1 %exitcond4, label %for.body12, label %for.cond17.preheader, !dbg !4247

for.cond17.preheader:                             ; preds = %for.cond10
  br label %for.cond17, !dbg !4270

for.body12:                                       ; preds = %for.cond10
  %arrayidx13 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.2, !dbg !4272
  store i8 0, ptr %arrayidx13, align 1, !dbg !4274
  %inc15 = add nuw nsw i32 %i.2, 1, !dbg !4275
    #dbg_value(i32 %inc15, !4228, !DIExpression(), !4218)
  br label %for.cond10, !dbg !4276, !llvm.loop !4277

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body19
  %i.3 = phi i32 [ %inc23, %for.body19 ], [ 0, %for.cond17.preheader ], !dbg !4279
    #dbg_value(i32 %i.3, !4228, !DIExpression(), !4218)
  %exitcond6 = icmp ne i32 %i.3, %mlen.addr.0.lcssa5, !dbg !4280
  br i1 %exitcond6, label %for.body19, label %for.end24, !dbg !4270

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.3, !dbg !4282
  %2 = load i8, ptr %arrayidx20, align 1, !dbg !4282
  %arrayidx21 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3, !dbg !4284
  store i8 %2, ptr %arrayidx21, align 1, !dbg !4285
  %inc23 = add i32 %i.3, 1, !dbg !4286
    #dbg_value(i32 %inc23, !4228, !DIExpression(), !4218)
  br label %for.cond17, !dbg !4287, !llvm.loop !4288

for.end24:                                        ; preds = %for.cond17
  %i.3.lcssa = phi i32 [ %i.3, %for.cond17 ], !dbg !4279
  %arrayidx25 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3.lcssa, !dbg !4290
  store i8 %p, ptr %arrayidx25, align 1, !dbg !4291
  %sub26 = add nsw i32 %r, -1, !dbg !4292
  %arrayidx27 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %sub26, !dbg !4293
  %3 = load i8, ptr %arrayidx27, align 1, !dbg !4294
  %4 = or i8 %3, -128, !dbg !4294
  store i8 %4, ptr %arrayidx27, align 1, !dbg !4294
    #dbg_value(i32 0, !4228, !DIExpression(), !4218)
  br label %for.cond29, !dbg !4295

for.cond29:                                       ; preds = %for.body33, %for.end24
  %i.4 = phi i32 [ 0, %for.end24 ], [ %inc40, %for.body33 ], !dbg !4297
    #dbg_value(i32 %i.4, !4228, !DIExpression(), !4218)
  %exitcond7 = icmp ne i32 %i.4, %0, !dbg !4298
  br i1 %exitcond7, label %for.body33, label %for.end41, !dbg !4300

for.body33:                                       ; preds = %for.cond29
  %mul34 = shl nuw nsw i32 %i.4, 3, !dbg !4301
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %t, i32 %mul34, !dbg !4303
  %call36 = call fastcc i64 @load64(ptr noundef nonnull %add.ptr35) #4, !dbg !4304
  %arrayidx37 = getelementptr inbounds nuw i64, ptr %s, i32 %i.4, !dbg !4305
  %5 = load i64, ptr %arrayidx37, align 8, !dbg !4306
  %xor38 = xor i64 %5, %call36, !dbg !4306
  store i64 %xor38, ptr %arrayidx37, align 8, !dbg !4306
  %inc40 = add nuw nsw i32 %i.4, 1, !dbg !4307
    #dbg_value(i32 %inc40, !4228, !DIExpression(), !4218)
  br label %for.cond29, !dbg !4308, !llvm.loop !4309

for.end41:                                        ; preds = %for.cond29
  ret void, !dbg !4311
}

; Function Attrs: nounwind
define internal fastcc i64 @load64(ptr noundef %x) unnamed_addr #0 !dbg !4312 {
entry:
    #dbg_value(ptr %x, !4315, !DIExpression(), !4316)
    #dbg_value(i64 0, !4317, !DIExpression(), !4316)
    #dbg_value(i32 0, !4318, !DIExpression(), !4320)
  br label %for.cond, !dbg !4321

for.cond:                                         ; preds = %for.inc, %entry
  %r.0 = phi i64 [ 0, %entry ], [ %or, %for.inc ], !dbg !4316
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !4322
    #dbg_value(i32 %i.0, !4318, !DIExpression(), !4320)
    #dbg_value(i64 %r.0, !4317, !DIExpression(), !4316)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4323
  br i1 %exitcond, label %for.inc, label %for.end, !dbg !4325

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 poison, i8 poison, i32 poison), !4317, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4316)
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4326
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4326
    #dbg_value(!DIArgList(i64 %r.0, i8 %0, i32 %i.0), !4317, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4316)
  %conv = zext i8 %0 to i64, !dbg !4328
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %i.0), !4317, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4316)
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4329
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %mul), !4317, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4316)
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4330
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i64 %sh_prom), !4317, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4316)
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !4330
    #dbg_value(!DIArgList(i64 %r.0, i64 %shl), !4317, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !4316)
  %or = or i64 %r.0, %shl, !dbg !4331
    #dbg_value(i64 %or, !4317, !DIExpression(), !4316)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4332
    #dbg_value(i32 %inc, !4318, !DIExpression(), !4320)
  br label %for.cond, !dbg !4333, !llvm.loop !4334

for.end:                                          ; preds = %for.cond
  %r.0.lcssa = phi i64 [ %r.0, %for.cond ], !dbg !4316
  ret i64 %r.0.lcssa, !dbg !4336
}

; Function Attrs: nounwind
define dso_local void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4337 {
entry:
    #dbg_value(ptr %output, !4340, !DIExpression(), !4341)
    #dbg_value(i32 %nblocks, !4342, !DIExpression(), !4341)
    #dbg_value(ptr %state, !4343, !DIExpression(), !4341)
  %0 = load ptr, ptr %state, align 4, !dbg !4344
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 168) #4, !dbg !4345
  ret void, !dbg !4346
}

; Function Attrs: nounwind
define internal fastcc void @keccak_squeezeblocks(ptr noundef %h, i32 noundef %nblocks, ptr noundef %s, i32 noundef range(i32 72, 169) %r) unnamed_addr #0 !dbg !4347 {
entry:
    #dbg_value(ptr %h, !4348, !DIExpression(), !4349)
    #dbg_value(i32 %nblocks, !4350, !DIExpression(), !4349)
    #dbg_value(ptr %s, !4351, !DIExpression(), !4349)
    #dbg_value(i32 %r, !4352, !DIExpression(), !4349)
  %0 = lshr i32 %r, 3, !dbg !4353
  br label %while.cond, !dbg !4353

while.cond:                                       ; preds = %for.end, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %dec, %for.end ]
  %h.addr.0 = phi ptr [ %h, %entry ], [ %add.ptr2, %for.end ]
    #dbg_value(ptr %h.addr.0, !4348, !DIExpression(), !4349)
    #dbg_value(i32 %nblocks.addr.0, !4350, !DIExpression(), !4349)
  %cmp.not = icmp eq i32 %nblocks.addr.0, 0, !dbg !4354
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !4353

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !4355
    #dbg_value(i32 0, !4357, !DIExpression(), !4359)
  br label %for.cond, !dbg !4360

for.cond:                                         ; preds = %for.body, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc, %for.body ], !dbg !4361
    #dbg_value(i32 %i.0, !4357, !DIExpression(), !4359)
  %exitcond = icmp ne i32 %i.0, %0, !dbg !4362
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4364

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4365
  %add.ptr = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %mul, !dbg !4367
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4368
  %1 = load i64, ptr %arrayidx, align 8, !dbg !4368
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %1) #4, !dbg !4369
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4370
    #dbg_value(i32 %inc, !4357, !DIExpression(), !4359)
  br label %for.cond, !dbg !4371, !llvm.loop !4372

for.end:                                          ; preds = %for.cond
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %r, !dbg !4374
    #dbg_value(ptr %add.ptr2, !4348, !DIExpression(), !4349)
  %dec = add i32 %nblocks.addr.0, -1, !dbg !4375
    #dbg_value(i32 %dec, !4350, !DIExpression(), !4349)
  br label %while.cond, !dbg !4353, !llvm.loop !4376

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4378
}

; Function Attrs: nounwind
define internal fastcc void @store64(ptr noundef %x, i64 noundef %u) unnamed_addr #0 !dbg !4379 {
entry:
    #dbg_value(ptr %x, !4382, !DIExpression(), !4383)
    #dbg_value(i64 %u, !4384, !DIExpression(), !4383)
    #dbg_value(i32 0, !4385, !DIExpression(), !4387)
  br label %for.cond, !dbg !4388

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4389
    #dbg_value(i32 %i.0, !4385, !DIExpression(), !4387)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4390
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4392

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4393
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4395
  %shr = lshr i64 %u, %sh_prom, !dbg !4395
  %conv = trunc i64 %shr to i8, !dbg !4396
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4397
  store i8 %conv, ptr %arrayidx, align 1, !dbg !4398
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4399
    #dbg_value(i32 %inc, !4385, !DIExpression(), !4387)
  br label %for.cond, !dbg !4400, !llvm.loop !4401

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4403
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4404 {
entry:
    #dbg_value(ptr %dest, !4409, !DIExpression(), !4410)
    #dbg_value(ptr %src, !4411, !DIExpression(), !4410)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4412
  store ptr %call, ptr %dest, align 4, !dbg !4413
  %cmp = icmp eq ptr %call, null, !dbg !4414
  br i1 %cmp, label %if.then, label %if.end, !dbg !4414

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4416
  br label %if.end, !dbg !4418

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4419
  %1 = load ptr, ptr %src, align 4, !dbg !4420
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #6, !dbg !4421
  ret void, !dbg !4422
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4423 {
entry:
    #dbg_value(ptr %state, !4426, !DIExpression(), !4427)
  %0 = load ptr, ptr %state, align 4, !dbg !4428
  call void @free(ptr noundef %0) #6, !dbg !4429
  ret void, !dbg !4430
}

; Function Attrs: nounwind
define dso_local void @shake256_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4431 {
entry:
    #dbg_value(ptr %state, !4439, !DIExpression(), !4440)
    #dbg_value(ptr %input, !4441, !DIExpression(), !4440)
    #dbg_value(i32 %inlen, !4442, !DIExpression(), !4440)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4443
  store ptr %call, ptr %state, align 4, !dbg !4444
  %cmp = icmp eq ptr %call, null, !dbg !4445
  br i1 %cmp, label %if.then, label %if.end, !dbg !4445

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4447
  br label %if.end, !dbg !4449

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4450
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !4451
  ret void, !dbg !4452
}

; Function Attrs: nounwind
define dso_local void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4453 {
entry:
    #dbg_value(ptr %output, !4456, !DIExpression(), !4457)
    #dbg_value(i32 %nblocks, !4458, !DIExpression(), !4457)
    #dbg_value(ptr %state, !4459, !DIExpression(), !4457)
  %0 = load ptr, ptr %state, align 4, !dbg !4460
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 136) #4, !dbg !4461
  ret void, !dbg !4462
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4463 {
entry:
    #dbg_value(ptr %dest, !4468, !DIExpression(), !4469)
    #dbg_value(ptr %src, !4470, !DIExpression(), !4469)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4471
  store ptr %call, ptr %dest, align 4, !dbg !4472
  %cmp = icmp eq ptr %call, null, !dbg !4473
  br i1 %cmp, label %if.then, label %if.end, !dbg !4473

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4475
  br label %if.end, !dbg !4477

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4478
  %1 = load ptr, ptr %src, align 4, !dbg !4479
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #6, !dbg !4480
  ret void, !dbg !4481
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4482 {
entry:
    #dbg_value(ptr %state, !4485, !DIExpression(), !4486)
  %0 = load ptr, ptr %state, align 4, !dbg !4487
  call void @free(ptr noundef %0) #6, !dbg !4488
  ret void, !dbg !4489
}

; Function Attrs: nounwind
define dso_local void @shake128(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4490 {
entry:
  %t = alloca [168 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4493, !DIExpression(), !4494)
    #dbg_value(i32 %outlen, !4495, !DIExpression(), !4494)
    #dbg_value(ptr %input, !4496, !DIExpression(), !4494)
    #dbg_value(i32 %inlen, !4497, !DIExpression(), !4494)
  %div = udiv i32 %outlen, 168, !dbg !4498
    #dbg_value(i32 %div, !4499, !DIExpression(), !4494)
    #dbg_declare(ptr %t, !4500, !DIExpression(), !4504)
    #dbg_declare(ptr %s, !4505, !DIExpression(), !4506)
  call void @shake128_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4507
  call void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #4, !dbg !4508
  %mul = mul nuw i32 %div, 168, !dbg !4509
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4510
    #dbg_value(ptr %add.ptr, !4493, !DIExpression(), !4494)
  %mul1.neg = mul i32 %div, -168, !dbg !4511
  %sub = add i32 %mul1.neg, %outlen, !dbg !4512
    #dbg_value(i32 %sub, !4495, !DIExpression(), !4494)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4513
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4513

if.then:                                          ; preds = %entry
  call void @shake128_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #4, !dbg !4515
    #dbg_value(i32 0, !4517, !DIExpression(), !4519)
  br label %for.cond, !dbg !4520

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4521
    #dbg_value(i32 %i.0, !4517, !DIExpression(), !4519)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4522
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4524

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [168 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4525
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4525
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4527
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4528
  %inc = add i32 %i.0, 1, !dbg !4529
    #dbg_value(i32 %inc, !4517, !DIExpression(), !4519)
  br label %for.cond, !dbg !4530, !llvm.loop !4531

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4533

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake128_ctx_release(ptr noundef nonnull %s) #4, !dbg !4533
  ret void, !dbg !4534
}

; Function Attrs: nounwind
define dso_local void @shake256(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4535 {
entry:
  %t = alloca [136 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4536, !DIExpression(), !4537)
    #dbg_value(i32 %outlen, !4538, !DIExpression(), !4537)
    #dbg_value(ptr %input, !4539, !DIExpression(), !4537)
    #dbg_value(i32 %inlen, !4540, !DIExpression(), !4537)
  %div = udiv i32 %outlen, 136, !dbg !4541
    #dbg_value(i32 %div, !4542, !DIExpression(), !4537)
    #dbg_declare(ptr %t, !4543, !DIExpression(), !4547)
    #dbg_declare(ptr %s, !4548, !DIExpression(), !4549)
  call void @shake256_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4550
  call void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #4, !dbg !4551
  %mul = mul nuw i32 %div, 136, !dbg !4552
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4553
    #dbg_value(ptr %add.ptr, !4536, !DIExpression(), !4537)
  %mul1.neg = mul i32 %div, -136, !dbg !4554
  %sub = add i32 %mul1.neg, %outlen, !dbg !4555
    #dbg_value(i32 %sub, !4538, !DIExpression(), !4537)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4556
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4556

if.then:                                          ; preds = %entry
  call void @shake256_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #4, !dbg !4558
    #dbg_value(i32 0, !4560, !DIExpression(), !4562)
  br label %for.cond, !dbg !4563

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4564
    #dbg_value(i32 %i.0, !4560, !DIExpression(), !4562)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4565
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4567

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4568
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4568
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4570
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4571
  %inc = add i32 %i.0, 1, !dbg !4572
    #dbg_value(i32 %inc, !4560, !DIExpression(), !4562)
  br label %for.cond, !dbg !4573, !llvm.loop !4574

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4576

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake256_ctx_release(ptr noundef nonnull %s) #4, !dbg !4576
  ret void, !dbg !4577
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4578 {
entry:
    #dbg_value(ptr %state, !4586, !DIExpression(), !4587)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4588
  store ptr %call, ptr %state, align 4, !dbg !4589
  %cmp = icmp eq ptr %call, null, !dbg !4590
  br i1 %cmp, label %if.then, label %if.end, !dbg !4590

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4592
  br label %if.end, !dbg !4594

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4595
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4596
  ret void, !dbg !4597
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4598 {
entry:
    #dbg_value(ptr %dest, !4603, !DIExpression(), !4604)
    #dbg_value(ptr %src, !4605, !DIExpression(), !4604)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4606
  store ptr %call, ptr %dest, align 4, !dbg !4607
  %cmp = icmp eq ptr %call, null, !dbg !4608
  br i1 %cmp, label %if.then, label %if.end, !dbg !4608

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4610
  br label %if.end, !dbg !4612

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4613
  %1 = load ptr, ptr %src, align 4, !dbg !4614
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4615
  ret void, !dbg !4616
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4617 {
entry:
    #dbg_value(ptr %state, !4618, !DIExpression(), !4619)
  %0 = load ptr, ptr %state, align 4, !dbg !4620
  call void @free(ptr noundef %0) #6, !dbg !4621
  ret void, !dbg !4622
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4623 {
entry:
    #dbg_value(ptr %state, !4626, !DIExpression(), !4627)
    #dbg_value(ptr %input, !4628, !DIExpression(), !4627)
    #dbg_value(i32 %inlen, !4629, !DIExpression(), !4627)
  %0 = load ptr, ptr %state, align 4, !dbg !4630
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4631
  ret void, !dbg !4632
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4633 {
entry:
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4636, !DIExpression(), !4637)
    #dbg_value(ptr %state, !4638, !DIExpression(), !4637)
    #dbg_declare(ptr %t, !4639, !DIExpression(), !4640)
  %0 = load ptr, ptr %state, align 4, !dbg !4641
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 6) #4, !dbg !4642
  %1 = load ptr, ptr %state, align 4, !dbg !4643
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 136) #4, !dbg !4644
  call void @sha3_256_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4645
    #dbg_value(i32 0, !4646, !DIExpression(), !4648)
  br label %for.cond, !dbg !4649

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4650
    #dbg_value(i32 %i.0, !4646, !DIExpression(), !4648)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4651
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4653

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4654
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4654
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4656
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4657
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4658
    #dbg_value(i32 %inc, !4646, !DIExpression(), !4648)
  br label %for.cond, !dbg !4659, !llvm.loop !4660

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4662
}

; Function Attrs: nounwind
define dso_local void @sha3_256(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4663 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4666, !DIExpression(), !4667)
    #dbg_value(ptr %input, !4668, !DIExpression(), !4667)
    #dbg_value(i32 %inlen, !4669, !DIExpression(), !4667)
    #dbg_declare(ptr %s, !4670, !DIExpression(), !4674)
    #dbg_declare(ptr %t, !4675, !DIExpression(), !4676)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4677
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 136) #4, !dbg !4678
    #dbg_value(i32 0, !4679, !DIExpression(), !4681)
  br label %for.cond, !dbg !4682

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4683
    #dbg_value(i32 %i.0, !4679, !DIExpression(), !4681)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4684
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4686

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4687
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4687
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4689
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4690
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4691
    #dbg_value(i32 %inc, !4679, !DIExpression(), !4681)
  br label %for.cond, !dbg !4692, !llvm.loop !4693

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4695
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4696 {
entry:
    #dbg_value(ptr %state, !4704, !DIExpression(), !4705)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4706
  store ptr %call, ptr %state, align 4, !dbg !4707
  %cmp = icmp eq ptr %call, null, !dbg !4708
  br i1 %cmp, label %if.then, label %if.end, !dbg !4708

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4710
  br label %if.end, !dbg !4712

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4713
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4714
  ret void, !dbg !4715
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4716 {
entry:
    #dbg_value(ptr %dest, !4721, !DIExpression(), !4722)
    #dbg_value(ptr %src, !4723, !DIExpression(), !4722)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4724
  store ptr %call, ptr %dest, align 4, !dbg !4725
  %cmp = icmp eq ptr %call, null, !dbg !4726
  br i1 %cmp, label %if.then, label %if.end, !dbg !4726

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4728
  br label %if.end, !dbg !4730

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4731
  %1 = load ptr, ptr %src, align 4, !dbg !4732
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4733
  ret void, !dbg !4734
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4735 {
entry:
    #dbg_value(ptr %state, !4738, !DIExpression(), !4739)
    #dbg_value(ptr %input, !4740, !DIExpression(), !4739)
    #dbg_value(i32 %inlen, !4741, !DIExpression(), !4739)
  %0 = load ptr, ptr %state, align 4, !dbg !4742
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 104, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4743
  ret void, !dbg !4744
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4745 {
entry:
    #dbg_value(ptr %state, !4746, !DIExpression(), !4747)
  %0 = load ptr, ptr %state, align 4, !dbg !4748
  call void @free(ptr noundef %0) #6, !dbg !4749
  ret void, !dbg !4750
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4751 {
entry:
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4754, !DIExpression(), !4755)
    #dbg_value(ptr %state, !4756, !DIExpression(), !4755)
    #dbg_declare(ptr %t, !4757, !DIExpression(), !4759)
  %0 = load ptr, ptr %state, align 4, !dbg !4760
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 104, i8 noundef zeroext 6) #4, !dbg !4761
  %1 = load ptr, ptr %state, align 4, !dbg !4762
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 104) #4, !dbg !4763
  call void @sha3_384_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4764
    #dbg_value(i32 0, !4765, !DIExpression(), !4767)
  br label %for.cond, !dbg !4768

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4769
    #dbg_value(i32 %i.0, !4765, !DIExpression(), !4767)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4770
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4772

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4773
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4773
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4775
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4776
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4777
    #dbg_value(i32 %inc, !4765, !DIExpression(), !4767)
  br label %for.cond, !dbg !4778, !llvm.loop !4779

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4781
}

; Function Attrs: nounwind
define dso_local void @sha3_384(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4782 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4783, !DIExpression(), !4784)
    #dbg_value(ptr %input, !4785, !DIExpression(), !4784)
    #dbg_value(i32 %inlen, !4786, !DIExpression(), !4784)
    #dbg_declare(ptr %s, !4787, !DIExpression(), !4788)
    #dbg_declare(ptr %t, !4789, !DIExpression(), !4790)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 104, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4791
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 104) #4, !dbg !4792
    #dbg_value(i32 0, !4793, !DIExpression(), !4795)
  br label %for.cond, !dbg !4796

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4797
    #dbg_value(i32 %i.0, !4793, !DIExpression(), !4795)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4798
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4800

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4801
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4801
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4803
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4804
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4805
    #dbg_value(i32 %inc, !4793, !DIExpression(), !4795)
  br label %for.cond, !dbg !4806, !llvm.loop !4807

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4809
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4810 {
entry:
    #dbg_value(ptr %state, !4818, !DIExpression(), !4819)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4820
  store ptr %call, ptr %state, align 4, !dbg !4821
  %cmp = icmp eq ptr %call, null, !dbg !4822
  br i1 %cmp, label %if.then, label %if.end, !dbg !4822

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4824
  br label %if.end, !dbg !4826

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4827
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4828
  ret void, !dbg !4829
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4830 {
entry:
    #dbg_value(ptr %dest, !4835, !DIExpression(), !4836)
    #dbg_value(ptr %src, !4837, !DIExpression(), !4836)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4838
  store ptr %call, ptr %dest, align 4, !dbg !4839
  %cmp = icmp eq ptr %call, null, !dbg !4840
  br i1 %cmp, label %if.then, label %if.end, !dbg !4840

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4842
  br label %if.end, !dbg !4844

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4845
  %1 = load ptr, ptr %src, align 4, !dbg !4846
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4847
  ret void, !dbg !4848
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4849 {
entry:
    #dbg_value(ptr %state, !4852, !DIExpression(), !4853)
    #dbg_value(ptr %input, !4854, !DIExpression(), !4853)
    #dbg_value(i32 %inlen, !4855, !DIExpression(), !4853)
  %0 = load ptr, ptr %state, align 4, !dbg !4856
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 72, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4857
  ret void, !dbg !4858
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4859 {
entry:
    #dbg_value(ptr %state, !4860, !DIExpression(), !4861)
  %0 = load ptr, ptr %state, align 4, !dbg !4862
  call void @free(ptr noundef %0) #6, !dbg !4863
  ret void, !dbg !4864
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4865 {
entry:
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4868, !DIExpression(), !4869)
    #dbg_value(ptr %state, !4870, !DIExpression(), !4869)
    #dbg_declare(ptr %t, !4871, !DIExpression(), !4875)
  %0 = load ptr, ptr %state, align 4, !dbg !4876
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 72, i8 noundef zeroext 6) #4, !dbg !4877
  %1 = load ptr, ptr %state, align 4, !dbg !4878
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 72) #4, !dbg !4879
  call void @sha3_512_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4880
    #dbg_value(i32 0, !4881, !DIExpression(), !4883)
  br label %for.cond, !dbg !4884

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4885
    #dbg_value(i32 %i.0, !4881, !DIExpression(), !4883)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4886
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4888

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4889
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4889
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4891
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4892
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4893
    #dbg_value(i32 %inc, !4881, !DIExpression(), !4883)
  br label %for.cond, !dbg !4894, !llvm.loop !4895

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4897
}

; Function Attrs: nounwind
define dso_local void @sha3_512(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4898 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4899, !DIExpression(), !4900)
    #dbg_value(ptr %input, !4901, !DIExpression(), !4900)
    #dbg_value(i32 %inlen, !4902, !DIExpression(), !4900)
    #dbg_declare(ptr %s, !4903, !DIExpression(), !4904)
    #dbg_declare(ptr %t, !4905, !DIExpression(), !4906)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 72, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4907
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 72) #4, !dbg !4908
    #dbg_value(i32 0, !4909, !DIExpression(), !4911)
  br label %for.cond, !dbg !4912

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4913
    #dbg_value(i32 %i.0, !4909, !DIExpression(), !4911)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4914
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4916

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4917
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4917
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4919
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4920
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4921
    #dbg_value(i32 %inc, !4909, !DIExpression(), !4911)
  br label %for.cond, !dbg !4922, !llvm.loop !4923

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4925
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !4926 {
entry:
  %skey = alloca [22 x i64], align 8
    #dbg_value(ptr %r, !4934, !DIExpression(), !4935)
    #dbg_value(ptr %key, !4936, !DIExpression(), !4935)
    #dbg_declare(ptr %skey, !4937, !DIExpression(), !4941)
  %call = call dereferenceable_or_null(704) ptr @malloc(i32 noundef 704) #7, !dbg !4942
  store ptr %call, ptr %r, align 4, !dbg !4943
  %cmp = icmp eq ptr %call, null, !dbg !4944
  br i1 %cmp, label %if.then, label %if.end, !dbg !4944

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4946
  br label %if.end, !dbg !4948

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 16) #4, !dbg !4949
  %0 = load ptr, ptr %r, align 4, !dbg !4950
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 10) #4, !dbg !4951
  ret void, !dbg !4952
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %comp_skey, ptr noundef %key, i32 noundef range(i32 16, 33) %key_len) unnamed_addr #0 !dbg !4953 {
entry:
  %skey = alloca [60 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %comp_skey, !4956, !DIExpression(), !4957)
    #dbg_value(ptr %key, !4958, !DIExpression(), !4957)
    #dbg_value(i32 %key_len, !4959, !DIExpression(), !4957)
    #dbg_declare(ptr %skey, !4960, !DIExpression(), !4964)
  %0 = and i32 %key_len, 60, !dbg !4965
    #dbg_value(i32 %key_len, !4966, !DIExpression(DW_OP_constu, 16, DW_OP_minus, DW_OP_constu, 2, DW_OP_shr, DW_OP_plus_uconst, 10, DW_OP_stack_value), !4957)
  %shr1 = lshr i32 %key_len, 2, !dbg !4967
    #dbg_value(i32 %shr1, !4968, !DIExpression(), !4957)
  %shl = add nuw nsw i32 %0, 28, !dbg !4965
    #dbg_value(i32 %shl, !4969, !DIExpression(), !4957)
  %shr3 = lshr i32 %key_len, 2, !dbg !4970
  call fastcc void @br_range_dec32le(ptr noundef nonnull %skey, i32 noundef %shr3, ptr noundef %key) #4, !dbg !4971
  %shr4 = lshr i32 %key_len, 2, !dbg !4972
  %sub5 = add nsw i32 %shr4, -1, !dbg !4973
  %arrayidx = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub5, !dbg !4974
  %1 = load i32, ptr %arrayidx, align 4, !dbg !4974
    #dbg_value(i32 %1, !4975, !DIExpression(), !4957)
    #dbg_value(i32 %shr1, !4976, !DIExpression(), !4957)
    #dbg_value(i32 0, !4977, !DIExpression(), !4957)
    #dbg_value(i32 0, !4978, !DIExpression(), !4957)
  br label %for.cond, !dbg !4979

for.cond:                                         ; preds = %if.end16, %entry
  %i.0 = phi i32 [ %shr1, %entry ], [ %inc26, %if.end16 ], !dbg !4981
  %j.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end16 ], !dbg !4982
  %k.0 = phi i32 [ 0, %entry ], [ %spec.select1, %if.end16 ], !dbg !4982
  %tmp.0 = phi i32 [ %1, %entry ], [ %xor19, %if.end16 ], !dbg !4957
    #dbg_value(i32 %tmp.0, !4975, !DIExpression(), !4957)
    #dbg_value(i32 %k.0, !4978, !DIExpression(), !4957)
    #dbg_value(i32 %j.0, !4977, !DIExpression(), !4957)
    #dbg_value(i32 %i.0, !4976, !DIExpression(), !4957)
  %exitcond = icmp ne i32 %i.0, %shl, !dbg !4983
  br i1 %exitcond, label %for.body, label %for.cond27.preheader, !dbg !4985

for.cond27.preheader:                             ; preds = %for.cond
  br label %for.cond27, !dbg !4986

for.body:                                         ; preds = %for.cond
  %cmp6 = icmp eq i32 %j.0, 0, !dbg !4988
  br i1 %cmp6, label %if.then, label %if.else, !dbg !4988

if.then:                                          ; preds = %for.body
  %2 = shl i32 %tmp.0, 24, !dbg !4991
  %3 = lshr i32 %tmp.0, 8, !dbg !4991
  %4 = or i32 %2, %3, !dbg !4991
    #dbg_value(i32 %4, !4975, !DIExpression(), !4957)
  %call = call fastcc i32 @sub_word(i32 noundef %4) #4, !dbg !4993
  %arrayidx9 = getelementptr inbounds nuw [10 x i8], ptr @Rcon, i32 0, i32 %k.0, !dbg !4994
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !4994
  %conv = zext i8 %5 to i32, !dbg !4994
  %xor = xor i32 %call, %conv, !dbg !4995
    #dbg_value(i32 %xor, !4975, !DIExpression(), !4957)
  br label %if.end16, !dbg !4996

if.else:                                          ; preds = %for.body
  %cmp10 = icmp samesign ugt i32 %key_len, 27, !dbg !4997
  %cmp12 = icmp eq i32 %j.0, 4
  %or.cond = and i1 %cmp10, %cmp12, !dbg !4999
  br i1 %or.cond, label %if.then14, label %if.end16, !dbg !4999

if.then14:                                        ; preds = %if.else
  %call15 = call fastcc i32 @sub_word(i32 noundef %tmp.0) #4, !dbg !5000
    #dbg_value(i32 %call15, !4975, !DIExpression(), !4957)
  br label %if.end16, !dbg !5002

if.end16:                                         ; preds = %if.else, %if.then14, %if.then
  %tmp.2 = phi i32 [ %xor, %if.then ], [ %call15, %if.then14 ], [ %tmp.0, %if.else ], !dbg !5003
    #dbg_value(i32 %tmp.2, !4975, !DIExpression(), !4957)
  %sub17 = sub nuw nsw i32 %i.0, %shr1, !dbg !5004
  %arrayidx18 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub17, !dbg !5005
  %6 = load i32, ptr %arrayidx18, align 4, !dbg !5005
  %xor19 = xor i32 %tmp.2, %6, !dbg !5006
    #dbg_value(i32 %xor19, !4975, !DIExpression(), !4957)
  %arrayidx20 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %i.0, !dbg !5007
  store i32 %xor19, ptr %arrayidx20, align 4, !dbg !5008
  %inc = add i32 %j.0, 1, !dbg !5009
    #dbg_value(i32 %inc, !4977, !DIExpression(), !4957)
  %cmp21 = icmp eq i32 %inc, %shr1, !dbg !5011
  %spec.select = select i1 %cmp21, i32 0, i32 %inc, !dbg !5011
  %inc24 = zext i1 %cmp21 to i32, !dbg !5011
  %spec.select1 = add i32 %k.0, %inc24, !dbg !5011
    #dbg_value(i32 %spec.select1, !4978, !DIExpression(), !4957)
    #dbg_value(i32 %spec.select, !4977, !DIExpression(), !4957)
  %inc26 = add nuw nsw i32 %i.0, 1, !dbg !5012
    #dbg_value(i32 %inc26, !4976, !DIExpression(), !4957)
  br label %for.cond, !dbg !5013, !llvm.loop !5014

for.cond27:                                       ; preds = %for.cond27.preheader, %for.body30
  %i.1 = phi i32 [ %add73, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !5016
  %j.2 = phi i32 [ %add74, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !5016
    #dbg_value(i32 %j.2, !4977, !DIExpression(), !4957)
    #dbg_value(i32 %i.1, !4976, !DIExpression(), !4957)
  %cmp28 = icmp samesign ult i32 %i.1, %shl, !dbg !5017
  br i1 %cmp28, label %for.body30, label %for.end75, !dbg !4986

for.body30:                                       ; preds = %for.cond27
    #dbg_declare(ptr %q, !5019, !DIExpression(), !5024)
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5025
  %add.ptr = getelementptr inbounds nuw i32, ptr %skey, i32 %i.1, !dbg !5026
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q, ptr noundef nonnull %arrayidx32, ptr noundef nonnull %add.ptr) #4, !dbg !5027
  %7 = load i64, ptr %q, align 8, !dbg !5028
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5029
  store i64 %7, ptr %arrayidx35, align 8, !dbg !5030
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5031
  store i64 %7, ptr %arrayidx37, align 8, !dbg !5032
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5033
  store i64 %7, ptr %arrayidx39, align 8, !dbg !5034
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5035
  %8 = load i64, ptr %arrayidx40, align 8, !dbg !5035
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5036
  store i64 %8, ptr %arrayidx41, align 8, !dbg !5037
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5038
  store i64 %8, ptr %arrayidx43, align 8, !dbg !5039
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5040
  store i64 %8, ptr %arrayidx45, align 8, !dbg !5041
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5042
  %9 = load i64, ptr %q, align 8, !dbg !5043
  %and = and i64 %9, 1229782938247303441, !dbg !5044
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5045
  %10 = load i64, ptr %arrayidx48, align 8, !dbg !5045
  %and49 = and i64 %10, 2459565876494606882, !dbg !5046
  %or50 = or disjoint i64 %and, %and49, !dbg !5047
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5048
  %11 = load i64, ptr %arrayidx51, align 8, !dbg !5048
  %and52 = and i64 %11, 4919131752989213764, !dbg !5049
  %or53 = or disjoint i64 %or50, %and52, !dbg !5050
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5051
  %12 = load i64, ptr %arrayidx54, align 8, !dbg !5051
  %and55 = and i64 %12, -8608480567731124088, !dbg !5052
  %or56 = or disjoint i64 %or53, %and55, !dbg !5053
  %arrayidx58 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %j.2, !dbg !5054
  store i64 %or56, ptr %arrayidx58, align 8, !dbg !5055
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5056
  %13 = load i64, ptr %arrayidx59, align 8, !dbg !5056
  %and60 = and i64 %13, 1229782938247303441, !dbg !5057
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5058
  %14 = load i64, ptr %arrayidx61, align 8, !dbg !5058
  %and62 = and i64 %14, 2459565876494606882, !dbg !5059
  %or63 = or disjoint i64 %and60, %and62, !dbg !5060
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5061
  %15 = load i64, ptr %arrayidx64, align 8, !dbg !5061
  %and65 = and i64 %15, 4919131752989213764, !dbg !5062
  %or66 = or disjoint i64 %or63, %and65, !dbg !5063
  %arrayidx67 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5064
  %16 = load i64, ptr %arrayidx67, align 8, !dbg !5064
  %and68 = and i64 %16, -8608480567731124088, !dbg !5065
  %or69 = or disjoint i64 %or66, %and68, !dbg !5066
  %add70 = or disjoint i32 %j.2, 1, !dbg !5067
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %add70, !dbg !5068
  store i64 %or69, ptr %arrayidx71, align 8, !dbg !5069
  %add73 = add nuw nsw i32 %i.1, 4, !dbg !5070
    #dbg_value(i32 %add73, !4976, !DIExpression(), !4957)
  %add74 = add nuw nsw i32 %j.2, 2, !dbg !5071
    #dbg_value(i32 %add74, !4977, !DIExpression(), !4957)
  br label %for.cond27, !dbg !5072, !llvm.loop !5073

for.end75:                                        ; preds = %for.cond27
  ret void, !dbg !5075
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_skey_expand(ptr noundef %skey, ptr noundef nonnull %comp_skey, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5076 {
entry:
    #dbg_value(ptr %skey, !5079, !DIExpression(), !5080)
    #dbg_value(ptr %comp_skey, !5081, !DIExpression(), !5080)
    #dbg_value(i32 %nrounds, !5082, !DIExpression(), !5080)
  %add = shl nuw nsw i32 %nrounds, 1, !dbg !5083
  %shl = add nuw nsw i32 %add, 2, !dbg !5083
    #dbg_value(i32 %shl, !5084, !DIExpression(), !5080)
    #dbg_value(i32 0, !5085, !DIExpression(), !5080)
    #dbg_value(i32 0, !5086, !DIExpression(), !5080)
  br label %for.cond, !dbg !5087

for.cond:                                         ; preds = %for.body, %entry
  %u.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5089
  %v.0 = phi i32 [ 0, %entry ], [ %add21, %for.body ], !dbg !5089
    #dbg_value(i32 %v.0, !5086, !DIExpression(), !5080)
    #dbg_value(i32 %u.0, !5085, !DIExpression(), !5080)
  %exitcond = icmp ne i32 %u.0, %shl, !dbg !5090
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5092

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %u.0, !dbg !5093
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5093
    #dbg_value(i64 %0, !5095, !DIExpression(), !5096)
    #dbg_value(i64 %0, !5097, !DIExpression(), !5096)
    #dbg_value(i64 %0, !5098, !DIExpression(), !5096)
    #dbg_value(i64 %0, !5099, !DIExpression(), !5096)
  %and = and i64 %0, 1229782938247303441, !dbg !5100
    #dbg_value(i64 %and, !5099, !DIExpression(), !5096)
    #dbg_value(i64 %0, !5098, !DIExpression(DW_OP_constu, 2459565876494606882, DW_OP_and, DW_OP_stack_value), !5096)
    #dbg_value(i64 %0, !5097, !DIExpression(DW_OP_constu, 4919131752989213764, DW_OP_and, DW_OP_stack_value), !5096)
    #dbg_value(i64 %0, !5095, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !5096)
  %and1 = lshr i64 %0, 1, !dbg !5101
  %shr = and i64 %and1, 1229782938247303441, !dbg !5101
    #dbg_value(i64 %shr, !5098, !DIExpression(), !5096)
  %and2 = lshr i64 %0, 2, !dbg !5102
  %shr4 = and i64 %and2, 1229782938247303441, !dbg !5102
    #dbg_value(i64 %shr4, !5097, !DIExpression(), !5096)
  %and3 = lshr i64 %0, 3, !dbg !5103
  %shr5 = and i64 %and3, 1229782938247303441, !dbg !5103
    #dbg_value(i64 %shr5, !5095, !DIExpression(), !5096)
  %sub = mul nuw i64 %and, 15, !dbg !5104
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %skey, i32 %v.0, !dbg !5105
  store i64 %sub, ptr %arrayidx8, align 8, !dbg !5106
  %sub10 = mul nuw i64 %shr, 15, !dbg !5107
  %add11 = or disjoint i32 %v.0, 1, !dbg !5108
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %skey, i32 %add11, !dbg !5109
  store i64 %sub10, ptr %arrayidx12, align 8, !dbg !5110
  %sub14 = mul nuw i64 %shr4, 15, !dbg !5111
  %add15 = or disjoint i32 %v.0, 2, !dbg !5112
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %skey, i32 %add15, !dbg !5113
  store i64 %sub14, ptr %arrayidx16, align 8, !dbg !5114
  %sub18 = mul nuw i64 %shr5, 15, !dbg !5115
  %add19 = or disjoint i32 %v.0, 3, !dbg !5116
  %arrayidx20 = getelementptr inbounds nuw i64, ptr %skey, i32 %add19, !dbg !5117
  store i64 %sub18, ptr %arrayidx20, align 8, !dbg !5118
  %inc = add nuw nsw i32 %u.0, 1, !dbg !5119
    #dbg_value(i32 %inc, !5085, !DIExpression(), !5080)
  %add21 = add nuw nsw i32 %v.0, 4, !dbg !5120
    #dbg_value(i32 %add21, !5086, !DIExpression(), !5080)
  br label %for.cond, !dbg !5121, !llvm.loop !5122

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5124
}

; Function Attrs: nounwind
define internal fastcc void @br_range_dec32le(ptr noundef nonnull %v, i32 noundef range(i32 3, 17) %num, ptr noundef %src) unnamed_addr #0 !dbg !5125 {
entry:
    #dbg_value(ptr %v, !5129, !DIExpression(), !5130)
    #dbg_value(i32 %num, !5131, !DIExpression(), !5130)
    #dbg_value(ptr %src, !5132, !DIExpression(), !5130)
  br label %while.cond, !dbg !5133

while.cond:                                       ; preds = %while.body, %entry
  %src.addr.0 = phi ptr [ %src, %entry ], [ %add.ptr, %while.body ]
  %num.addr.0 = phi i32 [ %num, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
    #dbg_value(ptr %v.addr.0, !5129, !DIExpression(), !5130)
    #dbg_value(i32 %num.addr.0, !5131, !DIExpression(), !5130)
    #dbg_value(ptr %src.addr.0, !5132, !DIExpression(), !5130)
    #dbg_value(i32 %num.addr.0, !5131, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5130)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5134
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5133

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5135
    #dbg_value(i32 %dec, !5131, !DIExpression(), !5130)
  %call = call fastcc i32 @br_dec32le(ptr noundef %src.addr.0) #4, !dbg !5136
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5138
    #dbg_value(ptr %incdec.ptr, !5129, !DIExpression(), !5130)
  store i32 %call, ptr %v.addr.0, align 4, !dbg !5139
  %add.ptr = getelementptr inbounds nuw i8, ptr %src.addr.0, i32 4, !dbg !5140
    #dbg_value(ptr %add.ptr, !5132, !DIExpression(), !5130)
  br label %while.cond, !dbg !5133, !llvm.loop !5141

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5143
}

; Function Attrs: nounwind
define internal fastcc i32 @sub_word(i32 noundef %x) unnamed_addr #0 !dbg !5144 {
entry:
  %q = alloca [8 x i64], align 8
    #dbg_value(i32 %x, !5147, !DIExpression(), !5148)
    #dbg_declare(ptr %q, !5149, !DIExpression(), !5150)
  %call = call ptr @memset(ptr noundef nonnull %q, i32 noundef 0, i32 noundef 64) #6, !dbg !5151
  %conv = zext i32 %x to i64, !dbg !5152
  store i64 %conv, ptr %q, align 8, !dbg !5153
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5154
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5155
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5156
  %0 = load i64, ptr %q, align 8, !dbg !5157
  %conv5 = trunc i64 %0 to i32, !dbg !5158
  ret i32 %conv5, !dbg !5159
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q0, ptr noundef nonnull %q1, ptr noundef nonnull %w) unnamed_addr #0 !dbg !5160 {
entry:
    #dbg_value(ptr %q0, !5165, !DIExpression(), !5166)
    #dbg_value(ptr %q1, !5167, !DIExpression(), !5166)
    #dbg_value(ptr %w, !5168, !DIExpression(), !5166)
  %0 = load i32, ptr %w, align 4, !dbg !5169
  %conv = zext i32 %0 to i64, !dbg !5169
    #dbg_value(i64 %conv, !5170, !DIExpression(), !5166)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5171
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !5171
  %conv2 = zext i32 %1 to i64, !dbg !5171
    #dbg_value(i64 %conv2, !5172, !DIExpression(), !5166)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5173
  %2 = load i32, ptr %arrayidx3, align 4, !dbg !5173
  %conv4 = zext i32 %2 to i64, !dbg !5173
    #dbg_value(i64 %conv4, !5174, !DIExpression(), !5166)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5175
  %3 = load i32, ptr %arrayidx5, align 4, !dbg !5175
  %conv6 = zext i32 %3 to i64, !dbg !5175
    #dbg_value(i64 %conv6, !5176, !DIExpression(), !5166)
  %shl = shl nuw nsw i64 %conv, 16, !dbg !5177
  %or = or i64 %shl, %conv, !dbg !5178
    #dbg_value(i64 %or, !5170, !DIExpression(), !5166)
  %shl7 = shl nuw nsw i64 %conv2, 16, !dbg !5179
  %or8 = or i64 %shl7, %conv2, !dbg !5180
    #dbg_value(i64 %or8, !5172, !DIExpression(), !5166)
  %shl9 = shl nuw nsw i64 %conv4, 16, !dbg !5181
  %or10 = or i64 %shl9, %conv4, !dbg !5182
    #dbg_value(i64 %or10, !5174, !DIExpression(), !5166)
  %shl11 = shl nuw nsw i64 %conv6, 16, !dbg !5183
  %or12 = or i64 %shl11, %conv6, !dbg !5184
    #dbg_value(i64 %or12, !5176, !DIExpression(), !5166)
  %and = and i64 %or, 281470681808895, !dbg !5185
    #dbg_value(i64 %and, !5170, !DIExpression(), !5166)
  %and13 = and i64 %or8, 281470681808895, !dbg !5186
    #dbg_value(i64 %and13, !5172, !DIExpression(), !5166)
  %and14 = and i64 %or10, 281470681808895, !dbg !5187
    #dbg_value(i64 %and14, !5174, !DIExpression(), !5166)
  %and15 = and i64 %or12, 281470681808895, !dbg !5188
    #dbg_value(i64 %and15, !5176, !DIExpression(), !5166)
  %shl16 = shl nuw nsw i64 %and, 8, !dbg !5189
  %or17 = or i64 %and, %shl16, !dbg !5190
    #dbg_value(i64 %or17, !5170, !DIExpression(), !5166)
  %shl18 = shl nuw nsw i64 %and13, 8, !dbg !5191
  %or19 = or i64 %and13, %shl18, !dbg !5192
    #dbg_value(i64 %or19, !5172, !DIExpression(), !5166)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5166)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5176, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5166)
  %and24 = and i64 %or17, 71777214294589695, !dbg !5193
    #dbg_value(i64 %and24, !5170, !DIExpression(), !5166)
  %and25 = and i64 %or19, 71777214294589695, !dbg !5194
    #dbg_value(i64 %and25, !5172, !DIExpression(), !5166)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5166)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5176, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5166)
  %4 = shl nuw i64 %and14, 16, !dbg !5195
  %5 = shl nuw nsw i64 %and14, 8, !dbg !5195
  %and26 = or i64 %4, %5, !dbg !5195
  %shl28 = and i64 %and26, -71777214294589696, !dbg !5195
  %or29 = or disjoint i64 %and24, %shl28, !dbg !5196
  store i64 %or29, ptr %q0, align 8, !dbg !5197
  %6 = shl nuw i64 %and15, 16, !dbg !5198
  %7 = shl nuw nsw i64 %and15, 8, !dbg !5198
  %and27 = or i64 %6, %7, !dbg !5198
  %shl30 = and i64 %and27, -71777214294589696, !dbg !5198
  %or31 = or disjoint i64 %and25, %shl30, !dbg !5199
  store i64 %or31, ptr %q1, align 8, !dbg !5200
  ret void, !dbg !5201
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5202 {
entry:
    #dbg_value(ptr %q, !5203, !DIExpression(), !5204)
  %0 = load i64, ptr %q, align 8, !dbg !5205
    #dbg_value(i64 %0, !5207, !DIExpression(), !5208)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5205
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5205
    #dbg_value(i64 %1, !5209, !DIExpression(), !5208)
  %and = and i64 %0, 6148914691236517205, !dbg !5205
  %and2 = shl i64 %1, 1, !dbg !5205
  %shl = and i64 %and2, -6148914691236517206, !dbg !5205
  %or = or disjoint i64 %and, %shl, !dbg !5205
  store i64 %or, ptr %q, align 8, !dbg !5205
  %and4 = lshr i64 %0, 1, !dbg !5205
  %shr = and i64 %and4, 6148914691236517205, !dbg !5205
  %and5 = and i64 %1, -6148914691236517206, !dbg !5205
  %or6 = or disjoint i64 %shr, %and5, !dbg !5205
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5205
  store i64 %or6, ptr %arrayidx7, align 8, !dbg !5205
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5210
  %2 = load i64, ptr %arrayidx11, align 8, !dbg !5210
    #dbg_value(i64 %2, !5212, !DIExpression(), !5213)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5210
  %3 = load i64, ptr %arrayidx12, align 8, !dbg !5210
    #dbg_value(i64 %3, !5214, !DIExpression(), !5213)
  %and13 = and i64 %2, 6148914691236517205, !dbg !5210
  %and14 = shl i64 %3, 1, !dbg !5210
  %shl15 = and i64 %and14, -6148914691236517206, !dbg !5210
  %or16 = or disjoint i64 %and13, %shl15, !dbg !5210
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5210
  store i64 %or16, ptr %arrayidx17, align 8, !dbg !5210
  %and18 = lshr i64 %2, 1, !dbg !5210
  %shr19 = and i64 %and18, 6148914691236517205, !dbg !5210
  %and20 = and i64 %3, -6148914691236517206, !dbg !5210
  %or21 = or disjoint i64 %shr19, %and20, !dbg !5210
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5210
  store i64 %or21, ptr %arrayidx22, align 8, !dbg !5210
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5215
  %4 = load i64, ptr %arrayidx27, align 8, !dbg !5215
    #dbg_value(i64 %4, !5217, !DIExpression(), !5218)
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5215
  %5 = load i64, ptr %arrayidx28, align 8, !dbg !5215
    #dbg_value(i64 %5, !5219, !DIExpression(), !5218)
  %and29 = and i64 %4, 6148914691236517205, !dbg !5215
  %and30 = shl i64 %5, 1, !dbg !5215
  %shl31 = and i64 %and30, -6148914691236517206, !dbg !5215
  %or32 = or disjoint i64 %and29, %shl31, !dbg !5215
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5215
  store i64 %or32, ptr %arrayidx33, align 8, !dbg !5215
  %and34 = lshr i64 %4, 1, !dbg !5215
  %shr35 = and i64 %and34, 6148914691236517205, !dbg !5215
  %and36 = and i64 %5, -6148914691236517206, !dbg !5215
  %or37 = or disjoint i64 %shr35, %and36, !dbg !5215
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5215
  store i64 %or37, ptr %arrayidx38, align 8, !dbg !5215
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5220
  %6 = load i64, ptr %arrayidx43, align 8, !dbg !5220
    #dbg_value(i64 %6, !5222, !DIExpression(), !5223)
  %arrayidx44 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5220
  %7 = load i64, ptr %arrayidx44, align 8, !dbg !5220
    #dbg_value(i64 %7, !5224, !DIExpression(), !5223)
  %and45 = and i64 %6, 6148914691236517205, !dbg !5220
  %and46 = shl i64 %7, 1, !dbg !5220
  %shl47 = and i64 %and46, -6148914691236517206, !dbg !5220
  %or48 = or disjoint i64 %and45, %shl47, !dbg !5220
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5220
  store i64 %or48, ptr %arrayidx49, align 8, !dbg !5220
  %and50 = lshr i64 %6, 1, !dbg !5220
  %shr51 = and i64 %and50, 6148914691236517205, !dbg !5220
  %and52 = and i64 %7, -6148914691236517206, !dbg !5220
  %or53 = or disjoint i64 %shr51, %and52, !dbg !5220
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5220
  store i64 %or53, ptr %arrayidx54, align 8, !dbg !5220
  %8 = load i64, ptr %q, align 8, !dbg !5225
    #dbg_value(i64 %8, !5227, !DIExpression(), !5228)
  %arrayidx60 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5225
  %9 = load i64, ptr %arrayidx60, align 8, !dbg !5225
    #dbg_value(i64 %9, !5229, !DIExpression(), !5228)
  %and61 = and i64 %8, 3689348814741910323, !dbg !5225
  %and62 = shl i64 %9, 2, !dbg !5225
  %shl63 = and i64 %and62, -3689348814741910324, !dbg !5225
  %or64 = or disjoint i64 %and61, %shl63, !dbg !5225
  store i64 %or64, ptr %q, align 8, !dbg !5225
  %and66 = lshr i64 %8, 2, !dbg !5225
  %shr67 = and i64 %and66, 3689348814741910323, !dbg !5225
  %and68 = and i64 %9, -3689348814741910324, !dbg !5225
  %or69 = or disjoint i64 %shr67, %and68, !dbg !5225
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5225
  store i64 %or69, ptr %arrayidx70, align 8, !dbg !5225
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5230
  %10 = load i64, ptr %arrayidx75, align 8, !dbg !5230
    #dbg_value(i64 %10, !5232, !DIExpression(), !5233)
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5230
  %11 = load i64, ptr %arrayidx76, align 8, !dbg !5230
    #dbg_value(i64 %11, !5234, !DIExpression(), !5233)
  %and77 = and i64 %10, 3689348814741910323, !dbg !5230
  %and78 = shl i64 %11, 2, !dbg !5230
  %shl79 = and i64 %and78, -3689348814741910324, !dbg !5230
  %or80 = or disjoint i64 %and77, %shl79, !dbg !5230
  %arrayidx81 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5230
  store i64 %or80, ptr %arrayidx81, align 8, !dbg !5230
  %and82 = lshr i64 %10, 2, !dbg !5230
  %shr83 = and i64 %and82, 3689348814741910323, !dbg !5230
  %and84 = and i64 %11, -3689348814741910324, !dbg !5230
  %or85 = or disjoint i64 %shr83, %and84, !dbg !5230
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5230
  store i64 %or85, ptr %arrayidx86, align 8, !dbg !5230
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5235
  %12 = load i64, ptr %arrayidx91, align 8, !dbg !5235
    #dbg_value(i64 %12, !5237, !DIExpression(), !5238)
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5235
  %13 = load i64, ptr %arrayidx92, align 8, !dbg !5235
    #dbg_value(i64 %13, !5239, !DIExpression(), !5238)
  %and93 = and i64 %12, 3689348814741910323, !dbg !5235
  %and94 = shl i64 %13, 2, !dbg !5235
  %shl95 = and i64 %and94, -3689348814741910324, !dbg !5235
  %or96 = or disjoint i64 %and93, %shl95, !dbg !5235
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5235
  store i64 %or96, ptr %arrayidx97, align 8, !dbg !5235
  %and98 = lshr i64 %12, 2, !dbg !5235
  %shr99 = and i64 %and98, 3689348814741910323, !dbg !5235
  %and100 = and i64 %13, -3689348814741910324, !dbg !5235
  %or101 = or disjoint i64 %shr99, %and100, !dbg !5235
  %arrayidx102 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5235
  store i64 %or101, ptr %arrayidx102, align 8, !dbg !5235
  %arrayidx107 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5240
  %14 = load i64, ptr %arrayidx107, align 8, !dbg !5240
    #dbg_value(i64 %14, !5242, !DIExpression(), !5243)
  %arrayidx108 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5240
  %15 = load i64, ptr %arrayidx108, align 8, !dbg !5240
    #dbg_value(i64 %15, !5244, !DIExpression(), !5243)
  %and109 = and i64 %14, 3689348814741910323, !dbg !5240
  %and110 = shl i64 %15, 2, !dbg !5240
  %shl111 = and i64 %and110, -3689348814741910324, !dbg !5240
  %or112 = or disjoint i64 %and109, %shl111, !dbg !5240
  %arrayidx113 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5240
  store i64 %or112, ptr %arrayidx113, align 8, !dbg !5240
  %and114 = lshr i64 %14, 2, !dbg !5240
  %shr115 = and i64 %and114, 3689348814741910323, !dbg !5240
  %and116 = and i64 %15, -3689348814741910324, !dbg !5240
  %or117 = or disjoint i64 %shr115, %and116, !dbg !5240
  %arrayidx118 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5240
  store i64 %or117, ptr %arrayidx118, align 8, !dbg !5240
  %16 = load i64, ptr %q, align 8, !dbg !5245
    #dbg_value(i64 %16, !5247, !DIExpression(), !5248)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5245
  %17 = load i64, ptr %arrayidx124, align 8, !dbg !5245
    #dbg_value(i64 %17, !5249, !DIExpression(), !5248)
  %and125 = and i64 %16, 1085102592571150095, !dbg !5245
  %and126 = shl i64 %17, 4, !dbg !5245
  %shl127 = and i64 %and126, -1085102592571150096, !dbg !5245
  %or128 = or disjoint i64 %and125, %shl127, !dbg !5245
  store i64 %or128, ptr %q, align 8, !dbg !5245
  %and130 = lshr i64 %16, 4, !dbg !5245
  %shr131 = and i64 %and130, 1085102592571150095, !dbg !5245
  %and132 = and i64 %17, -1085102592571150096, !dbg !5245
  %or133 = or disjoint i64 %shr131, %and132, !dbg !5245
  %arrayidx134 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5245
  store i64 %or133, ptr %arrayidx134, align 8, !dbg !5245
  %arrayidx139 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5250
  %18 = load i64, ptr %arrayidx139, align 8, !dbg !5250
    #dbg_value(i64 %18, !5252, !DIExpression(), !5253)
  %arrayidx140 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5250
  %19 = load i64, ptr %arrayidx140, align 8, !dbg !5250
    #dbg_value(i64 %19, !5254, !DIExpression(), !5253)
  %and141 = and i64 %18, 1085102592571150095, !dbg !5250
  %and142 = shl i64 %19, 4, !dbg !5250
  %shl143 = and i64 %and142, -1085102592571150096, !dbg !5250
  %or144 = or disjoint i64 %and141, %shl143, !dbg !5250
  %arrayidx145 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5250
  store i64 %or144, ptr %arrayidx145, align 8, !dbg !5250
  %and146 = lshr i64 %18, 4, !dbg !5250
  %shr147 = and i64 %and146, 1085102592571150095, !dbg !5250
  %and148 = and i64 %19, -1085102592571150096, !dbg !5250
  %or149 = or disjoint i64 %shr147, %and148, !dbg !5250
  %arrayidx150 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5250
  store i64 %or149, ptr %arrayidx150, align 8, !dbg !5250
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5255
  %20 = load i64, ptr %arrayidx155, align 8, !dbg !5255
    #dbg_value(i64 %20, !5257, !DIExpression(), !5258)
  %arrayidx156 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5255
  %21 = load i64, ptr %arrayidx156, align 8, !dbg !5255
    #dbg_value(i64 %21, !5259, !DIExpression(), !5258)
  %and157 = and i64 %20, 1085102592571150095, !dbg !5255
  %and158 = shl i64 %21, 4, !dbg !5255
  %shl159 = and i64 %and158, -1085102592571150096, !dbg !5255
  %or160 = or disjoint i64 %and157, %shl159, !dbg !5255
  %arrayidx161 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5255
  store i64 %or160, ptr %arrayidx161, align 8, !dbg !5255
  %and162 = lshr i64 %20, 4, !dbg !5255
  %shr163 = and i64 %and162, 1085102592571150095, !dbg !5255
  %and164 = and i64 %21, -1085102592571150096, !dbg !5255
  %or165 = or disjoint i64 %shr163, %and164, !dbg !5255
  %arrayidx166 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5255
  store i64 %or165, ptr %arrayidx166, align 8, !dbg !5255
  %arrayidx171 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5260
  %22 = load i64, ptr %arrayidx171, align 8, !dbg !5260
    #dbg_value(i64 %22, !5262, !DIExpression(), !5263)
  %arrayidx172 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5260
  %23 = load i64, ptr %arrayidx172, align 8, !dbg !5260
    #dbg_value(i64 %23, !5264, !DIExpression(), !5263)
  %and173 = and i64 %22, 1085102592571150095, !dbg !5260
  %and174 = shl i64 %23, 4, !dbg !5260
  %shl175 = and i64 %and174, -1085102592571150096, !dbg !5260
  %or176 = or disjoint i64 %and173, %shl175, !dbg !5260
  %arrayidx177 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5260
  store i64 %or176, ptr %arrayidx177, align 8, !dbg !5260
  %and178 = lshr i64 %22, 4, !dbg !5260
  %shr179 = and i64 %and178, 1085102592571150095, !dbg !5260
  %and180 = and i64 %23, -1085102592571150096, !dbg !5260
  %or181 = or disjoint i64 %shr179, %and180, !dbg !5260
  %arrayidx182 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5260
  store i64 %or181, ptr %arrayidx182, align 8, !dbg !5260
  ret void, !dbg !5265
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5266 {
entry:
    #dbg_value(ptr %q, !5267, !DIExpression(), !5268)
  %arrayidx = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5269
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5269
    #dbg_value(i64 %0, !5270, !DIExpression(), !5268)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5271
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5271
    #dbg_value(i64 %1, !5272, !DIExpression(), !5268)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5273
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5273
    #dbg_value(i64 %2, !5274, !DIExpression(), !5268)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5275
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5275
    #dbg_value(i64 %3, !5276, !DIExpression(), !5268)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5277
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5277
    #dbg_value(i64 %4, !5278, !DIExpression(), !5268)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5279
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5279
    #dbg_value(i64 %5, !5280, !DIExpression(), !5268)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5281
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5281
    #dbg_value(i64 %6, !5282, !DIExpression(), !5268)
  %7 = load i64, ptr %q, align 8, !dbg !5283
    #dbg_value(i64 %7, !5284, !DIExpression(), !5268)
  %xor = xor i64 %3, %5, !dbg !5285
    #dbg_value(i64 %xor, !5286, !DIExpression(), !5268)
  %xor8 = xor i64 %0, %6, !dbg !5287
    #dbg_value(i64 %xor8, !5288, !DIExpression(), !5268)
  %xor9 = xor i64 %0, %3, !dbg !5289
    #dbg_value(i64 %xor9, !5290, !DIExpression(), !5268)
  %xor10 = xor i64 %0, %5, !dbg !5291
    #dbg_value(i64 %xor10, !5292, !DIExpression(), !5268)
  %xor11 = xor i64 %1, %2, !dbg !5293
    #dbg_value(i64 %xor11, !5294, !DIExpression(), !5268)
  %xor12 = xor i64 %xor11, %7, !dbg !5295
    #dbg_value(i64 %xor12, !5296, !DIExpression(), !5268)
  %xor13 = xor i64 %xor12, %3, !dbg !5297
    #dbg_value(i64 %xor13, !5298, !DIExpression(), !5268)
  %xor14 = xor i64 %xor8, %xor, !dbg !5299
    #dbg_value(i64 %xor14, !5300, !DIExpression(), !5268)
  %xor15 = xor i64 %xor12, %0, !dbg !5301
    #dbg_value(i64 %xor15, !5302, !DIExpression(), !5268)
  %xor16 = xor i64 %xor12, %6, !dbg !5303
    #dbg_value(i64 %xor16, !5304, !DIExpression(), !5268)
  %xor17 = xor i64 %xor16, %xor10, !dbg !5305
    #dbg_value(i64 %xor17, !5306, !DIExpression(), !5268)
  %xor18 = xor i64 %4, %xor14, !dbg !5307
    #dbg_value(i64 %xor18, !5308, !DIExpression(), !5268)
  %xor19 = xor i64 %xor18, %5, !dbg !5309
    #dbg_value(i64 %xor19, !5310, !DIExpression(), !5268)
  %xor20 = xor i64 %xor18, %1, !dbg !5311
    #dbg_value(i64 %xor20, !5312, !DIExpression(), !5268)
  %xor21 = xor i64 %xor19, %7, !dbg !5313
    #dbg_value(i64 %xor21, !5314, !DIExpression(), !5268)
  %xor22 = xor i64 %xor19, %xor11, !dbg !5315
    #dbg_value(i64 %xor22, !5316, !DIExpression(), !5268)
  %xor23 = xor i64 %xor20, %xor9, !dbg !5317
    #dbg_value(i64 %xor23, !5318, !DIExpression(), !5268)
  %xor24 = xor i64 %7, %xor23, !dbg !5319
    #dbg_value(i64 %xor24, !5320, !DIExpression(), !5268)
  %xor25 = xor i64 %xor22, %xor23, !dbg !5321
    #dbg_value(i64 %xor25, !5322, !DIExpression(), !5268)
    #dbg_value(!DIArgList(i64 %xor22, i64 %xor10), !5323, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5268)
  %xor27 = xor i64 %xor11, %xor23, !dbg !5324
    #dbg_value(i64 %xor27, !5325, !DIExpression(), !5268)
    #dbg_value(!DIArgList(i64 %xor8, i64 %xor27), !5326, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5268)
    #dbg_value(!DIArgList(i64 %0, i64 %xor27), !5327, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5268)
  %and = and i64 %xor14, %xor19, !dbg !5328
    #dbg_value(i64 %and, !5329, !DIExpression(), !5268)
  %and30 = and i64 %xor17, %xor21, !dbg !5330
    #dbg_value(i64 %and30, !5331, !DIExpression(), !5268)
  %xor31 = xor i64 %and30, %and, !dbg !5332
    #dbg_value(i64 %xor31, !5333, !DIExpression(), !5268)
  %and32 = and i64 %xor13, %7, !dbg !5334
    #dbg_value(i64 %and32, !5335, !DIExpression(), !5268)
    #dbg_value(!DIArgList(i64 %and32, i64 %and), !5336, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5268)
  %and34 = and i64 %xor8, %xor27, !dbg !5337
    #dbg_value(i64 %and34, !5338, !DIExpression(), !5268)
  %and35 = and i64 %xor16, %xor12, !dbg !5339
    #dbg_value(i64 %and35, !5340, !DIExpression(), !5268)
    #dbg_value(!DIArgList(i64 %and35, i64 %and34), !5341, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5268)
  %and37 = and i64 %xor15, %xor24, !dbg !5342
    #dbg_value(i64 %and37, !5343, !DIExpression(), !5268)
    #dbg_value(!DIArgList(i64 %and37, i64 %and34), !5344, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5268)
  %and39 = and i64 %xor9, %xor23, !dbg !5345
    #dbg_value(i64 %and39, !5346, !DIExpression(), !5268)
  %and40 = and i64 %xor, %xor25, !dbg !5347
    #dbg_value(i64 %and40, !5348, !DIExpression(), !5268)
  %xor41 = xor i64 %and40, %and39, !dbg !5349
    #dbg_value(i64 %xor41, !5350, !DIExpression(), !5268)
  %and42 = and i64 %xor10, %xor22, !dbg !5351
    #dbg_value(i64 %and42, !5352, !DIExpression(), !5268)
  %xor43 = xor i64 %and42, %and39, !dbg !5353
    #dbg_value(i64 %xor43, !5354, !DIExpression(), !5268)
  %xor44 = xor i64 %xor31, %xor41, !dbg !5355
    #dbg_value(i64 %xor44, !5356, !DIExpression(), !5268)
    #dbg_value(!DIArgList(i64 %and32, i64 %xor43, i64 %and), !5357, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5268)
    #dbg_value(!DIArgList(i64 %and35, i64 %xor41, i64 %and34), !5358, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5268)
    #dbg_value(!DIArgList(i64 %and37, i64 %xor43, i64 %and34), !5359, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5268)
  %xor48 = xor i64 %xor44, %xor20, !dbg !5360
    #dbg_value(i64 %xor48, !5361, !DIExpression(), !5268)
  %8 = xor i64 %xor10, %and32, !dbg !5362
  %9 = xor i64 %8, %xor22, !dbg !5362
  %10 = xor i64 %9, %and, !dbg !5362
  %xor49 = xor i64 %10, %xor43, !dbg !5362
    #dbg_value(i64 %xor49, !5363, !DIExpression(), !5268)
  %11 = xor i64 %xor27, %and35, !dbg !5364
  %12 = xor i64 %11, %xor8, !dbg !5364
  %13 = xor i64 %12, %and34, !dbg !5364
  %xor50 = xor i64 %13, %xor41, !dbg !5364
    #dbg_value(i64 %xor50, !5365, !DIExpression(), !5268)
  %14 = xor i64 %xor27, %and37, !dbg !5366
  %15 = xor i64 %14, %0, !dbg !5366
  %16 = xor i64 %15, %and34, !dbg !5366
  %xor51 = xor i64 %16, %xor43, !dbg !5366
    #dbg_value(i64 %xor51, !5367, !DIExpression(), !5268)
  %xor52 = xor i64 %xor48, %xor49, !dbg !5368
    #dbg_value(i64 %xor52, !5369, !DIExpression(), !5268)
  %and53 = and i64 %xor48, %xor50, !dbg !5370
    #dbg_value(i64 %and53, !5371, !DIExpression(), !5268)
  %xor54 = xor i64 %xor51, %and53, !dbg !5372
    #dbg_value(i64 %xor54, !5373, !DIExpression(), !5268)
  %and55 = and i64 %xor52, %xor54, !dbg !5374
    #dbg_value(i64 %and55, !5375, !DIExpression(), !5268)
  %xor56 = xor i64 %and55, %xor49, !dbg !5376
    #dbg_value(i64 %xor56, !5377, !DIExpression(), !5268)
  %xor57 = xor i64 %xor50, %xor51, !dbg !5378
    #dbg_value(i64 %xor57, !5379, !DIExpression(), !5268)
  %xor58 = xor i64 %xor49, %and53, !dbg !5380
    #dbg_value(i64 %xor58, !5381, !DIExpression(), !5268)
  %and59 = and i64 %xor58, %xor57, !dbg !5382
    #dbg_value(i64 %and59, !5383, !DIExpression(), !5268)
  %xor60 = xor i64 %and59, %xor51, !dbg !5384
    #dbg_value(i64 %xor60, !5385, !DIExpression(), !5268)
  %xor61 = xor i64 %xor50, %xor60, !dbg !5386
    #dbg_value(i64 %xor61, !5387, !DIExpression(), !5268)
  %xor62 = xor i64 %and59, %and53, !dbg !5388
    #dbg_value(i64 %xor62, !5389, !DIExpression(), !5268)
  %and63 = and i64 %xor51, %xor62, !dbg !5390
    #dbg_value(i64 %and63, !5391, !DIExpression(), !5268)
  %xor64 = xor i64 %and63, %xor61, !dbg !5392
    #dbg_value(i64 %xor64, !5393, !DIExpression(), !5268)
  %xor65 = xor i64 %xor54, %and63, !dbg !5394
    #dbg_value(i64 %xor65, !5395, !DIExpression(), !5268)
  %and66 = and i64 %xor56, %xor65, !dbg !5396
    #dbg_value(i64 %and66, !5397, !DIExpression(), !5268)
  %xor67 = xor i64 %xor52, %and66, !dbg !5398
    #dbg_value(i64 %xor67, !5399, !DIExpression(), !5268)
  %xor68 = xor i64 %xor67, %xor64, !dbg !5400
    #dbg_value(i64 %xor68, !5401, !DIExpression(), !5268)
  %xor69 = xor i64 %xor56, %xor60, !dbg !5402
    #dbg_value(i64 %xor69, !5403, !DIExpression(), !5268)
  %xor70 = xor i64 %xor56, %xor67, !dbg !5404
    #dbg_value(i64 %xor70, !5405, !DIExpression(), !5268)
  %xor71 = xor i64 %and63, %xor50, !dbg !5406
    #dbg_value(i64 %xor71, !5407, !DIExpression(), !5268)
  %xor72 = xor i64 %xor69, %xor68, !dbg !5408
    #dbg_value(i64 %xor72, !5409, !DIExpression(), !5268)
  %and73 = and i64 %xor71, %xor19, !dbg !5410
    #dbg_value(i64 %and73, !5411, !DIExpression(), !5268)
  %and74 = and i64 %xor64, %xor21, !dbg !5412
    #dbg_value(i64 %and74, !5413, !DIExpression(), !5268)
  %and75 = and i64 %xor60, %7, !dbg !5414
    #dbg_value(i64 %and75, !5415, !DIExpression(), !5268)
  %and76 = and i64 %xor70, %xor27, !dbg !5416
    #dbg_value(i64 %and76, !5417, !DIExpression(), !5268)
  %and77 = and i64 %xor67, %xor12, !dbg !5418
    #dbg_value(i64 %and77, !5419, !DIExpression(), !5268)
  %and78 = and i64 %xor56, %xor24, !dbg !5420
    #dbg_value(i64 %and78, !5421, !DIExpression(), !5268)
  %and79 = and i64 %xor69, %xor23, !dbg !5422
    #dbg_value(i64 %and79, !5423, !DIExpression(), !5268)
  %and80 = and i64 %xor72, %xor25, !dbg !5424
    #dbg_value(i64 %and80, !5425, !DIExpression(), !5268)
  %and81 = and i64 %xor68, %xor22, !dbg !5426
    #dbg_value(i64 %and81, !5427, !DIExpression(), !5268)
  %and82 = and i64 %xor71, %xor14, !dbg !5428
    #dbg_value(i64 %and82, !5429, !DIExpression(), !5268)
  %and83 = and i64 %xor64, %xor17, !dbg !5430
    #dbg_value(i64 %and83, !5431, !DIExpression(), !5268)
  %and84 = and i64 %xor60, %xor13, !dbg !5432
    #dbg_value(i64 %and84, !5433, !DIExpression(), !5268)
  %and85 = and i64 %xor70, %xor8, !dbg !5434
    #dbg_value(i64 %and85, !5435, !DIExpression(), !5268)
  %and86 = and i64 %xor67, %xor16, !dbg !5436
    #dbg_value(i64 %and86, !5437, !DIExpression(), !5268)
  %and87 = and i64 %xor56, %xor15, !dbg !5438
    #dbg_value(i64 %and87, !5439, !DIExpression(), !5268)
  %and88 = and i64 %xor69, %xor9, !dbg !5440
    #dbg_value(i64 %and88, !5441, !DIExpression(), !5268)
  %and89 = and i64 %xor72, %xor, !dbg !5442
    #dbg_value(i64 %and89, !5443, !DIExpression(), !5268)
  %and90 = and i64 %xor68, %xor10, !dbg !5444
    #dbg_value(i64 %and90, !5445, !DIExpression(), !5268)
  %xor91 = xor i64 %and88, %and89, !dbg !5446
    #dbg_value(i64 %xor91, !5447, !DIExpression(), !5268)
  %xor92 = xor i64 %and83, %and84, !dbg !5448
    #dbg_value(i64 %xor92, !5449, !DIExpression(), !5268)
  %xor93 = xor i64 %and78, %and86, !dbg !5450
    #dbg_value(i64 %xor93, !5451, !DIExpression(), !5268)
  %xor94 = xor i64 %and82, %and83, !dbg !5452
    #dbg_value(i64 %xor94, !5453, !DIExpression(), !5268)
  %xor95 = xor i64 %and75, %and85, !dbg !5454
    #dbg_value(i64 %xor95, !5455, !DIExpression(), !5268)
  %xor96 = xor i64 %and75, %and78, !dbg !5456
    #dbg_value(i64 %xor96, !5457, !DIExpression(), !5268)
  %xor97 = xor i64 %and80, %and81, !dbg !5458
    #dbg_value(i64 %xor97, !5459, !DIExpression(), !5268)
  %xor98 = xor i64 %and73, %and76, !dbg !5460
    #dbg_value(i64 %xor98, !5461, !DIExpression(), !5268)
  %xor99 = xor i64 %and79, %and80, !dbg !5462
    #dbg_value(i64 %xor99, !5463, !DIExpression(), !5268)
  %xor100 = xor i64 %and89, %and90, !dbg !5464
    #dbg_value(i64 %xor100, !5465, !DIExpression(), !5268)
  %xor101 = xor i64 %and85, %xor93, !dbg !5466
    #dbg_value(i64 %xor101, !5467, !DIExpression(), !5268)
  %xor102 = xor i64 %xor95, %xor98, !dbg !5468
    #dbg_value(i64 %xor102, !5469, !DIExpression(), !5268)
  %xor103 = xor i64 %and77, %xor91, !dbg !5470
    #dbg_value(i64 %xor103, !5471, !DIExpression(), !5268)
  %xor104 = xor i64 %and76, %xor99, !dbg !5472
    #dbg_value(i64 %xor104, !5473, !DIExpression(), !5268)
  %xor105 = xor i64 %xor91, %xor102, !dbg !5474
    #dbg_value(i64 %xor105, !5475, !DIExpression(), !5268)
  %xor106 = xor i64 %and87, %xor102, !dbg !5476
    #dbg_value(i64 %xor106, !5477, !DIExpression(), !5268)
  %xor107 = xor i64 %xor97, %xor103, !dbg !5478
    #dbg_value(i64 %xor107, !5479, !DIExpression(), !5268)
  %xor108 = xor i64 %xor94, %xor103, !dbg !5480
    #dbg_value(i64 %xor108, !5481, !DIExpression(), !5268)
  %xor109 = xor i64 %and77, %xor104, !dbg !5482
    #dbg_value(i64 %xor109, !5483, !DIExpression(), !5268)
  %xor110 = xor i64 %xor106, %xor107, !dbg !5484
    #dbg_value(i64 %xor110, !5485, !DIExpression(), !5268)
  %xor111 = xor i64 %and74, %xor108, !dbg !5486
    #dbg_value(i64 %xor111, !5487, !DIExpression(), !5268)
  %xor112 = xor i64 %xor104, %xor108, !dbg !5488
    #dbg_value(i64 %xor112, !5489, !DIExpression(), !5268)
  %17 = xor i64 %xor107, %xor101, !dbg !5490
  %xor113 = xor i64 %17, -1, !dbg !5490
    #dbg_value(i64 %xor113, !5491, !DIExpression(), !5268)
  %18 = xor i64 %xor105, %xor93, !dbg !5492
  %xor115 = xor i64 %18, -1, !dbg !5492
    #dbg_value(i64 %xor115, !5493, !DIExpression(), !5268)
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor110), !5494, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5268)
  %xor117 = xor i64 %xor98, %xor111, !dbg !5495
    #dbg_value(i64 %xor117, !5496, !DIExpression(), !5268)
  %xor118 = xor i64 %xor96, %xor111, !dbg !5497
    #dbg_value(i64 %xor118, !5498, !DIExpression(), !5268)
  %xor119 = xor i64 %xor92, %xor110, !dbg !5499
    #dbg_value(i64 %xor119, !5500, !DIExpression(), !5268)
  %19 = xor i64 %xor117, %xor109, !dbg !5501
  %xor121 = xor i64 %19, -1, !dbg !5501
    #dbg_value(i64 %xor121, !5502, !DIExpression(), !5268)
  %20 = xor i64 %xor110, %xor100, !dbg !5503
  %21 = xor i64 %20, %xor109, !dbg !5503
  %xor123 = xor i64 %21, -1, !dbg !5503
    #dbg_value(i64 %xor123, !5504, !DIExpression(), !5268)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5505
  store i64 %xor112, ptr %arrayidx124, align 8, !dbg !5506
  %arrayidx125 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5507
  store i64 %xor121, ptr %arrayidx125, align 8, !dbg !5508
  %arrayidx126 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5509
  store i64 %xor123, ptr %arrayidx126, align 8, !dbg !5510
  %arrayidx127 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5511
  store i64 %xor117, ptr %arrayidx127, align 8, !dbg !5512
  %arrayidx128 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5513
  store i64 %xor118, ptr %arrayidx128, align 8, !dbg !5514
  %arrayidx129 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5515
  store i64 %xor119, ptr %arrayidx129, align 8, !dbg !5516
  %arrayidx130 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5517
  store i64 %xor113, ptr %arrayidx130, align 8, !dbg !5518
  store i64 %xor115, ptr %q, align 8, !dbg !5519
  ret void, !dbg !5520
}

; Function Attrs: nounwind
define internal fastcc i32 @br_dec32le(ptr noundef %src) unnamed_addr #0 !dbg !5521 {
entry:
    #dbg_value(ptr %src, !5524, !DIExpression(), !5525)
  %0 = load i8, ptr %src, align 1, !dbg !5526
  %conv = zext i8 %0 to i32, !dbg !5527
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %src, i32 1, !dbg !5528
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !5528
  %conv2 = zext i8 %1 to i32, !dbg !5529
  %shl = shl nuw nsw i32 %conv2, 8, !dbg !5530
  %or = or disjoint i32 %shl, %conv, !dbg !5531
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %src, i32 2, !dbg !5532
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !5532
  %conv4 = zext i8 %2 to i32, !dbg !5533
  %shl5 = shl nuw nsw i32 %conv4, 16, !dbg !5534
  %or6 = or disjoint i32 %or, %shl5, !dbg !5535
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %src, i32 3, !dbg !5536
  %3 = load i8, ptr %arrayidx7, align 1, !dbg !5536
  %conv8 = zext i8 %3 to i32, !dbg !5537
  %shl9 = shl nuw i32 %conv8, 24, !dbg !5538
  %or10 = or disjoint i32 %or6, %shl9, !dbg !5539
  ret i32 %or10, !dbg !5540
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5541 {
entry:
    #dbg_value(ptr %r, !5542, !DIExpression(), !5543)
    #dbg_value(ptr %key, !5544, !DIExpression(), !5543)
  call void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5545
  ret void, !dbg !5546
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5547 {
entry:
  %skey = alloca [26 x i64], align 8
    #dbg_value(ptr %r, !5555, !DIExpression(), !5556)
    #dbg_value(ptr %key, !5557, !DIExpression(), !5556)
    #dbg_declare(ptr %skey, !5558, !DIExpression(), !5562)
  %call = call dereferenceable_or_null(832) ptr @malloc(i32 noundef 832) #7, !dbg !5563
  store ptr %call, ptr %r, align 4, !dbg !5564
  %cmp = icmp eq ptr %call, null, !dbg !5565
  br i1 %cmp, label %if.then, label %if.end, !dbg !5565

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !5567
  br label %if.end, !dbg !5569

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 24) #4, !dbg !5570
  %0 = load ptr, ptr %r, align 4, !dbg !5571
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 12) #4, !dbg !5572
  ret void, !dbg !5573
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5574 {
entry:
    #dbg_value(ptr %r, !5575, !DIExpression(), !5576)
    #dbg_value(ptr %key, !5577, !DIExpression(), !5576)
  call void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5578
  ret void, !dbg !5579
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5580 {
entry:
  %skey = alloca [30 x i64], align 8
    #dbg_value(ptr %r, !5588, !DIExpression(), !5589)
    #dbg_value(ptr %key, !5590, !DIExpression(), !5589)
    #dbg_declare(ptr %skey, !5591, !DIExpression(), !5595)
  %call = call dereferenceable_or_null(960) ptr @malloc(i32 noundef 960) #7, !dbg !5596
  store ptr %call, ptr %r, align 4, !dbg !5597
  %cmp = icmp eq ptr %call, null, !dbg !5598
  br i1 %cmp, label %if.then, label %if.end, !dbg !5598

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !5600
  br label %if.end, !dbg !5602

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 32) #4, !dbg !5603
  %0 = load ptr, ptr %r, align 4, !dbg !5604
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 14) #4, !dbg !5605
  ret void, !dbg !5606
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5607 {
entry:
    #dbg_value(ptr %r, !5608, !DIExpression(), !5609)
    #dbg_value(ptr %key, !5610, !DIExpression(), !5609)
  call void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5611
  ret void, !dbg !5612
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5613 {
entry:
    #dbg_value(ptr %out, !5618, !DIExpression(), !5619)
    #dbg_value(ptr %in, !5620, !DIExpression(), !5619)
    #dbg_value(i32 %nblocks, !5621, !DIExpression(), !5619)
    #dbg_value(ptr %ctx, !5622, !DIExpression(), !5619)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5623
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 10) #4, !dbg !5624
  ret void, !dbg !5625
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5626 {
entry:
  %blocks = alloca [16 x i32], align 4
  %t = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5629, !DIExpression(), !5630)
    #dbg_value(ptr %in, !5631, !DIExpression(), !5630)
    #dbg_value(i32 %nblocks, !5632, !DIExpression(), !5630)
    #dbg_value(ptr %rkeys, !5633, !DIExpression(), !5630)
    #dbg_value(i32 %nrounds, !5634, !DIExpression(), !5630)
    #dbg_declare(ptr %blocks, !5635, !DIExpression(), !5637)
    #dbg_declare(ptr %t, !5638, !DIExpression(), !5642)
  br label %while.cond, !dbg !5643

while.cond:                                       ; preds = %while.body, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %sub, %while.body ]
  %in.addr.0 = phi ptr [ %in, %entry ], [ %add.ptr, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr2, %while.body ]
    #dbg_value(ptr %out.addr.0, !5629, !DIExpression(), !5630)
    #dbg_value(ptr %in.addr.0, !5631, !DIExpression(), !5630)
    #dbg_value(i32 %nblocks.addr.0, !5632, !DIExpression(), !5630)
  %cmp = icmp ugt i32 %nblocks.addr.0, 3, !dbg !5644
  br i1 %cmp, label %while.body, label %while.end, !dbg !5643

while.body:                                       ; preds = %while.cond
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef 16, ptr noundef %in.addr.0) #4, !dbg !5645
  call fastcc void @aes_ecb4x(ptr noundef %out.addr.0, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !5647
  %sub = add i32 %nblocks.addr.0, -4, !dbg !5648
    #dbg_value(i32 %sub, !5632, !DIExpression(), !5630)
  %add.ptr = getelementptr inbounds nuw i8, ptr %in.addr.0, i32 64, !dbg !5649
    #dbg_value(ptr %add.ptr, !5631, !DIExpression(), !5630)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !5650
    #dbg_value(ptr %add.ptr2, !5629, !DIExpression(), !5630)
  br label %while.cond, !dbg !5643, !llvm.loop !5651

while.end:                                        ; preds = %while.cond
  %nblocks.addr.0.lcssa = phi i32 [ %nblocks.addr.0, %while.cond ]
  %in.addr.0.lcssa = phi ptr [ %in.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %tobool.not = icmp eq i32 %nblocks.addr.0.lcssa, 0, !dbg !5653
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !5653

if.then:                                          ; preds = %while.end
  %mul = shl nuw nsw i32 %nblocks.addr.0.lcssa, 2, !dbg !5655
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef %mul, ptr noundef %in.addr.0.lcssa) #4, !dbg !5657
  call fastcc void @aes_ecb4x(ptr noundef nonnull %t, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !5658
  %mul7 = shl nuw nsw i32 %nblocks.addr.0.lcssa, 4, !dbg !5659
  %call = call ptr @memcpy(ptr noundef %out.addr.0.lcssa, ptr noundef nonnull %t, i32 noundef %mul7) #6, !dbg !5660
  br label %if.end, !dbg !5661

if.end:                                           ; preds = %if.then, %while.end
  ret void, !dbg !5662
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5663 {
entry:
  %w = alloca [16 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %out, !5666, !DIExpression(), !5667)
    #dbg_value(ptr %ivw, !5668, !DIExpression(), !5667)
    #dbg_value(ptr %sk_exp, !5669, !DIExpression(), !5667)
    #dbg_value(i32 %nrounds, !5670, !DIExpression(), !5667)
    #dbg_declare(ptr %w, !5671, !DIExpression(), !5672)
    #dbg_declare(ptr %q, !5673, !DIExpression(), !5674)
  %call = call ptr @memcpy(ptr noundef nonnull %w, ptr noundef nonnull %ivw, i32 noundef 64) #6, !dbg !5675
    #dbg_value(i32 0, !5676, !DIExpression(), !5667)
  br label %for.cond, !dbg !5677

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5679
    #dbg_value(i32 %i.0, !5676, !DIExpression(), !5667)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !5680
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5682

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.0, !dbg !5683
  %add = or disjoint i32 %i.0, 4, !dbg !5685
  %arrayidx1 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add, !dbg !5686
  %add.ptr.idx = shl nuw nsw i32 %i.0, 4, !dbg !5687
  %add.ptr = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr.idx, !dbg !5687
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx1, ptr noundef nonnull %add.ptr) #4, !dbg !5688
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5689
    #dbg_value(i32 %inc, !5676, !DIExpression(), !5667)
  br label %for.cond, !dbg !5690, !llvm.loop !5691

for.end:                                          ; preds = %for.cond
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5693
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk_exp) #4, !dbg !5694
    #dbg_value(i32 1, !5676, !DIExpression(), !5667)
  br label %for.cond5, !dbg !5695

for.cond5:                                        ; preds = %for.body7, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc15, %for.body7 ], !dbg !5697
    #dbg_value(i32 %i.1, !5676, !DIExpression(), !5667)
  %exitcond1 = icmp ne i32 %i.1, %nrounds, !dbg !5698
  br i1 %exitcond1, label %for.body7, label %for.end16, !dbg !5700

for.body7:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5701
  call fastcc void @shift_rows(ptr noundef nonnull %q) #4, !dbg !5703
  call fastcc void @mix_columns(ptr noundef nonnull %q) #4, !dbg !5704
  %add.ptr13.idx = shl nuw nsw i32 %i.1, 6, !dbg !5705
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr13.idx, !dbg !5705
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr13) #4, !dbg !5706
  %inc15 = add nuw nsw i32 %i.1, 1, !dbg !5707
    #dbg_value(i32 %inc15, !5676, !DIExpression(), !5667)
  br label %for.cond5, !dbg !5708, !llvm.loop !5709

for.end16:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5711
  call fastcc void @shift_rows(ptr noundef nonnull %q) #4, !dbg !5712
  %add.ptr20.idx = shl nuw nsw i32 %nrounds, 6, !dbg !5713
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr20.idx, !dbg !5713
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr20) #4, !dbg !5714
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5715
    #dbg_value(i32 0, !5676, !DIExpression(), !5667)
  br label %for.cond22, !dbg !5716

for.cond22:                                       ; preds = %for.body24, %for.end16
  %i.2 = phi i32 [ 0, %for.end16 ], [ %inc32, %for.body24 ], !dbg !5718
    #dbg_value(i32 %i.2, !5676, !DIExpression(), !5667)
  %exitcond2 = icmp ne i32 %i.2, 4, !dbg !5719
  br i1 %exitcond2, label %for.body24, label %for.end33, !dbg !5721

for.body24:                                       ; preds = %for.cond22
  %add.ptr27.idx = shl nuw nsw i32 %i.2, 4, !dbg !5722
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr27.idx, !dbg !5722
  %arrayidx28 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.2, !dbg !5724
  %0 = load i64, ptr %arrayidx28, align 8, !dbg !5724
  %add29 = or disjoint i32 %i.2, 4, !dbg !5725
  %arrayidx30 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add29, !dbg !5726
  %1 = load i64, ptr %arrayidx30, align 8, !dbg !5726
  call fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %add.ptr27, i64 noundef %0, i64 noundef %1) #4, !dbg !5727
  %inc32 = add nuw nsw i32 %i.2, 1, !dbg !5728
    #dbg_value(i32 %inc32, !5676, !DIExpression(), !5667)
  br label %for.cond22, !dbg !5729, !llvm.loop !5730

for.end33:                                        ; preds = %for.cond22
  call fastcc void @br_range_enc32le(ptr noundef %out, ptr noundef nonnull %w, i32 noundef 16) #4, !dbg !5732
  ret void, !dbg !5733
}

; Function Attrs: nounwind
define internal fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk) unnamed_addr #0 !dbg !5734 {
entry:
    #dbg_value(ptr %q, !5737, !DIExpression(), !5738)
    #dbg_value(ptr %sk, !5739, !DIExpression(), !5738)
  %0 = load i64, ptr %sk, align 8, !dbg !5740
  %1 = load i64, ptr %q, align 8, !dbg !5741
  %xor = xor i64 %1, %0, !dbg !5741
  store i64 %xor, ptr %q, align 8, !dbg !5741
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %sk, i32 8, !dbg !5742
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5742
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5743
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5744
  %xor4 = xor i64 %3, %2, !dbg !5744
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !5744
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %sk, i32 16, !dbg !5745
  %4 = load i64, ptr %arrayidx5, align 8, !dbg !5745
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5746
  %5 = load i64, ptr %arrayidx6, align 8, !dbg !5747
  %xor7 = xor i64 %5, %4, !dbg !5747
  store i64 %xor7, ptr %arrayidx6, align 8, !dbg !5747
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %sk, i32 24, !dbg !5748
  %6 = load i64, ptr %arrayidx8, align 8, !dbg !5748
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5749
  %7 = load i64, ptr %arrayidx9, align 8, !dbg !5750
  %xor10 = xor i64 %7, %6, !dbg !5750
  store i64 %xor10, ptr %arrayidx9, align 8, !dbg !5750
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %sk, i32 32, !dbg !5751
  %8 = load i64, ptr %arrayidx11, align 8, !dbg !5751
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5752
  %9 = load i64, ptr %arrayidx12, align 8, !dbg !5753
  %xor13 = xor i64 %9, %8, !dbg !5753
  store i64 %xor13, ptr %arrayidx12, align 8, !dbg !5753
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %sk, i32 40, !dbg !5754
  %10 = load i64, ptr %arrayidx14, align 8, !dbg !5754
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5755
  %11 = load i64, ptr %arrayidx15, align 8, !dbg !5756
  %xor16 = xor i64 %11, %10, !dbg !5756
  store i64 %xor16, ptr %arrayidx15, align 8, !dbg !5756
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %sk, i32 48, !dbg !5757
  %12 = load i64, ptr %arrayidx17, align 8, !dbg !5757
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5758
  %13 = load i64, ptr %arrayidx18, align 8, !dbg !5759
  %xor19 = xor i64 %13, %12, !dbg !5759
  store i64 %xor19, ptr %arrayidx18, align 8, !dbg !5759
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %sk, i32 56, !dbg !5760
  %14 = load i64, ptr %arrayidx20, align 8, !dbg !5760
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5761
  %15 = load i64, ptr %arrayidx21, align 8, !dbg !5762
  %xor22 = xor i64 %15, %14, !dbg !5762
  store i64 %xor22, ptr %arrayidx21, align 8, !dbg !5762
  ret void, !dbg !5763
}

; Function Attrs: nounwind
define internal fastcc void @shift_rows(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5764 {
entry:
    #dbg_value(ptr %q, !5765, !DIExpression(), !5766)
    #dbg_value(i32 0, !5767, !DIExpression(), !5766)
  br label %for.cond, !dbg !5768

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5770
    #dbg_value(i32 %i.0, !5767, !DIExpression(), !5766)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !5771
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5773

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5774
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5774
    #dbg_value(i64 %0, !5776, !DIExpression(), !5777)
  %and = and i64 %0, 65535, !dbg !5778
  %and1 = lshr i64 %0, 4, !dbg !5779
  %shr = and i64 %and1, 268369920, !dbg !5779
  %or = or disjoint i64 %and, %shr, !dbg !5780
  %and2 = shl i64 %0, 12, !dbg !5781
  %shl = and i64 %and2, 4026531840, !dbg !5781
  %or3 = or disjoint i64 %or, %shl, !dbg !5782
  %and4 = lshr i64 %0, 8, !dbg !5783
  %shr5 = and i64 %and4, 1095216660480, !dbg !5783
  %or6 = or disjoint i64 %or3, %shr5, !dbg !5784
  %and7 = shl i64 %0, 8, !dbg !5785
  %shl8 = and i64 %and7, 280375465082880, !dbg !5785
  %or9 = or disjoint i64 %or6, %shl8, !dbg !5786
  %and10 = lshr i64 %0, 12, !dbg !5787
  %shr11 = and i64 %and10, 4222124650659840, !dbg !5787
  %or12 = or disjoint i64 %or9, %shr11, !dbg !5788
  %and13 = shl i64 %0, 4, !dbg !5789
  %shl14 = and i64 %and13, -4503599627370496, !dbg !5789
  %or15 = or i64 %or12, %shl14, !dbg !5790
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5791
  store i64 %or15, ptr %arrayidx16, align 8, !dbg !5792
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5793
    #dbg_value(i32 %inc, !5767, !DIExpression(), !5766)
  br label %for.cond, !dbg !5794, !llvm.loop !5795

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5797
}

; Function Attrs: nounwind
define internal fastcc void @mix_columns(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5798 {
entry:
    #dbg_value(ptr %q, !5799, !DIExpression(), !5800)
  %0 = load i64, ptr %q, align 8, !dbg !5801
    #dbg_value(i64 %0, !5802, !DIExpression(), !5800)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5803
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5803
    #dbg_value(i64 %1, !5804, !DIExpression(), !5800)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5805
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5805
    #dbg_value(i64 %2, !5806, !DIExpression(), !5800)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5807
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5807
    #dbg_value(i64 %3, !5808, !DIExpression(), !5800)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5809
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5809
    #dbg_value(i64 %4, !5810, !DIExpression(), !5800)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5811
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5811
    #dbg_value(i64 %5, !5812, !DIExpression(), !5800)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5813
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5813
    #dbg_value(i64 %6, !5814, !DIExpression(), !5800)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5815
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !5815
    #dbg_value(i64 %7, !5816, !DIExpression(), !5800)
  %8 = shl i64 %0, 48, !dbg !5817
  %9 = lshr i64 %0, 16, !dbg !5817
  %10 = or i64 %8, %9, !dbg !5817
    #dbg_value(i64 %10, !5818, !DIExpression(), !5800)
  %11 = shl i64 %1, 48, !dbg !5819
  %12 = lshr i64 %1, 16, !dbg !5819
  %13 = or i64 %11, %12, !dbg !5819
    #dbg_value(i64 %13, !5820, !DIExpression(), !5800)
  %14 = shl i64 %2, 48, !dbg !5821
  %15 = lshr i64 %2, 16, !dbg !5821
  %16 = or i64 %14, %15, !dbg !5821
    #dbg_value(i64 %16, !5822, !DIExpression(), !5800)
  %17 = shl i64 %3, 48, !dbg !5823
  %18 = lshr i64 %3, 16, !dbg !5823
  %19 = or i64 %17, %18, !dbg !5823
    #dbg_value(i64 %19, !5824, !DIExpression(), !5800)
  %20 = shl i64 %4, 48, !dbg !5825
  %21 = lshr i64 %4, 16, !dbg !5825
  %22 = or i64 %20, %21, !dbg !5825
    #dbg_value(i64 %22, !5826, !DIExpression(), !5800)
  %23 = shl i64 %5, 48, !dbg !5827
  %24 = lshr i64 %5, 16, !dbg !5827
  %25 = or i64 %23, %24, !dbg !5827
    #dbg_value(i64 %25, !5828, !DIExpression(), !5800)
  %26 = shl i64 %6, 48, !dbg !5829
  %27 = lshr i64 %6, 16, !dbg !5829
  %28 = or i64 %26, %27, !dbg !5829
    #dbg_value(i64 %28, !5830, !DIExpression(), !5800)
  %29 = shl i64 %7, 48, !dbg !5831
  %30 = lshr i64 %7, 16, !dbg !5831
  %31 = or i64 %29, %30, !dbg !5831
    #dbg_value(i64 %31, !5832, !DIExpression(), !5800)
  %xor30 = xor i64 %0, %10, !dbg !5833
  %call = call fastcc i64 @rotr32(i64 noundef %xor30) #4, !dbg !5834
  %32 = xor i64 %31, %call, !dbg !5835
  %33 = xor i64 %32, %7, !dbg !5835
  %xor31 = xor i64 %33, %10, !dbg !5835
  store i64 %xor31, ptr %q, align 8, !dbg !5836
  %xor37 = xor i64 %1, %13, !dbg !5837
  %call38 = call fastcc i64 @rotr32(i64 noundef %xor37) #4, !dbg !5838
  %34 = xor i64 %10, %call38, !dbg !5839
  %35 = xor i64 %34, %0, !dbg !5839
  %36 = xor i64 %35, %7, !dbg !5839
  %37 = xor i64 %36, %31, !dbg !5839
  %xor39 = xor i64 %37, %13, !dbg !5839
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5840
  store i64 %xor39, ptr %arrayidx40, align 8, !dbg !5841
  %xor43 = xor i64 %2, %16, !dbg !5842
  %call44 = call fastcc i64 @rotr32(i64 noundef %xor43) #4, !dbg !5843
  %38 = xor i64 %13, %call44, !dbg !5844
  %39 = xor i64 %38, %1, !dbg !5844
  %xor45 = xor i64 %39, %16, !dbg !5844
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5845
  store i64 %xor45, ptr %arrayidx46, align 8, !dbg !5846
  %xor51 = xor i64 %3, %19, !dbg !5847
  %call52 = call fastcc i64 @rotr32(i64 noundef %xor51) #4, !dbg !5848
  %40 = xor i64 %16, %call52, !dbg !5849
  %41 = xor i64 %40, %2, !dbg !5849
  %42 = xor i64 %41, %7, !dbg !5849
  %43 = xor i64 %42, %31, !dbg !5849
  %xor53 = xor i64 %43, %19, !dbg !5849
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5850
  store i64 %xor53, ptr %arrayidx54, align 8, !dbg !5851
  %xor59 = xor i64 %4, %22, !dbg !5852
  %call60 = call fastcc i64 @rotr32(i64 noundef %xor59) #4, !dbg !5853
  %44 = xor i64 %19, %call60, !dbg !5854
  %45 = xor i64 %44, %3, !dbg !5854
  %46 = xor i64 %45, %7, !dbg !5854
  %47 = xor i64 %46, %31, !dbg !5854
  %xor61 = xor i64 %47, %22, !dbg !5854
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5855
  store i64 %xor61, ptr %arrayidx62, align 8, !dbg !5856
  %xor65 = xor i64 %5, %25, !dbg !5857
  %call66 = call fastcc i64 @rotr32(i64 noundef %xor65) #4, !dbg !5858
  %48 = xor i64 %22, %call66, !dbg !5859
  %49 = xor i64 %48, %4, !dbg !5859
  %xor67 = xor i64 %49, %25, !dbg !5859
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5860
  store i64 %xor67, ptr %arrayidx68, align 8, !dbg !5861
  %xor71 = xor i64 %6, %28, !dbg !5862
  %call72 = call fastcc i64 @rotr32(i64 noundef %xor71) #4, !dbg !5863
  %50 = xor i64 %25, %call72, !dbg !5864
  %51 = xor i64 %50, %5, !dbg !5864
  %xor73 = xor i64 %51, %28, !dbg !5864
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5865
  store i64 %xor73, ptr %arrayidx74, align 8, !dbg !5866
  %xor77 = xor i64 %7, %31, !dbg !5867
  %call78 = call fastcc i64 @rotr32(i64 noundef %xor77) #4, !dbg !5868
  %52 = xor i64 %28, %call78, !dbg !5869
  %53 = xor i64 %52, %6, !dbg !5869
  %xor79 = xor i64 %53, %31, !dbg !5869
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5870
  store i64 %xor79, ptr %arrayidx80, align 8, !dbg !5871
  ret void, !dbg !5872
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %w, i64 noundef %q0, i64 noundef %q1) unnamed_addr #0 !dbg !5873 {
entry:
    #dbg_value(ptr %w, !5876, !DIExpression(), !5877)
    #dbg_value(i64 %q0, !5878, !DIExpression(), !5877)
    #dbg_value(i64 %q1, !5879, !DIExpression(), !5877)
  %and = and i64 %q0, 71777214294589695, !dbg !5880
    #dbg_value(i64 %and, !5881, !DIExpression(), !5877)
  %and1 = and i64 %q1, 71777214294589695, !dbg !5882
    #dbg_value(i64 %and1, !5883, !DIExpression(), !5877)
  %shr = lshr i64 %q0, 8, !dbg !5884
  %and2 = and i64 %shr, 71776119077928960, !dbg !5885
    #dbg_value(i64 %shr, !5886, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5877)
  %shr3 = lshr i64 %q1, 8, !dbg !5887
  %and4 = and i64 %shr3, 71776119077928960, !dbg !5888
    #dbg_value(i64 %shr3, !5889, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5877)
  %shr5 = lshr i64 %and, 8, !dbg !5890
  %or = or disjoint i64 %and, %shr5, !dbg !5891
    #dbg_value(i64 %or, !5881, !DIExpression(), !5877)
  %shr6 = lshr i64 %and1, 8, !dbg !5892
  %or7 = or disjoint i64 %and1, %shr6, !dbg !5893
    #dbg_value(i64 %or7, !5883, !DIExpression(), !5877)
  %0 = and i64 %q0, 280375465148160, !dbg !5894
  %1 = or disjoint i64 %and2, %0, !dbg !5894
  %or9 = lshr exact i64 %1, 8, !dbg !5894
    #dbg_value(!DIArgList(i64 %and2, i64 %0), !5886, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5877)
  %2 = and i64 %q1, 280375465148160, !dbg !5895
  %3 = or disjoint i64 %and4, %2, !dbg !5895
  %or11 = lshr exact i64 %3, 8, !dbg !5895
    #dbg_value(!DIArgList(i64 %and4, i64 %2), !5889, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5877)
  %and12 = and i64 %or, 281470681808895, !dbg !5896
    #dbg_value(i64 %and12, !5881, !DIExpression(), !5877)
  %and13 = and i64 %or7, 281470681808895, !dbg !5897
    #dbg_value(i64 %and13, !5883, !DIExpression(), !5877)
    #dbg_value(i64 %or9, !5886, !DIExpression(), !5877)
    #dbg_value(i64 %or11, !5889, !DIExpression(), !5877)
  %shr16 = lshr i64 %and12, 16, !dbg !5898
  %or181 = or disjoint i64 %and12, %shr16, !dbg !5899
  %or18 = trunc i64 %or181 to i32, !dbg !5899
  store i32 %or18, ptr %w, align 4, !dbg !5900
  %shr20 = lshr i64 %and13, 16, !dbg !5901
  %or222 = or disjoint i64 %and13, %shr20, !dbg !5902
  %or22 = trunc i64 %or222 to i32, !dbg !5902
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5903
  store i32 %or22, ptr %arrayidx23, align 4, !dbg !5904
  %shr25 = lshr i64 %1, 24, !dbg !5905
  %or273 = or disjoint i64 %or9, %shr25, !dbg !5906
  %or27 = trunc i64 %or273 to i32, !dbg !5906
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5907
  store i32 %or27, ptr %arrayidx28, align 4, !dbg !5908
  %shr30 = lshr i64 %3, 24, !dbg !5909
  %or324 = or disjoint i64 %or11, %shr30, !dbg !5910
  %or32 = trunc i64 %or324 to i32, !dbg !5910
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5911
  store i32 %or32, ptr %arrayidx33, align 4, !dbg !5912
  ret void, !dbg !5913
}

; Function Attrs: nounwind
define internal fastcc void @br_range_enc32le(ptr noundef %dst, ptr noundef nonnull %v, i32 noundef %num) unnamed_addr #0 !dbg !5914 {
entry:
    #dbg_value(ptr %dst, !5917, !DIExpression(), !5918)
    #dbg_value(ptr %v, !5919, !DIExpression(), !5918)
    #dbg_value(i32 16, !5920, !DIExpression(), !5918)
  br label %while.cond, !dbg !5921

while.cond:                                       ; preds = %while.body, %entry
  %num.addr.0 = phi i32 [ 16, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
  %dst.addr.0 = phi ptr [ %dst, %entry ], [ %add.ptr, %while.body ]
    #dbg_value(ptr %dst.addr.0, !5917, !DIExpression(), !5918)
    #dbg_value(ptr %v.addr.0, !5919, !DIExpression(), !5918)
    #dbg_value(i32 %num.addr.0, !5920, !DIExpression(), !5918)
    #dbg_value(i32 %num.addr.0, !5920, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5918)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5922
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5921

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5923
    #dbg_value(i32 %dec, !5920, !DIExpression(), !5918)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5924
    #dbg_value(ptr %incdec.ptr, !5919, !DIExpression(), !5918)
  %0 = load i32, ptr %v.addr.0, align 4, !dbg !5926
  call fastcc void @br_enc32le(ptr noundef %dst.addr.0, i32 noundef %0) #4, !dbg !5927
  %add.ptr = getelementptr inbounds nuw i8, ptr %dst.addr.0, i32 4, !dbg !5928
    #dbg_value(ptr %add.ptr, !5917, !DIExpression(), !5918)
  br label %while.cond, !dbg !5921, !llvm.loop !5929

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5931
}

; Function Attrs: nounwind
define internal fastcc void @br_enc32le(ptr noundef %dst, i32 noundef %x) unnamed_addr #0 !dbg !5932 {
entry:
    #dbg_value(ptr %dst, !5935, !DIExpression(), !5936)
    #dbg_value(i32 %x, !5937, !DIExpression(), !5936)
  %conv = trunc i32 %x to i8, !dbg !5938
  store i8 %conv, ptr %dst, align 1, !dbg !5939
  %shr = lshr i32 %x, 8, !dbg !5940
  %conv1 = trunc i32 %shr to i8, !dbg !5941
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %dst, i32 1, !dbg !5942
  store i8 %conv1, ptr %arrayidx2, align 1, !dbg !5943
  %shr3 = lshr i32 %x, 16, !dbg !5944
  %conv4 = trunc i32 %shr3 to i8, !dbg !5945
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %dst, i32 2, !dbg !5946
  store i8 %conv4, ptr %arrayidx5, align 1, !dbg !5947
  %shr6 = lshr i32 %x, 24, !dbg !5948
  %conv7 = trunc nuw i32 %shr6 to i8, !dbg !5949
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %dst, i32 3, !dbg !5950
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !5951
  ret void, !dbg !5952
}

; Function Attrs: nounwind
define internal fastcc i64 @rotr32(i64 noundef %x) unnamed_addr #0 !dbg !5953 {
entry:
    #dbg_value(i64 %x, !5956, !DIExpression(), !5957)
  %0 = shl i64 %x, 32, !dbg !5958
  %1 = lshr i64 %x, 32, !dbg !5958
  %2 = or i64 %0, %1, !dbg !5958
  ret i64 %2, !dbg !5959
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5960 {
entry:
    #dbg_value(ptr %out, !5963, !DIExpression(), !5964)
    #dbg_value(i32 %outlen, !5965, !DIExpression(), !5964)
    #dbg_value(ptr %iv, !5966, !DIExpression(), !5964)
    #dbg_value(ptr %ctx, !5967, !DIExpression(), !5964)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5968
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 10) #4, !dbg !5969
  ret void, !dbg !5970
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5971 {
entry:
  %ivw = alloca [16 x i32], align 4
  %tmp = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5974, !DIExpression(), !5975)
    #dbg_value(i32 %outlen, !5976, !DIExpression(), !5975)
    #dbg_value(ptr %iv, !5977, !DIExpression(), !5975)
    #dbg_value(ptr %rkeys, !5978, !DIExpression(), !5975)
    #dbg_value(i32 %nrounds, !5979, !DIExpression(), !5975)
    #dbg_declare(ptr %ivw, !5980, !DIExpression(), !5981)
    #dbg_value(i32 0, !5982, !DIExpression(), !5975)
  call fastcc void @br_range_dec32le(ptr noundef nonnull %ivw, i32 noundef 3, ptr noundef %iv) #4, !dbg !5983
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 16, !dbg !5984
  %call = call ptr @memcpy(ptr noundef nonnull %add.ptr, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !5985
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %ivw, i32 32, !dbg !5986
  %call6 = call ptr @memcpy(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !5987
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %ivw, i32 48, !dbg !5988
  %call10 = call ptr @memcpy(ptr noundef nonnull %add.ptr8, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !5989
  %call11 = call fastcc i32 @br_swap32(i32 noundef 0) #4, !dbg !5990
  %arrayidx = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !5991
  store i32 %call11, ptr %arrayidx, align 4, !dbg !5992
  %call12 = call fastcc i32 @br_swap32(i32 noundef 1) #4, !dbg !5993
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !5994
  store i32 %call12, ptr %arrayidx13, align 4, !dbg !5995
  %call15 = call fastcc i32 @br_swap32(i32 noundef 2) #4, !dbg !5996
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !5997
  store i32 %call15, ptr %arrayidx16, align 4, !dbg !5998
  %call18 = call fastcc i32 @br_swap32(i32 noundef 3) #4, !dbg !5999
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !6000
  store i32 %call18, ptr %arrayidx19, align 4, !dbg !6001
  br label %while.cond, !dbg !6002

while.cond:                                       ; preds = %while.body, %entry
  %outlen.addr.0 = phi i32 [ %outlen, %entry ], [ %sub, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr21, %while.body ]
    #dbg_value(ptr %out.addr.0, !5974, !DIExpression(), !5975)
    #dbg_value(i32 %outlen.addr.0, !5976, !DIExpression(), !5975)
  %cmp = icmp ugt i32 %outlen.addr.0, 64, !dbg !6003
  br i1 %cmp, label %while.body, label %while.end, !dbg !6002

while.body:                                       ; preds = %while.cond
  call fastcc void @aes_ctr4x(ptr noundef %out.addr.0, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !6004
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !6006
    #dbg_value(ptr %add.ptr21, !5974, !DIExpression(), !5975)
  %sub = add i32 %outlen.addr.0, -64, !dbg !6007
    #dbg_value(i32 %sub, !5976, !DIExpression(), !5975)
  br label %while.cond, !dbg !6002, !llvm.loop !6008

while.end:                                        ; preds = %while.cond
  %outlen.addr.0.lcssa = phi i32 [ %outlen.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %cmp22.not = icmp eq i32 %outlen.addr.0.lcssa, 0, !dbg !6010
  br i1 %cmp22.not, label %if.end, label %if.then, !dbg !6010

if.then:                                          ; preds = %while.end
    #dbg_declare(ptr %tmp, !6012, !DIExpression(), !6014)
  call fastcc void @aes_ctr4x(ptr noundef nonnull %tmp, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !6015
    #dbg_value(i32 0, !6016, !DIExpression(), !5975)
  br label %for.cond, !dbg !6017

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !6019
    #dbg_value(i32 %i.0, !6016, !DIExpression(), !5975)
  %cmp25 = icmp ult i32 %i.0, %outlen.addr.0.lcssa, !dbg !6020
  br i1 %cmp25, label %for.body, label %if.end.loopexit, !dbg !6022

for.body:                                         ; preds = %for.cond
  %arrayidx26 = getelementptr inbounds nuw [64 x i8], ptr %tmp, i32 0, i32 %i.0, !dbg !6023
  %0 = load i8, ptr %arrayidx26, align 1, !dbg !6023
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out.addr.0.lcssa, i32 %i.0, !dbg !6025
  store i8 %0, ptr %arrayidx27, align 1, !dbg !6026
  %inc = add nuw nsw i32 %i.0, 1, !dbg !6027
    #dbg_value(i32 %inc, !6016, !DIExpression(), !5975)
  br label %for.cond, !dbg !6028, !llvm.loop !6029

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !6031

if.end:                                           ; preds = %if.end.loopexit, %while.end
  ret void, !dbg !6031
}

; Function Attrs: nounwind
define internal fastcc i32 @br_swap32(i32 noundef %x) unnamed_addr #0 !dbg !6032 {
entry:
    #dbg_value(i32 %x, !6033, !DIExpression(), !6034)
    #dbg_value(!DIArgList(i32 %x, i32 %x), !6033, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 18446744073692839680, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shr, DW_OP_constu, 16711935, DW_OP_and, DW_OP_or, DW_OP_stack_value), !6034)
  %0 = and i32 %x, 255, !dbg !6035
  %1 = shl i32 %0, 24, !dbg !6035
  %2 = and i32 %x, 65280, !dbg !6035
  %3 = shl i32 %2, 8, !dbg !6035
  %4 = and i32 %x, 16711680, !dbg !6035
  %5 = lshr i32 %4, 8, !dbg !6035
  %6 = and i32 %x, -16777216, !dbg !6035
  %7 = lshr i32 %6, 24, !dbg !6035
  %8 = or i32 %1, %3, !dbg !6035
  %9 = or i32 %8, %5, !dbg !6035
  %10 = or i32 %9, %7, !dbg !6035
  ret i32 %10, !dbg !6036
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !6037 {
entry:
    #dbg_value(ptr %out, !6040, !DIExpression(), !6041)
    #dbg_value(ptr %ivw, !6042, !DIExpression(), !6041)
    #dbg_value(ptr %sk_exp, !6043, !DIExpression(), !6041)
    #dbg_value(i32 %nrounds, !6044, !DIExpression(), !6041)
  call fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef %ivw, ptr noundef %sk_exp, i32 noundef %nrounds) #4, !dbg !6045
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !6046
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr) #4, !dbg !6047
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !6048
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr1) #4, !dbg !6049
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !6050
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr2) #4, !dbg !6051
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !6052
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr3) #4, !dbg !6053
  ret void, !dbg !6054
}

; Function Attrs: nounwind
define internal fastcc void @inc4_be(ptr noundef nonnull %x) unnamed_addr #0 !dbg !6055 {
entry:
    #dbg_value(ptr %x, !6058, !DIExpression(), !6059)
  %0 = load i32, ptr %x, align 4, !dbg !6060
  %call = call fastcc i32 @br_swap32(i32 noundef %0) #4, !dbg !6061
  %add = add i32 %call, 4, !dbg !6062
    #dbg_value(i32 %add, !6063, !DIExpression(), !6059)
  %call1 = call fastcc i32 @br_swap32(i32 noundef %add) #4, !dbg !6064
  store i32 %call1, ptr %x, align 4, !dbg !6065
  ret void, !dbg !6066
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6067 {
entry:
    #dbg_value(ptr %out, !6072, !DIExpression(), !6073)
    #dbg_value(ptr %in, !6074, !DIExpression(), !6073)
    #dbg_value(i32 %nblocks, !6075, !DIExpression(), !6073)
    #dbg_value(ptr %ctx, !6076, !DIExpression(), !6073)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6077
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 12) #4, !dbg !6078
  ret void, !dbg !6079
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6080 {
entry:
    #dbg_value(ptr %out, !6083, !DIExpression(), !6084)
    #dbg_value(i32 %outlen, !6085, !DIExpression(), !6084)
    #dbg_value(ptr %iv, !6086, !DIExpression(), !6084)
    #dbg_value(ptr %ctx, !6087, !DIExpression(), !6084)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6088
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 12) #4, !dbg !6089
  ret void, !dbg !6090
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6091 {
entry:
    #dbg_value(ptr %out, !6096, !DIExpression(), !6097)
    #dbg_value(ptr %in, !6098, !DIExpression(), !6097)
    #dbg_value(i32 %nblocks, !6099, !DIExpression(), !6097)
    #dbg_value(ptr %ctx, !6100, !DIExpression(), !6097)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6101
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 14) #4, !dbg !6102
  ret void, !dbg !6103
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6104 {
entry:
    #dbg_value(ptr %out, !6107, !DIExpression(), !6108)
    #dbg_value(i32 %outlen, !6109, !DIExpression(), !6108)
    #dbg_value(ptr %iv, !6110, !DIExpression(), !6108)
    #dbg_value(ptr %ctx, !6111, !DIExpression(), !6108)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6112
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 14) #4, !dbg !6113
  ret void, !dbg !6114
}

; Function Attrs: nounwind
define dso_local void @aes128_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6115 {
entry:
    #dbg_value(ptr %r, !6118, !DIExpression(), !6119)
  %0 = load ptr, ptr %r, align 4, !dbg !6120
  call void @free(ptr noundef %0) #6, !dbg !6121
  ret void, !dbg !6122
}

; Function Attrs: nounwind
define dso_local void @aes192_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6123 {
entry:
    #dbg_value(ptr %r, !6126, !DIExpression(), !6127)
  %0 = load ptr, ptr %r, align 4, !dbg !6128
  call void @free(ptr noundef %0) #6, !dbg !6129
  ret void, !dbg !6130
}

; Function Attrs: nounwind
define dso_local void @aes256_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6131 {
entry:
    #dbg_value(ptr %r, !6134, !DIExpression(), !6135)
  %0 = load ptr, ptr %r, align 4, !dbg !6136
  call void @free(ptr noundef %0) #6, !dbg !6137
  ret void, !dbg !6138
}

; Function Attrs: nounwind
define dso_local i32 @AES_128_CTR(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef %input, i32 noundef %inputByteLen) local_unnamed_addr #0 !dbg !6139 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
  %iv = alloca [16 x i8], align 1
    #dbg_value(ptr %output, !6142, !DIExpression(), !6143)
    #dbg_value(i32 %outputByteLen, !6144, !DIExpression(), !6143)
    #dbg_value(ptr %input, !6145, !DIExpression(), !6143)
    #dbg_value(i32 %inputByteLen, !6146, !DIExpression(), !6143)
    #dbg_declare(ptr %ctx, !6147, !DIExpression(), !6148)
    #dbg_declare(ptr %iv, !6149, !DIExpression(), !6150)
  call void @mayo_memset(ptr %iv, i8 0, i32 16), !dbg !6150
  call void @aes128_ctr_keyexp(ptr noundef nonnull %ctx, ptr noundef %input) #4, !dbg !6151
  call void @aes128_ctr(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef nonnull %iv, ptr noundef nonnull %ctx) #4, !dbg !6152
  call void @aes128_ctx_release(ptr noundef nonnull %ctx) #4, !dbg !6153
  ret i32 %outputByteLen, !dbg !6154
}

; Function Attrs: nounwind
define dso_local void @AES_256_ECB(ptr noundef %input, ptr noundef %key, ptr noundef %output) local_unnamed_addr #0 !dbg !6155 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %input, !6158, !DIExpression(), !6159)
    #dbg_value(ptr %key, !6160, !DIExpression(), !6159)
    #dbg_value(ptr %output, !6161, !DIExpression(), !6159)
    #dbg_declare(ptr %ctx, !6162, !DIExpression(), !6163)
  call void @aes256_ecb_keyexp(ptr noundef nonnull %ctx, ptr noundef %key) #4, !dbg !6164
  call void @aes256_ecb(ptr noundef %output, ptr noundef %input, i32 noundef 1, ptr noundef nonnull %ctx) #4, !dbg !6165
  call void @aes256_ctx_release(ptr noundef nonnull %ctx) #4, !dbg !6166
  ret void, !dbg !6167
}

; Function Attrs: nounwind
define dso_local void @mayo_secure_free(ptr noundef %mem, i32 noundef %size) local_unnamed_addr #0 !dbg !86 {
entry:
    #dbg_value(ptr %mem, !6168, !DIExpression(), !6169)
    #dbg_value(i32 %size, !6170, !DIExpression(), !6169)
  %tobool.not = icmp eq ptr %mem, null, !dbg !6171
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !6171

if.then:                                          ; preds = %entry
  %0 = load volatile ptr, ptr @mayo_secure_free.memset_func, align 4, !dbg !6173
  %call = call ptr %0(ptr noundef nonnull %mem, i32 noundef 0, i32 noundef %size) #6, !dbg !6173
  call void @free(ptr noundef nonnull %mem) #6, !dbg !6175
  br label %if.end, !dbg !6176

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6177
}

; Function Attrs: nounwind
define dso_local void @mayo_secure_clear(ptr noundef %mem, i32 noundef %size) local_unnamed_addr #0 !dbg !94 {
entry:
    #dbg_value(ptr %mem, !6178, !DIExpression(), !6179)
    #dbg_value(i32 %size, !6180, !DIExpression(), !6179)
  %0 = load volatile ptr, ptr @mayo_secure_clear.memset_func, align 4, !dbg !6181
  %call = call ptr %0(ptr noundef %mem, i32 noundef 0, i32 noundef %size) #6, !dbg !6181
  ret void, !dbg !6182
}

; Function Attrs: nounwind
define dso_local void @AES256_CTR_DRBG_Update(ptr noundef %provided_data, ptr noundef %Key, ptr noundef %V) local_unnamed_addr #0 !dbg !6183 {
entry:
  %temp = alloca [48 x i8], align 1
    #dbg_value(ptr %provided_data, !6186, !DIExpression(), !6187)
    #dbg_value(ptr %Key, !6188, !DIExpression(), !6187)
    #dbg_value(ptr %V, !6189, !DIExpression(), !6187)
    #dbg_declare(ptr %temp, !6190, !DIExpression(), !6194)
    #dbg_value(i32 0, !6195, !DIExpression(), !6197)
  br label %for.cond, !dbg !6198

for.cond:                                         ; preds = %for.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.end ], !dbg !6199
    #dbg_value(i32 %i.0, !6195, !DIExpression(), !6197)
  %exitcond = icmp ne i32 %i.0, 3, !dbg !6200
  br i1 %exitcond, label %for.cond1.preheader, label %for.end10, !dbg !6202

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !6203

for.cond1:                                        ; preds = %for.cond1.preheader, %if.then
  %j.0 = phi i32 [ %dec, %if.then ], [ 15, %for.cond1.preheader ], !dbg !6206
    #dbg_value(i32 %j.0, !6207, !DIExpression(), !6208)
  %cmp2 = icmp sgt i32 %j.0, -1, !dbg !6209
  br i1 %cmp2, label %for.body3, label %for.end.loopexit, !dbg !6203

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw i8, ptr %V, i32 %j.0, !dbg !6211
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6211
  %cmp4 = icmp eq i8 %0, -1, !dbg !6214
  br i1 %cmp4, label %if.then, label %if.else, !dbg !6214

if.then:                                          ; preds = %for.body3
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %V, i32 %j.0, !dbg !6215
  store i8 0, ptr %arrayidx6, align 1, !dbg !6217
  %dec = add nsw i32 %j.0, -1, !dbg !6218
    #dbg_value(i32 %dec, !6207, !DIExpression(), !6208)
  br label %for.cond1, !dbg !6219, !llvm.loop !6220

if.else:                                          ; preds = %for.body3
  %j.0.lcssa2 = phi i32 [ %j.0, %for.body3 ], !dbg !6206
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %V, i32 %j.0.lcssa2, !dbg !6222
  %1 = load i8, ptr %arrayidx7, align 1, !dbg !6224
  %inc = add i8 %1, 1, !dbg !6224
  store i8 %inc, ptr %arrayidx7, align 1, !dbg !6224
  br label %for.end, !dbg !6225

for.end.loopexit:                                 ; preds = %for.cond1
  br label %for.end, !dbg !6226

for.end:                                          ; preds = %for.end.loopexit, %if.else
  %mul = shl nuw nsw i32 %i.0, 4, !dbg !6226
  %add.ptr = getelementptr inbounds nuw i8, ptr %temp, i32 %mul, !dbg !6227
  call fastcc void @AES256_ECB(ptr noundef %Key, ptr noundef %V, ptr noundef nonnull %add.ptr) #4, !dbg !6228
  %inc9 = add nuw nsw i32 %i.0, 1, !dbg !6229
    #dbg_value(i32 %inc9, !6195, !DIExpression(), !6197)
  br label %for.cond, !dbg !6230, !llvm.loop !6231

for.end10:                                        ; preds = %for.cond
  %cmp11.not = icmp eq ptr %provided_data, null, !dbg !6233
  br i1 %cmp11.not, label %if.end27, label %for.cond15.preheader, !dbg !6233

for.cond15.preheader:                             ; preds = %for.end10
  br label %for.cond15, !dbg !6235

for.cond15:                                       ; preds = %for.cond15.preheader, %for.body18
  %i14.0 = phi i32 [ %inc25, %for.body18 ], [ 0, %for.cond15.preheader ], !dbg !6237
    #dbg_value(i32 %i14.0, !6238, !DIExpression(), !6239)
  %exitcond3 = icmp ne i32 %i14.0, 48, !dbg !6240
  br i1 %exitcond3, label %for.body18, label %if.end27.loopexit, !dbg !6235

for.body18:                                       ; preds = %for.cond15
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %provided_data, i32 %i14.0, !dbg !6242
  %2 = load i8, ptr %arrayidx19, align 1, !dbg !6242
  %arrayidx21 = getelementptr inbounds nuw [48 x i8], ptr %temp, i32 0, i32 %i14.0, !dbg !6244
  %3 = load i8, ptr %arrayidx21, align 1, !dbg !6245
  %xor1 = xor i8 %3, %2, !dbg !6245
  store i8 %xor1, ptr %arrayidx21, align 1, !dbg !6245
  %inc25 = add nuw nsw i32 %i14.0, 1, !dbg !6246
    #dbg_value(i32 %inc25, !6238, !DIExpression(), !6239)
  br label %for.cond15, !dbg !6247, !llvm.loop !6248

if.end27.loopexit:                                ; preds = %for.cond15
  br label %if.end27, !dbg !6250

if.end27:                                         ; preds = %if.end27.loopexit, %for.end10
  %call = call ptr @memcpy(ptr noundef %Key, ptr noundef nonnull %temp, i32 noundef 32) #6, !dbg !6250
  %add.ptr30 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !6251
  %call31 = call ptr @memcpy(ptr noundef %V, ptr noundef nonnull %add.ptr30, i32 noundef 16) #6, !dbg !6252
  ret void, !dbg !6253
}

; Function Attrs: nounwind
define internal fastcc void @AES256_ECB(ptr noundef %key, ptr noundef %ctr, ptr noundef nonnull %buffer) unnamed_addr #0 !dbg !6254 {
entry:
    #dbg_value(ptr %key, !6255, !DIExpression(), !6256)
    #dbg_value(ptr %ctr, !6257, !DIExpression(), !6256)
    #dbg_value(ptr %buffer, !6258, !DIExpression(), !6256)
  call void @AES_256_ECB(ptr noundef %ctr, ptr noundef %key, ptr noundef nonnull %buffer) #4, !dbg !6259
  ret void, !dbg !6260
}

; Function Attrs: nounwind
define dso_local i32 @randombytes(ptr noundef %random_array, i32 noundef %nbytes) local_unnamed_addr #0 !dbg !6261 {
entry:
    #dbg_value(ptr %random_array, !6264, !DIExpression(), !6265)
    #dbg_value(i32 %nbytes, !6266, !DIExpression(), !6265)
  %call = call fastcc i32 @randombytes_nist(ptr noundef %random_array, i32 noundef %nbytes) #4, !dbg !6267
    #dbg_value(i32 0, !6268, !DIExpression(), !6265)
  ret i32 0, !dbg !6269
}

; Function Attrs: nounwind
define internal fastcc i32 @randombytes_nist(ptr noundef %x, i32 noundef %xlen) unnamed_addr #0 !dbg !6270 {
entry:
  %block = alloca [16 x i8], align 1
    #dbg_value(ptr %x, !6271, !DIExpression(), !6272)
    #dbg_value(i32 %xlen, !6273, !DIExpression(), !6272)
    #dbg_declare(ptr %block, !6274, !DIExpression(), !6275)
    #dbg_value(i32 0, !6276, !DIExpression(), !6272)
  br label %while.cond, !dbg !6277

while.cond:                                       ; preds = %if.end15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %i.1, %if.end15 ], !dbg !6272
  %xlen.addr.0 = phi i32 [ %xlen, %entry ], [ %xlen.addr.1, %if.end15 ]
    #dbg_value(i32 %xlen.addr.0, !6273, !DIExpression(), !6272)
    #dbg_value(i32 %i.0, !6276, !DIExpression(), !6272)
  %cmp.not = icmp eq i32 %xlen.addr.0, 0, !dbg !6278
  br i1 %cmp.not, label %while.end, label %for.cond.preheader, !dbg !6277

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !6279

for.cond:                                         ; preds = %for.cond.preheader, %if.then
  %j.0 = phi i32 [ %dec, %if.then ], [ 15, %for.cond.preheader ], !dbg !6282
    #dbg_value(i32 %j.0, !6283, !DIExpression(), !6284)
  %cmp1 = icmp sgt i32 %j.0, -1, !dbg !6285
  br i1 %cmp1, label %for.body, label %for.end.loopexit, !dbg !6279

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0, !dbg !6287
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6287
  %cmp2 = icmp eq i8 %0, -1, !dbg !6290
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6290

if.then:                                          ; preds = %for.body
  %arrayidx4 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0, !dbg !6291
  store i8 0, ptr %arrayidx4, align 1, !dbg !6293
  %dec = add nsw i32 %j.0, -1, !dbg !6294
    #dbg_value(i32 %dec, !6283, !DIExpression(), !6284)
  br label %for.cond, !dbg !6295, !llvm.loop !6296

if.else:                                          ; preds = %for.body
  %j.0.lcssa1 = phi i32 [ %j.0, %for.body ], !dbg !6282
  %arrayidx5 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0.lcssa1, !dbg !6298
  %1 = load i8, ptr %arrayidx5, align 1, !dbg !6300
  %inc = add i8 %1, 1, !dbg !6300
  store i8 %inc, ptr %arrayidx5, align 1, !dbg !6300
  br label %for.end, !dbg !6301

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !6302

for.end:                                          ; preds = %for.end.loopexit, %if.else
  call fastcc void @AES256_ECB(ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), ptr noundef nonnull %block) #4, !dbg !6302
  %cmp6 = icmp ugt i32 %xlen.addr.0, 15, !dbg !6303
  br i1 %cmp6, label %if.then8, label %if.else10, !dbg !6303

if.then8:                                         ; preds = %for.end
  %add.ptr = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !6305
  %call = call ptr @memcpy(ptr noundef %add.ptr, ptr noundef nonnull %block, i32 noundef 16) #6, !dbg !6307
  %add = add i32 %i.0, 16, !dbg !6308
    #dbg_value(i32 %add, !6276, !DIExpression(), !6272)
  %sub = add i32 %xlen.addr.0, -16, !dbg !6309
    #dbg_value(i32 %sub, !6273, !DIExpression(), !6272)
  br label %if.end15, !dbg !6310

if.else10:                                        ; preds = %for.end
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !6311
  %call13 = call ptr @memcpy(ptr noundef %add.ptr11, ptr noundef nonnull %block, i32 noundef %xlen.addr.0) #6, !dbg !6313
  %add14 = add i32 %i.0, %xlen.addr.0, !dbg !6314
    #dbg_value(i32 %add14, !6276, !DIExpression(), !6272)
    #dbg_value(i32 0, !6273, !DIExpression(), !6272)
  br label %if.end15

if.end15:                                         ; preds = %if.else10, %if.then8
  %i.1 = phi i32 [ %add, %if.then8 ], [ %add14, %if.else10 ], !dbg !6315
  %xlen.addr.1 = phi i32 [ %sub, %if.then8 ], [ 0, %if.else10 ], !dbg !6315
    #dbg_value(i32 %xlen.addr.1, !6273, !DIExpression(), !6272)
    #dbg_value(i32 %i.1, !6276, !DIExpression(), !6272)
  br label %while.cond, !dbg !6277, !llvm.loop !6316

while.end:                                        ; preds = %while.cond
  call void @AES256_CTR_DRBG_Update(ptr noundef null, ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32)) #4, !dbg !6318
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6319
  %inc16 = add nsw i32 %2, 1, !dbg !6319
  store i32 %inc16, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6319
  ret i32 poison, !dbg !6320
}

; Function Attrs: nounwind
define dso_local void @randombytes_init(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) local_unnamed_addr #0 !dbg !6321 {
entry:
    #dbg_value(ptr %entropy_input, !6324, !DIExpression(), !6325)
    #dbg_value(ptr %personalization_string, !6326, !DIExpression(), !6325)
    #dbg_value(i32 %security_strength, !6327, !DIExpression(), !6325)
  call fastcc void @randombytes_init_nist(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) #4, !dbg !6328
  ret void, !dbg !6329
}

; Function Attrs: nounwind
define internal fastcc void @randombytes_init_nist(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) unnamed_addr #0 !dbg !6330 {
entry:
  %seed_material = alloca [48 x i8], align 1
    #dbg_value(ptr %entropy_input, !6331, !DIExpression(), !6332)
    #dbg_value(ptr %personalization_string, !6333, !DIExpression(), !6332)
    #dbg_value(i32 %security_strength, !6334, !DIExpression(), !6332)
    #dbg_declare(ptr %seed_material, !6335, !DIExpression(), !6336)
  %call = call ptr @memcpy(ptr noundef nonnull %seed_material, ptr noundef %entropy_input, i32 noundef 48) #6, !dbg !6337
  %tobool.not = icmp eq ptr %personalization_string, null, !dbg !6338
  br i1 %tobool.not, label %if.end, label %for.cond.preheader, !dbg !6338

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !6340

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !6342
    #dbg_value(i32 %i.0, !6343, !DIExpression(), !6344)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !6345
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !6340

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %personalization_string, i32 %i.0, !dbg !6347
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6347
  %arrayidx1 = getelementptr inbounds nuw [48 x i8], ptr %seed_material, i32 0, i32 %i.0, !dbg !6349
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !6350
  %xor1 = xor i8 %1, %0, !dbg !6350
  store i8 %xor1, ptr %arrayidx1, align 1, !dbg !6350
  %inc = add nuw nsw i32 %i.0, 1, !dbg !6351
    #dbg_value(i32 %inc, !6343, !DIExpression(), !6344)
  br label %for.cond, !dbg !6352, !llvm.loop !6353

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !6355

if.end:                                           ; preds = %if.end.loopexit, %entry
  %call4 = call ptr @memset(ptr noundef nonnull @DRBG_ctx, i32 noundef 0, i32 noundef 32) #6, !dbg !6355
  %call5 = call ptr @memset(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 noundef 0, i32 noundef 16) #6, !dbg !6356
  call void @AES256_CTR_DRBG_Update(ptr noundef nonnull %seed_material, ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32)) #4, !dbg !6357
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6358
  ret void, !dbg !6359
}

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp" }
attributes #1 = { allocsize(0,1) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp" }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp" }
attributes #3 = { allocsize(0) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind allocsize(0,1) "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind allocsize(0) "no-builtins" }

!llvm.dbg.cu = !{!120, !122, !2, !43, !66, !77, !90, !104}
!llvm.ident = !{!123, !123, !123, !123, !123, !123, !123, !123}
!llvm.module.flags = !{!124, !125, !126, !127}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "f_tail", scope: !2, file: !36, line: 247, type: !37, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !21, splitDebugInlining: false, nameTableKind: None)
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
!23 = distinct !DIGlobalVariable(name: "even_nibbles", scope: !24, file: !25, line: 118, type: !29, isLocal: true, isDefinition: true)
!24 = distinct !DISubprogram(name: "transpose_16x16_nibbles", scope: !25, file: !25, line: 117, type: !26, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!25 = !DIFile(filename: "../../../src/mayo.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!26 = !DISubroutineType(types: !27)
!27 = !{null, !5}
!28 = !{}
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "even_bytes", scope: !24, file: !25, line: 119, type: !29, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "even_2bytes", scope: !24, file: !25, line: 120, type: !29, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "even_half", scope: !24, file: !25, line: 121, type: !29, isLocal: true, isDefinition: true)
!36 = !DIFile(filename: "../../../include/mayo.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32, elements: !39)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!39 = !{!40}
!40 = !DISubrange(count: 4)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_5_ref_uint32_t_blocker", scope: !43, file: !58, line: 126, type: !63, isLocal: false, isDefinition: true)
!43 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !44, globals: !55, splitDebugInlining: false, nameTableKind: None)
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
!66 = distinct !DICompileUnit(language: DW_LANG_C11, file: !67, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !68, globals: !70, splitDebugInlining: false, nameTableKind: None)
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
!77 = distinct !DICompileUnit(language: DW_LANG_C11, file: !67, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !78, globals: !79, splitDebugInlining: false, nameTableKind: None)
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
!90 = distinct !DICompileUnit(language: DW_LANG_C11, file: !67, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !91, splitDebugInlining: false, nameTableKind: None)
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
!104 = distinct !DICompileUnit(language: DW_LANG_C11, file: !67, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !105, globals: !106, splitDebugInlining: false, nameTableKind: None)
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
!120 = distinct !DICompileUnit(language: DW_LANG_C11, file: !121, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!121 = !DIFile(filename: "../<stdin>", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!122 = distinct !DICompileUnit(language: DW_LANG_C11, file: !121, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!123 = !{!"Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)"}
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
!275 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_keypair", scope: !25, file: !25, line: 312, type: !276, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!306 = !DILocalVariable(name: "p", arg: 1, scope: !275, file: !25, line: 312, type: !278)
!307 = !DILocation(line: 0, scope: !275)
!308 = !DILocalVariable(name: "pk", arg: 2, scope: !275, file: !25, line: 312, type: !18)
!309 = !DILocalVariable(name: "sk", arg: 3, scope: !275, file: !25, line: 312, type: !18)
!310 = !DILocalVariable(name: "ret", scope: !275, file: !25, line: 313, type: !45)
!311 = !DILocation(line: 315, column: 9, scope: !275)
!312 = !DILabel(scope: !275, name: "err", file: !25, line: 320)
!313 = !DILocation(line: 320, column: 1, scope: !275)
!314 = !DILocation(line: 321, column: 3, scope: !275)
!315 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_keypair_compact", scope: !25, file: !25, line: 549, type: !276, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!316 = !DILocalVariable(name: "p", arg: 1, scope: !315, file: !25, line: 549, type: !278)
!317 = !DILocation(line: 0, scope: !315)
!318 = !DILocalVariable(name: "cpk", arg: 2, scope: !315, file: !25, line: 549, type: !18)
!319 = !DILocalVariable(name: "csk", arg: 3, scope: !315, file: !25, line: 550, type: !18)
!320 = !DILocalVariable(name: "ret", scope: !315, file: !25, line: 551, type: !45)
!321 = !DILocalVariable(name: "seed_sk", scope: !315, file: !25, line: 552, type: !18)
!322 = !DILocalVariable(name: "S", scope: !315, file: !25, line: 553, type: !323)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 6944, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 868)
!326 = !DILocation(line: 553, column: 17, scope: !315)
!327 = !DILocalVariable(name: "P", scope: !315, file: !25, line: 554, type: !328)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 6829632, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 106713)
!331 = !DILocation(line: 554, column: 12, scope: !315)
!332 = !DILocalVariable(name: "P3", scope: !315, file: !25, line: 555, type: !333)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 82944, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 1296)
!336 = !DILocation(line: 555, column: 12, scope: !315)
!337 = !DILocalVariable(name: "O", scope: !315, file: !25, line: 558, type: !338)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 13632, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 1704)
!341 = !DILocation(line: 558, column: 17, scope: !315)
!342 = !DILocalVariable(name: "m_vec_limbs", scope: !315, file: !25, line: 560, type: !343)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!344 = !DILocalVariable(name: "param_m", scope: !315, file: !25, line: 561, type: !343)
!345 = !DILocalVariable(name: "param_v", scope: !315, file: !25, line: 562, type: !343)
!346 = !DILocalVariable(name: "param_o", scope: !315, file: !25, line: 563, type: !343)
!347 = !DILocalVariable(name: "param_O_bytes", scope: !315, file: !25, line: 564, type: !343)
!348 = !DILocalVariable(name: "param_P1_limbs", scope: !315, file: !25, line: 565, type: !343)
!349 = !DILocalVariable(name: "param_P3_limbs", scope: !315, file: !25, line: 566, type: !343)
!350 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !315, file: !25, line: 567, type: !343)
!351 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !315, file: !25, line: 568, type: !343)
!352 = !DILocalVariable(name: "P1", scope: !315, file: !25, line: 570, type: !5)
!353 = !DILocation(line: 571, column: 20, scope: !315)
!354 = !DILocalVariable(name: "P2", scope: !315, file: !25, line: 571, type: !5)
!355 = !DILocation(line: 577, column: 7, scope: !356)
!356 = distinct !DILexicalBlock(scope: !315, file: !25, line: 577, column: 7)
!357 = !DILocation(line: 584, column: 3, scope: !315)
!358 = !DILocalVariable(name: "seed_pk", scope: !315, file: !25, line: 557, type: !18)
!359 = !DILocation(line: 590, column: 12, scope: !315)
!360 = !DILocation(line: 590, column: 3, scope: !315)
!361 = !DILocation(line: 596, column: 3, scope: !315)
!362 = !DILocation(line: 599, column: 3, scope: !315)
!363 = !DILocation(line: 602, column: 3, scope: !315)
!364 = !DILocalVariable(name: "P3_upper", scope: !315, file: !25, line: 604, type: !365)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 44928, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 702)
!368 = !DILocation(line: 604, column: 12, scope: !315)
!369 = !DILocation(line: 607, column: 3, scope: !315)
!370 = !DILocation(line: 608, column: 29, scope: !315)
!371 = !DILocation(line: 608, column: 3, scope: !315)
!372 = !DILabel(scope: !315, name: "err", file: !25, line: 612)
!373 = !DILocation(line: 612, column: 1, scope: !315)
!374 = !DILocation(line: 614, column: 3, scope: !315)
!375 = !DILocation(line: 615, column: 3, scope: !315)
!376 = !DILocation(line: 616, column: 3, scope: !315)
!377 = !DILocation(line: 617, column: 3, scope: !315)
!378 = distinct !DISubprogram(name: "decode", scope: !25, file: !25, line: 21, type: !379, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !49, !18, !45}
!381 = !DILocalVariable(name: "m", arg: 1, scope: !378, file: !25, line: 21, type: !49)
!382 = !DILocation(line: 0, scope: !378)
!383 = !DILocalVariable(name: "mdec", arg: 2, scope: !378, file: !25, line: 21, type: !18)
!384 = !DILocalVariable(name: "mdeclen", arg: 3, scope: !378, file: !25, line: 21, type: !45)
!385 = !DILocalVariable(name: "i", scope: !378, file: !25, line: 22, type: !45)
!386 = !DILocation(line: 23, column: 8, scope: !387)
!387 = distinct !DILexicalBlock(scope: !378, file: !25, line: 23, column: 3)
!388 = !DILocation(line: 23, scope: !387)
!389 = !DILocation(line: 23, column: 27, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !25, line: 23, column: 3)
!391 = !DILocation(line: 23, column: 17, scope: !390)
!392 = !DILocation(line: 23, column: 3, scope: !387)
!393 = !DILocation(line: 24, column: 15, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !25, line: 23, column: 37)
!395 = !DILocation(line: 24, column: 20, scope: !394)
!396 = !DILocation(line: 24, column: 10, scope: !394)
!397 = !DILocation(line: 24, column: 13, scope: !394)
!398 = !DILocation(line: 25, column: 15, scope: !394)
!399 = !DILocation(line: 25, column: 20, scope: !394)
!400 = !DILocation(line: 25, column: 13, scope: !394)
!401 = !DILocation(line: 25, column: 10, scope: !394)
!402 = !DILocation(line: 23, column: 32, scope: !390)
!403 = !DILocation(line: 23, column: 3, scope: !390)
!404 = distinct !{!404, !392, !405, !244}
!405 = !DILocation(line: 26, column: 3, scope: !387)
!406 = !DILocation(line: 28, column: 19, scope: !407)
!407 = distinct !DILexicalBlock(scope: !378, file: !25, line: 28, column: 7)
!408 = !DILocation(line: 29, column: 15, scope: !409)
!409 = distinct !DILexicalBlock(scope: !407, file: !25, line: 28, column: 25)
!410 = !DILocation(line: 29, column: 20, scope: !409)
!411 = !DILocation(line: 29, column: 13, scope: !409)
!412 = !DILocation(line: 30, column: 3, scope: !409)
!413 = !DILocation(line: 32, column: 1, scope: !378)
!414 = distinct !DISubprogram(name: "expand_P1_P2", scope: !25, file: !25, line: 287, type: !415, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !278, !5, !49}
!417 = !DILocalVariable(name: "p", arg: 1, scope: !414, file: !25, line: 287, type: !278)
!418 = !DILocation(line: 0, scope: !414)
!419 = !DILocalVariable(name: "P", arg: 2, scope: !414, file: !25, line: 287, type: !5)
!420 = !DILocalVariable(name: "seed_pk", arg: 3, scope: !414, file: !25, line: 288, type: !49)
!421 = !DILocation(line: 292, column: 3, scope: !414)
!422 = !DILocation(line: 294, column: 3, scope: !414)
!423 = !DILocation(line: 298, column: 1, scope: !414)
!424 = distinct !DISubprogram(name: "compute_P3", scope: !425, file: !425, line: 268, type: !426, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!425 = !DIFile(filename: "../../../src/generic/generic_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!426 = !DISubroutineType(types: !427)
!427 = !{null, !278, !428, !5, !49, !5}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!429 = !DILocalVariable(name: "p", arg: 1, scope: !424, file: !425, line: 268, type: !278)
!430 = !DILocation(line: 0, scope: !424)
!431 = !DILocalVariable(name: "P1", arg: 2, scope: !424, file: !425, line: 268, type: !428)
!432 = !DILocalVariable(name: "P2", arg: 3, scope: !424, file: !425, line: 268, type: !5)
!433 = !DILocalVariable(name: "O", arg: 4, scope: !424, file: !425, line: 268, type: !49)
!434 = !DILocalVariable(name: "P3", arg: 5, scope: !424, file: !425, line: 268, type: !5)
!435 = !DILocalVariable(name: "m_vec_limbs", scope: !424, file: !425, line: 270, type: !343)
!436 = !DILocalVariable(name: "param_v", scope: !424, file: !425, line: 271, type: !343)
!437 = !DILocalVariable(name: "param_o", scope: !424, file: !425, line: 272, type: !343)
!438 = !DILocation(line: 275, column: 5, scope: !424)
!439 = !DILocation(line: 278, column: 5, scope: !424)
!440 = !DILocation(line: 281, column: 1, scope: !424)
!441 = distinct !DISubprogram(name: "pack_m_vecs", scope: !25, file: !25, line: 279, type: !442, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !428, !18, !45, !45}
!444 = !DILocalVariable(name: "in", arg: 1, scope: !441, file: !25, line: 279, type: !428)
!445 = !DILocation(line: 0, scope: !441)
!446 = !DILocalVariable(name: "out", arg: 2, scope: !441, file: !25, line: 279, type: !18)
!447 = !DILocalVariable(name: "vecs", arg: 3, scope: !441, file: !25, line: 279, type: !45)
!448 = !DILocalVariable(name: "m", arg: 4, scope: !441, file: !25, line: 280, type: !45)
!449 = !DILocalVariable(name: "m_vec_limbs", scope: !441, file: !25, line: 281, type: !343)
!450 = !DILocalVariable(name: "_in", scope: !441, file: !25, line: 282, type: !18)
!451 = !DILocalVariable(name: "i", scope: !452, file: !25, line: 283, type: !45)
!452 = distinct !DILexicalBlock(scope: !441, file: !25, line: 283, column: 3)
!453 = !DILocation(line: 0, scope: !452)
!454 = !DILocation(line: 283, column: 8, scope: !452)
!455 = !DILocation(line: 283, scope: !452)
!456 = !DILocation(line: 283, column: 21, scope: !457)
!457 = distinct !DILexicalBlock(scope: !452, file: !25, line: 283, column: 3)
!458 = !DILocation(line: 283, column: 3, scope: !452)
!459 = !DILocation(line: 284, column: 26, scope: !460)
!460 = distinct !DILexicalBlock(scope: !457, file: !25, line: 283, column: 34)
!461 = !DILocation(line: 284, column: 17, scope: !460)
!462 = !DILocation(line: 284, column: 54, scope: !460)
!463 = !DILocation(line: 284, column: 36, scope: !460)
!464 = !DILocation(line: 284, column: 5, scope: !460)
!465 = !DILocation(line: 283, column: 30, scope: !457)
!466 = !DILocation(line: 283, column: 3, scope: !457)
!467 = distinct !{!467, !458, !468, !244}
!468 = !DILocation(line: 285, column: 3, scope: !452)
!469 = !DILocation(line: 286, column: 1, scope: !441)
!470 = distinct !DISubprogram(name: "P1_times_O", scope: !425, file: !425, line: 76, type: !471, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !278, !428, !49, !5}
!473 = !DILocalVariable(name: "p", arg: 1, scope: !470, file: !425, line: 76, type: !278)
!474 = !DILocation(line: 0, scope: !470)
!475 = !DILocalVariable(name: "P1", arg: 2, scope: !470, file: !425, line: 76, type: !428)
!476 = !DILocalVariable(name: "O", arg: 3, scope: !470, file: !425, line: 76, type: !49)
!477 = !DILocalVariable(name: "acc", arg: 4, scope: !470, file: !425, line: 76, type: !5)
!478 = !DILocation(line: 80, column: 5, scope: !470)
!479 = !DILocation(line: 83, column: 1, scope: !470)
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
!537 = !DILocation(line: 59, column: 1, scope: !480)
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
!593 = !DILocation(line: 44, column: 1, scope: !538)
!594 = distinct !DISubprogram(name: "mul_table", scope: !595, file: !595, line: 136, type: !596, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!595 = !DIFile(filename: "../../../src/simple_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!596 = !DISubroutineType(types: !597)
!597 = !{!19, !12}
!598 = !DILocalVariable(name: "b", arg: 1, scope: !594, file: !595, line: 136, type: !12)
!599 = !DILocation(line: 0, scope: !594)
!600 = !DILocation(line: 137, column: 19, scope: !594)
!601 = !DILocation(line: 137, column: 33, scope: !594)
!602 = !DILocalVariable(name: "x", scope: !594, file: !595, line: 137, type: !19)
!603 = !DILocalVariable(name: "high_nibble_mask", scope: !594, file: !595, line: 139, type: !19)
!604 = !DILocation(line: 141, column: 28, scope: !594)
!605 = !DILocalVariable(name: "high_half", scope: !594, file: !595, line: 141, type: !19)
!606 = !DILocation(line: 142, column: 28, scope: !594)
!607 = !DILocation(line: 142, column: 47, scope: !594)
!608 = !DILocation(line: 142, column: 34, scope: !594)
!609 = !DILocation(line: 142, column: 5, scope: !594)
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
!670 = distinct !DISubprogram(name: "unpack_m_vecs", scope: !25, file: !25, line: 268, type: !671, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !49, !5, !45, !45}
!673 = !DILocalVariable(name: "in", arg: 1, scope: !670, file: !25, line: 268, type: !49)
!674 = !DILocation(line: 0, scope: !670)
!675 = !DILocalVariable(name: "out", arg: 2, scope: !670, file: !25, line: 268, type: !5)
!676 = !DILocalVariable(name: "vecs", arg: 3, scope: !670, file: !25, line: 268, type: !45)
!677 = !DILocalVariable(name: "m", arg: 4, scope: !670, file: !25, line: 269, type: !45)
!678 = !DILocalVariable(name: "m_vec_limbs", scope: !670, file: !25, line: 270, type: !343)
!679 = !DILocalVariable(name: "_out", scope: !670, file: !25, line: 271, type: !18)
!680 = !DILocalVariable(name: "tmp", scope: !670, file: !25, line: 272, type: !681)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 576, elements: !682)
!682 = !{!683}
!683 = !DISubrange(count: 9)
!684 = !DILocation(line: 272, column: 12, scope: !670)
!685 = !DILocalVariable(name: "i", scope: !686, file: !25, line: 273, type: !45)
!686 = distinct !DILexicalBlock(scope: !670, file: !25, line: 273, column: 3)
!687 = !DILocation(line: 0, scope: !686)
!688 = !DILocation(line: 273, column: 8, scope: !686)
!689 = !DILocation(line: 273, column: 28, scope: !690)
!690 = distinct !DILexicalBlock(scope: !686, file: !25, line: 273, column: 3)
!691 = !DILocation(line: 273, column: 3, scope: !686)
!692 = !DILocation(line: 273, scope: !686)
!693 = !DILocation(line: 274, column: 28, scope: !694)
!694 = distinct !DILexicalBlock(scope: !690, file: !25, line: 273, column: 39)
!695 = !DILocation(line: 274, column: 20, scope: !694)
!696 = !DILocation(line: 274, column: 5, scope: !694)
!697 = !DILocation(line: 275, column: 35, scope: !694)
!698 = !DILocation(line: 275, column: 17, scope: !694)
!699 = !DILocation(line: 275, column: 5, scope: !694)
!700 = !DILocation(line: 273, column: 3, scope: !690)
!701 = distinct !{!701, !691, !702, !244}
!702 = !DILocation(line: 277, column: 3, scope: !686)
!703 = !DILocation(line: 278, column: 1, scope: !670)
!704 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_expand_sk", scope: !25, file: !25, line: 324, type: !705, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!705 = !DISubroutineType(types: !706)
!706 = !{!45, !278, !49, !5}
!707 = !DILocalVariable(name: "p", arg: 1, scope: !704, file: !25, line: 324, type: !278)
!708 = !DILocation(line: 0, scope: !704)
!709 = !DILocalVariable(name: "csk", arg: 2, scope: !704, file: !25, line: 324, type: !49)
!710 = !DILocalVariable(name: "sk", arg: 3, scope: !704, file: !25, line: 324, type: !5)
!711 = !DILocalVariable(name: "ret", scope: !704, file: !25, line: 325, type: !45)
!712 = !DILocalVariable(name: "S", scope: !704, file: !25, line: 326, type: !323)
!713 = !DILocation(line: 326, column: 17, scope: !704)
!714 = !DILocalVariable(name: "P", scope: !704, file: !25, line: 327, type: !5)
!715 = !DILocation(line: 328, column: 22, scope: !704)
!716 = !DILocalVariable(name: "O", scope: !704, file: !25, line: 328, type: !18)
!717 = !DILocalVariable(name: "param_o", scope: !704, file: !25, line: 330, type: !343)
!718 = !DILocalVariable(name: "param_v", scope: !704, file: !25, line: 331, type: !343)
!719 = !DILocalVariable(name: "param_O_bytes", scope: !704, file: !25, line: 332, type: !343)
!720 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !704, file: !25, line: 333, type: !343)
!721 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !704, file: !25, line: 334, type: !343)
!722 = !DILocalVariable(name: "seed_sk", scope: !704, file: !25, line: 336, type: !49)
!723 = !DILocalVariable(name: "seed_pk", scope: !704, file: !25, line: 337, type: !18)
!724 = !DILocation(line: 339, column: 3, scope: !704)
!725 = !DILocation(line: 341, column: 12, scope: !704)
!726 = !DILocation(line: 341, column: 3, scope: !704)
!727 = !DILocation(line: 347, column: 3, scope: !704)
!728 = !DILocation(line: 354, column: 20, scope: !704)
!729 = !DILocalVariable(name: "P2", scope: !704, file: !25, line: 354, type: !5)
!730 = !DILocalVariable(name: "P1", scope: !704, file: !25, line: 356, type: !5)
!731 = !DILocalVariable(name: "L", scope: !704, file: !25, line: 359, type: !5)
!732 = !DILocation(line: 360, column: 3, scope: !704)
!733 = !DILocation(line: 368, column: 3, scope: !704)
!734 = !DILocation(line: 370, column: 3, scope: !704)
!735 = distinct !DISubprogram(name: "P1P1t_times_O", scope: !425, file: !425, line: 223, type: !471, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!736 = !DILocalVariable(name: "p", arg: 1, scope: !735, file: !425, line: 223, type: !278)
!737 = !DILocation(line: 0, scope: !735)
!738 = !DILocalVariable(name: "P1", arg: 2, scope: !735, file: !425, line: 223, type: !428)
!739 = !DILocalVariable(name: "O", arg: 3, scope: !735, file: !425, line: 223, type: !49)
!740 = !DILocalVariable(name: "acc", arg: 4, scope: !735, file: !425, line: 223, type: !5)
!741 = !DILocalVariable(name: "param_o", scope: !735, file: !425, line: 227, type: !343)
!742 = !DILocalVariable(name: "param_v", scope: !735, file: !425, line: 228, type: !343)
!743 = !DILocalVariable(name: "m_vec_limbs", scope: !735, file: !425, line: 229, type: !343)
!744 = !DILocalVariable(name: "bs_mat_entries_used", scope: !735, file: !425, line: 231, type: !45)
!745 = !DILocalVariable(name: "r", scope: !746, file: !425, line: 232, type: !45)
!746 = distinct !DILexicalBlock(scope: !735, file: !425, line: 232, column: 5)
!747 = !DILocation(line: 0, scope: !746)
!748 = !DILocation(line: 232, column: 10, scope: !746)
!749 = !DILocation(line: 231, column: 9, scope: !735)
!750 = !DILocation(line: 232, scope: !746)
!751 = !DILocation(line: 232, column: 23, scope: !752)
!752 = distinct !DILexicalBlock(scope: !746, file: !425, line: 232, column: 5)
!753 = !DILocation(line: 232, column: 5, scope: !746)
!754 = !DILocation(line: 233, column: 9, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !425, line: 233, column: 9)
!756 = distinct !DILexicalBlock(scope: !752, file: !425, line: 232, column: 39)
!757 = !DILocation(line: 233, scope: !755)
!758 = !DILocalVariable(name: "c", scope: !755, file: !425, line: 233, type: !45)
!759 = !DILocation(line: 0, scope: !755)
!760 = !DILocation(line: 233, column: 27, scope: !761)
!761 = distinct !DILexicalBlock(scope: !755, file: !425, line: 233, column: 9)
!762 = !DILocation(line: 234, column: 17, scope: !763)
!763 = distinct !DILexicalBlock(scope: !764, file: !425, line: 234, column: 16)
!764 = distinct !DILexicalBlock(scope: !761, file: !425, line: 233, column: 43)
!765 = !DILocation(line: 238, column: 13, scope: !766)
!766 = distinct !DILexicalBlock(scope: !764, file: !425, line: 238, column: 13)
!767 = !DILocation(line: 238, scope: !766)
!768 = !DILocalVariable(name: "k", scope: !766, file: !425, line: 238, type: !45)
!769 = !DILocation(line: 0, scope: !766)
!770 = !DILocation(line: 238, column: 31, scope: !771)
!771 = distinct !DILexicalBlock(scope: !766, file: !425, line: 238, column: 13)
!772 = !DILocation(line: 239, column: 47, scope: !773)
!773 = distinct !DILexicalBlock(scope: !771, file: !425, line: 238, column: 50)
!774 = !DILocation(line: 239, column: 88, scope: !773)
!775 = !DILocation(line: 239, column: 84, scope: !773)
!776 = !DILocation(line: 239, column: 127, scope: !773)
!777 = !DILocation(line: 239, column: 137, scope: !773)
!778 = !DILocation(line: 239, column: 108, scope: !773)
!779 = !DILocation(line: 239, column: 17, scope: !773)
!780 = !DILocation(line: 240, column: 47, scope: !773)
!781 = !DILocation(line: 240, column: 88, scope: !773)
!782 = !DILocation(line: 240, column: 84, scope: !773)
!783 = !DILocation(line: 240, column: 127, scope: !773)
!784 = !DILocation(line: 240, column: 137, scope: !773)
!785 = !DILocation(line: 240, column: 108, scope: !773)
!786 = !DILocation(line: 240, column: 17, scope: !773)
!787 = !DILocation(line: 238, column: 44, scope: !771)
!788 = !DILocation(line: 238, column: 13, scope: !771)
!789 = distinct !{!789, !765, !790, !244}
!790 = !DILocation(line: 241, column: 13, scope: !766)
!791 = !DILocation(line: 0, scope: !764)
!792 = !DILocation(line: 233, column: 39, scope: !761)
!793 = !DILocation(line: 233, column: 9, scope: !761)
!794 = distinct !{!794, !754, !795, !244}
!795 = !DILocation(line: 243, column: 9, scope: !755)
!796 = !DILocation(line: 232, column: 35, scope: !752)
!797 = !DILocation(line: 232, column: 5, scope: !752)
!798 = distinct !{!798, !753, !799, !244}
!799 = !DILocation(line: 244, column: 5, scope: !746)
!800 = !DILocation(line: 247, column: 1, scope: !735)
!801 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_sign_signature", scope: !25, file: !25, line: 373, type: !802, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!802 = !DISubroutineType(types: !803)
!803 = !{!45, !278, !18, !804, !49, !15, !49}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!805 = !DILocalVariable(name: "p", arg: 1, scope: !801, file: !25, line: 373, type: !278)
!806 = !DILocation(line: 0, scope: !801)
!807 = !DILocalVariable(name: "sig", arg: 2, scope: !801, file: !25, line: 373, type: !18)
!808 = !DILocalVariable(name: "siglen", arg: 3, scope: !801, file: !25, line: 374, type: !804)
!809 = !DILocalVariable(name: "m", arg: 4, scope: !801, file: !25, line: 374, type: !49)
!810 = !DILocalVariable(name: "mlen", arg: 5, scope: !801, file: !25, line: 374, type: !15)
!811 = !DILocalVariable(name: "csk", arg: 6, scope: !801, file: !25, line: 375, type: !49)
!812 = !DILocalVariable(name: "ret", scope: !801, file: !25, line: 376, type: !45)
!813 = !DILocalVariable(name: "tenc", scope: !801, file: !25, line: 377, type: !814)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 568, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 71)
!817 = !DILocation(line: 377, column: 17, scope: !801)
!818 = !DILocalVariable(name: "t", scope: !801, file: !25, line: 377, type: !819)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1136, elements: !820)
!820 = !{!821}
!821 = !DISubrange(count: 142)
!822 = !DILocation(line: 377, column: 36, scope: !801)
!823 = !DILocalVariable(name: "y", scope: !801, file: !25, line: 378, type: !819)
!824 = !DILocation(line: 378, column: 17, scope: !801)
!825 = !DILocalVariable(name: "salt", scope: !801, file: !25, line: 379, type: !826)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 320, elements: !827)
!827 = !{!828}
!828 = !DISubrange(count: 40)
!829 = !DILocation(line: 379, column: 17, scope: !801)
!830 = !DILocalVariable(name: "V", scope: !801, file: !25, line: 380, type: !831)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 7392, elements: !832)
!832 = !{!833}
!833 = !DISubrange(count: 924)
!834 = !DILocation(line: 380, column: 17, scope: !801)
!835 = !DILocalVariable(name: "Vdec", scope: !801, file: !25, line: 381, type: !338)
!836 = !DILocation(line: 381, column: 7, scope: !801)
!837 = !DILocalVariable(name: "A", scope: !801, file: !25, line: 382, type: !838)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 167040, elements: !839)
!839 = !{!840}
!840 = !DISubrange(count: 20880)
!841 = !DILocation(line: 382, column: 17, scope: !801)
!842 = !DILocalVariable(name: "x", scope: !801, file: !25, line: 384, type: !843)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 14784, elements: !844)
!844 = !{!845}
!845 = !DISubrange(count: 1848)
!846 = !DILocation(line: 384, column: 17, scope: !801)
!847 = !DILocalVariable(name: "r", scope: !801, file: !25, line: 385, type: !848)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1160, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 145)
!851 = !DILocation(line: 385, column: 17, scope: !801)
!852 = !DILocalVariable(name: "s", scope: !801, file: !25, line: 386, type: !843)
!853 = !DILocation(line: 386, column: 17, scope: !801)
!854 = !DILocalVariable(name: "sk", scope: !801, file: !25, line: 388, type: !185, align: 256)
!855 = !DILocation(line: 388, column: 20, scope: !801)
!856 = !DILocalVariable(name: "Ox", scope: !801, file: !25, line: 389, type: !819)
!857 = !DILocation(line: 389, column: 17, scope: !801)
!858 = !DILocalVariable(name: "tmp", scope: !801, file: !25, line: 390, type: !848)
!859 = !DILocation(line: 390, column: 17, scope: !801)
!860 = !DILocalVariable(name: "param_m", scope: !801, file: !25, line: 394, type: !343)
!861 = !DILocalVariable(name: "param_n", scope: !801, file: !25, line: 395, type: !343)
!862 = !DILocalVariable(name: "param_o", scope: !801, file: !25, line: 396, type: !343)
!863 = !DILocalVariable(name: "param_k", scope: !801, file: !25, line: 397, type: !343)
!864 = !DILocalVariable(name: "param_v", scope: !801, file: !25, line: 398, type: !343)
!865 = !DILocalVariable(name: "param_m_bytes", scope: !801, file: !25, line: 399, type: !343)
!866 = !DILocalVariable(name: "param_v_bytes", scope: !801, file: !25, line: 400, type: !343)
!867 = !DILocalVariable(name: "param_r_bytes", scope: !801, file: !25, line: 401, type: !343)
!868 = !DILocalVariable(name: "param_sig_bytes", scope: !801, file: !25, line: 402, type: !343)
!869 = !DILocalVariable(name: "param_A_cols", scope: !801, file: !25, line: 403, type: !343)
!870 = !DILocalVariable(name: "param_digest_bytes", scope: !801, file: !25, line: 404, type: !343)
!871 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !801, file: !25, line: 405, type: !343)
!872 = !DILocalVariable(name: "param_salt_bytes", scope: !801, file: !25, line: 406, type: !343)
!873 = !DILocation(line: 408, column: 9, scope: !801)
!874 = !DILocalVariable(name: "seed_sk", scope: !801, file: !25, line: 387, type: !49)
!875 = !DILocation(line: 416, column: 3, scope: !801)
!876 = !DILocalVariable(name: "P1", scope: !801, file: !25, line: 418, type: !5)
!877 = !DILocalVariable(name: "L", scope: !801, file: !25, line: 419, type: !5)
!878 = !DILocalVariable(name: "Mtmp", scope: !801, file: !25, line: 420, type: !333)
!879 = !DILocation(line: 420, column: 12, scope: !801)
!880 = !DILocation(line: 435, column: 23, scope: !881)
!881 = distinct !DILexicalBlock(scope: !801, file: !25, line: 435, column: 7)
!882 = !DILocation(line: 435, column: 7, scope: !881)
!883 = !DILocation(line: 442, column: 35, scope: !801)
!884 = !DILocation(line: 442, column: 3, scope: !801)
!885 = !DILocation(line: 444, column: 3, scope: !801)
!886 = !DILocation(line: 452, column: 14, scope: !801)
!887 = !DILocation(line: 452, column: 3, scope: !801)
!888 = !DILocation(line: 453, column: 57, scope: !801)
!889 = !DILocalVariable(name: "ctrbyte", scope: !801, file: !25, line: 391, type: !18)
!890 = !DILocation(line: 455, column: 3, scope: !801)
!891 = !DILocation(line: 457, column: 3, scope: !801)
!892 = !DILocation(line: 460, column: 12, scope: !801)
!893 = !DILocation(line: 462, column: 3, scope: !801)
!894 = !DILocalVariable(name: "i", scope: !895, file: !25, line: 466, type: !45)
!895 = distinct !DILexicalBlock(scope: !801, file: !25, line: 466, column: 3)
!896 = !DILocation(line: 0, scope: !895)
!897 = !DILocation(line: 466, column: 8, scope: !895)
!898 = !DILocation(line: 466, scope: !895)
!899 = !DILocation(line: 466, column: 21, scope: !900)
!900 = distinct !DILexicalBlock(scope: !895, file: !25, line: 466, column: 3)
!901 = !DILocation(line: 466, column: 3, scope: !895)
!902 = !DILocation(line: 467, column: 18, scope: !903)
!903 = distinct !DILexicalBlock(scope: !900, file: !25, line: 466, column: 42)
!904 = !DILocation(line: 467, column: 14, scope: !903)
!905 = !DILocation(line: 467, column: 44, scope: !903)
!906 = !DILocation(line: 467, column: 40, scope: !903)
!907 = !DILocation(line: 467, column: 5, scope: !903)
!908 = !DILocation(line: 466, column: 37, scope: !900)
!909 = !DILocation(line: 466, column: 3, scope: !900)
!910 = distinct !{!910, !901, !911, !244}
!911 = !DILocation(line: 468, column: 3, scope: !895)
!912 = !DILocation(line: 419, column: 20, scope: !801)
!913 = !DILocation(line: 470, column: 3, scope: !801)
!914 = !DILocation(line: 472, column: 3, scope: !801)
!915 = !DILocation(line: 473, column: 3, scope: !801)
!916 = !DILocalVariable(name: "i", scope: !917, file: !25, line: 475, type: !45)
!917 = distinct !DILexicalBlock(scope: !801, file: !25, line: 475, column: 3)
!918 = !DILocation(line: 0, scope: !917)
!919 = !DILocation(line: 475, column: 8, scope: !917)
!920 = !DILocation(line: 475, scope: !917)
!921 = !DILocation(line: 475, column: 21, scope: !922)
!922 = distinct !DILexicalBlock(scope: !917, file: !25, line: 475, column: 3)
!923 = !DILocation(line: 475, column: 3, scope: !917)
!924 = !DILocation(line: 476, column: 15, scope: !925)
!925 = distinct !DILexicalBlock(scope: !922, file: !25, line: 475, column: 37)
!926 = !DILocation(line: 476, column: 41, scope: !925)
!927 = !DILocation(line: 476, column: 5, scope: !925)
!928 = !DILocation(line: 476, column: 46, scope: !925)
!929 = !DILocation(line: 475, column: 33, scope: !922)
!930 = !DILocation(line: 475, column: 3, scope: !922)
!931 = distinct !{!931, !923, !932, !244}
!932 = !DILocation(line: 477, column: 3, scope: !917)
!933 = !DILocation(line: 479, column: 12, scope: !801)
!934 = !DILocation(line: 479, column: 3, scope: !801)
!935 = !DILocation(line: 481, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !801, file: !25, line: 481, column: 7)
!937 = !DILocation(line: 484, column: 5, scope: !938)
!938 = distinct !DILexicalBlock(scope: !936, file: !25, line: 483, column: 10)
!939 = !DILocation(line: 485, column: 5, scope: !938)
!940 = !DILocalVariable(name: "i", scope: !941, file: !25, line: 489, type: !45)
!941 = distinct !DILexicalBlock(scope: !801, file: !25, line: 489, column: 3)
!942 = !DILocation(line: 0, scope: !941)
!943 = !DILocation(line: 489, column: 8, scope: !941)
!944 = !DILocation(line: 489, scope: !941)
!945 = !DILocation(line: 489, column: 21, scope: !946)
!946 = distinct !DILexicalBlock(scope: !941, file: !25, line: 489, column: 3)
!947 = !DILocation(line: 489, column: 3, scope: !941)
!948 = !DILocation(line: 490, column: 19, scope: !949)
!949 = distinct !DILexicalBlock(scope: !946, file: !25, line: 489, column: 42)
!950 = !DILocation(line: 490, column: 15, scope: !949)
!951 = !DILocalVariable(name: "vi", scope: !801, file: !25, line: 392, type: !18)
!952 = !DILocation(line: 491, column: 13, scope: !949)
!953 = !DILocation(line: 491, column: 29, scope: !949)
!954 = !DILocation(line: 491, column: 25, scope: !949)
!955 = !DILocation(line: 491, column: 5, scope: !949)
!956 = !DILocation(line: 492, column: 27, scope: !949)
!957 = !DILocation(line: 492, column: 23, scope: !949)
!958 = !DILocation(line: 492, column: 5, scope: !949)
!959 = !DILocation(line: 493, column: 18, scope: !949)
!960 = !DILocation(line: 493, column: 14, scope: !949)
!961 = !DILocation(line: 493, column: 28, scope: !949)
!962 = !DILocation(line: 493, column: 57, scope: !949)
!963 = !DILocation(line: 493, column: 53, scope: !949)
!964 = !DILocation(line: 493, column: 5, scope: !949)
!965 = !DILocation(line: 489, column: 37, scope: !946)
!966 = !DILocation(line: 489, column: 3, scope: !946)
!967 = distinct !{!967, !947, !968, !244}
!968 = !DILocation(line: 494, column: 3, scope: !941)
!969 = !DILocation(line: 495, column: 3, scope: !801)
!970 = !DILocation(line: 497, column: 32, scope: !801)
!971 = !DILocation(line: 497, column: 3, scope: !801)
!972 = !DILocation(line: 498, column: 11, scope: !801)
!973 = !DILabel(scope: !801, name: "err", file: !25, line: 500)
!974 = !DILocation(line: 500, column: 1, scope: !801)
!975 = !DILocation(line: 501, column: 3, scope: !801)
!976 = !DILocation(line: 502, column: 3, scope: !801)
!977 = !DILocation(line: 503, column: 3, scope: !801)
!978 = !DILocation(line: 504, column: 3, scope: !801)
!979 = !DILocation(line: 505, column: 21, scope: !801)
!980 = !DILocation(line: 505, column: 3, scope: !801)
!981 = !DILocation(line: 506, column: 3, scope: !801)
!982 = !DILocation(line: 507, column: 3, scope: !801)
!983 = !DILocation(line: 508, column: 3, scope: !801)
!984 = !DILocation(line: 509, column: 3, scope: !801)
!985 = !DILocation(line: 512, column: 3, scope: !801)
!986 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !425, file: !425, line: 251, type: !987, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !278, !49, !428, !428, !5, !5}
!989 = !DILocalVariable(name: "p", arg: 1, scope: !986, file: !425, line: 251, type: !278)
!990 = !DILocation(line: 0, scope: !986)
!991 = !DILocalVariable(name: "Vdec", arg: 2, scope: !986, file: !425, line: 251, type: !49)
!992 = !DILocalVariable(name: "L", arg: 3, scope: !986, file: !425, line: 251, type: !428)
!993 = !DILocalVariable(name: "P1", arg: 4, scope: !986, file: !425, line: 251, type: !428)
!994 = !DILocalVariable(name: "VL", arg: 5, scope: !986, file: !425, line: 251, type: !5)
!995 = !DILocalVariable(name: "VP1V", arg: 6, scope: !986, file: !425, line: 251, type: !5)
!996 = !DILocalVariable(name: "param_k", scope: !986, file: !425, line: 253, type: !343)
!997 = !DILocalVariable(name: "param_v", scope: !986, file: !425, line: 254, type: !343)
!998 = !DILocalVariable(name: "param_o", scope: !986, file: !425, line: 255, type: !343)
!999 = !DILocation(line: 258, column: 5, scope: !986)
!1000 = !DILocalVariable(name: "Pv", scope: !986, file: !425, line: 261, type: !1001)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 981504, elements: !1002)
!1002 = !{!1003}
!1003 = !DISubrange(count: 15336)
!1004 = !DILocation(line: 261, column: 14, scope: !986)
!1005 = !DILocation(line: 262, column: 5, scope: !986)
!1006 = !DILocation(line: 263, column: 5, scope: !986)
!1007 = !DILocation(line: 265, column: 1, scope: !986)
!1008 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 46, type: !1009, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{null, !278, !5, !49, !18}
!1011 = !DILocalVariable(name: "p", arg: 1, scope: !1008, file: !25, line: 46, type: !278)
!1012 = !DILocation(line: 0, scope: !1008)
!1013 = !DILocalVariable(name: "vPv", arg: 2, scope: !1008, file: !25, line: 46, type: !5)
!1014 = !DILocalVariable(name: "t", arg: 3, scope: !1008, file: !25, line: 47, type: !49)
!1015 = !DILocalVariable(name: "y", arg: 4, scope: !1008, file: !25, line: 47, type: !18)
!1016 = !DILocalVariable(name: "top_pos", scope: !1008, file: !25, line: 52, type: !1017)
!1017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!1018 = !DILocalVariable(name: "m_vec_limbs", scope: !1008, file: !25, line: 53, type: !1017)
!1019 = !DILocalVariable(name: "mask", scope: !1020, file: !25, line: 57, type: !6)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !25, line: 56, column: 29)
!1021 = distinct !DILexicalBlock(scope: !1008, file: !25, line: 56, column: 7)
!1022 = !DILocation(line: 0, scope: !1020)
!1023 = !DILocalVariable(name: "i", scope: !1024, file: !25, line: 60, type: !45)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !25, line: 60, column: 5)
!1025 = !DILocation(line: 0, scope: !1024)
!1026 = !DILocation(line: 60, column: 10, scope: !1024)
!1027 = !DILocation(line: 60, scope: !1024)
!1028 = !DILocation(line: 60, column: 23, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !25, line: 60, column: 5)
!1030 = !DILocation(line: 60, column: 5, scope: !1024)
!1031 = !DILocation(line: 61, column: 7, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !25, line: 60, column: 55)
!1033 = !DILocation(line: 61, column: 46, scope: !1032)
!1034 = !DILocation(line: 60, column: 51, scope: !1029)
!1035 = !DILocation(line: 60, column: 5, scope: !1029)
!1036 = distinct !{!1036, !1030, !1037, !244}
!1037 = !DILocation(line: 62, column: 5, scope: !1024)
!1038 = !DILocalVariable(name: "temp", scope: !1008, file: !25, line: 65, type: !681)
!1039 = !DILocation(line: 65, column: 12, scope: !1008)
!1040 = !DILocalVariable(name: "temp_bytes", scope: !1008, file: !25, line: 66, type: !18)
!1041 = !DILocalVariable(name: "i", scope: !1042, file: !25, line: 67, type: !45)
!1042 = distinct !DILexicalBlock(scope: !1008, file: !25, line: 67, column: 3)
!1043 = !DILocation(line: 0, scope: !1042)
!1044 = !DILocation(line: 67, column: 8, scope: !1042)
!1045 = !DILocation(line: 67, scope: !1042)
!1046 = !DILocation(line: 67, column: 34, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1042, file: !25, line: 67, column: 3)
!1048 = !DILocation(line: 67, column: 3, scope: !1042)
!1049 = !DILocation(line: 68, column: 5, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !25, line: 68, column: 5)
!1051 = distinct !DILexicalBlock(scope: !1047, file: !25, line: 67, column: 45)
!1052 = !DILocation(line: 104, column: 3, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1008, file: !25, line: 104, column: 3)
!1054 = !DILocation(line: 68, scope: !1050)
!1055 = !DILocalVariable(name: "j", scope: !1050, file: !25, line: 68, type: !45)
!1056 = !DILocation(line: 0, scope: !1050)
!1057 = !DILocation(line: 68, column: 23, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1050, file: !25, line: 68, column: 5)
!1059 = !DILocation(line: 70, column: 28, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1058, file: !25, line: 68, column: 42)
!1061 = !DILocation(line: 70, column: 50, scope: !1060)
!1062 = !DILocation(line: 70, column: 62, scope: !1060)
!1063 = !DILocalVariable(name: "top", scope: !1060, file: !25, line: 70, type: !14)
!1064 = !DILocation(line: 0, scope: !1060)
!1065 = !DILocation(line: 71, column: 7, scope: !1060)
!1066 = !DILocation(line: 71, column: 29, scope: !1060)
!1067 = !DILocalVariable(name: "k", scope: !1068, file: !25, line: 72, type: !45)
!1068 = distinct !DILexicalBlock(scope: !1060, file: !25, line: 72, column: 7)
!1069 = !DILocation(line: 0, scope: !1068)
!1070 = !DILocation(line: 72, column: 12, scope: !1068)
!1071 = !DILocation(line: 72, scope: !1068)
!1072 = !DILocation(line: 72, column: 39, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !25, line: 72, column: 7)
!1074 = !DILocation(line: 72, column: 7, scope: !1068)
!1075 = !DILocation(line: 77, column: 7, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1060, file: !25, line: 77, column: 7)
!1077 = !DILocation(line: 73, column: 24, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1073, file: !25, line: 72, column: 50)
!1079 = !DILocation(line: 73, column: 32, scope: !1078)
!1080 = !DILocation(line: 73, column: 16, scope: !1078)
!1081 = !DILocation(line: 73, column: 9, scope: !1078)
!1082 = !DILocation(line: 73, column: 21, scope: !1078)
!1083 = !DILocation(line: 74, column: 9, scope: !1078)
!1084 = !DILocation(line: 74, column: 17, scope: !1078)
!1085 = !DILocation(line: 72, column: 46, scope: !1073)
!1086 = !DILocation(line: 72, column: 7, scope: !1073)
!1087 = distinct !{!1087, !1074, !1088, !244}
!1088 = !DILocation(line: 75, column: 7, scope: !1068)
!1089 = !DILocation(line: 77, scope: !1076)
!1090 = !DILocalVariable(name: "jj", scope: !1076, file: !25, line: 77, type: !45)
!1091 = !DILocation(line: 0, scope: !1076)
!1092 = !DILocation(line: 77, column: 27, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1076, file: !25, line: 77, column: 7)
!1094 = !DILocation(line: 96, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1060, file: !25, line: 96, column: 7)
!1096 = !DILocation(line: 78, column: 16, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !25, line: 78, column: 13)
!1098 = distinct !DILexicalBlock(scope: !1093, file: !25, line: 77, column: 47)
!1099 = !DILocation(line: 78, column: 20, scope: !1097)
!1100 = !DILocation(line: 83, column: 44, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1097, file: !25, line: 78, column: 26)
!1102 = !DILocation(line: 83, column: 33, scope: !1101)
!1103 = !DILocation(line: 83, column: 25, scope: !1101)
!1104 = !DILocation(line: 83, column: 11, scope: !1101)
!1105 = !DILocation(line: 83, column: 30, scope: !1101)
!1106 = !DILocation(line: 85, column: 9, scope: !1101)
!1107 = !DILocation(line: 90, column: 44, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1097, file: !25, line: 85, column: 16)
!1109 = !DILocation(line: 90, column: 33, scope: !1108)
!1110 = !DILocation(line: 90, column: 65, scope: !1108)
!1111 = !DILocation(line: 90, column: 25, scope: !1108)
!1112 = !DILocation(line: 90, column: 11, scope: !1108)
!1113 = !DILocation(line: 90, column: 30, scope: !1108)
!1114 = !DILocation(line: 77, column: 43, scope: !1093)
!1115 = !DILocation(line: 77, column: 7, scope: !1093)
!1116 = distinct !{!1116, !1075, !1117, !244}
!1117 = !DILocation(line: 93, column: 7, scope: !1076)
!1118 = !DILocation(line: 96, scope: !1095)
!1119 = !DILocalVariable(name: "k", scope: !1095, file: !25, line: 96, type: !15)
!1120 = !DILocation(line: 0, scope: !1095)
!1121 = !DILocation(line: 96, column: 28, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1095, file: !25, line: 96, column: 7)
!1123 = !DILocation(line: 97, column: 27, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1122, file: !25, line: 96, column: 48)
!1125 = !DILocation(line: 97, column: 40, scope: !1124)
!1126 = !DILocation(line: 97, column: 20, scope: !1124)
!1127 = !DILocation(line: 98, column: 24, scope: !1124)
!1128 = !DILocation(line: 98, column: 39, scope: !1124)
!1129 = !DILocation(line: 98, column: 52, scope: !1124)
!1130 = !DILocation(line: 98, column: 32, scope: !1124)
!1131 = !DILocation(line: 98, column: 30, scope: !1124)
!1132 = !DILocation(line: 97, column: 64, scope: !1124)
!1133 = !DILocation(line: 97, column: 9, scope: !1124)
!1134 = !DILocation(line: 97, column: 17, scope: !1124)
!1135 = !DILocation(line: 96, column: 44, scope: !1122)
!1136 = !DILocation(line: 96, column: 7, scope: !1122)
!1137 = distinct !{!1137, !1094, !1138, !244}
!1138 = !DILocation(line: 99, column: 7, scope: !1095)
!1139 = !DILocation(line: 68, column: 38, scope: !1058)
!1140 = !DILocation(line: 68, column: 5, scope: !1058)
!1141 = distinct !{!1141, !1049, !1142, !244}
!1142 = !DILocation(line: 100, column: 5, scope: !1050)
!1143 = !DILocation(line: 67, column: 41, scope: !1047)
!1144 = !DILocation(line: 67, column: 3, scope: !1047)
!1145 = distinct !{!1145, !1048, !1146, !244}
!1146 = !DILocation(line: 101, column: 3, scope: !1042)
!1147 = !DILocation(line: 104, scope: !1053)
!1148 = !DILocalVariable(name: "i", scope: !1053, file: !25, line: 104, type: !45)
!1149 = !DILocation(line: 0, scope: !1053)
!1150 = !DILocation(line: 104, column: 21, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1053, file: !25, line: 104, column: 3)
!1152 = !DILocation(line: 110, column: 12, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1151, file: !25, line: 104, column: 43)
!1154 = !DILocation(line: 110, column: 33, scope: !1153)
!1155 = !DILocation(line: 110, column: 20, scope: !1153)
!1156 = !DILocation(line: 110, column: 38, scope: !1153)
!1157 = !DILocation(line: 110, column: 17, scope: !1153)
!1158 = !DILocation(line: 110, column: 5, scope: !1153)
!1159 = !DILocation(line: 110, column: 10, scope: !1153)
!1160 = !DILocation(line: 111, column: 20, scope: !1153)
!1161 = !DILocation(line: 111, column: 16, scope: !1153)
!1162 = !DILocation(line: 111, column: 41, scope: !1153)
!1163 = !DILocation(line: 111, column: 28, scope: !1153)
!1164 = !DILocation(line: 111, column: 46, scope: !1153)
!1165 = !DILocation(line: 111, column: 25, scope: !1153)
!1166 = !DILocation(line: 111, column: 9, scope: !1153)
!1167 = !DILocation(line: 111, column: 5, scope: !1153)
!1168 = !DILocation(line: 111, column: 14, scope: !1153)
!1169 = !DILocation(line: 104, column: 37, scope: !1151)
!1170 = !DILocation(line: 104, column: 3, scope: !1151)
!1171 = distinct !{!1171, !1052, !1172, !244}
!1172 = !DILocation(line: 113, column: 3, scope: !1053)
!1173 = !DILocation(line: 115, column: 1, scope: !1008)
!1174 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 156, type: !1175, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{null, !278, !5, !18}
!1177 = !DILocalVariable(name: "p", arg: 1, scope: !1174, file: !25, line: 156, type: !278)
!1178 = !DILocation(line: 0, scope: !1174)
!1179 = !DILocalVariable(name: "VtL", arg: 2, scope: !1174, file: !25, line: 156, type: !5)
!1180 = !DILocalVariable(name: "A_out", arg: 3, scope: !1174, file: !25, line: 157, type: !18)
!1181 = !DILocalVariable(name: "bits_to_shift", scope: !1174, file: !25, line: 162, type: !45)
!1182 = !DILocalVariable(name: "words_to_shift", scope: !1174, file: !25, line: 163, type: !45)
!1183 = !DILocalVariable(name: "m_vec_limbs", scope: !1174, file: !25, line: 164, type: !343)
!1184 = !DILocalVariable(name: "A", scope: !1174, file: !25, line: 165, type: !1185)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 165888, elements: !1186)
!1186 = !{!1187}
!1187 = !DISubrange(count: 2592)
!1188 = !DILocation(line: 165, column: 12, scope: !1174)
!1189 = !DILocalVariable(name: "A_width", scope: !1174, file: !25, line: 166, type: !15)
!1190 = !DILocalVariable(name: "mask", scope: !1191, file: !25, line: 171, type: !6)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !25, line: 170, column: 29)
!1192 = distinct !DILexicalBlock(scope: !1174, file: !25, line: 170, column: 7)
!1193 = !DILocation(line: 0, scope: !1191)
!1194 = !DILocalVariable(name: "i", scope: !1195, file: !25, line: 174, type: !45)
!1195 = distinct !DILexicalBlock(scope: !1191, file: !25, line: 174, column: 5)
!1196 = !DILocation(line: 0, scope: !1195)
!1197 = !DILocation(line: 174, column: 10, scope: !1195)
!1198 = !DILocation(line: 174, scope: !1195)
!1199 = !DILocation(line: 174, column: 23, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1195, file: !25, line: 174, column: 5)
!1201 = !DILocation(line: 174, column: 5, scope: !1195)
!1202 = !DILocation(line: 179, column: 3, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1174, file: !25, line: 179, column: 3)
!1204 = !DILocation(line: 175, column: 7, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1200, file: !25, line: 174, column: 55)
!1206 = !DILocation(line: 175, column: 46, scope: !1205)
!1207 = !DILocation(line: 174, column: 51, scope: !1200)
!1208 = !DILocation(line: 174, column: 5, scope: !1200)
!1209 = distinct !{!1209, !1201, !1210, !244}
!1210 = !DILocation(line: 176, column: 5, scope: !1195)
!1211 = !DILocation(line: 179, scope: !1203)
!1212 = !DILocation(line: 163, column: 7, scope: !1174)
!1213 = !DILocation(line: 162, column: 7, scope: !1174)
!1214 = !DILocalVariable(name: "i", scope: !1203, file: !25, line: 179, type: !45)
!1215 = !DILocation(line: 0, scope: !1203)
!1216 = !DILocation(line: 179, column: 21, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1203, file: !25, line: 179, column: 3)
!1218 = !DILocation(line: 180, column: 5, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !25, line: 180, column: 5)
!1220 = distinct !DILexicalBlock(scope: !1217, file: !25, line: 179, column: 45)
!1221 = !DILocation(line: 216, column: 3, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1174, file: !25, line: 216, column: 3)
!1223 = !DILocation(line: 180, scope: !1219)
!1224 = !DILocalVariable(name: "j", scope: !1219, file: !25, line: 180, type: !45)
!1225 = !DILocation(line: 0, scope: !1219)
!1226 = !DILocation(line: 180, column: 36, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1219, file: !25, line: 180, column: 5)
!1228 = !DILocation(line: 182, column: 16, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1227, file: !25, line: 180, column: 47)
!1230 = !DILocalVariable(name: "Mj", scope: !1174, file: !25, line: 167, type: !428)
!1231 = !DILocalVariable(name: "c", scope: !1232, file: !25, line: 183, type: !45)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !25, line: 183, column: 7)
!1233 = !DILocation(line: 0, scope: !1232)
!1234 = !DILocation(line: 183, column: 12, scope: !1232)
!1235 = !DILocation(line: 183, scope: !1232)
!1236 = !DILocation(line: 183, column: 25, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1232, file: !25, line: 183, column: 7)
!1238 = !DILocation(line: 183, column: 7, scope: !1232)
!1239 = !DILocation(line: 184, column: 9, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !25, line: 184, column: 9)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !25, line: 183, column: 44)
!1242 = !DILocation(line: 184, scope: !1240)
!1243 = !DILocalVariable(name: "k", scope: !1240, file: !25, line: 184, type: !45)
!1244 = !DILocation(line: 0, scope: !1240)
!1245 = !DILocation(line: 184, column: 27, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1240, file: !25, line: 184, column: 9)
!1247 = !DILocation(line: 186, column: 15, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1246, file: !25, line: 184, column: 47)
!1249 = !DILocation(line: 186, column: 39, scope: !1248)
!1250 = !DILocation(line: 185, column: 24, scope: !1248)
!1251 = !DILocation(line: 185, column: 28, scope: !1248)
!1252 = !DILocation(line: 185, column: 37, scope: !1248)
!1253 = !DILocation(line: 185, column: 55, scope: !1248)
!1254 = !DILocation(line: 185, column: 32, scope: !1248)
!1255 = !DILocation(line: 185, column: 11, scope: !1248)
!1256 = !DILocation(line: 185, column: 66, scope: !1248)
!1257 = !DILocation(line: 187, column: 29, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1248, file: !25, line: 187, column: 15)
!1259 = !DILocation(line: 189, column: 17, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1258, file: !25, line: 187, column: 34)
!1261 = !DILocation(line: 189, column: 48, scope: !1260)
!1262 = !DILocation(line: 189, column: 41, scope: !1260)
!1263 = !DILocation(line: 188, column: 26, scope: !1260)
!1264 = !DILocation(line: 188, column: 30, scope: !1260)
!1265 = !DILocation(line: 188, column: 39, scope: !1260)
!1266 = !DILocation(line: 188, column: 61, scope: !1260)
!1267 = !DILocation(line: 188, column: 34, scope: !1260)
!1268 = !DILocation(line: 188, column: 13, scope: !1260)
!1269 = !DILocation(line: 188, column: 72, scope: !1260)
!1270 = !DILocation(line: 190, column: 11, scope: !1260)
!1271 = !DILocation(line: 184, column: 43, scope: !1246)
!1272 = !DILocation(line: 184, column: 9, scope: !1246)
!1273 = distinct !{!1273, !1239, !1274, !244}
!1274 = !DILocation(line: 191, column: 9, scope: !1240)
!1275 = !DILocation(line: 183, column: 40, scope: !1237)
!1276 = !DILocation(line: 183, column: 7, scope: !1237)
!1277 = distinct !{!1277, !1238, !1278, !244}
!1278 = !DILocation(line: 192, column: 7, scope: !1232)
!1279 = !DILocation(line: 194, column: 13, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1229, file: !25, line: 194, column: 11)
!1281 = !DILocation(line: 195, column: 18, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1280, file: !25, line: 194, column: 19)
!1283 = !DILocalVariable(name: "Mi", scope: !1174, file: !25, line: 167, type: !428)
!1284 = !DILocalVariable(name: "c", scope: !1285, file: !25, line: 196, type: !45)
!1285 = distinct !DILexicalBlock(scope: !1282, file: !25, line: 196, column: 9)
!1286 = !DILocation(line: 0, scope: !1285)
!1287 = !DILocation(line: 196, column: 14, scope: !1285)
!1288 = !DILocation(line: 196, scope: !1285)
!1289 = !DILocation(line: 196, column: 27, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1285, file: !25, line: 196, column: 9)
!1291 = !DILocation(line: 196, column: 9, scope: !1285)
!1292 = !DILocation(line: 197, column: 11, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !25, line: 197, column: 11)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !25, line: 196, column: 46)
!1295 = !DILocation(line: 197, scope: !1293)
!1296 = !DILocalVariable(name: "k", scope: !1293, file: !25, line: 197, type: !45)
!1297 = !DILocation(line: 0, scope: !1293)
!1298 = !DILocation(line: 197, column: 29, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1293, file: !25, line: 197, column: 11)
!1300 = !DILocation(line: 199, column: 17, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1299, file: !25, line: 197, column: 49)
!1302 = !DILocation(line: 199, column: 41, scope: !1301)
!1303 = !DILocation(line: 198, column: 26, scope: !1301)
!1304 = !DILocation(line: 198, column: 30, scope: !1301)
!1305 = !DILocation(line: 198, column: 39, scope: !1301)
!1306 = !DILocation(line: 198, column: 57, scope: !1301)
!1307 = !DILocation(line: 198, column: 34, scope: !1301)
!1308 = !DILocation(line: 198, column: 13, scope: !1301)
!1309 = !DILocation(line: 198, column: 68, scope: !1301)
!1310 = !DILocation(line: 200, column: 31, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1301, file: !25, line: 200, column: 17)
!1312 = !DILocation(line: 202, column: 19, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1311, file: !25, line: 200, column: 36)
!1314 = !DILocation(line: 202, column: 50, scope: !1313)
!1315 = !DILocation(line: 202, column: 43, scope: !1313)
!1316 = !DILocation(line: 201, column: 28, scope: !1313)
!1317 = !DILocation(line: 201, column: 32, scope: !1313)
!1318 = !DILocation(line: 201, column: 41, scope: !1313)
!1319 = !DILocation(line: 201, column: 63, scope: !1313)
!1320 = !DILocation(line: 201, column: 36, scope: !1313)
!1321 = !DILocation(line: 201, column: 15, scope: !1313)
!1322 = !DILocation(line: 201, column: 74, scope: !1313)
!1323 = !DILocation(line: 203, column: 13, scope: !1313)
!1324 = !DILocation(line: 197, column: 45, scope: !1299)
!1325 = !DILocation(line: 197, column: 11, scope: !1299)
!1326 = distinct !{!1326, !1292, !1327, !244}
!1327 = !DILocation(line: 204, column: 11, scope: !1293)
!1328 = !DILocation(line: 196, column: 42, scope: !1290)
!1329 = !DILocation(line: 196, column: 9, scope: !1290)
!1330 = distinct !{!1330, !1291, !1331, !244}
!1331 = !DILocation(line: 205, column: 9, scope: !1285)
!1332 = !DILocation(line: 208, column: 21, scope: !1229)
!1333 = !DILocation(line: 209, column: 25, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1229, file: !25, line: 209, column: 11)
!1335 = !DILocation(line: 180, column: 42, scope: !1227)
!1336 = !DILocation(line: 180, column: 5, scope: !1227)
!1337 = distinct !{!1337, !1218, !1338, !244}
!1338 = !DILocation(line: 213, column: 5, scope: !1219)
!1339 = !DILocation(line: 179, column: 40, scope: !1217)
!1340 = !DILocation(line: 179, column: 3, scope: !1217)
!1341 = distinct !{!1341, !1202, !1342, !244}
!1342 = !DILocation(line: 214, column: 3, scope: !1203)
!1343 = !DILocation(line: 0, scope: !1222)
!1344 = !DILocalVariable(name: "c", scope: !1222, file: !25, line: 216, type: !15)
!1345 = !DILocation(line: 217, column: 10, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1222, file: !25, line: 216, column: 3)
!1347 = !DILocation(line: 220, column: 31, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1346, file: !25, line: 219, column: 17)
!1349 = !DILocation(line: 220, column: 5, scope: !1348)
!1350 = !DILocation(line: 219, column: 10, scope: !1346)
!1351 = !DILocation(line: 216, column: 3, scope: !1346)
!1352 = distinct !{!1352, !1221, !1353, !244}
!1353 = !DILocation(line: 221, column: 3, scope: !1222)
!1354 = !DILocalVariable(name: "tab", scope: !1174, file: !25, line: 223, type: !116)
!1355 = !DILocation(line: 223, column: 17, scope: !1174)
!1356 = !DILocalVariable(name: "i", scope: !1357, file: !25, line: 224, type: !15)
!1357 = distinct !DILexicalBlock(scope: !1174, file: !25, line: 224, column: 3)
!1358 = !DILocation(line: 0, scope: !1357)
!1359 = !DILocation(line: 224, column: 8, scope: !1357)
!1360 = !DILocation(line: 224, scope: !1357)
!1361 = !DILocation(line: 224, column: 24, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !25, line: 224, column: 3)
!1363 = !DILocation(line: 224, column: 3, scope: !1357)
!1364 = !DILocation(line: 233, column: 3, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1174, file: !25, line: 233, column: 3)
!1366 = !DILocation(line: 225, column: 24, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !25, line: 224, column: 43)
!1368 = !DILocation(line: 225, column: 18, scope: !1367)
!1369 = !DILocation(line: 225, column: 11, scope: !1367)
!1370 = !DILocation(line: 225, column: 5, scope: !1367)
!1371 = !DILocation(line: 225, column: 16, scope: !1367)
!1372 = !DILocation(line: 226, column: 22, scope: !1367)
!1373 = !DILocation(line: 226, column: 11, scope: !1367)
!1374 = !DILocation(line: 226, column: 15, scope: !1367)
!1375 = !DILocation(line: 226, column: 5, scope: !1367)
!1376 = !DILocation(line: 226, column: 20, scope: !1367)
!1377 = !DILocation(line: 227, column: 28, scope: !1367)
!1378 = !DILocation(line: 227, column: 22, scope: !1367)
!1379 = !DILocation(line: 227, column: 11, scope: !1367)
!1380 = !DILocation(line: 227, column: 15, scope: !1367)
!1381 = !DILocation(line: 227, column: 5, scope: !1367)
!1382 = !DILocation(line: 227, column: 20, scope: !1367)
!1383 = !DILocation(line: 228, column: 28, scope: !1367)
!1384 = !DILocation(line: 228, column: 22, scope: !1367)
!1385 = !DILocation(line: 228, column: 11, scope: !1367)
!1386 = !DILocation(line: 228, column: 15, scope: !1367)
!1387 = !DILocation(line: 228, column: 5, scope: !1367)
!1388 = !DILocation(line: 228, column: 20, scope: !1367)
!1389 = !DILocation(line: 224, column: 39, scope: !1362)
!1390 = !DILocation(line: 224, column: 3, scope: !1362)
!1391 = distinct !{!1391, !1363, !1392, !244}
!1392 = !DILocation(line: 229, column: 3, scope: !1357)
!1393 = !DILocation(line: 233, scope: !1365)
!1394 = !DILocalVariable(name: "c", scope: !1365, file: !25, line: 233, type: !15)
!1395 = !DILocation(line: 0, scope: !1365)
!1396 = !DILocation(line: 233, column: 24, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1365, file: !25, line: 233, column: 3)
!1398 = !DILocation(line: 234, column: 5, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !25, line: 234, column: 5)
!1400 = distinct !DILexicalBlock(scope: !1397, file: !25, line: 233, column: 44)
!1401 = !DILocation(line: 256, column: 3, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1174, file: !25, line: 256, column: 3)
!1403 = !DILocation(line: 0, scope: !1399)
!1404 = !DILocalVariable(name: "r", scope: !1399, file: !25, line: 234, type: !45)
!1405 = !DILocation(line: 234, column: 32, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1399, file: !25, line: 234, column: 5)
!1407 = !DILocation(line: 236, column: 23, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1406, file: !25, line: 235, column: 15)
!1409 = !DILocation(line: 236, column: 29, scope: !1408)
!1410 = !DILocation(line: 236, column: 39, scope: !1408)
!1411 = !DILocation(line: 236, column: 48, scope: !1408)
!1412 = !DILocation(line: 236, column: 43, scope: !1408)
!1413 = !DILocalVariable(name: "pos", scope: !1408, file: !25, line: 236, type: !15)
!1414 = !DILocation(line: 0, scope: !1408)
!1415 = !DILocation(line: 237, column: 21, scope: !1408)
!1416 = !DILocation(line: 237, column: 28, scope: !1408)
!1417 = !DILocalVariable(name: "t0", scope: !1408, file: !25, line: 237, type: !6)
!1418 = !DILocation(line: 238, column: 29, scope: !1408)
!1419 = !DILocation(line: 238, column: 35, scope: !1408)
!1420 = !DILocalVariable(name: "t1", scope: !1408, file: !25, line: 238, type: !6)
!1421 = !DILocation(line: 239, column: 29, scope: !1408)
!1422 = !DILocation(line: 239, column: 35, scope: !1408)
!1423 = !DILocalVariable(name: "t2", scope: !1408, file: !25, line: 239, type: !6)
!1424 = !DILocation(line: 240, column: 22, scope: !1408)
!1425 = !DILocation(line: 240, column: 29, scope: !1408)
!1426 = !DILocation(line: 240, column: 35, scope: !1408)
!1427 = !DILocalVariable(name: "t3", scope: !1408, file: !25, line: 240, type: !6)
!1428 = !DILocalVariable(name: "t", scope: !1429, file: !25, line: 241, type: !15)
!1429 = distinct !DILexicalBlock(scope: !1408, file: !25, line: 241, column: 7)
!1430 = !DILocation(line: 0, scope: !1429)
!1431 = !DILocation(line: 241, column: 12, scope: !1429)
!1432 = !DILocation(line: 241, scope: !1429)
!1433 = !DILocation(line: 241, column: 28, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1429, file: !25, line: 241, column: 7)
!1435 = !DILocation(line: 241, column: 7, scope: !1429)
!1436 = !DILocation(line: 244, column: 24, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1434, file: !25, line: 241, column: 47)
!1438 = !DILocation(line: 244, column: 18, scope: !1437)
!1439 = !DILocation(line: 244, column: 16, scope: !1437)
!1440 = !DILocation(line: 244, column: 46, scope: !1437)
!1441 = !DILocation(line: 244, column: 50, scope: !1437)
!1442 = !DILocation(line: 244, column: 40, scope: !1437)
!1443 = !DILocation(line: 244, column: 38, scope: !1437)
!1444 = !DILocation(line: 244, column: 33, scope: !1437)
!1445 = !DILocation(line: 244, column: 68, scope: !1437)
!1446 = !DILocation(line: 244, column: 72, scope: !1437)
!1447 = !DILocation(line: 244, column: 62, scope: !1437)
!1448 = !DILocation(line: 244, column: 60, scope: !1437)
!1449 = !DILocation(line: 244, column: 55, scope: !1437)
!1450 = !DILocation(line: 245, column: 24, scope: !1437)
!1451 = !DILocation(line: 245, column: 28, scope: !1437)
!1452 = !DILocation(line: 245, column: 18, scope: !1437)
!1453 = !DILocation(line: 245, column: 16, scope: !1437)
!1454 = !DILocation(line: 244, column: 77, scope: !1437)
!1455 = !DILocation(line: 242, column: 15, scope: !1437)
!1456 = !DILocation(line: 242, column: 19, scope: !1437)
!1457 = !DILocation(line: 242, column: 33, scope: !1437)
!1458 = !DILocation(line: 242, column: 39, scope: !1437)
!1459 = !DILocation(line: 242, column: 49, scope: !1437)
!1460 = !DILocation(line: 243, column: 15, scope: !1437)
!1461 = !DILocation(line: 243, column: 19, scope: !1437)
!1462 = !DILocation(line: 243, column: 33, scope: !1437)
!1463 = !DILocation(line: 242, column: 53, scope: !1437)
!1464 = !DILocation(line: 242, column: 9, scope: !1437)
!1465 = !DILocation(line: 243, column: 40, scope: !1437)
!1466 = !DILocation(line: 241, column: 43, scope: !1434)
!1467 = !DILocation(line: 241, column: 7, scope: !1434)
!1468 = distinct !{!1468, !1435, !1469, !244}
!1469 = !DILocation(line: 246, column: 7, scope: !1429)
!1470 = !DILocation(line: 235, column: 11, scope: !1406)
!1471 = !DILocation(line: 234, column: 5, scope: !1406)
!1472 = distinct !{!1472, !1398, !1473, !244}
!1473 = !DILocation(line: 247, column: 5, scope: !1399)
!1474 = !DILocation(line: 233, column: 37, scope: !1397)
!1475 = !DILocation(line: 233, column: 3, scope: !1397)
!1476 = distinct !{!1476, !1364, !1477, !244}
!1477 = !DILocation(line: 248, column: 3, scope: !1365)
!1478 = !DILocation(line: 256, scope: !1402)
!1479 = !DILocalVariable(name: "r", scope: !1402, file: !25, line: 256, type: !45)
!1480 = !DILocation(line: 0, scope: !1402)
!1481 = !DILocation(line: 256, column: 21, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1402, file: !25, line: 256, column: 3)
!1483 = !DILocation(line: 257, column: 5, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !25, line: 257, column: 5)
!1485 = distinct !DILexicalBlock(scope: !1482, file: !25, line: 256, column: 44)
!1486 = !DILocation(line: 257, scope: !1484)
!1487 = !DILocalVariable(name: "c", scope: !1484, file: !25, line: 257, type: !45)
!1488 = !DILocation(line: 0, scope: !1484)
!1489 = !DILocation(line: 257, column: 23, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1484, file: !25, line: 257, column: 5)
!1491 = !DILocation(line: 258, column: 7, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !25, line: 258, column: 7)
!1493 = distinct !DILexicalBlock(scope: !1490, file: !25, line: 257, column: 55)
!1494 = !DILocation(line: 258, scope: !1492)
!1495 = !DILocalVariable(name: "i", scope: !1492, file: !25, line: 258, type: !45)
!1496 = !DILocation(line: 0, scope: !1492)
!1497 = !DILocation(line: 258, column: 29, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1492, file: !25, line: 258, column: 7)
!1499 = !DILocation(line: 259, column: 48, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1498, file: !25, line: 258, column: 48)
!1501 = !DILocation(line: 259, column: 53, scope: !1500)
!1502 = !DILocation(line: 259, column: 57, scope: !1500)
!1503 = !DILocation(line: 259, column: 34, scope: !1500)
!1504 = !DILocation(line: 260, column: 45, scope: !1500)
!1505 = !DILocation(line: 260, column: 40, scope: !1500)
!1506 = !DILocation(line: 260, column: 22, scope: !1500)
!1507 = !DILocation(line: 260, column: 50, scope: !1500)
!1508 = !DILocation(line: 261, column: 16, scope: !1500)
!1509 = !DILocation(line: 259, column: 9, scope: !1500)
!1510 = !DILocation(line: 258, column: 44, scope: !1498)
!1511 = !DILocation(line: 258, column: 7, scope: !1498)
!1512 = distinct !{!1512, !1491, !1513, !244}
!1513 = !DILocation(line: 262, column: 7, scope: !1492)
!1514 = !DILocation(line: 257, column: 48, scope: !1490)
!1515 = !DILocation(line: 257, column: 5, scope: !1490)
!1516 = distinct !{!1516, !1483, !1517, !244}
!1517 = !DILocation(line: 263, column: 5, scope: !1484)
!1518 = !DILocation(line: 256, column: 37, scope: !1482)
!1519 = !DILocation(line: 256, column: 3, scope: !1482)
!1520 = distinct !{!1520, !1401, !1521, !244}
!1521 = !DILocation(line: 264, column: 3, scope: !1402)
!1522 = !DILocation(line: 266, column: 1, scope: !1174)
!1523 = distinct !DISubprogram(name: "mat_mul", scope: !595, file: !595, line: 82, type: !1524, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{null, !49, !49, !18, !45, !45, !45}
!1526 = !DILocalVariable(name: "a", arg: 1, scope: !1523, file: !595, line: 82, type: !49)
!1527 = !DILocation(line: 0, scope: !1523)
!1528 = !DILocalVariable(name: "b", arg: 2, scope: !1523, file: !595, line: 82, type: !49)
!1529 = !DILocalVariable(name: "c", arg: 3, scope: !1523, file: !595, line: 83, type: !18)
!1530 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1523, file: !595, line: 83, type: !45)
!1531 = !DILocalVariable(name: "row_a", arg: 5, scope: !1523, file: !595, line: 83, type: !45)
!1532 = !DILocalVariable(name: "col_b", arg: 6, scope: !1523, file: !595, line: 83, type: !45)
!1533 = !DILocalVariable(name: "i", scope: !1534, file: !595, line: 84, type: !45)
!1534 = distinct !DILexicalBlock(scope: !1523, file: !595, line: 84, column: 5)
!1535 = !DILocation(line: 0, scope: !1534)
!1536 = !DILocation(line: 84, column: 10, scope: !1534)
!1537 = !DILocation(line: 84, scope: !1534)
!1538 = !DILocation(line: 84, column: 23, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1534, file: !595, line: 84, column: 5)
!1540 = !DILocation(line: 84, column: 5, scope: !1534)
!1541 = !DILocation(line: 85, column: 9, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !595, line: 85, column: 9)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !595, line: 84, column: 53)
!1544 = !DILocation(line: 85, scope: !1542)
!1545 = !DILocalVariable(name: "j", scope: !1542, file: !595, line: 85, type: !45)
!1546 = !DILocation(line: 0, scope: !1542)
!1547 = !DILocation(line: 86, column: 18, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !595, line: 85, column: 46)
!1549 = distinct !DILexicalBlock(scope: !1542, file: !595, line: 85, column: 9)
!1550 = !DILocation(line: 86, column: 16, scope: !1548)
!1551 = !DILocation(line: 85, column: 41, scope: !1549)
!1552 = !DILocation(line: 85, column: 9, scope: !1549)
!1553 = distinct !{!1553, !1541, !1554, !244}
!1554 = !DILocation(line: 87, column: 9, scope: !1542)
!1555 = !DILocation(line: 84, column: 32, scope: !1539)
!1556 = !DILocation(line: 84, column: 39, scope: !1539)
!1557 = !DILocation(line: 84, column: 5, scope: !1539)
!1558 = distinct !{!1558, !1540, !1559, !244}
!1559 = !DILocation(line: 88, column: 5, scope: !1534)
!1560 = !DILocation(line: 91, column: 1, scope: !1523)
!1561 = distinct !DISubprogram(name: "mat_add", scope: !595, file: !595, line: 93, type: !1562, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{null, !49, !49, !18, !45, !45}
!1564 = !DILocalVariable(name: "a", arg: 1, scope: !1561, file: !595, line: 93, type: !49)
!1565 = !DILocation(line: 0, scope: !1561)
!1566 = !DILocalVariable(name: "b", arg: 2, scope: !1561, file: !595, line: 93, type: !49)
!1567 = !DILocalVariable(name: "c", arg: 3, scope: !1561, file: !595, line: 94, type: !18)
!1568 = !DILocalVariable(name: "m", arg: 4, scope: !1561, file: !595, line: 94, type: !45)
!1569 = !DILocalVariable(name: "n", arg: 5, scope: !1561, file: !595, line: 94, type: !45)
!1570 = !DILocalVariable(name: "i", scope: !1571, file: !595, line: 95, type: !45)
!1571 = distinct !DILexicalBlock(scope: !1561, file: !595, line: 95, column: 5)
!1572 = !DILocation(line: 0, scope: !1571)
!1573 = !DILocation(line: 95, column: 10, scope: !1571)
!1574 = !DILocation(line: 95, scope: !1571)
!1575 = !DILocation(line: 95, column: 23, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1571, file: !595, line: 95, column: 5)
!1577 = !DILocation(line: 95, column: 5, scope: !1571)
!1578 = !DILocalVariable(name: "j", scope: !1579, file: !595, line: 96, type: !45)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !595, line: 96, column: 9)
!1580 = distinct !DILexicalBlock(scope: !1576, file: !595, line: 95, column: 33)
!1581 = !DILocation(line: 0, scope: !1579)
!1582 = !DILocation(line: 97, column: 42, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !595, line: 96, column: 37)
!1584 = distinct !DILexicalBlock(scope: !1579, file: !595, line: 96, column: 9)
!1585 = !DILocation(line: 97, column: 38, scope: !1583)
!1586 = !DILocation(line: 97, column: 60, scope: !1583)
!1587 = !DILocation(line: 97, column: 56, scope: !1583)
!1588 = !DILocation(line: 97, column: 32, scope: !1583)
!1589 = !DILocation(line: 97, column: 17, scope: !1583)
!1590 = !DILocation(line: 97, column: 30, scope: !1583)
!1591 = !DILocation(line: 95, column: 28, scope: !1576)
!1592 = !DILocation(line: 95, column: 5, scope: !1576)
!1593 = distinct !{!1593, !1577, !1594, !244}
!1594 = !DILocation(line: 99, column: 5, scope: !1571)
!1595 = !DILocation(line: 102, column: 1, scope: !1561)
!1596 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 34, type: !379, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1597 = !DILocalVariable(name: "m", arg: 1, scope: !1596, file: !25, line: 34, type: !49)
!1598 = !DILocation(line: 0, scope: !1596)
!1599 = !DILocalVariable(name: "menc", arg: 2, scope: !1596, file: !25, line: 34, type: !18)
!1600 = !DILocalVariable(name: "mlen", arg: 3, scope: !1596, file: !25, line: 34, type: !45)
!1601 = !DILocalVariable(name: "i", scope: !1596, file: !25, line: 35, type: !45)
!1602 = !DILocation(line: 36, column: 8, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1596, file: !25, line: 36, column: 3)
!1604 = !DILocation(line: 36, scope: !1603)
!1605 = !DILocation(line: 36, column: 17, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1603, file: !25, line: 36, column: 3)
!1607 = !DILocation(line: 36, column: 3, scope: !1603)
!1608 = !DILocation(line: 37, column: 16, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !25, line: 36, column: 42)
!1610 = !DILocation(line: 37, column: 27, scope: !1609)
!1611 = !DILocation(line: 37, column: 23, scope: !1609)
!1612 = !DILocation(line: 37, column: 32, scope: !1609)
!1613 = !DILocation(line: 37, column: 20, scope: !1609)
!1614 = !DILocation(line: 37, column: 5, scope: !1609)
!1615 = !DILocation(line: 37, column: 13, scope: !1609)
!1616 = !DILocation(line: 36, column: 29, scope: !1606)
!1617 = !DILocation(line: 36, column: 36, scope: !1606)
!1618 = !DILocation(line: 36, column: 3, scope: !1606)
!1619 = distinct !{!1619, !1607, !1620, !244}
!1620 = !DILocation(line: 38, column: 3, scope: !1603)
!1621 = !DILocation(line: 44, column: 1, scope: !1596)
!1622 = distinct !DISubprogram(name: "add_f", scope: !595, file: !595, line: 44, type: !1623, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!14, !14, !14}
!1625 = !DILocalVariable(name: "a", arg: 1, scope: !1622, file: !595, line: 44, type: !14)
!1626 = !DILocation(line: 0, scope: !1622)
!1627 = !DILocalVariable(name: "b", arg: 2, scope: !1622, file: !595, line: 44, type: !14)
!1628 = !DILocation(line: 45, column: 14, scope: !1622)
!1629 = !DILocation(line: 45, column: 5, scope: !1622)
!1630 = distinct !DISubprogram(name: "lincomb", scope: !595, file: !595, line: 71, type: !1631, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!14, !49, !49, !45, !45}
!1633 = !DILocalVariable(name: "a", arg: 1, scope: !1630, file: !595, line: 71, type: !49)
!1634 = !DILocation(line: 0, scope: !1630)
!1635 = !DILocalVariable(name: "b", arg: 2, scope: !1630, file: !595, line: 72, type: !49)
!1636 = !DILocalVariable(name: "n", arg: 3, scope: !1630, file: !595, line: 72, type: !45)
!1637 = !DILocalVariable(name: "m", arg: 4, scope: !1630, file: !595, line: 72, type: !45)
!1638 = !DILocalVariable(name: "ret", scope: !1630, file: !595, line: 73, type: !14)
!1639 = !DILocalVariable(name: "i", scope: !1640, file: !595, line: 74, type: !45)
!1640 = distinct !DILexicalBlock(scope: !1630, file: !595, line: 74, column: 5)
!1641 = !DILocation(line: 0, scope: !1640)
!1642 = !DILocation(line: 74, column: 10, scope: !1640)
!1643 = !DILocation(line: 74, scope: !1640)
!1644 = !DILocation(line: 74, column: 23, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1640, file: !595, line: 74, column: 5)
!1646 = !DILocation(line: 74, column: 5, scope: !1640)
!1647 = !DILocation(line: 75, column: 27, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1645, file: !595, line: 74, column: 41)
!1649 = !DILocation(line: 75, column: 33, scope: !1648)
!1650 = !DILocation(line: 75, column: 21, scope: !1648)
!1651 = !DILocation(line: 75, column: 15, scope: !1648)
!1652 = !DILocation(line: 74, column: 28, scope: !1645)
!1653 = !DILocation(line: 74, column: 35, scope: !1645)
!1654 = !DILocation(line: 74, column: 5, scope: !1645)
!1655 = distinct !{!1655, !1646, !1656, !244}
!1656 = !DILocation(line: 76, column: 5, scope: !1640)
!1657 = !DILocation(line: 79, column: 5, scope: !1630)
!1658 = distinct !DISubprogram(name: "mul_f", scope: !595, file: !595, line: 10, type: !1623, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1659 = !DILocalVariable(name: "a", arg: 1, scope: !1658, file: !595, line: 10, type: !14)
!1660 = !DILocation(line: 0, scope: !1658)
!1661 = !DILocalVariable(name: "b", arg: 2, scope: !1658, file: !595, line: 10, type: !14)
!1662 = !DILocation(line: 15, column: 10, scope: !1658)
!1663 = !DILocation(line: 15, column: 7, scope: !1658)
!1664 = !DILocation(line: 18, column: 17, scope: !1658)
!1665 = !DILocalVariable(name: "p", scope: !1658, file: !595, line: 12, type: !14)
!1666 = !DILocation(line: 19, column: 13, scope: !1658)
!1667 = !DILocation(line: 19, column: 17, scope: !1658)
!1668 = !DILocation(line: 19, column: 7, scope: !1658)
!1669 = !DILocation(line: 20, column: 13, scope: !1658)
!1670 = !DILocation(line: 20, column: 17, scope: !1658)
!1671 = !DILocation(line: 20, column: 7, scope: !1658)
!1672 = !DILocation(line: 21, column: 13, scope: !1658)
!1673 = !DILocation(line: 21, column: 17, scope: !1658)
!1674 = !DILocation(line: 21, column: 7, scope: !1658)
!1675 = !DILocalVariable(name: "top_p", scope: !1658, file: !595, line: 24, type: !14)
!1676 = !DILocation(line: 25, column: 37, scope: !1658)
!1677 = !DILocation(line: 25, column: 52, scope: !1658)
!1678 = !DILocation(line: 25, column: 43, scope: !1658)
!1679 = !DILocation(line: 25, column: 59, scope: !1658)
!1680 = !DILocalVariable(name: "out", scope: !1658, file: !595, line: 25, type: !14)
!1681 = !DILocation(line: 26, column: 5, scope: !1658)
!1682 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 117, type: !5)
!1683 = !DILocation(line: 0, scope: !24)
!1684 = !DILocalVariable(name: "i", scope: !1685, file: !25, line: 123, type: !15)
!1685 = distinct !DILexicalBlock(scope: !24, file: !25, line: 123, column: 3)
!1686 = !DILocation(line: 0, scope: !1685)
!1687 = !DILocation(line: 123, column: 8, scope: !1685)
!1688 = !DILocation(line: 123, scope: !1685)
!1689 = !DILocation(line: 123, column: 24, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1685, file: !25, line: 123, column: 3)
!1691 = !DILocation(line: 123, column: 3, scope: !1685)
!1692 = !DILocation(line: 129, column: 3, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !24, file: !25, line: 129, column: 3)
!1694 = !DILocation(line: 124, column: 20, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1690, file: !25, line: 123, column: 38)
!1696 = !DILocation(line: 124, column: 25, scope: !1695)
!1697 = !DILocation(line: 124, column: 37, scope: !1695)
!1698 = !DILocation(line: 124, column: 33, scope: !1695)
!1699 = !DILocation(line: 124, column: 31, scope: !1695)
!1700 = !DILocation(line: 124, column: 43, scope: !1695)
!1701 = !DILocalVariable(name: "t", scope: !1695, file: !25, line: 124, type: !6)
!1702 = !DILocation(line: 0, scope: !1695)
!1703 = !DILocation(line: 125, column: 15, scope: !1695)
!1704 = !DILocation(line: 125, column: 5, scope: !1695)
!1705 = !DILocation(line: 125, column: 10, scope: !1695)
!1706 = !DILocation(line: 126, column: 9, scope: !1695)
!1707 = !DILocation(line: 126, column: 5, scope: !1695)
!1708 = !DILocation(line: 126, column: 14, scope: !1695)
!1709 = !DILocation(line: 123, column: 32, scope: !1690)
!1710 = !DILocation(line: 123, column: 3, scope: !1690)
!1711 = distinct !{!1711, !1691, !1712, !244}
!1712 = !DILocation(line: 127, column: 3, scope: !1685)
!1713 = !DILocation(line: 129, scope: !1693)
!1714 = !DILocalVariable(name: "i", scope: !1693, file: !25, line: 129, type: !15)
!1715 = !DILocation(line: 0, scope: !1693)
!1716 = !DILocation(line: 129, column: 24, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1693, file: !25, line: 129, column: 3)
!1718 = !DILocation(line: 138, column: 3, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !24, file: !25, line: 138, column: 3)
!1720 = !DILocation(line: 130, column: 21, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !25, line: 129, column: 38)
!1722 = !DILocation(line: 130, column: 26, scope: !1721)
!1723 = !DILocation(line: 130, column: 38, scope: !1721)
!1724 = !DILocation(line: 130, column: 34, scope: !1721)
!1725 = !DILocation(line: 130, column: 32, scope: !1721)
!1726 = !DILocation(line: 130, column: 44, scope: !1721)
!1727 = !DILocalVariable(name: "t0", scope: !1721, file: !25, line: 130, type: !6)
!1728 = !DILocation(line: 0, scope: !1721)
!1729 = !DILocation(line: 131, column: 25, scope: !1721)
!1730 = !DILocation(line: 131, column: 21, scope: !1721)
!1731 = !DILocation(line: 131, column: 30, scope: !1721)
!1732 = !DILocation(line: 131, column: 42, scope: !1721)
!1733 = !DILocation(line: 131, column: 38, scope: !1721)
!1734 = !DILocation(line: 131, column: 36, scope: !1721)
!1735 = !DILocation(line: 131, column: 48, scope: !1721)
!1736 = !DILocalVariable(name: "t1", scope: !1721, file: !25, line: 131, type: !6)
!1737 = !DILocation(line: 132, column: 17, scope: !1721)
!1738 = !DILocation(line: 132, column: 5, scope: !1721)
!1739 = !DILocation(line: 132, column: 10, scope: !1721)
!1740 = !DILocation(line: 133, column: 21, scope: !1721)
!1741 = !DILocation(line: 133, column: 9, scope: !1721)
!1742 = !DILocation(line: 133, column: 5, scope: !1721)
!1743 = !DILocation(line: 133, column: 14, scope: !1721)
!1744 = !DILocation(line: 134, column: 9, scope: !1721)
!1745 = !DILocation(line: 134, column: 5, scope: !1721)
!1746 = !DILocation(line: 134, column: 14, scope: !1721)
!1747 = !DILocation(line: 135, column: 9, scope: !1721)
!1748 = !DILocation(line: 135, column: 5, scope: !1721)
!1749 = !DILocation(line: 135, column: 14, scope: !1721)
!1750 = !DILocation(line: 129, column: 32, scope: !1717)
!1751 = !DILocation(line: 129, column: 3, scope: !1717)
!1752 = distinct !{!1752, !1692, !1753, !244}
!1753 = !DILocation(line: 136, column: 3, scope: !1693)
!1754 = !DILocation(line: 138, scope: !1719)
!1755 = !DILocalVariable(name: "i", scope: !1719, file: !25, line: 138, type: !15)
!1756 = !DILocation(line: 0, scope: !1719)
!1757 = !DILocation(line: 138, column: 24, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1719, file: !25, line: 138, column: 3)
!1759 = !DILocation(line: 148, column: 3, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !24, file: !25, line: 148, column: 3)
!1761 = !DILocation(line: 139, column: 21, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1758, file: !25, line: 138, column: 34)
!1763 = !DILocation(line: 139, column: 26, scope: !1762)
!1764 = !DILocation(line: 139, column: 39, scope: !1762)
!1765 = !DILocation(line: 139, column: 35, scope: !1762)
!1766 = !DILocation(line: 139, column: 33, scope: !1762)
!1767 = !DILocation(line: 139, column: 45, scope: !1762)
!1768 = !DILocalVariable(name: "t0", scope: !1762, file: !25, line: 139, type: !6)
!1769 = !DILocation(line: 0, scope: !1762)
!1770 = !DILocation(line: 140, column: 25, scope: !1762)
!1771 = !DILocation(line: 140, column: 21, scope: !1762)
!1772 = !DILocation(line: 140, column: 30, scope: !1762)
!1773 = !DILocation(line: 140, column: 43, scope: !1762)
!1774 = !DILocation(line: 140, column: 39, scope: !1762)
!1775 = !DILocation(line: 140, column: 37, scope: !1762)
!1776 = !DILocation(line: 140, column: 50, scope: !1762)
!1777 = !DILocalVariable(name: "t1", scope: !1762, file: !25, line: 140, type: !6)
!1778 = !DILocation(line: 142, column: 16, scope: !1762)
!1779 = !DILocation(line: 142, column: 5, scope: !1762)
!1780 = !DILocation(line: 142, column: 10, scope: !1762)
!1781 = !DILocation(line: 143, column: 20, scope: !1762)
!1782 = !DILocation(line: 143, column: 9, scope: !1762)
!1783 = !DILocation(line: 143, column: 5, scope: !1762)
!1784 = !DILocation(line: 143, column: 14, scope: !1762)
!1785 = !DILocation(line: 144, column: 9, scope: !1762)
!1786 = !DILocation(line: 144, column: 5, scope: !1762)
!1787 = !DILocation(line: 144, column: 14, scope: !1762)
!1788 = !DILocation(line: 145, column: 9, scope: !1762)
!1789 = !DILocation(line: 145, column: 5, scope: !1762)
!1790 = !DILocation(line: 145, column: 15, scope: !1762)
!1791 = !DILocation(line: 138, column: 30, scope: !1758)
!1792 = !DILocation(line: 138, column: 3, scope: !1758)
!1793 = distinct !{!1793, !1718, !1794, !244}
!1794 = !DILocation(line: 146, column: 3, scope: !1719)
!1795 = !DILocation(line: 148, scope: !1760)
!1796 = !DILocalVariable(name: "i", scope: !1760, file: !25, line: 148, type: !15)
!1797 = !DILocation(line: 0, scope: !1760)
!1798 = !DILocation(line: 148, column: 24, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1760, file: !25, line: 148, column: 3)
!1800 = !DILocation(line: 149, column: 20, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1799, file: !25, line: 148, column: 34)
!1802 = !DILocation(line: 149, column: 25, scope: !1801)
!1803 = !DILocation(line: 149, column: 38, scope: !1801)
!1804 = !DILocation(line: 149, column: 34, scope: !1801)
!1805 = !DILocation(line: 149, column: 44, scope: !1801)
!1806 = !DILocalVariable(name: "t", scope: !1801, file: !25, line: 149, type: !6)
!1807 = !DILocation(line: 0, scope: !1801)
!1808 = !DILocation(line: 150, column: 15, scope: !1801)
!1809 = !DILocation(line: 150, column: 5, scope: !1801)
!1810 = !DILocation(line: 150, column: 10, scope: !1801)
!1811 = !DILocation(line: 151, column: 9, scope: !1801)
!1812 = !DILocation(line: 151, column: 5, scope: !1801)
!1813 = !DILocation(line: 151, column: 14, scope: !1801)
!1814 = !DILocation(line: 148, column: 30, scope: !1799)
!1815 = !DILocation(line: 148, column: 3, scope: !1799)
!1816 = distinct !{!1816, !1759, !1817, !244}
!1817 = !DILocation(line: 152, column: 3, scope: !1760)
!1818 = !DILocation(line: 153, column: 1, scope: !24)
!1819 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !425, file: !425, line: 63, type: !481, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1820 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1819, file: !425, line: 63, type: !343)
!1821 = !DILocation(line: 0, scope: !1819)
!1822 = !DILocalVariable(name: "mat", arg: 2, scope: !1819, file: !425, line: 63, type: !49)
!1823 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1819, file: !425, line: 63, type: !428)
!1824 = !DILocalVariable(name: "acc", arg: 4, scope: !1819, file: !425, line: 63, type: !5)
!1825 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1819, file: !425, line: 64, type: !343)
!1826 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1819, file: !425, line: 64, type: !343)
!1827 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1819, file: !425, line: 64, type: !343)
!1828 = !DILocalVariable(name: "r", scope: !1829, file: !425, line: 66, type: !45)
!1829 = distinct !DILexicalBlock(scope: !1819, file: !425, line: 66, column: 5)
!1830 = !DILocation(line: 0, scope: !1829)
!1831 = !DILocation(line: 66, column: 10, scope: !1829)
!1832 = !DILocation(line: 66, scope: !1829)
!1833 = !DILocation(line: 66, column: 23, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1829, file: !425, line: 66, column: 5)
!1835 = !DILocation(line: 66, column: 5, scope: !1829)
!1836 = !DILocation(line: 67, column: 9, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !425, line: 67, column: 9)
!1838 = distinct !DILexicalBlock(scope: !1834, file: !425, line: 66, column: 40)
!1839 = !DILocation(line: 67, scope: !1837)
!1840 = !DILocalVariable(name: "c", scope: !1837, file: !425, line: 67, type: !45)
!1841 = !DILocation(line: 0, scope: !1837)
!1842 = !DILocation(line: 67, column: 27, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1837, file: !425, line: 67, column: 9)
!1844 = !DILocation(line: 68, column: 13, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !425, line: 68, column: 13)
!1846 = distinct !DILexicalBlock(scope: !1843, file: !425, line: 67, column: 44)
!1847 = !DILocation(line: 68, scope: !1845)
!1848 = !DILocalVariable(name: "k", scope: !1845, file: !425, line: 68, type: !45)
!1849 = !DILocation(line: 0, scope: !1845)
!1850 = !DILocation(line: 68, column: 31, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1845, file: !425, line: 68, column: 13)
!1852 = !DILocation(line: 69, column: 70, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1851, file: !425, line: 68, column: 54)
!1854 = !DILocation(line: 69, column: 84, scope: !1853)
!1855 = !DILocation(line: 69, column: 51, scope: !1853)
!1856 = !DILocation(line: 69, column: 96, scope: !1853)
!1857 = !DILocation(line: 69, column: 90, scope: !1853)
!1858 = !DILocation(line: 69, column: 136, scope: !1853)
!1859 = !DILocation(line: 69, column: 150, scope: !1853)
!1860 = !DILocation(line: 69, column: 117, scope: !1853)
!1861 = !DILocation(line: 69, column: 17, scope: !1853)
!1862 = !DILocation(line: 68, column: 48, scope: !1851)
!1863 = !DILocation(line: 68, column: 13, scope: !1851)
!1864 = distinct !{!1864, !1844, !1865, !244}
!1865 = !DILocation(line: 70, column: 13, scope: !1845)
!1866 = !DILocation(line: 67, column: 40, scope: !1843)
!1867 = !DILocation(line: 67, column: 9, scope: !1843)
!1868 = distinct !{!1868, !1836, !1869, !244}
!1869 = !DILocation(line: 71, column: 9, scope: !1837)
!1870 = !DILocation(line: 66, column: 36, scope: !1834)
!1871 = !DILocation(line: 66, column: 5, scope: !1834)
!1872 = distinct !{!1872, !1835, !1873, !244}
!1873 = !DILocation(line: 72, column: 5, scope: !1829)
!1874 = !DILocation(line: 73, column: 1, scope: !1819)
!1875 = distinct !DISubprogram(name: "P1_times_Vt", scope: !425, file: !425, line: 86, type: !471, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1876 = !DILocalVariable(name: "p", arg: 1, scope: !1875, file: !425, line: 86, type: !278)
!1877 = !DILocation(line: 0, scope: !1875)
!1878 = !DILocalVariable(name: "P1", arg: 2, scope: !1875, file: !425, line: 86, type: !428)
!1879 = !DILocalVariable(name: "V", arg: 3, scope: !1875, file: !425, line: 86, type: !49)
!1880 = !DILocalVariable(name: "acc", arg: 4, scope: !1875, file: !425, line: 86, type: !5)
!1881 = !DILocation(line: 90, column: 5, scope: !1875)
!1882 = !DILocation(line: 92, column: 1, scope: !1875)
!1883 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !425, file: !425, line: 32, type: !611, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1884 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1883, file: !425, line: 32, type: !343)
!1885 = !DILocation(line: 0, scope: !1883)
!1886 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1883, file: !425, line: 32, type: !428)
!1887 = !DILocalVariable(name: "mat", arg: 3, scope: !1883, file: !425, line: 32, type: !49)
!1888 = !DILocalVariable(name: "acc", arg: 4, scope: !1883, file: !425, line: 32, type: !5)
!1889 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1883, file: !425, line: 33, type: !343)
!1890 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1883, file: !425, line: 33, type: !343)
!1891 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1883, file: !425, line: 33, type: !343)
!1892 = !DILocalVariable(name: "triangular", arg: 8, scope: !1883, file: !425, line: 33, type: !343)
!1893 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1883, file: !425, line: 34, type: !45)
!1894 = !DILocalVariable(name: "r", scope: !1895, file: !425, line: 35, type: !45)
!1895 = distinct !DILexicalBlock(scope: !1883, file: !425, line: 35, column: 5)
!1896 = !DILocation(line: 0, scope: !1895)
!1897 = !DILocation(line: 35, column: 10, scope: !1895)
!1898 = !DILocation(line: 34, column: 9, scope: !1883)
!1899 = !DILocation(line: 35, scope: !1895)
!1900 = !DILocation(line: 35, column: 23, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1895, file: !425, line: 35, column: 5)
!1902 = !DILocation(line: 35, column: 5, scope: !1895)
!1903 = !DILocation(line: 36, column: 9, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !425, line: 36, column: 9)
!1905 = distinct !DILexicalBlock(scope: !1901, file: !425, line: 35, column: 43)
!1906 = !DILocation(line: 36, scope: !1904)
!1907 = !DILocalVariable(name: "c", scope: !1904, file: !425, line: 36, type: !45)
!1908 = !DILocation(line: 0, scope: !1904)
!1909 = !DILocation(line: 36, column: 40, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1904, file: !425, line: 36, column: 9)
!1911 = !DILocation(line: 37, column: 13, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !425, line: 37, column: 13)
!1913 = distinct !DILexicalBlock(scope: !1910, file: !425, line: 36, column: 60)
!1914 = !DILocation(line: 37, scope: !1912)
!1915 = !DILocalVariable(name: "k", scope: !1912, file: !425, line: 37, type: !45)
!1916 = !DILocation(line: 0, scope: !1912)
!1917 = !DILocation(line: 37, column: 31, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1912, file: !425, line: 37, column: 13)
!1919 = !DILocation(line: 38, column: 51, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1918, file: !425, line: 37, column: 51)
!1921 = !DILocation(line: 38, column: 94, scope: !1920)
!1922 = !DILocation(line: 38, column: 88, scope: !1920)
!1923 = !DILocation(line: 38, column: 137, scope: !1920)
!1924 = !DILocation(line: 38, column: 148, scope: !1920)
!1925 = !DILocation(line: 38, column: 118, scope: !1920)
!1926 = !DILocation(line: 38, column: 17, scope: !1920)
!1927 = !DILocation(line: 37, column: 45, scope: !1918)
!1928 = !DILocation(line: 37, column: 13, scope: !1918)
!1929 = distinct !{!1929, !1911, !1930, !244}
!1930 = !DILocation(line: 39, column: 13, scope: !1912)
!1931 = !DILocation(line: 40, column: 33, scope: !1913)
!1932 = !DILocation(line: 36, column: 56, scope: !1910)
!1933 = !DILocation(line: 36, column: 9, scope: !1910)
!1934 = distinct !{!1934, !1903, !1935, !244}
!1935 = !DILocation(line: 41, column: 9, scope: !1904)
!1936 = !DILocation(line: 35, column: 39, scope: !1901)
!1937 = !DILocation(line: 35, column: 5, scope: !1901)
!1938 = distinct !{!1938, !1902, !1939, !244}
!1939 = !DILocation(line: 42, column: 5, scope: !1895)
!1940 = !DILocation(line: 43, column: 1, scope: !1883)
!1941 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_sign", scope: !25, file: !25, line: 515, type: !802, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1942 = !DILocalVariable(name: "p", arg: 1, scope: !1941, file: !25, line: 515, type: !278)
!1943 = !DILocation(line: 0, scope: !1941)
!1944 = !DILocalVariable(name: "sm", arg: 2, scope: !1941, file: !25, line: 515, type: !18)
!1945 = !DILocalVariable(name: "smlen", arg: 3, scope: !1941, file: !25, line: 515, type: !804)
!1946 = !DILocalVariable(name: "m", arg: 4, scope: !1941, file: !25, line: 516, type: !49)
!1947 = !DILocalVariable(name: "mlen", arg: 5, scope: !1941, file: !25, line: 516, type: !15)
!1948 = !DILocalVariable(name: "csk", arg: 6, scope: !1941, file: !25, line: 516, type: !49)
!1949 = !DILocalVariable(name: "ret", scope: !1941, file: !25, line: 517, type: !45)
!1950 = !DILocalVariable(name: "param_sig_bytes", scope: !1941, file: !25, line: 518, type: !343)
!1951 = !DILocation(line: 520, column: 14, scope: !1941)
!1952 = !DILocation(line: 520, column: 3, scope: !1941)
!1953 = !DILocation(line: 521, column: 48, scope: !1941)
!1954 = !DILocalVariable(name: "siglen", scope: !1941, file: !25, line: 519, type: !15)
!1955 = !DILocation(line: 521, column: 9, scope: !1941)
!1956 = !DILocation(line: 522, column: 22, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1941, file: !25, line: 522, column: 7)
!1958 = !DILocation(line: 523, column: 19, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1957, file: !25, line: 522, column: 60)
!1960 = !DILocation(line: 523, column: 26, scope: !1959)
!1961 = !DILocation(line: 523, column: 5, scope: !1959)
!1962 = !DILocation(line: 524, column: 5, scope: !1959)
!1963 = !DILocation(line: 527, column: 12, scope: !1941)
!1964 = !DILocation(line: 527, column: 19, scope: !1941)
!1965 = !DILocation(line: 527, column: 10, scope: !1941)
!1966 = !DILocation(line: 527, column: 3, scope: !1941)
!1967 = !DILabel(scope: !1941, name: "err", file: !25, line: 528)
!1968 = !DILocation(line: 528, column: 1, scope: !1941)
!1969 = !DILocation(line: 529, column: 3, scope: !1941)
!1970 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_open", scope: !25, file: !25, line: 532, type: !802, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1971 = !DILocalVariable(name: "p", arg: 1, scope: !1970, file: !25, line: 532, type: !278)
!1972 = !DILocation(line: 0, scope: !1970)
!1973 = !DILocalVariable(name: "m", arg: 2, scope: !1970, file: !25, line: 532, type: !18)
!1974 = !DILocalVariable(name: "mlen", arg: 3, scope: !1970, file: !25, line: 532, type: !804)
!1975 = !DILocalVariable(name: "sm", arg: 4, scope: !1970, file: !25, line: 533, type: !49)
!1976 = !DILocalVariable(name: "smlen", arg: 5, scope: !1970, file: !25, line: 533, type: !15)
!1977 = !DILocalVariable(name: "pk", arg: 6, scope: !1970, file: !25, line: 533, type: !49)
!1978 = !DILocalVariable(name: "param_sig_bytes", scope: !1970, file: !25, line: 534, type: !343)
!1979 = !DILocation(line: 535, column: 13, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1970, file: !25, line: 535, column: 7)
!1981 = !DILocation(line: 539, column: 25, scope: !1970)
!1982 = !DILocation(line: 539, column: 50, scope: !1970)
!1983 = !DILocation(line: 539, column: 7, scope: !1970)
!1984 = !DILocalVariable(name: "result", scope: !1970, file: !25, line: 538, type: !45)
!1985 = !DILocation(line: 541, column: 14, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1970, file: !25, line: 541, column: 7)
!1987 = !DILocation(line: 542, column: 19, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1986, file: !25, line: 541, column: 26)
!1989 = !DILocation(line: 542, column: 11, scope: !1988)
!1990 = !DILocation(line: 543, column: 19, scope: !1988)
!1991 = !DILocation(line: 543, column: 5, scope: !1988)
!1992 = !DILocation(line: 544, column: 3, scope: !1988)
!1993 = !DILocation(line: 547, column: 1, scope: !1970)
!1994 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_verify", scope: !25, file: !25, line: 631, type: !1995, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!45, !278, !49, !15, !49, !49}
!1997 = !DILocalVariable(name: "p", arg: 1, scope: !1994, file: !25, line: 631, type: !278)
!1998 = !DILocation(line: 0, scope: !1994)
!1999 = !DILocalVariable(name: "m", arg: 2, scope: !1994, file: !25, line: 631, type: !49)
!2000 = !DILocalVariable(name: "mlen", arg: 3, scope: !1994, file: !25, line: 631, type: !15)
!2001 = !DILocalVariable(name: "sig", arg: 4, scope: !1994, file: !25, line: 632, type: !49)
!2002 = !DILocalVariable(name: "cpk", arg: 5, scope: !1994, file: !25, line: 632, type: !49)
!2003 = !DILocalVariable(name: "tEnc", scope: !1994, file: !25, line: 633, type: !814)
!2004 = !DILocation(line: 633, column: 17, scope: !1994)
!2005 = !DILocalVariable(name: "t", scope: !1994, file: !25, line: 634, type: !819)
!2006 = !DILocation(line: 634, column: 17, scope: !1994)
!2007 = !DILocalVariable(name: "y", scope: !1994, file: !25, line: 635, type: !2008)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2272, elements: !2009)
!2009 = !{!2010}
!2010 = !DISubrange(count: 284)
!2011 = !DILocation(line: 635, column: 17, scope: !1994)
!2012 = !DILocalVariable(name: "s", scope: !1994, file: !25, line: 636, type: !843)
!2013 = !DILocation(line: 636, column: 17, scope: !1994)
!2014 = !DILocalVariable(name: "pk", scope: !1994, file: !25, line: 637, type: !180)
!2015 = !DILocation(line: 637, column: 12, scope: !1994)
!2016 = !DILocalVariable(name: "tmp", scope: !1994, file: !25, line: 638, type: !2017)
!2017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 832, elements: !2018)
!2018 = !{!2019}
!2019 = !DISubrange(count: 104)
!2020 = !DILocation(line: 638, column: 17, scope: !1994)
!2021 = !DILocalVariable(name: "param_m", scope: !1994, file: !25, line: 640, type: !343)
!2022 = !DILocalVariable(name: "param_n", scope: !1994, file: !25, line: 641, type: !343)
!2023 = !DILocalVariable(name: "param_k", scope: !1994, file: !25, line: 642, type: !343)
!2024 = !DILocalVariable(name: "param_m_bytes", scope: !1994, file: !25, line: 643, type: !343)
!2025 = !DILocalVariable(name: "param_sig_bytes", scope: !1994, file: !25, line: 644, type: !343)
!2026 = !DILocalVariable(name: "param_digest_bytes", scope: !1994, file: !25, line: 645, type: !343)
!2027 = !DILocalVariable(name: "param_salt_bytes", scope: !1994, file: !25, line: 646, type: !343)
!2028 = !DILocation(line: 648, column: 13, scope: !1994)
!2029 = !DILocalVariable(name: "ret", scope: !1994, file: !25, line: 648, type: !45)
!2030 = !DILocalVariable(name: "P1", scope: !1994, file: !25, line: 653, type: !5)
!2031 = !DILocation(line: 654, column: 21, scope: !1994)
!2032 = !DILocalVariable(name: "P2", scope: !1994, file: !25, line: 654, type: !5)
!2033 = !DILocation(line: 655, column: 21, scope: !1994)
!2034 = !DILocalVariable(name: "P3", scope: !1994, file: !25, line: 655, type: !5)
!2035 = !DILocation(line: 670, column: 3, scope: !1994)
!2036 = !DILocation(line: 673, column: 14, scope: !1994)
!2037 = !DILocation(line: 673, column: 58, scope: !1994)
!2038 = !DILocation(line: 673, column: 3, scope: !1994)
!2039 = !DILocation(line: 675, column: 3, scope: !1994)
!2040 = !DILocation(line: 676, column: 3, scope: !1994)
!2041 = !DILocation(line: 679, column: 3, scope: !1994)
!2042 = !DILocation(line: 681, column: 3, scope: !1994)
!2043 = !DILocation(line: 683, column: 7, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1994, file: !25, line: 683, column: 7)
!2045 = !DILocation(line: 683, column: 29, scope: !2044)
!2046 = !DILocation(line: 687, column: 1, scope: !1994)
!2047 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_expand_pk", scope: !25, file: !25, line: 620, type: !705, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2048 = !DILocalVariable(name: "p", arg: 1, scope: !2047, file: !25, line: 620, type: !278)
!2049 = !DILocation(line: 0, scope: !2047)
!2050 = !DILocalVariable(name: "cpk", arg: 2, scope: !2047, file: !25, line: 620, type: !49)
!2051 = !DILocalVariable(name: "pk", arg: 3, scope: !2047, file: !25, line: 621, type: !5)
!2052 = !DILocation(line: 622, column: 3, scope: !2047)
!2053 = !DILocation(line: 624, column: 21, scope: !2047)
!2054 = !DILocation(line: 625, column: 40, scope: !2047)
!2055 = !DILocation(line: 624, column: 3, scope: !2047)
!2056 = !DILocation(line: 628, column: 3, scope: !2047)
!2057 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 300, type: !2058, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !278, !49, !428, !428, !428, !18}
!2060 = !DILocalVariable(name: "p", arg: 1, scope: !2057, file: !25, line: 300, type: !278)
!2061 = !DILocation(line: 0, scope: !2057)
!2062 = !DILocalVariable(name: "s", arg: 2, scope: !2057, file: !25, line: 300, type: !49)
!2063 = !DILocalVariable(name: "P1", arg: 3, scope: !2057, file: !25, line: 301, type: !428)
!2064 = !DILocalVariable(name: "P2", arg: 4, scope: !2057, file: !25, line: 301, type: !428)
!2065 = !DILocalVariable(name: "P3", arg: 5, scope: !2057, file: !25, line: 302, type: !428)
!2066 = !DILocalVariable(name: "eval", arg: 6, scope: !2057, file: !25, line: 302, type: !18)
!2067 = !DILocalVariable(name: "SPS", scope: !2057, file: !25, line: 303, type: !333)
!2068 = !DILocation(line: 303, column: 12, scope: !2057)
!2069 = !DILocation(line: 305, column: 3, scope: !2057)
!2070 = !DILocalVariable(name: "zero", scope: !2057, file: !25, line: 306, type: !819)
!2071 = !DILocation(line: 306, column: 17, scope: !2057)
!2072 = !DILocation(line: 307, column: 3, scope: !2057)
!2073 = !DILocation(line: 308, column: 1, scope: !2057)
!2074 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !425, file: !425, line: 287, type: !2075, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null, !278, !428, !428, !428, !49, !5}
!2077 = !DILocalVariable(name: "p", arg: 1, scope: !2074, file: !425, line: 287, type: !278)
!2078 = !DILocation(line: 0, scope: !2074)
!2079 = !DILocalVariable(name: "P1", arg: 2, scope: !2074, file: !425, line: 287, type: !428)
!2080 = !DILocalVariable(name: "P2", arg: 3, scope: !2074, file: !425, line: 287, type: !428)
!2081 = !DILocalVariable(name: "P3", arg: 4, scope: !2074, file: !425, line: 287, type: !428)
!2082 = !DILocalVariable(name: "s", arg: 5, scope: !2074, file: !425, line: 287, type: !49)
!2083 = !DILocalVariable(name: "SPS", arg: 6, scope: !2074, file: !425, line: 288, type: !5)
!2084 = !DILocalVariable(name: "PS", scope: !2074, file: !425, line: 296, type: !2085)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1064448, elements: !2086)
!2086 = !{!2087}
!2087 = !DISubrange(count: 16632)
!2088 = !DILocation(line: 296, column: 14, scope: !2074)
!2089 = !DILocation(line: 297, column: 5, scope: !2074)
!2090 = !DILocation(line: 300, column: 5, scope: !2074)
!2091 = !DILocation(line: 302, column: 1, scope: !2074)
!2092 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !425, file: !425, line: 156, type: !2093, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{null, !428, !428, !428, !49, !343, !343, !343, !343, !5}
!2095 = !DILocalVariable(name: "P1", arg: 1, scope: !2092, file: !425, line: 156, type: !428)
!2096 = !DILocation(line: 0, scope: !2092)
!2097 = !DILocalVariable(name: "P2", arg: 2, scope: !2092, file: !425, line: 156, type: !428)
!2098 = !DILocalVariable(name: "P3", arg: 3, scope: !2092, file: !425, line: 156, type: !428)
!2099 = !DILocalVariable(name: "S", arg: 4, scope: !2092, file: !425, line: 156, type: !49)
!2100 = !DILocalVariable(name: "m", arg: 5, scope: !2092, file: !425, line: 157, type: !343)
!2101 = !DILocalVariable(name: "v", arg: 6, scope: !2092, file: !425, line: 157, type: !343)
!2102 = !DILocalVariable(name: "o", arg: 7, scope: !2092, file: !425, line: 157, type: !343)
!2103 = !DILocalVariable(name: "k", arg: 8, scope: !2092, file: !425, line: 157, type: !343)
!2104 = !DILocalVariable(name: "PS", arg: 9, scope: !2092, file: !425, line: 157, type: !5)
!2105 = !DILocalVariable(name: "n", scope: !2092, file: !425, line: 159, type: !343)
!2106 = !DILocalVariable(name: "m_vec_limbs", scope: !2092, file: !425, line: 160, type: !343)
!2107 = !DILocalVariable(name: "accumulator", scope: !2092, file: !425, line: 162, type: !2108)
!2108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 17031168, elements: !2109)
!2109 = !{!2110}
!2110 = !DISubrange(count: 266112)
!2111 = !DILocation(line: 162, column: 14, scope: !2092)
!2112 = !DILocalVariable(name: "P1_used", scope: !2092, file: !425, line: 163, type: !45)
!2113 = !DILocalVariable(name: "row", scope: !2114, file: !425, line: 164, type: !45)
!2114 = distinct !DILexicalBlock(scope: !2092, file: !425, line: 164, column: 5)
!2115 = !DILocation(line: 0, scope: !2114)
!2116 = !DILocation(line: 164, column: 10, scope: !2114)
!2117 = !DILocation(line: 163, column: 9, scope: !2092)
!2118 = !DILocation(line: 164, scope: !2114)
!2119 = !DILocation(line: 164, column: 27, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2114, file: !425, line: 164, column: 5)
!2121 = !DILocation(line: 164, column: 5, scope: !2114)
!2122 = !DILocation(line: 165, column: 9, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !425, line: 165, column: 9)
!2124 = distinct !DILexicalBlock(scope: !2120, file: !425, line: 164, column: 39)
!2125 = !DILocation(line: 180, column: 5, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2092, file: !425, line: 180, column: 5)
!2127 = !DILocation(line: 165, scope: !2123)
!2128 = !DILocalVariable(name: "j", scope: !2123, file: !425, line: 165, type: !45)
!2129 = !DILocation(line: 0, scope: !2123)
!2130 = !DILocation(line: 165, column: 29, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2123, file: !425, line: 165, column: 9)
!2132 = !DILocation(line: 172, column: 9, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2124, file: !425, line: 172, column: 9)
!2134 = !DILocation(line: 166, column: 13, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !425, line: 166, column: 13)
!2136 = distinct !DILexicalBlock(scope: !2131, file: !425, line: 165, column: 39)
!2137 = !DILocation(line: 166, scope: !2135)
!2138 = !DILocalVariable(name: "col", scope: !2135, file: !425, line: 166, type: !45)
!2139 = !DILocation(line: 0, scope: !2135)
!2140 = !DILocation(line: 166, column: 35, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2135, file: !425, line: 166, column: 13)
!2142 = !DILocation(line: 167, column: 43, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2141, file: !425, line: 166, column: 47)
!2144 = !DILocation(line: 167, column: 91, scope: !2143)
!2145 = !DILocation(line: 167, column: 95, scope: !2143)
!2146 = !DILocation(line: 167, column: 102, scope: !2143)
!2147 = !DILocation(line: 167, column: 115, scope: !2143)
!2148 = !DILocation(line: 167, column: 109, scope: !2143)
!2149 = !DILocation(line: 167, column: 107, scope: !2143)
!2150 = !DILocation(line: 167, column: 82, scope: !2143)
!2151 = !DILocation(line: 167, column: 17, scope: !2143)
!2152 = !DILocation(line: 166, column: 43, scope: !2141)
!2153 = !DILocation(line: 166, column: 13, scope: !2141)
!2154 = distinct !{!2154, !2134, !2155, !244}
!2155 = !DILocation(line: 168, column: 13, scope: !2135)
!2156 = !DILocation(line: 169, column: 21, scope: !2136)
!2157 = !DILocation(line: 165, column: 35, scope: !2131)
!2158 = !DILocation(line: 165, column: 9, scope: !2131)
!2159 = distinct !{!2159, !2122, !2160, !244}
!2160 = !DILocation(line: 170, column: 9, scope: !2123)
!2161 = !DILocation(line: 172, scope: !2133)
!2162 = !DILocalVariable(name: "j", scope: !2133, file: !425, line: 172, type: !45)
!2163 = !DILocation(line: 0, scope: !2133)
!2164 = !DILocation(line: 172, column: 27, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2133, file: !425, line: 172, column: 9)
!2166 = !DILocation(line: 173, column: 13, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !425, line: 173, column: 13)
!2168 = distinct !DILexicalBlock(scope: !2165, file: !425, line: 172, column: 37)
!2169 = !DILocation(line: 173, scope: !2167)
!2170 = !DILocalVariable(name: "col", scope: !2167, file: !425, line: 173, type: !45)
!2171 = !DILocation(line: 0, scope: !2167)
!2172 = !DILocation(line: 173, column: 35, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2167, file: !425, line: 173, column: 13)
!2174 = !DILocation(line: 174, column: 50, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2173, file: !425, line: 173, column: 47)
!2176 = !DILocation(line: 174, column: 54, scope: !2175)
!2177 = !DILocation(line: 174, column: 43, scope: !2175)
!2178 = !DILocation(line: 174, column: 93, scope: !2175)
!2179 = !DILocation(line: 174, column: 97, scope: !2175)
!2180 = !DILocation(line: 174, column: 104, scope: !2175)
!2181 = !DILocation(line: 174, column: 118, scope: !2175)
!2182 = !DILocation(line: 174, column: 111, scope: !2175)
!2183 = !DILocation(line: 174, column: 109, scope: !2175)
!2184 = !DILocation(line: 174, column: 84, scope: !2175)
!2185 = !DILocation(line: 174, column: 17, scope: !2175)
!2186 = !DILocation(line: 173, column: 43, scope: !2173)
!2187 = !DILocation(line: 173, column: 13, scope: !2173)
!2188 = distinct !{!2188, !2166, !2189, !244}
!2189 = !DILocation(line: 175, column: 13, scope: !2167)
!2190 = !DILocation(line: 172, column: 33, scope: !2165)
!2191 = !DILocation(line: 172, column: 9, scope: !2165)
!2192 = distinct !{!2192, !2132, !2193, !244}
!2193 = !DILocation(line: 176, column: 9, scope: !2133)
!2194 = !DILocation(line: 164, column: 35, scope: !2120)
!2195 = !DILocation(line: 164, column: 5, scope: !2120)
!2196 = distinct !{!2196, !2121, !2197, !244}
!2197 = !DILocation(line: 177, column: 5, scope: !2114)
!2198 = !DILocation(line: 179, column: 9, scope: !2092)
!2199 = !DILocation(line: 180, scope: !2126)
!2200 = !DILocalVariable(name: "row", scope: !2126, file: !425, line: 180, type: !45)
!2201 = !DILocation(line: 0, scope: !2126)
!2202 = !DILocalVariable(name: "P3_used", scope: !2092, file: !425, line: 179, type: !45)
!2203 = !DILocation(line: 180, column: 27, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2126, file: !425, line: 180, column: 5)
!2205 = !DILocation(line: 181, column: 9, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !425, line: 181, column: 9)
!2207 = distinct !DILexicalBlock(scope: !2204, file: !425, line: 180, column: 39)
!2208 = !DILocation(line: 191, column: 5, scope: !2092)
!2209 = !DILocation(line: 181, scope: !2206)
!2210 = !DILocalVariable(name: "j", scope: !2206, file: !425, line: 181, type: !45)
!2211 = !DILocation(line: 0, scope: !2206)
!2212 = !DILocation(line: 181, column: 29, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2206, file: !425, line: 181, column: 9)
!2214 = !DILocation(line: 182, column: 13, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !425, line: 182, column: 13)
!2216 = distinct !DILexicalBlock(scope: !2213, file: !425, line: 181, column: 39)
!2217 = !DILocation(line: 182, scope: !2215)
!2218 = !DILocalVariable(name: "col", scope: !2215, file: !425, line: 182, type: !45)
!2219 = !DILocation(line: 0, scope: !2215)
!2220 = !DILocation(line: 182, column: 35, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2215, file: !425, line: 182, column: 13)
!2222 = !DILocation(line: 183, column: 43, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2221, file: !425, line: 182, column: 47)
!2224 = !DILocation(line: 183, column: 89, scope: !2223)
!2225 = !DILocation(line: 183, column: 93, scope: !2223)
!2226 = !DILocation(line: 183, column: 100, scope: !2223)
!2227 = !DILocation(line: 183, column: 113, scope: !2223)
!2228 = !DILocation(line: 183, column: 107, scope: !2223)
!2229 = !DILocation(line: 183, column: 105, scope: !2223)
!2230 = !DILocation(line: 183, column: 80, scope: !2223)
!2231 = !DILocation(line: 183, column: 17, scope: !2223)
!2232 = !DILocation(line: 182, column: 43, scope: !2221)
!2233 = !DILocation(line: 182, column: 13, scope: !2221)
!2234 = distinct !{!2234, !2214, !2235, !244}
!2235 = !DILocation(line: 184, column: 13, scope: !2215)
!2236 = !DILocation(line: 185, column: 21, scope: !2216)
!2237 = !DILocation(line: 181, column: 35, scope: !2213)
!2238 = !DILocation(line: 181, column: 9, scope: !2213)
!2239 = distinct !{!2239, !2205, !2240, !244}
!2240 = !DILocation(line: 186, column: 9, scope: !2206)
!2241 = !DILocation(line: 180, column: 35, scope: !2204)
!2242 = !DILocation(line: 180, column: 5, scope: !2204)
!2243 = distinct !{!2243, !2125, !2244, !244}
!2244 = !DILocation(line: 187, column: 5, scope: !2126)
!2245 = !DILocalVariable(name: "i", scope: !2092, file: !425, line: 190, type: !45)
!2246 = !DILocation(line: 191, column: 14, scope: !2092)
!2247 = !DILocation(line: 192, column: 54, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2092, file: !425, line: 191, column: 23)
!2249 = !DILocation(line: 192, column: 81, scope: !2248)
!2250 = !DILocation(line: 192, column: 9, scope: !2248)
!2251 = !DILocation(line: 193, column: 10, scope: !2248)
!2252 = distinct !{!2252, !2208, !2253, !244}
!2253 = !DILocation(line: 194, column: 5, scope: !2092)
!2254 = !DILocation(line: 196, column: 1, scope: !2092)
!2255 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !425, file: !425, line: 200, type: !2256, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{null, !428, !49, !45, !45, !45, !5}
!2258 = !DILocalVariable(name: "PS", arg: 1, scope: !2255, file: !425, line: 200, type: !428)
!2259 = !DILocation(line: 0, scope: !2255)
!2260 = !DILocalVariable(name: "S", arg: 2, scope: !2255, file: !425, line: 200, type: !49)
!2261 = !DILocalVariable(name: "m", arg: 3, scope: !2255, file: !425, line: 200, type: !45)
!2262 = !DILocalVariable(name: "k", arg: 4, scope: !2255, file: !425, line: 200, type: !45)
!2263 = !DILocalVariable(name: "n", arg: 5, scope: !2255, file: !425, line: 200, type: !45)
!2264 = !DILocalVariable(name: "SPS", arg: 6, scope: !2255, file: !425, line: 200, type: !5)
!2265 = !DILocalVariable(name: "accumulator", scope: !2255, file: !425, line: 201, type: !2266)
!2266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1327104, elements: !2267)
!2267 = !{!2268}
!2268 = !DISubrange(count: 20736)
!2269 = !DILocation(line: 201, column: 14, scope: !2255)
!2270 = !DILocalVariable(name: "m_vec_limbs", scope: !2255, file: !425, line: 202, type: !343)
!2271 = !DILocalVariable(name: "row", scope: !2272, file: !425, line: 203, type: !45)
!2272 = distinct !DILexicalBlock(scope: !2255, file: !425, line: 203, column: 5)
!2273 = !DILocation(line: 0, scope: !2272)
!2274 = !DILocation(line: 203, column: 10, scope: !2272)
!2275 = !DILocation(line: 203, scope: !2272)
!2276 = !DILocation(line: 203, column: 27, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2272, file: !425, line: 203, column: 5)
!2278 = !DILocation(line: 203, column: 5, scope: !2272)
!2279 = !DILocation(line: 204, column: 9, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !425, line: 204, column: 9)
!2281 = distinct !DILexicalBlock(scope: !2277, file: !425, line: 203, column: 39)
!2282 = !DILocation(line: 213, column: 5, scope: !2255)
!2283 = !DILocation(line: 204, scope: !2280)
!2284 = !DILocalVariable(name: "j", scope: !2280, file: !425, line: 204, type: !45)
!2285 = !DILocation(line: 0, scope: !2280)
!2286 = !DILocation(line: 204, column: 27, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2280, file: !425, line: 204, column: 9)
!2288 = !DILocation(line: 205, column: 13, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !425, line: 205, column: 13)
!2290 = distinct !DILexicalBlock(scope: !2287, file: !425, line: 204, column: 37)
!2291 = !DILocation(line: 205, scope: !2289)
!2292 = !DILocalVariable(name: "col", scope: !2289, file: !425, line: 205, type: !45)
!2293 = !DILocation(line: 0, scope: !2289)
!2294 = !DILocation(line: 205, column: 35, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2289, file: !425, line: 205, column: 13)
!2296 = !DILocation(line: 206, column: 52, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2295, file: !425, line: 205, column: 50)
!2298 = !DILocation(line: 206, column: 56, scope: !2297)
!2299 = !DILocation(line: 206, column: 47, scope: !2297)
!2300 = !DILocation(line: 206, column: 99, scope: !2297)
!2301 = !DILocation(line: 206, column: 103, scope: !2297)
!2302 = !DILocation(line: 206, column: 110, scope: !2297)
!2303 = !DILocation(line: 206, column: 123, scope: !2297)
!2304 = !DILocation(line: 206, column: 117, scope: !2297)
!2305 = !DILocation(line: 206, column: 115, scope: !2297)
!2306 = !DILocation(line: 206, column: 90, scope: !2297)
!2307 = !DILocation(line: 206, column: 21, scope: !2297)
!2308 = !DILocation(line: 205, column: 44, scope: !2295)
!2309 = !DILocation(line: 205, column: 13, scope: !2295)
!2310 = distinct !{!2310, !2288, !2311, !244}
!2311 = !DILocation(line: 207, column: 13, scope: !2289)
!2312 = !DILocation(line: 204, column: 33, scope: !2287)
!2313 = !DILocation(line: 204, column: 9, scope: !2287)
!2314 = distinct !{!2314, !2279, !2315, !244}
!2315 = !DILocation(line: 208, column: 9, scope: !2280)
!2316 = !DILocation(line: 203, column: 35, scope: !2277)
!2317 = !DILocation(line: 203, column: 5, scope: !2277)
!2318 = distinct !{!2318, !2278, !2319, !244}
!2319 = !DILocation(line: 209, column: 5, scope: !2272)
!2320 = !DILocalVariable(name: "i", scope: !2255, file: !425, line: 212, type: !45)
!2321 = !DILocation(line: 213, column: 14, scope: !2255)
!2322 = !DILocation(line: 214, column: 54, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2255, file: !425, line: 213, column: 21)
!2324 = !DILocation(line: 214, column: 82, scope: !2323)
!2325 = !DILocation(line: 214, column: 9, scope: !2323)
!2326 = !DILocation(line: 215, column: 10, scope: !2323)
!2327 = distinct !{!2327, !2282, !2328, !244}
!2328 = !DILocation(line: 216, column: 5, scope: !2255)
!2329 = !DILocation(line: 217, column: 1, scope: !2255)
!2330 = distinct !DISubprogram(name: "m_vec_add", scope: !539, file: !539, line: 22, type: !2331, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{null, !45, !428, !5}
!2333 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2330, file: !539, line: 22, type: !45)
!2334 = !DILocation(line: 0, scope: !2330)
!2335 = !DILocalVariable(name: "in", arg: 2, scope: !2330, file: !539, line: 22, type: !428)
!2336 = !DILocalVariable(name: "acc", arg: 3, scope: !2330, file: !539, line: 22, type: !5)
!2337 = !DILocalVariable(name: "i", scope: !2338, file: !539, line: 24, type: !15)
!2338 = distinct !DILexicalBlock(scope: !2330, file: !539, line: 24, column: 5)
!2339 = !DILocation(line: 0, scope: !2338)
!2340 = !DILocation(line: 24, column: 10, scope: !2338)
!2341 = !DILocation(line: 24, scope: !2338)
!2342 = !DILocation(line: 24, column: 26, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2338, file: !539, line: 24, column: 5)
!2344 = !DILocation(line: 24, column: 5, scope: !2338)
!2345 = !DILocation(line: 26, column: 19, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2343, file: !539, line: 25, column: 5)
!2347 = !DILocation(line: 26, column: 9, scope: !2346)
!2348 = !DILocation(line: 26, column: 16, scope: !2346)
!2349 = !DILocation(line: 24, column: 46, scope: !2343)
!2350 = !DILocation(line: 24, column: 5, scope: !2343)
!2351 = distinct !{!2351, !2344, !2352, !244}
!2352 = !DILocation(line: 27, column: 5, scope: !2338)
!2353 = !DILocation(line: 28, column: 1, scope: !2330)
!2354 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !539, file: !539, line: 67, type: !2355, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !45, !5, !5}
!2357 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2354, file: !539, line: 67, type: !45)
!2358 = !DILocation(line: 0, scope: !2354)
!2359 = !DILocalVariable(name: "bins", arg: 2, scope: !2354, file: !539, line: 67, type: !5)
!2360 = !DILocalVariable(name: "out", arg: 3, scope: !2354, file: !539, line: 67, type: !5)
!2361 = !DILocation(line: 68, column: 44, scope: !2354)
!2362 = !DILocation(line: 68, column: 73, scope: !2354)
!2363 = !DILocation(line: 68, column: 5, scope: !2354)
!2364 = !DILocation(line: 69, column: 40, scope: !2354)
!2365 = !DILocation(line: 69, column: 69, scope: !2354)
!2366 = !DILocation(line: 69, column: 5, scope: !2354)
!2367 = !DILocation(line: 70, column: 44, scope: !2354)
!2368 = !DILocation(line: 70, column: 74, scope: !2354)
!2369 = !DILocation(line: 70, column: 5, scope: !2354)
!2370 = !DILocation(line: 71, column: 40, scope: !2354)
!2371 = !DILocation(line: 71, column: 69, scope: !2354)
!2372 = !DILocation(line: 71, column: 5, scope: !2354)
!2373 = !DILocation(line: 72, column: 44, scope: !2354)
!2374 = !DILocation(line: 72, column: 73, scope: !2354)
!2375 = !DILocation(line: 72, column: 5, scope: !2354)
!2376 = !DILocation(line: 73, column: 40, scope: !2354)
!2377 = !DILocation(line: 73, column: 69, scope: !2354)
!2378 = !DILocation(line: 73, column: 5, scope: !2354)
!2379 = !DILocation(line: 74, column: 44, scope: !2354)
!2380 = !DILocation(line: 74, column: 74, scope: !2354)
!2381 = !DILocation(line: 74, column: 5, scope: !2354)
!2382 = !DILocation(line: 75, column: 40, scope: !2354)
!2383 = !DILocation(line: 75, column: 69, scope: !2354)
!2384 = !DILocation(line: 75, column: 5, scope: !2354)
!2385 = !DILocation(line: 76, column: 44, scope: !2354)
!2386 = !DILocation(line: 76, column: 74, scope: !2354)
!2387 = !DILocation(line: 76, column: 5, scope: !2354)
!2388 = !DILocation(line: 77, column: 40, scope: !2354)
!2389 = !DILocation(line: 77, column: 69, scope: !2354)
!2390 = !DILocation(line: 77, column: 5, scope: !2354)
!2391 = !DILocation(line: 78, column: 44, scope: !2354)
!2392 = !DILocation(line: 78, column: 74, scope: !2354)
!2393 = !DILocation(line: 78, column: 5, scope: !2354)
!2394 = !DILocation(line: 79, column: 40, scope: !2354)
!2395 = !DILocation(line: 79, column: 69, scope: !2354)
!2396 = !DILocation(line: 79, column: 5, scope: !2354)
!2397 = !DILocation(line: 80, column: 44, scope: !2354)
!2398 = !DILocation(line: 80, column: 74, scope: !2354)
!2399 = !DILocation(line: 80, column: 5, scope: !2354)
!2400 = !DILocation(line: 81, column: 40, scope: !2354)
!2401 = !DILocation(line: 81, column: 69, scope: !2354)
!2402 = !DILocation(line: 81, column: 5, scope: !2354)
!2403 = !DILocation(line: 82, column: 35, scope: !2354)
!2404 = !DILocation(line: 82, column: 5, scope: !2354)
!2405 = !DILocation(line: 83, column: 1, scope: !2354)
!2406 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !539, file: !539, line: 57, type: !2331, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2407 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2406, file: !539, line: 57, type: !45)
!2408 = !DILocation(line: 0, scope: !2406)
!2409 = !DILocalVariable(name: "in", arg: 2, scope: !2406, file: !539, line: 57, type: !428)
!2410 = !DILocalVariable(name: "acc", arg: 3, scope: !2406, file: !539, line: 57, type: !5)
!2411 = !DILocalVariable(name: "mask_lsb", scope: !2406, file: !539, line: 59, type: !6)
!2412 = !DILocalVariable(name: "i", scope: !2413, file: !539, line: 60, type: !45)
!2413 = distinct !DILexicalBlock(scope: !2406, file: !539, line: 60, column: 5)
!2414 = !DILocation(line: 0, scope: !2413)
!2415 = !DILocation(line: 60, column: 9, scope: !2413)
!2416 = !DILocation(line: 60, scope: !2413)
!2417 = !DILocation(line: 60, column: 20, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2413, file: !539, line: 60, column: 5)
!2419 = !DILocation(line: 60, column: 5, scope: !2413)
!2420 = !DILocation(line: 61, column: 22, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2418, file: !539, line: 60, column: 43)
!2422 = !DILocation(line: 61, column: 28, scope: !2421)
!2423 = !DILocalVariable(name: "t", scope: !2421, file: !539, line: 61, type: !6)
!2424 = !DILocation(line: 0, scope: !2421)
!2425 = !DILocation(line: 62, column: 32, scope: !2421)
!2426 = !DILocation(line: 62, column: 43, scope: !2421)
!2427 = !DILocation(line: 62, column: 38, scope: !2421)
!2428 = !DILocation(line: 62, column: 9, scope: !2421)
!2429 = !DILocation(line: 62, column: 16, scope: !2421)
!2430 = !DILocation(line: 60, column: 40, scope: !2418)
!2431 = !DILocation(line: 60, column: 5, scope: !2418)
!2432 = distinct !{!2432, !2419, !2433, !244}
!2433 = !DILocation(line: 63, column: 5, scope: !2413)
!2434 = !DILocation(line: 64, column: 1, scope: !2406)
!2435 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !539, file: !539, line: 47, type: !2331, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2436 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2435, file: !539, line: 47, type: !45)
!2437 = !DILocation(line: 0, scope: !2435)
!2438 = !DILocalVariable(name: "in", arg: 2, scope: !2435, file: !539, line: 47, type: !428)
!2439 = !DILocalVariable(name: "acc", arg: 3, scope: !2435, file: !539, line: 47, type: !5)
!2440 = !DILocalVariable(name: "mask_msb", scope: !2435, file: !539, line: 49, type: !6)
!2441 = !DILocalVariable(name: "i", scope: !2442, file: !539, line: 50, type: !45)
!2442 = distinct !DILexicalBlock(scope: !2435, file: !539, line: 50, column: 5)
!2443 = !DILocation(line: 0, scope: !2442)
!2444 = !DILocation(line: 50, column: 9, scope: !2442)
!2445 = !DILocation(line: 50, scope: !2442)
!2446 = !DILocation(line: 50, column: 20, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2442, file: !539, line: 50, column: 5)
!2448 = !DILocation(line: 50, column: 5, scope: !2442)
!2449 = !DILocation(line: 51, column: 22, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2447, file: !539, line: 50, column: 43)
!2451 = !DILocalVariable(name: "t", scope: !2450, file: !539, line: 51, type: !6)
!2452 = !DILocation(line: 0, scope: !2450)
!2453 = !DILocation(line: 52, column: 32, scope: !2450)
!2454 = !DILocation(line: 52, column: 44, scope: !2450)
!2455 = !DILocation(line: 52, column: 50, scope: !2450)
!2456 = !DILocation(line: 52, column: 38, scope: !2450)
!2457 = !DILocation(line: 52, column: 9, scope: !2450)
!2458 = !DILocation(line: 52, column: 16, scope: !2450)
!2459 = !DILocation(line: 50, column: 40, scope: !2447)
!2460 = !DILocation(line: 50, column: 5, scope: !2447)
!2461 = distinct !{!2461, !2448, !2462, !244}
!2462 = !DILocation(line: 53, column: 5, scope: !2442)
!2463 = !DILocation(line: 54, column: 1, scope: !2435)
!2464 = distinct !DISubprogram(name: "m_vec_copy", scope: !539, file: !539, line: 13, type: !2331, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2465 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2464, file: !539, line: 13, type: !45)
!2466 = !DILocation(line: 0, scope: !2464)
!2467 = !DILocalVariable(name: "in", arg: 2, scope: !2464, file: !539, line: 13, type: !428)
!2468 = !DILocalVariable(name: "out", arg: 3, scope: !2464, file: !539, line: 13, type: !5)
!2469 = !DILocalVariable(name: "i", scope: !2470, file: !539, line: 15, type: !15)
!2470 = distinct !DILexicalBlock(scope: !2464, file: !539, line: 15, column: 5)
!2471 = !DILocation(line: 0, scope: !2470)
!2472 = !DILocation(line: 15, column: 10, scope: !2470)
!2473 = !DILocation(line: 15, scope: !2470)
!2474 = !DILocation(line: 15, column: 26, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2470, file: !539, line: 15, column: 5)
!2476 = !DILocation(line: 15, column: 5, scope: !2470)
!2477 = !DILocation(line: 17, column: 18, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2475, file: !539, line: 16, column: 5)
!2479 = !DILocation(line: 17, column: 9, scope: !2478)
!2480 = !DILocation(line: 17, column: 16, scope: !2478)
!2481 = !DILocation(line: 15, column: 46, scope: !2475)
!2482 = !DILocation(line: 15, column: 5, scope: !2475)
!2483 = distinct !{!2483, !2476, !2484, !244}
!2484 = !DILocation(line: 18, column: 5, scope: !2470)
!2485 = !DILocation(line: 19, column: 1, scope: !2464)
!2486 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_m_upper", scope: !58, file: !58, line: 14, type: !2487, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{null, !2489, !428, !5, !45}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 32)
!2490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2491)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2492)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2493)
!2493 = !{!2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2492, file: !36, line: 266, baseType: !45, size: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2492, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2492, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2492, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2492, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2492, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2492, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2492, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2492, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2492, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2492, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2492, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2492, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2492, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2492, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2492, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2492, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2492, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2492, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2492, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2492, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2492, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2492, file: !36, line: 288, baseType: !165, size: 32, offset: 704)
!2517 = !DILocalVariable(name: "p", arg: 1, scope: !2486, file: !58, line: 14, type: !2489)
!2518 = !DILocation(line: 0, scope: !2486)
!2519 = !DILocalVariable(name: "in", arg: 2, scope: !2486, file: !58, line: 14, type: !428)
!2520 = !DILocalVariable(name: "out", arg: 3, scope: !2486, file: !58, line: 14, type: !5)
!2521 = !DILocalVariable(name: "size", arg: 4, scope: !2486, file: !58, line: 14, type: !45)
!2522 = !DILocalVariable(name: "m_vec_limbs", scope: !2486, file: !58, line: 19, type: !343)
!2523 = !DILocalVariable(name: "m_vecs_stored", scope: !2486, file: !58, line: 20, type: !45)
!2524 = !DILocalVariable(name: "r", scope: !2525, file: !58, line: 21, type: !45)
!2525 = distinct !DILexicalBlock(scope: !2486, file: !58, line: 21, column: 5)
!2526 = !DILocation(line: 0, scope: !2525)
!2527 = !DILocation(line: 21, column: 10, scope: !2525)
!2528 = !DILocation(line: 20, column: 9, scope: !2486)
!2529 = !DILocation(line: 21, scope: !2525)
!2530 = !DILocation(line: 21, column: 23, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2525, file: !58, line: 21, column: 5)
!2532 = !DILocation(line: 21, column: 5, scope: !2525)
!2533 = !DILocation(line: 22, column: 9, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !58, line: 22, column: 9)
!2535 = distinct !DILexicalBlock(scope: !2531, file: !58, line: 21, column: 36)
!2536 = !DILocation(line: 22, scope: !2534)
!2537 = !DILocalVariable(name: "c", scope: !2534, file: !58, line: 22, type: !45)
!2538 = !DILocation(line: 0, scope: !2534)
!2539 = !DILocation(line: 22, column: 27, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2534, file: !58, line: 22, column: 9)
!2541 = !DILocation(line: 23, column: 59, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2540, file: !58, line: 22, column: 40)
!2543 = !DILocation(line: 23, column: 66, scope: !2542)
!2544 = !DILocation(line: 23, column: 40, scope: !2542)
!2545 = !DILocation(line: 23, column: 76, scope: !2542)
!2546 = !DILocation(line: 23, column: 13, scope: !2542)
!2547 = !DILocation(line: 24, column: 19, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2542, file: !58, line: 24, column: 17)
!2549 = !DILocation(line: 25, column: 62, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2548, file: !58, line: 24, column: 25)
!2551 = !DILocation(line: 25, column: 69, scope: !2550)
!2552 = !DILocation(line: 25, column: 43, scope: !2550)
!2553 = !DILocation(line: 25, column: 79, scope: !2550)
!2554 = !DILocation(line: 25, column: 17, scope: !2550)
!2555 = !DILocation(line: 26, column: 13, scope: !2550)
!2556 = !DILocation(line: 27, column: 27, scope: !2542)
!2557 = !DILocation(line: 22, column: 36, scope: !2540)
!2558 = !DILocation(line: 22, column: 9, scope: !2540)
!2559 = distinct !{!2559, !2533, !2560, !244}
!2560 = !DILocation(line: 28, column: 9, scope: !2534)
!2561 = !DILocation(line: 21, column: 32, scope: !2531)
!2562 = !DILocation(line: 21, column: 5, scope: !2531)
!2563 = distinct !{!2563, !2532, !2564, !244}
!2564 = !DILocation(line: 29, column: 5, scope: !2525)
!2565 = !DILocation(line: 30, column: 1, scope: !2486)
!2566 = distinct !DISubprogram(name: "m_vec_copy", scope: !539, file: !539, line: 13, type: !2331, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2567 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2566, file: !539, line: 13, type: !45)
!2568 = !DILocation(line: 0, scope: !2566)
!2569 = !DILocalVariable(name: "in", arg: 2, scope: !2566, file: !539, line: 13, type: !428)
!2570 = !DILocalVariable(name: "out", arg: 3, scope: !2566, file: !539, line: 13, type: !5)
!2571 = !DILocalVariable(name: "i", scope: !2572, file: !539, line: 15, type: !15)
!2572 = distinct !DILexicalBlock(scope: !2566, file: !539, line: 15, column: 5)
!2573 = !DILocation(line: 0, scope: !2572)
!2574 = !DILocation(line: 15, column: 10, scope: !2572)
!2575 = !DILocation(line: 15, scope: !2572)
!2576 = !DILocation(line: 15, column: 26, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2572, file: !539, line: 15, column: 5)
!2578 = !DILocation(line: 15, column: 5, scope: !2572)
!2579 = !DILocation(line: 17, column: 18, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2577, file: !539, line: 16, column: 5)
!2581 = !DILocation(line: 17, column: 9, scope: !2580)
!2582 = !DILocation(line: 17, column: 16, scope: !2580)
!2583 = !DILocation(line: 15, column: 46, scope: !2577)
!2584 = !DILocation(line: 15, column: 5, scope: !2577)
!2585 = distinct !{!2585, !2578, !2586, !244}
!2586 = !DILocation(line: 18, column: 5, scope: !2572)
!2587 = !DILocation(line: 19, column: 1, scope: !2566)
!2588 = distinct !DISubprogram(name: "m_vec_add", scope: !539, file: !539, line: 22, type: !2331, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2589 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2588, file: !539, line: 22, type: !45)
!2590 = !DILocation(line: 0, scope: !2588)
!2591 = !DILocalVariable(name: "in", arg: 2, scope: !2588, file: !539, line: 22, type: !428)
!2592 = !DILocalVariable(name: "acc", arg: 3, scope: !2588, file: !539, line: 22, type: !5)
!2593 = !DILocalVariable(name: "i", scope: !2594, file: !539, line: 24, type: !15)
!2594 = distinct !DILexicalBlock(scope: !2588, file: !539, line: 24, column: 5)
!2595 = !DILocation(line: 0, scope: !2594)
!2596 = !DILocation(line: 24, column: 10, scope: !2594)
!2597 = !DILocation(line: 24, scope: !2594)
!2598 = !DILocation(line: 24, column: 26, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2594, file: !539, line: 24, column: 5)
!2600 = !DILocation(line: 24, column: 5, scope: !2594)
!2601 = !DILocation(line: 26, column: 19, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2599, file: !539, line: 25, column: 5)
!2603 = !DILocation(line: 26, column: 9, scope: !2602)
!2604 = !DILocation(line: 26, column: 16, scope: !2602)
!2605 = !DILocation(line: 24, column: 46, scope: !2599)
!2606 = !DILocation(line: 24, column: 5, scope: !2599)
!2607 = distinct !{!2607, !2600, !2608, !244}
!2608 = !DILocation(line: 27, column: 5, scope: !2594)
!2609 = !DILocation(line: 28, column: 1, scope: !2588)
!2610 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2611, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!45, !2489, !18, !49, !49, !18, !45, !45, !45, !45}
!2613 = !DILocalVariable(name: "p", arg: 1, scope: !2610, file: !58, line: 40, type: !2489)
!2614 = !DILocation(line: 0, scope: !2610)
!2615 = !DILocalVariable(name: "A", arg: 2, scope: !2610, file: !58, line: 40, type: !18)
!2616 = !DILocalVariable(name: "y", arg: 3, scope: !2610, file: !58, line: 41, type: !49)
!2617 = !DILocalVariable(name: "r", arg: 4, scope: !2610, file: !58, line: 41, type: !49)
!2618 = !DILocalVariable(name: "x", arg: 5, scope: !2610, file: !58, line: 42, type: !18)
!2619 = !DILocalVariable(name: "k", arg: 6, scope: !2610, file: !58, line: 42, type: !45)
!2620 = !DILocalVariable(name: "o", arg: 7, scope: !2610, file: !58, line: 42, type: !45)
!2621 = !DILocalVariable(name: "m", arg: 8, scope: !2610, file: !58, line: 42, type: !45)
!2622 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2610, file: !58, line: 42, type: !45)
!2623 = !DILocalVariable(name: "i", scope: !2624, file: !58, line: 51, type: !45)
!2624 = distinct !DILexicalBlock(scope: !2610, file: !58, line: 51, column: 5)
!2625 = !DILocation(line: 0, scope: !2624)
!2626 = !DILocation(line: 51, column: 10, scope: !2624)
!2627 = !DILocation(line: 51, scope: !2624)
!2628 = !DILocation(line: 51, column: 23, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2624, file: !58, line: 51, column: 5)
!2630 = !DILocation(line: 51, column: 5, scope: !2624)
!2631 = !DILocation(line: 57, column: 5, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2610, file: !58, line: 57, column: 5)
!2633 = !DILocation(line: 52, column: 16, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2629, file: !58, line: 51, column: 37)
!2635 = !DILocation(line: 52, column: 9, scope: !2634)
!2636 = !DILocation(line: 52, column: 14, scope: !2634)
!2637 = !DILocation(line: 51, column: 33, scope: !2629)
!2638 = !DILocation(line: 51, column: 5, scope: !2629)
!2639 = distinct !{!2639, !2630, !2640, !244}
!2640 = !DILocation(line: 53, column: 5, scope: !2624)
!2641 = !DILocation(line: 57, scope: !2632)
!2642 = !DILocalVariable(name: "i", scope: !2632, file: !58, line: 57, type: !45)
!2643 = !DILocation(line: 0, scope: !2632)
!2644 = !DILocation(line: 57, column: 23, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2632, file: !58, line: 57, column: 5)
!2646 = !DILocation(line: 58, column: 13, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2645, file: !58, line: 57, column: 33)
!2648 = !DILocation(line: 58, column: 26, scope: !2647)
!2649 = !DILocation(line: 58, column: 30, scope: !2647)
!2650 = !DILocation(line: 58, column: 21, scope: !2647)
!2651 = !DILocation(line: 58, column: 9, scope: !2647)
!2652 = !DILocation(line: 58, column: 36, scope: !2647)
!2653 = !DILocation(line: 57, column: 29, scope: !2645)
!2654 = !DILocation(line: 57, column: 5, scope: !2645)
!2655 = distinct !{!2655, !2631, !2656, !244}
!2656 = !DILocation(line: 59, column: 5, scope: !2632)
!2657 = !DILocation(line: 60, column: 25, scope: !2610)
!2658 = !DILocation(line: 60, column: 29, scope: !2610)
!2659 = !DILocation(line: 60, column: 5, scope: !2610)
!2660 = !DILocalVariable(name: "i", scope: !2661, file: !58, line: 63, type: !45)
!2661 = distinct !DILexicalBlock(scope: !2610, file: !58, line: 63, column: 5)
!2662 = !DILocation(line: 0, scope: !2661)
!2663 = !DILocation(line: 63, column: 10, scope: !2661)
!2664 = !DILocation(line: 63, scope: !2661)
!2665 = !DILocation(line: 63, column: 23, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2661, file: !58, line: 63, column: 5)
!2667 = !DILocation(line: 63, column: 5, scope: !2661)
!2668 = !DILocation(line: 64, column: 44, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2666, file: !58, line: 63, column: 33)
!2670 = !DILocation(line: 64, column: 50, scope: !2669)
!2671 = !DILocation(line: 64, column: 38, scope: !2669)
!2672 = !DILocation(line: 64, column: 13, scope: !2669)
!2673 = !DILocation(line: 64, column: 26, scope: !2669)
!2674 = !DILocation(line: 64, column: 30, scope: !2669)
!2675 = !DILocation(line: 64, column: 21, scope: !2669)
!2676 = !DILocation(line: 64, column: 9, scope: !2669)
!2677 = !DILocation(line: 64, column: 36, scope: !2669)
!2678 = !DILocation(line: 63, column: 29, scope: !2666)
!2679 = !DILocation(line: 63, column: 5, scope: !2666)
!2680 = distinct !{!2680, !2667, !2681, !244}
!2681 = !DILocation(line: 65, column: 5, scope: !2661)
!2682 = !DILocation(line: 67, column: 16, scope: !2610)
!2683 = !DILocation(line: 67, column: 20, scope: !2610)
!2684 = !DILocation(line: 67, column: 5, scope: !2610)
!2685 = !DILocalVariable(name: "full_rank", scope: !2610, file: !58, line: 70, type: !14)
!2686 = !DILocalVariable(name: "i", scope: !2687, file: !58, line: 71, type: !45)
!2687 = distinct !DILexicalBlock(scope: !2610, file: !58, line: 71, column: 5)
!2688 = !DILocation(line: 0, scope: !2687)
!2689 = !DILocation(line: 71, column: 10, scope: !2687)
!2690 = !DILocation(line: 71, scope: !2687)
!2691 = !DILocation(line: 71, column: 23, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2687, file: !58, line: 71, column: 5)
!2693 = !DILocation(line: 71, column: 5, scope: !2687)
!2694 = !DILocation(line: 72, column: 27, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2692, file: !58, line: 71, column: 42)
!2696 = !DILocation(line: 72, column: 32, scope: !2695)
!2697 = !DILocation(line: 72, column: 22, scope: !2695)
!2698 = !DILocation(line: 72, column: 19, scope: !2695)
!2699 = !DILocation(line: 71, column: 38, scope: !2692)
!2700 = !DILocation(line: 71, column: 5, scope: !2692)
!2701 = distinct !{!2701, !2693, !2702, !244}
!2702 = !DILocation(line: 73, column: 5, scope: !2687)
!2703 = !DILocation(line: 80, column: 19, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2610, file: !58, line: 80, column: 9)
!2705 = !DILocation(line: 88, column: 5, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2610, file: !58, line: 88, column: 5)
!2707 = distinct !{!2707, !2705, !2708, !244}
!2708 = !DILocation(line: 122, column: 5, scope: !2706)
!2709 = !DILocation(line: 88, scope: !2706)
!2710 = !DILocalVariable(name: "row", scope: !2706, file: !58, line: 88, type: !45)
!2711 = !DILocation(line: 0, scope: !2706)
!2712 = !DILocation(line: 88, column: 31, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2706, file: !58, line: 88, column: 5)
!2714 = !DILocalVariable(name: "finished", scope: !2610, file: !58, line: 46, type: !14)
!2715 = !DILocation(line: 90, column: 27, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2713, file: !58, line: 88, column: 44)
!2717 = !DILocalVariable(name: "col_upper_bound", scope: !2610, file: !58, line: 47, type: !45)
!2718 = !DILocalVariable(name: "col", scope: !2719, file: !58, line: 93, type: !45)
!2719 = distinct !DILexicalBlock(scope: !2716, file: !58, line: 93, column: 9)
!2720 = !DILocation(line: 0, scope: !2719)
!2721 = !DILocation(line: 93, column: 14, scope: !2719)
!2722 = !DILocation(line: 0, scope: !2716)
!2723 = !DILocation(line: 93, scope: !2719)
!2724 = !DILocation(line: 93, column: 33, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2719, file: !58, line: 93, column: 9)
!2726 = !DILocation(line: 93, column: 9, scope: !2719)
!2727 = !DILocation(line: 97, column: 50, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2725, file: !58, line: 93, column: 60)
!2729 = !DILocation(line: 97, column: 44, scope: !2728)
!2730 = !DILocation(line: 97, column: 30, scope: !2728)
!2731 = !DILocation(line: 97, column: 73, scope: !2728)
!2732 = !DILocalVariable(name: "correct_column", scope: !2610, file: !58, line: 48, type: !14)
!2733 = !DILocation(line: 99, column: 63, scope: !2728)
!2734 = !DILocation(line: 99, column: 48, scope: !2728)
!2735 = !DILocation(line: 99, column: 46, scope: !2728)
!2736 = !DILocalVariable(name: "u", scope: !2728, file: !58, line: 99, type: !14)
!2737 = !DILocation(line: 0, scope: !2728)
!2738 = !DILocation(line: 100, column: 13, scope: !2728)
!2739 = !DILocation(line: 100, column: 20, scope: !2728)
!2740 = !DILocalVariable(name: "i", scope: !2741, file: !58, line: 102, type: !45)
!2741 = distinct !DILexicalBlock(scope: !2728, file: !58, line: 102, column: 13)
!2742 = !DILocation(line: 0, scope: !2741)
!2743 = !DILocation(line: 102, column: 18, scope: !2741)
!2744 = !DILocation(line: 102, scope: !2741)
!2745 = !DILocation(line: 102, column: 31, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2741, file: !58, line: 102, column: 13)
!2747 = !DILocation(line: 102, column: 13, scope: !2741)
!2748 = !DILocation(line: 103, column: 53, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2746, file: !58, line: 102, column: 46)
!2750 = !DILocation(line: 103, column: 45, scope: !2749)
!2751 = !DILocation(line: 103, column: 34, scope: !2749)
!2752 = !DILocation(line: 103, column: 95, scope: !2749)
!2753 = !DILocation(line: 103, column: 99, scope: !2749)
!2754 = !DILocation(line: 103, column: 91, scope: !2749)
!2755 = !DILocation(line: 103, column: 80, scope: !2749)
!2756 = !DILocation(line: 103, column: 115, scope: !2749)
!2757 = !DILocation(line: 103, column: 76, scope: !2749)
!2758 = !DILocation(line: 104, column: 49, scope: !2749)
!2759 = !DILocation(line: 104, column: 53, scope: !2749)
!2760 = !DILocation(line: 104, column: 45, scope: !2749)
!2761 = !DILocation(line: 104, column: 34, scope: !2749)
!2762 = !DILocation(line: 104, column: 69, scope: !2749)
!2763 = !DILocation(line: 104, column: 30, scope: !2749)
!2764 = !DILocation(line: 104, column: 95, scope: !2749)
!2765 = !DILocation(line: 104, column: 99, scope: !2749)
!2766 = !DILocation(line: 104, column: 91, scope: !2749)
!2767 = !DILocation(line: 104, column: 80, scope: !2749)
!2768 = !DILocation(line: 104, column: 115, scope: !2749)
!2769 = !DILocation(line: 104, column: 76, scope: !2749)
!2770 = !DILocation(line: 105, column: 49, scope: !2749)
!2771 = !DILocation(line: 105, column: 53, scope: !2749)
!2772 = !DILocation(line: 105, column: 45, scope: !2749)
!2773 = !DILocation(line: 105, column: 34, scope: !2749)
!2774 = !DILocation(line: 105, column: 69, scope: !2749)
!2775 = !DILocation(line: 105, column: 30, scope: !2749)
!2776 = !DILocation(line: 105, column: 95, scope: !2749)
!2777 = !DILocation(line: 105, column: 99, scope: !2749)
!2778 = !DILocation(line: 105, column: 91, scope: !2749)
!2779 = !DILocation(line: 105, column: 80, scope: !2749)
!2780 = !DILocation(line: 105, column: 115, scope: !2749)
!2781 = !DILocation(line: 105, column: 76, scope: !2749)
!2782 = !DILocation(line: 106, column: 49, scope: !2749)
!2783 = !DILocation(line: 106, column: 53, scope: !2749)
!2784 = !DILocation(line: 106, column: 45, scope: !2749)
!2785 = !DILocation(line: 106, column: 34, scope: !2749)
!2786 = !DILocation(line: 106, column: 69, scope: !2749)
!2787 = !DILocation(line: 106, column: 30, scope: !2749)
!2788 = !DILocation(line: 106, column: 95, scope: !2749)
!2789 = !DILocation(line: 106, column: 99, scope: !2749)
!2790 = !DILocation(line: 106, column: 91, scope: !2749)
!2791 = !DILocation(line: 106, column: 80, scope: !2749)
!2792 = !DILocation(line: 106, column: 115, scope: !2749)
!2793 = !DILocation(line: 106, column: 76, scope: !2749)
!2794 = !DILocalVariable(name: "tmp", scope: !2749, file: !58, line: 103, type: !6)
!2795 = !DILocation(line: 0, scope: !2749)
!2796 = !DILocation(line: 108, column: 23, scope: !2749)
!2797 = !DILocation(line: 110, column: 34, scope: !2749)
!2798 = !DILocation(line: 110, column: 17, scope: !2749)
!2799 = !DILocation(line: 110, column: 48, scope: !2749)
!2800 = !DILocation(line: 111, column: 56, scope: !2749)
!2801 = !DILocation(line: 111, column: 34, scope: !2749)
!2802 = !DILocation(line: 111, column: 17, scope: !2749)
!2803 = !DILocation(line: 111, column: 48, scope: !2749)
!2804 = !DILocation(line: 112, column: 56, scope: !2749)
!2805 = !DILocation(line: 112, column: 34, scope: !2749)
!2806 = !DILocation(line: 112, column: 17, scope: !2749)
!2807 = !DILocation(line: 112, column: 48, scope: !2749)
!2808 = !DILocation(line: 113, column: 56, scope: !2749)
!2809 = !DILocation(line: 113, column: 34, scope: !2749)
!2810 = !DILocation(line: 113, column: 17, scope: !2749)
!2811 = !DILocation(line: 113, column: 48, scope: !2749)
!2812 = !DILocation(line: 114, column: 56, scope: !2749)
!2813 = !DILocation(line: 114, column: 34, scope: !2749)
!2814 = !DILocation(line: 114, column: 17, scope: !2749)
!2815 = !DILocation(line: 114, column: 48, scope: !2749)
!2816 = !DILocation(line: 115, column: 56, scope: !2749)
!2817 = !DILocation(line: 115, column: 34, scope: !2749)
!2818 = !DILocation(line: 115, column: 17, scope: !2749)
!2819 = !DILocation(line: 115, column: 48, scope: !2749)
!2820 = !DILocation(line: 116, column: 56, scope: !2749)
!2821 = !DILocation(line: 116, column: 34, scope: !2749)
!2822 = !DILocation(line: 116, column: 17, scope: !2749)
!2823 = !DILocation(line: 116, column: 48, scope: !2749)
!2824 = !DILocation(line: 117, column: 56, scope: !2749)
!2825 = !DILocation(line: 117, column: 34, scope: !2749)
!2826 = !DILocation(line: 117, column: 17, scope: !2749)
!2827 = !DILocation(line: 117, column: 48, scope: !2749)
!2828 = !DILocation(line: 102, column: 40, scope: !2746)
!2829 = !DILocation(line: 102, column: 13, scope: !2746)
!2830 = distinct !{!2830, !2747, !2831, !244}
!2831 = !DILocation(line: 118, column: 13, scope: !2741)
!2832 = !DILocation(line: 120, column: 33, scope: !2728)
!2833 = !DILocation(line: 93, column: 56, scope: !2725)
!2834 = !DILocation(line: 93, column: 9, scope: !2725)
!2835 = distinct !{!2835, !2726, !2836, !244}
!2836 = !DILocation(line: 121, column: 9, scope: !2719)
!2837 = !DILocation(line: 124, column: 1, scope: !2610)
!2838 = distinct !DISubprogram(name: "mat_mul", scope: !595, file: !595, line: 82, type: !1524, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2839 = !DILocalVariable(name: "a", arg: 1, scope: !2838, file: !595, line: 82, type: !49)
!2840 = !DILocation(line: 0, scope: !2838)
!2841 = !DILocalVariable(name: "b", arg: 2, scope: !2838, file: !595, line: 82, type: !49)
!2842 = !DILocalVariable(name: "c", arg: 3, scope: !2838, file: !595, line: 83, type: !18)
!2843 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2838, file: !595, line: 83, type: !45)
!2844 = !DILocalVariable(name: "row_a", arg: 5, scope: !2838, file: !595, line: 83, type: !45)
!2845 = !DILocalVariable(name: "col_b", arg: 6, scope: !2838, file: !595, line: 83, type: !45)
!2846 = !DILocalVariable(name: "i", scope: !2847, file: !595, line: 84, type: !45)
!2847 = distinct !DILexicalBlock(scope: !2838, file: !595, line: 84, column: 5)
!2848 = !DILocation(line: 0, scope: !2847)
!2849 = !DILocation(line: 84, column: 10, scope: !2847)
!2850 = !DILocation(line: 84, scope: !2847)
!2851 = !DILocation(line: 84, column: 23, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2847, file: !595, line: 84, column: 5)
!2853 = !DILocation(line: 84, column: 5, scope: !2847)
!2854 = !DILocation(line: 85, column: 9, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !595, line: 85, column: 9)
!2856 = distinct !DILexicalBlock(scope: !2852, file: !595, line: 84, column: 53)
!2857 = !DILocation(line: 85, scope: !2855)
!2858 = !DILocalVariable(name: "j", scope: !2855, file: !595, line: 85, type: !45)
!2859 = !DILocation(line: 0, scope: !2855)
!2860 = !DILocation(line: 86, column: 18, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !595, line: 85, column: 46)
!2862 = distinct !DILexicalBlock(scope: !2855, file: !595, line: 85, column: 9)
!2863 = !DILocation(line: 86, column: 16, scope: !2861)
!2864 = !DILocation(line: 85, column: 41, scope: !2862)
!2865 = !DILocation(line: 85, column: 9, scope: !2862)
!2866 = distinct !{!2866, !2854, !2867, !244}
!2867 = !DILocation(line: 87, column: 9, scope: !2855)
!2868 = !DILocation(line: 84, column: 32, scope: !2852)
!2869 = !DILocation(line: 84, column: 39, scope: !2852)
!2870 = !DILocation(line: 84, column: 5, scope: !2852)
!2871 = distinct !{!2871, !2853, !2872, !244}
!2872 = !DILocation(line: 88, column: 5, scope: !2847)
!2873 = !DILocation(line: 91, column: 1, scope: !2838)
!2874 = distinct !DISubprogram(name: "sub_f", scope: !595, file: !595, line: 49, type: !1623, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2875 = !DILocalVariable(name: "a", arg: 1, scope: !2874, file: !595, line: 49, type: !14)
!2876 = !DILocation(line: 0, scope: !2874)
!2877 = !DILocalVariable(name: "b", arg: 2, scope: !2874, file: !595, line: 49, type: !14)
!2878 = !DILocation(line: 50, column: 14, scope: !2874)
!2879 = !DILocation(line: 50, column: 5, scope: !2874)
!2880 = distinct !DISubprogram(name: "EF", scope: !2881, file: !2881, line: 60, type: !2882, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2881 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2882 = !DISubroutineType(types: !2883)
!2883 = !{null, !18, !45, !45}
!2884 = !DILocalVariable(name: "A", arg: 1, scope: !2880, file: !2881, line: 60, type: !18)
!2885 = !DILocation(line: 0, scope: !2880)
!2886 = !DILocalVariable(name: "nrows", arg: 2, scope: !2880, file: !2881, line: 60, type: !45)
!2887 = !DILocalVariable(name: "ncols", arg: 3, scope: !2880, file: !2881, line: 60, type: !45)
!2888 = !DILocalVariable(name: "_pivot_row", scope: !2880, file: !2881, line: 62, type: !2889, align: 256)
!2889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !82)
!2890 = !DILocation(line: 62, column: 27, scope: !2880)
!2891 = !DILocalVariable(name: "_pivot_row2", scope: !2880, file: !2881, line: 63, type: !2889, align: 256)
!2892 = !DILocation(line: 63, column: 27, scope: !2880)
!2893 = !DILocalVariable(name: "packed_A", scope: !2880, file: !2881, line: 64, type: !2894, align: 256)
!2894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 90880, elements: !2895)
!2895 = !{!2896}
!2896 = !DISubrange(count: 1420)
!2897 = !DILocation(line: 64, column: 27, scope: !2880)
!2898 = !DILocation(line: 66, column: 26, scope: !2880)
!2899 = !DILocation(line: 66, column: 32, scope: !2880)
!2900 = !DILocalVariable(name: "row_len", scope: !2880, file: !2881, line: 66, type: !45)
!2901 = !DILocalVariable(name: "i", scope: !2902, file: !2881, line: 69, type: !45)
!2902 = distinct !DILexicalBlock(scope: !2880, file: !2881, line: 69, column: 5)
!2903 = !DILocation(line: 0, scope: !2902)
!2904 = !DILocation(line: 69, column: 10, scope: !2902)
!2905 = !DILocation(line: 69, scope: !2902)
!2906 = !DILocation(line: 69, column: 23, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2902, file: !2881, line: 69, column: 5)
!2908 = !DILocation(line: 69, column: 5, scope: !2902)
!2909 = !DILocation(line: 77, column: 5, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2880, file: !2881, line: 77, column: 5)
!2911 = !DILocation(line: 70, column: 29, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2907, file: !2881, line: 69, column: 37)
!2913 = !DILocation(line: 70, column: 25, scope: !2912)
!2914 = !DILocation(line: 70, column: 51, scope: !2912)
!2915 = !DILocation(line: 70, column: 47, scope: !2912)
!2916 = !DILocation(line: 70, column: 9, scope: !2912)
!2917 = !DILocation(line: 69, column: 33, scope: !2907)
!2918 = !DILocation(line: 69, column: 5, scope: !2907)
!2919 = distinct !{!2919, !2908, !2920, !244}
!2920 = !DILocation(line: 71, column: 5, scope: !2902)
!2921 = !DILocation(line: 77, scope: !2910)
!2922 = !DILocalVariable(name: "pivot_row", scope: !2880, file: !2881, line: 76, type: !45)
!2923 = !DILocalVariable(name: "pivot_col", scope: !2910, file: !2881, line: 77, type: !45)
!2924 = !DILocation(line: 0, scope: !2910)
!2925 = !DILocation(line: 77, column: 39, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2910, file: !2881, line: 77, column: 5)
!2927 = !DILocation(line: 138, column: 5, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2880, file: !2881, line: 138, column: 5)
!2929 = !DILocation(line: 79, column: 37, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2926, file: !2881, line: 77, column: 61)
!2931 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2930, file: !2881, line: 79, type: !45)
!2932 = !DILocation(line: 0, scope: !2930)
!2933 = !DILocation(line: 80, column: 37, scope: !2930)
!2934 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2930, file: !2881, line: 80, type: !45)
!2935 = !DILocalVariable(name: "i", scope: !2936, file: !2881, line: 85, type: !45)
!2936 = distinct !DILexicalBlock(scope: !2930, file: !2881, line: 85, column: 9)
!2937 = !DILocation(line: 0, scope: !2936)
!2938 = !DILocation(line: 85, column: 14, scope: !2936)
!2939 = !DILocation(line: 85, scope: !2936)
!2940 = !DILocation(line: 85, column: 27, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2936, file: !2881, line: 85, column: 9)
!2942 = !DILocation(line: 85, column: 9, scope: !2936)
!2943 = !DILocation(line: 93, column: 9, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2930, file: !2881, line: 93, column: 9)
!2945 = !DILocation(line: 86, column: 13, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2941, file: !2881, line: 85, column: 43)
!2947 = !DILocation(line: 86, column: 27, scope: !2946)
!2948 = !DILocation(line: 87, column: 13, scope: !2946)
!2949 = !DILocation(line: 87, column: 28, scope: !2946)
!2950 = !DILocation(line: 85, column: 39, scope: !2941)
!2951 = !DILocation(line: 85, column: 9, scope: !2941)
!2952 = distinct !{!2952, !2942, !2953, !244}
!2953 = !DILocation(line: 88, column: 9, scope: !2936)
!2954 = !DILocation(line: 0, scope: !2944)
!2955 = !DILocalVariable(name: "row", scope: !2944, file: !2881, line: 93, type: !45)
!2956 = !DILocalVariable(name: "pivot", scope: !2930, file: !2881, line: 91, type: !14)
!2957 = !DILocalVariable(name: "pivot_is_zero", scope: !2930, file: !2881, line: 92, type: !6)
!2958 = !DILocation(line: 94, column: 24, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2944, file: !2881, line: 93, column: 9)
!2960 = !DILocation(line: 94, column: 21, scope: !2959)
!2961 = !DILocation(line: 96, column: 38, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2959, file: !2881, line: 94, column: 80)
!2963 = !DILocation(line: 96, column: 37, scope: !2962)
!2964 = !DILocalVariable(name: "is_pivot_row", scope: !2962, file: !2881, line: 96, type: !6)
!2965 = !DILocation(line: 0, scope: !2962)
!2966 = !DILocation(line: 97, column: 40, scope: !2962)
!2967 = !DILocalVariable(name: "below_pivot_row", scope: !2962, file: !2881, line: 97, type: !6)
!2968 = !DILocalVariable(name: "j", scope: !2969, file: !2881, line: 99, type: !45)
!2969 = distinct !DILexicalBlock(scope: !2962, file: !2881, line: 99, column: 13)
!2970 = !DILocation(line: 0, scope: !2969)
!2971 = !DILocation(line: 99, column: 18, scope: !2969)
!2972 = !DILocation(line: 99, scope: !2969)
!2973 = !DILocation(line: 99, column: 31, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2969, file: !2881, line: 99, column: 13)
!2975 = !DILocation(line: 99, column: 13, scope: !2969)
!2976 = !DILocation(line: 100, column: 67, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2974, file: !2881, line: 99, column: 47)
!2978 = !DILocation(line: 100, column: 48, scope: !2977)
!2979 = !DILocation(line: 101, column: 47, scope: !2977)
!2980 = !DILocation(line: 101, column: 57, scope: !2977)
!2981 = !DILocation(line: 101, column: 34, scope: !2977)
!2982 = !DILocation(line: 100, column: 85, scope: !2977)
!2983 = !DILocation(line: 100, column: 17, scope: !2977)
!2984 = !DILocation(line: 100, column: 31, scope: !2977)
!2985 = !DILocation(line: 99, column: 43, scope: !2974)
!2986 = !DILocation(line: 99, column: 13, scope: !2974)
!2987 = distinct !{!2987, !2975, !2988, !244}
!2988 = !DILocation(line: 102, column: 13, scope: !2969)
!2989 = !DILocation(line: 103, column: 21, scope: !2962)
!2990 = !DILocation(line: 104, column: 44, scope: !2962)
!2991 = !DILocation(line: 104, column: 30, scope: !2962)
!2992 = !DILocation(line: 104, column: 29, scope: !2962)
!2993 = !DILocation(line: 94, column: 76, scope: !2959)
!2994 = !DILocation(line: 93, column: 9, scope: !2959)
!2995 = distinct !{!2995, !2943, !2996, !244}
!2996 = !DILocation(line: 105, column: 9, scope: !2944)
!2997 = !DILocation(line: 108, column: 19, scope: !2930)
!2998 = !DILocalVariable(name: "inverse", scope: !2880, file: !2881, line: 75, type: !14)
!2999 = !DILocation(line: 109, column: 9, scope: !2930)
!3000 = !DILocalVariable(name: "row", scope: !3001, file: !2881, line: 113, type: !45)
!3001 = distinct !DILexicalBlock(scope: !2930, file: !2881, line: 113, column: 9)
!3002 = !DILocation(line: 0, scope: !3001)
!3003 = !DILocation(line: 113, column: 14, scope: !3001)
!3004 = !DILocation(line: 113, scope: !3001)
!3005 = !DILocation(line: 113, column: 51, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3001, file: !2881, line: 113, column: 9)
!3007 = !DILocation(line: 113, column: 9, scope: !3001)
!3008 = !DILocation(line: 124, column: 9, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2930, file: !2881, line: 124, column: 9)
!3010 = !DILocation(line: 114, column: 33, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3006, file: !2881, line: 113, column: 84)
!3012 = !DILocation(line: 114, column: 63, scope: !3011)
!3013 = !DILocalVariable(name: "do_copy", scope: !3011, file: !2881, line: 114, type: !6)
!3014 = !DILocation(line: 0, scope: !3011)
!3015 = !DILocalVariable(name: "do_not_copy", scope: !3011, file: !2881, line: 115, type: !6)
!3016 = !DILocalVariable(name: "col", scope: !3017, file: !2881, line: 116, type: !45)
!3017 = distinct !DILexicalBlock(scope: !3011, file: !2881, line: 116, column: 13)
!3018 = !DILocation(line: 0, scope: !3017)
!3019 = !DILocation(line: 116, column: 18, scope: !3017)
!3020 = !DILocation(line: 116, scope: !3017)
!3021 = !DILocation(line: 116, column: 35, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3017, file: !2881, line: 116, column: 13)
!3023 = !DILocation(line: 116, column: 13, scope: !3017)
!3024 = !DILocation(line: 118, column: 49, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3022, file: !2881, line: 116, column: 53)
!3026 = !DILocation(line: 118, column: 59, scope: !3025)
!3027 = !DILocation(line: 118, column: 36, scope: !3025)
!3028 = !DILocation(line: 118, column: 34, scope: !3025)
!3029 = !DILocation(line: 119, column: 32, scope: !3025)
!3030 = !DILocation(line: 119, column: 30, scope: !3025)
!3031 = !DILocation(line: 118, column: 67, scope: !3025)
!3032 = !DILocation(line: 117, column: 30, scope: !3025)
!3033 = !DILocation(line: 117, column: 40, scope: !3025)
!3034 = !DILocation(line: 117, column: 17, scope: !3025)
!3035 = !DILocation(line: 117, column: 47, scope: !3025)
!3036 = !DILocation(line: 116, column: 49, scope: !3022)
!3037 = !DILocation(line: 116, column: 13, scope: !3022)
!3038 = distinct !{!3038, !3023, !3039, !244}
!3039 = !DILocation(line: 120, column: 13, scope: !3017)
!3040 = !DILocation(line: 113, column: 80, scope: !3006)
!3041 = !DILocation(line: 113, column: 9, scope: !3006)
!3042 = distinct !{!3042, !3007, !3043, !244}
!3043 = !DILocation(line: 121, column: 9, scope: !3001)
!3044 = !DILocation(line: 124, scope: !3009)
!3045 = !DILocalVariable(name: "row", scope: !3009, file: !2881, line: 124, type: !45)
!3046 = !DILocation(line: 0, scope: !3009)
!3047 = !DILocation(line: 124, column: 51, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3009, file: !2881, line: 124, column: 9)
!3049 = !DILocation(line: 125, column: 46, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3048, file: !2881, line: 124, column: 67)
!3051 = !DILocalVariable(name: "below_pivot", scope: !3050, file: !2881, line: 125, type: !14)
!3052 = !DILocation(line: 0, scope: !3050)
!3053 = !DILocation(line: 126, column: 74, scope: !3050)
!3054 = !DILocation(line: 126, column: 68, scope: !3050)
!3055 = !DILocation(line: 126, column: 41, scope: !3050)
!3056 = !DILocalVariable(name: "elt_to_elim", scope: !3050, file: !2881, line: 126, type: !14)
!3057 = !DILocation(line: 128, column: 63, scope: !3050)
!3058 = !DILocation(line: 129, column: 52, scope: !3050)
!3059 = !DILocation(line: 129, column: 46, scope: !3050)
!3060 = !DILocation(line: 128, column: 13, scope: !3050)
!3061 = !DILocation(line: 124, column: 63, scope: !3048)
!3062 = !DILocation(line: 124, column: 9, scope: !3048)
!3063 = distinct !{!3063, !3008, !3064, !244}
!3064 = !DILocation(line: 130, column: 9, scope: !3009)
!3065 = !DILocation(line: 132, column: 19, scope: !2930)
!3066 = !DILocation(line: 77, column: 57, scope: !2926)
!3067 = !DILocation(line: 77, column: 5, scope: !2926)
!3068 = distinct !{!3068, !2909, !3069, !244}
!3069 = !DILocation(line: 133, column: 5, scope: !2910)
!3070 = !DILocation(line: 138, scope: !2928)
!3071 = !DILocalVariable(name: "i", scope: !2928, file: !2881, line: 138, type: !45)
!3072 = !DILocation(line: 0, scope: !2928)
!3073 = !DILocation(line: 138, column: 23, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !2928, file: !2881, line: 138, column: 5)
!3075 = !DILocation(line: 139, column: 47, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3074, file: !2881, line: 138, column: 37)
!3077 = !DILocation(line: 139, column: 43, scope: !3076)
!3078 = !DILocation(line: 139, column: 9, scope: !3076)
!3079 = !DILocalVariable(name: "j", scope: !3080, file: !2881, line: 140, type: !45)
!3080 = distinct !DILexicalBlock(scope: !3076, file: !2881, line: 140, column: 9)
!3081 = !DILocation(line: 0, scope: !3080)
!3082 = !DILocation(line: 140, column: 14, scope: !3080)
!3083 = !DILocation(line: 140, scope: !3080)
!3084 = !DILocation(line: 140, column: 27, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3080, file: !2881, line: 140, column: 9)
!3086 = !DILocation(line: 140, column: 9, scope: !3080)
!3087 = !DILocation(line: 141, column: 32, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3085, file: !2881, line: 140, column: 41)
!3089 = !DILocation(line: 141, column: 17, scope: !3088)
!3090 = !DILocation(line: 141, column: 13, scope: !3088)
!3091 = !DILocation(line: 141, column: 30, scope: !3088)
!3092 = !DILocation(line: 140, column: 37, scope: !3085)
!3093 = !DILocation(line: 140, column: 9, scope: !3085)
!3094 = distinct !{!3094, !3086, !3095, !244}
!3095 = !DILocation(line: 142, column: 9, scope: !3080)
!3096 = !DILocation(line: 138, column: 33, scope: !3074)
!3097 = !DILocation(line: 138, column: 5, scope: !3074)
!3098 = distinct !{!3098, !2927, !3099, !244}
!3099 = !DILocation(line: 143, column: 5, scope: !2928)
!3100 = !DILocation(line: 145, column: 5, scope: !2880)
!3101 = !DILocation(line: 146, column: 5, scope: !2880)
!3102 = !DILocation(line: 147, column: 5, scope: !2880)
!3103 = !DILocation(line: 148, column: 5, scope: !2880)
!3104 = !DILocation(line: 149, column: 1, scope: !2880)
!3105 = distinct !DISubprogram(name: "ct_compare_8", scope: !3106, file: !3106, line: 51, type: !1623, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3106 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3107 = !DILocalVariable(name: "a", arg: 1, scope: !3105, file: !3106, line: 51, type: !14)
!3108 = !DILocation(line: 0, scope: !3105)
!3109 = !DILocalVariable(name: "b", arg: 2, scope: !3105, file: !3106, line: 51, type: !14)
!3110 = !DILocation(line: 52, column: 42, scope: !3105)
!3111 = !DILocation(line: 52, column: 13, scope: !3105)
!3112 = !DILocation(line: 52, column: 71, scope: !3105)
!3113 = !DILocation(line: 52, column: 69, scope: !3105)
!3114 = !DILocation(line: 52, column: 5, scope: !3105)
!3115 = distinct !DISubprogram(name: "mul_fx8", scope: !595, file: !595, line: 29, type: !3116, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!6, !14, !6}
!3118 = !DILocalVariable(name: "a", arg: 1, scope: !3115, file: !595, line: 29, type: !14)
!3119 = !DILocation(line: 0, scope: !3115)
!3120 = !DILocalVariable(name: "b", arg: 2, scope: !3115, file: !595, line: 29, type: !6)
!3121 = !DILocation(line: 32, column: 13, scope: !3115)
!3122 = !DILocation(line: 32, column: 10, scope: !3115)
!3123 = !DILocation(line: 32, column: 17, scope: !3115)
!3124 = !DILocalVariable(name: "p", scope: !3115, file: !595, line: 31, type: !6)
!3125 = !DILocation(line: 33, column: 13, scope: !3115)
!3126 = !DILocation(line: 33, column: 10, scope: !3115)
!3127 = !DILocation(line: 33, column: 17, scope: !3115)
!3128 = !DILocation(line: 33, column: 7, scope: !3115)
!3129 = !DILocation(line: 34, column: 13, scope: !3115)
!3130 = !DILocation(line: 34, column: 10, scope: !3115)
!3131 = !DILocation(line: 34, column: 17, scope: !3115)
!3132 = !DILocation(line: 34, column: 7, scope: !3115)
!3133 = !DILocation(line: 35, column: 13, scope: !3115)
!3134 = !DILocation(line: 35, column: 10, scope: !3115)
!3135 = !DILocation(line: 35, column: 17, scope: !3115)
!3136 = !DILocation(line: 35, column: 7, scope: !3115)
!3137 = !DILocalVariable(name: "top_p", scope: !3115, file: !595, line: 38, type: !6)
!3138 = !DILocation(line: 39, column: 32, scope: !3115)
!3139 = !DILocation(line: 39, column: 47, scope: !3115)
!3140 = !DILocation(line: 39, column: 38, scope: !3115)
!3141 = !DILocation(line: 39, column: 54, scope: !3115)
!3142 = !DILocalVariable(name: "out", scope: !3115, file: !595, line: 39, type: !6)
!3143 = !DILocation(line: 40, column: 5, scope: !3115)
!3144 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2881, file: !2881, line: 24, type: !3145, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{null, !49, !5, !45}
!3147 = !DILocalVariable(name: "in", arg: 1, scope: !3144, file: !2881, line: 24, type: !49)
!3148 = !DILocation(line: 0, scope: !3144)
!3149 = !DILocalVariable(name: "out", arg: 2, scope: !3144, file: !2881, line: 24, type: !5)
!3150 = !DILocalVariable(name: "ncols", arg: 3, scope: !3144, file: !2881, line: 24, type: !45)
!3151 = !DILocalVariable(name: "out8", scope: !3144, file: !2881, line: 26, type: !18)
!3152 = !DILocalVariable(name: "i", scope: !3144, file: !2881, line: 25, type: !45)
!3153 = !DILocation(line: 27, column: 9, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3144, file: !2881, line: 27, column: 5)
!3155 = !DILocation(line: 27, scope: !3154)
!3156 = !DILocation(line: 27, column: 17, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3154, file: !2881, line: 27, column: 5)
!3158 = !DILocation(line: 27, column: 20, scope: !3157)
!3159 = !DILocation(line: 27, column: 5, scope: !3154)
!3160 = !DILocation(line: 31, column: 23, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3157, file: !2881, line: 27, column: 36)
!3162 = !DILocation(line: 31, column: 44, scope: !3161)
!3163 = !DILocation(line: 31, column: 40, scope: !3161)
!3164 = !DILocation(line: 31, column: 48, scope: !3161)
!3165 = !DILocation(line: 31, column: 37, scope: !3161)
!3166 = !DILocation(line: 31, column: 15, scope: !3161)
!3167 = !DILocation(line: 31, column: 9, scope: !3161)
!3168 = !DILocation(line: 31, column: 20, scope: !3161)
!3169 = !DILocation(line: 27, column: 31, scope: !3157)
!3170 = !DILocation(line: 27, column: 5, scope: !3157)
!3171 = distinct !{!3171, !3159, !3172, !244}
!3172 = !DILocation(line: 33, column: 5, scope: !3154)
!3173 = !DILocation(line: 34, column: 19, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3144, file: !2881, line: 34, column: 9)
!3175 = !DILocation(line: 38, column: 23, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3174, file: !2881, line: 34, column: 24)
!3177 = !DILocation(line: 38, column: 15, scope: !3176)
!3178 = !DILocation(line: 38, column: 9, scope: !3176)
!3179 = !DILocation(line: 38, column: 20, scope: !3176)
!3180 = !DILocation(line: 40, column: 5, scope: !3176)
!3181 = !DILocation(line: 41, column: 1, scope: !3144)
!3182 = distinct !DISubprogram(name: "ct_compare_64", scope: !3106, file: !3106, line: 46, type: !3183, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!6, !45, !45}
!3185 = !DILocalVariable(name: "a", arg: 1, scope: !3182, file: !3106, line: 46, type: !45)
!3186 = !DILocation(line: 0, scope: !3182)
!3187 = !DILocalVariable(name: "b", arg: 2, scope: !3182, file: !3106, line: 46, type: !45)
!3188 = !DILocation(line: 47, column: 38, scope: !3182)
!3189 = !DILocation(line: 47, column: 44, scope: !3182)
!3190 = !DILocation(line: 47, column: 73, scope: !3182)
!3191 = !DILocation(line: 47, column: 71, scope: !3182)
!3192 = !DILocation(line: 47, column: 5, scope: !3182)
!3193 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3106, file: !3106, line: 35, type: !3183, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3194 = !DILocalVariable(name: "a", arg: 1, scope: !3193, file: !3106, line: 35, type: !45)
!3195 = !DILocation(line: 0, scope: !3193)
!3196 = !DILocalVariable(name: "b", arg: 2, scope: !3193, file: !3106, line: 35, type: !45)
!3197 = !DILocalVariable(name: "diff", scope: !3193, file: !3106, line: 36, type: !46)
!3198 = !DILocation(line: 37, column: 30, scope: !3193)
!3199 = !DILocation(line: 37, column: 59, scope: !3193)
!3200 = !DILocation(line: 37, column: 57, scope: !3193)
!3201 = !DILocation(line: 37, column: 5, scope: !3193)
!3202 = distinct !DISubprogram(name: "m_extract_element", scope: !2881, file: !2881, line: 16, type: !3203, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!14, !428, !45}
!3205 = !DILocalVariable(name: "in", arg: 1, scope: !3202, file: !2881, line: 16, type: !428)
!3206 = !DILocation(line: 0, scope: !3202)
!3207 = !DILocalVariable(name: "index", arg: 2, scope: !3202, file: !2881, line: 16, type: !45)
!3208 = !DILocation(line: 17, column: 27, scope: !3202)
!3209 = !DILocalVariable(name: "leg", scope: !3202, file: !2881, line: 17, type: !343)
!3210 = !DILocation(line: 18, column: 30, scope: !3202)
!3211 = !DILocalVariable(name: "offset", scope: !3202, file: !2881, line: 18, type: !343)
!3212 = !DILocation(line: 20, column: 13, scope: !3202)
!3213 = !DILocation(line: 20, column: 31, scope: !3202)
!3214 = !DILocation(line: 20, column: 21, scope: !3202)
!3215 = !DILocation(line: 20, column: 12, scope: !3202)
!3216 = !DILocation(line: 20, column: 5, scope: !3202)
!3217 = distinct !DISubprogram(name: "inverse_f", scope: !595, file: !595, line: 58, type: !3218, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!14, !14}
!3220 = !DILocalVariable(name: "a", arg: 1, scope: !3217, file: !595, line: 58, type: !14)
!3221 = !DILocation(line: 0, scope: !3217)
!3222 = !DILocation(line: 62, column: 24, scope: !3217)
!3223 = !DILocalVariable(name: "a2", scope: !3217, file: !595, line: 62, type: !14)
!3224 = !DILocation(line: 63, column: 24, scope: !3217)
!3225 = !DILocalVariable(name: "a4", scope: !3217, file: !595, line: 63, type: !14)
!3226 = !DILocation(line: 64, column: 24, scope: !3217)
!3227 = !DILocalVariable(name: "a8", scope: !3217, file: !595, line: 64, type: !14)
!3228 = !DILocation(line: 65, column: 24, scope: !3217)
!3229 = !DILocalVariable(name: "a6", scope: !3217, file: !595, line: 65, type: !14)
!3230 = !DILocation(line: 66, column: 25, scope: !3217)
!3231 = !DILocalVariable(name: "a14", scope: !3217, file: !595, line: 66, type: !14)
!3232 = !DILocation(line: 68, column: 5, scope: !3217)
!3233 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3106, file: !3106, line: 94, type: !3234, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{null, !343, !428, !14, !5}
!3236 = !DILocalVariable(name: "legs", arg: 1, scope: !3233, file: !3106, line: 94, type: !343)
!3237 = !DILocation(line: 0, scope: !3233)
!3238 = !DILocalVariable(name: "in", arg: 2, scope: !3233, file: !3106, line: 94, type: !428)
!3239 = !DILocalVariable(name: "a", arg: 3, scope: !3233, file: !3106, line: 94, type: !14)
!3240 = !DILocalVariable(name: "acc", arg: 4, scope: !3233, file: !3106, line: 94, type: !5)
!3241 = !DILocation(line: 95, column: 20, scope: !3233)
!3242 = !DILocalVariable(name: "tab", scope: !3233, file: !3106, line: 95, type: !19)
!3243 = !DILocalVariable(name: "lsb_ask", scope: !3233, file: !3106, line: 97, type: !6)
!3244 = !DILocalVariable(name: "i", scope: !3245, file: !3106, line: 99, type: !45)
!3245 = distinct !DILexicalBlock(scope: !3233, file: !3106, line: 99, column: 5)
!3246 = !DILocation(line: 0, scope: !3245)
!3247 = !DILocation(line: 99, column: 9, scope: !3245)
!3248 = !DILocation(line: 99, scope: !3245)
!3249 = !DILocation(line: 99, column: 20, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3245, file: !3106, line: 99, column: 5)
!3251 = !DILocation(line: 99, column: 5, scope: !3245)
!3252 = !DILocation(line: 100, column: 21, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3250, file: !3106, line: 99, column: 32)
!3254 = !DILocation(line: 100, column: 33, scope: !3253)
!3255 = !DILocation(line: 100, column: 51, scope: !3253)
!3256 = !DILocation(line: 100, column: 46, scope: !3253)
!3257 = !DILocation(line: 100, column: 44, scope: !3253)
!3258 = !DILocation(line: 101, column: 27, scope: !3253)
!3259 = !DILocation(line: 101, column: 33, scope: !3253)
!3260 = !DILocation(line: 101, column: 52, scope: !3253)
!3261 = !DILocation(line: 101, column: 59, scope: !3253)
!3262 = !DILocation(line: 101, column: 46, scope: !3253)
!3263 = !DILocation(line: 101, column: 44, scope: !3253)
!3264 = !DILocation(line: 101, column: 17, scope: !3253)
!3265 = !DILocation(line: 102, column: 21, scope: !3253)
!3266 = !DILocation(line: 102, column: 27, scope: !3253)
!3267 = !DILocation(line: 102, column: 33, scope: !3253)
!3268 = !DILocation(line: 102, column: 52, scope: !3253)
!3269 = !DILocation(line: 102, column: 59, scope: !3253)
!3270 = !DILocation(line: 102, column: 46, scope: !3253)
!3271 = !DILocation(line: 102, column: 44, scope: !3253)
!3272 = !DILocation(line: 102, column: 17, scope: !3253)
!3273 = !DILocation(line: 103, column: 21, scope: !3253)
!3274 = !DILocation(line: 103, column: 27, scope: !3253)
!3275 = !DILocation(line: 103, column: 33, scope: !3253)
!3276 = !DILocation(line: 103, column: 52, scope: !3253)
!3277 = !DILocation(line: 103, column: 59, scope: !3253)
!3278 = !DILocation(line: 103, column: 46, scope: !3253)
!3279 = !DILocation(line: 103, column: 44, scope: !3253)
!3280 = !DILocation(line: 103, column: 17, scope: !3253)
!3281 = !DILocation(line: 100, column: 9, scope: !3253)
!3282 = !DILocation(line: 100, column: 16, scope: !3253)
!3283 = !DILocation(line: 99, column: 29, scope: !3250)
!3284 = !DILocation(line: 99, column: 5, scope: !3250)
!3285 = distinct !{!3285, !3251, !3286, !244}
!3286 = !DILocation(line: 104, column: 5, scope: !3245)
!3287 = !DILocation(line: 105, column: 1, scope: !3233)
!3288 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2881, file: !2881, line: 44, type: !3289, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{null, !45, !428, !18}
!3291 = !DILocalVariable(name: "legs", arg: 1, scope: !3288, file: !2881, line: 44, type: !45)
!3292 = !DILocation(line: 0, scope: !3288)
!3293 = !DILocalVariable(name: "in", arg: 2, scope: !3288, file: !2881, line: 44, type: !428)
!3294 = !DILocalVariable(name: "out", arg: 3, scope: !3288, file: !2881, line: 44, type: !18)
!3295 = !DILocalVariable(name: "in8", scope: !3288, file: !2881, line: 45, type: !49)
!3296 = !DILocalVariable(name: "i", scope: !3297, file: !2881, line: 46, type: !45)
!3297 = distinct !DILexicalBlock(scope: !3288, file: !2881, line: 46, column: 5)
!3298 = !DILocation(line: 0, scope: !3297)
!3299 = !DILocation(line: 46, column: 9, scope: !3297)
!3300 = !DILocation(line: 46, scope: !3297)
!3301 = !DILocation(line: 46, column: 29, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3297, file: !2881, line: 46, column: 5)
!3303 = !DILocation(line: 46, column: 22, scope: !3302)
!3304 = !DILocation(line: 46, column: 5, scope: !3297)
!3305 = !DILocation(line: 51, column: 26, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3302, file: !2881, line: 46, column: 42)
!3307 = !DILocation(line: 51, column: 21, scope: !3306)
!3308 = !DILocation(line: 51, column: 31, scope: !3306)
!3309 = !DILocation(line: 51, column: 9, scope: !3306)
!3310 = !DILocation(line: 51, column: 18, scope: !3306)
!3311 = !DILocation(line: 52, column: 26, scope: !3306)
!3312 = !DILocation(line: 52, column: 21, scope: !3306)
!3313 = !DILocation(line: 52, column: 30, scope: !3306)
!3314 = !DILocation(line: 52, column: 14, scope: !3306)
!3315 = !DILocation(line: 52, column: 9, scope: !3306)
!3316 = !DILocation(line: 52, column: 18, scope: !3306)
!3317 = !DILocation(line: 46, column: 37, scope: !3302)
!3318 = !DILocation(line: 46, column: 5, scope: !3302)
!3319 = distinct !{!3319, !3304, !3320, !244}
!3320 = !DILocation(line: 54, column: 5, scope: !3297)
!3321 = !DILocation(line: 55, column: 1, scope: !3288)
!3322 = distinct !DISubprogram(name: "mul_table", scope: !595, file: !595, line: 136, type: !596, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3323 = !DILocalVariable(name: "b", arg: 1, scope: !3322, file: !595, line: 136, type: !12)
!3324 = !DILocation(line: 0, scope: !3322)
!3325 = !DILocation(line: 137, column: 19, scope: !3322)
!3326 = !DILocation(line: 137, column: 33, scope: !3322)
!3327 = !DILocalVariable(name: "x", scope: !3322, file: !595, line: 137, type: !19)
!3328 = !DILocalVariable(name: "high_nibble_mask", scope: !3322, file: !595, line: 139, type: !19)
!3329 = !DILocation(line: 141, column: 28, scope: !3322)
!3330 = !DILocalVariable(name: "high_half", scope: !3322, file: !595, line: 141, type: !19)
!3331 = !DILocation(line: 142, column: 28, scope: !3322)
!3332 = !DILocation(line: 142, column: 47, scope: !3322)
!3333 = !DILocation(line: 142, column: 34, scope: !3322)
!3334 = !DILocation(line: 142, column: 5, scope: !3322)
!3335 = distinct !DISubprogram(name: "mul_f", scope: !595, file: !595, line: 10, type: !1623, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3336 = !DILocalVariable(name: "a", arg: 1, scope: !3335, file: !595, line: 10, type: !14)
!3337 = !DILocation(line: 0, scope: !3335)
!3338 = !DILocalVariable(name: "b", arg: 2, scope: !3335, file: !595, line: 10, type: !14)
!3339 = !DILocation(line: 15, column: 10, scope: !3335)
!3340 = !DILocation(line: 15, column: 7, scope: !3335)
!3341 = !DILocation(line: 18, column: 17, scope: !3335)
!3342 = !DILocalVariable(name: "p", scope: !3335, file: !595, line: 12, type: !14)
!3343 = !DILocation(line: 19, column: 13, scope: !3335)
!3344 = !DILocation(line: 19, column: 17, scope: !3335)
!3345 = !DILocation(line: 19, column: 7, scope: !3335)
!3346 = !DILocation(line: 20, column: 13, scope: !3335)
!3347 = !DILocation(line: 20, column: 17, scope: !3335)
!3348 = !DILocation(line: 20, column: 7, scope: !3335)
!3349 = !DILocation(line: 21, column: 13, scope: !3335)
!3350 = !DILocation(line: 21, column: 17, scope: !3335)
!3351 = !DILocation(line: 21, column: 7, scope: !3335)
!3352 = !DILocalVariable(name: "top_p", scope: !3335, file: !595, line: 24, type: !14)
!3353 = !DILocation(line: 25, column: 37, scope: !3335)
!3354 = !DILocation(line: 25, column: 52, scope: !3335)
!3355 = !DILocation(line: 25, column: 43, scope: !3335)
!3356 = !DILocation(line: 25, column: 59, scope: !3335)
!3357 = !DILocalVariable(name: "out", scope: !3335, file: !595, line: 25, type: !14)
!3358 = !DILocation(line: 26, column: 5, scope: !3335)
!3359 = distinct !DISubprogram(name: "lincomb", scope: !595, file: !595, line: 71, type: !1631, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3360 = !DILocalVariable(name: "a", arg: 1, scope: !3359, file: !595, line: 71, type: !49)
!3361 = !DILocation(line: 0, scope: !3359)
!3362 = !DILocalVariable(name: "b", arg: 2, scope: !3359, file: !595, line: 72, type: !49)
!3363 = !DILocalVariable(name: "n", arg: 3, scope: !3359, file: !595, line: 72, type: !45)
!3364 = !DILocalVariable(name: "m", arg: 4, scope: !3359, file: !595, line: 72, type: !45)
!3365 = !DILocalVariable(name: "ret", scope: !3359, file: !595, line: 73, type: !14)
!3366 = !DILocalVariable(name: "i", scope: !3367, file: !595, line: 74, type: !45)
!3367 = distinct !DILexicalBlock(scope: !3359, file: !595, line: 74, column: 5)
!3368 = !DILocation(line: 0, scope: !3367)
!3369 = !DILocation(line: 74, column: 10, scope: !3367)
!3370 = !DILocation(line: 74, scope: !3367)
!3371 = !DILocation(line: 74, column: 23, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3367, file: !595, line: 74, column: 5)
!3373 = !DILocation(line: 74, column: 5, scope: !3367)
!3374 = !DILocation(line: 75, column: 27, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3372, file: !595, line: 74, column: 41)
!3376 = !DILocation(line: 75, column: 33, scope: !3375)
!3377 = !DILocation(line: 75, column: 21, scope: !3375)
!3378 = !DILocation(line: 75, column: 15, scope: !3375)
!3379 = !DILocation(line: 74, column: 28, scope: !3372)
!3380 = !DILocation(line: 74, column: 35, scope: !3372)
!3381 = !DILocation(line: 74, column: 5, scope: !3372)
!3382 = distinct !{!3382, !3373, !3383, !244}
!3383 = !DILocation(line: 76, column: 5, scope: !3367)
!3384 = !DILocation(line: 79, column: 5, scope: !3359)
!3385 = distinct !DISubprogram(name: "add_f", scope: !595, file: !595, line: 44, type: !1623, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3386 = !DILocalVariable(name: "a", arg: 1, scope: !3385, file: !595, line: 44, type: !14)
!3387 = !DILocation(line: 0, scope: !3385)
!3388 = !DILocalVariable(name: "b", arg: 2, scope: !3385, file: !595, line: 44, type: !14)
!3389 = !DILocation(line: 45, column: 14, scope: !3385)
!3390 = !DILocation(line: 45, column: 5, scope: !3385)
!3391 = distinct !DISubprogram(name: "shake128_inc_init", scope: !71, file: !71, line: 688, type: !3392, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{null, !3394}
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 32)
!3395 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128incctx", file: !71, line: 31, baseType: !3396)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 29, size: 32, elements: !3397)
!3397 = !{!3398}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3396, file: !71, line: 30, baseType: !5, size: 32)
!3399 = !DILocalVariable(name: "state", arg: 1, scope: !3391, file: !71, line: 688, type: !3394)
!3400 = !DILocation(line: 0, scope: !3391)
!3401 = !DILocation(line: 689, column: 18, scope: !3391)
!3402 = !DILocation(line: 689, column: 16, scope: !3391)
!3403 = !DILocation(line: 690, column: 20, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3391, file: !71, line: 690, column: 9)
!3405 = !DILocation(line: 691, column: 9, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3404, file: !71, line: 690, column: 29)
!3407 = !DILocation(line: 692, column: 5, scope: !3406)
!3408 = !DILocation(line: 693, column: 28, scope: !3391)
!3409 = !DILocation(line: 693, column: 5, scope: !3391)
!3410 = !DILocation(line: 694, column: 1, scope: !3391)
!3411 = distinct !DISubprogram(name: "keccak_inc_init", scope: !71, file: !71, line: 580, type: !26, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3412 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3411, file: !71, line: 580, type: !5)
!3413 = !DILocation(line: 0, scope: !3411)
!3414 = !DILocalVariable(name: "i", scope: !3411, file: !71, line: 581, type: !15)
!3415 = !DILocation(line: 583, column: 10, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3411, file: !71, line: 583, column: 5)
!3417 = !DILocation(line: 583, scope: !3416)
!3418 = !DILocation(line: 583, column: 19, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3416, file: !71, line: 583, column: 5)
!3420 = !DILocation(line: 583, column: 5, scope: !3416)
!3421 = !DILocation(line: 584, column: 9, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3419, file: !71, line: 583, column: 30)
!3423 = !DILocation(line: 584, column: 18, scope: !3422)
!3424 = !DILocation(line: 583, column: 25, scope: !3419)
!3425 = !DILocation(line: 583, column: 5, scope: !3419)
!3426 = distinct !{!3426, !3420, !3427, !244}
!3427 = !DILocation(line: 585, column: 5, scope: !3416)
!3428 = !DILocation(line: 586, column: 5, scope: !3411)
!3429 = !DILocation(line: 586, column: 15, scope: !3411)
!3430 = !DILocation(line: 587, column: 1, scope: !3411)
!3431 = distinct !DISubprogram(name: "shake128_inc_absorb", scope: !71, file: !71, line: 696, type: !3432, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{null, !3394, !257, !15}
!3434 = !DILocalVariable(name: "state", arg: 1, scope: !3431, file: !71, line: 696, type: !3394)
!3435 = !DILocation(line: 0, scope: !3431)
!3436 = !DILocalVariable(name: "input", arg: 2, scope: !3431, file: !71, line: 696, type: !257)
!3437 = !DILocalVariable(name: "inlen", arg: 3, scope: !3431, file: !71, line: 696, type: !15)
!3438 = !DILocation(line: 697, column: 30, scope: !3431)
!3439 = !DILocation(line: 697, column: 5, scope: !3431)
!3440 = !DILocation(line: 698, column: 1, scope: !3431)
!3441 = distinct !DISubprogram(name: "keccak_inc_absorb", scope: !71, file: !71, line: 603, type: !3442, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{null, !5, !19, !257, !15}
!3444 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3441, file: !71, line: 603, type: !5)
!3445 = !DILocation(line: 0, scope: !3441)
!3446 = !DILocalVariable(name: "r", arg: 2, scope: !3441, file: !71, line: 603, type: !19)
!3447 = !DILocalVariable(name: "m", arg: 3, scope: !3441, file: !71, line: 603, type: !257)
!3448 = !DILocalVariable(name: "mlen", arg: 4, scope: !3441, file: !71, line: 604, type: !15)
!3449 = !DILocation(line: 608, column: 5, scope: !3441)
!3450 = !DILocation(line: 608, column: 12, scope: !3441)
!3451 = !DILocation(line: 608, column: 19, scope: !3441)
!3452 = !DILocation(line: 608, column: 17, scope: !3441)
!3453 = !DILocation(line: 608, column: 32, scope: !3441)
!3454 = !DILocation(line: 608, column: 29, scope: !3441)
!3455 = !DILocation(line: 609, column: 9, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !71, line: 609, column: 9)
!3457 = distinct !DILexicalBlock(scope: !3441, file: !71, line: 608, column: 35)
!3458 = !DILocation(line: 621, column: 5, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3441, file: !71, line: 621, column: 5)
!3460 = !DILocation(line: 609, scope: !3456)
!3461 = !DILocalVariable(name: "i", scope: !3441, file: !71, line: 605, type: !15)
!3462 = !DILocation(line: 609, column: 39, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3456, file: !71, line: 609, column: 9)
!3464 = !DILocation(line: 609, column: 29, scope: !3463)
!3465 = !DILocation(line: 609, column: 27, scope: !3463)
!3466 = !DILocation(line: 609, column: 23, scope: !3463)
!3467 = !DILocation(line: 612, column: 54, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3463, file: !71, line: 609, column: 55)
!3469 = !DILocation(line: 612, column: 44, scope: !3468)
!3470 = !DILocation(line: 612, column: 69, scope: !3468)
!3471 = !DILocation(line: 612, column: 81, scope: !3468)
!3472 = !DILocation(line: 612, column: 79, scope: !3468)
!3473 = !DILocation(line: 612, column: 65, scope: !3468)
!3474 = !DILocation(line: 612, column: 59, scope: !3468)
!3475 = !DILocation(line: 612, column: 20, scope: !3468)
!3476 = !DILocation(line: 612, column: 32, scope: !3468)
!3477 = !DILocation(line: 612, column: 30, scope: !3468)
!3478 = !DILocation(line: 612, column: 35, scope: !3468)
!3479 = !DILocation(line: 612, column: 13, scope: !3468)
!3480 = !DILocation(line: 612, column: 41, scope: !3468)
!3481 = !DILocation(line: 609, column: 51, scope: !3463)
!3482 = !DILocation(line: 609, column: 9, scope: !3463)
!3483 = distinct !{!3483, !3455, !3484, !244}
!3484 = !DILocation(line: 613, column: 9, scope: !3456)
!3485 = !DILocation(line: 614, column: 30, scope: !3457)
!3486 = !DILocation(line: 614, column: 17, scope: !3457)
!3487 = !DILocation(line: 614, column: 14, scope: !3457)
!3488 = !DILocation(line: 615, column: 11, scope: !3457)
!3489 = !DILocation(line: 616, column: 9, scope: !3457)
!3490 = !DILocation(line: 616, column: 19, scope: !3457)
!3491 = !DILocation(line: 618, column: 9, scope: !3457)
!3492 = distinct !{!3492, !3449, !3493, !244}
!3493 = !DILocation(line: 619, column: 5, scope: !3441)
!3494 = !DILocation(line: 621, scope: !3459)
!3495 = !DILocation(line: 621, column: 19, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3459, file: !71, line: 621, column: 5)
!3497 = !DILocation(line: 622, column: 50, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3496, file: !71, line: 621, column: 32)
!3499 = !DILocation(line: 622, column: 40, scope: !3498)
!3500 = !DILocation(line: 622, column: 65, scope: !3498)
!3501 = !DILocation(line: 622, column: 77, scope: !3498)
!3502 = !DILocation(line: 622, column: 75, scope: !3498)
!3503 = !DILocation(line: 622, column: 61, scope: !3498)
!3504 = !DILocation(line: 622, column: 55, scope: !3498)
!3505 = !DILocation(line: 622, column: 16, scope: !3498)
!3506 = !DILocation(line: 622, column: 28, scope: !3498)
!3507 = !DILocation(line: 622, column: 26, scope: !3498)
!3508 = !DILocation(line: 622, column: 31, scope: !3498)
!3509 = !DILocation(line: 622, column: 9, scope: !3498)
!3510 = !DILocation(line: 622, column: 37, scope: !3498)
!3511 = !DILocation(line: 621, column: 28, scope: !3496)
!3512 = !DILocation(line: 621, column: 5, scope: !3496)
!3513 = distinct !{!3513, !3458, !3514, !244}
!3514 = !DILocation(line: 623, column: 5, scope: !3459)
!3515 = !DILocation(line: 624, column: 18, scope: !3441)
!3516 = !DILocation(line: 624, column: 5, scope: !3441)
!3517 = !DILocation(line: 624, column: 15, scope: !3441)
!3518 = !DILocation(line: 625, column: 1, scope: !3441)
!3519 = distinct !DISubprogram(name: "KeccakF1600_StatePermute", scope: !71, file: !71, line: 236, type: !26, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3520 = !DILocalVariable(name: "state", arg: 1, scope: !3519, file: !71, line: 236, type: !5)
!3521 = !DILocation(line: 0, scope: !3519)
!3522 = !DILocation(line: 253, column: 11, scope: !3519)
!3523 = !DILocalVariable(name: "Aba", scope: !3519, file: !71, line: 239, type: !6)
!3524 = !DILocation(line: 254, column: 11, scope: !3519)
!3525 = !DILocalVariable(name: "Abe", scope: !3519, file: !71, line: 239, type: !6)
!3526 = !DILocation(line: 255, column: 11, scope: !3519)
!3527 = !DILocalVariable(name: "Abi", scope: !3519, file: !71, line: 239, type: !6)
!3528 = !DILocation(line: 256, column: 11, scope: !3519)
!3529 = !DILocalVariable(name: "Abo", scope: !3519, file: !71, line: 239, type: !6)
!3530 = !DILocation(line: 257, column: 11, scope: !3519)
!3531 = !DILocalVariable(name: "Abu", scope: !3519, file: !71, line: 239, type: !6)
!3532 = !DILocation(line: 258, column: 11, scope: !3519)
!3533 = !DILocalVariable(name: "Aga", scope: !3519, file: !71, line: 240, type: !6)
!3534 = !DILocation(line: 259, column: 11, scope: !3519)
!3535 = !DILocalVariable(name: "Age", scope: !3519, file: !71, line: 240, type: !6)
!3536 = !DILocation(line: 260, column: 11, scope: !3519)
!3537 = !DILocalVariable(name: "Agi", scope: !3519, file: !71, line: 240, type: !6)
!3538 = !DILocation(line: 261, column: 11, scope: !3519)
!3539 = !DILocalVariable(name: "Ago", scope: !3519, file: !71, line: 240, type: !6)
!3540 = !DILocation(line: 262, column: 11, scope: !3519)
!3541 = !DILocalVariable(name: "Agu", scope: !3519, file: !71, line: 240, type: !6)
!3542 = !DILocation(line: 263, column: 11, scope: !3519)
!3543 = !DILocalVariable(name: "Aka", scope: !3519, file: !71, line: 241, type: !6)
!3544 = !DILocation(line: 264, column: 11, scope: !3519)
!3545 = !DILocalVariable(name: "Ake", scope: !3519, file: !71, line: 241, type: !6)
!3546 = !DILocation(line: 265, column: 11, scope: !3519)
!3547 = !DILocalVariable(name: "Aki", scope: !3519, file: !71, line: 241, type: !6)
!3548 = !DILocation(line: 266, column: 11, scope: !3519)
!3549 = !DILocalVariable(name: "Ako", scope: !3519, file: !71, line: 241, type: !6)
!3550 = !DILocation(line: 267, column: 11, scope: !3519)
!3551 = !DILocalVariable(name: "Aku", scope: !3519, file: !71, line: 241, type: !6)
!3552 = !DILocation(line: 268, column: 11, scope: !3519)
!3553 = !DILocalVariable(name: "Ama", scope: !3519, file: !71, line: 242, type: !6)
!3554 = !DILocation(line: 269, column: 11, scope: !3519)
!3555 = !DILocalVariable(name: "Ame", scope: !3519, file: !71, line: 242, type: !6)
!3556 = !DILocation(line: 270, column: 11, scope: !3519)
!3557 = !DILocalVariable(name: "Ami", scope: !3519, file: !71, line: 242, type: !6)
!3558 = !DILocation(line: 271, column: 11, scope: !3519)
!3559 = !DILocalVariable(name: "Amo", scope: !3519, file: !71, line: 242, type: !6)
!3560 = !DILocation(line: 272, column: 11, scope: !3519)
!3561 = !DILocalVariable(name: "Amu", scope: !3519, file: !71, line: 242, type: !6)
!3562 = !DILocation(line: 273, column: 11, scope: !3519)
!3563 = !DILocalVariable(name: "Asa", scope: !3519, file: !71, line: 243, type: !6)
!3564 = !DILocation(line: 274, column: 11, scope: !3519)
!3565 = !DILocalVariable(name: "Ase", scope: !3519, file: !71, line: 243, type: !6)
!3566 = !DILocation(line: 275, column: 11, scope: !3519)
!3567 = !DILocalVariable(name: "Asi", scope: !3519, file: !71, line: 243, type: !6)
!3568 = !DILocation(line: 276, column: 11, scope: !3519)
!3569 = !DILocalVariable(name: "Aso", scope: !3519, file: !71, line: 243, type: !6)
!3570 = !DILocation(line: 277, column: 11, scope: !3519)
!3571 = !DILocalVariable(name: "Asu", scope: !3519, file: !71, line: 243, type: !6)
!3572 = !DILocalVariable(name: "round", scope: !3519, file: !71, line: 237, type: !45)
!3573 = !DILocation(line: 279, column: 10, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3519, file: !71, line: 279, column: 5)
!3575 = !DILocation(line: 279, scope: !3574)
!3576 = !DILocation(line: 279, column: 27, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3574, file: !71, line: 279, column: 5)
!3578 = !DILocation(line: 279, column: 5, scope: !3574)
!3579 = !DILocalVariable(name: "BCa", scope: !3519, file: !71, line: 244, type: !6)
!3580 = !DILocalVariable(name: "BCe", scope: !3519, file: !71, line: 244, type: !6)
!3581 = !DILocalVariable(name: "BCi", scope: !3519, file: !71, line: 244, type: !6)
!3582 = !DILocalVariable(name: "BCo", scope: !3519, file: !71, line: 244, type: !6)
!3583 = !DILocalVariable(name: "BCu", scope: !3519, file: !71, line: 244, type: !6)
!3584 = !DILocalVariable(name: "Da", scope: !3519, file: !71, line: 245, type: !6)
!3585 = !DILocalVariable(name: "De", scope: !3519, file: !71, line: 245, type: !6)
!3586 = !DILocalVariable(name: "Di", scope: !3519, file: !71, line: 245, type: !6)
!3587 = !DILocalVariable(name: "Do", scope: !3519, file: !71, line: 245, type: !6)
!3588 = !DILocalVariable(name: "Du", scope: !3519, file: !71, line: 245, type: !6)
!3589 = !DILocalVariable(name: "Eba", scope: !3519, file: !71, line: 246, type: !6)
!3590 = !DILocalVariable(name: "Ebe", scope: !3519, file: !71, line: 246, type: !6)
!3591 = !DILocalVariable(name: "Ebi", scope: !3519, file: !71, line: 246, type: !6)
!3592 = !DILocalVariable(name: "Ebo", scope: !3519, file: !71, line: 246, type: !6)
!3593 = !DILocalVariable(name: "Ebu", scope: !3519, file: !71, line: 246, type: !6)
!3594 = !DILocalVariable(name: "Ega", scope: !3519, file: !71, line: 247, type: !6)
!3595 = !DILocalVariable(name: "Ege", scope: !3519, file: !71, line: 247, type: !6)
!3596 = !DILocalVariable(name: "Egi", scope: !3519, file: !71, line: 247, type: !6)
!3597 = !DILocalVariable(name: "Ego", scope: !3519, file: !71, line: 247, type: !6)
!3598 = !DILocalVariable(name: "Egu", scope: !3519, file: !71, line: 247, type: !6)
!3599 = !DILocalVariable(name: "Eka", scope: !3519, file: !71, line: 248, type: !6)
!3600 = !DILocalVariable(name: "Eke", scope: !3519, file: !71, line: 248, type: !6)
!3601 = !DILocalVariable(name: "Eki", scope: !3519, file: !71, line: 248, type: !6)
!3602 = !DILocalVariable(name: "Eko", scope: !3519, file: !71, line: 248, type: !6)
!3603 = !DILocalVariable(name: "Eku", scope: !3519, file: !71, line: 248, type: !6)
!3604 = !DILocalVariable(name: "Ema", scope: !3519, file: !71, line: 249, type: !6)
!3605 = !DILocalVariable(name: "Eme", scope: !3519, file: !71, line: 249, type: !6)
!3606 = !DILocalVariable(name: "Emi", scope: !3519, file: !71, line: 249, type: !6)
!3607 = !DILocalVariable(name: "Emo", scope: !3519, file: !71, line: 249, type: !6)
!3608 = !DILocalVariable(name: "Emu", scope: !3519, file: !71, line: 249, type: !6)
!3609 = !DILocalVariable(name: "Esa", scope: !3519, file: !71, line: 250, type: !6)
!3610 = !DILocalVariable(name: "Ese", scope: !3519, file: !71, line: 250, type: !6)
!3611 = !DILocalVariable(name: "Esi", scope: !3519, file: !71, line: 250, type: !6)
!3612 = !DILocalVariable(name: "Eso", scope: !3519, file: !71, line: 250, type: !6)
!3613 = !DILocalVariable(name: "Esu", scope: !3519, file: !71, line: 250, type: !6)
!3614 = !DILocation(line: 283, column: 19, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3577, file: !71, line: 279, column: 50)
!3616 = !DILocation(line: 283, column: 25, scope: !3615)
!3617 = !DILocation(line: 283, column: 31, scope: !3615)
!3618 = !DILocation(line: 283, column: 37, scope: !3615)
!3619 = !DILocation(line: 285, column: 19, scope: !3615)
!3620 = !DILocation(line: 285, column: 25, scope: !3615)
!3621 = !DILocation(line: 285, column: 31, scope: !3615)
!3622 = !DILocation(line: 285, column: 37, scope: !3615)
!3623 = !DILocation(line: 291, column: 20, scope: !3615)
!3624 = !DILocation(line: 291, column: 18, scope: !3615)
!3625 = !DILocation(line: 361, column: 13, scope: !3615)
!3626 = !DILocation(line: 362, column: 15, scope: !3615)
!3627 = !DILocation(line: 282, column: 19, scope: !3615)
!3628 = !DILocation(line: 282, column: 25, scope: !3615)
!3629 = !DILocation(line: 282, column: 31, scope: !3615)
!3630 = !DILocation(line: 282, column: 37, scope: !3615)
!3631 = !DILocation(line: 288, column: 20, scope: !3615)
!3632 = !DILocation(line: 288, column: 18, scope: !3615)
!3633 = !DILocation(line: 365, column: 13, scope: !3615)
!3634 = !DILocation(line: 366, column: 15, scope: !3615)
!3635 = !DILocation(line: 284, column: 19, scope: !3615)
!3636 = !DILocation(line: 284, column: 25, scope: !3615)
!3637 = !DILocation(line: 284, column: 31, scope: !3615)
!3638 = !DILocation(line: 284, column: 37, scope: !3615)
!3639 = !DILocation(line: 281, column: 19, scope: !3615)
!3640 = !DILocation(line: 281, column: 25, scope: !3615)
!3641 = !DILocation(line: 281, column: 31, scope: !3615)
!3642 = !DILocation(line: 281, column: 37, scope: !3615)
!3643 = !DILocation(line: 292, column: 20, scope: !3615)
!3644 = !DILocation(line: 292, column: 18, scope: !3615)
!3645 = !DILocation(line: 363, column: 13, scope: !3615)
!3646 = !DILocation(line: 364, column: 15, scope: !3615)
!3647 = !DILocation(line: 370, column: 23, scope: !3615)
!3648 = !DILocation(line: 370, column: 29, scope: !3615)
!3649 = !DILocation(line: 370, column: 19, scope: !3615)
!3650 = !DILocation(line: 290, column: 20, scope: !3615)
!3651 = !DILocation(line: 290, column: 18, scope: !3615)
!3652 = !DILocation(line: 298, column: 13, scope: !3615)
!3653 = !DILocation(line: 299, column: 15, scope: !3615)
!3654 = !DILocation(line: 289, column: 20, scope: !3615)
!3655 = !DILocation(line: 289, column: 18, scope: !3615)
!3656 = !DILocation(line: 296, column: 13, scope: !3615)
!3657 = !DILocation(line: 297, column: 15, scope: !3615)
!3658 = !DILocation(line: 304, column: 23, scope: !3615)
!3659 = !DILocation(line: 304, column: 29, scope: !3615)
!3660 = !DILocation(line: 305, column: 16, scope: !3615)
!3661 = !DILocation(line: 305, column: 13, scope: !3615)
!3662 = !DILocation(line: 294, column: 13, scope: !3615)
!3663 = !DILocation(line: 311, column: 13, scope: !3615)
!3664 = !DILocation(line: 312, column: 15, scope: !3615)
!3665 = !DILocation(line: 315, column: 13, scope: !3615)
!3666 = !DILocation(line: 316, column: 15, scope: !3615)
!3667 = !DILocation(line: 313, column: 13, scope: !3615)
!3668 = !DILocation(line: 314, column: 15, scope: !3615)
!3669 = !DILocation(line: 321, column: 23, scope: !3615)
!3670 = !DILocation(line: 321, column: 29, scope: !3615)
!3671 = !DILocation(line: 321, column: 19, scope: !3615)
!3672 = !DILocation(line: 376, column: 19, scope: !3615)
!3673 = !DILocation(line: 327, column: 13, scope: !3615)
!3674 = !DILocation(line: 328, column: 15, scope: !3615)
!3675 = !DILocation(line: 331, column: 13, scope: !3615)
!3676 = !DILocation(line: 332, column: 15, scope: !3615)
!3677 = !DILocation(line: 329, column: 13, scope: !3615)
!3678 = !DILocation(line: 330, column: 15, scope: !3615)
!3679 = !DILocation(line: 337, column: 23, scope: !3615)
!3680 = !DILocation(line: 337, column: 29, scope: !3615)
!3681 = !DILocation(line: 337, column: 19, scope: !3615)
!3682 = !DILocation(line: 376, column: 25, scope: !3615)
!3683 = !DILocation(line: 343, column: 13, scope: !3615)
!3684 = !DILocation(line: 344, column: 15, scope: !3615)
!3685 = !DILocation(line: 347, column: 13, scope: !3615)
!3686 = !DILocation(line: 348, column: 15, scope: !3615)
!3687 = !DILocation(line: 345, column: 13, scope: !3615)
!3688 = !DILocation(line: 346, column: 15, scope: !3615)
!3689 = !DILocation(line: 353, column: 23, scope: !3615)
!3690 = !DILocation(line: 353, column: 29, scope: !3615)
!3691 = !DILocation(line: 353, column: 19, scope: !3615)
!3692 = !DILocation(line: 376, column: 31, scope: !3615)
!3693 = !DILocation(line: 359, column: 13, scope: !3615)
!3694 = !DILocation(line: 360, column: 15, scope: !3615)
!3695 = !DILocation(line: 369, column: 23, scope: !3615)
!3696 = !DILocation(line: 369, column: 29, scope: !3615)
!3697 = !DILocation(line: 369, column: 19, scope: !3615)
!3698 = !DILocation(line: 376, column: 37, scope: !3615)
!3699 = !DILocation(line: 302, column: 13, scope: !3615)
!3700 = !DILocation(line: 303, column: 15, scope: !3615)
!3701 = !DILocation(line: 300, column: 13, scope: !3615)
!3702 = !DILocation(line: 301, column: 15, scope: !3615)
!3703 = !DILocation(line: 307, column: 23, scope: !3615)
!3704 = !DILocation(line: 307, column: 29, scope: !3615)
!3705 = !DILocation(line: 307, column: 19, scope: !3615)
!3706 = !DILocation(line: 319, column: 13, scope: !3615)
!3707 = !DILocation(line: 320, column: 15, scope: !3615)
!3708 = !DILocation(line: 317, column: 13, scope: !3615)
!3709 = !DILocation(line: 318, column: 15, scope: !3615)
!3710 = !DILocation(line: 323, column: 23, scope: !3615)
!3711 = !DILocation(line: 323, column: 29, scope: !3615)
!3712 = !DILocation(line: 323, column: 19, scope: !3615)
!3713 = !DILocation(line: 378, column: 19, scope: !3615)
!3714 = !DILocation(line: 335, column: 13, scope: !3615)
!3715 = !DILocation(line: 336, column: 15, scope: !3615)
!3716 = !DILocation(line: 333, column: 13, scope: !3615)
!3717 = !DILocation(line: 334, column: 15, scope: !3615)
!3718 = !DILocation(line: 339, column: 23, scope: !3615)
!3719 = !DILocation(line: 339, column: 29, scope: !3615)
!3720 = !DILocation(line: 339, column: 19, scope: !3615)
!3721 = !DILocation(line: 378, column: 25, scope: !3615)
!3722 = !DILocation(line: 351, column: 13, scope: !3615)
!3723 = !DILocation(line: 352, column: 15, scope: !3615)
!3724 = !DILocation(line: 349, column: 13, scope: !3615)
!3725 = !DILocation(line: 350, column: 15, scope: !3615)
!3726 = !DILocation(line: 355, column: 23, scope: !3615)
!3727 = !DILocation(line: 355, column: 29, scope: !3615)
!3728 = !DILocation(line: 355, column: 19, scope: !3615)
!3729 = !DILocation(line: 378, column: 31, scope: !3615)
!3730 = !DILocation(line: 367, column: 13, scope: !3615)
!3731 = !DILocation(line: 368, column: 15, scope: !3615)
!3732 = !DILocation(line: 371, column: 23, scope: !3615)
!3733 = !DILocation(line: 371, column: 29, scope: !3615)
!3734 = !DILocation(line: 371, column: 19, scope: !3615)
!3735 = !DILocation(line: 378, column: 37, scope: !3615)
!3736 = !DILocation(line: 384, column: 20, scope: !3615)
!3737 = !DILocation(line: 384, column: 18, scope: !3615)
!3738 = !DILocation(line: 462, column: 13, scope: !3615)
!3739 = !DILocation(line: 463, column: 15, scope: !3615)
!3740 = !DILocation(line: 324, column: 23, scope: !3615)
!3741 = !DILocation(line: 324, column: 29, scope: !3615)
!3742 = !DILocation(line: 324, column: 19, scope: !3615)
!3743 = !DILocation(line: 309, column: 23, scope: !3615)
!3744 = !DILocation(line: 309, column: 29, scope: !3615)
!3745 = !DILocation(line: 309, column: 19, scope: !3615)
!3746 = !DILocation(line: 325, column: 23, scope: !3615)
!3747 = !DILocation(line: 325, column: 29, scope: !3615)
!3748 = !DILocation(line: 325, column: 19, scope: !3615)
!3749 = !DILocation(line: 380, column: 19, scope: !3615)
!3750 = !DILocation(line: 341, column: 23, scope: !3615)
!3751 = !DILocation(line: 341, column: 29, scope: !3615)
!3752 = !DILocation(line: 341, column: 19, scope: !3615)
!3753 = !DILocation(line: 380, column: 25, scope: !3615)
!3754 = !DILocation(line: 357, column: 23, scope: !3615)
!3755 = !DILocation(line: 357, column: 29, scope: !3615)
!3756 = !DILocation(line: 357, column: 19, scope: !3615)
!3757 = !DILocation(line: 380, column: 31, scope: !3615)
!3758 = !DILocation(line: 373, column: 23, scope: !3615)
!3759 = !DILocation(line: 373, column: 29, scope: !3615)
!3760 = !DILocation(line: 373, column: 19, scope: !3615)
!3761 = !DILocation(line: 380, column: 37, scope: !3615)
!3762 = !DILocation(line: 386, column: 20, scope: !3615)
!3763 = !DILocation(line: 386, column: 18, scope: !3615)
!3764 = !DILocation(line: 456, column: 13, scope: !3615)
!3765 = !DILocation(line: 457, column: 15, scope: !3615)
!3766 = !DILocation(line: 306, column: 23, scope: !3615)
!3767 = !DILocation(line: 306, column: 29, scope: !3615)
!3768 = !DILocation(line: 306, column: 19, scope: !3615)
!3769 = !DILocation(line: 322, column: 23, scope: !3615)
!3770 = !DILocation(line: 322, column: 29, scope: !3615)
!3771 = !DILocation(line: 322, column: 19, scope: !3615)
!3772 = !DILocation(line: 377, column: 19, scope: !3615)
!3773 = !DILocation(line: 338, column: 23, scope: !3615)
!3774 = !DILocation(line: 338, column: 29, scope: !3615)
!3775 = !DILocation(line: 338, column: 19, scope: !3615)
!3776 = !DILocation(line: 377, column: 25, scope: !3615)
!3777 = !DILocation(line: 354, column: 23, scope: !3615)
!3778 = !DILocation(line: 354, column: 29, scope: !3615)
!3779 = !DILocation(line: 354, column: 19, scope: !3615)
!3780 = !DILocation(line: 377, column: 31, scope: !3615)
!3781 = !DILocation(line: 377, column: 37, scope: !3615)
!3782 = !DILocation(line: 308, column: 23, scope: !3615)
!3783 = !DILocation(line: 308, column: 29, scope: !3615)
!3784 = !DILocation(line: 308, column: 19, scope: !3615)
!3785 = !DILocation(line: 379, column: 19, scope: !3615)
!3786 = !DILocation(line: 340, column: 23, scope: !3615)
!3787 = !DILocation(line: 340, column: 29, scope: !3615)
!3788 = !DILocation(line: 340, column: 19, scope: !3615)
!3789 = !DILocation(line: 379, column: 25, scope: !3615)
!3790 = !DILocation(line: 356, column: 23, scope: !3615)
!3791 = !DILocation(line: 356, column: 29, scope: !3615)
!3792 = !DILocation(line: 356, column: 19, scope: !3615)
!3793 = !DILocation(line: 379, column: 31, scope: !3615)
!3794 = !DILocation(line: 372, column: 23, scope: !3615)
!3795 = !DILocation(line: 372, column: 29, scope: !3615)
!3796 = !DILocation(line: 372, column: 19, scope: !3615)
!3797 = !DILocation(line: 379, column: 37, scope: !3615)
!3798 = !DILocation(line: 385, column: 20, scope: !3615)
!3799 = !DILocation(line: 385, column: 18, scope: !3615)
!3800 = !DILocation(line: 454, column: 13, scope: !3615)
!3801 = !DILocation(line: 455, column: 15, scope: !3615)
!3802 = !DILocation(line: 468, column: 23, scope: !3615)
!3803 = !DILocation(line: 468, column: 29, scope: !3615)
!3804 = !DILocation(line: 468, column: 19, scope: !3615)
!3805 = !DILocation(line: 383, column: 20, scope: !3615)
!3806 = !DILocation(line: 383, column: 18, scope: !3615)
!3807 = !DILocation(line: 460, column: 13, scope: !3615)
!3808 = !DILocation(line: 461, column: 15, scope: !3615)
!3809 = !DILocation(line: 467, column: 23, scope: !3615)
!3810 = !DILocation(line: 467, column: 29, scope: !3615)
!3811 = !DILocation(line: 467, column: 19, scope: !3615)
!3812 = !DILocation(line: 387, column: 20, scope: !3615)
!3813 = !DILocation(line: 387, column: 18, scope: !3615)
!3814 = !DILocation(line: 458, column: 13, scope: !3615)
!3815 = !DILocation(line: 459, column: 15, scope: !3615)
!3816 = !DILocation(line: 466, column: 23, scope: !3615)
!3817 = !DILocation(line: 466, column: 29, scope: !3615)
!3818 = !DILocation(line: 466, column: 19, scope: !3615)
!3819 = !DILocation(line: 465, column: 23, scope: !3615)
!3820 = !DILocation(line: 465, column: 29, scope: !3615)
!3821 = !DILocation(line: 465, column: 19, scope: !3615)
!3822 = !DILocation(line: 464, column: 23, scope: !3615)
!3823 = !DILocation(line: 464, column: 29, scope: !3615)
!3824 = !DILocation(line: 464, column: 19, scope: !3615)
!3825 = !DILocation(line: 446, column: 13, scope: !3615)
!3826 = !DILocation(line: 447, column: 15, scope: !3615)
!3827 = !DILocation(line: 440, column: 13, scope: !3615)
!3828 = !DILocation(line: 441, column: 15, scope: !3615)
!3829 = !DILocation(line: 438, column: 13, scope: !3615)
!3830 = !DILocation(line: 439, column: 15, scope: !3615)
!3831 = !DILocation(line: 452, column: 23, scope: !3615)
!3832 = !DILocation(line: 452, column: 29, scope: !3615)
!3833 = !DILocation(line: 452, column: 19, scope: !3615)
!3834 = !DILocation(line: 444, column: 13, scope: !3615)
!3835 = !DILocation(line: 445, column: 15, scope: !3615)
!3836 = !DILocation(line: 451, column: 23, scope: !3615)
!3837 = !DILocation(line: 451, column: 29, scope: !3615)
!3838 = !DILocation(line: 451, column: 19, scope: !3615)
!3839 = !DILocation(line: 442, column: 13, scope: !3615)
!3840 = !DILocation(line: 443, column: 15, scope: !3615)
!3841 = !DILocation(line: 450, column: 23, scope: !3615)
!3842 = !DILocation(line: 450, column: 29, scope: !3615)
!3843 = !DILocation(line: 450, column: 19, scope: !3615)
!3844 = !DILocation(line: 449, column: 23, scope: !3615)
!3845 = !DILocation(line: 449, column: 29, scope: !3615)
!3846 = !DILocation(line: 449, column: 19, scope: !3615)
!3847 = !DILocation(line: 448, column: 23, scope: !3615)
!3848 = !DILocation(line: 448, column: 29, scope: !3615)
!3849 = !DILocation(line: 448, column: 19, scope: !3615)
!3850 = !DILocation(line: 430, column: 13, scope: !3615)
!3851 = !DILocation(line: 431, column: 15, scope: !3615)
!3852 = !DILocation(line: 424, column: 13, scope: !3615)
!3853 = !DILocation(line: 425, column: 15, scope: !3615)
!3854 = !DILocation(line: 422, column: 13, scope: !3615)
!3855 = !DILocation(line: 423, column: 15, scope: !3615)
!3856 = !DILocation(line: 436, column: 23, scope: !3615)
!3857 = !DILocation(line: 436, column: 29, scope: !3615)
!3858 = !DILocation(line: 436, column: 19, scope: !3615)
!3859 = !DILocation(line: 428, column: 13, scope: !3615)
!3860 = !DILocation(line: 429, column: 15, scope: !3615)
!3861 = !DILocation(line: 435, column: 23, scope: !3615)
!3862 = !DILocation(line: 435, column: 29, scope: !3615)
!3863 = !DILocation(line: 435, column: 19, scope: !3615)
!3864 = !DILocation(line: 426, column: 13, scope: !3615)
!3865 = !DILocation(line: 427, column: 15, scope: !3615)
!3866 = !DILocation(line: 434, column: 23, scope: !3615)
!3867 = !DILocation(line: 434, column: 29, scope: !3615)
!3868 = !DILocation(line: 434, column: 19, scope: !3615)
!3869 = !DILocation(line: 433, column: 23, scope: !3615)
!3870 = !DILocation(line: 433, column: 29, scope: !3615)
!3871 = !DILocation(line: 433, column: 19, scope: !3615)
!3872 = !DILocation(line: 432, column: 23, scope: !3615)
!3873 = !DILocation(line: 432, column: 29, scope: !3615)
!3874 = !DILocation(line: 432, column: 19, scope: !3615)
!3875 = !DILocation(line: 414, column: 13, scope: !3615)
!3876 = !DILocation(line: 415, column: 15, scope: !3615)
!3877 = !DILocation(line: 408, column: 13, scope: !3615)
!3878 = !DILocation(line: 409, column: 15, scope: !3615)
!3879 = !DILocation(line: 406, column: 13, scope: !3615)
!3880 = !DILocation(line: 407, column: 15, scope: !3615)
!3881 = !DILocation(line: 420, column: 23, scope: !3615)
!3882 = !DILocation(line: 420, column: 29, scope: !3615)
!3883 = !DILocation(line: 420, column: 19, scope: !3615)
!3884 = !DILocation(line: 412, column: 13, scope: !3615)
!3885 = !DILocation(line: 413, column: 15, scope: !3615)
!3886 = !DILocation(line: 419, column: 23, scope: !3615)
!3887 = !DILocation(line: 419, column: 29, scope: !3615)
!3888 = !DILocation(line: 419, column: 19, scope: !3615)
!3889 = !DILocation(line: 410, column: 13, scope: !3615)
!3890 = !DILocation(line: 411, column: 15, scope: !3615)
!3891 = !DILocation(line: 418, column: 23, scope: !3615)
!3892 = !DILocation(line: 418, column: 29, scope: !3615)
!3893 = !DILocation(line: 418, column: 19, scope: !3615)
!3894 = !DILocation(line: 417, column: 23, scope: !3615)
!3895 = !DILocation(line: 417, column: 29, scope: !3615)
!3896 = !DILocation(line: 417, column: 19, scope: !3615)
!3897 = !DILocation(line: 416, column: 23, scope: !3615)
!3898 = !DILocation(line: 416, column: 29, scope: !3615)
!3899 = !DILocation(line: 416, column: 19, scope: !3615)
!3900 = !DILocation(line: 397, column: 13, scope: !3615)
!3901 = !DILocation(line: 398, column: 15, scope: !3615)
!3902 = !DILocation(line: 391, column: 13, scope: !3615)
!3903 = !DILocation(line: 392, column: 15, scope: !3615)
!3904 = !DILocation(line: 389, column: 13, scope: !3615)
!3905 = !DILocation(line: 404, column: 23, scope: !3615)
!3906 = !DILocation(line: 404, column: 29, scope: !3615)
!3907 = !DILocation(line: 404, column: 19, scope: !3615)
!3908 = !DILocation(line: 395, column: 13, scope: !3615)
!3909 = !DILocation(line: 396, column: 15, scope: !3615)
!3910 = !DILocation(line: 403, column: 23, scope: !3615)
!3911 = !DILocation(line: 403, column: 29, scope: !3615)
!3912 = !DILocation(line: 403, column: 19, scope: !3615)
!3913 = !DILocation(line: 393, column: 13, scope: !3615)
!3914 = !DILocation(line: 394, column: 15, scope: !3615)
!3915 = !DILocation(line: 402, column: 23, scope: !3615)
!3916 = !DILocation(line: 402, column: 29, scope: !3615)
!3917 = !DILocation(line: 402, column: 19, scope: !3615)
!3918 = !DILocation(line: 401, column: 23, scope: !3615)
!3919 = !DILocation(line: 401, column: 29, scope: !3615)
!3920 = !DILocation(line: 401, column: 19, scope: !3615)
!3921 = !DILocation(line: 400, column: 45, scope: !3615)
!3922 = !DILocation(line: 400, column: 16, scope: !3615)
!3923 = !DILocation(line: 399, column: 23, scope: !3615)
!3924 = !DILocation(line: 399, column: 29, scope: !3615)
!3925 = !DILocation(line: 400, column: 13, scope: !3615)
!3926 = !DILocation(line: 279, column: 44, scope: !3577)
!3927 = !DILocation(line: 279, column: 5, scope: !3577)
!3928 = distinct !{!3928, !3578, !3929, !244}
!3929 = !DILocation(line: 469, column: 5, scope: !3574)
!3930 = !DILocation(line: 472, column: 14, scope: !3519)
!3931 = !DILocation(line: 473, column: 5, scope: !3519)
!3932 = !DILocation(line: 473, column: 14, scope: !3519)
!3933 = !DILocation(line: 474, column: 5, scope: !3519)
!3934 = !DILocation(line: 474, column: 14, scope: !3519)
!3935 = !DILocation(line: 475, column: 5, scope: !3519)
!3936 = !DILocation(line: 475, column: 14, scope: !3519)
!3937 = !DILocation(line: 476, column: 5, scope: !3519)
!3938 = !DILocation(line: 476, column: 14, scope: !3519)
!3939 = !DILocation(line: 477, column: 5, scope: !3519)
!3940 = !DILocation(line: 477, column: 14, scope: !3519)
!3941 = !DILocation(line: 478, column: 5, scope: !3519)
!3942 = !DILocation(line: 478, column: 14, scope: !3519)
!3943 = !DILocation(line: 479, column: 5, scope: !3519)
!3944 = !DILocation(line: 479, column: 14, scope: !3519)
!3945 = !DILocation(line: 480, column: 5, scope: !3519)
!3946 = !DILocation(line: 480, column: 14, scope: !3519)
!3947 = !DILocation(line: 481, column: 5, scope: !3519)
!3948 = !DILocation(line: 481, column: 14, scope: !3519)
!3949 = !DILocation(line: 482, column: 5, scope: !3519)
!3950 = !DILocation(line: 482, column: 15, scope: !3519)
!3951 = !DILocation(line: 483, column: 5, scope: !3519)
!3952 = !DILocation(line: 483, column: 15, scope: !3519)
!3953 = !DILocation(line: 484, column: 5, scope: !3519)
!3954 = !DILocation(line: 484, column: 15, scope: !3519)
!3955 = !DILocation(line: 485, column: 5, scope: !3519)
!3956 = !DILocation(line: 485, column: 15, scope: !3519)
!3957 = !DILocation(line: 486, column: 5, scope: !3519)
!3958 = !DILocation(line: 486, column: 15, scope: !3519)
!3959 = !DILocation(line: 487, column: 5, scope: !3519)
!3960 = !DILocation(line: 487, column: 15, scope: !3519)
!3961 = !DILocation(line: 488, column: 5, scope: !3519)
!3962 = !DILocation(line: 488, column: 15, scope: !3519)
!3963 = !DILocation(line: 489, column: 5, scope: !3519)
!3964 = !DILocation(line: 489, column: 15, scope: !3519)
!3965 = !DILocation(line: 490, column: 5, scope: !3519)
!3966 = !DILocation(line: 490, column: 15, scope: !3519)
!3967 = !DILocation(line: 491, column: 5, scope: !3519)
!3968 = !DILocation(line: 491, column: 15, scope: !3519)
!3969 = !DILocation(line: 492, column: 5, scope: !3519)
!3970 = !DILocation(line: 492, column: 15, scope: !3519)
!3971 = !DILocation(line: 493, column: 5, scope: !3519)
!3972 = !DILocation(line: 493, column: 15, scope: !3519)
!3973 = !DILocation(line: 494, column: 5, scope: !3519)
!3974 = !DILocation(line: 494, column: 15, scope: !3519)
!3975 = !DILocation(line: 495, column: 5, scope: !3519)
!3976 = !DILocation(line: 495, column: 15, scope: !3519)
!3977 = !DILocation(line: 496, column: 5, scope: !3519)
!3978 = !DILocation(line: 496, column: 15, scope: !3519)
!3979 = !DILocation(line: 497, column: 1, scope: !3519)
!3980 = distinct !DISubprogram(name: "shake128_inc_finalize", scope: !71, file: !71, line: 700, type: !3392, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3981 = !DILocalVariable(name: "state", arg: 1, scope: !3980, file: !71, line: 700, type: !3394)
!3982 = !DILocation(line: 0, scope: !3980)
!3983 = !DILocation(line: 701, column: 32, scope: !3980)
!3984 = !DILocation(line: 701, column: 5, scope: !3980)
!3985 = !DILocation(line: 702, column: 1, scope: !3980)
!3986 = distinct !DISubprogram(name: "keccak_inc_finalize", scope: !71, file: !71, line: 640, type: !3987, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{null, !5, !19, !12}
!3989 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3986, file: !71, line: 640, type: !5)
!3990 = !DILocation(line: 0, scope: !3986)
!3991 = !DILocalVariable(name: "r", arg: 2, scope: !3986, file: !71, line: 640, type: !19)
!3992 = !DILocalVariable(name: "p", arg: 3, scope: !3986, file: !71, line: 640, type: !12)
!3993 = !DILocation(line: 643, column: 30, scope: !3986)
!3994 = !DILocation(line: 643, column: 51, scope: !3986)
!3995 = !DILocation(line: 643, column: 48, scope: !3986)
!3996 = !DILocation(line: 643, column: 42, scope: !3986)
!3997 = !DILocation(line: 643, column: 21, scope: !3986)
!3998 = !DILocation(line: 643, column: 5, scope: !3986)
!3999 = !DILocation(line: 643, column: 27, scope: !3986)
!4000 = !DILocation(line: 644, column: 48, scope: !3986)
!4001 = !DILocation(line: 644, column: 42, scope: !3986)
!4002 = !DILocation(line: 644, column: 14, scope: !3986)
!4003 = !DILocation(line: 644, column: 19, scope: !3986)
!4004 = !DILocation(line: 644, column: 5, scope: !3986)
!4005 = !DILocation(line: 644, column: 25, scope: !3986)
!4006 = !DILocation(line: 645, column: 5, scope: !3986)
!4007 = !DILocation(line: 645, column: 15, scope: !3986)
!4008 = !DILocation(line: 646, column: 1, scope: !3986)
!4009 = distinct !DISubprogram(name: "shake128_inc_squeeze", scope: !71, file: !71, line: 704, type: !4010, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{null, !11, !15, !3394}
!4012 = !DILocalVariable(name: "output", arg: 1, scope: !4009, file: !71, line: 704, type: !11)
!4013 = !DILocation(line: 0, scope: !4009)
!4014 = !DILocalVariable(name: "outlen", arg: 2, scope: !4009, file: !71, line: 704, type: !15)
!4015 = !DILocalVariable(name: "state", arg: 3, scope: !4009, file: !71, line: 704, type: !3394)
!4016 = !DILocation(line: 705, column: 47, scope: !4009)
!4017 = !DILocation(line: 705, column: 5, scope: !4009)
!4018 = !DILocation(line: 706, column: 1, scope: !4009)
!4019 = distinct !DISubprogram(name: "keccak_inc_squeeze", scope: !71, file: !71, line: 661, type: !4020, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{null, !11, !15, !5, !19}
!4022 = !DILocalVariable(name: "h", arg: 1, scope: !4019, file: !71, line: 661, type: !11)
!4023 = !DILocation(line: 0, scope: !4019)
!4024 = !DILocalVariable(name: "outlen", arg: 2, scope: !4019, file: !71, line: 661, type: !15)
!4025 = !DILocalVariable(name: "s_inc", arg: 3, scope: !4019, file: !71, line: 662, type: !5)
!4026 = !DILocalVariable(name: "r", arg: 4, scope: !4019, file: !71, line: 662, type: !19)
!4027 = !DILocalVariable(name: "i", scope: !4019, file: !71, line: 663, type: !15)
!4028 = !DILocation(line: 666, column: 10, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4019, file: !71, line: 666, column: 5)
!4030 = !DILocation(line: 666, scope: !4029)
!4031 = !DILocation(line: 666, column: 19, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4029, file: !71, line: 666, column: 5)
!4033 = !DILocation(line: 666, column: 28, scope: !4032)
!4034 = !DILocation(line: 666, column: 31, scope: !4032)
!4035 = !DILocation(line: 666, column: 35, scope: !4032)
!4036 = !DILocation(line: 666, column: 33, scope: !4032)
!4037 = !DILocation(line: 666, column: 5, scope: !4029)
!4038 = !DILocation(line: 669, column: 33, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4032, file: !71, line: 666, column: 51)
!4040 = !DILocation(line: 669, column: 37, scope: !4039)
!4041 = !DILocation(line: 669, column: 35, scope: !4039)
!4042 = !DILocation(line: 669, column: 49, scope: !4039)
!4043 = !DILocation(line: 669, column: 47, scope: !4039)
!4044 = !DILocation(line: 669, column: 52, scope: !4039)
!4045 = !DILocation(line: 669, column: 26, scope: !4039)
!4046 = !DILocation(line: 669, column: 68, scope: !4039)
!4047 = !DILocation(line: 669, column: 72, scope: !4039)
!4048 = !DILocation(line: 669, column: 70, scope: !4039)
!4049 = !DILocation(line: 669, column: 84, scope: !4039)
!4050 = !DILocation(line: 669, column: 82, scope: !4039)
!4051 = !DILocation(line: 669, column: 64, scope: !4039)
!4052 = !DILocation(line: 669, column: 58, scope: !4039)
!4053 = !DILocation(line: 669, column: 16, scope: !4039)
!4054 = !DILocation(line: 669, column: 9, scope: !4039)
!4055 = !DILocation(line: 669, column: 14, scope: !4039)
!4056 = !DILocation(line: 666, column: 47, scope: !4032)
!4057 = !DILocation(line: 666, column: 5, scope: !4032)
!4058 = distinct !{!4058, !4037, !4059, !244}
!4059 = !DILocation(line: 670, column: 5, scope: !4029)
!4060 = !DILocation(line: 671, column: 7, scope: !4019)
!4061 = !DILocation(line: 672, column: 12, scope: !4019)
!4062 = !DILocation(line: 673, column: 18, scope: !4019)
!4063 = !DILocation(line: 673, column: 5, scope: !4019)
!4064 = !DILocation(line: 673, column: 15, scope: !4019)
!4065 = !DILocation(line: 676, column: 5, scope: !4019)
!4066 = !DILocation(line: 676, column: 19, scope: !4019)
!4067 = !DILocation(line: 677, column: 9, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4019, file: !71, line: 676, column: 24)
!4069 = !DILocation(line: 679, column: 14, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4068, file: !71, line: 679, column: 9)
!4071 = !DILocation(line: 679, scope: !4070)
!4072 = !DILocation(line: 679, column: 32, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4070, file: !71, line: 679, column: 9)
!4074 = !DILocation(line: 679, column: 9, scope: !4070)
!4075 = !DILocation(line: 680, column: 38, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4073, file: !71, line: 679, column: 47)
!4077 = !DILocation(line: 680, column: 30, scope: !4076)
!4078 = !DILocation(line: 680, column: 50, scope: !4076)
!4079 = !DILocation(line: 680, column: 44, scope: !4076)
!4080 = !DILocation(line: 680, column: 20, scope: !4076)
!4081 = !DILocation(line: 680, column: 13, scope: !4076)
!4082 = !DILocation(line: 680, column: 18, scope: !4076)
!4083 = !DILocation(line: 679, column: 43, scope: !4073)
!4084 = !DILocation(line: 679, column: 9, scope: !4073)
!4085 = distinct !{!4085, !4074, !4086, !244}
!4086 = !DILocation(line: 681, column: 9, scope: !4070)
!4087 = !DILocation(line: 682, column: 11, scope: !4068)
!4088 = !DILocation(line: 683, column: 16, scope: !4068)
!4089 = !DILocation(line: 684, column: 23, scope: !4068)
!4090 = !DILocation(line: 684, column: 21, scope: !4068)
!4091 = !DILocation(line: 684, column: 9, scope: !4068)
!4092 = !DILocation(line: 684, column: 19, scope: !4068)
!4093 = distinct !{!4093, !4065, !4094, !244}
!4094 = !DILocation(line: 685, column: 5, scope: !4019)
!4095 = !DILocation(line: 686, column: 1, scope: !4019)
!4096 = distinct !DISubprogram(name: "shake128_inc_ctx_clone", scope: !71, file: !71, line: 708, type: !4097, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{null, !3394, !4099}
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 32)
!4100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3395)
!4101 = !DILocalVariable(name: "dest", arg: 1, scope: !4096, file: !71, line: 708, type: !3394)
!4102 = !DILocation(line: 0, scope: !4096)
!4103 = !DILocalVariable(name: "src", arg: 2, scope: !4096, file: !71, line: 708, type: !4099)
!4104 = !DILocation(line: 709, column: 17, scope: !4096)
!4105 = !DILocation(line: 709, column: 15, scope: !4096)
!4106 = !DILocation(line: 710, column: 19, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4096, file: !71, line: 710, column: 9)
!4108 = !DILocation(line: 711, column: 9, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4107, file: !71, line: 710, column: 28)
!4110 = !DILocation(line: 712, column: 5, scope: !4109)
!4111 = !DILocation(line: 713, column: 18, scope: !4096)
!4112 = !DILocation(line: 713, column: 28, scope: !4096)
!4113 = !DILocation(line: 713, column: 5, scope: !4096)
!4114 = !DILocation(line: 714, column: 1, scope: !4096)
!4115 = distinct !DISubprogram(name: "shake128_inc_ctx_release", scope: !71, file: !71, line: 716, type: !3392, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4116 = !DILocalVariable(name: "state", arg: 1, scope: !4115, file: !71, line: 716, type: !3394)
!4117 = !DILocation(line: 0, scope: !4115)
!4118 = !DILocation(line: 717, column: 17, scope: !4115)
!4119 = !DILocation(line: 717, column: 5, scope: !4115)
!4120 = !DILocation(line: 718, column: 1, scope: !4115)
!4121 = distinct !DISubprogram(name: "shake256_inc_init", scope: !71, file: !71, line: 720, type: !4122, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{null, !4124}
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 32)
!4125 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256incctx", file: !71, line: 41, baseType: !4126)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 39, size: 32, elements: !4127)
!4127 = !{!4128}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4126, file: !71, line: 40, baseType: !5, size: 32)
!4129 = !DILocalVariable(name: "state", arg: 1, scope: !4121, file: !71, line: 720, type: !4124)
!4130 = !DILocation(line: 0, scope: !4121)
!4131 = !DILocation(line: 721, column: 18, scope: !4121)
!4132 = !DILocation(line: 721, column: 16, scope: !4121)
!4133 = !DILocation(line: 722, column: 20, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4121, file: !71, line: 722, column: 9)
!4135 = !DILocation(line: 723, column: 9, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4134, file: !71, line: 722, column: 29)
!4137 = !DILocation(line: 724, column: 5, scope: !4136)
!4138 = !DILocation(line: 725, column: 28, scope: !4121)
!4139 = !DILocation(line: 725, column: 5, scope: !4121)
!4140 = !DILocation(line: 726, column: 1, scope: !4121)
!4141 = distinct !DISubprogram(name: "shake256_inc_absorb", scope: !71, file: !71, line: 728, type: !4142, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{null, !4124, !257, !15}
!4144 = !DILocalVariable(name: "state", arg: 1, scope: !4141, file: !71, line: 728, type: !4124)
!4145 = !DILocation(line: 0, scope: !4141)
!4146 = !DILocalVariable(name: "input", arg: 2, scope: !4141, file: !71, line: 728, type: !257)
!4147 = !DILocalVariable(name: "inlen", arg: 3, scope: !4141, file: !71, line: 728, type: !15)
!4148 = !DILocation(line: 729, column: 30, scope: !4141)
!4149 = !DILocation(line: 729, column: 5, scope: !4141)
!4150 = !DILocation(line: 730, column: 1, scope: !4141)
!4151 = distinct !DISubprogram(name: "shake256_inc_finalize", scope: !71, file: !71, line: 732, type: !4122, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4152 = !DILocalVariable(name: "state", arg: 1, scope: !4151, file: !71, line: 732, type: !4124)
!4153 = !DILocation(line: 0, scope: !4151)
!4154 = !DILocation(line: 733, column: 32, scope: !4151)
!4155 = !DILocation(line: 733, column: 5, scope: !4151)
!4156 = !DILocation(line: 734, column: 1, scope: !4151)
!4157 = distinct !DISubprogram(name: "shake256_inc_squeeze", scope: !71, file: !71, line: 736, type: !4158, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{null, !11, !15, !4124}
!4160 = !DILocalVariable(name: "output", arg: 1, scope: !4157, file: !71, line: 736, type: !11)
!4161 = !DILocation(line: 0, scope: !4157)
!4162 = !DILocalVariable(name: "outlen", arg: 2, scope: !4157, file: !71, line: 736, type: !15)
!4163 = !DILocalVariable(name: "state", arg: 3, scope: !4157, file: !71, line: 736, type: !4124)
!4164 = !DILocation(line: 737, column: 47, scope: !4157)
!4165 = !DILocation(line: 737, column: 5, scope: !4157)
!4166 = !DILocation(line: 738, column: 1, scope: !4157)
!4167 = distinct !DISubprogram(name: "shake256_inc_ctx_clone", scope: !71, file: !71, line: 740, type: !4168, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{null, !4124, !4170}
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 32)
!4171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4125)
!4172 = !DILocalVariable(name: "dest", arg: 1, scope: !4167, file: !71, line: 740, type: !4124)
!4173 = !DILocation(line: 0, scope: !4167)
!4174 = !DILocalVariable(name: "src", arg: 2, scope: !4167, file: !71, line: 740, type: !4170)
!4175 = !DILocation(line: 741, column: 17, scope: !4167)
!4176 = !DILocation(line: 741, column: 15, scope: !4167)
!4177 = !DILocation(line: 742, column: 19, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4167, file: !71, line: 742, column: 9)
!4179 = !DILocation(line: 743, column: 9, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4178, file: !71, line: 742, column: 28)
!4181 = !DILocation(line: 744, column: 5, scope: !4180)
!4182 = !DILocation(line: 745, column: 18, scope: !4167)
!4183 = !DILocation(line: 745, column: 28, scope: !4167)
!4184 = !DILocation(line: 745, column: 5, scope: !4167)
!4185 = !DILocation(line: 746, column: 1, scope: !4167)
!4186 = distinct !DISubprogram(name: "shake256_inc_ctx_release", scope: !71, file: !71, line: 748, type: !4122, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4187 = !DILocalVariable(name: "state", arg: 1, scope: !4186, file: !71, line: 748, type: !4124)
!4188 = !DILocation(line: 0, scope: !4186)
!4189 = !DILocation(line: 749, column: 17, scope: !4186)
!4190 = !DILocation(line: 749, column: 5, scope: !4186)
!4191 = !DILocation(line: 750, column: 1, scope: !4186)
!4192 = distinct !DISubprogram(name: "shake128_absorb", scope: !71, file: !71, line: 764, type: !4193, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{null, !4195, !257, !15}
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 32)
!4196 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128ctx", file: !71, line: 36, baseType: !4197)
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 34, size: 32, elements: !4198)
!4198 = !{!4199}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4197, file: !71, line: 35, baseType: !5, size: 32)
!4200 = !DILocalVariable(name: "state", arg: 1, scope: !4192, file: !71, line: 764, type: !4195)
!4201 = !DILocation(line: 0, scope: !4192)
!4202 = !DILocalVariable(name: "input", arg: 2, scope: !4192, file: !71, line: 764, type: !257)
!4203 = !DILocalVariable(name: "inlen", arg: 3, scope: !4192, file: !71, line: 764, type: !15)
!4204 = !DILocation(line: 765, column: 18, scope: !4192)
!4205 = !DILocation(line: 765, column: 16, scope: !4192)
!4206 = !DILocation(line: 766, column: 20, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4192, file: !71, line: 766, column: 9)
!4208 = !DILocation(line: 767, column: 9, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4207, file: !71, line: 766, column: 29)
!4210 = !DILocation(line: 768, column: 5, scope: !4209)
!4211 = !DILocation(line: 769, column: 26, scope: !4192)
!4212 = !DILocation(line: 769, column: 5, scope: !4192)
!4213 = !DILocation(line: 770, column: 1, scope: !4192)
!4214 = distinct !DISubprogram(name: "keccak_absorb", scope: !71, file: !71, line: 512, type: !4215, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{null, !5, !19, !257, !15, !12}
!4217 = !DILocalVariable(name: "s", arg: 1, scope: !4214, file: !71, line: 512, type: !5)
!4218 = !DILocation(line: 0, scope: !4214)
!4219 = !DILocalVariable(name: "r", arg: 2, scope: !4214, file: !71, line: 512, type: !19)
!4220 = !DILocalVariable(name: "m", arg: 3, scope: !4214, file: !71, line: 512, type: !257)
!4221 = !DILocalVariable(name: "mlen", arg: 4, scope: !4214, file: !71, line: 513, type: !15)
!4222 = !DILocalVariable(name: "p", arg: 5, scope: !4214, file: !71, line: 513, type: !12)
!4223 = !DILocalVariable(name: "t", scope: !4214, file: !71, line: 515, type: !4224)
!4224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1600, elements: !4225)
!4225 = !{!4226}
!4226 = !DISubrange(count: 200)
!4227 = !DILocation(line: 515, column: 13, scope: !4214)
!4228 = !DILocalVariable(name: "i", scope: !4214, file: !71, line: 514, type: !15)
!4229 = !DILocation(line: 518, column: 10, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4214, file: !71, line: 518, column: 5)
!4231 = !DILocation(line: 518, scope: !4230)
!4232 = !DILocation(line: 518, column: 19, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4230, file: !71, line: 518, column: 5)
!4234 = !DILocation(line: 518, column: 5, scope: !4230)
!4235 = !DILocation(line: 522, column: 5, scope: !4214)
!4236 = !DILocation(line: 519, column: 9, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4233, file: !71, line: 518, column: 30)
!4238 = !DILocation(line: 519, column: 14, scope: !4237)
!4239 = !DILocation(line: 518, column: 25, scope: !4233)
!4240 = !DILocation(line: 518, column: 5, scope: !4233)
!4241 = distinct !{!4241, !4234, !4242, !244}
!4242 = !DILocation(line: 520, column: 5, scope: !4230)
!4243 = !DILocation(line: 522, column: 17, scope: !4214)
!4244 = !DILocation(line: 523, column: 9, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4246, file: !71, line: 523, column: 9)
!4246 = distinct !DILexicalBlock(scope: !4214, file: !71, line: 522, column: 23)
!4247 = !DILocation(line: 532, column: 5, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4214, file: !71, line: 532, column: 5)
!4249 = !DILocation(line: 523, scope: !4245)
!4250 = !DILocation(line: 523, column: 23, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4245, file: !71, line: 523, column: 9)
!4252 = !DILocation(line: 524, column: 34, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4251, file: !71, line: 523, column: 37)
!4254 = !DILocation(line: 524, column: 30, scope: !4253)
!4255 = !DILocation(line: 524, column: 21, scope: !4253)
!4256 = !DILocation(line: 524, column: 13, scope: !4253)
!4257 = !DILocation(line: 524, column: 18, scope: !4253)
!4258 = !DILocation(line: 523, column: 32, scope: !4251)
!4259 = !DILocation(line: 523, column: 9, scope: !4251)
!4260 = distinct !{!4260, !4244, !4261, !244}
!4261 = !DILocation(line: 525, column: 9, scope: !4245)
!4262 = !DILocation(line: 527, column: 9, scope: !4246)
!4263 = !DILocation(line: 528, column: 14, scope: !4246)
!4264 = !DILocation(line: 529, column: 11, scope: !4246)
!4265 = distinct !{!4265, !4235, !4266, !244}
!4266 = !DILocation(line: 530, column: 5, scope: !4214)
!4267 = !DILocation(line: 532, scope: !4248)
!4268 = !DILocation(line: 532, column: 19, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4248, file: !71, line: 532, column: 5)
!4270 = !DILocation(line: 535, column: 5, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4214, file: !71, line: 535, column: 5)
!4272 = !DILocation(line: 533, column: 9, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4269, file: !71, line: 532, column: 29)
!4274 = !DILocation(line: 533, column: 14, scope: !4273)
!4275 = !DILocation(line: 532, column: 24, scope: !4269)
!4276 = !DILocation(line: 532, column: 5, scope: !4269)
!4277 = distinct !{!4277, !4247, !4278, !244}
!4278 = !DILocation(line: 534, column: 5, scope: !4248)
!4279 = !DILocation(line: 535, scope: !4271)
!4280 = !DILocation(line: 535, column: 19, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4271, file: !71, line: 535, column: 5)
!4282 = !DILocation(line: 536, column: 16, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4281, file: !71, line: 535, column: 32)
!4284 = !DILocation(line: 536, column: 9, scope: !4283)
!4285 = !DILocation(line: 536, column: 14, scope: !4283)
!4286 = !DILocation(line: 535, column: 27, scope: !4281)
!4287 = !DILocation(line: 535, column: 5, scope: !4281)
!4288 = distinct !{!4288, !4270, !4289, !244}
!4289 = !DILocation(line: 537, column: 5, scope: !4271)
!4290 = !DILocation(line: 538, column: 5, scope: !4214)
!4291 = !DILocation(line: 538, column: 10, scope: !4214)
!4292 = !DILocation(line: 539, column: 9, scope: !4214)
!4293 = !DILocation(line: 539, column: 5, scope: !4214)
!4294 = !DILocation(line: 539, column: 14, scope: !4214)
!4295 = !DILocation(line: 540, column: 10, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4214, file: !71, line: 540, column: 5)
!4297 = !DILocation(line: 540, scope: !4296)
!4298 = !DILocation(line: 540, column: 19, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4296, file: !71, line: 540, column: 5)
!4300 = !DILocation(line: 540, column: 5, scope: !4296)
!4301 = !DILocation(line: 541, column: 30, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4299, file: !71, line: 540, column: 33)
!4303 = !DILocation(line: 541, column: 26, scope: !4302)
!4304 = !DILocation(line: 541, column: 17, scope: !4302)
!4305 = !DILocation(line: 541, column: 9, scope: !4302)
!4306 = !DILocation(line: 541, column: 14, scope: !4302)
!4307 = !DILocation(line: 540, column: 28, scope: !4299)
!4308 = !DILocation(line: 540, column: 5, scope: !4299)
!4309 = distinct !{!4309, !4300, !4310, !244}
!4310 = !DILocation(line: 542, column: 5, scope: !4296)
!4311 = !DILocation(line: 543, column: 1, scope: !4214)
!4312 = distinct !DISubprogram(name: "load64", scope: !71, file: !71, line: 190, type: !4313, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!6, !257}
!4315 = !DILocalVariable(name: "x", arg: 1, scope: !4312, file: !71, line: 190, type: !257)
!4316 = !DILocation(line: 0, scope: !4312)
!4317 = !DILocalVariable(name: "r", scope: !4312, file: !71, line: 191, type: !6)
!4318 = !DILocalVariable(name: "i", scope: !4319, file: !71, line: 192, type: !15)
!4319 = distinct !DILexicalBlock(scope: !4312, file: !71, line: 192, column: 5)
!4320 = !DILocation(line: 0, scope: !4319)
!4321 = !DILocation(line: 192, column: 10, scope: !4319)
!4322 = !DILocation(line: 192, scope: !4319)
!4323 = !DILocation(line: 192, column: 26, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4319, file: !71, line: 192, column: 5)
!4325 = !DILocation(line: 192, column: 5, scope: !4319)
!4326 = !DILocation(line: 193, column: 24, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4324, file: !71, line: 192, column: 36)
!4328 = !DILocation(line: 193, column: 14, scope: !4327)
!4329 = !DILocation(line: 193, column: 34, scope: !4327)
!4330 = !DILocation(line: 193, column: 29, scope: !4327)
!4331 = !DILocation(line: 193, column: 11, scope: !4327)
!4332 = !DILocation(line: 192, column: 31, scope: !4324)
!4333 = !DILocation(line: 192, column: 5, scope: !4324)
!4334 = distinct !{!4334, !4325, !4335, !244}
!4335 = !DILocation(line: 194, column: 5, scope: !4319)
!4336 = !DILocation(line: 196, column: 5, scope: !4312)
!4337 = distinct !DISubprogram(name: "shake128_squeezeblocks", scope: !71, file: !71, line: 784, type: !4338, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{null, !11, !15, !4195}
!4340 = !DILocalVariable(name: "output", arg: 1, scope: !4337, file: !71, line: 784, type: !11)
!4341 = !DILocation(line: 0, scope: !4337)
!4342 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4337, file: !71, line: 784, type: !15)
!4343 = !DILocalVariable(name: "state", arg: 3, scope: !4337, file: !71, line: 784, type: !4195)
!4344 = !DILocation(line: 785, column: 50, scope: !4337)
!4345 = !DILocation(line: 785, column: 5, scope: !4337)
!4346 = !DILocation(line: 786, column: 1, scope: !4337)
!4347 = distinct !DISubprogram(name: "keccak_squeezeblocks", scope: !71, file: !71, line: 558, type: !4020, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4348 = !DILocalVariable(name: "h", arg: 1, scope: !4347, file: !71, line: 558, type: !11)
!4349 = !DILocation(line: 0, scope: !4347)
!4350 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4347, file: !71, line: 558, type: !15)
!4351 = !DILocalVariable(name: "s", arg: 3, scope: !4347, file: !71, line: 559, type: !5)
!4352 = !DILocalVariable(name: "r", arg: 4, scope: !4347, file: !71, line: 559, type: !19)
!4353 = !DILocation(line: 560, column: 5, scope: !4347)
!4354 = !DILocation(line: 560, column: 20, scope: !4347)
!4355 = !DILocation(line: 561, column: 9, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4347, file: !71, line: 560, column: 25)
!4357 = !DILocalVariable(name: "i", scope: !4358, file: !71, line: 562, type: !15)
!4358 = distinct !DILexicalBlock(scope: !4356, file: !71, line: 562, column: 9)
!4359 = !DILocation(line: 0, scope: !4358)
!4360 = !DILocation(line: 562, column: 14, scope: !4358)
!4361 = !DILocation(line: 562, scope: !4358)
!4362 = !DILocation(line: 562, column: 30, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4358, file: !71, line: 562, column: 9)
!4364 = !DILocation(line: 562, column: 9, scope: !4358)
!4365 = !DILocation(line: 563, column: 27, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4363, file: !71, line: 562, column: 47)
!4367 = !DILocation(line: 563, column: 23, scope: !4366)
!4368 = !DILocation(line: 563, column: 32, scope: !4366)
!4369 = !DILocation(line: 563, column: 13, scope: !4366)
!4370 = !DILocation(line: 562, column: 43, scope: !4363)
!4371 = !DILocation(line: 562, column: 9, scope: !4363)
!4372 = distinct !{!4372, !4364, !4373, !244}
!4373 = !DILocation(line: 564, column: 9, scope: !4358)
!4374 = !DILocation(line: 565, column: 11, scope: !4356)
!4375 = !DILocation(line: 566, column: 16, scope: !4356)
!4376 = distinct !{!4376, !4353, !4377, !244}
!4377 = !DILocation(line: 567, column: 5, scope: !4347)
!4378 = !DILocation(line: 568, column: 1, scope: !4347)
!4379 = distinct !DISubprogram(name: "store64", scope: !71, file: !71, line: 207, type: !4380, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{null, !11, !6}
!4382 = !DILocalVariable(name: "x", arg: 1, scope: !4379, file: !71, line: 207, type: !11)
!4383 = !DILocation(line: 0, scope: !4379)
!4384 = !DILocalVariable(name: "u", arg: 2, scope: !4379, file: !71, line: 207, type: !6)
!4385 = !DILocalVariable(name: "i", scope: !4386, file: !71, line: 208, type: !15)
!4386 = distinct !DILexicalBlock(scope: !4379, file: !71, line: 208, column: 5)
!4387 = !DILocation(line: 0, scope: !4386)
!4388 = !DILocation(line: 208, column: 10, scope: !4386)
!4389 = !DILocation(line: 208, scope: !4386)
!4390 = !DILocation(line: 208, column: 26, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4386, file: !71, line: 208, column: 5)
!4392 = !DILocation(line: 208, column: 5, scope: !4386)
!4393 = !DILocation(line: 209, column: 34, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4391, file: !71, line: 208, column: 36)
!4395 = !DILocation(line: 209, column: 29, scope: !4394)
!4396 = !DILocation(line: 209, column: 16, scope: !4394)
!4397 = !DILocation(line: 209, column: 9, scope: !4394)
!4398 = !DILocation(line: 209, column: 14, scope: !4394)
!4399 = !DILocation(line: 208, column: 31, scope: !4391)
!4400 = !DILocation(line: 208, column: 5, scope: !4391)
!4401 = distinct !{!4401, !4392, !4402, !244}
!4402 = !DILocation(line: 210, column: 5, scope: !4386)
!4403 = !DILocation(line: 211, column: 1, scope: !4379)
!4404 = distinct !DISubprogram(name: "shake128_ctx_clone", scope: !71, file: !71, line: 788, type: !4405, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{null, !4195, !4407}
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 32)
!4408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4196)
!4409 = !DILocalVariable(name: "dest", arg: 1, scope: !4404, file: !71, line: 788, type: !4195)
!4410 = !DILocation(line: 0, scope: !4404)
!4411 = !DILocalVariable(name: "src", arg: 2, scope: !4404, file: !71, line: 788, type: !4407)
!4412 = !DILocation(line: 789, column: 17, scope: !4404)
!4413 = !DILocation(line: 789, column: 15, scope: !4404)
!4414 = !DILocation(line: 790, column: 19, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4404, file: !71, line: 790, column: 9)
!4416 = !DILocation(line: 791, column: 9, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4415, file: !71, line: 790, column: 28)
!4418 = !DILocation(line: 792, column: 5, scope: !4417)
!4419 = !DILocation(line: 793, column: 18, scope: !4404)
!4420 = !DILocation(line: 793, column: 28, scope: !4404)
!4421 = !DILocation(line: 793, column: 5, scope: !4404)
!4422 = !DILocation(line: 794, column: 1, scope: !4404)
!4423 = distinct !DISubprogram(name: "shake128_ctx_release", scope: !71, file: !71, line: 797, type: !4424, scopeLine: 797, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{null, !4195}
!4426 = !DILocalVariable(name: "state", arg: 1, scope: !4423, file: !71, line: 797, type: !4195)
!4427 = !DILocation(line: 0, scope: !4423)
!4428 = !DILocation(line: 798, column: 17, scope: !4423)
!4429 = !DILocation(line: 798, column: 5, scope: !4423)
!4430 = !DILocation(line: 799, column: 1, scope: !4423)
!4431 = distinct !DISubprogram(name: "shake256_absorb", scope: !71, file: !71, line: 812, type: !4432, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{null, !4434, !257, !15}
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 32)
!4435 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256ctx", file: !71, line: 46, baseType: !4436)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 44, size: 32, elements: !4437)
!4437 = !{!4438}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4436, file: !71, line: 45, baseType: !5, size: 32)
!4439 = !DILocalVariable(name: "state", arg: 1, scope: !4431, file: !71, line: 812, type: !4434)
!4440 = !DILocation(line: 0, scope: !4431)
!4441 = !DILocalVariable(name: "input", arg: 2, scope: !4431, file: !71, line: 812, type: !257)
!4442 = !DILocalVariable(name: "inlen", arg: 3, scope: !4431, file: !71, line: 812, type: !15)
!4443 = !DILocation(line: 813, column: 18, scope: !4431)
!4444 = !DILocation(line: 813, column: 16, scope: !4431)
!4445 = !DILocation(line: 814, column: 20, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4431, file: !71, line: 814, column: 9)
!4447 = !DILocation(line: 815, column: 9, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4446, file: !71, line: 814, column: 29)
!4449 = !DILocation(line: 816, column: 5, scope: !4448)
!4450 = !DILocation(line: 817, column: 26, scope: !4431)
!4451 = !DILocation(line: 817, column: 5, scope: !4431)
!4452 = !DILocation(line: 818, column: 1, scope: !4431)
!4453 = distinct !DISubprogram(name: "shake256_squeezeblocks", scope: !71, file: !71, line: 832, type: !4454, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{null, !11, !15, !4434}
!4456 = !DILocalVariable(name: "output", arg: 1, scope: !4453, file: !71, line: 832, type: !11)
!4457 = !DILocation(line: 0, scope: !4453)
!4458 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4453, file: !71, line: 832, type: !15)
!4459 = !DILocalVariable(name: "state", arg: 3, scope: !4453, file: !71, line: 832, type: !4434)
!4460 = !DILocation(line: 833, column: 50, scope: !4453)
!4461 = !DILocation(line: 833, column: 5, scope: !4453)
!4462 = !DILocation(line: 834, column: 1, scope: !4453)
!4463 = distinct !DISubprogram(name: "shake256_ctx_clone", scope: !71, file: !71, line: 836, type: !4464, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{null, !4434, !4466}
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 32)
!4467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4435)
!4468 = !DILocalVariable(name: "dest", arg: 1, scope: !4463, file: !71, line: 836, type: !4434)
!4469 = !DILocation(line: 0, scope: !4463)
!4470 = !DILocalVariable(name: "src", arg: 2, scope: !4463, file: !71, line: 836, type: !4466)
!4471 = !DILocation(line: 837, column: 17, scope: !4463)
!4472 = !DILocation(line: 837, column: 15, scope: !4463)
!4473 = !DILocation(line: 838, column: 19, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4463, file: !71, line: 838, column: 9)
!4475 = !DILocation(line: 839, column: 9, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4474, file: !71, line: 838, column: 28)
!4477 = !DILocation(line: 840, column: 5, scope: !4476)
!4478 = !DILocation(line: 841, column: 18, scope: !4463)
!4479 = !DILocation(line: 841, column: 28, scope: !4463)
!4480 = !DILocation(line: 841, column: 5, scope: !4463)
!4481 = !DILocation(line: 842, column: 1, scope: !4463)
!4482 = distinct !DISubprogram(name: "shake256_ctx_release", scope: !71, file: !71, line: 845, type: !4483, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{null, !4434}
!4485 = !DILocalVariable(name: "state", arg: 1, scope: !4482, file: !71, line: 845, type: !4434)
!4486 = !DILocation(line: 0, scope: !4482)
!4487 = !DILocation(line: 846, column: 17, scope: !4482)
!4488 = !DILocation(line: 846, column: 5, scope: !4482)
!4489 = !DILocation(line: 847, column: 1, scope: !4482)
!4490 = distinct !DISubprogram(name: "shake128", scope: !71, file: !71, line: 859, type: !4491, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{null, !11, !15, !257, !15}
!4493 = !DILocalVariable(name: "output", arg: 1, scope: !4490, file: !71, line: 859, type: !11)
!4494 = !DILocation(line: 0, scope: !4490)
!4495 = !DILocalVariable(name: "outlen", arg: 2, scope: !4490, file: !71, line: 859, type: !15)
!4496 = !DILocalVariable(name: "input", arg: 3, scope: !4490, file: !71, line: 860, type: !257)
!4497 = !DILocalVariable(name: "inlen", arg: 4, scope: !4490, file: !71, line: 860, type: !15)
!4498 = !DILocation(line: 861, column: 29, scope: !4490)
!4499 = !DILocalVariable(name: "nblocks", scope: !4490, file: !71, line: 861, type: !15)
!4500 = !DILocalVariable(name: "t", scope: !4490, file: !71, line: 862, type: !4501)
!4501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1344, elements: !4502)
!4502 = !{!4503}
!4503 = !DISubrange(count: 168)
!4504 = !DILocation(line: 862, column: 13, scope: !4490)
!4505 = !DILocalVariable(name: "s", scope: !4490, file: !71, line: 863, type: !4196)
!4506 = !DILocation(line: 863, column: 17, scope: !4490)
!4507 = !DILocation(line: 865, column: 5, scope: !4490)
!4508 = !DILocation(line: 866, column: 5, scope: !4490)
!4509 = !DILocation(line: 868, column: 23, scope: !4490)
!4510 = !DILocation(line: 868, column: 12, scope: !4490)
!4511 = !DILocation(line: 869, column: 23, scope: !4490)
!4512 = !DILocation(line: 869, column: 12, scope: !4490)
!4513 = !DILocation(line: 871, column: 9, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4490, file: !71, line: 871, column: 9)
!4515 = !DILocation(line: 872, column: 9, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4514, file: !71, line: 871, column: 17)
!4517 = !DILocalVariable(name: "i", scope: !4518, file: !71, line: 873, type: !15)
!4518 = distinct !DILexicalBlock(scope: !4516, file: !71, line: 873, column: 9)
!4519 = !DILocation(line: 0, scope: !4518)
!4520 = !DILocation(line: 873, column: 14, scope: !4518)
!4521 = !DILocation(line: 873, scope: !4518)
!4522 = !DILocation(line: 873, column: 30, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4518, file: !71, line: 873, column: 9)
!4524 = !DILocation(line: 873, column: 9, scope: !4518)
!4525 = !DILocation(line: 874, column: 25, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4523, file: !71, line: 873, column: 45)
!4527 = !DILocation(line: 874, column: 13, scope: !4526)
!4528 = !DILocation(line: 874, column: 23, scope: !4526)
!4529 = !DILocation(line: 873, column: 40, scope: !4523)
!4530 = !DILocation(line: 873, column: 9, scope: !4523)
!4531 = distinct !{!4531, !4524, !4532, !244}
!4532 = !DILocation(line: 875, column: 9, scope: !4518)
!4533 = !DILocation(line: 877, column: 5, scope: !4490)
!4534 = !DILocation(line: 878, column: 1, scope: !4490)
!4535 = distinct !DISubprogram(name: "shake256", scope: !71, file: !71, line: 890, type: !4491, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4536 = !DILocalVariable(name: "output", arg: 1, scope: !4535, file: !71, line: 890, type: !11)
!4537 = !DILocation(line: 0, scope: !4535)
!4538 = !DILocalVariable(name: "outlen", arg: 2, scope: !4535, file: !71, line: 890, type: !15)
!4539 = !DILocalVariable(name: "input", arg: 3, scope: !4535, file: !71, line: 891, type: !257)
!4540 = !DILocalVariable(name: "inlen", arg: 4, scope: !4535, file: !71, line: 891, type: !15)
!4541 = !DILocation(line: 892, column: 29, scope: !4535)
!4542 = !DILocalVariable(name: "nblocks", scope: !4535, file: !71, line: 892, type: !15)
!4543 = !DILocalVariable(name: "t", scope: !4535, file: !71, line: 893, type: !4544)
!4544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1088, elements: !4545)
!4545 = !{!4546}
!4546 = !DISubrange(count: 136)
!4547 = !DILocation(line: 893, column: 13, scope: !4535)
!4548 = !DILocalVariable(name: "s", scope: !4535, file: !71, line: 894, type: !4435)
!4549 = !DILocation(line: 894, column: 17, scope: !4535)
!4550 = !DILocation(line: 896, column: 5, scope: !4535)
!4551 = !DILocation(line: 897, column: 5, scope: !4535)
!4552 = !DILocation(line: 899, column: 23, scope: !4535)
!4553 = !DILocation(line: 899, column: 12, scope: !4535)
!4554 = !DILocation(line: 900, column: 23, scope: !4535)
!4555 = !DILocation(line: 900, column: 12, scope: !4535)
!4556 = !DILocation(line: 902, column: 9, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4535, file: !71, line: 902, column: 9)
!4558 = !DILocation(line: 903, column: 9, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4557, file: !71, line: 902, column: 17)
!4560 = !DILocalVariable(name: "i", scope: !4561, file: !71, line: 904, type: !15)
!4561 = distinct !DILexicalBlock(scope: !4559, file: !71, line: 904, column: 9)
!4562 = !DILocation(line: 0, scope: !4561)
!4563 = !DILocation(line: 904, column: 14, scope: !4561)
!4564 = !DILocation(line: 904, scope: !4561)
!4565 = !DILocation(line: 904, column: 30, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4561, file: !71, line: 904, column: 9)
!4567 = !DILocation(line: 904, column: 9, scope: !4561)
!4568 = !DILocation(line: 905, column: 25, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4566, file: !71, line: 904, column: 45)
!4570 = !DILocation(line: 905, column: 13, scope: !4569)
!4571 = !DILocation(line: 905, column: 23, scope: !4569)
!4572 = !DILocation(line: 904, column: 40, scope: !4566)
!4573 = !DILocation(line: 904, column: 9, scope: !4566)
!4574 = distinct !{!4574, !4567, !4575, !244}
!4575 = !DILocation(line: 906, column: 9, scope: !4561)
!4576 = !DILocation(line: 908, column: 5, scope: !4535)
!4577 = !DILocation(line: 909, column: 1, scope: !4535)
!4578 = distinct !DISubprogram(name: "sha3_256_inc_init", scope: !71, file: !71, line: 911, type: !4579, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{null, !4581}
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 32)
!4582 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_256incctx", file: !71, line: 51, baseType: !4583)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 49, size: 32, elements: !4584)
!4584 = !{!4585}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4583, file: !71, line: 50, baseType: !5, size: 32)
!4586 = !DILocalVariable(name: "state", arg: 1, scope: !4578, file: !71, line: 911, type: !4581)
!4587 = !DILocation(line: 0, scope: !4578)
!4588 = !DILocation(line: 912, column: 18, scope: !4578)
!4589 = !DILocation(line: 912, column: 16, scope: !4578)
!4590 = !DILocation(line: 913, column: 20, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4578, file: !71, line: 913, column: 9)
!4592 = !DILocation(line: 914, column: 9, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4591, file: !71, line: 913, column: 29)
!4594 = !DILocation(line: 915, column: 5, scope: !4593)
!4595 = !DILocation(line: 916, column: 28, scope: !4578)
!4596 = !DILocation(line: 916, column: 5, scope: !4578)
!4597 = !DILocation(line: 917, column: 1, scope: !4578)
!4598 = distinct !DISubprogram(name: "sha3_256_inc_ctx_clone", scope: !71, file: !71, line: 919, type: !4599, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{null, !4581, !4601}
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 32)
!4602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4582)
!4603 = !DILocalVariable(name: "dest", arg: 1, scope: !4598, file: !71, line: 919, type: !4581)
!4604 = !DILocation(line: 0, scope: !4598)
!4605 = !DILocalVariable(name: "src", arg: 2, scope: !4598, file: !71, line: 919, type: !4601)
!4606 = !DILocation(line: 920, column: 17, scope: !4598)
!4607 = !DILocation(line: 920, column: 15, scope: !4598)
!4608 = !DILocation(line: 921, column: 19, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4598, file: !71, line: 921, column: 9)
!4610 = !DILocation(line: 922, column: 9, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4609, file: !71, line: 921, column: 28)
!4612 = !DILocation(line: 923, column: 5, scope: !4611)
!4613 = !DILocation(line: 924, column: 18, scope: !4598)
!4614 = !DILocation(line: 924, column: 28, scope: !4598)
!4615 = !DILocation(line: 924, column: 5, scope: !4598)
!4616 = !DILocation(line: 925, column: 1, scope: !4598)
!4617 = distinct !DISubprogram(name: "sha3_256_inc_ctx_release", scope: !71, file: !71, line: 927, type: !4579, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4618 = !DILocalVariable(name: "state", arg: 1, scope: !4617, file: !71, line: 927, type: !4581)
!4619 = !DILocation(line: 0, scope: !4617)
!4620 = !DILocation(line: 928, column: 17, scope: !4617)
!4621 = !DILocation(line: 928, column: 5, scope: !4617)
!4622 = !DILocation(line: 929, column: 1, scope: !4617)
!4623 = distinct !DISubprogram(name: "sha3_256_inc_absorb", scope: !71, file: !71, line: 931, type: !4624, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{null, !4581, !257, !15}
!4626 = !DILocalVariable(name: "state", arg: 1, scope: !4623, file: !71, line: 931, type: !4581)
!4627 = !DILocation(line: 0, scope: !4623)
!4628 = !DILocalVariable(name: "input", arg: 2, scope: !4623, file: !71, line: 931, type: !257)
!4629 = !DILocalVariable(name: "inlen", arg: 3, scope: !4623, file: !71, line: 931, type: !15)
!4630 = !DILocation(line: 932, column: 30, scope: !4623)
!4631 = !DILocation(line: 932, column: 5, scope: !4623)
!4632 = !DILocation(line: 933, column: 1, scope: !4623)
!4633 = distinct !DISubprogram(name: "sha3_256_inc_finalize", scope: !71, file: !71, line: 935, type: !4634, scopeLine: 935, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{null, !11, !4581}
!4636 = !DILocalVariable(name: "output", arg: 1, scope: !4633, file: !71, line: 935, type: !11)
!4637 = !DILocation(line: 0, scope: !4633)
!4638 = !DILocalVariable(name: "state", arg: 2, scope: !4633, file: !71, line: 935, type: !4581)
!4639 = !DILocalVariable(name: "t", scope: !4633, file: !71, line: 936, type: !4544)
!4640 = !DILocation(line: 936, column: 13, scope: !4633)
!4641 = !DILocation(line: 937, column: 32, scope: !4633)
!4642 = !DILocation(line: 937, column: 5, scope: !4633)
!4643 = !DILocation(line: 939, column: 39, scope: !4633)
!4644 = !DILocation(line: 939, column: 5, scope: !4633)
!4645 = !DILocation(line: 941, column: 5, scope: !4633)
!4646 = !DILocalVariable(name: "i", scope: !4647, file: !71, line: 943, type: !15)
!4647 = distinct !DILexicalBlock(scope: !4633, file: !71, line: 943, column: 5)
!4648 = !DILocation(line: 0, scope: !4647)
!4649 = !DILocation(line: 943, column: 10, scope: !4647)
!4650 = !DILocation(line: 943, scope: !4647)
!4651 = !DILocation(line: 943, column: 26, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4647, file: !71, line: 943, column: 5)
!4653 = !DILocation(line: 943, column: 5, scope: !4647)
!4654 = !DILocation(line: 944, column: 21, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4652, file: !71, line: 943, column: 37)
!4656 = !DILocation(line: 944, column: 9, scope: !4655)
!4657 = !DILocation(line: 944, column: 19, scope: !4655)
!4658 = !DILocation(line: 943, column: 33, scope: !4652)
!4659 = !DILocation(line: 943, column: 5, scope: !4652)
!4660 = distinct !{!4660, !4653, !4661, !244}
!4661 = !DILocation(line: 945, column: 5, scope: !4647)
!4662 = !DILocation(line: 946, column: 1, scope: !4633)
!4663 = distinct !DISubprogram(name: "sha3_256", scope: !71, file: !71, line: 957, type: !4664, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{null, !11, !257, !15}
!4666 = !DILocalVariable(name: "output", arg: 1, scope: !4663, file: !71, line: 957, type: !11)
!4667 = !DILocation(line: 0, scope: !4663)
!4668 = !DILocalVariable(name: "input", arg: 2, scope: !4663, file: !71, line: 957, type: !257)
!4669 = !DILocalVariable(name: "inlen", arg: 3, scope: !4663, file: !71, line: 957, type: !15)
!4670 = !DILocalVariable(name: "s", scope: !4663, file: !71, line: 958, type: !4671)
!4671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1600, elements: !4672)
!4672 = !{!4673}
!4673 = !DISubrange(count: 25)
!4674 = !DILocation(line: 958, column: 14, scope: !4663)
!4675 = !DILocalVariable(name: "t", scope: !4663, file: !71, line: 959, type: !4544)
!4676 = !DILocation(line: 959, column: 13, scope: !4663)
!4677 = !DILocation(line: 962, column: 5, scope: !4663)
!4678 = !DILocation(line: 965, column: 5, scope: !4663)
!4679 = !DILocalVariable(name: "i", scope: !4680, file: !71, line: 967, type: !15)
!4680 = distinct !DILexicalBlock(scope: !4663, file: !71, line: 967, column: 5)
!4681 = !DILocation(line: 0, scope: !4680)
!4682 = !DILocation(line: 967, column: 10, scope: !4680)
!4683 = !DILocation(line: 967, scope: !4680)
!4684 = !DILocation(line: 967, column: 26, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4680, file: !71, line: 967, column: 5)
!4686 = !DILocation(line: 967, column: 5, scope: !4680)
!4687 = !DILocation(line: 968, column: 21, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4685, file: !71, line: 967, column: 37)
!4689 = !DILocation(line: 968, column: 9, scope: !4688)
!4690 = !DILocation(line: 968, column: 19, scope: !4688)
!4691 = !DILocation(line: 967, column: 33, scope: !4685)
!4692 = !DILocation(line: 967, column: 5, scope: !4685)
!4693 = distinct !{!4693, !4686, !4694, !244}
!4694 = !DILocation(line: 969, column: 5, scope: !4680)
!4695 = !DILocation(line: 970, column: 1, scope: !4663)
!4696 = distinct !DISubprogram(name: "sha3_384_inc_init", scope: !71, file: !71, line: 972, type: !4697, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{null, !4699}
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 32)
!4700 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_384incctx", file: !71, line: 56, baseType: !4701)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 54, size: 32, elements: !4702)
!4702 = !{!4703}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4701, file: !71, line: 55, baseType: !5, size: 32)
!4704 = !DILocalVariable(name: "state", arg: 1, scope: !4696, file: !71, line: 972, type: !4699)
!4705 = !DILocation(line: 0, scope: !4696)
!4706 = !DILocation(line: 973, column: 18, scope: !4696)
!4707 = !DILocation(line: 973, column: 16, scope: !4696)
!4708 = !DILocation(line: 974, column: 20, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4696, file: !71, line: 974, column: 9)
!4710 = !DILocation(line: 975, column: 9, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4709, file: !71, line: 974, column: 29)
!4712 = !DILocation(line: 976, column: 5, scope: !4711)
!4713 = !DILocation(line: 977, column: 28, scope: !4696)
!4714 = !DILocation(line: 977, column: 5, scope: !4696)
!4715 = !DILocation(line: 978, column: 1, scope: !4696)
!4716 = distinct !DISubprogram(name: "sha3_384_inc_ctx_clone", scope: !71, file: !71, line: 980, type: !4717, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{null, !4699, !4719}
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 32)
!4720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4700)
!4721 = !DILocalVariable(name: "dest", arg: 1, scope: !4716, file: !71, line: 980, type: !4699)
!4722 = !DILocation(line: 0, scope: !4716)
!4723 = !DILocalVariable(name: "src", arg: 2, scope: !4716, file: !71, line: 980, type: !4719)
!4724 = !DILocation(line: 981, column: 17, scope: !4716)
!4725 = !DILocation(line: 981, column: 15, scope: !4716)
!4726 = !DILocation(line: 982, column: 19, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4716, file: !71, line: 982, column: 9)
!4728 = !DILocation(line: 983, column: 9, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4727, file: !71, line: 982, column: 28)
!4730 = !DILocation(line: 984, column: 5, scope: !4729)
!4731 = !DILocation(line: 985, column: 18, scope: !4716)
!4732 = !DILocation(line: 985, column: 28, scope: !4716)
!4733 = !DILocation(line: 985, column: 5, scope: !4716)
!4734 = !DILocation(line: 986, column: 1, scope: !4716)
!4735 = distinct !DISubprogram(name: "sha3_384_inc_absorb", scope: !71, file: !71, line: 988, type: !4736, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{null, !4699, !257, !15}
!4738 = !DILocalVariable(name: "state", arg: 1, scope: !4735, file: !71, line: 988, type: !4699)
!4739 = !DILocation(line: 0, scope: !4735)
!4740 = !DILocalVariable(name: "input", arg: 2, scope: !4735, file: !71, line: 988, type: !257)
!4741 = !DILocalVariable(name: "inlen", arg: 3, scope: !4735, file: !71, line: 988, type: !15)
!4742 = !DILocation(line: 989, column: 30, scope: !4735)
!4743 = !DILocation(line: 989, column: 5, scope: !4735)
!4744 = !DILocation(line: 990, column: 1, scope: !4735)
!4745 = distinct !DISubprogram(name: "sha3_384_inc_ctx_release", scope: !71, file: !71, line: 992, type: !4697, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4746 = !DILocalVariable(name: "state", arg: 1, scope: !4745, file: !71, line: 992, type: !4699)
!4747 = !DILocation(line: 0, scope: !4745)
!4748 = !DILocation(line: 993, column: 17, scope: !4745)
!4749 = !DILocation(line: 993, column: 5, scope: !4745)
!4750 = !DILocation(line: 994, column: 1, scope: !4745)
!4751 = distinct !DISubprogram(name: "sha3_384_inc_finalize", scope: !71, file: !71, line: 996, type: !4752, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{null, !11, !4699}
!4754 = !DILocalVariable(name: "output", arg: 1, scope: !4751, file: !71, line: 996, type: !11)
!4755 = !DILocation(line: 0, scope: !4751)
!4756 = !DILocalVariable(name: "state", arg: 2, scope: !4751, file: !71, line: 996, type: !4699)
!4757 = !DILocalVariable(name: "t", scope: !4751, file: !71, line: 997, type: !4758)
!4758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 832, elements: !2018)
!4759 = !DILocation(line: 997, column: 13, scope: !4751)
!4760 = !DILocation(line: 998, column: 32, scope: !4751)
!4761 = !DILocation(line: 998, column: 5, scope: !4751)
!4762 = !DILocation(line: 1000, column: 39, scope: !4751)
!4763 = !DILocation(line: 1000, column: 5, scope: !4751)
!4764 = !DILocation(line: 1002, column: 5, scope: !4751)
!4765 = !DILocalVariable(name: "i", scope: !4766, file: !71, line: 1004, type: !15)
!4766 = distinct !DILexicalBlock(scope: !4751, file: !71, line: 1004, column: 5)
!4767 = !DILocation(line: 0, scope: !4766)
!4768 = !DILocation(line: 1004, column: 10, scope: !4766)
!4769 = !DILocation(line: 1004, scope: !4766)
!4770 = !DILocation(line: 1004, column: 26, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4766, file: !71, line: 1004, column: 5)
!4772 = !DILocation(line: 1004, column: 5, scope: !4766)
!4773 = !DILocation(line: 1005, column: 21, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4771, file: !71, line: 1004, column: 37)
!4775 = !DILocation(line: 1005, column: 9, scope: !4774)
!4776 = !DILocation(line: 1005, column: 19, scope: !4774)
!4777 = !DILocation(line: 1004, column: 33, scope: !4771)
!4778 = !DILocation(line: 1004, column: 5, scope: !4771)
!4779 = distinct !{!4779, !4772, !4780, !244}
!4780 = !DILocation(line: 1006, column: 5, scope: !4766)
!4781 = !DILocation(line: 1007, column: 1, scope: !4751)
!4782 = distinct !DISubprogram(name: "sha3_384", scope: !71, file: !71, line: 1018, type: !4664, scopeLine: 1018, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4783 = !DILocalVariable(name: "output", arg: 1, scope: !4782, file: !71, line: 1018, type: !11)
!4784 = !DILocation(line: 0, scope: !4782)
!4785 = !DILocalVariable(name: "input", arg: 2, scope: !4782, file: !71, line: 1018, type: !257)
!4786 = !DILocalVariable(name: "inlen", arg: 3, scope: !4782, file: !71, line: 1018, type: !15)
!4787 = !DILocalVariable(name: "s", scope: !4782, file: !71, line: 1019, type: !4671)
!4788 = !DILocation(line: 1019, column: 14, scope: !4782)
!4789 = !DILocalVariable(name: "t", scope: !4782, file: !71, line: 1020, type: !4758)
!4790 = !DILocation(line: 1020, column: 13, scope: !4782)
!4791 = !DILocation(line: 1023, column: 5, scope: !4782)
!4792 = !DILocation(line: 1026, column: 5, scope: !4782)
!4793 = !DILocalVariable(name: "i", scope: !4794, file: !71, line: 1028, type: !15)
!4794 = distinct !DILexicalBlock(scope: !4782, file: !71, line: 1028, column: 5)
!4795 = !DILocation(line: 0, scope: !4794)
!4796 = !DILocation(line: 1028, column: 10, scope: !4794)
!4797 = !DILocation(line: 1028, scope: !4794)
!4798 = !DILocation(line: 1028, column: 26, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4794, file: !71, line: 1028, column: 5)
!4800 = !DILocation(line: 1028, column: 5, scope: !4794)
!4801 = !DILocation(line: 1029, column: 21, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4799, file: !71, line: 1028, column: 37)
!4803 = !DILocation(line: 1029, column: 9, scope: !4802)
!4804 = !DILocation(line: 1029, column: 19, scope: !4802)
!4805 = !DILocation(line: 1028, column: 33, scope: !4799)
!4806 = !DILocation(line: 1028, column: 5, scope: !4799)
!4807 = distinct !{!4807, !4800, !4808, !244}
!4808 = !DILocation(line: 1030, column: 5, scope: !4794)
!4809 = !DILocation(line: 1031, column: 1, scope: !4782)
!4810 = distinct !DISubprogram(name: "sha3_512_inc_init", scope: !71, file: !71, line: 1033, type: !4811, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{null, !4813}
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 32)
!4814 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_512incctx", file: !71, line: 61, baseType: !4815)
!4815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 59, size: 32, elements: !4816)
!4816 = !{!4817}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4815, file: !71, line: 60, baseType: !5, size: 32)
!4818 = !DILocalVariable(name: "state", arg: 1, scope: !4810, file: !71, line: 1033, type: !4813)
!4819 = !DILocation(line: 0, scope: !4810)
!4820 = !DILocation(line: 1034, column: 18, scope: !4810)
!4821 = !DILocation(line: 1034, column: 16, scope: !4810)
!4822 = !DILocation(line: 1035, column: 20, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4810, file: !71, line: 1035, column: 9)
!4824 = !DILocation(line: 1036, column: 9, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4823, file: !71, line: 1035, column: 29)
!4826 = !DILocation(line: 1037, column: 5, scope: !4825)
!4827 = !DILocation(line: 1038, column: 28, scope: !4810)
!4828 = !DILocation(line: 1038, column: 5, scope: !4810)
!4829 = !DILocation(line: 1039, column: 1, scope: !4810)
!4830 = distinct !DISubprogram(name: "sha3_512_inc_ctx_clone", scope: !71, file: !71, line: 1041, type: !4831, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{null, !4813, !4833}
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 32)
!4834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4814)
!4835 = !DILocalVariable(name: "dest", arg: 1, scope: !4830, file: !71, line: 1041, type: !4813)
!4836 = !DILocation(line: 0, scope: !4830)
!4837 = !DILocalVariable(name: "src", arg: 2, scope: !4830, file: !71, line: 1041, type: !4833)
!4838 = !DILocation(line: 1042, column: 17, scope: !4830)
!4839 = !DILocation(line: 1042, column: 15, scope: !4830)
!4840 = !DILocation(line: 1043, column: 19, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4830, file: !71, line: 1043, column: 9)
!4842 = !DILocation(line: 1044, column: 9, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4841, file: !71, line: 1043, column: 28)
!4844 = !DILocation(line: 1045, column: 5, scope: !4843)
!4845 = !DILocation(line: 1046, column: 18, scope: !4830)
!4846 = !DILocation(line: 1046, column: 28, scope: !4830)
!4847 = !DILocation(line: 1046, column: 5, scope: !4830)
!4848 = !DILocation(line: 1047, column: 1, scope: !4830)
!4849 = distinct !DISubprogram(name: "sha3_512_inc_absorb", scope: !71, file: !71, line: 1049, type: !4850, scopeLine: 1049, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{null, !4813, !257, !15}
!4852 = !DILocalVariable(name: "state", arg: 1, scope: !4849, file: !71, line: 1049, type: !4813)
!4853 = !DILocation(line: 0, scope: !4849)
!4854 = !DILocalVariable(name: "input", arg: 2, scope: !4849, file: !71, line: 1049, type: !257)
!4855 = !DILocalVariable(name: "inlen", arg: 3, scope: !4849, file: !71, line: 1049, type: !15)
!4856 = !DILocation(line: 1050, column: 30, scope: !4849)
!4857 = !DILocation(line: 1050, column: 5, scope: !4849)
!4858 = !DILocation(line: 1051, column: 1, scope: !4849)
!4859 = distinct !DISubprogram(name: "sha3_512_inc_ctx_release", scope: !71, file: !71, line: 1053, type: !4811, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4860 = !DILocalVariable(name: "state", arg: 1, scope: !4859, file: !71, line: 1053, type: !4813)
!4861 = !DILocation(line: 0, scope: !4859)
!4862 = !DILocation(line: 1054, column: 17, scope: !4859)
!4863 = !DILocation(line: 1054, column: 5, scope: !4859)
!4864 = !DILocation(line: 1055, column: 1, scope: !4859)
!4865 = distinct !DISubprogram(name: "sha3_512_inc_finalize", scope: !71, file: !71, line: 1057, type: !4866, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{null, !11, !4813}
!4868 = !DILocalVariable(name: "output", arg: 1, scope: !4865, file: !71, line: 1057, type: !11)
!4869 = !DILocation(line: 0, scope: !4865)
!4870 = !DILocalVariable(name: "state", arg: 2, scope: !4865, file: !71, line: 1057, type: !4813)
!4871 = !DILocalVariable(name: "t", scope: !4865, file: !71, line: 1058, type: !4872)
!4872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 576, elements: !4873)
!4873 = !{!4874}
!4874 = !DISubrange(count: 72)
!4875 = !DILocation(line: 1058, column: 13, scope: !4865)
!4876 = !DILocation(line: 1059, column: 32, scope: !4865)
!4877 = !DILocation(line: 1059, column: 5, scope: !4865)
!4878 = !DILocation(line: 1061, column: 39, scope: !4865)
!4879 = !DILocation(line: 1061, column: 5, scope: !4865)
!4880 = !DILocation(line: 1063, column: 5, scope: !4865)
!4881 = !DILocalVariable(name: "i", scope: !4882, file: !71, line: 1065, type: !15)
!4882 = distinct !DILexicalBlock(scope: !4865, file: !71, line: 1065, column: 5)
!4883 = !DILocation(line: 0, scope: !4882)
!4884 = !DILocation(line: 1065, column: 10, scope: !4882)
!4885 = !DILocation(line: 1065, scope: !4882)
!4886 = !DILocation(line: 1065, column: 26, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4882, file: !71, line: 1065, column: 5)
!4888 = !DILocation(line: 1065, column: 5, scope: !4882)
!4889 = !DILocation(line: 1066, column: 21, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4887, file: !71, line: 1065, column: 37)
!4891 = !DILocation(line: 1066, column: 9, scope: !4890)
!4892 = !DILocation(line: 1066, column: 19, scope: !4890)
!4893 = !DILocation(line: 1065, column: 33, scope: !4887)
!4894 = !DILocation(line: 1065, column: 5, scope: !4887)
!4895 = distinct !{!4895, !4888, !4896, !244}
!4896 = !DILocation(line: 1067, column: 5, scope: !4882)
!4897 = !DILocation(line: 1068, column: 1, scope: !4865)
!4898 = distinct !DISubprogram(name: "sha3_512", scope: !71, file: !71, line: 1079, type: !4664, scopeLine: 1079, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4899 = !DILocalVariable(name: "output", arg: 1, scope: !4898, file: !71, line: 1079, type: !11)
!4900 = !DILocation(line: 0, scope: !4898)
!4901 = !DILocalVariable(name: "input", arg: 2, scope: !4898, file: !71, line: 1079, type: !257)
!4902 = !DILocalVariable(name: "inlen", arg: 3, scope: !4898, file: !71, line: 1079, type: !15)
!4903 = !DILocalVariable(name: "s", scope: !4898, file: !71, line: 1080, type: !4671)
!4904 = !DILocation(line: 1080, column: 14, scope: !4898)
!4905 = !DILocalVariable(name: "t", scope: !4898, file: !71, line: 1081, type: !4872)
!4906 = !DILocation(line: 1081, column: 13, scope: !4898)
!4907 = !DILocation(line: 1084, column: 5, scope: !4898)
!4908 = !DILocation(line: 1087, column: 5, scope: !4898)
!4909 = !DILocalVariable(name: "i", scope: !4910, file: !71, line: 1089, type: !15)
!4910 = distinct !DILexicalBlock(scope: !4898, file: !71, line: 1089, column: 5)
!4911 = !DILocation(line: 0, scope: !4910)
!4912 = !DILocation(line: 1089, column: 10, scope: !4910)
!4913 = !DILocation(line: 1089, scope: !4910)
!4914 = !DILocation(line: 1089, column: 26, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4910, file: !71, line: 1089, column: 5)
!4916 = !DILocation(line: 1089, column: 5, scope: !4910)
!4917 = !DILocation(line: 1090, column: 21, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4915, file: !71, line: 1089, column: 37)
!4919 = !DILocation(line: 1090, column: 9, scope: !4918)
!4920 = !DILocation(line: 1090, column: 19, scope: !4918)
!4921 = !DILocation(line: 1089, column: 33, scope: !4915)
!4922 = !DILocation(line: 1089, column: 5, scope: !4915)
!4923 = distinct !{!4923, !4916, !4924, !244}
!4924 = !DILocation(line: 1091, column: 5, scope: !4910)
!4925 = !DILocation(line: 1092, column: 1, scope: !4898)
!4926 = distinct !DISubprogram(name: "aes128_ecb_keyexp", scope: !80, file: !80, line: 635, type: !4927, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{null, !4929, !49}
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 32)
!4930 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes128ctx", file: !80, line: 46, baseType: !4931)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 44, size: 32, elements: !4932)
!4932 = !{!4933}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !4931, file: !80, line: 45, baseType: !5, size: 32)
!4934 = !DILocalVariable(name: "r", arg: 1, scope: !4926, file: !80, line: 635, type: !4929)
!4935 = !DILocation(line: 0, scope: !4926)
!4936 = !DILocalVariable(name: "key", arg: 2, scope: !4926, file: !80, line: 635, type: !49)
!4937 = !DILocalVariable(name: "skey", scope: !4926, file: !80, line: 636, type: !4938)
!4938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1408, elements: !4939)
!4939 = !{!4940}
!4940 = !DISubrange(count: 22)
!4941 = !DILocation(line: 636, column: 14, scope: !4926)
!4942 = !DILocation(line: 638, column: 17, scope: !4926)
!4943 = !DILocation(line: 638, column: 15, scope: !4926)
!4944 = !DILocation(line: 639, column: 19, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4926, file: !80, line: 639, column: 9)
!4946 = !DILocation(line: 640, column: 9, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4945, file: !80, line: 639, column: 28)
!4948 = !DILocation(line: 641, column: 5, scope: !4947)
!4949 = !DILocation(line: 643, column: 5, scope: !4926)
!4950 = !DILocation(line: 644, column: 32, scope: !4926)
!4951 = !DILocation(line: 644, column: 5, scope: !4926)
!4952 = !DILocation(line: 645, column: 1, scope: !4926)
!4953 = distinct !DISubprogram(name: "br_aes_ct64_keysched", scope: !80, file: !80, line: 403, type: !4954, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{null, !5, !49, !17}
!4956 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !4953, file: !80, line: 403, type: !5)
!4957 = !DILocation(line: 0, scope: !4953)
!4958 = !DILocalVariable(name: "key", arg: 2, scope: !4953, file: !80, line: 403, type: !49)
!4959 = !DILocalVariable(name: "key_len", arg: 3, scope: !4953, file: !80, line: 403, type: !17)
!4960 = !DILocalVariable(name: "skey", scope: !4953, file: !80, line: 406, type: !4961)
!4961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1920, elements: !4962)
!4962 = !{!4963}
!4963 = !DISubrange(count: 60)
!4964 = !DILocation(line: 406, column: 14, scope: !4953)
!4965 = !DILocation(line: 410, column: 26, scope: !4953)
!4966 = !DILocalVariable(name: "nrounds", scope: !4953, file: !80, line: 407, type: !17)
!4967 = !DILocation(line: 409, column: 19, scope: !4953)
!4968 = !DILocalVariable(name: "nk", scope: !4953, file: !80, line: 404, type: !17)
!4969 = !DILocalVariable(name: "nkf", scope: !4953, file: !80, line: 404, type: !17)
!4970 = !DILocation(line: 411, column: 37, scope: !4953)
!4971 = !DILocation(line: 411, column: 5, scope: !4953)
!4972 = !DILocation(line: 412, column: 25, scope: !4953)
!4973 = !DILocation(line: 412, column: 31, scope: !4953)
!4974 = !DILocation(line: 412, column: 11, scope: !4953)
!4975 = !DILocalVariable(name: "tmp", scope: !4953, file: !80, line: 405, type: !19)
!4976 = !DILocalVariable(name: "i", scope: !4953, file: !80, line: 404, type: !17)
!4977 = !DILocalVariable(name: "j", scope: !4953, file: !80, line: 404, type: !17)
!4978 = !DILocalVariable(name: "k", scope: !4953, file: !80, line: 404, type: !17)
!4979 = !DILocation(line: 413, column: 10, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4953, file: !80, line: 413, column: 5)
!4981 = !DILocation(line: 413, scope: !4980)
!4982 = !DILocation(line: 0, scope: !4980)
!4983 = !DILocation(line: 413, column: 34, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4980, file: !80, line: 413, column: 5)
!4985 = !DILocation(line: 413, column: 5, scope: !4980)
!4986 = !DILocation(line: 428, column: 5, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4953, file: !80, line: 428, column: 5)
!4988 = !DILocation(line: 414, column: 15, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4990, file: !80, line: 414, column: 13)
!4990 = distinct !DILexicalBlock(scope: !4984, file: !80, line: 413, column: 47)
!4991 = !DILocation(line: 415, column: 31, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4989, file: !80, line: 414, column: 21)
!4993 = !DILocation(line: 416, column: 19, scope: !4992)
!4994 = !DILocation(line: 416, column: 35, scope: !4992)
!4995 = !DILocation(line: 416, column: 33, scope: !4992)
!4996 = !DILocation(line: 417, column: 9, scope: !4992)
!4997 = !DILocation(line: 417, column: 23, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4989, file: !80, line: 417, column: 20)
!4999 = !DILocation(line: 417, column: 27, scope: !4998)
!5000 = !DILocation(line: 418, column: 19, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4998, file: !80, line: 417, column: 38)
!5002 = !DILocation(line: 419, column: 9, scope: !5001)
!5003 = !DILocation(line: 0, scope: !4989)
!5004 = !DILocation(line: 420, column: 23, scope: !4990)
!5005 = !DILocation(line: 420, column: 16, scope: !4990)
!5006 = !DILocation(line: 420, column: 13, scope: !4990)
!5007 = !DILocation(line: 421, column: 9, scope: !4990)
!5008 = !DILocation(line: 421, column: 17, scope: !4990)
!5009 = !DILocation(line: 422, column: 13, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !4990, file: !80, line: 422, column: 13)
!5011 = !DILocation(line: 422, column: 18, scope: !5010)
!5012 = !DILocation(line: 413, column: 43, scope: !4984)
!5013 = !DILocation(line: 413, column: 5, scope: !4984)
!5014 = distinct !{!5014, !4985, !5015, !244}
!5015 = !DILocation(line: 426, column: 5, scope: !4980)
!5016 = !DILocation(line: 428, scope: !4987)
!5017 = !DILocation(line: 428, column: 26, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !4987, file: !80, line: 428, column: 5)
!5019 = !DILocalVariable(name: "q", scope: !5020, file: !80, line: 429, type: !5021)
!5020 = distinct !DILexicalBlock(scope: !5018, file: !80, line: 428, column: 49)
!5021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !5022)
!5022 = !{!5023}
!5023 = !DISubrange(count: 8)
!5024 = !DILocation(line: 429, column: 18, scope: !5020)
!5025 = !DILocation(line: 431, column: 43, scope: !5020)
!5026 = !DILocation(line: 431, column: 54, scope: !5020)
!5027 = !DILocation(line: 431, column: 9, scope: !5020)
!5028 = !DILocation(line: 432, column: 16, scope: !5020)
!5029 = !DILocation(line: 432, column: 9, scope: !5020)
!5030 = !DILocation(line: 432, column: 14, scope: !5020)
!5031 = !DILocation(line: 433, column: 9, scope: !5020)
!5032 = !DILocation(line: 433, column: 14, scope: !5020)
!5033 = !DILocation(line: 434, column: 9, scope: !5020)
!5034 = !DILocation(line: 434, column: 14, scope: !5020)
!5035 = !DILocation(line: 435, column: 16, scope: !5020)
!5036 = !DILocation(line: 435, column: 9, scope: !5020)
!5037 = !DILocation(line: 435, column: 14, scope: !5020)
!5038 = !DILocation(line: 436, column: 9, scope: !5020)
!5039 = !DILocation(line: 436, column: 14, scope: !5020)
!5040 = !DILocation(line: 437, column: 9, scope: !5020)
!5041 = !DILocation(line: 437, column: 14, scope: !5020)
!5042 = !DILocation(line: 438, column: 9, scope: !5020)
!5043 = !DILocation(line: 440, column: 14, scope: !5020)
!5044 = !DILocation(line: 440, column: 19, scope: !5020)
!5045 = !DILocation(line: 441, column: 16, scope: !5020)
!5046 = !DILocation(line: 441, column: 21, scope: !5020)
!5047 = !DILocation(line: 441, column: 13, scope: !5020)
!5048 = !DILocation(line: 442, column: 16, scope: !5020)
!5049 = !DILocation(line: 442, column: 21, scope: !5020)
!5050 = !DILocation(line: 442, column: 13, scope: !5020)
!5051 = !DILocation(line: 443, column: 16, scope: !5020)
!5052 = !DILocation(line: 443, column: 21, scope: !5020)
!5053 = !DILocation(line: 443, column: 13, scope: !5020)
!5054 = !DILocation(line: 439, column: 9, scope: !5020)
!5055 = !DILocation(line: 439, column: 26, scope: !5020)
!5056 = !DILocation(line: 445, column: 14, scope: !5020)
!5057 = !DILocation(line: 445, column: 19, scope: !5020)
!5058 = !DILocation(line: 446, column: 16, scope: !5020)
!5059 = !DILocation(line: 446, column: 21, scope: !5020)
!5060 = !DILocation(line: 446, column: 13, scope: !5020)
!5061 = !DILocation(line: 447, column: 16, scope: !5020)
!5062 = !DILocation(line: 447, column: 21, scope: !5020)
!5063 = !DILocation(line: 447, column: 13, scope: !5020)
!5064 = !DILocation(line: 448, column: 16, scope: !5020)
!5065 = !DILocation(line: 448, column: 21, scope: !5020)
!5066 = !DILocation(line: 448, column: 13, scope: !5020)
!5067 = !DILocation(line: 444, column: 21, scope: !5020)
!5068 = !DILocation(line: 444, column: 9, scope: !5020)
!5069 = !DILocation(line: 444, column: 26, scope: !5020)
!5070 = !DILocation(line: 428, column: 35, scope: !5018)
!5071 = !DILocation(line: 428, column: 43, scope: !5018)
!5072 = !DILocation(line: 428, column: 5, scope: !5018)
!5073 = distinct !{!5073, !4986, !5074, !244}
!5074 = !DILocation(line: 449, column: 5, scope: !4987)
!5075 = !DILocation(line: 450, column: 1, scope: !4953)
!5076 = distinct !DISubprogram(name: "br_aes_ct64_skey_expand", scope: !80, file: !80, line: 452, type: !5077, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{null, !5, !428, !17}
!5079 = !DILocalVariable(name: "skey", arg: 1, scope: !5076, file: !80, line: 452, type: !5)
!5080 = !DILocation(line: 0, scope: !5076)
!5081 = !DILocalVariable(name: "comp_skey", arg: 2, scope: !5076, file: !80, line: 452, type: !428)
!5082 = !DILocalVariable(name: "nrounds", arg: 3, scope: !5076, file: !80, line: 452, type: !17)
!5083 = !DILocation(line: 455, column: 23, scope: !5076)
!5084 = !DILocalVariable(name: "n", scope: !5076, file: !80, line: 453, type: !17)
!5085 = !DILocalVariable(name: "u", scope: !5076, file: !80, line: 453, type: !17)
!5086 = !DILocalVariable(name: "v", scope: !5076, file: !80, line: 453, type: !17)
!5087 = !DILocation(line: 456, column: 10, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 456, column: 5)
!5089 = !DILocation(line: 456, scope: !5088)
!5090 = !DILocation(line: 456, column: 26, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5088, file: !80, line: 456, column: 5)
!5092 = !DILocation(line: 456, column: 5, scope: !5088)
!5093 = !DILocation(line: 459, column: 29, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5091, file: !80, line: 456, column: 45)
!5095 = !DILocalVariable(name: "x3", scope: !5094, file: !80, line: 457, type: !6)
!5096 = !DILocation(line: 0, scope: !5094)
!5097 = !DILocalVariable(name: "x2", scope: !5094, file: !80, line: 457, type: !6)
!5098 = !DILocalVariable(name: "x1", scope: !5094, file: !80, line: 457, type: !6)
!5099 = !DILocalVariable(name: "x0", scope: !5094, file: !80, line: 457, type: !6)
!5100 = !DILocation(line: 460, column: 12, scope: !5094)
!5101 = !DILocation(line: 464, column: 12, scope: !5094)
!5102 = !DILocation(line: 465, column: 12, scope: !5094)
!5103 = !DILocation(line: 466, column: 12, scope: !5094)
!5104 = !DILocation(line: 467, column: 33, scope: !5094)
!5105 = !DILocation(line: 467, column: 9, scope: !5094)
!5106 = !DILocation(line: 467, column: 21, scope: !5094)
!5107 = !DILocation(line: 468, column: 33, scope: !5094)
!5108 = !DILocation(line: 468, column: 16, scope: !5094)
!5109 = !DILocation(line: 468, column: 9, scope: !5094)
!5110 = !DILocation(line: 468, column: 21, scope: !5094)
!5111 = !DILocation(line: 469, column: 33, scope: !5094)
!5112 = !DILocation(line: 469, column: 16, scope: !5094)
!5113 = !DILocation(line: 469, column: 9, scope: !5094)
!5114 = !DILocation(line: 469, column: 21, scope: !5094)
!5115 = !DILocation(line: 470, column: 33, scope: !5094)
!5116 = !DILocation(line: 470, column: 16, scope: !5094)
!5117 = !DILocation(line: 470, column: 9, scope: !5094)
!5118 = !DILocation(line: 470, column: 21, scope: !5094)
!5119 = !DILocation(line: 456, column: 33, scope: !5091)
!5120 = !DILocation(line: 456, column: 39, scope: !5091)
!5121 = !DILocation(line: 456, column: 5, scope: !5091)
!5122 = distinct !{!5122, !5092, !5123, !244}
!5123 = !DILocation(line: 471, column: 5, scope: !5088)
!5124 = !DILocation(line: 472, column: 1, scope: !5076)
!5125 = distinct !DISubprogram(name: "br_range_dec32le", scope: !80, file: !80, line: 104, type: !5126, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{null, !5128, !15, !49}
!5128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!5129 = !DILocalVariable(name: "v", arg: 1, scope: !5125, file: !80, line: 104, type: !5128)
!5130 = !DILocation(line: 0, scope: !5125)
!5131 = !DILocalVariable(name: "num", arg: 2, scope: !5125, file: !80, line: 104, type: !15)
!5132 = !DILocalVariable(name: "src", arg: 3, scope: !5125, file: !80, line: 104, type: !49)
!5133 = !DILocation(line: 105, column: 5, scope: !5125)
!5134 = !DILocation(line: 105, column: 18, scope: !5125)
!5135 = !DILocation(line: 105, column: 15, scope: !5125)
!5136 = !DILocation(line: 106, column: 17, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5125, file: !80, line: 105, column: 23)
!5138 = !DILocation(line: 106, column: 12, scope: !5137)
!5139 = !DILocation(line: 106, column: 15, scope: !5137)
!5140 = !DILocation(line: 107, column: 13, scope: !5137)
!5141 = distinct !{!5141, !5133, !5142, !244}
!5142 = !DILocation(line: 108, column: 5, scope: !5125)
!5143 = !DILocation(line: 109, column: 1, scope: !5125)
!5144 = distinct !DISubprogram(name: "sub_word", scope: !80, file: !80, line: 392, type: !5145, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5145 = !DISubroutineType(types: !5146)
!5146 = !{!19, !19}
!5147 = !DILocalVariable(name: "x", arg: 1, scope: !5144, file: !80, line: 392, type: !19)
!5148 = !DILocation(line: 0, scope: !5144)
!5149 = !DILocalVariable(name: "q", scope: !5144, file: !80, line: 393, type: !5021)
!5150 = !DILocation(line: 393, column: 14, scope: !5144)
!5151 = !DILocation(line: 395, column: 5, scope: !5144)
!5152 = !DILocation(line: 396, column: 12, scope: !5144)
!5153 = !DILocation(line: 396, column: 10, scope: !5144)
!5154 = !DILocation(line: 397, column: 5, scope: !5144)
!5155 = !DILocation(line: 398, column: 5, scope: !5144)
!5156 = !DILocation(line: 399, column: 5, scope: !5144)
!5157 = !DILocation(line: 400, column: 22, scope: !5144)
!5158 = !DILocation(line: 400, column: 12, scope: !5144)
!5159 = !DILocation(line: 400, column: 5, scope: !5144)
!5160 = distinct !DISubprogram(name: "br_aes_ct64_interleave_in", scope: !80, file: !80, line: 339, type: !5161, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5161 = !DISubroutineType(types: !5162)
!5162 = !{null, !5, !5, !5163}
!5163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5164, size: 32)
!5164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!5165 = !DILocalVariable(name: "q0", arg: 1, scope: !5160, file: !80, line: 339, type: !5)
!5166 = !DILocation(line: 0, scope: !5160)
!5167 = !DILocalVariable(name: "q1", arg: 2, scope: !5160, file: !80, line: 339, type: !5)
!5168 = !DILocalVariable(name: "w", arg: 3, scope: !5160, file: !80, line: 339, type: !5163)
!5169 = !DILocation(line: 342, column: 10, scope: !5160)
!5170 = !DILocalVariable(name: "x0", scope: !5160, file: !80, line: 340, type: !6)
!5171 = !DILocation(line: 343, column: 10, scope: !5160)
!5172 = !DILocalVariable(name: "x1", scope: !5160, file: !80, line: 340, type: !6)
!5173 = !DILocation(line: 344, column: 10, scope: !5160)
!5174 = !DILocalVariable(name: "x2", scope: !5160, file: !80, line: 340, type: !6)
!5175 = !DILocation(line: 345, column: 10, scope: !5160)
!5176 = !DILocalVariable(name: "x3", scope: !5160, file: !80, line: 340, type: !6)
!5177 = !DILocation(line: 346, column: 15, scope: !5160)
!5178 = !DILocation(line: 346, column: 8, scope: !5160)
!5179 = !DILocation(line: 347, column: 15, scope: !5160)
!5180 = !DILocation(line: 347, column: 8, scope: !5160)
!5181 = !DILocation(line: 348, column: 15, scope: !5160)
!5182 = !DILocation(line: 348, column: 8, scope: !5160)
!5183 = !DILocation(line: 349, column: 15, scope: !5160)
!5184 = !DILocation(line: 349, column: 8, scope: !5160)
!5185 = !DILocation(line: 350, column: 8, scope: !5160)
!5186 = !DILocation(line: 351, column: 8, scope: !5160)
!5187 = !DILocation(line: 352, column: 8, scope: !5160)
!5188 = !DILocation(line: 353, column: 8, scope: !5160)
!5189 = !DILocation(line: 354, column: 15, scope: !5160)
!5190 = !DILocation(line: 354, column: 8, scope: !5160)
!5191 = !DILocation(line: 355, column: 15, scope: !5160)
!5192 = !DILocation(line: 355, column: 8, scope: !5160)
!5193 = !DILocation(line: 358, column: 8, scope: !5160)
!5194 = !DILocation(line: 359, column: 8, scope: !5160)
!5195 = !DILocation(line: 362, column: 20, scope: !5160)
!5196 = !DILocation(line: 362, column: 14, scope: !5160)
!5197 = !DILocation(line: 362, column: 9, scope: !5160)
!5198 = !DILocation(line: 363, column: 20, scope: !5160)
!5199 = !DILocation(line: 363, column: 14, scope: !5160)
!5200 = !DILocation(line: 363, column: 9, scope: !5160)
!5201 = !DILocation(line: 364, column: 1, scope: !5160)
!5202 = distinct !DISubprogram(name: "br_aes_ct64_ortho", scope: !80, file: !80, line: 309, type: !26, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5203 = !DILocalVariable(name: "q", arg: 1, scope: !5202, file: !80, line: 309, type: !5)
!5204 = !DILocation(line: 0, scope: !5202)
!5205 = !DILocation(line: 322, column: 5, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5202, file: !80, line: 322, column: 5)
!5207 = !DILocalVariable(name: "a", scope: !5206, file: !80, line: 322, type: !6)
!5208 = !DILocation(line: 0, scope: !5206)
!5209 = !DILocalVariable(name: "b", scope: !5206, file: !80, line: 322, type: !6)
!5210 = !DILocation(line: 323, column: 5, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5202, file: !80, line: 323, column: 5)
!5212 = !DILocalVariable(name: "a", scope: !5211, file: !80, line: 323, type: !6)
!5213 = !DILocation(line: 0, scope: !5211)
!5214 = !DILocalVariable(name: "b", scope: !5211, file: !80, line: 323, type: !6)
!5215 = !DILocation(line: 324, column: 5, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5202, file: !80, line: 324, column: 5)
!5217 = !DILocalVariable(name: "a", scope: !5216, file: !80, line: 324, type: !6)
!5218 = !DILocation(line: 0, scope: !5216)
!5219 = !DILocalVariable(name: "b", scope: !5216, file: !80, line: 324, type: !6)
!5220 = !DILocation(line: 325, column: 5, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5202, file: !80, line: 325, column: 5)
!5222 = !DILocalVariable(name: "a", scope: !5221, file: !80, line: 325, type: !6)
!5223 = !DILocation(line: 0, scope: !5221)
!5224 = !DILocalVariable(name: "b", scope: !5221, file: !80, line: 325, type: !6)
!5225 = !DILocation(line: 327, column: 5, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5202, file: !80, line: 327, column: 5)
!5227 = !DILocalVariable(name: "a", scope: !5226, file: !80, line: 327, type: !6)
!5228 = !DILocation(line: 0, scope: !5226)
!5229 = !DILocalVariable(name: "b", scope: !5226, file: !80, line: 327, type: !6)
!5230 = !DILocation(line: 328, column: 5, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5202, file: !80, line: 328, column: 5)
!5232 = !DILocalVariable(name: "a", scope: !5231, file: !80, line: 328, type: !6)
!5233 = !DILocation(line: 0, scope: !5231)
!5234 = !DILocalVariable(name: "b", scope: !5231, file: !80, line: 328, type: !6)
!5235 = !DILocation(line: 329, column: 5, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5202, file: !80, line: 329, column: 5)
!5237 = !DILocalVariable(name: "a", scope: !5236, file: !80, line: 329, type: !6)
!5238 = !DILocation(line: 0, scope: !5236)
!5239 = !DILocalVariable(name: "b", scope: !5236, file: !80, line: 329, type: !6)
!5240 = !DILocation(line: 330, column: 5, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5202, file: !80, line: 330, column: 5)
!5242 = !DILocalVariable(name: "a", scope: !5241, file: !80, line: 330, type: !6)
!5243 = !DILocation(line: 0, scope: !5241)
!5244 = !DILocalVariable(name: "b", scope: !5241, file: !80, line: 330, type: !6)
!5245 = !DILocation(line: 332, column: 5, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5202, file: !80, line: 332, column: 5)
!5247 = !DILocalVariable(name: "a", scope: !5246, file: !80, line: 332, type: !6)
!5248 = !DILocation(line: 0, scope: !5246)
!5249 = !DILocalVariable(name: "b", scope: !5246, file: !80, line: 332, type: !6)
!5250 = !DILocation(line: 333, column: 5, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5202, file: !80, line: 333, column: 5)
!5252 = !DILocalVariable(name: "a", scope: !5251, file: !80, line: 333, type: !6)
!5253 = !DILocation(line: 0, scope: !5251)
!5254 = !DILocalVariable(name: "b", scope: !5251, file: !80, line: 333, type: !6)
!5255 = !DILocation(line: 334, column: 5, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5202, file: !80, line: 334, column: 5)
!5257 = !DILocalVariable(name: "a", scope: !5256, file: !80, line: 334, type: !6)
!5258 = !DILocation(line: 0, scope: !5256)
!5259 = !DILocalVariable(name: "b", scope: !5256, file: !80, line: 334, type: !6)
!5260 = !DILocation(line: 335, column: 5, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5202, file: !80, line: 335, column: 5)
!5262 = !DILocalVariable(name: "a", scope: !5261, file: !80, line: 335, type: !6)
!5263 = !DILocation(line: 0, scope: !5261)
!5264 = !DILocalVariable(name: "b", scope: !5261, file: !80, line: 335, type: !6)
!5265 = !DILocation(line: 336, column: 1, scope: !5202)
!5266 = distinct !DISubprogram(name: "br_aes_ct64_bitslice_Sbox", scope: !80, file: !80, line: 135, type: !26, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5267 = !DILocalVariable(name: "q", arg: 1, scope: !5266, file: !80, line: 135, type: !5)
!5268 = !DILocation(line: 0, scope: !5266)
!5269 = !DILocation(line: 161, column: 10, scope: !5266)
!5270 = !DILocalVariable(name: "x0", scope: !5266, file: !80, line: 146, type: !6)
!5271 = !DILocation(line: 162, column: 10, scope: !5266)
!5272 = !DILocalVariable(name: "x1", scope: !5266, file: !80, line: 146, type: !6)
!5273 = !DILocation(line: 163, column: 10, scope: !5266)
!5274 = !DILocalVariable(name: "x2", scope: !5266, file: !80, line: 146, type: !6)
!5275 = !DILocation(line: 164, column: 10, scope: !5266)
!5276 = !DILocalVariable(name: "x3", scope: !5266, file: !80, line: 146, type: !6)
!5277 = !DILocation(line: 165, column: 10, scope: !5266)
!5278 = !DILocalVariable(name: "x4", scope: !5266, file: !80, line: 146, type: !6)
!5279 = !DILocation(line: 166, column: 10, scope: !5266)
!5280 = !DILocalVariable(name: "x5", scope: !5266, file: !80, line: 146, type: !6)
!5281 = !DILocation(line: 167, column: 10, scope: !5266)
!5282 = !DILocalVariable(name: "x6", scope: !5266, file: !80, line: 146, type: !6)
!5283 = !DILocation(line: 168, column: 10, scope: !5266)
!5284 = !DILocalVariable(name: "x7", scope: !5266, file: !80, line: 146, type: !6)
!5285 = !DILocation(line: 173, column: 14, scope: !5266)
!5286 = !DILocalVariable(name: "y14", scope: !5266, file: !80, line: 148, type: !6)
!5287 = !DILocation(line: 174, column: 14, scope: !5266)
!5288 = !DILocalVariable(name: "y13", scope: !5266, file: !80, line: 148, type: !6)
!5289 = !DILocation(line: 175, column: 13, scope: !5266)
!5290 = !DILocalVariable(name: "y9", scope: !5266, file: !80, line: 147, type: !6)
!5291 = !DILocation(line: 176, column: 13, scope: !5266)
!5292 = !DILocalVariable(name: "y8", scope: !5266, file: !80, line: 147, type: !6)
!5293 = !DILocation(line: 177, column: 13, scope: !5266)
!5294 = !DILocalVariable(name: "t0", scope: !5266, file: !80, line: 152, type: !6)
!5295 = !DILocation(line: 178, column: 13, scope: !5266)
!5296 = !DILocalVariable(name: "y1", scope: !5266, file: !80, line: 147, type: !6)
!5297 = !DILocation(line: 179, column: 13, scope: !5266)
!5298 = !DILocalVariable(name: "y4", scope: !5266, file: !80, line: 147, type: !6)
!5299 = !DILocation(line: 180, column: 15, scope: !5266)
!5300 = !DILocalVariable(name: "y12", scope: !5266, file: !80, line: 148, type: !6)
!5301 = !DILocation(line: 181, column: 13, scope: !5266)
!5302 = !DILocalVariable(name: "y2", scope: !5266, file: !80, line: 147, type: !6)
!5303 = !DILocation(line: 182, column: 13, scope: !5266)
!5304 = !DILocalVariable(name: "y5", scope: !5266, file: !80, line: 147, type: !6)
!5305 = !DILocation(line: 183, column: 13, scope: !5266)
!5306 = !DILocalVariable(name: "y3", scope: !5266, file: !80, line: 147, type: !6)
!5307 = !DILocation(line: 184, column: 13, scope: !5266)
!5308 = !DILocalVariable(name: "t1", scope: !5266, file: !80, line: 152, type: !6)
!5309 = !DILocation(line: 185, column: 14, scope: !5266)
!5310 = !DILocalVariable(name: "y15", scope: !5266, file: !80, line: 148, type: !6)
!5311 = !DILocation(line: 186, column: 14, scope: !5266)
!5312 = !DILocalVariable(name: "y20", scope: !5266, file: !80, line: 149, type: !6)
!5313 = !DILocation(line: 187, column: 14, scope: !5266)
!5314 = !DILocalVariable(name: "y6", scope: !5266, file: !80, line: 147, type: !6)
!5315 = !DILocation(line: 188, column: 15, scope: !5266)
!5316 = !DILocalVariable(name: "y10", scope: !5266, file: !80, line: 148, type: !6)
!5317 = !DILocation(line: 189, column: 15, scope: !5266)
!5318 = !DILocalVariable(name: "y11", scope: !5266, file: !80, line: 148, type: !6)
!5319 = !DILocation(line: 190, column: 13, scope: !5266)
!5320 = !DILocalVariable(name: "y7", scope: !5266, file: !80, line: 147, type: !6)
!5321 = !DILocation(line: 191, column: 15, scope: !5266)
!5322 = !DILocalVariable(name: "y17", scope: !5266, file: !80, line: 148, type: !6)
!5323 = !DILocalVariable(name: "y19", scope: !5266, file: !80, line: 148, type: !6)
!5324 = !DILocation(line: 193, column: 14, scope: !5266)
!5325 = !DILocalVariable(name: "y16", scope: !5266, file: !80, line: 148, type: !6)
!5326 = !DILocalVariable(name: "y21", scope: !5266, file: !80, line: 149, type: !6)
!5327 = !DILocalVariable(name: "y18", scope: !5266, file: !80, line: 148, type: !6)
!5328 = !DILocation(line: 200, column: 14, scope: !5266)
!5329 = !DILocalVariable(name: "t2", scope: !5266, file: !80, line: 152, type: !6)
!5330 = !DILocation(line: 201, column: 13, scope: !5266)
!5331 = !DILocalVariable(name: "t3", scope: !5266, file: !80, line: 152, type: !6)
!5332 = !DILocation(line: 202, column: 13, scope: !5266)
!5333 = !DILocalVariable(name: "t4", scope: !5266, file: !80, line: 152, type: !6)
!5334 = !DILocation(line: 203, column: 13, scope: !5266)
!5335 = !DILocalVariable(name: "t5", scope: !5266, file: !80, line: 152, type: !6)
!5336 = !DILocalVariable(name: "t6", scope: !5266, file: !80, line: 152, type: !6)
!5337 = !DILocation(line: 205, column: 14, scope: !5266)
!5338 = !DILocalVariable(name: "t7", scope: !5266, file: !80, line: 152, type: !6)
!5339 = !DILocation(line: 206, column: 13, scope: !5266)
!5340 = !DILocalVariable(name: "t8", scope: !5266, file: !80, line: 152, type: !6)
!5341 = !DILocalVariable(name: "t9", scope: !5266, file: !80, line: 152, type: !6)
!5342 = !DILocation(line: 208, column: 14, scope: !5266)
!5343 = !DILocalVariable(name: "t10", scope: !5266, file: !80, line: 153, type: !6)
!5344 = !DILocalVariable(name: "t11", scope: !5266, file: !80, line: 153, type: !6)
!5345 = !DILocation(line: 210, column: 14, scope: !5266)
!5346 = !DILocalVariable(name: "t12", scope: !5266, file: !80, line: 153, type: !6)
!5347 = !DILocation(line: 211, column: 15, scope: !5266)
!5348 = !DILocalVariable(name: "t13", scope: !5266, file: !80, line: 153, type: !6)
!5349 = !DILocation(line: 212, column: 15, scope: !5266)
!5350 = !DILocalVariable(name: "t14", scope: !5266, file: !80, line: 153, type: !6)
!5351 = !DILocation(line: 213, column: 14, scope: !5266)
!5352 = !DILocalVariable(name: "t15", scope: !5266, file: !80, line: 153, type: !6)
!5353 = !DILocation(line: 214, column: 15, scope: !5266)
!5354 = !DILocalVariable(name: "t16", scope: !5266, file: !80, line: 153, type: !6)
!5355 = !DILocation(line: 215, column: 14, scope: !5266)
!5356 = !DILocalVariable(name: "t17", scope: !5266, file: !80, line: 153, type: !6)
!5357 = !DILocalVariable(name: "t18", scope: !5266, file: !80, line: 153, type: !6)
!5358 = !DILocalVariable(name: "t19", scope: !5266, file: !80, line: 153, type: !6)
!5359 = !DILocalVariable(name: "t20", scope: !5266, file: !80, line: 154, type: !6)
!5360 = !DILocation(line: 219, column: 15, scope: !5266)
!5361 = !DILocalVariable(name: "t21", scope: !5266, file: !80, line: 154, type: !6)
!5362 = !DILocation(line: 220, column: 15, scope: !5266)
!5363 = !DILocalVariable(name: "t22", scope: !5266, file: !80, line: 154, type: !6)
!5364 = !DILocation(line: 221, column: 15, scope: !5266)
!5365 = !DILocalVariable(name: "t23", scope: !5266, file: !80, line: 154, type: !6)
!5366 = !DILocation(line: 222, column: 15, scope: !5266)
!5367 = !DILocalVariable(name: "t24", scope: !5266, file: !80, line: 154, type: !6)
!5368 = !DILocation(line: 224, column: 15, scope: !5266)
!5369 = !DILocalVariable(name: "t25", scope: !5266, file: !80, line: 154, type: !6)
!5370 = !DILocation(line: 225, column: 15, scope: !5266)
!5371 = !DILocalVariable(name: "t26", scope: !5266, file: !80, line: 154, type: !6)
!5372 = !DILocation(line: 226, column: 15, scope: !5266)
!5373 = !DILocalVariable(name: "t27", scope: !5266, file: !80, line: 154, type: !6)
!5374 = !DILocation(line: 227, column: 15, scope: !5266)
!5375 = !DILocalVariable(name: "t28", scope: !5266, file: !80, line: 154, type: !6)
!5376 = !DILocation(line: 228, column: 15, scope: !5266)
!5377 = !DILocalVariable(name: "t29", scope: !5266, file: !80, line: 154, type: !6)
!5378 = !DILocation(line: 229, column: 15, scope: !5266)
!5379 = !DILocalVariable(name: "t30", scope: !5266, file: !80, line: 155, type: !6)
!5380 = !DILocation(line: 230, column: 15, scope: !5266)
!5381 = !DILocalVariable(name: "t31", scope: !5266, file: !80, line: 155, type: !6)
!5382 = !DILocation(line: 231, column: 15, scope: !5266)
!5383 = !DILocalVariable(name: "t32", scope: !5266, file: !80, line: 155, type: !6)
!5384 = !DILocation(line: 232, column: 15, scope: !5266)
!5385 = !DILocalVariable(name: "t33", scope: !5266, file: !80, line: 155, type: !6)
!5386 = !DILocation(line: 233, column: 15, scope: !5266)
!5387 = !DILocalVariable(name: "t34", scope: !5266, file: !80, line: 155, type: !6)
!5388 = !DILocation(line: 234, column: 15, scope: !5266)
!5389 = !DILocalVariable(name: "t35", scope: !5266, file: !80, line: 155, type: !6)
!5390 = !DILocation(line: 235, column: 15, scope: !5266)
!5391 = !DILocalVariable(name: "t36", scope: !5266, file: !80, line: 155, type: !6)
!5392 = !DILocation(line: 236, column: 15, scope: !5266)
!5393 = !DILocalVariable(name: "t37", scope: !5266, file: !80, line: 155, type: !6)
!5394 = !DILocation(line: 237, column: 15, scope: !5266)
!5395 = !DILocalVariable(name: "t38", scope: !5266, file: !80, line: 155, type: !6)
!5396 = !DILocation(line: 238, column: 15, scope: !5266)
!5397 = !DILocalVariable(name: "t39", scope: !5266, file: !80, line: 155, type: !6)
!5398 = !DILocation(line: 239, column: 15, scope: !5266)
!5399 = !DILocalVariable(name: "t40", scope: !5266, file: !80, line: 156, type: !6)
!5400 = !DILocation(line: 241, column: 15, scope: !5266)
!5401 = !DILocalVariable(name: "t41", scope: !5266, file: !80, line: 156, type: !6)
!5402 = !DILocation(line: 242, column: 15, scope: !5266)
!5403 = !DILocalVariable(name: "t42", scope: !5266, file: !80, line: 156, type: !6)
!5404 = !DILocation(line: 243, column: 15, scope: !5266)
!5405 = !DILocalVariable(name: "t43", scope: !5266, file: !80, line: 156, type: !6)
!5406 = !DILocation(line: 244, column: 15, scope: !5266)
!5407 = !DILocalVariable(name: "t44", scope: !5266, file: !80, line: 156, type: !6)
!5408 = !DILocation(line: 245, column: 15, scope: !5266)
!5409 = !DILocalVariable(name: "t45", scope: !5266, file: !80, line: 156, type: !6)
!5410 = !DILocation(line: 246, column: 14, scope: !5266)
!5411 = !DILocalVariable(name: "z0", scope: !5266, file: !80, line: 150, type: !6)
!5412 = !DILocation(line: 247, column: 14, scope: !5266)
!5413 = !DILocalVariable(name: "z1", scope: !5266, file: !80, line: 150, type: !6)
!5414 = !DILocation(line: 248, column: 14, scope: !5266)
!5415 = !DILocalVariable(name: "z2", scope: !5266, file: !80, line: 150, type: !6)
!5416 = !DILocation(line: 249, column: 14, scope: !5266)
!5417 = !DILocalVariable(name: "z3", scope: !5266, file: !80, line: 150, type: !6)
!5418 = !DILocation(line: 250, column: 14, scope: !5266)
!5419 = !DILocalVariable(name: "z4", scope: !5266, file: !80, line: 150, type: !6)
!5420 = !DILocation(line: 251, column: 14, scope: !5266)
!5421 = !DILocalVariable(name: "z5", scope: !5266, file: !80, line: 150, type: !6)
!5422 = !DILocation(line: 252, column: 14, scope: !5266)
!5423 = !DILocalVariable(name: "z6", scope: !5266, file: !80, line: 150, type: !6)
!5424 = !DILocation(line: 253, column: 14, scope: !5266)
!5425 = !DILocalVariable(name: "z7", scope: !5266, file: !80, line: 150, type: !6)
!5426 = !DILocation(line: 254, column: 14, scope: !5266)
!5427 = !DILocalVariable(name: "z8", scope: !5266, file: !80, line: 150, type: !6)
!5428 = !DILocation(line: 255, column: 14, scope: !5266)
!5429 = !DILocalVariable(name: "z9", scope: !5266, file: !80, line: 150, type: !6)
!5430 = !DILocation(line: 256, column: 15, scope: !5266)
!5431 = !DILocalVariable(name: "z10", scope: !5266, file: !80, line: 151, type: !6)
!5432 = !DILocation(line: 257, column: 15, scope: !5266)
!5433 = !DILocalVariable(name: "z11", scope: !5266, file: !80, line: 151, type: !6)
!5434 = !DILocation(line: 258, column: 15, scope: !5266)
!5435 = !DILocalVariable(name: "z12", scope: !5266, file: !80, line: 151, type: !6)
!5436 = !DILocation(line: 259, column: 15, scope: !5266)
!5437 = !DILocalVariable(name: "z13", scope: !5266, file: !80, line: 151, type: !6)
!5438 = !DILocation(line: 260, column: 15, scope: !5266)
!5439 = !DILocalVariable(name: "z14", scope: !5266, file: !80, line: 151, type: !6)
!5440 = !DILocation(line: 261, column: 15, scope: !5266)
!5441 = !DILocalVariable(name: "z15", scope: !5266, file: !80, line: 151, type: !6)
!5442 = !DILocation(line: 262, column: 15, scope: !5266)
!5443 = !DILocalVariable(name: "z16", scope: !5266, file: !80, line: 151, type: !6)
!5444 = !DILocation(line: 263, column: 15, scope: !5266)
!5445 = !DILocalVariable(name: "z17", scope: !5266, file: !80, line: 151, type: !6)
!5446 = !DILocation(line: 268, column: 15, scope: !5266)
!5447 = !DILocalVariable(name: "t46", scope: !5266, file: !80, line: 156, type: !6)
!5448 = !DILocation(line: 269, column: 15, scope: !5266)
!5449 = !DILocalVariable(name: "t47", scope: !5266, file: !80, line: 156, type: !6)
!5450 = !DILocation(line: 270, column: 14, scope: !5266)
!5451 = !DILocalVariable(name: "t48", scope: !5266, file: !80, line: 156, type: !6)
!5452 = !DILocation(line: 271, column: 14, scope: !5266)
!5453 = !DILocalVariable(name: "t49", scope: !5266, file: !80, line: 156, type: !6)
!5454 = !DILocation(line: 272, column: 14, scope: !5266)
!5455 = !DILocalVariable(name: "t50", scope: !5266, file: !80, line: 157, type: !6)
!5456 = !DILocation(line: 273, column: 14, scope: !5266)
!5457 = !DILocalVariable(name: "t51", scope: !5266, file: !80, line: 157, type: !6)
!5458 = !DILocation(line: 274, column: 14, scope: !5266)
!5459 = !DILocalVariable(name: "t52", scope: !5266, file: !80, line: 157, type: !6)
!5460 = !DILocation(line: 275, column: 14, scope: !5266)
!5461 = !DILocalVariable(name: "t53", scope: !5266, file: !80, line: 157, type: !6)
!5462 = !DILocation(line: 276, column: 14, scope: !5266)
!5463 = !DILocalVariable(name: "t54", scope: !5266, file: !80, line: 157, type: !6)
!5464 = !DILocation(line: 277, column: 15, scope: !5266)
!5465 = !DILocalVariable(name: "t55", scope: !5266, file: !80, line: 157, type: !6)
!5466 = !DILocation(line: 278, column: 15, scope: !5266)
!5467 = !DILocalVariable(name: "t56", scope: !5266, file: !80, line: 157, type: !6)
!5468 = !DILocation(line: 279, column: 15, scope: !5266)
!5469 = !DILocalVariable(name: "t57", scope: !5266, file: !80, line: 157, type: !6)
!5470 = !DILocation(line: 280, column: 14, scope: !5266)
!5471 = !DILocalVariable(name: "t58", scope: !5266, file: !80, line: 157, type: !6)
!5472 = !DILocation(line: 281, column: 14, scope: !5266)
!5473 = !DILocalVariable(name: "t59", scope: !5266, file: !80, line: 157, type: !6)
!5474 = !DILocation(line: 282, column: 15, scope: !5266)
!5475 = !DILocalVariable(name: "t60", scope: !5266, file: !80, line: 158, type: !6)
!5476 = !DILocation(line: 283, column: 15, scope: !5266)
!5477 = !DILocalVariable(name: "t61", scope: !5266, file: !80, line: 158, type: !6)
!5478 = !DILocation(line: 284, column: 15, scope: !5266)
!5479 = !DILocalVariable(name: "t62", scope: !5266, file: !80, line: 158, type: !6)
!5480 = !DILocation(line: 285, column: 15, scope: !5266)
!5481 = !DILocalVariable(name: "t63", scope: !5266, file: !80, line: 158, type: !6)
!5482 = !DILocation(line: 286, column: 14, scope: !5266)
!5483 = !DILocalVariable(name: "t64", scope: !5266, file: !80, line: 158, type: !6)
!5484 = !DILocation(line: 287, column: 15, scope: !5266)
!5485 = !DILocalVariable(name: "t65", scope: !5266, file: !80, line: 158, type: !6)
!5486 = !DILocation(line: 288, column: 14, scope: !5266)
!5487 = !DILocalVariable(name: "t66", scope: !5266, file: !80, line: 158, type: !6)
!5488 = !DILocation(line: 289, column: 14, scope: !5266)
!5489 = !DILocalVariable(name: "s0", scope: !5266, file: !80, line: 159, type: !6)
!5490 = !DILocation(line: 290, column: 14, scope: !5266)
!5491 = !DILocalVariable(name: "s6", scope: !5266, file: !80, line: 159, type: !6)
!5492 = !DILocation(line: 291, column: 14, scope: !5266)
!5493 = !DILocalVariable(name: "s7", scope: !5266, file: !80, line: 159, type: !6)
!5494 = !DILocalVariable(name: "t67", scope: !5266, file: !80, line: 158, type: !6)
!5495 = !DILocation(line: 293, column: 14, scope: !5266)
!5496 = !DILocalVariable(name: "s3", scope: !5266, file: !80, line: 159, type: !6)
!5497 = !DILocation(line: 294, column: 14, scope: !5266)
!5498 = !DILocalVariable(name: "s4", scope: !5266, file: !80, line: 159, type: !6)
!5499 = !DILocation(line: 295, column: 14, scope: !5266)
!5500 = !DILocalVariable(name: "s5", scope: !5266, file: !80, line: 159, type: !6)
!5501 = !DILocation(line: 296, column: 14, scope: !5266)
!5502 = !DILocalVariable(name: "s1", scope: !5266, file: !80, line: 159, type: !6)
!5503 = !DILocation(line: 297, column: 14, scope: !5266)
!5504 = !DILocalVariable(name: "s2", scope: !5266, file: !80, line: 159, type: !6)
!5505 = !DILocation(line: 299, column: 5, scope: !5266)
!5506 = !DILocation(line: 299, column: 10, scope: !5266)
!5507 = !DILocation(line: 300, column: 5, scope: !5266)
!5508 = !DILocation(line: 300, column: 10, scope: !5266)
!5509 = !DILocation(line: 301, column: 5, scope: !5266)
!5510 = !DILocation(line: 301, column: 10, scope: !5266)
!5511 = !DILocation(line: 302, column: 5, scope: !5266)
!5512 = !DILocation(line: 302, column: 10, scope: !5266)
!5513 = !DILocation(line: 303, column: 5, scope: !5266)
!5514 = !DILocation(line: 303, column: 10, scope: !5266)
!5515 = !DILocation(line: 304, column: 5, scope: !5266)
!5516 = !DILocation(line: 304, column: 10, scope: !5266)
!5517 = !DILocation(line: 305, column: 5, scope: !5266)
!5518 = !DILocation(line: 305, column: 10, scope: !5266)
!5519 = !DILocation(line: 306, column: 10, scope: !5266)
!5520 = !DILocation(line: 307, column: 1, scope: !5266)
!5521 = distinct !DISubprogram(name: "br_dec32le", scope: !80, file: !80, line: 96, type: !5522, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5522 = !DISubroutineType(types: !5523)
!5523 = !{!19, !49}
!5524 = !DILocalVariable(name: "src", arg: 1, scope: !5521, file: !80, line: 96, type: !49)
!5525 = !DILocation(line: 0, scope: !5521)
!5526 = !DILocation(line: 97, column: 22, scope: !5521)
!5527 = !DILocation(line: 97, column: 12, scope: !5521)
!5528 = !DILocation(line: 98, column: 25, scope: !5521)
!5529 = !DILocation(line: 98, column: 15, scope: !5521)
!5530 = !DILocation(line: 98, column: 32, scope: !5521)
!5531 = !DILocation(line: 98, column: 12, scope: !5521)
!5532 = !DILocation(line: 99, column: 25, scope: !5521)
!5533 = !DILocation(line: 99, column: 15, scope: !5521)
!5534 = !DILocation(line: 99, column: 32, scope: !5521)
!5535 = !DILocation(line: 99, column: 12, scope: !5521)
!5536 = !DILocation(line: 100, column: 25, scope: !5521)
!5537 = !DILocation(line: 100, column: 15, scope: !5521)
!5538 = !DILocation(line: 100, column: 32, scope: !5521)
!5539 = !DILocation(line: 100, column: 12, scope: !5521)
!5540 = !DILocation(line: 97, column: 5, scope: !5521)
!5541 = distinct !DISubprogram(name: "aes128_ctr_keyexp", scope: !80, file: !80, line: 647, type: !4927, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5542 = !DILocalVariable(name: "r", arg: 1, scope: !5541, file: !80, line: 647, type: !4929)
!5543 = !DILocation(line: 0, scope: !5541)
!5544 = !DILocalVariable(name: "key", arg: 2, scope: !5541, file: !80, line: 647, type: !49)
!5545 = !DILocation(line: 648, column: 5, scope: !5541)
!5546 = !DILocation(line: 649, column: 1, scope: !5541)
!5547 = distinct !DISubprogram(name: "aes192_ecb_keyexp", scope: !80, file: !80, line: 652, type: !5548, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5548 = !DISubroutineType(types: !5549)
!5549 = !{null, !5550, !49}
!5550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5551, size: 32)
!5551 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes192ctx", file: !80, line: 51, baseType: !5552)
!5552 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 49, size: 32, elements: !5553)
!5553 = !{!5554}
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5552, file: !80, line: 50, baseType: !5, size: 32)
!5555 = !DILocalVariable(name: "r", arg: 1, scope: !5547, file: !80, line: 652, type: !5550)
!5556 = !DILocation(line: 0, scope: !5547)
!5557 = !DILocalVariable(name: "key", arg: 2, scope: !5547, file: !80, line: 652, type: !49)
!5558 = !DILocalVariable(name: "skey", scope: !5547, file: !80, line: 653, type: !5559)
!5559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1664, elements: !5560)
!5560 = !{!5561}
!5561 = !DISubrange(count: 26)
!5562 = !DILocation(line: 653, column: 14, scope: !5547)
!5563 = !DILocation(line: 654, column: 17, scope: !5547)
!5564 = !DILocation(line: 654, column: 15, scope: !5547)
!5565 = !DILocation(line: 655, column: 19, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5547, file: !80, line: 655, column: 9)
!5567 = !DILocation(line: 656, column: 9, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5566, file: !80, line: 655, column: 28)
!5569 = !DILocation(line: 657, column: 5, scope: !5568)
!5570 = !DILocation(line: 659, column: 5, scope: !5547)
!5571 = !DILocation(line: 660, column: 32, scope: !5547)
!5572 = !DILocation(line: 660, column: 5, scope: !5547)
!5573 = !DILocation(line: 661, column: 1, scope: !5547)
!5574 = distinct !DISubprogram(name: "aes192_ctr_keyexp", scope: !80, file: !80, line: 664, type: !5548, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5575 = !DILocalVariable(name: "r", arg: 1, scope: !5574, file: !80, line: 664, type: !5550)
!5576 = !DILocation(line: 0, scope: !5574)
!5577 = !DILocalVariable(name: "key", arg: 2, scope: !5574, file: !80, line: 664, type: !49)
!5578 = !DILocation(line: 665, column: 5, scope: !5574)
!5579 = !DILocation(line: 666, column: 1, scope: !5574)
!5580 = distinct !DISubprogram(name: "aes256_ecb_keyexp", scope: !80, file: !80, line: 669, type: !5581, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5581 = !DISubroutineType(types: !5582)
!5582 = !{null, !5583, !49}
!5583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5584, size: 32)
!5584 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes256ctx", file: !80, line: 56, baseType: !5585)
!5585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 54, size: 32, elements: !5586)
!5586 = !{!5587}
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5585, file: !80, line: 55, baseType: !5, size: 32)
!5588 = !DILocalVariable(name: "r", arg: 1, scope: !5580, file: !80, line: 669, type: !5583)
!5589 = !DILocation(line: 0, scope: !5580)
!5590 = !DILocalVariable(name: "key", arg: 2, scope: !5580, file: !80, line: 669, type: !49)
!5591 = !DILocalVariable(name: "skey", scope: !5580, file: !80, line: 670, type: !5592)
!5592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1920, elements: !5593)
!5593 = !{!5594}
!5594 = !DISubrange(count: 30)
!5595 = !DILocation(line: 670, column: 14, scope: !5580)
!5596 = !DILocation(line: 671, column: 17, scope: !5580)
!5597 = !DILocation(line: 671, column: 15, scope: !5580)
!5598 = !DILocation(line: 672, column: 19, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5580, file: !80, line: 672, column: 9)
!5600 = !DILocation(line: 673, column: 9, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5599, file: !80, line: 672, column: 28)
!5602 = !DILocation(line: 674, column: 5, scope: !5601)
!5603 = !DILocation(line: 676, column: 5, scope: !5580)
!5604 = !DILocation(line: 677, column: 32, scope: !5580)
!5605 = !DILocation(line: 677, column: 5, scope: !5580)
!5606 = !DILocation(line: 678, column: 1, scope: !5580)
!5607 = distinct !DISubprogram(name: "aes256_ctr_keyexp", scope: !80, file: !80, line: 681, type: !5581, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5608 = !DILocalVariable(name: "r", arg: 1, scope: !5607, file: !80, line: 681, type: !5583)
!5609 = !DILocation(line: 0, scope: !5607)
!5610 = !DILocalVariable(name: "key", arg: 2, scope: !5607, file: !80, line: 681, type: !49)
!5611 = !DILocation(line: 682, column: 5, scope: !5607)
!5612 = !DILocation(line: 683, column: 1, scope: !5607)
!5613 = distinct !DISubprogram(name: "aes128_ecb", scope: !80, file: !80, line: 686, type: !5614, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5614 = !DISubroutineType(types: !5615)
!5615 = !{null, !18, !49, !15, !5616}
!5616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5617, size: 32)
!5617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4930)
!5618 = !DILocalVariable(name: "out", arg: 1, scope: !5613, file: !80, line: 686, type: !18)
!5619 = !DILocation(line: 0, scope: !5613)
!5620 = !DILocalVariable(name: "in", arg: 2, scope: !5613, file: !80, line: 686, type: !49)
!5621 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5613, file: !80, line: 686, type: !15)
!5622 = !DILocalVariable(name: "ctx", arg: 4, scope: !5613, file: !80, line: 686, type: !5616)
!5623 = !DILocation(line: 687, column: 36, scope: !5613)
!5624 = !DILocation(line: 687, column: 5, scope: !5613)
!5625 = !DILocation(line: 688, column: 1, scope: !5613)
!5626 = distinct !DISubprogram(name: "aes_ecb", scope: !80, file: !80, line: 587, type: !5627, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5627 = !DISubroutineType(types: !5628)
!5628 = !{null, !18, !49, !15, !428, !17}
!5629 = !DILocalVariable(name: "out", arg: 1, scope: !5626, file: !80, line: 587, type: !18)
!5630 = !DILocation(line: 0, scope: !5626)
!5631 = !DILocalVariable(name: "in", arg: 2, scope: !5626, file: !80, line: 587, type: !49)
!5632 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5626, file: !80, line: 587, type: !15)
!5633 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5626, file: !80, line: 587, type: !428)
!5634 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5626, file: !80, line: 587, type: !17)
!5635 = !DILocalVariable(name: "blocks", scope: !5626, file: !80, line: 588, type: !5636)
!5636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !117)
!5637 = !DILocation(line: 588, column: 14, scope: !5626)
!5638 = !DILocalVariable(name: "t", scope: !5626, file: !80, line: 589, type: !5639)
!5639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !5640)
!5640 = !{!5641}
!5641 = !DISubrange(count: 64)
!5642 = !DILocation(line: 589, column: 19, scope: !5626)
!5643 = !DILocation(line: 591, column: 5, scope: !5626)
!5644 = !DILocation(line: 591, column: 20, scope: !5626)
!5645 = !DILocation(line: 592, column: 9, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5626, file: !80, line: 591, column: 26)
!5647 = !DILocation(line: 593, column: 9, scope: !5646)
!5648 = !DILocation(line: 594, column: 17, scope: !5646)
!5649 = !DILocation(line: 595, column: 12, scope: !5646)
!5650 = !DILocation(line: 596, column: 13, scope: !5646)
!5651 = distinct !{!5651, !5643, !5652, !244}
!5652 = !DILocation(line: 597, column: 5, scope: !5626)
!5653 = !DILocation(line: 599, column: 9, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5626, file: !80, line: 599, column: 9)
!5655 = !DILocation(line: 600, column: 42, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5654, file: !80, line: 599, column: 18)
!5657 = !DILocation(line: 600, column: 9, scope: !5656)
!5658 = !DILocation(line: 601, column: 9, scope: !5656)
!5659 = !DILocation(line: 602, column: 32, scope: !5656)
!5660 = !DILocation(line: 602, column: 9, scope: !5656)
!5661 = !DILocation(line: 603, column: 5, scope: !5656)
!5662 = !DILocation(line: 604, column: 1, scope: !5626)
!5663 = distinct !DISubprogram(name: "aes_ecb4x", scope: !80, file: !80, line: 545, type: !5664, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5664 = !DISubroutineType(types: !5665)
!5665 = !{null, !18, !5163, !428, !17}
!5666 = !DILocalVariable(name: "out", arg: 1, scope: !5663, file: !80, line: 545, type: !18)
!5667 = !DILocation(line: 0, scope: !5663)
!5668 = !DILocalVariable(name: "ivw", arg: 2, scope: !5663, file: !80, line: 545, type: !5163)
!5669 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !5663, file: !80, line: 545, type: !428)
!5670 = !DILocalVariable(name: "nrounds", arg: 4, scope: !5663, file: !80, line: 545, type: !17)
!5671 = !DILocalVariable(name: "w", scope: !5663, file: !80, line: 546, type: !5636)
!5672 = !DILocation(line: 546, column: 14, scope: !5663)
!5673 = !DILocalVariable(name: "q", scope: !5663, file: !80, line: 547, type: !5021)
!5674 = !DILocation(line: 547, column: 14, scope: !5663)
!5675 = !DILocation(line: 550, column: 5, scope: !5663)
!5676 = !DILocalVariable(name: "i", scope: !5663, file: !80, line: 548, type: !17)
!5677 = !DILocation(line: 551, column: 10, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5663, file: !80, line: 551, column: 5)
!5679 = !DILocation(line: 551, scope: !5678)
!5680 = !DILocation(line: 551, column: 19, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5678, file: !80, line: 551, column: 5)
!5682 = !DILocation(line: 551, column: 5, scope: !5678)
!5683 = !DILocation(line: 552, column: 36, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5681, file: !80, line: 551, column: 29)
!5685 = !DILocation(line: 552, column: 47, scope: !5684)
!5686 = !DILocation(line: 552, column: 43, scope: !5684)
!5687 = !DILocation(line: 552, column: 55, scope: !5684)
!5688 = !DILocation(line: 552, column: 9, scope: !5684)
!5689 = !DILocation(line: 551, column: 25, scope: !5681)
!5690 = !DILocation(line: 551, column: 5, scope: !5681)
!5691 = distinct !{!5691, !5682, !5692, !244}
!5692 = !DILocation(line: 553, column: 5, scope: !5678)
!5693 = !DILocation(line: 554, column: 5, scope: !5663)
!5694 = !DILocation(line: 557, column: 5, scope: !5663)
!5695 = !DILocation(line: 558, column: 10, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5663, file: !80, line: 558, column: 5)
!5697 = !DILocation(line: 558, scope: !5696)
!5698 = !DILocation(line: 558, column: 19, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5696, file: !80, line: 558, column: 5)
!5700 = !DILocation(line: 558, column: 5, scope: !5696)
!5701 = !DILocation(line: 559, column: 9, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5699, file: !80, line: 558, column: 35)
!5703 = !DILocation(line: 560, column: 9, scope: !5702)
!5704 = !DILocation(line: 561, column: 9, scope: !5702)
!5705 = !DILocation(line: 562, column: 33, scope: !5702)
!5706 = !DILocation(line: 562, column: 9, scope: !5702)
!5707 = !DILocation(line: 558, column: 31, scope: !5699)
!5708 = !DILocation(line: 558, column: 5, scope: !5699)
!5709 = distinct !{!5709, !5700, !5710, !244}
!5710 = !DILocation(line: 563, column: 5, scope: !5696)
!5711 = !DILocation(line: 564, column: 5, scope: !5663)
!5712 = !DILocation(line: 565, column: 5, scope: !5663)
!5713 = !DILocation(line: 566, column: 29, scope: !5663)
!5714 = !DILocation(line: 566, column: 5, scope: !5663)
!5715 = !DILocation(line: 568, column: 5, scope: !5663)
!5716 = !DILocation(line: 569, column: 10, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5663, file: !80, line: 569, column: 5)
!5718 = !DILocation(line: 569, scope: !5717)
!5719 = !DILocation(line: 569, column: 19, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5717, file: !80, line: 569, column: 5)
!5721 = !DILocation(line: 569, column: 5, scope: !5717)
!5722 = !DILocation(line: 570, column: 38, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5720, file: !80, line: 569, column: 30)
!5724 = !DILocation(line: 570, column: 50, scope: !5723)
!5725 = !DILocation(line: 570, column: 60, scope: !5723)
!5726 = !DILocation(line: 570, column: 56, scope: !5723)
!5727 = !DILocation(line: 570, column: 9, scope: !5723)
!5728 = !DILocation(line: 569, column: 26, scope: !5720)
!5729 = !DILocation(line: 569, column: 5, scope: !5720)
!5730 = distinct !{!5730, !5721, !5731, !244}
!5731 = !DILocation(line: 571, column: 5, scope: !5717)
!5732 = !DILocation(line: 572, column: 5, scope: !5663)
!5733 = !DILocation(line: 573, column: 1, scope: !5663)
!5734 = distinct !DISubprogram(name: "add_round_key", scope: !80, file: !80, line: 475, type: !5735, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5735 = !DISubroutineType(types: !5736)
!5736 = !{null, !5, !428}
!5737 = !DILocalVariable(name: "q", arg: 1, scope: !5734, file: !80, line: 475, type: !5)
!5738 = !DILocation(line: 0, scope: !5734)
!5739 = !DILocalVariable(name: "sk", arg: 2, scope: !5734, file: !80, line: 475, type: !428)
!5740 = !DILocation(line: 476, column: 13, scope: !5734)
!5741 = !DILocation(line: 476, column: 10, scope: !5734)
!5742 = !DILocation(line: 477, column: 13, scope: !5734)
!5743 = !DILocation(line: 477, column: 5, scope: !5734)
!5744 = !DILocation(line: 477, column: 10, scope: !5734)
!5745 = !DILocation(line: 478, column: 13, scope: !5734)
!5746 = !DILocation(line: 478, column: 5, scope: !5734)
!5747 = !DILocation(line: 478, column: 10, scope: !5734)
!5748 = !DILocation(line: 479, column: 13, scope: !5734)
!5749 = !DILocation(line: 479, column: 5, scope: !5734)
!5750 = !DILocation(line: 479, column: 10, scope: !5734)
!5751 = !DILocation(line: 480, column: 13, scope: !5734)
!5752 = !DILocation(line: 480, column: 5, scope: !5734)
!5753 = !DILocation(line: 480, column: 10, scope: !5734)
!5754 = !DILocation(line: 481, column: 13, scope: !5734)
!5755 = !DILocation(line: 481, column: 5, scope: !5734)
!5756 = !DILocation(line: 481, column: 10, scope: !5734)
!5757 = !DILocation(line: 482, column: 13, scope: !5734)
!5758 = !DILocation(line: 482, column: 5, scope: !5734)
!5759 = !DILocation(line: 482, column: 10, scope: !5734)
!5760 = !DILocation(line: 483, column: 13, scope: !5734)
!5761 = !DILocation(line: 483, column: 5, scope: !5734)
!5762 = !DILocation(line: 483, column: 10, scope: !5734)
!5763 = !DILocation(line: 484, column: 1, scope: !5734)
!5764 = distinct !DISubprogram(name: "shift_rows", scope: !80, file: !80, line: 486, type: !26, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5765 = !DILocalVariable(name: "q", arg: 1, scope: !5764, file: !80, line: 486, type: !5)
!5766 = !DILocation(line: 0, scope: !5764)
!5767 = !DILocalVariable(name: "i", scope: !5764, file: !80, line: 487, type: !45)
!5768 = !DILocation(line: 489, column: 10, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5764, file: !80, line: 489, column: 5)
!5770 = !DILocation(line: 489, scope: !5769)
!5771 = !DILocation(line: 489, column: 19, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5769, file: !80, line: 489, column: 5)
!5773 = !DILocation(line: 489, column: 5, scope: !5769)
!5774 = !DILocation(line: 492, column: 13, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5772, file: !80, line: 489, column: 30)
!5776 = !DILocalVariable(name: "x", scope: !5775, file: !80, line: 490, type: !6)
!5777 = !DILocation(line: 0, scope: !5775)
!5778 = !DILocation(line: 493, column: 19, scope: !5775)
!5779 = !DILocation(line: 494, column: 54, scope: !5775)
!5780 = !DILocation(line: 494, column: 16, scope: !5775)
!5781 = !DILocation(line: 495, column: 54, scope: !5775)
!5782 = !DILocation(line: 495, column: 16, scope: !5775)
!5783 = !DILocation(line: 496, column: 54, scope: !5775)
!5784 = !DILocation(line: 496, column: 16, scope: !5775)
!5785 = !DILocation(line: 497, column: 54, scope: !5775)
!5786 = !DILocation(line: 497, column: 16, scope: !5775)
!5787 = !DILocation(line: 498, column: 54, scope: !5775)
!5788 = !DILocation(line: 498, column: 16, scope: !5775)
!5789 = !DILocation(line: 499, column: 54, scope: !5775)
!5790 = !DILocation(line: 499, column: 16, scope: !5775)
!5791 = !DILocation(line: 493, column: 9, scope: !5775)
!5792 = !DILocation(line: 493, column: 14, scope: !5775)
!5793 = !DILocation(line: 489, column: 26, scope: !5772)
!5794 = !DILocation(line: 489, column: 5, scope: !5772)
!5795 = distinct !{!5795, !5773, !5796, !244}
!5796 = !DILocation(line: 500, column: 5, scope: !5769)
!5797 = !DILocation(line: 501, column: 1, scope: !5764)
!5798 = distinct !DISubprogram(name: "mix_columns", scope: !80, file: !80, line: 507, type: !26, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5799 = !DILocalVariable(name: "q", arg: 1, scope: !5798, file: !80, line: 507, type: !5)
!5800 = !DILocation(line: 0, scope: !5798)
!5801 = !DILocation(line: 511, column: 10, scope: !5798)
!5802 = !DILocalVariable(name: "q0", scope: !5798, file: !80, line: 508, type: !6)
!5803 = !DILocation(line: 512, column: 10, scope: !5798)
!5804 = !DILocalVariable(name: "q1", scope: !5798, file: !80, line: 508, type: !6)
!5805 = !DILocation(line: 513, column: 10, scope: !5798)
!5806 = !DILocalVariable(name: "q2", scope: !5798, file: !80, line: 508, type: !6)
!5807 = !DILocation(line: 514, column: 10, scope: !5798)
!5808 = !DILocalVariable(name: "q3", scope: !5798, file: !80, line: 508, type: !6)
!5809 = !DILocation(line: 515, column: 10, scope: !5798)
!5810 = !DILocalVariable(name: "q4", scope: !5798, file: !80, line: 508, type: !6)
!5811 = !DILocation(line: 516, column: 10, scope: !5798)
!5812 = !DILocalVariable(name: "q5", scope: !5798, file: !80, line: 508, type: !6)
!5813 = !DILocation(line: 517, column: 10, scope: !5798)
!5814 = !DILocalVariable(name: "q6", scope: !5798, file: !80, line: 508, type: !6)
!5815 = !DILocation(line: 518, column: 10, scope: !5798)
!5816 = !DILocalVariable(name: "q7", scope: !5798, file: !80, line: 508, type: !6)
!5817 = !DILocation(line: 519, column: 21, scope: !5798)
!5818 = !DILocalVariable(name: "r0", scope: !5798, file: !80, line: 509, type: !6)
!5819 = !DILocation(line: 520, column: 21, scope: !5798)
!5820 = !DILocalVariable(name: "r1", scope: !5798, file: !80, line: 509, type: !6)
!5821 = !DILocation(line: 521, column: 21, scope: !5798)
!5822 = !DILocalVariable(name: "r2", scope: !5798, file: !80, line: 509, type: !6)
!5823 = !DILocation(line: 522, column: 21, scope: !5798)
!5824 = !DILocalVariable(name: "r3", scope: !5798, file: !80, line: 509, type: !6)
!5825 = !DILocation(line: 523, column: 21, scope: !5798)
!5826 = !DILocalVariable(name: "r4", scope: !5798, file: !80, line: 509, type: !6)
!5827 = !DILocation(line: 524, column: 21, scope: !5798)
!5828 = !DILocalVariable(name: "r5", scope: !5798, file: !80, line: 509, type: !6)
!5829 = !DILocation(line: 525, column: 21, scope: !5798)
!5830 = !DILocalVariable(name: "r6", scope: !5798, file: !80, line: 509, type: !6)
!5831 = !DILocation(line: 526, column: 21, scope: !5798)
!5832 = !DILocalVariable(name: "r7", scope: !5798, file: !80, line: 509, type: !6)
!5833 = !DILocation(line: 528, column: 37, scope: !5798)
!5834 = !DILocation(line: 528, column: 27, scope: !5798)
!5835 = !DILocation(line: 528, column: 25, scope: !5798)
!5836 = !DILocation(line: 528, column: 10, scope: !5798)
!5837 = !DILocation(line: 529, column: 47, scope: !5798)
!5838 = !DILocation(line: 529, column: 37, scope: !5798)
!5839 = !DILocation(line: 529, column: 35, scope: !5798)
!5840 = !DILocation(line: 529, column: 5, scope: !5798)
!5841 = !DILocation(line: 529, column: 10, scope: !5798)
!5842 = !DILocation(line: 530, column: 37, scope: !5798)
!5843 = !DILocation(line: 530, column: 27, scope: !5798)
!5844 = !DILocation(line: 530, column: 25, scope: !5798)
!5845 = !DILocation(line: 530, column: 5, scope: !5798)
!5846 = !DILocation(line: 530, column: 10, scope: !5798)
!5847 = !DILocation(line: 531, column: 47, scope: !5798)
!5848 = !DILocation(line: 531, column: 37, scope: !5798)
!5849 = !DILocation(line: 531, column: 35, scope: !5798)
!5850 = !DILocation(line: 531, column: 5, scope: !5798)
!5851 = !DILocation(line: 531, column: 10, scope: !5798)
!5852 = !DILocation(line: 532, column: 47, scope: !5798)
!5853 = !DILocation(line: 532, column: 37, scope: !5798)
!5854 = !DILocation(line: 532, column: 35, scope: !5798)
!5855 = !DILocation(line: 532, column: 5, scope: !5798)
!5856 = !DILocation(line: 532, column: 10, scope: !5798)
!5857 = !DILocation(line: 533, column: 37, scope: !5798)
!5858 = !DILocation(line: 533, column: 27, scope: !5798)
!5859 = !DILocation(line: 533, column: 25, scope: !5798)
!5860 = !DILocation(line: 533, column: 5, scope: !5798)
!5861 = !DILocation(line: 533, column: 10, scope: !5798)
!5862 = !DILocation(line: 534, column: 37, scope: !5798)
!5863 = !DILocation(line: 534, column: 27, scope: !5798)
!5864 = !DILocation(line: 534, column: 25, scope: !5798)
!5865 = !DILocation(line: 534, column: 5, scope: !5798)
!5866 = !DILocation(line: 534, column: 10, scope: !5798)
!5867 = !DILocation(line: 535, column: 37, scope: !5798)
!5868 = !DILocation(line: 535, column: 27, scope: !5798)
!5869 = !DILocation(line: 535, column: 25, scope: !5798)
!5870 = !DILocation(line: 535, column: 5, scope: !5798)
!5871 = !DILocation(line: 535, column: 10, scope: !5798)
!5872 = !DILocation(line: 536, column: 1, scope: !5798)
!5873 = distinct !DISubprogram(name: "br_aes_ct64_interleave_out", scope: !80, file: !80, line: 367, type: !5874, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5874 = !DISubroutineType(types: !5875)
!5875 = !{null, !5128, !6, !6}
!5876 = !DILocalVariable(name: "w", arg: 1, scope: !5873, file: !80, line: 367, type: !5128)
!5877 = !DILocation(line: 0, scope: !5873)
!5878 = !DILocalVariable(name: "q0", arg: 2, scope: !5873, file: !80, line: 367, type: !6)
!5879 = !DILocalVariable(name: "q1", arg: 3, scope: !5873, file: !80, line: 367, type: !6)
!5880 = !DILocation(line: 370, column: 13, scope: !5873)
!5881 = !DILocalVariable(name: "x0", scope: !5873, file: !80, line: 368, type: !6)
!5882 = !DILocation(line: 371, column: 13, scope: !5873)
!5883 = !DILocalVariable(name: "x1", scope: !5873, file: !80, line: 368, type: !6)
!5884 = !DILocation(line: 372, column: 14, scope: !5873)
!5885 = !DILocation(line: 372, column: 20, scope: !5873)
!5886 = !DILocalVariable(name: "x2", scope: !5873, file: !80, line: 368, type: !6)
!5887 = !DILocation(line: 373, column: 14, scope: !5873)
!5888 = !DILocation(line: 373, column: 20, scope: !5873)
!5889 = !DILocalVariable(name: "x3", scope: !5873, file: !80, line: 368, type: !6)
!5890 = !DILocation(line: 374, column: 15, scope: !5873)
!5891 = !DILocation(line: 374, column: 8, scope: !5873)
!5892 = !DILocation(line: 375, column: 15, scope: !5873)
!5893 = !DILocation(line: 375, column: 8, scope: !5873)
!5894 = !DILocation(line: 376, column: 8, scope: !5873)
!5895 = !DILocation(line: 377, column: 8, scope: !5873)
!5896 = !DILocation(line: 378, column: 8, scope: !5873)
!5897 = !DILocation(line: 379, column: 8, scope: !5873)
!5898 = !DILocation(line: 382, column: 41, scope: !5873)
!5899 = !DILocation(line: 382, column: 25, scope: !5873)
!5900 = !DILocation(line: 382, column: 10, scope: !5873)
!5901 = !DILocation(line: 383, column: 41, scope: !5873)
!5902 = !DILocation(line: 383, column: 25, scope: !5873)
!5903 = !DILocation(line: 383, column: 5, scope: !5873)
!5904 = !DILocation(line: 383, column: 10, scope: !5873)
!5905 = !DILocation(line: 384, column: 41, scope: !5873)
!5906 = !DILocation(line: 384, column: 25, scope: !5873)
!5907 = !DILocation(line: 384, column: 5, scope: !5873)
!5908 = !DILocation(line: 384, column: 10, scope: !5873)
!5909 = !DILocation(line: 385, column: 41, scope: !5873)
!5910 = !DILocation(line: 385, column: 25, scope: !5873)
!5911 = !DILocation(line: 385, column: 5, scope: !5873)
!5912 = !DILocation(line: 385, column: 10, scope: !5873)
!5913 = !DILocation(line: 386, column: 1, scope: !5873)
!5914 = distinct !DISubprogram(name: "br_range_enc32le", scope: !80, file: !80, line: 127, type: !5915, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5915 = !DISubroutineType(types: !5916)
!5916 = !{null, !18, !5163, !15}
!5917 = !DILocalVariable(name: "dst", arg: 1, scope: !5914, file: !80, line: 127, type: !18)
!5918 = !DILocation(line: 0, scope: !5914)
!5919 = !DILocalVariable(name: "v", arg: 2, scope: !5914, file: !80, line: 127, type: !5163)
!5920 = !DILocalVariable(name: "num", arg: 3, scope: !5914, file: !80, line: 127, type: !15)
!5921 = !DILocation(line: 128, column: 5, scope: !5914)
!5922 = !DILocation(line: 128, column: 18, scope: !5914)
!5923 = !DILocation(line: 128, column: 15, scope: !5914)
!5924 = !DILocation(line: 129, column: 28, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5914, file: !80, line: 128, column: 23)
!5926 = !DILocation(line: 129, column: 25, scope: !5925)
!5927 = !DILocation(line: 129, column: 9, scope: !5925)
!5928 = !DILocation(line: 130, column: 13, scope: !5925)
!5929 = distinct !{!5929, !5921, !5930, !244}
!5930 = !DILocation(line: 131, column: 5, scope: !5914)
!5931 = !DILocation(line: 132, column: 1, scope: !5914)
!5932 = distinct !DISubprogram(name: "br_enc32le", scope: !80, file: !80, line: 119, type: !5933, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5933 = !DISubroutineType(types: !5934)
!5934 = !{null, !18, !19}
!5935 = !DILocalVariable(name: "dst", arg: 1, scope: !5932, file: !80, line: 119, type: !18)
!5936 = !DILocation(line: 0, scope: !5932)
!5937 = !DILocalVariable(name: "x", arg: 2, scope: !5932, file: !80, line: 119, type: !19)
!5938 = !DILocation(line: 120, column: 14, scope: !5932)
!5939 = !DILocation(line: 120, column: 12, scope: !5932)
!5940 = !DILocation(line: 121, column: 32, scope: !5932)
!5941 = !DILocation(line: 121, column: 14, scope: !5932)
!5942 = !DILocation(line: 121, column: 5, scope: !5932)
!5943 = !DILocation(line: 121, column: 12, scope: !5932)
!5944 = !DILocation(line: 122, column: 32, scope: !5932)
!5945 = !DILocation(line: 122, column: 14, scope: !5932)
!5946 = !DILocation(line: 122, column: 5, scope: !5932)
!5947 = !DILocation(line: 122, column: 12, scope: !5932)
!5948 = !DILocation(line: 123, column: 32, scope: !5932)
!5949 = !DILocation(line: 123, column: 14, scope: !5932)
!5950 = !DILocation(line: 123, column: 5, scope: !5932)
!5951 = !DILocation(line: 123, column: 12, scope: !5932)
!5952 = !DILocation(line: 124, column: 1, scope: !5932)
!5953 = distinct !DISubprogram(name: "rotr32", scope: !80, file: !80, line: 503, type: !5954, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5954 = !DISubroutineType(types: !5955)
!5955 = !{!6, !6}
!5956 = !DILocalVariable(name: "x", arg: 1, scope: !5953, file: !80, line: 503, type: !6)
!5957 = !DILocation(line: 0, scope: !5953)
!5958 = !DILocation(line: 504, column: 22, scope: !5953)
!5959 = !DILocation(line: 504, column: 5, scope: !5953)
!5960 = distinct !DISubprogram(name: "aes128_ctr", scope: !80, file: !80, line: 690, type: !5961, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5961 = !DISubroutineType(types: !5962)
!5962 = !{null, !18, !15, !49, !5616}
!5963 = !DILocalVariable(name: "out", arg: 1, scope: !5960, file: !80, line: 690, type: !18)
!5964 = !DILocation(line: 0, scope: !5960)
!5965 = !DILocalVariable(name: "outlen", arg: 2, scope: !5960, file: !80, line: 690, type: !15)
!5966 = !DILocalVariable(name: "iv", arg: 3, scope: !5960, file: !80, line: 690, type: !49)
!5967 = !DILocalVariable(name: "ctx", arg: 4, scope: !5960, file: !80, line: 690, type: !5616)
!5968 = !DILocation(line: 691, column: 35, scope: !5960)
!5969 = !DILocation(line: 691, column: 5, scope: !5960)
!5970 = !DILocation(line: 692, column: 1, scope: !5960)
!5971 = distinct !DISubprogram(name: "aes_ctr", scope: !80, file: !80, line: 607, type: !5972, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5972 = !DISubroutineType(types: !5973)
!5973 = !{null, !18, !15, !49, !428, !17}
!5974 = !DILocalVariable(name: "out", arg: 1, scope: !5971, file: !80, line: 607, type: !18)
!5975 = !DILocation(line: 0, scope: !5971)
!5976 = !DILocalVariable(name: "outlen", arg: 2, scope: !5971, file: !80, line: 607, type: !15)
!5977 = !DILocalVariable(name: "iv", arg: 3, scope: !5971, file: !80, line: 607, type: !49)
!5978 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5971, file: !80, line: 607, type: !428)
!5979 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5971, file: !80, line: 607, type: !17)
!5980 = !DILocalVariable(name: "ivw", scope: !5971, file: !80, line: 608, type: !5636)
!5981 = !DILocation(line: 608, column: 14, scope: !5971)
!5982 = !DILocalVariable(name: "cc", scope: !5971, file: !80, line: 610, type: !19)
!5983 = !DILocation(line: 612, column: 5, scope: !5971)
!5984 = !DILocation(line: 613, column: 16, scope: !5971)
!5985 = !DILocation(line: 613, column: 5, scope: !5971)
!5986 = !DILocation(line: 614, column: 16, scope: !5971)
!5987 = !DILocation(line: 614, column: 5, scope: !5971)
!5988 = !DILocation(line: 615, column: 16, scope: !5971)
!5989 = !DILocation(line: 615, column: 5, scope: !5971)
!5990 = !DILocation(line: 616, column: 15, scope: !5971)
!5991 = !DILocation(line: 616, column: 5, scope: !5971)
!5992 = !DILocation(line: 616, column: 13, scope: !5971)
!5993 = !DILocation(line: 617, column: 15, scope: !5971)
!5994 = !DILocation(line: 617, column: 5, scope: !5971)
!5995 = !DILocation(line: 617, column: 13, scope: !5971)
!5996 = !DILocation(line: 618, column: 15, scope: !5971)
!5997 = !DILocation(line: 618, column: 5, scope: !5971)
!5998 = !DILocation(line: 618, column: 13, scope: !5971)
!5999 = !DILocation(line: 619, column: 15, scope: !5971)
!6000 = !DILocation(line: 619, column: 5, scope: !5971)
!6001 = !DILocation(line: 619, column: 13, scope: !5971)
!6002 = !DILocation(line: 621, column: 5, scope: !5971)
!6003 = !DILocation(line: 621, column: 19, scope: !5971)
!6004 = !DILocation(line: 622, column: 9, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !5971, file: !80, line: 621, column: 25)
!6006 = !DILocation(line: 623, column: 13, scope: !6005)
!6007 = !DILocation(line: 624, column: 16, scope: !6005)
!6008 = distinct !{!6008, !6002, !6009, !244}
!6009 = !DILocation(line: 625, column: 5, scope: !5971)
!6010 = !DILocation(line: 626, column: 16, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !5971, file: !80, line: 626, column: 9)
!6012 = !DILocalVariable(name: "tmp", scope: !6013, file: !80, line: 627, type: !5639)
!6013 = distinct !DILexicalBlock(scope: !6011, file: !80, line: 626, column: 21)
!6014 = !DILocation(line: 627, column: 23, scope: !6013)
!6015 = !DILocation(line: 628, column: 9, scope: !6013)
!6016 = !DILocalVariable(name: "i", scope: !5971, file: !80, line: 609, type: !15)
!6017 = !DILocation(line: 629, column: 14, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !6013, file: !80, line: 629, column: 9)
!6019 = !DILocation(line: 629, scope: !6018)
!6020 = !DILocation(line: 629, column: 23, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !6018, file: !80, line: 629, column: 9)
!6022 = !DILocation(line: 629, column: 9, scope: !6018)
!6023 = !DILocation(line: 630, column: 22, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !6021, file: !80, line: 629, column: 38)
!6025 = !DILocation(line: 630, column: 13, scope: !6024)
!6026 = !DILocation(line: 630, column: 20, scope: !6024)
!6027 = !DILocation(line: 629, column: 34, scope: !6021)
!6028 = !DILocation(line: 629, column: 9, scope: !6021)
!6029 = distinct !{!6029, !6022, !6030, !244}
!6030 = !DILocation(line: 631, column: 9, scope: !6018)
!6031 = !DILocation(line: 633, column: 1, scope: !5971)
!6032 = distinct !DISubprogram(name: "br_swap32", scope: !80, file: !80, line: 112, type: !5145, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6033 = !DILocalVariable(name: "x", arg: 1, scope: !6032, file: !80, line: 112, type: !19)
!6034 = !DILocation(line: 0, scope: !6032)
!6035 = !DILocation(line: 115, column: 22, scope: !6032)
!6036 = !DILocation(line: 115, column: 5, scope: !6032)
!6037 = distinct !DISubprogram(name: "aes_ctr4x", scope: !80, file: !80, line: 576, type: !6038, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6038 = !DISubroutineType(types: !6039)
!6039 = !{null, !18, !5128, !428, !17}
!6040 = !DILocalVariable(name: "out", arg: 1, scope: !6037, file: !80, line: 576, type: !18)
!6041 = !DILocation(line: 0, scope: !6037)
!6042 = !DILocalVariable(name: "ivw", arg: 2, scope: !6037, file: !80, line: 576, type: !5128)
!6043 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !6037, file: !80, line: 576, type: !428)
!6044 = !DILocalVariable(name: "nrounds", arg: 4, scope: !6037, file: !80, line: 576, type: !17)
!6045 = !DILocation(line: 577, column: 5, scope: !6037)
!6046 = !DILocation(line: 580, column: 17, scope: !6037)
!6047 = !DILocation(line: 580, column: 5, scope: !6037)
!6048 = !DILocation(line: 581, column: 17, scope: !6037)
!6049 = !DILocation(line: 581, column: 5, scope: !6037)
!6050 = !DILocation(line: 582, column: 17, scope: !6037)
!6051 = !DILocation(line: 582, column: 5, scope: !6037)
!6052 = !DILocation(line: 583, column: 17, scope: !6037)
!6053 = !DILocation(line: 583, column: 5, scope: !6037)
!6054 = !DILocation(line: 584, column: 1, scope: !6037)
!6055 = distinct !DISubprogram(name: "inc4_be", scope: !80, file: !80, line: 539, type: !6056, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6056 = !DISubroutineType(types: !6057)
!6057 = !{null, !5128}
!6058 = !DILocalVariable(name: "x", arg: 1, scope: !6055, file: !80, line: 539, type: !5128)
!6059 = !DILocation(line: 0, scope: !6055)
!6060 = !DILocation(line: 540, column: 28, scope: !6055)
!6061 = !DILocation(line: 540, column: 18, scope: !6055)
!6062 = !DILocation(line: 540, column: 32, scope: !6055)
!6063 = !DILocalVariable(name: "t", scope: !6055, file: !80, line: 540, type: !19)
!6064 = !DILocation(line: 541, column: 10, scope: !6055)
!6065 = !DILocation(line: 541, column: 8, scope: !6055)
!6066 = !DILocation(line: 542, column: 1, scope: !6055)
!6067 = distinct !DISubprogram(name: "aes192_ecb", scope: !80, file: !80, line: 694, type: !6068, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6068 = !DISubroutineType(types: !6069)
!6069 = !{null, !18, !49, !15, !6070}
!6070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6071, size: 32)
!6071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5551)
!6072 = !DILocalVariable(name: "out", arg: 1, scope: !6067, file: !80, line: 694, type: !18)
!6073 = !DILocation(line: 0, scope: !6067)
!6074 = !DILocalVariable(name: "in", arg: 2, scope: !6067, file: !80, line: 694, type: !49)
!6075 = !DILocalVariable(name: "nblocks", arg: 3, scope: !6067, file: !80, line: 694, type: !15)
!6076 = !DILocalVariable(name: "ctx", arg: 4, scope: !6067, file: !80, line: 694, type: !6070)
!6077 = !DILocation(line: 695, column: 36, scope: !6067)
!6078 = !DILocation(line: 695, column: 5, scope: !6067)
!6079 = !DILocation(line: 696, column: 1, scope: !6067)
!6080 = distinct !DISubprogram(name: "aes192_ctr", scope: !80, file: !80, line: 698, type: !6081, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6081 = !DISubroutineType(types: !6082)
!6082 = !{null, !18, !15, !49, !6070}
!6083 = !DILocalVariable(name: "out", arg: 1, scope: !6080, file: !80, line: 698, type: !18)
!6084 = !DILocation(line: 0, scope: !6080)
!6085 = !DILocalVariable(name: "outlen", arg: 2, scope: !6080, file: !80, line: 698, type: !15)
!6086 = !DILocalVariable(name: "iv", arg: 3, scope: !6080, file: !80, line: 698, type: !49)
!6087 = !DILocalVariable(name: "ctx", arg: 4, scope: !6080, file: !80, line: 698, type: !6070)
!6088 = !DILocation(line: 699, column: 35, scope: !6080)
!6089 = !DILocation(line: 699, column: 5, scope: !6080)
!6090 = !DILocation(line: 700, column: 1, scope: !6080)
!6091 = distinct !DISubprogram(name: "aes256_ecb", scope: !80, file: !80, line: 702, type: !6092, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6092 = !DISubroutineType(types: !6093)
!6093 = !{null, !18, !49, !15, !6094}
!6094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6095, size: 32)
!6095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5584)
!6096 = !DILocalVariable(name: "out", arg: 1, scope: !6091, file: !80, line: 702, type: !18)
!6097 = !DILocation(line: 0, scope: !6091)
!6098 = !DILocalVariable(name: "in", arg: 2, scope: !6091, file: !80, line: 702, type: !49)
!6099 = !DILocalVariable(name: "nblocks", arg: 3, scope: !6091, file: !80, line: 702, type: !15)
!6100 = !DILocalVariable(name: "ctx", arg: 4, scope: !6091, file: !80, line: 702, type: !6094)
!6101 = !DILocation(line: 703, column: 36, scope: !6091)
!6102 = !DILocation(line: 703, column: 5, scope: !6091)
!6103 = !DILocation(line: 704, column: 1, scope: !6091)
!6104 = distinct !DISubprogram(name: "aes256_ctr", scope: !80, file: !80, line: 706, type: !6105, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6105 = !DISubroutineType(types: !6106)
!6106 = !{null, !18, !15, !49, !6094}
!6107 = !DILocalVariable(name: "out", arg: 1, scope: !6104, file: !80, line: 706, type: !18)
!6108 = !DILocation(line: 0, scope: !6104)
!6109 = !DILocalVariable(name: "outlen", arg: 2, scope: !6104, file: !80, line: 706, type: !15)
!6110 = !DILocalVariable(name: "iv", arg: 3, scope: !6104, file: !80, line: 706, type: !49)
!6111 = !DILocalVariable(name: "ctx", arg: 4, scope: !6104, file: !80, line: 706, type: !6094)
!6112 = !DILocation(line: 707, column: 35, scope: !6104)
!6113 = !DILocation(line: 707, column: 5, scope: !6104)
!6114 = !DILocation(line: 708, column: 1, scope: !6104)
!6115 = distinct !DISubprogram(name: "aes128_ctx_release", scope: !80, file: !80, line: 710, type: !6116, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6116 = !DISubroutineType(types: !6117)
!6117 = !{null, !4929}
!6118 = !DILocalVariable(name: "r", arg: 1, scope: !6115, file: !80, line: 710, type: !4929)
!6119 = !DILocation(line: 0, scope: !6115)
!6120 = !DILocation(line: 711, column: 13, scope: !6115)
!6121 = !DILocation(line: 711, column: 5, scope: !6115)
!6122 = !DILocation(line: 712, column: 1, scope: !6115)
!6123 = distinct !DISubprogram(name: "aes192_ctx_release", scope: !80, file: !80, line: 714, type: !6124, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6124 = !DISubroutineType(types: !6125)
!6125 = !{null, !5550}
!6126 = !DILocalVariable(name: "r", arg: 1, scope: !6123, file: !80, line: 714, type: !5550)
!6127 = !DILocation(line: 0, scope: !6123)
!6128 = !DILocation(line: 715, column: 13, scope: !6123)
!6129 = !DILocation(line: 715, column: 5, scope: !6123)
!6130 = !DILocation(line: 716, column: 1, scope: !6123)
!6131 = distinct !DISubprogram(name: "aes256_ctx_release", scope: !80, file: !80, line: 718, type: !6132, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6132 = !DISubroutineType(types: !6133)
!6133 = !{null, !5583}
!6134 = !DILocalVariable(name: "r", arg: 1, scope: !6131, file: !80, line: 718, type: !5583)
!6135 = !DILocation(line: 0, scope: !6131)
!6136 = !DILocation(line: 719, column: 13, scope: !6131)
!6137 = !DILocation(line: 719, column: 5, scope: !6131)
!6138 = !DILocation(line: 720, column: 1, scope: !6131)
!6139 = distinct !DISubprogram(name: "AES_128_CTR", scope: !80, file: !80, line: 722, type: !6140, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6140 = !DISubroutineType(types: !6141)
!6141 = !{!45, !18, !15, !49, !15}
!6142 = !DILocalVariable(name: "output", arg: 1, scope: !6139, file: !80, line: 722, type: !18)
!6143 = !DILocation(line: 0, scope: !6139)
!6144 = !DILocalVariable(name: "outputByteLen", arg: 2, scope: !6139, file: !80, line: 722, type: !15)
!6145 = !DILocalVariable(name: "input", arg: 3, scope: !6139, file: !80, line: 723, type: !49)
!6146 = !DILocalVariable(name: "inputByteLen", arg: 4, scope: !6139, file: !80, line: 723, type: !15)
!6147 = !DILocalVariable(name: "ctx", scope: !6139, file: !80, line: 724, type: !4930)
!6148 = !DILocation(line: 724, column: 15, scope: !6139)
!6149 = !DILocalVariable(name: "iv", scope: !6139, file: !80, line: 725, type: !116)
!6150 = !DILocation(line: 725, column: 19, scope: !6139)
!6151 = !DILocation(line: 727, column: 5, scope: !6139)
!6152 = !DILocation(line: 728, column: 5, scope: !6139)
!6153 = !DILocation(line: 729, column: 5, scope: !6139)
!6154 = !DILocation(line: 731, column: 5, scope: !6139)
!6155 = distinct !DISubprogram(name: "AES_256_ECB", scope: !80, file: !80, line: 734, type: !6156, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6156 = !DISubroutineType(types: !6157)
!6157 = !{null, !257, !49, !18}
!6158 = !DILocalVariable(name: "input", arg: 1, scope: !6155, file: !80, line: 734, type: !257)
!6159 = !DILocation(line: 0, scope: !6155)
!6160 = !DILocalVariable(name: "key", arg: 2, scope: !6155, file: !80, line: 734, type: !49)
!6161 = !DILocalVariable(name: "output", arg: 3, scope: !6155, file: !80, line: 734, type: !18)
!6162 = !DILocalVariable(name: "ctx", scope: !6155, file: !80, line: 735, type: !5584)
!6163 = !DILocation(line: 735, column: 15, scope: !6155)
!6164 = !DILocation(line: 737, column: 5, scope: !6155)
!6165 = !DILocation(line: 738, column: 5, scope: !6155)
!6166 = !DILocation(line: 739, column: 5, scope: !6155)
!6167 = !DILocation(line: 740, column: 1, scope: !6155)
!6168 = !DILocalVariable(name: "mem", arg: 1, scope: !86, file: !87, line: 7, type: !69)
!6169 = !DILocation(line: 0, scope: !86)
!6170 = !DILocalVariable(name: "size", arg: 2, scope: !86, file: !87, line: 7, type: !15)
!6171 = !DILocation(line: 8, column: 9, scope: !6172)
!6172 = distinct !DILexicalBlock(scope: !86, file: !87, line: 8, column: 9)
!6173 = !DILocation(line: 11, column: 9, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6172, file: !87, line: 8, column: 14)
!6175 = !DILocation(line: 12, column: 9, scope: !6174)
!6176 = !DILocation(line: 13, column: 5, scope: !6174)
!6177 = !DILocation(line: 14, column: 1, scope: !86)
!6178 = !DILocalVariable(name: "mem", arg: 1, scope: !94, file: !87, line: 15, type: !69)
!6179 = !DILocation(line: 0, scope: !94)
!6180 = !DILocalVariable(name: "size", arg: 2, scope: !94, file: !87, line: 15, type: !15)
!6181 = !DILocation(line: 18, column: 5, scope: !94)
!6182 = !DILocation(line: 19, column: 1, scope: !94)
!6183 = distinct !DISubprogram(name: "AES256_CTR_DRBG_Update", scope: !107, file: !107, line: 101, type: !6184, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6184 = !DISubroutineType(types: !6185)
!6185 = !{null, !18, !18, !18}
!6186 = !DILocalVariable(name: "provided_data", arg: 1, scope: !6183, file: !107, line: 101, type: !18)
!6187 = !DILocation(line: 0, scope: !6183)
!6188 = !DILocalVariable(name: "Key", arg: 2, scope: !6183, file: !107, line: 102, type: !18)
!6189 = !DILocalVariable(name: "V", arg: 3, scope: !6183, file: !107, line: 103, type: !18)
!6190 = !DILocalVariable(name: "temp", scope: !6183, file: !107, line: 104, type: !6191)
!6191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 384, elements: !6192)
!6192 = !{!6193}
!6193 = !DISubrange(count: 48)
!6194 = !DILocation(line: 104, column: 21, scope: !6183)
!6195 = !DILocalVariable(name: "i", scope: !6196, file: !107, line: 106, type: !45)
!6196 = distinct !DILexicalBlock(scope: !6183, file: !107, line: 106, column: 5)
!6197 = !DILocation(line: 0, scope: !6196)
!6198 = !DILocation(line: 106, column: 10, scope: !6196)
!6199 = !DILocation(line: 106, scope: !6196)
!6200 = !DILocation(line: 106, column: 23, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6196, file: !107, line: 106, column: 5)
!6202 = !DILocation(line: 106, column: 5, scope: !6196)
!6203 = !DILocation(line: 108, column: 9, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6205, file: !107, line: 108, column: 9)
!6205 = distinct !DILexicalBlock(scope: !6201, file: !107, line: 106, column: 33)
!6206 = !DILocation(line: 108, scope: !6204)
!6207 = !DILocalVariable(name: "j", scope: !6204, file: !107, line: 108, type: !45)
!6208 = !DILocation(line: 0, scope: !6204)
!6209 = !DILocation(line: 108, column: 28, scope: !6210)
!6210 = distinct !DILexicalBlock(scope: !6204, file: !107, line: 108, column: 9)
!6211 = !DILocation(line: 109, column: 18, scope: !6212)
!6212 = distinct !DILexicalBlock(scope: !6213, file: !107, line: 109, column: 18)
!6213 = distinct !DILexicalBlock(scope: !6210, file: !107, line: 108, column: 39)
!6214 = !DILocation(line: 109, column: 23, scope: !6212)
!6215 = !DILocation(line: 110, column: 17, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !6212, file: !107, line: 109, column: 33)
!6217 = !DILocation(line: 110, column: 22, scope: !6216)
!6218 = !DILocation(line: 108, column: 35, scope: !6210)
!6219 = !DILocation(line: 108, column: 9, scope: !6210)
!6220 = distinct !{!6220, !6203, !6221, !244}
!6221 = !DILocation(line: 115, column: 9, scope: !6204)
!6222 = !DILocation(line: 112, column: 17, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !6212, file: !107, line: 111, column: 20)
!6224 = !DILocation(line: 112, column: 21, scope: !6223)
!6225 = !DILocation(line: 113, column: 17, scope: !6223)
!6226 = !DILocation(line: 117, column: 38, scope: !6205)
!6227 = !DILocation(line: 117, column: 33, scope: !6205)
!6228 = !DILocation(line: 117, column: 9, scope: !6205)
!6229 = !DILocation(line: 106, column: 29, scope: !6201)
!6230 = !DILocation(line: 106, column: 5, scope: !6201)
!6231 = distinct !{!6231, !6202, !6232, !244}
!6232 = !DILocation(line: 118, column: 5, scope: !6196)
!6233 = !DILocation(line: 119, column: 24, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6183, file: !107, line: 119, column: 10)
!6235 = !DILocation(line: 120, column: 9, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6234, file: !107, line: 120, column: 9)
!6237 = !DILocation(line: 120, scope: !6236)
!6238 = !DILocalVariable(name: "i", scope: !6236, file: !107, line: 120, type: !45)
!6239 = !DILocation(line: 0, scope: !6236)
!6240 = !DILocation(line: 120, column: 27, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6236, file: !107, line: 120, column: 9)
!6242 = !DILocation(line: 121, column: 24, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6241, file: !107, line: 120, column: 38)
!6244 = !DILocation(line: 121, column: 13, scope: !6243)
!6245 = !DILocation(line: 121, column: 21, scope: !6243)
!6246 = !DILocation(line: 120, column: 34, scope: !6241)
!6247 = !DILocation(line: 120, column: 9, scope: !6241)
!6248 = distinct !{!6248, !6235, !6249, !244}
!6249 = !DILocation(line: 122, column: 9, scope: !6236)
!6250 = !DILocation(line: 123, column: 5, scope: !6183)
!6251 = !DILocation(line: 124, column: 20, scope: !6183)
!6252 = !DILocation(line: 124, column: 5, scope: !6183)
!6253 = !DILocation(line: 125, column: 1, scope: !6183)
!6254 = distinct !DISubprogram(name: "AES256_ECB", scope: !107, file: !107, line: 24, type: !6184, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6255 = !DILocalVariable(name: "key", arg: 1, scope: !6254, file: !107, line: 24, type: !18)
!6256 = !DILocation(line: 0, scope: !6254)
!6257 = !DILocalVariable(name: "ctr", arg: 2, scope: !6254, file: !107, line: 24, type: !18)
!6258 = !DILocalVariable(name: "buffer", arg: 3, scope: !6254, file: !107, line: 24, type: !18)
!6259 = !DILocation(line: 25, column: 5, scope: !6254)
!6260 = !DILocation(line: 26, column: 1, scope: !6254)
!6261 = distinct !DISubprogram(name: "randombytes", scope: !107, file: !107, line: 127, type: !6262, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6262 = !DISubroutineType(types: !6263)
!6263 = !{!45, !18, !15}
!6264 = !DILocalVariable(name: "random_array", arg: 1, scope: !6261, file: !107, line: 127, type: !18)
!6265 = !DILocation(line: 0, scope: !6261)
!6266 = !DILocalVariable(name: "nbytes", arg: 2, scope: !6261, file: !107, line: 127, type: !15)
!6267 = !DILocation(line: 128, column: 15, scope: !6261)
!6268 = !DILocalVariable(name: "ret", scope: !6261, file: !107, line: 128, type: !45)
!6269 = !DILocation(line: 132, column: 5, scope: !6261)
!6270 = distinct !DISubprogram(name: "randombytes_nist", scope: !107, file: !107, line: 69, type: !6262, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6271 = !DILocalVariable(name: "x", arg: 1, scope: !6270, file: !107, line: 69, type: !18)
!6272 = !DILocation(line: 0, scope: !6270)
!6273 = !DILocalVariable(name: "xlen", arg: 2, scope: !6270, file: !107, line: 69, type: !15)
!6274 = !DILocalVariable(name: "block", scope: !6270, file: !107, line: 70, type: !116)
!6275 = !DILocation(line: 70, column: 21, scope: !6270)
!6276 = !DILocalVariable(name: "i", scope: !6270, file: !107, line: 71, type: !15)
!6277 = !DILocation(line: 73, column: 5, scope: !6270)
!6278 = !DILocation(line: 73, column: 18, scope: !6270)
!6279 = !DILocation(line: 75, column: 9, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6281, file: !107, line: 75, column: 9)
!6281 = distinct !DILexicalBlock(scope: !6270, file: !107, line: 73, column: 24)
!6282 = !DILocation(line: 75, scope: !6280)
!6283 = !DILocalVariable(name: "j", scope: !6280, file: !107, line: 75, type: !45)
!6284 = !DILocation(line: 0, scope: !6280)
!6285 = !DILocation(line: 75, column: 28, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6280, file: !107, line: 75, column: 9)
!6287 = !DILocation(line: 76, column: 18, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6289, file: !107, line: 76, column: 18)
!6289 = distinct !DILexicalBlock(scope: !6286, file: !107, line: 75, column: 39)
!6290 = !DILocation(line: 76, column: 32, scope: !6288)
!6291 = !DILocation(line: 77, column: 17, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6288, file: !107, line: 76, column: 42)
!6293 = !DILocation(line: 77, column: 31, scope: !6292)
!6294 = !DILocation(line: 75, column: 35, scope: !6286)
!6295 = !DILocation(line: 75, column: 9, scope: !6286)
!6296 = distinct !{!6296, !6279, !6297, !244}
!6297 = !DILocation(line: 82, column: 9, scope: !6280)
!6298 = !DILocation(line: 79, column: 17, scope: !6299)
!6299 = distinct !DILexicalBlock(scope: !6288, file: !107, line: 78, column: 20)
!6300 = !DILocation(line: 79, column: 30, scope: !6299)
!6301 = !DILocation(line: 80, column: 17, scope: !6299)
!6302 = !DILocation(line: 83, column: 9, scope: !6281)
!6303 = !DILocation(line: 84, column: 19, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6281, file: !107, line: 84, column: 14)
!6305 = !DILocation(line: 85, column: 22, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6304, file: !107, line: 84, column: 26)
!6307 = !DILocation(line: 85, column: 13, scope: !6306)
!6308 = !DILocation(line: 86, column: 15, scope: !6306)
!6309 = !DILocation(line: 87, column: 18, scope: !6306)
!6310 = !DILocation(line: 88, column: 9, scope: !6306)
!6311 = !DILocation(line: 89, column: 22, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !6304, file: !107, line: 88, column: 16)
!6313 = !DILocation(line: 89, column: 13, scope: !6312)
!6314 = !DILocation(line: 90, column: 15, scope: !6312)
!6315 = !DILocation(line: 0, scope: !6304)
!6316 = distinct !{!6316, !6277, !6317, !244}
!6317 = !DILocation(line: 93, column: 5, scope: !6270)
!6318 = !DILocation(line: 94, column: 5, scope: !6270)
!6319 = !DILocation(line: 95, column: 28, scope: !6270)
!6320 = !DILocation(line: 97, column: 5, scope: !6270)
!6321 = distinct !DISubprogram(name: "randombytes_init", scope: !107, file: !107, line: 136, type: !6322, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6322 = !DISubroutineType(types: !6323)
!6323 = !{null, !18, !18, !45}
!6324 = !DILocalVariable(name: "entropy_input", arg: 1, scope: !6321, file: !107, line: 136, type: !18)
!6325 = !DILocation(line: 0, scope: !6321)
!6326 = !DILocalVariable(name: "personalization_string", arg: 2, scope: !6321, file: !107, line: 137, type: !18)
!6327 = !DILocalVariable(name: "security_strength", arg: 3, scope: !6321, file: !107, line: 138, type: !45)
!6328 = !DILocation(line: 139, column: 12, scope: !6321)
!6329 = !DILocation(line: 139, column: 5, scope: !6321)
!6330 = distinct !DISubprogram(name: "randombytes_init_nist", scope: !107, file: !107, line: 51, type: !6322, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6331 = !DILocalVariable(name: "entropy_input", arg: 1, scope: !6330, file: !107, line: 51, type: !18)
!6332 = !DILocation(line: 0, scope: !6330)
!6333 = !DILocalVariable(name: "personalization_string", arg: 2, scope: !6330, file: !107, line: 52, type: !18)
!6334 = !DILocalVariable(name: "security_strength", arg: 3, scope: !6330, file: !107, line: 53, type: !45)
!6335 = !DILocalVariable(name: "seed_material", scope: !6330, file: !107, line: 54, type: !6191)
!6336 = !DILocation(line: 54, column: 21, scope: !6330)
!6337 = !DILocation(line: 57, column: 5, scope: !6330)
!6338 = !DILocation(line: 58, column: 9, scope: !6339)
!6339 = distinct !DILexicalBlock(scope: !6330, file: !107, line: 58, column: 9)
!6340 = !DILocation(line: 59, column: 9, scope: !6341)
!6341 = distinct !DILexicalBlock(scope: !6339, file: !107, line: 59, column: 9)
!6342 = !DILocation(line: 59, scope: !6341)
!6343 = !DILocalVariable(name: "i", scope: !6341, file: !107, line: 59, type: !45)
!6344 = !DILocation(line: 0, scope: !6341)
!6345 = !DILocation(line: 59, column: 27, scope: !6346)
!6346 = distinct !DILexicalBlock(scope: !6341, file: !107, line: 59, column: 9)
!6347 = !DILocation(line: 60, column: 33, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6346, file: !107, line: 59, column: 38)
!6349 = !DILocation(line: 60, column: 13, scope: !6348)
!6350 = !DILocation(line: 60, column: 30, scope: !6348)
!6351 = !DILocation(line: 59, column: 34, scope: !6346)
!6352 = !DILocation(line: 59, column: 9, scope: !6346)
!6353 = distinct !{!6353, !6340, !6354, !244}
!6354 = !DILocation(line: 61, column: 9, scope: !6341)
!6355 = !DILocation(line: 62, column: 5, scope: !6330)
!6356 = !DILocation(line: 63, column: 5, scope: !6330)
!6357 = !DILocation(line: 64, column: 5, scope: !6330)
!6358 = !DILocation(line: 65, column: 29, scope: !6330)
!6359 = !DILocation(line: 66, column: 1, scope: !6330)
