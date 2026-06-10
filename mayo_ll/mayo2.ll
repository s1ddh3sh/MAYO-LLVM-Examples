; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

%struct.AES256_CTR_DRBG_struct = type { [32 x i8], [16 x i8], i32 }
%struct.shake128incctx = type { ptr }

@__const.example_mayo.msg = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 14, [31 x i8] zeroinitializer }>, align 1
@f_tail = internal unnamed_addr constant [4 x i8] c"\08\00\02\08", align 1, !dbg !0
@pqmayo_MAYO_2_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41
@pqmayo_MAYO_2_ref_uint64_t_blocker = dso_local global i64 0, align 8, !dbg !56
@pqmayo_MAYO_2_ref_unsigned_char_blocker = dso_local global i8 0, align 1, !dbg !60
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
  %epk = alloca [13284 x i64], align 8
  %esk = alloca [12808 x i64], align 8
  %msg = alloca [32 x i8], align 1
  %msg2 = alloca [32 x i8], align 1
    #dbg_value(ptr null, !168, !DIExpression(), !169)
    #dbg_value(i32 32, !170, !DIExpression(), !169)
  store i32 32, ptr %msglen, align 4, !dbg !171
    #dbg_value(i32 32, !170, !DIExpression(), !169)
    #dbg_value(i32 218, !172, !DIExpression(), !169)
  store i32 218, ptr %smlen, align 4, !dbg !173
  %call = call dereferenceable_or_null(4912) ptr @calloc(i32 noundef 4912, i32 noundef 1) #5, !dbg !174
    #dbg_value(ptr %call, !175, !DIExpression(), !169)
  %call1 = call dereferenceable_or_null(24) ptr @calloc(i32 noundef 24, i32 noundef 1) #5, !dbg !176
    #dbg_value(ptr %call1, !177, !DIExpression(), !169)
    #dbg_declare(ptr %epk, !178, !DIExpression(), !183)
    #dbg_declare(ptr %esk, !184, !DIExpression(), !189)
  %0 = load i32, ptr %msglen, align 4, !dbg !190
    #dbg_value(i32 %0, !170, !DIExpression(), !169)
  %add2 = add i32 %0, 186, !dbg !191
  %call3 = call ptr @calloc(i32 noundef %add2, i32 noundef 1) #5, !dbg !192
    #dbg_value(ptr %call3, !193, !DIExpression(), !169)
    #dbg_declare(ptr %msg, !194, !DIExpression(), !195)
  call void @mayo_memcpy(ptr %msg, ptr @__const.example_mayo.msg, i32 32), !dbg !195
    #dbg_declare(ptr %msg2, !196, !DIExpression(), !197)
  call void @mayo_memset(ptr %msg2, i8 0, i32 32), !dbg !197
  %call4 = call i32 @pqmayo_MAYO_2_ref_mayo_keypair(ptr noundef null, ptr noundef %call, ptr noundef %call1) #4, !dbg !198
    #dbg_value(i32 0, !199, !DIExpression(), !169)
  %call5 = call i32 @pqmayo_MAYO_2_ref_mayo_expand_sk(ptr noundef null, ptr noundef %call1, ptr noundef nonnull %esk) #4, !dbg !200
    #dbg_value(i32 0, !199, !DIExpression(), !169)
  %call11 = call i32 @pqmayo_MAYO_2_ref_mayo_expand_pk(ptr noundef null, ptr noundef %call, ptr noundef nonnull %epk) #4, !dbg !201
    #dbg_value(i32 0, !199, !DIExpression(), !169)
  %1 = load i32, ptr %msglen, align 4, !dbg !202
    #dbg_value(i32 %1, !170, !DIExpression(), !169)
    #dbg_value(ptr %smlen, !172, !DIExpression(DW_OP_deref), !169)
  %call17 = call i32 @pqmayo_MAYO_2_ref_mayo_sign(ptr noundef null, ptr noundef %call3, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #4, !dbg !203
    #dbg_value(i32 0, !199, !DIExpression(), !169)
  %2 = load i32, ptr %smlen, align 4, !dbg !204
    #dbg_value(i32 %2, !172, !DIExpression(), !169)
    #dbg_value(ptr %msglen, !170, !DIExpression(DW_OP_deref), !169)
  %call23 = call i32 @pqmayo_MAYO_2_ref_mayo_open(ptr noundef null, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call3, i32 noundef %2, ptr noundef %call) #4, !dbg !205
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
  %call32 = call i32 @pqmayo_MAYO_2_ref_mayo_verify(ptr noundef null, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call3, ptr noundef %call) #4, !dbg !212
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
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !275 {
entry:
    #dbg_value(ptr %p, !306, !DIExpression(), !307)
    #dbg_value(ptr %pk, !308, !DIExpression(), !307)
    #dbg_value(ptr %sk, !309, !DIExpression(), !307)
    #dbg_value(i32 0, !310, !DIExpression(), !307)
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #4, !dbg !311
    #dbg_value(i32 0, !310, !DIExpression(), !307)
    #dbg_label(!312, !313)
  ret i32 0, !dbg !314
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !315 {
entry:
  %S = alloca [560 x i8], align 1
  %P = alloca [12672 x i64], align 8
  %P3 = alloca [1156 x i64], align 8
  %O = alloca [1088 x i8], align 1
  %P3_upper = alloca [612 x i64], align 8
    #dbg_value(ptr %p, !316, !DIExpression(), !317)
    #dbg_value(ptr %cpk, !318, !DIExpression(), !317)
    #dbg_value(ptr %csk, !319, !DIExpression(), !317)
    #dbg_value(i32 0, !320, !DIExpression(), !317)
    #dbg_value(ptr %csk, !321, !DIExpression(), !317)
    #dbg_declare(ptr %S, !322, !DIExpression(), !326)
    #dbg_declare(ptr %P, !327, !DIExpression(), !331)
    #dbg_declare(ptr %P3, !332, !DIExpression(), !336)
  call void @mayo_memset(ptr %P3, i8 0, i32 9248), !dbg !336
    #dbg_declare(ptr %O, !337, !DIExpression(), !341)
    #dbg_value(i32 4, !342, !DIExpression(), !317)
    #dbg_value(i32 64, !344, !DIExpression(), !317)
    #dbg_value(i32 64, !345, !DIExpression(), !317)
    #dbg_value(i32 17, !346, !DIExpression(), !317)
    #dbg_value(i32 544, !347, !DIExpression(), !317)
    #dbg_value(i32 8320, !348, !DIExpression(), !317)
    #dbg_value(i32 612, !349, !DIExpression(), !317)
    #dbg_value(i32 16, !350, !DIExpression(), !317)
    #dbg_value(i32 24, !351, !DIExpression(), !317)
    #dbg_value(ptr %P, !352, !DIExpression(), !317)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 66560, !dbg !353
    #dbg_value(ptr %add.ptr, !354, !DIExpression(), !317)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 24) #4, !dbg !355
    #dbg_value(ptr %P, !352, !DIExpression(), !317)
  call void @shake256(ptr noundef nonnull %S, i32 noundef 560, ptr noundef %csk, i32 noundef 24) #4, !dbg !357
    #dbg_value(ptr %S, !358, !DIExpression(), !317)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !359
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 1088) #4, !dbg !360
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #4, !dbg !361
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #4, !dbg !362
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #6, !dbg !363
    #dbg_declare(ptr %P3_upper, !364, !DIExpression(), !368)
  call void @pqmayo_MAYO_2_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 17) #4, !dbg !369
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !370
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 153, i32 noundef 64) #4, !dbg !371
    #dbg_value(i32 0, !320, !DIExpression(), !317)
    #dbg_label(!372, !373)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 1088) #4, !dbg !374
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 34816) #4, !dbg !375
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 9248) #4, !dbg !376
  ret i32 0, !dbg !377
}

; Function Attrs: nounwind
define internal fastcc void @decode(ptr noundef %m, ptr noundef %mdec, i32 noundef range(i32 -2147483579, -2147483648) %mdeclen) unnamed_addr #0 !dbg !378 {
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
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 101376, ptr noundef %seed_pk, i32 noundef 16) #4, !dbg !421
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 3168, i32 noundef 64) #4, !dbg !422
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
    #dbg_value(i32 4, !435, !DIExpression(), !430)
    #dbg_value(i32 64, !436, !DIExpression(), !430)
    #dbg_value(i32 17, !437, !DIExpression(), !430)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #4, !dbg !438
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 4, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 64, i32 noundef 17, i32 noundef 17) #4, !dbg !439
  ret void, !dbg !440
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @pack_m_vecs(ptr noundef nonnull %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) unnamed_addr #0 !dbg !441 {
entry:
    #dbg_value(ptr %in, !444, !DIExpression(), !445)
    #dbg_value(ptr %out, !446, !DIExpression(), !445)
    #dbg_value(i32 153, !447, !DIExpression(), !445)
    #dbg_value(i32 64, !448, !DIExpression(), !445)
    #dbg_value(i32 4, !449, !DIExpression(), !445)
    #dbg_value(ptr %in, !450, !DIExpression(), !445)
    #dbg_value(i32 0, !451, !DIExpression(), !453)
  br label %for.cond, !dbg !454

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !455
    #dbg_value(i32 %i.0, !451, !DIExpression(), !453)
  %exitcond = icmp ne i32 %i.0, 153, !dbg !456
  br i1 %exitcond, label %for.body, label %for.end, !dbg !458

for.body:                                         ; preds = %for.cond
  %div1 = shl nuw nsw i32 %i.0, 5, !dbg !459
  %add.ptr = getelementptr inbounds nuw i8, ptr %out, i32 %div1, !dbg !461
  %mul2 = shl nuw nsw i32 %i.0, 5, !dbg !462
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %in, i32 %mul2, !dbg !463
  %call = call ptr @memmove(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr4, i32 noundef 32) #6, !dbg !464
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
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 4, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 64, i32 noundef 64, i32 noundef 17, i32 noundef 1) #4, !dbg !478
  ret void, !dbg !479
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !480 {
entry:
    #dbg_value(i32 4, !483, !DIExpression(), !484)
    #dbg_value(ptr %mat, !485, !DIExpression(), !484)
    #dbg_value(ptr %bs_mat, !486, !DIExpression(), !484)
    #dbg_value(ptr %acc, !487, !DIExpression(), !484)
    #dbg_value(i32 64, !488, !DIExpression(), !484)
    #dbg_value(i32 17, !489, !DIExpression(), !484)
    #dbg_value(i32 17, !490, !DIExpression(), !484)
    #dbg_value(i32 0, !491, !DIExpression(), !493)
  br label %for.cond, !dbg !494

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !495
    #dbg_value(i32 %r.0, !491, !DIExpression(), !493)
  %exitcond2 = icmp ne i32 %r.0, 17, !dbg !496
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !498

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !499

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !502
    #dbg_value(i32 %c.0, !503, !DIExpression(), !504)
  %exitcond1 = icmp ne i32 %c.0, 64, !dbg !505
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !499

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !507

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !510
    #dbg_value(i32 %k.0, !511, !DIExpression(), !512)
  %exitcond = icmp ne i32 %k.0, 17, !dbg !513
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !507

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, 17, !dbg !515
  %add = add nuw nsw i32 %mul, %k.0, !dbg !517
  %add.ptr.idx = shl nuw nsw i32 %add, 5, !dbg !518
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !518
  %mul8 = mul nuw nsw i32 %c.0, 17, !dbg !519
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !520
  %arrayidx = getelementptr i8, ptr %0, i32 %r.0, !dbg !520
  %1 = load i8, ptr %arrayidx, align 1, !dbg !520
  %mul10 = mul nuw nsw i32 %r.0, 17, !dbg !521
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !522
  %add.ptr13.idx = shl nuw nsw i32 %add11, 5, !dbg !523
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !523
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #4, !dbg !524
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
  %exitcond = icmp ne i32 %i.0, 4, !dbg !555
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
    #dbg_value(i32 4, !613, !DIExpression(), !614)
    #dbg_value(ptr %bs_mat, !615, !DIExpression(), !614)
    #dbg_value(ptr %mat, !616, !DIExpression(), !614)
    #dbg_value(ptr %acc, !617, !DIExpression(), !614)
    #dbg_value(i32 64, !618, !DIExpression(), !614)
    #dbg_value(i32 64, !619, !DIExpression(), !614)
    #dbg_value(i32 17, !620, !DIExpression(), !614)
    #dbg_value(i32 1, !621, !DIExpression(), !614)
    #dbg_value(i32 0, !622, !DIExpression(), !614)
    #dbg_value(i32 0, !623, !DIExpression(), !625)
  br label %for.cond, !dbg !626

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 64, %entry ], !dbg !627
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !627
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !628
    #dbg_value(i32 %r.0, !623, !DIExpression(), !625)
    #dbg_value(i32 %bs_mat_entries_used.0, !622, !DIExpression(), !614)
  %exitcond2 = icmp ne i32 %r.0, 64, !dbg !629
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
  %exitcond = icmp ne i32 %k.0, 17, !dbg !646
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !640

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !648
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !648
  %mul8 = mul nuw nsw i32 %c.0, 17, !dbg !650
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !651
  %arrayidx = getelementptr i8, ptr %1, i32 %k.0, !dbg !651
  %2 = load i8, ptr %arrayidx, align 1, !dbg !651
  %mul9 = mul nuw nsw i32 %r.0, 17, !dbg !652
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !653
  %add.ptr12.idx = shl nuw nsw i32 %add10, 5, !dbg !654
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !654
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #4, !dbg !655
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
define internal fastcc void @unpack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef range(i32 153, 3169) %vecs, i32 noundef %m) unnamed_addr #0 !dbg !670 {
entry:
  %tmp = alloca [4 x i64], align 8
    #dbg_value(ptr %in, !673, !DIExpression(), !674)
    #dbg_value(ptr %out, !675, !DIExpression(), !674)
    #dbg_value(i32 %vecs, !676, !DIExpression(), !674)
    #dbg_value(i32 64, !677, !DIExpression(), !674)
    #dbg_value(i32 4, !678, !DIExpression(), !674)
    #dbg_value(ptr %out, !679, !DIExpression(), !674)
    #dbg_declare(ptr %tmp, !680, !DIExpression(), !682)
  call void @mayo_memset(ptr %tmp, i8 0, i32 32), !dbg !682
    #dbg_value(i32 %vecs, !683, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !685)
  br label %for.cond, !dbg !686

for.cond:                                         ; preds = %for.body, %entry
  %i.0.in = phi i32 [ %vecs, %entry ], [ %i.0, %for.body ]
    #dbg_value(i32 %i.0.in, !683, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !685)
  %cmp = icmp sgt i32 %i.0.in, 0, !dbg !687
  br i1 %cmp, label %for.body, label %for.end, !dbg !689

for.body:                                         ; preds = %for.cond
  %i.0 = add nsw i32 %i.0.in, -1, !dbg !690
    #dbg_value(i32 %i.0, !683, !DIExpression(), !685)
  %div1 = shl nsw i32 %i.0, 5, !dbg !691
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %div1, !dbg !693
  %call = call ptr @memcpy(ptr noundef nonnull %tmp, ptr noundef %add.ptr, i32 noundef 32) #6, !dbg !694
  %mul3 = shl i32 %i.0, 5, !dbg !695
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %out, i32 %mul3, !dbg !696
  %call8 = call ptr @memcpy(ptr noundef %add.ptr5, ptr noundef nonnull %tmp, i32 noundef 32) #6, !dbg !697
    #dbg_value(i32 %i.0, !683, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !685)
  br label %for.cond, !dbg !698, !llvm.loop !699

for.end:                                          ; preds = %for.cond
  ret void, !dbg !701
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !702 {
entry:
  %S = alloca [560 x i8], align 1
    #dbg_value(ptr %p, !705, !DIExpression(), !706)
    #dbg_value(ptr %csk, !707, !DIExpression(), !706)
    #dbg_value(ptr %sk, !708, !DIExpression(), !706)
    #dbg_value(i32 0, !709, !DIExpression(), !706)
    #dbg_declare(ptr %S, !710, !DIExpression(), !711)
    #dbg_value(ptr %sk, !712, !DIExpression(), !706)
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sk, i32 101376, !dbg !713
    #dbg_value(ptr %add.ptr1, !714, !DIExpression(), !706)
    #dbg_value(i32 17, !715, !DIExpression(), !706)
    #dbg_value(i32 64, !716, !DIExpression(), !706)
    #dbg_value(i32 544, !717, !DIExpression(), !706)
    #dbg_value(i32 16, !718, !DIExpression(), !706)
    #dbg_value(i32 24, !719, !DIExpression(), !706)
    #dbg_value(ptr %csk, !720, !DIExpression(), !706)
    #dbg_value(ptr %S, !721, !DIExpression(), !706)
  call void @shake256(ptr noundef nonnull %S, i32 noundef 560, ptr noundef %csk, i32 noundef 24) #4, !dbg !722
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !723
  call fastcc void @decode(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr1, i32 noundef 1088) #4, !dbg !724
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #4, !dbg !725
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %sk, i32 66560, !dbg !726
    #dbg_value(ptr %add.ptr5, !727, !DIExpression(), !706)
    #dbg_value(ptr %sk, !728, !DIExpression(), !706)
    #dbg_value(ptr %add.ptr5, !729, !DIExpression(), !706)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %add.ptr1, ptr noundef nonnull %add.ptr5) #4, !dbg !730
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 560) #4, !dbg !731
  ret i32 0, !dbg !732
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !733 {
entry:
    #dbg_value(ptr %p, !734, !DIExpression(), !735)
    #dbg_value(ptr %P1, !736, !DIExpression(), !735)
    #dbg_value(ptr %O, !737, !DIExpression(), !735)
    #dbg_value(ptr %acc, !738, !DIExpression(), !735)
    #dbg_value(i32 17, !739, !DIExpression(), !735)
    #dbg_value(i32 64, !740, !DIExpression(), !735)
    #dbg_value(i32 4, !741, !DIExpression(), !735)
    #dbg_value(i32 0, !742, !DIExpression(), !735)
    #dbg_value(i32 0, !743, !DIExpression(), !745)
  br label %for.cond, !dbg !746

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 64, %entry ], !dbg !747
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc27 ], !dbg !747
  %r.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !dbg !748
    #dbg_value(i32 %r.0, !743, !DIExpression(), !745)
    #dbg_value(i32 %bs_mat_entries_used.0, !742, !DIExpression(), !735)
  %exitcond2 = icmp ne i32 %r.0, 64, !dbg !749
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end29, !dbg !751

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !752
  br label %for.cond1, !dbg !752

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc25
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.2, %for.inc25 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !735
  %c.0 = phi i32 [ %inc, %for.inc25 ], [ %r.0, %for.cond1.preheader ], !dbg !755
    #dbg_value(i32 %c.0, !756, !DIExpression(), !757)
    #dbg_value(i32 %bs_mat_entries_used.1, !742, !DIExpression(), !735)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !758
  br i1 %exitcond1, label %for.body3, label %for.inc27, !dbg !752

for.body3:                                        ; preds = %for.cond1
  %cmp4 = icmp eq i32 %c.0, %r.0, !dbg !760
  br i1 %cmp4, label %for.inc25, label %for.cond5.preheader, !dbg !760

for.cond5.preheader:                              ; preds = %for.body3
  br label %for.cond5, !dbg !763

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %k.0 = phi i32 [ %add23, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !765
    #dbg_value(i32 %k.0, !766, !DIExpression(), !767)
  %exitcond = icmp ne i32 %k.0, 17, !dbg !768
  br i1 %exitcond, label %for.body7, label %for.inc25.loopexit, !dbg !763

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !770
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !770
  %mul8 = mul nuw nsw i32 %c.0, 17, !dbg !772
  %1 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8, !dbg !773
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i32 %k.0, !dbg !773
  %2 = load i8, ptr %arrayidx, align 1, !dbg !773
  %mul10 = mul nuw nsw i32 %r.0, 17, !dbg !774
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !775
  %add.ptr13.idx = shl nuw nsw i32 %add11, 5, !dbg !776
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !776
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr, i8 noundef zeroext %2, ptr noundef %add.ptr13) #4, !dbg !777
  %add.ptr15.idx = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !778
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !778
  %mul16 = mul nuw nsw i32 %r.0, 17, !dbg !779
  %3 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16, !dbg !780
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %3, i32 %k.0, !dbg !780
  %4 = load i8, ptr %arrayidx18, align 1, !dbg !780
  %mul19 = mul nuw nsw i32 %c.0, 17, !dbg !781
  %add20 = add nuw nsw i32 %mul19, %k.0, !dbg !782
  %add.ptr22.idx = shl nuw nsw i32 %add20, 5, !dbg !783
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !783
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr15, i8 noundef zeroext %4, ptr noundef %add.ptr22) #4, !dbg !784
  %add23 = add nuw nsw i32 %k.0, 1, !dbg !785
    #dbg_value(i32 %add23, !766, !DIExpression(), !767)
  br label %for.cond5, !dbg !786, !llvm.loop !787

for.inc25.loopexit:                               ; preds = %for.cond5
  br label %for.inc25, !dbg !789

for.inc25:                                        ; preds = %for.inc25.loopexit, %for.body3
  %bs_mat_entries_used.2 = add i32 %bs_mat_entries_used.1, 1, !dbg !789
    #dbg_value(i32 %bs_mat_entries_used.2, !742, !DIExpression(), !735)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !790
    #dbg_value(i32 %inc, !756, !DIExpression(), !757)
  br label %for.cond1, !dbg !791, !llvm.loop !792

for.inc27:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !735
  %inc28 = add nuw nsw i32 %r.0, 1, !dbg !794
    #dbg_value(i32 %inc28, !743, !DIExpression(), !745)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !795
  br label %for.cond, !dbg !795, !llvm.loop !796

for.end29:                                        ; preds = %for.cond
  ret void, !dbg !798
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !799 {
entry:
  %tenc = alloca [32 x i8], align 1
  %t = alloca [64 x i8], align 1
  %y = alloca [64 x i8], align 1
  %salt = alloca [24 x i8], align 1
  %V = alloca [162 x i8], align 1
  %Vdec = alloca [256 x i8], align 1
  %A = alloca [4416 x i8], align 1
  %x = alloca [324 x i8], align 1
  %r = alloca [69 x i8], align 1
  %s = alloca [324 x i8], align 1
  %sk = alloca [12808 x i64], align 32
  %Ox = alloca [64 x i8], align 1
  %tmp = alloca [81 x i8], align 1
  %Mtmp = alloca [272 x i64], align 8
    #dbg_value(ptr %p, !803, !DIExpression(), !804)
    #dbg_value(ptr %sig, !805, !DIExpression(), !804)
    #dbg_value(ptr %siglen, !806, !DIExpression(), !804)
    #dbg_value(ptr %m, !807, !DIExpression(), !804)
    #dbg_value(i32 %mlen, !808, !DIExpression(), !804)
    #dbg_value(ptr %csk, !809, !DIExpression(), !804)
    #dbg_value(i32 0, !810, !DIExpression(), !804)
    #dbg_declare(ptr %tenc, !811, !DIExpression(), !812)
    #dbg_declare(ptr %t, !813, !DIExpression(), !817)
    #dbg_declare(ptr %y, !818, !DIExpression(), !819)
    #dbg_declare(ptr %salt, !820, !DIExpression(), !822)
    #dbg_declare(ptr %V, !823, !DIExpression(), !827)
    #dbg_declare(ptr %Vdec, !828, !DIExpression(), !832)
    #dbg_declare(ptr %A, !833, !DIExpression(), !837)
  call void @mayo_memset(ptr %A, i8 0, i32 4416), !dbg !837
    #dbg_declare(ptr %x, !838, !DIExpression(), !842)
    #dbg_declare(ptr %r, !843, !DIExpression(), !847)
  call void @mayo_memset(ptr %r, i8 0, i32 69), !dbg !847
    #dbg_declare(ptr %s, !848, !DIExpression(), !849)
    #dbg_declare(ptr %sk, !850, !DIExpression(), !851)
    #dbg_declare(ptr %Ox, !852, !DIExpression(), !853)
    #dbg_declare(ptr %tmp, !854, !DIExpression(), !858)
    #dbg_value(i32 64, !859, !DIExpression(), !804)
    #dbg_value(i32 81, !860, !DIExpression(), !804)
    #dbg_value(i32 17, !861, !DIExpression(), !804)
    #dbg_value(i32 4, !862, !DIExpression(), !804)
    #dbg_value(i32 64, !863, !DIExpression(), !804)
    #dbg_value(i32 32, !864, !DIExpression(), !804)
    #dbg_value(i32 32, !865, !DIExpression(), !804)
    #dbg_value(i32 34, !866, !DIExpression(), !804)
    #dbg_value(i32 186, !867, !DIExpression(), !804)
    #dbg_value(i32 69, !868, !DIExpression(), !804)
    #dbg_value(i32 32, !869, !DIExpression(), !804)
    #dbg_value(i32 24, !870, !DIExpression(), !804)
    #dbg_value(i32 24, !871, !DIExpression(), !804)
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #4, !dbg !872
    #dbg_value(i32 0, !810, !DIExpression(), !804)
    #dbg_value(ptr %csk, !873, !DIExpression(), !804)
  call void @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #4, !dbg !874
    #dbg_value(ptr %sk, !875, !DIExpression(), !804)
    #dbg_value(ptr %add.ptr, !876, !DIExpression(), !804)
    #dbg_declare(ptr %Mtmp, !877, !DIExpression(), !881)
  call void @mayo_memset(ptr %Mtmp, i8 0, i32 2176), !dbg !881
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !882
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 24) #4, !dbg !884
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 56, !dbg !885
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 24) #6, !dbg !886
  call void @shake256(ptr noundef nonnull %salt, i32 noundef 24, ptr noundef nonnull %tmp, i32 noundef 80) #4, !dbg !887
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !888
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 24) #6, !dbg !889
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 80, !dbg !890
    #dbg_value(ptr %add.ptr24, !891, !DIExpression(), !804)
  call void @shake256(ptr noundef nonnull %tenc, i32 noundef 32, ptr noundef nonnull %tmp, i32 noundef 56) #4, !dbg !892
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 64) #4, !dbg !893
  store i8 0, ptr %add.ptr24, align 1, !dbg !894
  call void @shake256(ptr noundef nonnull %V, i32 noundef 162, ptr noundef nonnull %tmp, i32 noundef 81) #4, !dbg !895
    #dbg_value(i32 0, !896, !DIExpression(), !898)
  br label %for.cond, !dbg !899

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !900
    #dbg_value(i32 %i.0, !896, !DIExpression(), !898)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !901
  br i1 %exitcond, label %for.body, label %for.end, !dbg !903

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 5, !dbg !904
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !906
  %mul37 = shl nuw nsw i32 %i.0, 6, !dbg !907
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul37, !dbg !908
  call fastcc void @decode(ptr noundef nonnull %add.ptr35, ptr noundef nonnull %add.ptr38, i32 noundef 64) #4, !dbg !909
  %inc = add nuw nsw i32 %i.0, 1, !dbg !910
    #dbg_value(i32 %inc, !896, !DIExpression(), !898)
  br label %for.cond, !dbg !911, !llvm.loop !912

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 66560, !dbg !914
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #4, !dbg !915
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #4, !dbg !916
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #4, !dbg !917
    #dbg_value(i32 0, !918, !DIExpression(), !920)
  br label %for.cond48, !dbg !921

for.cond48:                                       ; preds = %for.body50, %for.end
  %i47.0 = phi i32 [ 0, %for.end ], [ %inc53, %for.body50 ], !dbg !922
    #dbg_value(i32 %i47.0, !918, !DIExpression(), !920)
  %exitcond1 = icmp ne i32 %i47.0, 64, !dbg !923
  br i1 %exitcond1, label %for.body50, label %for.end54, !dbg !925

for.body50:                                       ; preds = %for.cond48
  %0 = mul nuw nsw i32 %i47.0, 69, !dbg !926
  %sub = add nuw nsw i32 %0, 68, !dbg !928
  %arrayidx = getelementptr inbounds nuw [4416 x i8], ptr %A, i32 0, i32 %sub, !dbg !929
  store i8 0, ptr %arrayidx, align 1, !dbg !930
  %inc53 = add nuw nsw i32 %i47.0, 1, !dbg !931
    #dbg_value(i32 %inc53, !918, !DIExpression(), !920)
  br label %for.cond48, !dbg !932, !llvm.loop !933

for.end54:                                        ; preds = %for.cond48
  %add.ptr56 = getelementptr inbounds nuw i8, ptr %V, i32 128, !dbg !935
  call fastcc void @decode(ptr noundef nonnull %add.ptr56, ptr noundef nonnull %r, i32 noundef 68) #4, !dbg !936
  %call62 = call i32 @pqmayo_MAYO_2_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 4, i32 noundef 17, i32 noundef 64, i32 noundef 69) #4, !dbg !937
  %tobool.not = icmp eq i32 %call62, 0, !dbg !937
  br i1 %tobool.not, label %if.else, label %if.end68, !dbg !937

if.else:                                          ; preds = %for.end54
  %call65 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 2176) #6, !dbg !939
  %call67 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 4416) #6, !dbg !941
  br label %if.end68

if.end68:                                         ; preds = %for.end54, %if.else
    #dbg_value(i32 0, !942, !DIExpression(), !944)
  br label %for.cond70, !dbg !945

for.cond70:                                       ; preds = %for.body72, %if.end68
  %i69.0 = phi i32 [ 0, %if.end68 ], [ %inc96, %for.body72 ], !dbg !946
    #dbg_value(i32 %i69.0, !942, !DIExpression(), !944)
  %exitcond2 = icmp ne i32 %i69.0, 4, !dbg !947
  br i1 %exitcond2, label %for.body72, label %for.end97, !dbg !949

for.body72:                                       ; preds = %for.cond70
  %mul74 = shl nuw nsw i32 %i69.0, 6, !dbg !950
  %add.ptr75 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul74, !dbg !952
    #dbg_value(ptr %add.ptr75, !953, !DIExpression(), !804)
  %add.ptr78 = getelementptr inbounds nuw i8, ptr %sk, i32 101376, !dbg !954
  %mul80 = mul nuw nsw i32 %i69.0, 17, !dbg !955
  %add.ptr81 = getelementptr inbounds nuw i8, ptr %x, i32 %mul80, !dbg !956
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr78, ptr noundef nonnull %add.ptr81, ptr noundef nonnull %Ox, i32 noundef 17, i32 noundef 64, i32 noundef 1) #4, !dbg !957
  %mul85 = mul nuw nsw i32 %i69.0, 81, !dbg !958
  %add.ptr86 = getelementptr inbounds nuw i8, ptr %s, i32 %mul85, !dbg !959
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr75, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr86, i32 noundef 64, i32 noundef 1) #4, !dbg !960
  %mul88 = mul nuw nsw i32 %i69.0, 81, !dbg !961
  %add.ptr89 = getelementptr inbounds nuw i8, ptr %s, i32 %mul88, !dbg !962
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %add.ptr89, i32 64, !dbg !963
  %mul92 = mul nuw nsw i32 %i69.0, 17, !dbg !964
  %add.ptr93 = getelementptr inbounds nuw i8, ptr %x, i32 %mul92, !dbg !965
  %call94 = call ptr @memcpy(ptr noundef nonnull %add.ptr90, ptr noundef nonnull %add.ptr93, i32 noundef 17) #6, !dbg !966
  %inc96 = add nuw nsw i32 %i69.0, 1, !dbg !967
    #dbg_value(i32 %inc96, !942, !DIExpression(), !944)
  br label %for.cond70, !dbg !968, !llvm.loop !969

for.end97:                                        ; preds = %for.cond70
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 324) #4, !dbg !971
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %sig, i32 162, !dbg !972
  %call102 = call ptr @memcpy(ptr noundef nonnull %add.ptr100, ptr noundef nonnull %salt, i32 noundef 24) #6, !dbg !973
  store i32 186, ptr %siglen, align 4, !dbg !974
    #dbg_value(i32 0, !810, !DIExpression(), !804)
    #dbg_label(!975, !976)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 162) #4, !dbg !977
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 256) #4, !dbg !978
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 4416) #4, !dbg !979
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 69) #4, !dbg !980
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sk, i32 101376, !dbg !981
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr109, i32 noundef 1088) #4, !dbg !982
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 102464) #4, !dbg !983
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 64) #4, !dbg !984
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 81) #4, !dbg !985
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 2176) #4, !dbg !986
  ret i32 0, !dbg !987
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %L, ptr noundef nonnull %P1, ptr noundef nonnull %VL, ptr noundef nonnull %VP1V) unnamed_addr #0 !dbg !988 {
entry:
  %Pv = alloca [1024 x i64], align 8
    #dbg_value(ptr %p, !991, !DIExpression(), !992)
    #dbg_value(ptr %Vdec, !993, !DIExpression(), !992)
    #dbg_value(ptr %L, !994, !DIExpression(), !992)
    #dbg_value(ptr %P1, !995, !DIExpression(), !992)
    #dbg_value(ptr %VL, !996, !DIExpression(), !992)
    #dbg_value(ptr %VP1V, !997, !DIExpression(), !992)
    #dbg_value(i32 4, !998, !DIExpression(), !992)
    #dbg_value(i32 64, !999, !DIExpression(), !992)
    #dbg_value(i32 17, !1000, !DIExpression(), !992)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 4, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 4, i32 noundef 64, i32 noundef 17) #4, !dbg !1001
    #dbg_declare(ptr %Pv, !1002, !DIExpression(), !1006)
  call void @mayo_memset(ptr %Pv, i8 0, i32 8192), !dbg !1006
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #4, !dbg !1007
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 4, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 4, i32 noundef 64, i32 noundef 4) #4, !dbg !1008
  ret void, !dbg !1009
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %vPv, ptr noundef nonnull %t, ptr noundef nonnull %y) unnamed_addr #0 !dbg !1010 {
entry:
  %temp = alloca [4 x i64], align 8
    #dbg_value(ptr %p, !1013, !DIExpression(), !1014)
    #dbg_value(ptr %vPv, !1015, !DIExpression(), !1014)
    #dbg_value(ptr %t, !1016, !DIExpression(), !1014)
    #dbg_value(ptr %y, !1017, !DIExpression(), !1014)
    #dbg_value(i32 60, !1018, !DIExpression(), !1014)
    #dbg_value(i32 4, !1020, !DIExpression(), !1014)
    #dbg_declare(ptr %temp, !1021, !DIExpression(), !1022)
  call void @mayo_memset(ptr %temp, i8 0, i32 32), !dbg !1022
    #dbg_value(ptr %temp, !1023, !DIExpression(), !1014)
    #dbg_value(i32 3, !1024, !DIExpression(), !1026)
  br label %for.cond, !dbg !1027

for.cond:                                         ; preds = %for.inc65, %entry
  %i.0 = phi i32 [ 3, %entry ], [ %dec66, %for.inc65 ], !dbg !1028
    #dbg_value(i32 %i.0, !1024, !DIExpression(), !1026)
  %cmp = icmp sgt i32 %i.0, -1, !dbg !1029
  br i1 %cmp, label %for.cond1.preheader, label %for.cond69.preheader, !dbg !1031

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1032

for.cond69.preheader:                             ; preds = %for.cond
  br label %for.cond69, !dbg !1035

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc62
  %j.0 = phi i32 [ %inc63, %for.inc62 ], [ %i.0, %for.cond1.preheader ], !dbg !1037
    #dbg_value(i32 %j.0, !1038, !DIExpression(), !1039)
  %exitcond6 = icmp ne i32 %j.0, 4, !dbg !1040
  br i1 %exitcond6, label %for.body3, label %for.inc65, !dbg !1032

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !1042
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1042
  %shr = lshr i64 %0, 60, !dbg !1044
    #dbg_value(i8 %conv, !1045, !DIExpression(), !1046)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !1047
  %shl = shl i64 %0, 4, !dbg !1048
  store i64 %shl, ptr %arrayidx4, align 8, !dbg !1048
    #dbg_value(i32 2, !1049, !DIExpression(), !1051)
  br label %for.cond5, !dbg !1052

for.cond5:                                        ; preds = %for.body8, %for.body3
  %k.0 = phi i32 [ 2, %for.body3 ], [ %dec, %for.body8 ], !dbg !1053
    #dbg_value(i32 %k.0, !1049, !DIExpression(), !1051)
  %cmp6 = icmp sgt i32 %k.0, -1, !dbg !1054
  br i1 %cmp6, label %for.body8, label %for.cond14.preheader, !dbg !1056

for.cond14.preheader:                             ; preds = %for.cond5
  %conv = trunc nuw nsw i64 %shr to i8, !dbg !1057
  br label %for.cond14, !dbg !1058

for.body8:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1060
  %1 = load i64, ptr %arrayidx9, align 8, !dbg !1060
  %shr10 = lshr i64 %1, 60, !dbg !1062
  %add = add nuw nsw i32 %k.0, 1, !dbg !1063
  %arrayidx11 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %add, !dbg !1064
  %2 = load i64, ptr %arrayidx11, align 8, !dbg !1065
  %xor = xor i64 %2, %shr10, !dbg !1065
  store i64 %xor, ptr %arrayidx11, align 8, !dbg !1065
  %arrayidx12 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1066
  %3 = load i64, ptr %arrayidx12, align 8, !dbg !1067
  %shl13 = shl i64 %3, 4, !dbg !1067
  store i64 %shl13, ptr %arrayidx12, align 8, !dbg !1067
  %dec = add nsw i32 %k.0, -1, !dbg !1068
    #dbg_value(i32 %dec, !1049, !DIExpression(), !1051)
  br label %for.cond5, !dbg !1069, !llvm.loop !1070

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc36
  %jj.0 = phi i32 [ %inc, %for.inc36 ], [ 0, %for.cond14.preheader ], !dbg !1072
    #dbg_value(i32 %jj.0, !1073, !DIExpression(), !1074)
  %exitcond = icmp ne i32 %jj.0, 4, !dbg !1075
  br i1 %exitcond, label %for.body17, label %for.cond39.preheader, !dbg !1058

for.cond39.preheader:                             ; preds = %for.cond14
  br label %for.cond39, !dbg !1077

for.body17:                                       ; preds = %for.cond14
  %rem18 = and i32 %jj.0, 1, !dbg !1079
  %cmp19 = icmp eq i32 %rem18, 0, !dbg !1082
  br i1 %cmp19, label %if.then, label %if.else, !dbg !1082

if.then:                                          ; preds = %for.body17
  %arrayidx21 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1083
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !1083
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext %4) #4, !dbg !1085
  %div = lshr exact i32 %jj.0, 1, !dbg !1086
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %temp, i32 %div, !dbg !1087
  %5 = load i8, ptr %arrayidx23, align 1, !dbg !1088
  %xor254 = xor i8 %5, %call, !dbg !1088
  store i8 %xor254, ptr %arrayidx23, align 1, !dbg !1088
  br label %for.inc36, !dbg !1089

if.else:                                          ; preds = %for.body17
  %arrayidx27 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1090
  %6 = load i8, ptr %arrayidx27, align 1, !dbg !1090
  %call28 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext %6) #4, !dbg !1092
  %shl30 = shl nuw i8 %call28, 4, !dbg !1093
  %div313 = lshr i32 %jj.0, 1, !dbg !1094
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %temp, i32 %div313, !dbg !1095
  %7 = load i8, ptr %arrayidx32, align 1, !dbg !1096
  %xor34 = xor i8 %shl30, %7, !dbg !1096
  store i8 %xor34, ptr %arrayidx32, align 1, !dbg !1096
  br label %for.inc36

for.inc36:                                        ; preds = %if.then, %if.else
  %inc = add nuw nsw i32 %jj.0, 1, !dbg !1097
    #dbg_value(i32 %inc, !1073, !DIExpression(), !1074)
  br label %for.cond14, !dbg !1098, !llvm.loop !1099

for.cond39:                                       ; preds = %for.cond39.preheader, %for.body42
  %k38.0 = phi i32 [ %inc60, %for.body42 ], [ 0, %for.cond39.preheader ], !dbg !1101
    #dbg_value(i32 %k38.0, !1102, !DIExpression(), !1103)
  %exitcond5 = icmp ne i32 %k38.0, 4, !dbg !1104
  br i1 %exitcond5, label %for.body42, label %for.inc62, !dbg !1077

for.body42:                                       ; preds = %for.cond39
  %8 = shl i32 %i.0, 4, !dbg !1106
  %9 = shl i32 %j.0, 2, !dbg !1106
  %mul44 = add nsw i32 %8, %9, !dbg !1106
  %add45 = or disjoint i32 %mul44, %k38.0, !dbg !1108
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %vPv, i32 %add45, !dbg !1109
  %10 = load i64, ptr %arrayidx46, align 8, !dbg !1109
  %cmp47.not = icmp eq i32 %i.0, %j.0, !dbg !1110
  %11 = shl i32 %j.0, 4, !dbg !1111
  %12 = shl i32 %i.0, 2, !dbg !1111
  %mul52 = add nsw i32 %11, %12, !dbg !1111
  %add53 = or disjoint i32 %mul52, %k38.0, !dbg !1112
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %vPv, i32 %add53, !dbg !1113
  %13 = load i64, ptr %arrayidx54, align 8, !dbg !1113
  %mul55 = select i1 %cmp47.not, i64 0, i64 %13, !dbg !1114
  %xor56 = xor i64 %10, %mul55, !dbg !1115
  %arrayidx57 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %k38.0, !dbg !1116
  %14 = load i64, ptr %arrayidx57, align 8, !dbg !1117
  %xor58 = xor i64 %14, %xor56, !dbg !1117
  store i64 %xor58, ptr %arrayidx57, align 8, !dbg !1117
  %inc60 = add nuw nsw i32 %k38.0, 1, !dbg !1118
    #dbg_value(i32 %inc60, !1102, !DIExpression(), !1103)
  br label %for.cond39, !dbg !1119, !llvm.loop !1120

for.inc62:                                        ; preds = %for.cond39
  %inc63 = add nuw nsw i32 %j.0, 1, !dbg !1122
    #dbg_value(i32 %inc63, !1038, !DIExpression(), !1039)
  br label %for.cond1, !dbg !1123, !llvm.loop !1124

for.inc65:                                        ; preds = %for.cond1
  %dec66 = add nsw i32 %i.0, -1, !dbg !1126
    #dbg_value(i32 %dec66, !1024, !DIExpression(), !1026)
  br label %for.cond, !dbg !1127, !llvm.loop !1128

for.cond69:                                       ; preds = %for.cond69.preheader, %for.body72
  %i68.0 = phi i32 [ %add93, %for.body72 ], [ 0, %for.cond69.preheader ], !dbg !1130
    #dbg_value(i32 %i68.0, !1131, !DIExpression(), !1132)
  %cmp70 = icmp samesign ult i32 %i68.0, 64, !dbg !1133
  br i1 %cmp70, label %for.body72, label %for.end94, !dbg !1035

for.body72:                                       ; preds = %for.cond69
  %arrayidx73 = getelementptr inbounds nuw i8, ptr %t, i32 %i68.0, !dbg !1135
  %15 = load i8, ptr %arrayidx73, align 1, !dbg !1135
  %div75 = lshr exact i32 %i68.0, 1, !dbg !1137
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %temp, i32 %div75, !dbg !1138
  %16 = load i8, ptr %arrayidx76, align 1, !dbg !1138
  %17 = and i8 %16, 15, !dbg !1139
  %xor781 = xor i8 %15, %17, !dbg !1140
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %y, i32 %i68.0, !dbg !1141
  store i8 %xor781, ptr %arrayidx80, align 1, !dbg !1142
  %add81 = or disjoint i32 %i68.0, 1, !dbg !1143
  %arrayidx82 = getelementptr inbounds nuw i8, ptr %t, i32 %add81, !dbg !1144
  %18 = load i8, ptr %arrayidx82, align 1, !dbg !1144
  %div84 = lshr exact i32 %i68.0, 1, !dbg !1145
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %temp, i32 %div84, !dbg !1146
  %19 = load i8, ptr %arrayidx85, align 1, !dbg !1146
  %20 = lshr i8 %19, 4, !dbg !1147
  %xor882 = xor i8 %18, %20, !dbg !1148
  %add90 = or disjoint i32 %i68.0, 1, !dbg !1149
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %y, i32 %add90, !dbg !1150
  store i8 %xor882, ptr %arrayidx91, align 1, !dbg !1151
  %add93 = add nuw nsw i32 %i68.0, 2, !dbg !1152
    #dbg_value(i32 %add93, !1131, !DIExpression(), !1132)
  br label %for.cond69, !dbg !1153, !llvm.loop !1154

for.end94:                                        ; preds = %for.cond69
  ret void, !dbg !1156
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %VtL, ptr noundef nonnull %A_out) unnamed_addr #0 !dbg !1157 {
entry:
  %A = alloca [640 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1160, !DIExpression(), !1161)
    #dbg_value(ptr %VtL, !1162, !DIExpression(), !1161)
    #dbg_value(ptr %A_out, !1163, !DIExpression(), !1161)
    #dbg_value(i32 0, !1164, !DIExpression(), !1161)
    #dbg_value(i32 0, !1165, !DIExpression(), !1161)
    #dbg_value(i32 4, !1166, !DIExpression(), !1161)
    #dbg_declare(ptr %A, !1167, !DIExpression(), !1171)
  call void @mayo_memset(ptr %A, i8 0, i32 5120), !dbg !1171
    #dbg_value(i32 80, !1172, !DIExpression(), !1161)
    #dbg_value(i32 0, !1173, !DIExpression(), !1175)
  br label %for.cond, !dbg !1176

for.cond:                                         ; preds = %for.inc90, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc91, %for.inc90 ], !dbg !1177
  %words_to_shift.0 = phi i32 [ 0, %entry ], [ %words_to_shift.1.lcssa, %for.inc90 ], !dbg !1178
  %bits_to_shift.0 = phi i32 [ 0, %entry ], [ %bits_to_shift.1.lcssa, %for.inc90 ], !dbg !1179
    #dbg_value(i32 %bits_to_shift.0, !1164, !DIExpression(), !1161)
    #dbg_value(i32 %words_to_shift.0, !1165, !DIExpression(), !1161)
    #dbg_value(i32 %i.0, !1173, !DIExpression(), !1175)
  %exitcond7 = icmp ne i32 %i.0, 4, !dbg !1180
  br i1 %exitcond7, label %for.cond1.preheader, label %for.cond94.preheader, !dbg !1182

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1183

for.cond94.preheader:                             ; preds = %for.cond
  br label %for.cond94, !dbg !1186

for.cond1:                                        ; preds = %for.cond1.preheader, %if.end82
  %j.0 = phi i32 [ %dec, %if.end82 ], [ 3, %for.cond1.preheader ], !dbg !1188
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end82 ], [ %words_to_shift.0, %for.cond1.preheader ], !dbg !1161
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end82 ], [ %bits_to_shift.0, %for.cond1.preheader ], !dbg !1161
    #dbg_value(i32 %bits_to_shift.1, !1164, !DIExpression(), !1161)
    #dbg_value(i32 %words_to_shift.1, !1165, !DIExpression(), !1161)
    #dbg_value(i32 %j.0, !1189, !DIExpression(), !1190)
  %cmp2.not = icmp slt i32 %j.0, %i.0, !dbg !1191
  br i1 %cmp2.not, label %for.inc90, label %for.body3, !dbg !1183

for.body3:                                        ; preds = %for.cond1
  %add.ptr.idx = mul nsw i32 %j.0, 544, !dbg !1193
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1193
    #dbg_value(ptr %add.ptr, !1195, !DIExpression(), !1161)
    #dbg_value(i32 0, !1196, !DIExpression(), !1198)
  br label %for.cond5, !dbg !1199

for.cond5:                                        ; preds = %for.inc31, %for.body3
  %c.0 = phi i32 [ 0, %for.body3 ], [ %inc32, %for.inc31 ], !dbg !1200
    #dbg_value(i32 %c.0, !1196, !DIExpression(), !1198)
  %exitcond4 = icmp ne i32 %c.0, 17, !dbg !1201
  br i1 %exitcond4, label %for.cond8.preheader, label %for.end33, !dbg !1203

for.cond8.preheader:                              ; preds = %for.cond5
  br label %for.cond8, !dbg !1204

for.cond8:                                        ; preds = %for.cond8.preheader, %for.inc
  %k.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond8.preheader ], !dbg !1207
    #dbg_value(i32 %k.0, !1208, !DIExpression(), !1209)
  %exitcond = icmp ne i32 %k.0, 4, !dbg !1210
  br i1 %exitcond, label %for.body10, label %for.inc31, !dbg !1204

for.body10:                                       ; preds = %for.cond8
  %mul11 = shl nuw nsw i32 %c.0, 2, !dbg !1212
  %add = or disjoint i32 %k.0, %mul11, !dbg !1214
  %arrayidx = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %add, !dbg !1215
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1215
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1216
  %shl = shl i64 %0, %sh_prom, !dbg !1216
  %mul12 = mul nuw nsw i32 %i.0, 17, !dbg !1217
  %add13 = add nuw nsw i32 %mul12, %c.0, !dbg !1218
  %add14 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1219
  %mul15 = mul i32 %add14, 80, !dbg !1220
  %add16 = add i32 %add13, %mul15, !dbg !1221
  %arrayidx17 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add16, !dbg !1222
  %1 = load i64, ptr %arrayidx17, align 8, !dbg !1223
  %xor = xor i64 %1, %shl, !dbg !1223
  store i64 %xor, ptr %arrayidx17, align 8, !dbg !1223
  %cmp18 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1224
  br i1 %cmp18, label %if.then, label %for.inc, !dbg !1224

if.then:                                          ; preds = %for.body10
  %mul19 = shl nuw nsw i32 %c.0, 2, !dbg !1226
  %add20 = or disjoint i32 %k.0, %mul19, !dbg !1228
  %arrayidx21 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %add20, !dbg !1229
  %2 = load i64, ptr %arrayidx21, align 8, !dbg !1229
  %sub = sub nsw i32 64, %bits_to_shift.1, !dbg !1230
  %sh_prom22 = zext nneg i32 %sub to i64, !dbg !1231
  %shr = lshr i64 %2, %sh_prom22, !dbg !1231
  %mul23 = mul nuw nsw i32 %i.0, 17, !dbg !1232
  %add24 = add nuw nsw i32 %mul23, %c.0, !dbg !1233
  %add25 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1234
  %3 = mul i32 %add25, 80, !dbg !1235
  %mul27 = add i32 %3, 80, !dbg !1235
  %add28 = add i32 %add24, %mul27, !dbg !1236
  %arrayidx29 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add28, !dbg !1237
  %4 = load i64, ptr %arrayidx29, align 8, !dbg !1238
  %xor30 = xor i64 %4, %shr, !dbg !1238
  store i64 %xor30, ptr %arrayidx29, align 8, !dbg !1238
  br label %for.inc, !dbg !1239

for.inc:                                          ; preds = %for.body10, %if.then
  %inc = add nuw nsw i32 %k.0, 1, !dbg !1240
    #dbg_value(i32 %inc, !1208, !DIExpression(), !1209)
  br label %for.cond8, !dbg !1241, !llvm.loop !1242

for.inc31:                                        ; preds = %for.cond8
  %inc32 = add nuw nsw i32 %c.0, 1, !dbg !1244
    #dbg_value(i32 %inc32, !1196, !DIExpression(), !1198)
  br label %for.cond5, !dbg !1245, !llvm.loop !1246

for.end33:                                        ; preds = %for.cond5
  %cmp34.not = icmp eq i32 %i.0, %j.0, !dbg !1248
  br i1 %cmp34.not, label %if.end82, label %if.then35, !dbg !1248

if.then35:                                        ; preds = %for.end33
  %add.ptr38.idx = mul nuw nsw i32 %i.0, 544, !dbg !1250
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr38.idx, !dbg !1250
    #dbg_value(ptr %add.ptr38, !1252, !DIExpression(), !1161)
    #dbg_value(i32 0, !1253, !DIExpression(), !1255)
  br label %for.cond40, !dbg !1256

for.cond40:                                       ; preds = %for.inc79, %if.then35
  %c39.0 = phi i32 [ 0, %if.then35 ], [ %inc80, %for.inc79 ], !dbg !1257
    #dbg_value(i32 %c39.0, !1253, !DIExpression(), !1255)
  %exitcond6 = icmp ne i32 %c39.0, 17, !dbg !1258
  br i1 %exitcond6, label %for.cond44.preheader, label %if.end82.loopexit, !dbg !1260

for.cond44.preheader:                             ; preds = %for.cond40
  br label %for.cond44, !dbg !1261

for.cond44:                                       ; preds = %for.cond44.preheader, %for.inc76
  %k43.0 = phi i32 [ %inc77, %for.inc76 ], [ 0, %for.cond44.preheader ], !dbg !1264
    #dbg_value(i32 %k43.0, !1265, !DIExpression(), !1266)
  %exitcond5 = icmp ne i32 %k43.0, 4, !dbg !1267
  br i1 %exitcond5, label %for.body46, label %for.inc79, !dbg !1261

for.body46:                                       ; preds = %for.cond44
  %mul47 = shl nuw nsw i32 %c39.0, 2, !dbg !1269
  %add48 = or disjoint i32 %k43.0, %mul47, !dbg !1271
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %add.ptr38, i32 %add48, !dbg !1272
  %5 = load i64, ptr %arrayidx49, align 8, !dbg !1272
  %sh_prom50 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1273
  %shl51 = shl i64 %5, %sh_prom50, !dbg !1273
  %mul52 = mul nsw i32 %j.0, 17, !dbg !1274
  %add53 = add nsw i32 %mul52, %c39.0, !dbg !1275
  %add54 = add nsw i32 %k43.0, %words_to_shift.1, !dbg !1276
  %mul55 = mul i32 %add54, 80, !dbg !1277
  %add56 = add i32 %add53, %mul55, !dbg !1278
  %arrayidx57 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add56, !dbg !1279
  %6 = load i64, ptr %arrayidx57, align 8, !dbg !1280
  %xor58 = xor i64 %6, %shl51, !dbg !1280
  store i64 %xor58, ptr %arrayidx57, align 8, !dbg !1280
  %cmp59 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1281
  br i1 %cmp59, label %if.then60, label %for.inc76, !dbg !1281

if.then60:                                        ; preds = %for.body46
  %mul61 = shl nuw nsw i32 %c39.0, 2, !dbg !1283
  %add62 = or disjoint i32 %k43.0, %mul61, !dbg !1285
  %arrayidx63 = getelementptr inbounds nuw i64, ptr %add.ptr38, i32 %add62, !dbg !1286
  %7 = load i64, ptr %arrayidx63, align 8, !dbg !1286
  %sub64 = sub nsw i32 64, %bits_to_shift.1, !dbg !1287
  %sh_prom65 = zext nneg i32 %sub64 to i64, !dbg !1288
  %shr66 = lshr i64 %7, %sh_prom65, !dbg !1288
  %mul67 = mul nsw i32 %j.0, 17, !dbg !1289
  %add68 = add nsw i32 %mul67, %c39.0, !dbg !1290
  %add69 = add nsw i32 %k43.0, %words_to_shift.1, !dbg !1291
  %8 = mul i32 %add69, 80, !dbg !1292
  %mul71 = add i32 %8, 80, !dbg !1292
  %add72 = add i32 %add68, %mul71, !dbg !1293
  %arrayidx73 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add72, !dbg !1294
  %9 = load i64, ptr %arrayidx73, align 8, !dbg !1295
  %xor74 = xor i64 %9, %shr66, !dbg !1295
  store i64 %xor74, ptr %arrayidx73, align 8, !dbg !1295
  br label %for.inc76, !dbg !1296

for.inc76:                                        ; preds = %for.body46, %if.then60
  %inc77 = add nuw nsw i32 %k43.0, 1, !dbg !1297
    #dbg_value(i32 %inc77, !1265, !DIExpression(), !1266)
  br label %for.cond44, !dbg !1298, !llvm.loop !1299

for.inc79:                                        ; preds = %for.cond44
  %inc80 = add nuw nsw i32 %c39.0, 1, !dbg !1301
    #dbg_value(i32 %inc80, !1253, !DIExpression(), !1255)
  br label %for.cond40, !dbg !1302, !llvm.loop !1303

if.end82.loopexit:                                ; preds = %for.cond40
  br label %if.end82, !dbg !1305

if.end82:                                         ; preds = %if.end82.loopexit, %for.end33
  %add83 = add nsw i32 %bits_to_shift.1, 4, !dbg !1305
    #dbg_value(i32 %add83, !1164, !DIExpression(), !1161)
  %cmp84 = icmp eq i32 %add83, 64, !dbg !1306
  %inc86 = zext i1 %cmp84 to i32, !dbg !1306
  %spec.select = add nsw i32 %words_to_shift.1, %inc86, !dbg !1306
  %spec.select3 = select i1 %cmp84, i32 0, i32 %add83, !dbg !1306
    #dbg_value(i32 %spec.select3, !1164, !DIExpression(), !1161)
    #dbg_value(i32 %spec.select, !1165, !DIExpression(), !1161)
  %dec = add nsw i32 %j.0, -1, !dbg !1308
    #dbg_value(i32 %dec, !1189, !DIExpression(), !1190)
  br label %for.cond1, !dbg !1309, !llvm.loop !1310

for.inc90:                                        ; preds = %for.cond1
  %words_to_shift.1.lcssa = phi i32 [ %words_to_shift.1, %for.cond1 ], !dbg !1161
  %bits_to_shift.1.lcssa = phi i32 [ %bits_to_shift.1, %for.cond1 ], !dbg !1161
  %inc91 = add nuw nsw i32 %i.0, 1, !dbg !1312
    #dbg_value(i32 %inc91, !1173, !DIExpression(), !1175)
  br label %for.cond, !dbg !1313, !llvm.loop !1314

for.cond94:                                       ; preds = %for.cond94.preheader, %for.body97
  %c93.0 = phi i32 [ %add100, %for.body97 ], [ 0, %for.cond94.preheader ], !dbg !1316
    #dbg_value(i32 %c93.0, !1317, !DIExpression(), !1318)
  %cmp96 = icmp samesign ult i32 %c93.0, 400, !dbg !1319
  br i1 %cmp96, label %for.body97, label %for.end101, !dbg !1186

for.body97:                                       ; preds = %for.cond94
  %add.ptr98 = getelementptr inbounds nuw i64, ptr %A, i32 %c93.0, !dbg !1321
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr98) #4, !dbg !1323
  %add100 = add nuw nsw i32 %c93.0, 16, !dbg !1324
    #dbg_value(i32 %add100, !1317, !DIExpression(), !1318)
  br label %for.cond94, !dbg !1325, !llvm.loop !1326

for.end101:                                       ; preds = %for.cond94
    #dbg_declare(ptr %tab, !1328, !DIExpression(), !1329)
  call void @mayo_memset(ptr %tab, i8 0, i32 16), !dbg !1329
    #dbg_value(i32 0, !1330, !DIExpression(), !1332)
  br label %for.cond103, !dbg !1333

for.cond103:                                      ; preds = %for.body105, %for.end101
  %i102.0 = phi i32 [ 0, %for.end101 ], [ %inc125, %for.body105 ], !dbg !1334
    #dbg_value(i32 %i102.0, !1330, !DIExpression(), !1332)
  %exitcond8 = icmp ne i32 %i102.0, 4, !dbg !1335
  br i1 %exitcond8, label %for.body105, label %for.cond128.preheader, !dbg !1337

for.cond128.preheader:                            ; preds = %for.cond103
  br label %for.cond128, !dbg !1338

for.body105:                                      ; preds = %for.cond103
  %arrayidx106 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i102.0, !dbg !1340
  %10 = load i8, ptr %arrayidx106, align 1, !dbg !1340
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %10, i8 noundef zeroext 1) #4, !dbg !1342
  %mul107 = shl nuw nsw i32 %i102.0, 2, !dbg !1343
  %arrayidx108 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul107, !dbg !1344
  store i8 %call, ptr %arrayidx108, align 1, !dbg !1345
  %call110 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %10, i8 noundef zeroext 2) #4, !dbg !1346
  %mul111 = shl nuw nsw i32 %i102.0, 2, !dbg !1347
  %add112 = or disjoint i32 %mul111, 1, !dbg !1348
  %arrayidx113 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add112, !dbg !1349
  store i8 %call110, ptr %arrayidx113, align 1, !dbg !1350
  %arrayidx114 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i102.0, !dbg !1351
  %11 = load i8, ptr %arrayidx114, align 1, !dbg !1351
  %call115 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %11, i8 noundef zeroext 4) #4, !dbg !1352
  %mul116 = shl nuw nsw i32 %i102.0, 2, !dbg !1353
  %add117 = or disjoint i32 %mul116, 2, !dbg !1354
  %arrayidx118 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add117, !dbg !1355
  store i8 %call115, ptr %arrayidx118, align 1, !dbg !1356
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i102.0, !dbg !1357
  %12 = load i8, ptr %arrayidx119, align 1, !dbg !1357
  %call120 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %12, i8 noundef zeroext 8) #4, !dbg !1358
  %mul121 = shl nuw nsw i32 %i102.0, 2, !dbg !1359
  %add122 = or disjoint i32 %mul121, 3, !dbg !1360
  %arrayidx123 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add122, !dbg !1361
  store i8 %call120, ptr %arrayidx123, align 1, !dbg !1362
  %inc125 = add nuw nsw i32 %i102.0, 1, !dbg !1363
    #dbg_value(i32 %inc125, !1330, !DIExpression(), !1332)
  br label %for.cond103, !dbg !1364, !llvm.loop !1365

for.cond128:                                      ; preds = %for.cond128.preheader, %for.inc189
  %c127.0 = phi i32 [ %add190, %for.inc189 ], [ 0, %for.cond128.preheader ], !dbg !1367
    #dbg_value(i32 %c127.0, !1368, !DIExpression(), !1369)
  %cmp129 = icmp samesign ult i32 %c127.0, 80, !dbg !1370
  br i1 %cmp129, label %for.cond131.preheader, label %for.cond193.preheader, !dbg !1338

for.cond131.preheader:                            ; preds = %for.cond128
  br label %for.cond131, !dbg !1372

for.cond193.preheader:                            ; preds = %for.cond128
  br label %for.cond193, !dbg !1375

for.cond131:                                      ; preds = %for.cond131.preheader, %for.inc186
  %r.0 = phi i32 [ %inc187, %for.inc186 ], [ 64, %for.cond131.preheader ], !dbg !1377
    #dbg_value(i32 %r.0, !1378, !DIExpression(), !1379)
  %exitcond10 = icmp ne i32 %r.0, 74, !dbg !1380
  br i1 %exitcond10, label %for.body133, label %for.inc189, !dbg !1372

for.body133:                                      ; preds = %for.cond131
  %div1 = lshr i32 %r.0, 4, !dbg !1382
  %mul134 = mul nuw nsw i32 %div1, 80, !dbg !1384
  %add135 = add nuw nsw i32 %mul134, %c127.0, !dbg !1385
  %rem = and i32 %r.0, 15, !dbg !1386
  %add136 = or disjoint i32 %add135, %rem, !dbg !1387
    #dbg_value(i32 %add136, !1388, !DIExpression(), !1389)
  %arrayidx137 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add136, !dbg !1390
  %13 = load i64, ptr %arrayidx137, align 8, !dbg !1390
  %and = and i64 %13, 1229782938247303441, !dbg !1391
    #dbg_value(i64 %and, !1392, !DIExpression(), !1389)
  %shr139 = lshr i64 %13, 1, !dbg !1393
  %and140 = and i64 %shr139, 1229782938247303441, !dbg !1394
    #dbg_value(i64 %and140, !1395, !DIExpression(), !1389)
  %shr142 = lshr i64 %13, 2, !dbg !1396
  %and143 = and i64 %shr142, 1229782938247303441, !dbg !1397
    #dbg_value(i64 %and143, !1398, !DIExpression(), !1389)
  %arrayidx144 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add136, !dbg !1399
  %14 = load i64, ptr %arrayidx144, align 8, !dbg !1399
  %shr145 = lshr i64 %14, 3, !dbg !1400
  %and146 = and i64 %shr145, 1229782938247303441, !dbg !1401
    #dbg_value(i64 %and146, !1402, !DIExpression(), !1389)
    #dbg_value(i32 0, !1403, !DIExpression(), !1405)
  br label %for.cond147, !dbg !1406

for.cond147:                                      ; preds = %for.body149, %for.body133
  %t.0 = phi i32 [ 0, %for.body133 ], [ %inc184, %for.body149 ], !dbg !1407
    #dbg_value(i32 %t.0, !1403, !DIExpression(), !1405)
  %exitcond9 = icmp ne i32 %t.0, 4, !dbg !1408
  br i1 %exitcond9, label %for.body149, label %for.inc186, !dbg !1410

for.body149:                                      ; preds = %for.cond147
  %mul150 = shl nuw nsw i32 %t.0, 2, !dbg !1411
  %arrayidx152 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul150, !dbg !1413
  %15 = load i8, ptr %arrayidx152, align 1, !dbg !1413
  %conv = zext i8 %15 to i64, !dbg !1413
  %mul153 = mul i64 %and, %conv, !dbg !1414
  %mul154 = shl nuw nsw i32 %t.0, 2, !dbg !1415
  %add155 = or disjoint i32 %mul154, 1, !dbg !1416
  %arrayidx156 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add155, !dbg !1417
  %16 = load i8, ptr %arrayidx156, align 1, !dbg !1417
  %conv157 = zext i8 %16 to i64, !dbg !1417
  %mul158 = mul i64 %and140, %conv157, !dbg !1418
  %xor159 = xor i64 %mul153, %mul158, !dbg !1419
  %mul160 = shl nuw nsw i32 %t.0, 2, !dbg !1420
  %add161 = or disjoint i32 %mul160, 2, !dbg !1421
  %arrayidx162 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add161, !dbg !1422
  %17 = load i8, ptr %arrayidx162, align 1, !dbg !1422
  %conv163 = zext i8 %17 to i64, !dbg !1422
  %mul164 = mul i64 %and143, %conv163, !dbg !1423
  %xor165 = xor i64 %xor159, %mul164, !dbg !1424
  %mul166 = shl nuw nsw i32 %t.0, 2, !dbg !1425
  %add167 = or disjoint i32 %mul166, 3, !dbg !1426
  %arrayidx168 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add167, !dbg !1427
  %18 = load i8, ptr %arrayidx168, align 1, !dbg !1427
  %conv169 = zext i8 %18 to i64, !dbg !1427
  %mul170 = mul i64 %and146, %conv169, !dbg !1428
  %xor171 = xor i64 %xor165, %mul170, !dbg !1429
  %add172 = add nuw nsw i32 %r.0, %t.0, !dbg !1430
  %sub173 = add nsw i32 %add172, -64, !dbg !1431
  %div1742 = lshr i32 %sub173, 4, !dbg !1432
  %mul175 = mul i32 %div1742, 80, !dbg !1433
  %add176 = add i32 %mul175, %c127.0, !dbg !1434
  %add177 = add nuw nsw i32 %r.0, %t.0, !dbg !1435
  %rem179 = and i32 %add177, 15, !dbg !1436
  %add180 = or disjoint i32 %add176, %rem179, !dbg !1437
  %arrayidx181 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add180, !dbg !1438
  %19 = load i64, ptr %arrayidx181, align 8, !dbg !1439
  %xor182 = xor i64 %19, %xor171, !dbg !1439
  store i64 %xor182, ptr %arrayidx181, align 8, !dbg !1439
  %inc184 = add nuw nsw i32 %t.0, 1, !dbg !1440
    #dbg_value(i32 %inc184, !1403, !DIExpression(), !1405)
  br label %for.cond147, !dbg !1441, !llvm.loop !1442

for.inc186:                                       ; preds = %for.cond147
  %inc187 = add nuw nsw i32 %r.0, 1, !dbg !1444
    #dbg_value(i32 %inc187, !1378, !DIExpression(), !1379)
  br label %for.cond131, !dbg !1445, !llvm.loop !1446

for.inc189:                                       ; preds = %for.cond131
  %add190 = add nuw nsw i32 %c127.0, 16, !dbg !1448
    #dbg_value(i32 %add190, !1368, !DIExpression(), !1369)
  br label %for.cond128, !dbg !1449, !llvm.loop !1450

for.cond193:                                      ; preds = %for.cond193.preheader, %for.inc227
  %indvars.iv = phi i32 [ 64, %for.cond193.preheader ], [ %indvars.iv.next, %for.inc227 ], !dbg !1452
  %r192.0 = phi i32 [ %add228, %for.inc227 ], [ 0, %for.cond193.preheader ], !dbg !1452
    #dbg_value(i32 %r192.0, !1453, !DIExpression(), !1454)
  %cmp194 = icmp samesign ult i32 %r192.0, 64, !dbg !1455
  br i1 %cmp194, label %for.cond198.preheader, label %for.end229, !dbg !1375

for.cond198.preheader:                            ; preds = %for.cond193
  br label %for.cond198, !dbg !1457

for.cond198:                                      ; preds = %for.cond198.preheader, %for.inc224
  %c197.0 = phi i32 [ %add225, %for.inc224 ], [ 0, %for.cond198.preheader ], !dbg !1460
    #dbg_value(i32 %c197.0, !1461, !DIExpression(), !1462)
  %cmp199 = icmp samesign ult i32 %c197.0, 68, !dbg !1463
  br i1 %cmp199, label %for.cond203.preheader, label %for.inc227, !dbg !1457

for.cond203.preheader:                            ; preds = %for.cond198
  br label %for.cond203, !dbg !1465

for.cond203:                                      ; preds = %for.cond203.preheader, %for.body207
  %i202.0 = phi i32 [ %inc222, %for.body207 ], [ 0, %for.cond203.preheader ], !dbg !1468
    #dbg_value(i32 %i202.0, !1469, !DIExpression(), !1470)
  %exitcond11 = icmp ne i32 %i202.0, %indvars.iv, !dbg !1471
  br i1 %exitcond11, label %for.body207, label %for.inc224, !dbg !1465

for.body207:                                      ; preds = %for.cond203
  %div209 = mul nuw nsw i32 %r192.0, 5, !dbg !1473
  %add210 = add nuw nsw i32 %div209, %c197.0, !dbg !1475
  %add211 = add nuw nsw i32 %add210, %i202.0, !dbg !1476
  %arrayidx212 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add211, !dbg !1477
  %add213 = add nuw nsw i32 %r192.0, %i202.0, !dbg !1478
  %mul214 = mul nuw nsw i32 %add213, 69, !dbg !1479
  %add.ptr215 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul214, !dbg !1480
  %add.ptr216 = getelementptr inbounds nuw i8, ptr %add.ptr215, i32 %c197.0, !dbg !1481
  %cmp218 = icmp samesign ult i32 %c197.0, 52, !dbg !1482
  %sub220 = sub nsw i32 68, %c197.0, !dbg !1482
  %cond = select i1 %cmp218, i32 16, i32 %sub220, !dbg !1482
  call fastcc void @decode(ptr noundef nonnull %arrayidx212, ptr noundef nonnull %add.ptr216, i32 noundef %cond) #4, !dbg !1483
  %inc222 = add nuw nsw i32 %i202.0, 1, !dbg !1484
    #dbg_value(i32 %inc222, !1469, !DIExpression(), !1470)
  br label %for.cond203, !dbg !1485, !llvm.loop !1486

for.inc224:                                       ; preds = %for.cond203
  %add225 = add nuw nsw i32 %c197.0, 16, !dbg !1488
    #dbg_value(i32 %add225, !1461, !DIExpression(), !1462)
  br label %for.cond198, !dbg !1489, !llvm.loop !1490

for.inc227:                                       ; preds = %for.cond198
  %add228 = add nuw nsw i32 %r192.0, 16, !dbg !1492
    #dbg_value(i32 %add228, !1453, !DIExpression(), !1454)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1493
  br label %for.cond193, !dbg !1493, !llvm.loop !1494

for.end229:                                       ; preds = %for.cond193
  ret void, !dbg !1496
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1497 {
entry:
    #dbg_value(ptr %a, !1500, !DIExpression(), !1501)
    #dbg_value(ptr %b, !1502, !DIExpression(), !1501)
    #dbg_value(ptr %c, !1503, !DIExpression(), !1501)
    #dbg_value(i32 17, !1504, !DIExpression(), !1501)
    #dbg_value(i32 64, !1505, !DIExpression(), !1501)
    #dbg_value(i32 1, !1506, !DIExpression(), !1501)
    #dbg_value(i32 0, !1507, !DIExpression(), !1509)
  br label %for.cond, !dbg !1510

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1511
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1500, !DIExpression(), !1501)
    #dbg_value(ptr %c.addr.0, !1503, !DIExpression(), !1501)
    #dbg_value(i32 %i.0, !1507, !DIExpression(), !1509)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !1512
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !1514

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1515

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !1518
    #dbg_value(i32 poison, !1519, !DIExpression(), !1520)
    #dbg_value(ptr %c.addr.1, !1503, !DIExpression(), !1501)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !1515

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef 17, i32 noundef 1) #4, !dbg !1521
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1524
    #dbg_value(i32 1, !1519, !DIExpression(), !1520)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1525
    #dbg_value(ptr %incdec.ptr, !1503, !DIExpression(), !1501)
  br label %for.cond1, !dbg !1526, !llvm.loop !1527

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw nsw i32 %i.0, 1, !dbg !1529
    #dbg_value(i32 %inc5, !1507, !DIExpression(), !1509)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %a.addr.0, i32 17, !dbg !1530
    #dbg_value(ptr %add.ptr6, !1500, !DIExpression(), !1501)
  br label %for.cond, !dbg !1531, !llvm.loop !1532

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1534
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1535 {
entry:
    #dbg_value(ptr %a, !1538, !DIExpression(), !1539)
    #dbg_value(ptr %b, !1540, !DIExpression(), !1539)
    #dbg_value(ptr %c, !1541, !DIExpression(), !1539)
    #dbg_value(i32 64, !1542, !DIExpression(), !1539)
    #dbg_value(i32 1, !1543, !DIExpression(), !1539)
    #dbg_value(i32 0, !1544, !DIExpression(), !1546)
  br label %for.cond, !dbg !1547

for.cond:                                         ; preds = %for.body3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ], !dbg !1548
    #dbg_value(i32 %i.0, !1544, !DIExpression(), !1546)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !1549
  br i1 %exitcond, label %for.body3, label %for.end13, !dbg !1551

for.body3:                                        ; preds = %for.cond
    #dbg_value(i32 poison, !1552, !DIExpression(), !1555)
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1556
  %0 = load i8, ptr %add.ptr, align 1, !dbg !1559
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %b, i32 %i.0, !dbg !1560
  %1 = load i8, ptr %add.ptr6, align 1, !dbg !1561
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #4, !dbg !1562
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !1563
  store i8 %call, ptr %add.ptr9, align 1, !dbg !1564
    #dbg_value(i32 1, !1552, !DIExpression(), !1555)
    #dbg_value(i32 poison, !1552, !DIExpression(), !1555)
  %inc12 = add nuw nsw i32 %i.0, 1, !dbg !1565
    #dbg_value(i32 %inc12, !1544, !DIExpression(), !1546)
  br label %for.cond, !dbg !1566, !llvm.loop !1567

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1569
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef nonnull %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1570 {
entry:
    #dbg_value(ptr %m, !1571, !DIExpression(), !1572)
    #dbg_value(ptr %menc, !1573, !DIExpression(), !1572)
    #dbg_value(i32 324, !1574, !DIExpression(), !1572)
    #dbg_value(i32 0, !1575, !DIExpression(), !1572)
  br label %for.cond, !dbg !1576

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1578
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1571, !DIExpression(), !1572)
    #dbg_value(i32 %i.0, !1575, !DIExpression(), !1572)
  %exitcond = icmp ne i32 %i.0, 162, !dbg !1579
  br i1 %exitcond, label %for.body, label %if.end, !dbg !1581

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1582
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1584
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1585
  %shl = shl i8 %1, 4, !dbg !1586
  %or = or i8 %shl, %0, !dbg !1587
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1588
  store i8 %or, ptr %arrayidx, align 1, !dbg !1589
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1590
    #dbg_value(i32 %inc, !1575, !DIExpression(), !1572)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1591
    #dbg_value(ptr %add.ptr3, !1571, !DIExpression(), !1572)
  br label %for.cond, !dbg !1592, !llvm.loop !1593

if.end:                                           ; preds = %for.cond
  ret void, !dbg !1595
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1596 {
entry:
    #dbg_value(i8 %a, !1599, !DIExpression(), !1600)
    #dbg_value(i8 %b, !1601, !DIExpression(), !1600)
  %xor1 = xor i8 %a, %b, !dbg !1602
  ret i8 %xor1, !dbg !1603
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef nonnull %a, ptr noundef nonnull %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1604 {
entry:
    #dbg_value(ptr %a, !1607, !DIExpression(), !1608)
    #dbg_value(ptr %b, !1609, !DIExpression(), !1608)
    #dbg_value(i32 17, !1610, !DIExpression(), !1608)
    #dbg_value(i32 1, !1611, !DIExpression(), !1608)
    #dbg_value(i8 0, !1612, !DIExpression(), !1608)
    #dbg_value(i32 0, !1613, !DIExpression(), !1615)
  br label %for.cond, !dbg !1616

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1608
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1617
    #dbg_value(i32 %i.0, !1613, !DIExpression(), !1615)
    #dbg_value(ptr %b.addr.0, !1609, !DIExpression(), !1608)
    #dbg_value(i8 %ret.0, !1612, !DIExpression(), !1608)
  %exitcond = icmp ne i32 %i.0, 17, !dbg !1618
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1620

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1621
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1621
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1623
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #4, !dbg !1624
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #4, !dbg !1625
    #dbg_value(i8 %call1, !1612, !DIExpression(), !1608)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1626
    #dbg_value(i32 %inc, !1613, !DIExpression(), !1615)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !1627
    #dbg_value(ptr %add.ptr, !1609, !DIExpression(), !1608)
  br label %for.cond, !dbg !1628, !llvm.loop !1629

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1608
  ret i8 %ret.0.lcssa, !dbg !1631
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1632 {
entry:
    #dbg_value(i8 %a, !1633, !DIExpression(), !1634)
    #dbg_value(i8 %b, !1635, !DIExpression(), !1634)
  %0 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !1636
  %xor1 = xor i8 %a, %0, !dbg !1637
    #dbg_value(i8 %xor1, !1633, !DIExpression(), !1634)
  %1 = trunc i8 %xor1 to i1, !dbg !1638
    #dbg_value(i8 poison, !1639, !DIExpression(), !1634)
  %2 = and i8 %xor1, 2, !dbg !1640
  %mul9 = mul i8 %2, %b, !dbg !1641
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1638
  %xor11 = xor i8 %conv10, %mul9, !dbg !1642
    #dbg_value(i8 %xor11, !1639, !DIExpression(), !1634)
  %3 = and i8 %xor1, 4, !dbg !1643
  %mul16 = mul i8 %3, %b, !dbg !1644
  %xor18 = xor i8 %mul16, %xor11, !dbg !1645
    #dbg_value(i8 %xor18, !1639, !DIExpression(), !1634)
  %4 = and i8 %xor1, 8, !dbg !1646
  %mul23 = mul i8 %4, %b, !dbg !1647
  %xor25 = xor i8 %mul23, %xor18, !dbg !1648
    #dbg_value(i8 %xor25, !1639, !DIExpression(), !1634)
    #dbg_value(i8 %xor25, !1649, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1634)
  %5 = lshr i8 %xor25, 4, !dbg !1650
  %6 = lshr i8 %xor25, 3, !dbg !1651
  %7 = and i8 %6, 14, !dbg !1651
  %8 = xor i8 %5, %7, !dbg !1652
  %xor25.masked = and i8 %xor25, 15, !dbg !1653
  %9 = xor i8 %8, %xor25.masked, !dbg !1653
    #dbg_value(i8 %9, !1654, !DIExpression(), !1634)
  ret i8 %9, !dbg !1655
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1656, !DIExpression(), !1657)
    #dbg_value(i32 0, !1658, !DIExpression(), !1660)
  br label %for.cond, !dbg !1661

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1662
    #dbg_value(i32 %i.0, !1658, !DIExpression(), !1660)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1663
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1665

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1666

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1668
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1668
  %shr = lshr i64 %0, 4, !dbg !1670
  %add = or disjoint i32 %i.0, 1, !dbg !1671
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1672
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1672
  %xor = xor i64 %shr, %1, !dbg !1673
  %and = and i64 %xor, 1085102592571150095, !dbg !1674
    #dbg_value(i64 %and, !1675, !DIExpression(), !1676)
  %shl = shl nuw i64 %and, 4, !dbg !1677
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1678
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1679
  %xor3 = xor i64 %2, %shl, !dbg !1679
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1679
  %add4 = or disjoint i32 %i.0, 1, !dbg !1680
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1681
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1682
  %xor6 = xor i64 %3, %and, !dbg !1682
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1682
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1683
    #dbg_value(i32 %add7, !1658, !DIExpression(), !1660)
  br label %for.cond, !dbg !1684, !llvm.loop !1685

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1687
    #dbg_value(i32 %i8.0, !1688, !DIExpression(), !1689)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1690
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1666

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1692

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1694
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1694
  %shr13 = lshr i64 %4, 8, !dbg !1696
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1697
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1698
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1698
  %xor16 = xor i64 %shr13, %5, !dbg !1699
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1700
    #dbg_value(i64 %and17, !1701, !DIExpression(), !1702)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1703
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1704
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1704
  %shr20 = lshr i64 %6, 8, !dbg !1705
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1706
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1707
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1707
  %xor23 = xor i64 %shr20, %7, !dbg !1708
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1709
    #dbg_value(i64 %and24, !1710, !DIExpression(), !1702)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1711
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1712
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1713
  %xor27 = xor i64 %8, %shl25, !dbg !1713
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1713
  %shl28 = shl nuw i64 %and24, 8, !dbg !1714
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1715
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1716
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1717
  %xor31 = xor i64 %9, %shl28, !dbg !1717
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1717
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1718
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1719
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1720
  %xor34 = xor i64 %10, %and17, !dbg !1720
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1720
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1721
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1722
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1723
  %xor37 = xor i64 %11, %and24, !dbg !1723
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1723
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1724
    #dbg_value(i32 %add39, !1688, !DIExpression(), !1689)
  br label %for.cond9, !dbg !1725, !llvm.loop !1726

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1728
    #dbg_value(i32 %i41.0, !1729, !DIExpression(), !1730)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1731
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1692

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1733

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1735
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1735
  %shr47 = lshr i64 %12, 16, !dbg !1737
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1738
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1739
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1739
  %xor50 = xor i64 %shr47, %13, !dbg !1740
  %and51 = and i64 %xor50, 281470681808895, !dbg !1741
    #dbg_value(i64 %and51, !1742, !DIExpression(), !1743)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1744
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1745
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1745
  %shr55 = lshr i64 %14, 16, !dbg !1746
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1747
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1748
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1748
  %xor58 = xor i64 %shr55, %15, !dbg !1749
  %and59 = and i64 %xor58, 281470681808895, !dbg !1750
    #dbg_value(i64 %and59, !1751, !DIExpression(), !1743)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1752
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1753
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1754
  %xor62 = xor i64 %16, %shl60, !dbg !1754
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1754
  %shl63 = shl nuw i64 %and59, 16, !dbg !1755
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1756
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1757
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1758
  %xor66 = xor i64 %17, %shl63, !dbg !1758
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1758
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1759
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1760
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1761
  %xor69 = xor i64 %18, %and51, !dbg !1761
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1761
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1762
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1763
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1764
  %xor72 = xor i64 %19, %and59, !dbg !1764
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1764
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1765
    #dbg_value(i32 %inc, !1729, !DIExpression(), !1730)
  br label %for.cond42, !dbg !1766, !llvm.loop !1767

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1769
    #dbg_value(i32 %i75.0, !1770, !DIExpression(), !1771)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1772
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1733

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1774
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1774
  %shr81 = lshr i64 %20, 32, !dbg !1776
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1777
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1778
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1778
  %.masked = and i64 %21, 4294967295, !dbg !1779
  %and85 = xor i64 %shr81, %.masked, !dbg !1779
    #dbg_value(i64 %and85, !1780, !DIExpression(), !1781)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1782
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1783
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1784
  %xor88 = xor i64 %22, %shl86, !dbg !1784
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1784
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1785
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1786
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1787
  %xor91 = xor i64 %23, %and85, !dbg !1787
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1787
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1788
    #dbg_value(i32 %inc93, !1770, !DIExpression(), !1771)
  br label %for.cond76, !dbg !1789, !llvm.loop !1790

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1792
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef range(i32 4, 18) %bs_mat_cols) unnamed_addr #0 !dbg !1793 {
entry:
    #dbg_value(i32 4, !1794, !DIExpression(), !1795)
    #dbg_value(ptr %mat, !1796, !DIExpression(), !1795)
    #dbg_value(ptr %bs_mat, !1797, !DIExpression(), !1795)
    #dbg_value(ptr %acc, !1798, !DIExpression(), !1795)
    #dbg_value(i32 4, !1799, !DIExpression(), !1795)
    #dbg_value(i32 64, !1800, !DIExpression(), !1795)
    #dbg_value(i32 %bs_mat_cols, !1801, !DIExpression(), !1795)
    #dbg_value(i32 0, !1802, !DIExpression(), !1804)
  br label %for.cond, !dbg !1805

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1806
    #dbg_value(i32 %r.0, !1802, !DIExpression(), !1804)
  %exitcond2 = icmp ne i32 %r.0, 4, !dbg !1807
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1809

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1810

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1813
    #dbg_value(i32 %c.0, !1814, !DIExpression(), !1815)
  %exitcond1 = icmp ne i32 %c.0, 64, !dbg !1816
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1810

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1818

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1821
    #dbg_value(i32 %k.0, !1822, !DIExpression(), !1823)
  %exitcond = icmp ne i32 %k.0, %bs_mat_cols, !dbg !1824
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1818

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, %bs_mat_cols, !dbg !1826
  %add = add nuw nsw i32 %mul, %k.0, !dbg !1828
  %add.ptr.idx = shl nsw i32 %add, 5, !dbg !1829
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1829
  %mul8 = shl nuw nsw i32 %r.0, 6, !dbg !1830
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1831
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1831
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1831
  %mul10 = mul nuw nsw i32 %r.0, %bs_mat_cols, !dbg !1832
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !1833
  %add.ptr13.idx = shl nsw i32 %add11, 5, !dbg !1834
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !1834
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #4, !dbg !1835
  %add14 = add nuw nsw i32 %k.0, 1, !dbg !1836
    #dbg_value(i32 %add14, !1822, !DIExpression(), !1823)
  br label %for.cond4, !dbg !1837, !llvm.loop !1838

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1840
    #dbg_value(i32 %inc, !1814, !DIExpression(), !1815)
  br label %for.cond1, !dbg !1841, !llvm.loop !1842

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1844
    #dbg_value(i32 %inc18, !1802, !DIExpression(), !1804)
  br label %for.cond, !dbg !1845, !llvm.loop !1846

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1848
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %V, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !1849 {
entry:
    #dbg_value(ptr %p, !1850, !DIExpression(), !1851)
    #dbg_value(ptr %P1, !1852, !DIExpression(), !1851)
    #dbg_value(ptr %V, !1853, !DIExpression(), !1851)
    #dbg_value(ptr %acc, !1854, !DIExpression(), !1851)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 4, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 64, i32 noundef 64, i32 noundef 4, i32 noundef 1) #4, !dbg !1855
  ret void, !dbg !1856
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1857 {
entry:
    #dbg_value(i32 4, !1858, !DIExpression(), !1859)
    #dbg_value(ptr %bs_mat, !1860, !DIExpression(), !1859)
    #dbg_value(ptr %mat, !1861, !DIExpression(), !1859)
    #dbg_value(ptr %acc, !1862, !DIExpression(), !1859)
    #dbg_value(i32 64, !1863, !DIExpression(), !1859)
    #dbg_value(i32 64, !1864, !DIExpression(), !1859)
    #dbg_value(i32 4, !1865, !DIExpression(), !1859)
    #dbg_value(i32 1, !1866, !DIExpression(), !1859)
    #dbg_value(i32 0, !1867, !DIExpression(), !1859)
    #dbg_value(i32 0, !1868, !DIExpression(), !1870)
  br label %for.cond, !dbg !1871

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 64, %entry ], !dbg !1872
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1872
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1873
    #dbg_value(i32 %r.0, !1868, !DIExpression(), !1870)
    #dbg_value(i32 %bs_mat_entries_used.0, !1867, !DIExpression(), !1859)
  %exitcond2 = icmp ne i32 %r.0, 64, !dbg !1874
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1876

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !1877
  br label %for.cond1, !dbg !1877

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %bs_mat_entries_used.1 = phi i32 [ %add14, %for.inc15 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !1859
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ %r.0, %for.cond1.preheader ], !dbg !1880
    #dbg_value(i32 %c.0, !1881, !DIExpression(), !1882)
    #dbg_value(i32 %bs_mat_entries_used.1, !1867, !DIExpression(), !1859)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !1883
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1877

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1885

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1888
    #dbg_value(i32 %k.0, !1889, !DIExpression(), !1890)
  %exitcond = icmp ne i32 %k.0, 4, !dbg !1891
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1885

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !1893
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1893
  %mul8 = shl nuw nsw i32 %k.0, 6, !dbg !1895
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1896
  %arrayidx = getelementptr i8, ptr %1, i32 %c.0, !dbg !1896
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1896
  %3 = shl nuw nsw i32 %r.0, 4, !dbg !1897
  %4 = shl nuw nsw i32 %k.0, 2, !dbg !1897
  %mul11 = or disjoint i32 %3, %4, !dbg !1897
  %add.ptr12 = getelementptr inbounds nuw i64, ptr %acc, i32 %mul11, !dbg !1898
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #4, !dbg !1899
  %add13 = add nuw nsw i32 %k.0, 1, !dbg !1900
    #dbg_value(i32 %add13, !1889, !DIExpression(), !1890)
  br label %for.cond4, !dbg !1901, !llvm.loop !1902

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1867, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1859)
  %add14 = add i32 %bs_mat_entries_used.1, 1, !dbg !1904
    #dbg_value(i32 %add14, !1867, !DIExpression(), !1859)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1905
    #dbg_value(i32 %inc, !1881, !DIExpression(), !1882)
  br label %for.cond1, !dbg !1906, !llvm.loop !1907

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1859
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1909
    #dbg_value(i32 %inc18, !1868, !DIExpression(), !1870)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !1910
  br label %for.cond, !dbg !1910, !llvm.loop !1911

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1913
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1914 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1915, !DIExpression(), !1916)
    #dbg_value(ptr %sm, !1917, !DIExpression(), !1916)
    #dbg_value(ptr %smlen, !1918, !DIExpression(), !1916)
    #dbg_value(ptr %m, !1919, !DIExpression(), !1916)
    #dbg_value(i32 %mlen, !1920, !DIExpression(), !1916)
    #dbg_value(ptr %csk, !1921, !DIExpression(), !1916)
    #dbg_value(i32 0, !1922, !DIExpression(), !1916)
    #dbg_value(i32 186, !1923, !DIExpression(), !1916)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1924
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #6, !dbg !1925
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1926
    #dbg_value(ptr %siglen, !1927, !DIExpression(DW_OP_deref), !1916)
  %call2 = call i32 @pqmayo_MAYO_2_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #4, !dbg !1928
    #dbg_value(i32 0, !1922, !DIExpression(), !1916)
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1927, !DIExpression(), !1916)
  %cmp3.not = icmp eq i32 %0, 186
  br i1 %cmp3.not, label %if.end, label %if.then, !dbg !1929

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1931
    #dbg_value(i32 %1, !1927, !DIExpression(), !1916)
  %add = add i32 %1, %mlen, !dbg !1933
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #6, !dbg !1934
  br label %err, !dbg !1935

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1936
    #dbg_value(i32 %2, !1927, !DIExpression(), !1916)
  %add5 = add i32 %2, %mlen, !dbg !1937
  store i32 %add5, ptr %smlen, align 4, !dbg !1938
  br label %err, !dbg !1939

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1940, !1941)
  ret i32 0, !dbg !1942
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1943 {
entry:
    #dbg_value(ptr %p, !1944, !DIExpression(), !1945)
    #dbg_value(ptr %m, !1946, !DIExpression(), !1945)
    #dbg_value(ptr %mlen, !1947, !DIExpression(), !1945)
    #dbg_value(ptr %sm, !1948, !DIExpression(), !1945)
    #dbg_value(i32 %smlen, !1949, !DIExpression(), !1945)
    #dbg_value(ptr %pk, !1950, !DIExpression(), !1945)
    #dbg_value(i32 186, !1951, !DIExpression(), !1945)
  %cmp = icmp ult i32 %smlen, 186, !dbg !1952
  br i1 %cmp, label %return, label %if.end, !dbg !1952

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1954
  %sub = add i32 %smlen, -186, !dbg !1955
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #4, !dbg !1956
    #dbg_value(i32 %call, !1957, !DIExpression(), !1945)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1958
  br i1 %cmp1, label %if.then2, label %return, !dbg !1958

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -186, !dbg !1960
  store i32 %sub3, ptr %mlen, align 4, !dbg !1962
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1963
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #6, !dbg !1964
  br label %return, !dbg !1965

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ %call, %if.end ], !dbg !1945
  ret i32 %retval.0, !dbg !1966
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1967 {
entry:
  %tEnc = alloca [32 x i8], align 1
  %t = alloca [64 x i8], align 1
  %y = alloca [128 x i8], align 1
  %s = alloca [324 x i8], align 1
  %pk = alloca [13284 x i64], align 8
  %tmp = alloca [56 x i8], align 1
    #dbg_value(ptr %p, !1970, !DIExpression(), !1971)
    #dbg_value(ptr %m, !1972, !DIExpression(), !1971)
    #dbg_value(i32 %mlen, !1973, !DIExpression(), !1971)
    #dbg_value(ptr %sig, !1974, !DIExpression(), !1971)
    #dbg_value(ptr %cpk, !1975, !DIExpression(), !1971)
    #dbg_declare(ptr %tEnc, !1976, !DIExpression(), !1977)
    #dbg_declare(ptr %t, !1978, !DIExpression(), !1979)
    #dbg_declare(ptr %y, !1980, !DIExpression(), !1984)
  call void @mayo_memset(ptr %y, i8 0, i32 128), !dbg !1984
    #dbg_declare(ptr %s, !1985, !DIExpression(), !1986)
    #dbg_declare(ptr %pk, !1987, !DIExpression(), !1988)
  call void @mayo_memset(ptr %pk, i8 0, i32 106272), !dbg !1988
    #dbg_declare(ptr %tmp, !1989, !DIExpression(), !1993)
    #dbg_value(i32 64, !1994, !DIExpression(), !1971)
    #dbg_value(i32 81, !1995, !DIExpression(), !1971)
    #dbg_value(i32 4, !1996, !DIExpression(), !1971)
    #dbg_value(i32 32, !1997, !DIExpression(), !1971)
    #dbg_value(i32 186, !1998, !DIExpression(), !1971)
    #dbg_value(i32 32, !1999, !DIExpression(), !1971)
    #dbg_value(i32 24, !2000, !DIExpression(), !1971)
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #4, !dbg !2001
    #dbg_value(i32 0, !2002, !DIExpression(), !1971)
    #dbg_value(ptr %pk, !2003, !DIExpression(), !1971)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 66560, !dbg !2004
    #dbg_value(ptr %add.ptr, !2005, !DIExpression(), !1971)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 101376, !dbg !2006
    #dbg_value(ptr %add.ptr2, !2007, !DIExpression(), !1971)
  call void @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #4, !dbg !2008
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !2009
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 162, !dbg !2010
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 24) #6, !dbg !2011
  call void @shake256(ptr noundef nonnull %tEnc, i32 noundef 32, ptr noundef nonnull %tmp, i32 noundef 56) #4, !dbg !2012
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 64) #4, !dbg !2013
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 324) #4, !dbg !2014
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #4, !dbg !2015
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 64) #6, !dbg !2016
  %cmp21 = icmp ne i32 %call20, 0, !dbg !2018
  %. = zext i1 %cmp21 to i32, !dbg !1971
  ret i32 %., !dbg !2019
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !2020 {
entry:
    #dbg_value(ptr %p, !2021, !DIExpression(), !2022)
    #dbg_value(ptr %cpk, !2023, !DIExpression(), !2022)
    #dbg_value(ptr %pk, !2024, !DIExpression(), !2022)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #4, !dbg !2025
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !2026
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 101376, !dbg !2027
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 153, i32 noundef 64) #4, !dbg !2028
  ret i32 0, !dbg !2029
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %eval) unnamed_addr #0 !dbg !2030 {
entry:
  %SPS = alloca [64 x i64], align 8
  %zero = alloca [64 x i8], align 1
    #dbg_value(ptr %p, !2033, !DIExpression(), !2034)
    #dbg_value(ptr %s, !2035, !DIExpression(), !2034)
    #dbg_value(ptr %P1, !2036, !DIExpression(), !2034)
    #dbg_value(ptr %P2, !2037, !DIExpression(), !2034)
    #dbg_value(ptr %P3, !2038, !DIExpression(), !2034)
    #dbg_value(ptr %eval, !2039, !DIExpression(), !2034)
    #dbg_declare(ptr %SPS, !2040, !DIExpression(), !2042)
  call void @mayo_memset(ptr %SPS, i8 0, i32 512), !dbg !2042
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #4, !dbg !2043
    #dbg_declare(ptr %zero, !2044, !DIExpression(), !2045)
  call void @mayo_memset(ptr %zero, i8 0, i32 64), !dbg !2045
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #4, !dbg !2046
  ret void, !dbg !2047
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %s, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2048 {
entry:
  %PS = alloca [1296 x i64], align 8
    #dbg_value(ptr %p, !2051, !DIExpression(), !2052)
    #dbg_value(ptr %P1, !2053, !DIExpression(), !2052)
    #dbg_value(ptr %P2, !2054, !DIExpression(), !2052)
    #dbg_value(ptr %P3, !2055, !DIExpression(), !2052)
    #dbg_value(ptr %s, !2056, !DIExpression(), !2052)
    #dbg_value(ptr %SPS, !2057, !DIExpression(), !2052)
    #dbg_declare(ptr %PS, !2058, !DIExpression(), !2062)
  call void @mayo_memset(ptr %PS, i8 0, i32 10368), !dbg !2062
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 64, i32 noundef 64, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %PS) #4, !dbg !2063
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 64, i32 noundef 4, i32 noundef 81, ptr noundef %SPS) #4, !dbg !2064
  ret void, !dbg !2065
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef nonnull %PS) unnamed_addr #0 !dbg !2066 {
entry:
  %accumulator = alloca [20736 x i64], align 8
    #dbg_value(ptr %P1, !2069, !DIExpression(), !2070)
    #dbg_value(ptr %P2, !2071, !DIExpression(), !2070)
    #dbg_value(ptr %P3, !2072, !DIExpression(), !2070)
    #dbg_value(ptr %S, !2073, !DIExpression(), !2070)
    #dbg_value(i32 64, !2074, !DIExpression(), !2070)
    #dbg_value(i32 64, !2075, !DIExpression(), !2070)
    #dbg_value(i32 17, !2076, !DIExpression(), !2070)
    #dbg_value(i32 4, !2077, !DIExpression(), !2070)
    #dbg_value(ptr %PS, !2078, !DIExpression(), !2070)
    #dbg_value(i32 81, !2079, !DIExpression(), !2070)
    #dbg_value(i32 4, !2080, !DIExpression(), !2070)
    #dbg_declare(ptr %accumulator, !2081, !DIExpression(), !2085)
  call void @mayo_memset(ptr %accumulator, i8 0, i32 165888), !dbg !2085
    #dbg_value(i32 0, !2086, !DIExpression(), !2070)
    #dbg_value(i32 0, !2087, !DIExpression(), !2089)
  br label %for.cond, !dbg !2090

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ 64, %entry ], !dbg !2091
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2091
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2092
    #dbg_value(i32 %row.0, !2087, !DIExpression(), !2089)
    #dbg_value(i32 %P1_used.0, !2086, !DIExpression(), !2070)
  %exitcond4 = icmp ne i32 %row.0, 64, !dbg !2093
  br i1 %exitcond4, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2095

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2096
  br label %for.cond2, !dbg !2096

for.cond56.preheader:                             ; preds = %for.cond
  br label %for.cond56, !dbg !2099

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !2070
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2101
    #dbg_value(i32 %j.0, !2102, !DIExpression(), !2103)
    #dbg_value(i32 %P1_used.1, !2086, !DIExpression(), !2070)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2104
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2096

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !2070
  br label %for.cond21, !dbg !2106

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2108

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2111
    #dbg_value(i32 %col.0, !2112, !DIExpression(), !2113)
  %exitcond = icmp ne i32 %col.0, 4, !dbg !2114
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2108

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = shl nsw i32 %P1_used.1, 5, !dbg !2116
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !2116
  %1 = shl nuw nsw i32 %row.0, 6, !dbg !2118
  %2 = shl nuw nsw i32 %col.0, 4, !dbg !2118
  %mul10 = or disjoint i32 %1, %2, !dbg !2118
  %mul11 = mul nuw nsw i32 %col.0, 81, !dbg !2119
  %3 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2120
  %arrayidx = getelementptr i8, ptr %3, i32 %j.0, !dbg !2120
  %4 = load i8, ptr %arrayidx, align 1, !dbg !2120
  %conv = zext i8 %4 to i32, !dbg !2120
  %add13 = add nuw nsw i32 %mul10, %conv, !dbg !2121
  %add.ptr15.idx = shl nuw nsw i32 %add13, 5, !dbg !2122
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr15.idx, !dbg !2122
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #4, !dbg !2123
  %inc = add nuw nsw i32 %col.0, 1, !dbg !2124
    #dbg_value(i32 %inc, !2112, !DIExpression(), !2113)
  br label %for.cond5, !dbg !2125, !llvm.loop !2126

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2086, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2070)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2128
    #dbg_value(i32 %inc16, !2086, !DIExpression(), !2070)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2129
    #dbg_value(i32 %inc18, !2102, !DIExpression(), !2103)
  br label %for.cond2, !dbg !2130, !llvm.loop !2131

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2133
    #dbg_value(i32 %j20.0, !2134, !DIExpression(), !2135)
  %exitcond3 = icmp ne i32 %j20.0, 17, !dbg !2136
  br i1 %exitcond3, label %for.cond26.preheader, label %for.inc52, !dbg !2106

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2138

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2141
    #dbg_value(i32 %col25.0, !2142, !DIExpression(), !2143)
  %exitcond2 = icmp ne i32 %col25.0, 4, !dbg !2144
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2138

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nuw nsw i32 %row.0, 17, !dbg !2146
  %add31 = add nuw nsw i32 %mul30, %j20.0, !dbg !2148
  %add.ptr33.idx = shl nuw nsw i32 %add31, 5, !dbg !2149
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr33.idx, !dbg !2149
  %5 = shl nuw nsw i32 %row.0, 6, !dbg !2150
  %6 = shl nuw nsw i32 %col25.0, 4, !dbg !2150
  %mul37 = or disjoint i32 %5, %6, !dbg !2150
  %mul38 = mul nuw nsw i32 %col25.0, 81, !dbg !2151
  %7 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2152
  %8 = getelementptr i8, ptr %7, i32 %j20.0, !dbg !2152
  %arrayidx41 = getelementptr i8, ptr %8, i32 64, !dbg !2152
  %9 = load i8, ptr %arrayidx41, align 1, !dbg !2152
  %conv42 = zext i8 %9 to i32, !dbg !2152
  %add43 = add nuw nsw i32 %mul37, %conv42, !dbg !2153
  %add.ptr45.idx = shl nuw nsw i32 %add43, 5, !dbg !2154
  %add.ptr45 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr45.idx, !dbg !2154
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #4, !dbg !2155
  %inc47 = add nuw nsw i32 %col25.0, 1, !dbg !2156
    #dbg_value(i32 %inc47, !2142, !DIExpression(), !2143)
  br label %for.cond26, !dbg !2157, !llvm.loop !2158

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw nsw i32 %j20.0, 1, !dbg !2160
    #dbg_value(i32 %inc50, !2134, !DIExpression(), !2135)
  br label %for.cond21, !dbg !2161, !llvm.loop !2162

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw nsw i32 %row.0, 1, !dbg !2164
    #dbg_value(i32 %inc53, !2087, !DIExpression(), !2089)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !2165
  br label %for.cond, !dbg !2165, !llvm.loop !2166

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %indvars.iv6 = phi i32 [ 17, %for.cond56.preheader ], [ %indvars.iv.next7, %for.inc90 ], !dbg !2168
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2168
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ 64, %for.cond56.preheader ], !dbg !2169
    #dbg_value(i32 %row55.0, !2170, !DIExpression(), !2171)
    #dbg_value(i32 %P3_used.0, !2172, !DIExpression(), !2070)
  %exitcond9 = icmp ne i32 %row55.0, 81, !dbg !2173
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2099

for.cond61.preheader:                             ; preds = %for.cond56
  %10 = add i32 %P3_used.0, %indvars.iv6, !dbg !2175
  br label %for.cond61, !dbg !2175

while.cond.preheader:                             ; preds = %for.cond56
  br label %while.cond, !dbg !2178

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !2070
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2179
    #dbg_value(i32 %j60.0, !2180, !DIExpression(), !2181)
    #dbg_value(i32 %P3_used.1, !2172, !DIExpression(), !2070)
  %exitcond8 = icmp ne i32 %P3_used.1, %10, !dbg !2182
  br i1 %exitcond8, label %for.cond66.preheader, label %for.inc90, !dbg !2175

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2184

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2187
    #dbg_value(i32 %col65.0, !2188, !DIExpression(), !2189)
  %exitcond5 = icmp ne i32 %col65.0, 4, !dbg !2190
  br i1 %exitcond5, label %for.body69, label %for.inc87, !dbg !2184

for.body69:                                       ; preds = %for.cond66
  %add.ptr71.idx = shl nsw i32 %P3_used.1, 5, !dbg !2192
  %add.ptr71 = getelementptr inbounds i8, ptr %P3, i32 %add.ptr71.idx, !dbg !2192
  %11 = shl nuw nsw i32 %row55.0, 6, !dbg !2194
  %12 = shl nuw nsw i32 %col65.0, 4, !dbg !2194
  %mul75 = or disjoint i32 %11, %12, !dbg !2194
  %mul76 = mul nuw nsw i32 %col65.0, 81, !dbg !2195
  %13 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2196
  %arrayidx78 = getelementptr i8, ptr %13, i32 %j60.0, !dbg !2196
  %14 = load i8, ptr %arrayidx78, align 1, !dbg !2196
  %conv79 = zext i8 %14 to i32, !dbg !2196
  %add80 = add nuw nsw i32 %mul75, %conv79, !dbg !2197
  %add.ptr82.idx = shl nuw nsw i32 %add80, 5, !dbg !2198
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr82.idx, !dbg !2198
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #4, !dbg !2199
  %inc84 = add nuw nsw i32 %col65.0, 1, !dbg !2200
    #dbg_value(i32 %inc84, !2188, !DIExpression(), !2189)
  br label %for.cond66, !dbg !2201, !llvm.loop !2202

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2172, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2070)
  %inc86 = add i32 %P3_used.1, 1, !dbg !2204
    #dbg_value(i32 %inc86, !2172, !DIExpression(), !2070)
  %inc88 = add nuw nsw i32 %j60.0, 1, !dbg !2205
    #dbg_value(i32 %inc88, !2180, !DIExpression(), !2181)
  br label %for.cond61, !dbg !2206, !llvm.loop !2207

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !2070
  %inc91 = add nuw nsw i32 %row55.0, 1, !dbg !2209
    #dbg_value(i32 %inc91, !2170, !DIExpression(), !2171)
  %indvars.iv.next7 = add nsw i32 %indvars.iv6, -1, !dbg !2210
  br label %for.cond56, !dbg !2210, !llvm.loop !2211

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !2070
    #dbg_value(i32 %i.0, !2213, !DIExpression(), !2070)
  %exitcond10 = icmp ne i32 %i.0, 324, !dbg !2214
  br i1 %exitcond10, label %while.body, label %while.end, !dbg !2178

while.body:                                       ; preds = %while.cond
  %add.ptr99.idx = shl nuw nsw i32 %i.0, 9, !dbg !2215
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr99.idx, !dbg !2215
  %add.ptr101.idx = shl nuw nsw i32 %i.0, 5, !dbg !2217
  %add.ptr101 = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr101.idx, !dbg !2217
  call fastcc void @m_vec_multiply_bins(i32 noundef 4, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #4, !dbg !2218
  %inc102 = add nuw nsw i32 %i.0, 1, !dbg !2219
    #dbg_value(i32 %inc102, !2213, !DIExpression(), !2070)
  br label %while.cond, !dbg !2178, !llvm.loop !2220

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2222
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2223 {
entry:
  %accumulator = alloca [1024 x i64], align 8
    #dbg_value(ptr %PS, !2226, !DIExpression(), !2227)
    #dbg_value(ptr %S, !2228, !DIExpression(), !2227)
    #dbg_value(i32 64, !2229, !DIExpression(), !2227)
    #dbg_value(i32 4, !2230, !DIExpression(), !2227)
    #dbg_value(i32 81, !2231, !DIExpression(), !2227)
    #dbg_value(ptr %SPS, !2232, !DIExpression(), !2227)
    #dbg_declare(ptr %accumulator, !2233, !DIExpression(), !2234)
  call void @mayo_memset(ptr %accumulator, i8 0, i32 8192), !dbg !2234
    #dbg_value(i32 4, !2235, !DIExpression(), !2227)
    #dbg_value(i32 0, !2236, !DIExpression(), !2238)
  br label %for.cond, !dbg !2239

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2240
    #dbg_value(i32 %row.0, !2236, !DIExpression(), !2238)
  %exitcond2 = icmp ne i32 %row.0, 4, !dbg !2241
  br i1 %exitcond2, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2243

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2244

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !2247

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2248
    #dbg_value(i32 %j.0, !2249, !DIExpression(), !2250)
  %exitcond1 = icmp ne i32 %j.0, 81, !dbg !2251
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2244

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2253

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2256
    #dbg_value(i32 %col.0, !2257, !DIExpression(), !2258)
  %exitcond = icmp ne i32 %col.0, 4, !dbg !2259
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2253

for.body6:                                        ; preds = %for.cond4
  %0 = shl nuw nsw i32 %j.0, 4, !dbg !2261
  %1 = shl nuw nsw i32 %col.0, 2, !dbg !2261
  %mul8 = or disjoint i32 %0, %1, !dbg !2261
  %add.ptr = getelementptr inbounds nuw i64, ptr %PS, i32 %mul8, !dbg !2263
  %2 = shl nuw nsw i32 %row.0, 6, !dbg !2264
  %3 = shl nuw nsw i32 %col.0, 4, !dbg !2264
  %mul11 = or disjoint i32 %2, %3, !dbg !2264
  %mul12 = mul nuw nsw i32 %row.0, 81, !dbg !2265
  %4 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2266
  %arrayidx = getelementptr i8, ptr %4, i32 %j.0, !dbg !2266
  %5 = load i8, ptr %arrayidx, align 1, !dbg !2266
  %conv = zext i8 %5 to i32, !dbg !2266
  %add14 = add nuw nsw i32 %mul11, %conv, !dbg !2267
  %add.ptr16.idx = shl nuw nsw i32 %add14, 5, !dbg !2268
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr16.idx, !dbg !2268
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #4, !dbg !2269
  %add17 = add nuw nsw i32 %col.0, 1, !dbg !2270
    #dbg_value(i32 %add17, !2257, !DIExpression(), !2258)
  br label %for.cond4, !dbg !2271, !llvm.loop !2272

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %j.0, 1, !dbg !2274
    #dbg_value(i32 %inc, !2249, !DIExpression(), !2250)
  br label %for.cond1, !dbg !2275, !llvm.loop !2276

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw nsw i32 %row.0, 1, !dbg !2278
    #dbg_value(i32 %inc21, !2236, !DIExpression(), !2238)
  br label %for.cond, !dbg !2279, !llvm.loop !2280

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2227
    #dbg_value(i32 %i.0, !2282, !DIExpression(), !2227)
  %exitcond3 = icmp ne i32 %i.0, 16, !dbg !2283
  br i1 %exitcond3, label %while.body, label %while.end, !dbg !2247

while.body:                                       ; preds = %while.cond
  %add.ptr29.idx = shl nuw nsw i32 %i.0, 9, !dbg !2284
  %add.ptr29 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr29.idx, !dbg !2284
  %add.ptr31.idx = shl nuw nsw i32 %i.0, 5, !dbg !2286
  %add.ptr31 = getelementptr inbounds nuw i8, ptr %SPS, i32 %add.ptr31.idx, !dbg !2286
  call fastcc void @m_vec_multiply_bins(i32 noundef 4, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #4, !dbg !2287
  %inc32 = add nuw nsw i32 %i.0, 1, !dbg !2288
    #dbg_value(i32 %inc32, !2282, !DIExpression(), !2227)
  br label %while.cond, !dbg !2247, !llvm.loop !2289

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2291
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2292 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2295, !DIExpression(), !2296)
    #dbg_value(ptr %in, !2297, !DIExpression(), !2296)
    #dbg_value(ptr %acc, !2298, !DIExpression(), !2296)
    #dbg_value(i32 0, !2299, !DIExpression(), !2301)
  br label %for.cond, !dbg !2302

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2303
    #dbg_value(i32 %i.0, !2299, !DIExpression(), !2301)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2304
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2306

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2307
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2307
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2309
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2310
  %xor = xor i64 %1, %0, !dbg !2310
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2310
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2311
    #dbg_value(i32 %inc, !2299, !DIExpression(), !2301)
  br label %for.cond, !dbg !2312, !llvm.loop !2313

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2315
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef nonnull %bins, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2316 {
entry:
    #dbg_value(i32 4, !2319, !DIExpression(), !2320)
    #dbg_value(ptr %bins, !2321, !DIExpression(), !2320)
    #dbg_value(ptr %out, !2322, !DIExpression(), !2320)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 160, !dbg !2323
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2324
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #4, !dbg !2325
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 352, !dbg !2326
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 384, !dbg !2327
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #4, !dbg !2328
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2329
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2330
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #4, !dbg !2331
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 384, !dbg !2332
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 192, !dbg !2333
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #4, !dbg !2334
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2335
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2336
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #4, !dbg !2337
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 192, !dbg !2338
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 96, !dbg !2339
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #4, !dbg !2340
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2341
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2342
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #4, !dbg !2343
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 96, !dbg !2344
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 256, !dbg !2345
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #4, !dbg !2346
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2347
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 416, !dbg !2348
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #4, !dbg !2349
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 256, !dbg !2350
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 128, !dbg !2351
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #4, !dbg !2352
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 416, !dbg !2353
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2354
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #4, !dbg !2355
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 128, !dbg !2356
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 64, !dbg !2357
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #4, !dbg !2358
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2359
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2360
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #4, !dbg !2361
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 64, !dbg !2362
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2363
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #4, !dbg !2364
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2365
  call fastcc void @m_vec_copy(i32 noundef 4, ptr noundef nonnull %add.ptr28, ptr noundef %out) #4, !dbg !2366
  ret void, !dbg !2367
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2368 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2369, !DIExpression(), !2370)
    #dbg_value(ptr %in, !2371, !DIExpression(), !2370)
    #dbg_value(ptr %acc, !2372, !DIExpression(), !2370)
    #dbg_value(i64 1229782938247303441, !2373, !DIExpression(), !2370)
    #dbg_value(i32 0, !2374, !DIExpression(), !2376)
  br label %for.cond, !dbg !2377

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2378
    #dbg_value(i32 %i.0, !2374, !DIExpression(), !2376)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2379
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2381

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2382
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2382
  %and = and i64 %0, 1229782938247303441, !dbg !2384
    #dbg_value(i64 %and, !2385, !DIExpression(), !2386)
  %xor = lshr i64 %0, 1, !dbg !2387
  %shr = and i64 %xor, 8608480567731124087, !dbg !2387
  %mul = mul nuw i64 %and, 9, !dbg !2388
  %xor2 = xor i64 %shr, %mul, !dbg !2389
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2390
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2391
  %xor4 = xor i64 %1, %xor2, !dbg !2391
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2391
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2392
    #dbg_value(i32 %inc, !2374, !DIExpression(), !2376)
  br label %for.cond, !dbg !2393, !llvm.loop !2394

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2396
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2397 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2398, !DIExpression(), !2399)
    #dbg_value(ptr %in, !2400, !DIExpression(), !2399)
    #dbg_value(ptr %acc, !2401, !DIExpression(), !2399)
    #dbg_value(i64 -8608480567731124088, !2402, !DIExpression(), !2399)
    #dbg_value(i32 0, !2403, !DIExpression(), !2405)
  br label %for.cond, !dbg !2406

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2407
    #dbg_value(i32 %i.0, !2403, !DIExpression(), !2405)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2408
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2410

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2411
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2411
    #dbg_value(i64 %0, !2413, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2414)
  %xor = shl i64 %0, 1, !dbg !2415
  %shl = and i64 %xor, -1229782938247303442, !dbg !2415
  %and = lshr i64 %0, 3, !dbg !2416
  %shr = and i64 %and, 1229782938247303441, !dbg !2416
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2417
  %xor2 = xor i64 %shl, %mul, !dbg !2418
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2419
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2420
  %xor4 = xor i64 %1, %xor2, !dbg !2420
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2420
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2421
    #dbg_value(i32 %inc, !2403, !DIExpression(), !2405)
  br label %for.cond, !dbg !2422, !llvm.loop !2423

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2425
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2426 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2427, !DIExpression(), !2428)
    #dbg_value(ptr %in, !2429, !DIExpression(), !2428)
    #dbg_value(ptr %out, !2430, !DIExpression(), !2428)
    #dbg_value(i32 0, !2431, !DIExpression(), !2433)
  br label %for.cond, !dbg !2434

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2435
    #dbg_value(i32 %i.0, !2431, !DIExpression(), !2433)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2436
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2438

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2439
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2439
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2441
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2442
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2443
    #dbg_value(i32 %inc, !2431, !DIExpression(), !2433)
  br label %for.cond, !dbg !2444, !llvm.loop !2445

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2447
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_2_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2448 {
entry:
    #dbg_value(ptr %p, !2479, !DIExpression(), !2480)
    #dbg_value(ptr %in, !2481, !DIExpression(), !2480)
    #dbg_value(ptr %out, !2482, !DIExpression(), !2480)
    #dbg_value(i32 %size, !2483, !DIExpression(), !2480)
    #dbg_value(i32 4, !2484, !DIExpression(), !2480)
    #dbg_value(i32 0, !2485, !DIExpression(), !2480)
    #dbg_value(i32 0, !2486, !DIExpression(), !2488)
  %0 = icmp sgt i32 %size, 0, !dbg !2489
  %1 = select i1 %0, i32 %size, i32 0, !dbg !2489
  br label %for.cond, !dbg !2489

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2490
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2490
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2491
    #dbg_value(i32 %r.0, !2486, !DIExpression(), !2488)
    #dbg_value(i32 %m_vecs_stored.0, !2485, !DIExpression(), !2480)
  %exitcond1 = icmp ne i32 %r.0, %1, !dbg !2492
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2494

for.cond1.preheader:                              ; preds = %for.cond
  %2 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2495
  br label %for.cond1, !dbg !2495

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2480
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2498
    #dbg_value(i32 %c.0, !2499, !DIExpression(), !2500)
    #dbg_value(i32 %m_vecs_stored.1, !2485, !DIExpression(), !2480)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %2, !dbg !2501
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2495

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2503
  %add = add nsw i32 %mul, %c.0, !dbg !2505
  %add.ptr.idx = shl nsw i32 %add, 5, !dbg !2506
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2506
  %add.ptr6.idx = shl nsw i32 %m_vecs_stored.1, 5, !dbg !2507
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2507
  call fastcc void @m_vec_copy.17(i32 noundef 4, ptr noundef %add.ptr, ptr noundef %add.ptr6) #4, !dbg !2508
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2509
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2509

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2511
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2513
  %add.ptr11.idx = shl nsw i32 %add9, 5, !dbg !2514
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2514
  %add.ptr13.idx = shl nsw i32 %m_vecs_stored.1, 5, !dbg !2515
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2515
  call fastcc void @m_vec_add.18(i32 noundef 4, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #4, !dbg !2516
  br label %for.inc, !dbg !2517

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2485, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2480)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2518
    #dbg_value(i32 %inc, !2485, !DIExpression(), !2480)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2519
    #dbg_value(i32 %inc14, !2499, !DIExpression(), !2500)
  br label %for.cond1, !dbg !2520, !llvm.loop !2521

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2480
  %inc16 = add nuw i32 %r.0, 1, !dbg !2523
    #dbg_value(i32 %inc16, !2486, !DIExpression(), !2488)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2524
  br label %for.cond, !dbg !2524, !llvm.loop !2525

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2527
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2528 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2529, !DIExpression(), !2530)
    #dbg_value(ptr %in, !2531, !DIExpression(), !2530)
    #dbg_value(ptr %out, !2532, !DIExpression(), !2530)
    #dbg_value(i32 0, !2533, !DIExpression(), !2535)
  br label %for.cond, !dbg !2536

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2537
    #dbg_value(i32 %i.0, !2533, !DIExpression(), !2535)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2538
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2540

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2541
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2541
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2543
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2544
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2545
    #dbg_value(i32 %inc, !2533, !DIExpression(), !2535)
  br label %for.cond, !dbg !2546, !llvm.loop !2547

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2549
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2550 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2551, !DIExpression(), !2552)
    #dbg_value(ptr %in, !2553, !DIExpression(), !2552)
    #dbg_value(ptr %acc, !2554, !DIExpression(), !2552)
    #dbg_value(i32 0, !2555, !DIExpression(), !2557)
  br label %for.cond, !dbg !2558

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2559
    #dbg_value(i32 %i.0, !2555, !DIExpression(), !2557)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2560
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2562

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2563
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2563
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2565
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2566
  %xor = xor i64 %1, %0, !dbg !2566
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2566
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2567
    #dbg_value(i32 %inc, !2555, !DIExpression(), !2557)
  br label %for.cond, !dbg !2568, !llvm.loop !2569

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2571
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2572 {
entry:
  %Ar = alloca [64 x i8], align 1
    #dbg_value(ptr %p, !2575, !DIExpression(), !2576)
    #dbg_value(ptr %A, !2577, !DIExpression(), !2576)
    #dbg_value(ptr %y, !2578, !DIExpression(), !2576)
    #dbg_value(ptr %r, !2579, !DIExpression(), !2576)
    #dbg_value(ptr %x, !2580, !DIExpression(), !2576)
    #dbg_value(i32 %k, !2581, !DIExpression(), !2576)
    #dbg_value(i32 %o, !2582, !DIExpression(), !2576)
    #dbg_value(i32 %m, !2583, !DIExpression(), !2576)
    #dbg_value(i32 %A_cols, !2584, !DIExpression(), !2576)
    #dbg_value(i32 0, !2585, !DIExpression(), !2587)
  %0 = mul nsw i32 %o, %k, !dbg !2588
  %1 = icmp sgt i32 %0, 0, !dbg !2588
  %2 = select i1 %1, i32 %0, i32 0, !dbg !2588
  br label %for.cond, !dbg !2588

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2589
    #dbg_value(i32 %i.0, !2585, !DIExpression(), !2587)
  %exitcond = icmp ne i32 %i.0, %2, !dbg !2590
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2592

for.cond3.preheader:                              ; preds = %for.cond
  %3 = icmp sgt i32 %m, 0, !dbg !2593
  %4 = select i1 %3, i32 %m, i32 0, !dbg !2593
  br label %for.cond3, !dbg !2593

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2595
  %5 = load i8, ptr %arrayidx, align 1, !dbg !2595
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2597
  store i8 %5, ptr %arrayidx1, align 1, !dbg !2598
  %inc = add nuw i32 %i.0, 1, !dbg !2599
    #dbg_value(i32 %inc, !2585, !DIExpression(), !2587)
  br label %for.cond, !dbg !2600, !llvm.loop !2601

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2603
    #dbg_value(i32 %i2.0, !2604, !DIExpression(), !2605)
  %exitcond14 = icmp ne i32 %i2.0, %4, !dbg !2606
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2593

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2608
  %mul7 = mul nsw i32 %k, %o, !dbg !2610
  %add = add nsw i32 %mul7, 1, !dbg !2611
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2612
  %6 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2613
  %arrayidx10 = getelementptr i8, ptr %6, i32 %mul8, !dbg !2613
  store i8 0, ptr %arrayidx10, align 1, !dbg !2614
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2615
    #dbg_value(i32 %inc12, !2604, !DIExpression(), !2605)
  br label %for.cond3, !dbg !2616, !llvm.loop !2617

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2619
  %add15 = add nsw i32 %mul14, 1, !dbg !2620
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #4, !dbg !2621
    #dbg_value(i32 0, !2622, !DIExpression(), !2624)
  br label %for.cond17, !dbg !2625

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2626
    #dbg_value(i32 %i16.0, !2622, !DIExpression(), !2624)
  %exitcond15 = icmp ne i32 %i16.0, %4, !dbg !2627
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2629

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2630
  %7 = load i8, ptr %arrayidx20, align 1, !dbg !2630
  %arrayidx21 = getelementptr inbounds nuw [64 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2632
  %8 = load i8, ptr %arrayidx21, align 1, !dbg !2632
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %7, i8 noundef zeroext %8) #4, !dbg !2633
  %mul22 = mul nsw i32 %k, %o, !dbg !2634
  %mul23 = mul nsw i32 %k, %o, !dbg !2635
  %add24 = add nsw i32 %mul23, 1, !dbg !2636
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2637
  %9 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2638
  %arrayidx27 = getelementptr i8, ptr %9, i32 %mul25, !dbg !2638
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2639
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2640
    #dbg_value(i32 %inc29, !2622, !DIExpression(), !2624)
  br label %for.cond17, !dbg !2641, !llvm.loop !2642

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2644
  %add32 = add nsw i32 %mul31, 1, !dbg !2645
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #4, !dbg !2646
    #dbg_value(i8 0, !2647, !DIExpression(), !2576)
    #dbg_value(i32 0, !2648, !DIExpression(), !2650)
  %10 = add i32 %A_cols, -1, !dbg !2651
  %11 = icmp sgt i32 %10, 0, !dbg !2651
  %12 = select i1 %11, i32 %10, i32 0, !dbg !2651
  br label %for.cond34, !dbg !2651

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2576
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2652
    #dbg_value(i32 %i33.0, !2648, !DIExpression(), !2650)
    #dbg_value(i8 %full_rank.0, !2647, !DIExpression(), !2576)
  %exitcond17 = icmp ne i32 %i33.0, %12, !dbg !2653
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2655

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2647, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2576)
  %sub37 = add nsw i32 %m, -1, !dbg !2656
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2658
  %13 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2659
  %arrayidx40 = getelementptr i8, ptr %13, i32 %i33.0, !dbg !2659
  %14 = load i8, ptr %arrayidx40, align 1, !dbg !2659
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %14), !2647, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2576)
  %or12 = or i8 %full_rank.0, %14, !dbg !2660
    #dbg_value(i8 %or12, !2647, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2576)
    #dbg_value(i8 %or12, !2647, !DIExpression(), !2576)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2661
    #dbg_value(i32 %inc44, !2648, !DIExpression(), !2650)
  br label %for.cond34, !dbg !2662, !llvm.loop !2663

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2576
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2665
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2665

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2667

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2667, !llvm.loop !2669

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2671
    #dbg_value(i32 %row.0, !2672, !DIExpression(), !2673)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2674
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2667

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2676, !DIExpression(), !2576)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2677
  %div = sdiv i32 32, %sub54, !dbg !2677
  %add55 = add nsw i32 %row.0, %div, !dbg !2677
  %mul56 = mul nsw i32 %k, %o, !dbg !2677
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2677
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2677

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2677
  %div60 = sdiv i32 32, %sub59, !dbg !2677
  %add61 = add nsw i32 %row.0, %div60, !dbg !2677
  br label %cond.end, !dbg !2677

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2677
  br label %cond.end, !dbg !2677

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2677
    #dbg_value(i32 %cond, !2679, !DIExpression(), !2576)
    #dbg_value(i32 %row.0, !2680, !DIExpression(), !2682)
  br label %for.cond63, !dbg !2683

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2684
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2685
    #dbg_value(i32 %col.0, !2680, !DIExpression(), !2682)
    #dbg_value(i8 %finished.0, !2676, !DIExpression(), !2576)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2686
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2688

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2689
  %15 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2691
  %arrayidx69 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2691
  %16 = load i8, ptr %arrayidx69, align 1, !dbg !2691
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %16, i8 noundef zeroext 0) #4, !dbg !2692
  %not = xor i8 %finished.0, -1, !dbg !2693
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2694, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2576)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2695
  %17 = getelementptr i8, ptr %A, i32 %add76, !dbg !2696
  %arrayidx78 = getelementptr i8, ptr %17, i32 -1, !dbg !2696
  %18 = load i8, ptr %arrayidx78, align 1, !dbg !2696
  %19 = and i8 %18, %not, !dbg !2697
  %and801 = and i8 %19, %call70, !dbg !2697
    #dbg_value(i8 %and801, !2698, !DIExpression(), !2699)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2700
  %20 = load i8, ptr %arrayidx83, align 1, !dbg !2701
  %xor2 = xor i8 %20, %and801, !dbg !2701
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2701
    #dbg_value(i32 0, !2702, !DIExpression(), !2704)
  br label %for.cond87, !dbg !2705

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2706
    #dbg_value(i32 %i86.0, !2702, !DIExpression(), !2704)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2707
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2709

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2710
  %21 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2712
  %arrayidx93 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2712
  %22 = load i8, ptr %arrayidx93, align 1, !dbg !2712
  %conv94 = zext i8 %22 to i64, !dbg !2713
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2714
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2715
  %23 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2716
  %arrayidx98 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2716
  %24 = load i8, ptr %arrayidx98, align 1, !dbg !2716
  %conv99 = zext i8 %24 to i64, !dbg !2717
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2718
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2719
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2720
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2721
  %25 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2722
  %arrayidx105 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2722
  %26 = load i8, ptr %arrayidx105, align 1, !dbg !2722
  %conv106 = zext i8 %26 to i64, !dbg !2723
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2724
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2725
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2726
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2727
  %27 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2728
  %arrayidx112 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2728
  %28 = load i8, ptr %arrayidx112, align 1, !dbg !2728
  %conv113 = zext i8 %28 to i64, !dbg !2729
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2730
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2731
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2732
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2733
  %29 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2734
  %arrayidx119 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2734
  %30 = load i8, ptr %arrayidx119, align 1, !dbg !2734
  %conv120 = zext i8 %30 to i64, !dbg !2735
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2736
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2737
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2738
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2739
  %31 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2740
  %arrayidx126 = getelementptr i8, ptr %31, i32 %col.0, !dbg !2740
  %32 = load i8, ptr %arrayidx126, align 1, !dbg !2740
  %conv127 = zext i8 %32 to i64, !dbg !2741
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2742
  %xor129 = xor i64 %xor122, %shl128, !dbg !2743
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2744
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2745
  %33 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2746
  %arrayidx133 = getelementptr i8, ptr %33, i32 %col.0, !dbg !2746
  %34 = load i8, ptr %arrayidx133, align 1, !dbg !2746
  %conv134 = zext i8 %34 to i64, !dbg !2747
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2748
  %xor136 = xor i64 %xor129, %shl135, !dbg !2749
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2750
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2751
  %35 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2752
  %arrayidx140 = getelementptr i8, ptr %35, i32 %col.0, !dbg !2752
  %36 = load i8, ptr %arrayidx140, align 1, !dbg !2752
  %conv141 = zext i8 %36 to i64, !dbg !2753
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2754
  %xor143 = xor i64 %xor136, %shl142, !dbg !2755
    #dbg_value(i64 %xor143, !2756, !DIExpression(), !2757)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #4, !dbg !2758
    #dbg_value(i64 %call144, !2756, !DIExpression(), !2757)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2759
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2759
  %37 = getelementptr i8, ptr %A, i32 %add147, !dbg !2760
  %arrayidx149 = getelementptr i8, ptr %37, i32 -1, !dbg !2760
  %38 = load i8, ptr %arrayidx149, align 1, !dbg !2761
  %39 = trunc i64 %call144 to i8, !dbg !2761
  %40 = and i8 %39, 15, !dbg !2761
  %conv152 = xor i8 %40, %38, !dbg !2761
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2761
  %shr = lshr i64 %call144, 8, !dbg !2762
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2763
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2763
  %41 = getelementptr i8, ptr %A, i32 %add156, !dbg !2764
  %arrayidx158 = getelementptr i8, ptr %41, i32 -1, !dbg !2764
  %42 = load i8, ptr %arrayidx158, align 1, !dbg !2765
  %43 = trunc i64 %shr to i8, !dbg !2765
  %44 = and i8 %43, 15, !dbg !2765
  %conv161 = xor i8 %44, %42, !dbg !2765
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2765
  %shr162 = lshr i64 %call144, 16, !dbg !2766
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2767
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2767
  %45 = getelementptr i8, ptr %A, i32 %add166, !dbg !2768
  %arrayidx168 = getelementptr i8, ptr %45, i32 -1, !dbg !2768
  %46 = load i8, ptr %arrayidx168, align 1, !dbg !2769
  %47 = trunc i64 %shr162 to i8, !dbg !2769
  %48 = and i8 %47, 15, !dbg !2769
  %conv171 = xor i8 %48, %46, !dbg !2769
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2769
  %shr172 = lshr i64 %call144, 24, !dbg !2770
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2771
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2771
  %49 = getelementptr i8, ptr %A, i32 %add176, !dbg !2772
  %arrayidx178 = getelementptr i8, ptr %49, i32 -1, !dbg !2772
  %50 = load i8, ptr %arrayidx178, align 1, !dbg !2773
  %51 = trunc i64 %shr172 to i8, !dbg !2773
  %52 = and i8 %51, 15, !dbg !2773
  %conv181 = xor i8 %52, %50, !dbg !2773
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2773
  %shr182 = lshr i64 %call144, 32, !dbg !2774
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2775
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2775
  %53 = getelementptr i8, ptr %A, i32 %add186, !dbg !2776
  %arrayidx188 = getelementptr i8, ptr %53, i32 -1, !dbg !2776
  %54 = load i8, ptr %arrayidx188, align 1, !dbg !2777
  %55 = trunc i64 %shr182 to i8, !dbg !2777
  %56 = and i8 %55, 15, !dbg !2777
  %conv191 = xor i8 %56, %54, !dbg !2777
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2777
  %shr192 = lshr i64 %call144, 40, !dbg !2778
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2779
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2779
  %57 = getelementptr i8, ptr %A, i32 %add196, !dbg !2780
  %arrayidx198 = getelementptr i8, ptr %57, i32 -1, !dbg !2780
  %58 = load i8, ptr %arrayidx198, align 1, !dbg !2781
  %59 = trunc i64 %shr192 to i8, !dbg !2781
  %60 = and i8 %59, 15, !dbg !2781
  %conv201 = xor i8 %60, %58, !dbg !2781
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2781
  %shr202 = lshr i64 %call144, 48, !dbg !2782
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2783
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2783
  %61 = getelementptr i8, ptr %A, i32 %add206, !dbg !2784
  %arrayidx208 = getelementptr i8, ptr %61, i32 -1, !dbg !2784
  %62 = load i8, ptr %arrayidx208, align 1, !dbg !2785
  %63 = trunc i64 %shr202 to i8, !dbg !2785
  %64 = and i8 %63, 15, !dbg !2785
  %conv211 = xor i8 %64, %62, !dbg !2785
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2785
  %shr212 = lshr i64 %call144, 56, !dbg !2786
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2787
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2787
  %65 = getelementptr i8, ptr %A, i32 %add216, !dbg !2788
  %arrayidx218 = getelementptr i8, ptr %65, i32 -1, !dbg !2788
  %66 = load i8, ptr %arrayidx218, align 1, !dbg !2789
  %67 = trunc nuw nsw i64 %shr212 to i8, !dbg !2789
  %conv221 = xor i8 %66, %67, !dbg !2789
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2789
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2790
    #dbg_value(i32 %add223, !2702, !DIExpression(), !2704)
  br label %for.cond87, !dbg !2791, !llvm.loop !2792

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2676, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2576)
  %or2273 = or i8 %finished.0, %call70, !dbg !2794
    #dbg_value(i8 %or2273, !2676, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2576)
    #dbg_value(i8 %or2273, !2676, !DIExpression(), !2576)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2795
    #dbg_value(i32 %inc230, !2680, !DIExpression(), !2682)
  br label %for.cond63, !dbg !2796, !llvm.loop !2797

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2799

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2576
  ret i32 %retval.0, !dbg !2799
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef nonnull %c, i32 noundef range(i32 -2147483647, -2147483648) %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2800 {
entry:
    #dbg_value(ptr %a, !2801, !DIExpression(), !2802)
    #dbg_value(ptr %b, !2803, !DIExpression(), !2802)
    #dbg_value(ptr %c, !2804, !DIExpression(), !2802)
    #dbg_value(i32 %colrow_ab, !2805, !DIExpression(), !2802)
    #dbg_value(i32 %row_a, !2806, !DIExpression(), !2802)
    #dbg_value(i32 1, !2807, !DIExpression(), !2802)
    #dbg_value(i32 0, !2808, !DIExpression(), !2810)
  %0 = icmp sgt i32 %row_a, 0, !dbg !2811
  %1 = select i1 %0, i32 %row_a, i32 0, !dbg !2811
  br label %for.cond, !dbg !2811

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2812
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2801, !DIExpression(), !2802)
    #dbg_value(ptr %c.addr.0, !2804, !DIExpression(), !2802)
    #dbg_value(i32 %i.0, !2808, !DIExpression(), !2810)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !2813
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !2815

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2816

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !2819
    #dbg_value(i32 poison, !2820, !DIExpression(), !2821)
    #dbg_value(ptr %c.addr.1, !2804, !DIExpression(), !2802)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !2816

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef %colrow_ab, i32 noundef 1) #4, !dbg !2822
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2825
    #dbg_value(i32 1, !2820, !DIExpression(), !2821)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2826
    #dbg_value(ptr %incdec.ptr, !2804, !DIExpression(), !2802)
  br label %for.cond1, !dbg !2827, !llvm.loop !2828

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2830
    #dbg_value(i32 %inc5, !2808, !DIExpression(), !2810)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2831
    #dbg_value(ptr %add.ptr6, !2801, !DIExpression(), !2802)
  br label %for.cond, !dbg !2832, !llvm.loop !2833

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2835
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2836 {
entry:
    #dbg_value(i8 %a, !2837, !DIExpression(), !2838)
    #dbg_value(i8 %b, !2839, !DIExpression(), !2838)
  %xor1 = xor i8 %a, %b, !dbg !2840
  ret i8 %xor1, !dbg !2841
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !2842 {
entry:
  %_pivot_row = alloca [5 x i64], align 32
  %_pivot_row2 = alloca [5 x i64], align 32
  %packed_A = alloca [320 x i64], align 32
  %temp = alloca [84 x i8], align 1
    #dbg_value(ptr %A, !2846, !DIExpression(), !2847)
    #dbg_value(i32 %nrows, !2848, !DIExpression(), !2847)
    #dbg_value(i32 %ncols, !2849, !DIExpression(), !2847)
    #dbg_declare(ptr %_pivot_row, !2850, !DIExpression(), !2854)
    #dbg_declare(ptr %_pivot_row2, !2855, !DIExpression(), !2856)
    #dbg_declare(ptr %packed_A, !2857, !DIExpression(), !2861)
  call void @mayo_memset(ptr %packed_A, i8 0, i32 2560), !dbg !2861
  %add = add nsw i32 %ncols, 15, !dbg !2862
  %div = sdiv i32 %add, 16, !dbg !2863
    #dbg_value(i32 %div, !2864, !DIExpression(), !2847)
    #dbg_value(i32 0, !2865, !DIExpression(), !2867)
  %0 = icmp sgt i32 %nrows, 0, !dbg !2868
  %1 = select i1 %0, i32 %nrows, i32 0, !dbg !2868
  br label %for.cond, !dbg !2868

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2869
    #dbg_value(i32 %i.0, !2865, !DIExpression(), !2867)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !2870
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2872

for.cond3.preheader:                              ; preds = %for.cond
  %2 = icmp sgt i32 %div, 0, !dbg !2873
  %3 = select i1 %2, i32 %div, i32 0, !dbg !2873
  %4 = icmp sgt i32 %ncols, 0, !dbg !2873
  %5 = select i1 %4, i32 %ncols, i32 0, !dbg !2873
  br label %for.cond3, !dbg !2873

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2875
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2877
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2878
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2879
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #4, !dbg !2880
  %inc = add nuw i32 %i.0, 1, !dbg !2881
    #dbg_value(i32 %inc, !2865, !DIExpression(), !2867)
  br label %for.cond, !dbg !2882, !llvm.loop !2883

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2885
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2847
    #dbg_value(i32 %pivot_row.0, !2886, !DIExpression(), !2847)
    #dbg_value(i32 %pivot_col.0, !2887, !DIExpression(), !2888)
  %exitcond6 = icmp ne i32 %pivot_col.0, %5, !dbg !2889
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2873

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2891

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2893
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2893
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2893
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2893
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2893
    #dbg_value(i32 %cond, !2895, !DIExpression(), !2896)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2897
    #dbg_value(i32 %cond16, !2898, !DIExpression(), !2896)
    #dbg_value(i32 0, !2899, !DIExpression(), !2901)
  br label %for.cond18, !dbg !2902

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2903
    #dbg_value(i32 %i17.0, !2899, !DIExpression(), !2901)
  %exitcond2 = icmp ne i32 %i17.0, %3, !dbg !2904
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !2906

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2897
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2897
  br label %for.cond25, !dbg !2907

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2909
  store i64 0, ptr %arrayidx, align 8, !dbg !2911
  %arrayidx21 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2912
  store i64 0, ptr %arrayidx21, align 8, !dbg !2913
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2914
    #dbg_value(i32 %inc23, !2899, !DIExpression(), !2901)
  br label %for.cond18, !dbg !2915, !llvm.loop !2916

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2896
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2896
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2918
    #dbg_value(i32 %row.0, !2919, !DIExpression(), !2918)
    #dbg_value(i8 %pivot.0, !2920, !DIExpression(), !2896)
    #dbg_value(i64 %pivot_is_zero.0, !2921, !DIExpression(), !2896)
  %add27 = add nsw i32 %cond16, 32, !dbg !2922
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2922
  %sub30 = add nsw i32 %nrows, -1, !dbg !2922
  %add32 = add nsw i32 %cond16, 32, !dbg !2922
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2922
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2924
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2907

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #4, !dbg !2925
  %not = xor i64 %call, -1, !dbg !2927
    #dbg_value(i64 %not, !2928, !DIExpression(), !2929)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #4, !dbg !2930
    #dbg_value(i64 %call37, !2931, !DIExpression(), !2929)
    #dbg_value(i32 0, !2932, !DIExpression(), !2934)
  br label %for.cond38, !dbg !2935

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2936
    #dbg_value(i32 %j.0, !2932, !DIExpression(), !2934)
  %exitcond3 = icmp ne i32 %j.0, %3, !dbg !2937
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !2939

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2940
  %or = or i64 %and, %not, !dbg !2942
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2943
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2944
  %arrayidx43 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2945
  %6 = load i64, ptr %arrayidx43, align 8, !dbg !2945
  %and44 = and i64 %or, %6, !dbg !2946
  %arrayidx45 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2947
  %7 = load i64, ptr %arrayidx45, align 8, !dbg !2948
  %xor = xor i64 %7, %and44, !dbg !2948
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2948
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2949
    #dbg_value(i32 %inc47, !2932, !DIExpression(), !2934)
  br label %for.cond38, !dbg !2950, !llvm.loop !2951

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #4, !dbg !2953
    #dbg_value(i8 %call50, !2920, !DIExpression(), !2896)
  %conv = zext nneg i8 %call50 to i32, !dbg !2954
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #4, !dbg !2955
    #dbg_value(i64 %call51, !2921, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2896)
  %not52 = xor i64 %call51, -1, !dbg !2956
    #dbg_value(i64 %not52, !2921, !DIExpression(), !2896)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2957
    #dbg_value(i32 %inc54, !2919, !DIExpression(), !2918)
  br label %for.cond25, !dbg !2958, !llvm.loop !2959

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2896
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2896
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #4, !dbg !2961
    #dbg_value(i8 %call56, !2962, !DIExpression(), !2847)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #4, !dbg !2963
    #dbg_value(i32 %cond, !2964, !DIExpression(), !2966)
  br label %for.cond60, !dbg !2967

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !2968
    #dbg_value(i32 %row59.0, !2964, !DIExpression(), !2966)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !2969
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !2971

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !2972

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #4, !dbg !2974
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !2976
  %and67 = xor i64 %and67.demorgan, -1, !dbg !2976
    #dbg_value(i64 %and67, !2977, !DIExpression(), !2978)
    #dbg_value(i64 %and67.demorgan, !2979, !DIExpression(), !2978)
    #dbg_value(i32 0, !2980, !DIExpression(), !2982)
  br label %for.cond69, !dbg !2983

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !2984
    #dbg_value(i32 %col.0, !2980, !DIExpression(), !2982)
  %exitcond4 = icmp ne i32 %col.0, %3, !dbg !2985
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !2987

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !2988
  %add74 = add nsw i32 %mul73, %col.0, !dbg !2990
  %arrayidx75 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !2991
  %8 = load i64, ptr %arrayidx75, align 8, !dbg !2991
  %and76 = and i64 %and67.demorgan, %8, !dbg !2992
  %arrayidx77 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !2993
  %9 = load i64, ptr %arrayidx77, align 8, !dbg !2993
  %and78 = and i64 %9, %and67, !dbg !2994
  %add79 = add i64 %and76, %and78, !dbg !2995
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !2996
  %add81 = add nsw i32 %mul80, %col.0, !dbg !2997
  %arrayidx82 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !2998
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !2999
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !3000
    #dbg_value(i32 %inc84, !2980, !DIExpression(), !2982)
  br label %for.cond69, !dbg !3001, !llvm.loop !3002

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !3004
    #dbg_value(i32 %inc87, !2964, !DIExpression(), !2966)
  br label %for.cond60, !dbg !3005, !llvm.loop !3006

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !3008
    #dbg_value(i32 %row89.0, !3009, !DIExpression(), !3010)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !3011
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !2972

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !3013
    #dbg_value(i1 %cmp94, !3015, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3016)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !3017
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !3018
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #4, !dbg !3019
    #dbg_value(i8 %call100, !3020, !DIExpression(), !3016)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !3021
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !3022
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !3023
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #4, !dbg !3024
  %inc110 = add nsw i32 %row89.0, 1, !dbg !3025
    #dbg_value(i32 %inc110, !3009, !DIExpression(), !3010)
  br label %for.cond90, !dbg !3026, !llvm.loop !3027

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2886, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2847)
  %10 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !3029
  %11 = add i32 %10, 1, !dbg !3029
  %conv116 = add i32 %11, %pivot_row.0, !dbg !3029
    #dbg_value(i32 %conv116, !2886, !DIExpression(), !2847)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !3030
    #dbg_value(i32 %inc118, !2887, !DIExpression(), !2888)
  br label %for.cond3, !dbg !3031, !llvm.loop !3032

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !3034
    #dbg_value(i32 %i120.0, !3035, !DIExpression(), !3036)
  %exitcond8 = icmp ne i32 %i120.0, %1, !dbg !3037
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2891

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !3039
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !3041
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #4, !dbg !3042
    #dbg_value(i32 0, !3043, !DIExpression(), !3045)
  br label %for.cond130, !dbg !3046

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !3047
    #dbg_value(i32 %j129.0, !3043, !DIExpression(), !3045)
  %exitcond7 = icmp ne i32 %j129.0, %5, !dbg !3048
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !3050

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [84 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !3051
  %12 = load i8, ptr %arrayidx134, align 1, !dbg !3051
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !3053
  %13 = getelementptr i8, ptr %A, i32 %mul135, !dbg !3054
  %arrayidx137 = getelementptr i8, ptr %13, i32 %j129.0, !dbg !3054
  store i8 %12, ptr %arrayidx137, align 1, !dbg !3055
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3056
    #dbg_value(i32 %inc139, !3043, !DIExpression(), !3045)
  br label %for.cond130, !dbg !3057, !llvm.loop !3058

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3060
    #dbg_value(i32 %inc142, !3035, !DIExpression(), !3036)
  br label %for.cond121, !dbg !3061, !llvm.loop !3062

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 84) #4, !dbg !3064
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 40) #4, !dbg !3065
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 40) #4, !dbg !3066
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 2560) #4, !dbg !3067
  ret void, !dbg !3068
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3069 {
entry:
    #dbg_value(i8 %a, !3071, !DIExpression(), !3072)
    #dbg_value(i8 0, !3073, !DIExpression(), !3072)
  %0 = icmp ne i8 %a, 0, !dbg !3074
  %conv3 = sext i1 %0 to i8, !dbg !3075
  %1 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !3076
  %xor5 = xor i8 %1, %conv3, !dbg !3077
  ret i8 %xor5, !dbg !3078
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3079 {
entry:
    #dbg_value(i8 %a, !3082, !DIExpression(), !3083)
    #dbg_value(i64 %b, !3084, !DIExpression(), !3083)
  %0 = and i8 %a, 1, !dbg !3085
  %conv1 = zext nneg i8 %0 to i64, !dbg !3086
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3087
    #dbg_value(i64 %mul, !3088, !DIExpression(), !3083)
  %1 = and i8 %a, 2, !dbg !3089
  %conv4 = zext nneg i8 %1 to i64, !dbg !3090
  %mul5 = mul i64 %b, %conv4, !dbg !3091
  %xor = xor i64 %mul, %mul5, !dbg !3092
    #dbg_value(i64 %xor, !3088, !DIExpression(), !3083)
  %2 = and i8 %a, 4, !dbg !3093
  %conv8 = zext nneg i8 %2 to i64, !dbg !3094
  %mul9 = mul i64 %b, %conv8, !dbg !3095
  %xor10 = xor i64 %xor, %mul9, !dbg !3096
    #dbg_value(i64 %xor10, !3088, !DIExpression(), !3083)
  %3 = and i8 %a, 8, !dbg !3097
  %conv13 = zext nneg i8 %3 to i64, !dbg !3098
  %mul14 = mul i64 %b, %conv13, !dbg !3099
  %xor15 = xor i64 %xor10, %mul14, !dbg !3100
    #dbg_value(i64 %xor15, !3088, !DIExpression(), !3083)
    #dbg_value(i64 %xor15, !3101, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3083)
  %shr = lshr i64 %xor15, 4, !dbg !3102
  %and16 = lshr i64 %xor15, 3, !dbg !3103
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3103
  %4 = xor i64 %shr, %shr18, !dbg !3104
  %xor19 = xor i64 %4, %xor15, !dbg !3104
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3105
    #dbg_value(i64 %and20, !3106, !DIExpression(), !3083)
  ret i64 %and20, !dbg !3107
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef nonnull %out, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !3108 {
entry:
    #dbg_value(ptr %in, !3111, !DIExpression(), !3112)
    #dbg_value(ptr %out, !3113, !DIExpression(), !3112)
    #dbg_value(i32 %ncols, !3114, !DIExpression(), !3112)
    #dbg_value(ptr %out, !3115, !DIExpression(), !3112)
    #dbg_value(i32 0, !3116, !DIExpression(), !3112)
  br label %for.cond, !dbg !3117

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3119
    #dbg_value(i32 %i.0, !3116, !DIExpression(), !3112)
  %add = or disjoint i32 %i.0, 1, !dbg !3120
  %cmp = icmp slt i32 %add, %ncols, !dbg !3122
  br i1 %cmp, label %for.body, label %for.end, !dbg !3123

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3124
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3124
  %add2 = or disjoint i32 %i.0, 1, !dbg !3126
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3127
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3127
  %shl5 = shl i8 %1, 4, !dbg !3128
  %or = or i8 %shl5, %0, !dbg !3129
  %div = lshr exact i32 %i.0, 1, !dbg !3130
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3131
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3132
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3133
    #dbg_value(i32 %add8, !3116, !DIExpression(), !3112)
  br label %for.cond, !dbg !3134, !llvm.loop !3135

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3119
  %2 = and i32 %ncols, -2147483647, !dbg !3137
  %cmp9 = icmp eq i32 %2, 1, !dbg !3137
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3137

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3139
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3139
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3141
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3142
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3143
  br label %if.end, !dbg !3144

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3145
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3146 {
entry:
    #dbg_value(i32 %a, !3149, !DIExpression(), !3150)
    #dbg_value(i32 %b, !3151, !DIExpression(), !3150)
  %xor = xor i32 %a, %b, !dbg !3152
  %0 = icmp sgt i32 %xor, 0, !dbg !3153
  %shr = sext i1 %0 to i64, !dbg !3153
  %1 = load volatile i64, ptr @pqmayo_MAYO_2_ref_uint64_t_blocker, align 8, !dbg !3154
  %xor1 = xor i64 %1, %shr, !dbg !3155
  ret i64 %xor1, !dbg !3156
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3157 {
entry:
    #dbg_value(i32 %a, !3158, !DIExpression(), !3159)
    #dbg_value(i32 %b, !3160, !DIExpression(), !3159)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3161, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3159)
  %0 = icmp slt i32 %b, %a, !dbg !3162
  %shr = sext i1 %0 to i64, !dbg !3162
  %1 = load volatile i64, ptr @pqmayo_MAYO_2_ref_uint64_t_blocker, align 8, !dbg !3163
  %xor = xor i64 %1, %shr, !dbg !3164
  ret i64 %xor, !dbg !3165
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef nonnull %in, i32 noundef range(i32 -2147483648, 2147483647) %index) unnamed_addr #0 !dbg !3166 {
entry:
    #dbg_value(ptr %in, !3169, !DIExpression(), !3170)
    #dbg_value(i32 %index, !3171, !DIExpression(), !3170)
  %div = sdiv i32 %index, 16, !dbg !3172
    #dbg_value(i32 %div, !3173, !DIExpression(), !3170)
  %rem = srem i32 %index, 16, !dbg !3174
    #dbg_value(i32 %rem, !3175, !DIExpression(), !3170)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3176
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3176
  %mul = shl nsw i32 %rem, 2, !dbg !3177
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3178
  %shr = lshr i64 %0, %sh_prom, !dbg !3178
  %1 = trunc i64 %shr to i8, !dbg !3179
  %conv = and i8 %1, 15, !dbg !3179
  ret i8 %conv, !dbg !3180
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext range(i8 0, 16) %a) unnamed_addr #0 !dbg !3181 {
entry:
    #dbg_value(i8 %a, !3184, !DIExpression(), !3185)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #4, !dbg !3186
    #dbg_value(i8 %call, !3187, !DIExpression(), !3185)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #4, !dbg !3188
    #dbg_value(i8 %call1, !3189, !DIExpression(), !3185)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #4, !dbg !3190
    #dbg_value(i8 %call2, !3191, !DIExpression(), !3185)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #4, !dbg !3192
    #dbg_value(i8 %call3, !3193, !DIExpression(), !3185)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #4, !dbg !3194
    #dbg_value(i8 %call4, !3195, !DIExpression(), !3185)
  ret i8 %call4, !dbg !3196
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, i8 noundef zeroext range(i8 0, 16) %a, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !3197 {
entry:
    #dbg_value(i32 %legs, !3200, !DIExpression(), !3201)
    #dbg_value(ptr %in, !3202, !DIExpression(), !3201)
    #dbg_value(i8 %a, !3203, !DIExpression(), !3201)
    #dbg_value(ptr %acc, !3204, !DIExpression(), !3201)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #4, !dbg !3205
    #dbg_value(i32 %call, !3206, !DIExpression(), !3201)
    #dbg_value(i64 1229782938247303441, !3207, !DIExpression(), !3201)
    #dbg_value(i32 0, !3208, !DIExpression(), !3210)
  %0 = icmp sgt i32 %legs, 0, !dbg !3211
  %1 = select i1 %0, i32 %legs, i32 0, !dbg !3211
  br label %for.cond, !dbg !3211

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3212
    #dbg_value(i32 %i.0, !3208, !DIExpression(), !3210)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !3213
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3215

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3216
  %2 = load i64, ptr %arrayidx, align 8, !dbg !3216
  %and = and i64 %2, 1229782938247303441, !dbg !3218
  %and1 = and i32 %call, 255, !dbg !3219
  %conv = zext nneg i32 %and1 to i64, !dbg !3220
  %mul = mul i64 %and, %conv, !dbg !3221
  %shr = lshr i64 %2, 1, !dbg !3222
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3223
  %shr4 = lshr i32 %call, 8, !dbg !3224
  %and5 = and i32 %shr4, 15, !dbg !3225
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3226
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3227
  %xor = xor i64 %mul, %mul7, !dbg !3228
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3229
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !3229
  %shr9 = lshr i64 %3, 2, !dbg !3230
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3231
  %shr11 = lshr i32 %call, 16, !dbg !3232
  %and12 = and i32 %shr11, 15, !dbg !3233
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3234
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3235
  %xor15 = xor i64 %xor, %mul14, !dbg !3236
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3237
  %4 = load i64, ptr %arrayidx16, align 8, !dbg !3237
  %shr17 = lshr i64 %4, 3, !dbg !3238
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3239
  %shr19 = lshr i32 %call, 24, !dbg !3240
  %and20 = and i32 %shr19, 15, !dbg !3241
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3242
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3243
  %xor23 = xor i64 %xor15, %mul22, !dbg !3244
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3245
  %5 = load i64, ptr %arrayidx24, align 8, !dbg !3246
  %xor25 = xor i64 %5, %xor23, !dbg !3246
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3246
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3247
    #dbg_value(i32 %inc, !3208, !DIExpression(), !3210)
  br label %for.cond, !dbg !3248, !llvm.loop !3249

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3251
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !3252 {
entry:
    #dbg_value(i32 %legs, !3255, !DIExpression(), !3256)
    #dbg_value(ptr %in, !3257, !DIExpression(), !3256)
    #dbg_value(ptr %out, !3258, !DIExpression(), !3256)
    #dbg_value(ptr %in, !3259, !DIExpression(), !3256)
    #dbg_value(i32 0, !3260, !DIExpression(), !3262)
  br label %for.cond, !dbg !3263

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3264
    #dbg_value(i32 %i.0, !3260, !DIExpression(), !3262)
  %mul = shl nsw i32 %legs, 4, !dbg !3265
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3267
  br i1 %cmp, label %for.body, label %for.end, !dbg !3268

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3269
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3271
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3271
  %1 = and i8 %0, 15, !dbg !3272
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3273
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3274
  %div3 = lshr exact i32 %i.0, 1, !dbg !3275
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3276
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3276
  %3 = lshr i8 %2, 4, !dbg !3277
  %add = or disjoint i32 %i.0, 1, !dbg !3278
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3279
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3280
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3281
    #dbg_value(i32 %add8, !3260, !DIExpression(), !3262)
  br label %for.cond, !dbg !3282, !llvm.loop !3283

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3285
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, -2147483648) i32 @mul_table.22(i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3286 {
entry:
    #dbg_value(i8 %b, !3287, !DIExpression(), !3288)
  %conv = zext nneg i8 %b to i32, !dbg !3289
  %mul = mul nuw nsw i32 %conv, 134480385, !dbg !3290
    #dbg_value(i32 %mul, !3291, !DIExpression(), !3288)
    #dbg_value(i32 -252645136, !3292, !DIExpression(), !3288)
  %and = and i32 %mul, 1894838512, !dbg !3293
    #dbg_value(i32 %and, !3294, !DIExpression(), !3288)
  %shr = lshr exact i32 %and, 4, !dbg !3295
  %shr1 = lshr exact i32 %and, 3, !dbg !3296
  %0 = xor i32 %shr, %shr1, !dbg !3297
  %xor2 = xor i32 %0, %mul, !dbg !3297
  ret i32 %xor2, !dbg !3298
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3299 {
entry:
    #dbg_value(i8 %a, !3300, !DIExpression(), !3301)
    #dbg_value(i8 %b, !3302, !DIExpression(), !3301)
  %0 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !3303
  %xor1 = xor i8 %a, %0, !dbg !3304
    #dbg_value(i8 %xor1, !3300, !DIExpression(), !3301)
  %1 = trunc i8 %xor1 to i1, !dbg !3305
    #dbg_value(i8 poison, !3306, !DIExpression(), !3301)
  %2 = and i8 %xor1, 2, !dbg !3307
  %mul9 = mul i8 %2, %b, !dbg !3308
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3305
  %xor11 = xor i8 %conv10, %mul9, !dbg !3309
    #dbg_value(i8 %xor11, !3306, !DIExpression(), !3301)
  %3 = and i8 %xor1, 4, !dbg !3310
  %mul16 = mul i8 %3, %b, !dbg !3311
  %xor18 = xor i8 %mul16, %xor11, !dbg !3312
    #dbg_value(i8 %xor18, !3306, !DIExpression(), !3301)
  %4 = and i8 %xor1, 8, !dbg !3313
  %mul23 = mul i8 %4, %b, !dbg !3314
  %xor25 = xor i8 %mul23, %xor18, !dbg !3315
    #dbg_value(i8 %xor25, !3306, !DIExpression(), !3301)
    #dbg_value(i8 %xor25, !3316, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3301)
  %5 = lshr i8 %xor25, 4, !dbg !3317
  %6 = lshr i8 %xor25, 3, !dbg !3318
  %7 = and i8 %6, 14, !dbg !3318
  %8 = xor i8 %5, %7, !dbg !3319
  %xor25.masked = and i8 %xor25, 15, !dbg !3320
  %9 = xor i8 %8, %xor25.masked, !dbg !3320
    #dbg_value(i8 %9, !3321, !DIExpression(), !3301)
  ret i8 %9, !dbg !3322
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef range(i32 -2147483647, -2147483648) %n, i32 noundef %m) unnamed_addr #0 !dbg !3323 {
entry:
    #dbg_value(ptr %a, !3324, !DIExpression(), !3325)
    #dbg_value(ptr %b, !3326, !DIExpression(), !3325)
    #dbg_value(i32 %n, !3327, !DIExpression(), !3325)
    #dbg_value(i32 1, !3328, !DIExpression(), !3325)
    #dbg_value(i8 0, !3329, !DIExpression(), !3325)
    #dbg_value(i32 0, !3330, !DIExpression(), !3332)
  %0 = icmp sgt i32 %n, 0, !dbg !3333
  %1 = select i1 %0, i32 %n, i32 0, !dbg !3333
  br label %for.cond, !dbg !3333

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3325
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3334
    #dbg_value(i32 %i.0, !3330, !DIExpression(), !3332)
    #dbg_value(ptr %b.addr.0, !3326, !DIExpression(), !3325)
    #dbg_value(i8 %ret.0, !3329, !DIExpression(), !3325)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !3335
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3337

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3338
  %2 = load i8, ptr %arrayidx, align 1, !dbg !3338
  %3 = load i8, ptr %b.addr.0, align 1, !dbg !3340
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %2, i8 noundef zeroext %3) #4, !dbg !3341
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #4, !dbg !3342
    #dbg_value(i8 %call1, !3329, !DIExpression(), !3325)
  %inc = add nuw i32 %i.0, 1, !dbg !3343
    #dbg_value(i32 %inc, !3330, !DIExpression(), !3332)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !3344
    #dbg_value(ptr %add.ptr, !3326, !DIExpression(), !3325)
  br label %for.cond, !dbg !3345, !llvm.loop !3346

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3325
  ret i8 %ret.0.lcssa, !dbg !3348
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @add_f.25(i8 noundef zeroext range(i8 0, 16) %a, i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3349 {
entry:
    #dbg_value(i8 %a, !3350, !DIExpression(), !3351)
    #dbg_value(i8 %b, !3352, !DIExpression(), !3351)
  %xor1 = xor i8 %a, %b, !dbg !3353
  ret i8 %xor1, !dbg !3354
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !3355 {
entry:
    #dbg_value(ptr %state, !3363, !DIExpression(), !3364)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !3365
  store ptr %call, ptr %state, align 4, !dbg !3366
  %cmp = icmp eq ptr %call, null, !dbg !3367
  br i1 %cmp, label %if.then, label %if.end, !dbg !3367

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !3369
  br label %if.end, !dbg !3371

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !3372
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !3373
  ret void, !dbg !3374
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i32 noundef) local_unnamed_addr #3

declare dso_local void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_init(ptr noundef %s_inc) unnamed_addr #0 !dbg !3375 {
entry:
    #dbg_value(ptr %s_inc, !3376, !DIExpression(), !3377)
    #dbg_value(i32 0, !3378, !DIExpression(), !3377)
  br label %for.cond, !dbg !3379

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3381
    #dbg_value(i32 %i.0, !3378, !DIExpression(), !3377)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !3382
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3384

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s_inc, i32 %i.0, !dbg !3385
  store i64 0, ptr %arrayidx, align 8, !dbg !3387
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3388
    #dbg_value(i32 %inc, !3378, !DIExpression(), !3377)
  br label %for.cond, !dbg !3389, !llvm.loop !3390

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3392
  store i64 0, ptr %arrayidx1, align 8, !dbg !3393
  ret void, !dbg !3394
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3395 {
entry:
    #dbg_value(ptr %state, !3398, !DIExpression(), !3399)
    #dbg_value(ptr %input, !3400, !DIExpression(), !3399)
    #dbg_value(i32 %inlen, !3401, !DIExpression(), !3399)
  %0 = load ptr, ptr %state, align 4, !dbg !3402
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen) #4, !dbg !3403
  ret void, !dbg !3404
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_absorb(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen) unnamed_addr #0 !dbg !3405 {
entry:
    #dbg_value(ptr %s_inc, !3408, !DIExpression(), !3409)
    #dbg_value(i32 %r, !3410, !DIExpression(), !3409)
    #dbg_value(ptr %m, !3411, !DIExpression(), !3409)
    #dbg_value(i32 %mlen, !3412, !DIExpression(), !3409)
  br label %while.cond, !dbg !3413

while.cond:                                       ; preds = %for.end, %entry
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr, %for.end ]
  %mlen.addr.0 = phi i32 [ %mlen, %entry ], [ %sub20, %for.end ]
    #dbg_value(i32 %mlen.addr.0, !3412, !DIExpression(), !3409)
    #dbg_value(ptr %m.addr.0, !3411, !DIExpression(), !3409)
  %conv = zext i32 %mlen.addr.0 to i64, !dbg !3414
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3415
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3415
  %add = add i64 %0, %conv, !dbg !3416
  %conv1 = zext nneg i32 %r to i64, !dbg !3417
  %cmp.not = icmp ult i64 %add, %conv1, !dbg !3418
  br i1 %cmp.not, label %for.cond25.preheader, label %for.cond.preheader, !dbg !3413

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !3419

for.cond25.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa1 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  %mlen.addr.0.lcssa = phi i32 [ %mlen.addr.0, %while.cond ]
  br label %for.cond25, !dbg !3422

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !3424
    #dbg_value(i32 %i.0, !3425, !DIExpression(), !3409)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3426
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !3426
  %conv4 = trunc i64 %1 to i32, !dbg !3428
  %sub = sub i32 %r, %conv4, !dbg !3429
  %cmp5 = icmp ult i32 %i.0, %sub, !dbg !3430
  br i1 %cmp5, label %for.body, label %for.end, !dbg !3419

for.body:                                         ; preds = %for.cond
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %i.0, !dbg !3431
  %2 = load i8, ptr %arrayidx7, align 1, !dbg !3431
  %conv8 = zext i8 %2 to i64, !dbg !3433
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3434
  %3 = load i64, ptr %arrayidx9, align 8, !dbg !3434
  %conv10 = zext i32 %i.0 to i64, !dbg !3435
  %add11 = add i64 %3, %conv10, !dbg !3436
  %and = shl i64 %add11, 3, !dbg !3437
  %mul = and i64 %and, 56, !dbg !3437
  %shl = shl nuw i64 %conv8, %mul, !dbg !3438
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3439
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !3439
  %conv13 = zext i32 %i.0 to i64, !dbg !3440
  %add14 = add i64 %4, %conv13, !dbg !3441
  %shr = lshr i64 %add14, 3, !dbg !3442
  %idxprom = trunc i64 %shr to i32, !dbg !3443
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3443
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !3444
  %xor = xor i64 %5, %shl, !dbg !3444
  store i64 %xor, ptr %arrayidx15, align 8, !dbg !3444
  %inc = add nuw i32 %i.0, 1, !dbg !3445
    #dbg_value(i32 %inc, !3425, !DIExpression(), !3409)
  br label %for.cond, !dbg !3446, !llvm.loop !3447

for.end:                                          ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3449
  %6 = load i64, ptr %arrayidx17, align 8, !dbg !3449
  %7 = trunc i64 %6 to i32, !dbg !3450
  %conv19.neg = sub i32 %7, %r, !dbg !3450
  %sub20 = add i32 %conv19.neg, %mlen.addr.0, !dbg !3451
    #dbg_value(i32 %sub20, !3412, !DIExpression(), !3409)
  %8 = trunc i64 %6 to i32, !dbg !3452
  %idx.ext = sub i32 %r, %8, !dbg !3452
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %idx.ext, !dbg !3452
    #dbg_value(ptr %add.ptr, !3411, !DIExpression(), !3409)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3453
  store i64 0, ptr %arrayidx24, align 8, !dbg !3454
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #4, !dbg !3455
  br label %while.cond, !dbg !3413, !llvm.loop !3456

for.cond25:                                       ; preds = %for.cond25.preheader, %for.body28
  %i.1 = phi i32 [ %inc45, %for.body28 ], [ 0, %for.cond25.preheader ], !dbg !3458
    #dbg_value(i32 %i.1, !3425, !DIExpression(), !3409)
  %exitcond = icmp ne i32 %i.1, %mlen.addr.0.lcssa1, !dbg !3459
  br i1 %exitcond, label %for.body28, label %for.end46, !dbg !3422

for.body28:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.1, !dbg !3461
  %9 = load i8, ptr %arrayidx29, align 1, !dbg !3461
  %conv30 = zext i8 %9 to i64, !dbg !3463
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3464
  %10 = load i64, ptr %arrayidx31, align 8, !dbg !3464
  %conv32 = zext i32 %i.1 to i64, !dbg !3465
  %add33 = add i64 %10, %conv32, !dbg !3466
  %and34 = shl i64 %add33, 3, !dbg !3467
  %mul35 = and i64 %and34, 56, !dbg !3467
  %shl36 = shl nuw i64 %conv30, %mul35, !dbg !3468
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3469
  %11 = load i64, ptr %arrayidx37, align 8, !dbg !3469
  %conv38 = zext i32 %i.1 to i64, !dbg !3470
  %add39 = add i64 %11, %conv38, !dbg !3471
  %shr40 = lshr i64 %add39, 3, !dbg !3472
  %idxprom41 = trunc i64 %shr40 to i32, !dbg !3473
  %arrayidx42 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom41, !dbg !3473
  %12 = load i64, ptr %arrayidx42, align 8, !dbg !3474
  %xor43 = xor i64 %12, %shl36, !dbg !3474
  store i64 %xor43, ptr %arrayidx42, align 8, !dbg !3474
  %inc45 = add i32 %i.1, 1, !dbg !3475
    #dbg_value(i32 %inc45, !3425, !DIExpression(), !3409)
  br label %for.cond25, !dbg !3476, !llvm.loop !3477

for.end46:                                        ; preds = %for.cond25
  %conv47 = zext i32 %mlen.addr.0.lcssa to i64, !dbg !3479
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3480
  %13 = load i64, ptr %arrayidx48, align 8, !dbg !3481
  %add49 = add i64 %13, %conv47, !dbg !3481
  store i64 %add49, ptr %arrayidx48, align 8, !dbg !3481
  ret void, !dbg !3482
}

; Function Attrs: nounwind
define internal fastcc void @KeccakF1600_StatePermute(ptr noundef %state) unnamed_addr #0 !dbg !3483 {
entry:
    #dbg_value(ptr %state, !3484, !DIExpression(), !3485)
  %0 = load i64, ptr %state, align 8, !dbg !3486
    #dbg_value(i64 %0, !3487, !DIExpression(), !3485)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3488
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !3488
    #dbg_value(i64 %1, !3489, !DIExpression(), !3485)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3490
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !3490
    #dbg_value(i64 %2, !3491, !DIExpression(), !3485)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3492
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !3492
    #dbg_value(i64 %3, !3493, !DIExpression(), !3485)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3494
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !3494
    #dbg_value(i64 %4, !3495, !DIExpression(), !3485)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3496
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !3496
    #dbg_value(i64 %5, !3497, !DIExpression(), !3485)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3498
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !3498
    #dbg_value(i64 %6, !3499, !DIExpression(), !3485)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3500
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !3500
    #dbg_value(i64 %7, !3501, !DIExpression(), !3485)
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3502
  %8 = load i64, ptr %arrayidx8, align 8, !dbg !3502
    #dbg_value(i64 %8, !3503, !DIExpression(), !3485)
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3504
  %9 = load i64, ptr %arrayidx9, align 8, !dbg !3504
    #dbg_value(i64 %9, !3505, !DIExpression(), !3485)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3506
  %10 = load i64, ptr %arrayidx10, align 8, !dbg !3506
    #dbg_value(i64 %10, !3507, !DIExpression(), !3485)
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3508
  %11 = load i64, ptr %arrayidx11, align 8, !dbg !3508
    #dbg_value(i64 %11, !3509, !DIExpression(), !3485)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3510
  %12 = load i64, ptr %arrayidx12, align 8, !dbg !3510
    #dbg_value(i64 %12, !3511, !DIExpression(), !3485)
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3512
  %13 = load i64, ptr %arrayidx13, align 8, !dbg !3512
    #dbg_value(i64 %13, !3513, !DIExpression(), !3485)
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3514
  %14 = load i64, ptr %arrayidx14, align 8, !dbg !3514
    #dbg_value(i64 %14, !3515, !DIExpression(), !3485)
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3516
  %15 = load i64, ptr %arrayidx15, align 8, !dbg !3516
    #dbg_value(i64 %15, !3517, !DIExpression(), !3485)
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3518
  %16 = load i64, ptr %arrayidx16, align 8, !dbg !3518
    #dbg_value(i64 %16, !3519, !DIExpression(), !3485)
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3520
  %17 = load i64, ptr %arrayidx17, align 8, !dbg !3520
    #dbg_value(i64 %17, !3521, !DIExpression(), !3485)
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3522
  %18 = load i64, ptr %arrayidx18, align 8, !dbg !3522
    #dbg_value(i64 %18, !3523, !DIExpression(), !3485)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3524
  %19 = load i64, ptr %arrayidx19, align 8, !dbg !3524
    #dbg_value(i64 %19, !3525, !DIExpression(), !3485)
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3526
  %20 = load i64, ptr %arrayidx20, align 8, !dbg !3526
    #dbg_value(i64 %20, !3527, !DIExpression(), !3485)
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3528
  %21 = load i64, ptr %arrayidx21, align 8, !dbg !3528
    #dbg_value(i64 %21, !3529, !DIExpression(), !3485)
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3530
  %22 = load i64, ptr %arrayidx22, align 8, !dbg !3530
    #dbg_value(i64 %22, !3531, !DIExpression(), !3485)
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3532
  %23 = load i64, ptr %arrayidx23, align 8, !dbg !3532
    #dbg_value(i64 %23, !3533, !DIExpression(), !3485)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3534
  %24 = load i64, ptr %arrayidx24, align 8, !dbg !3534
    #dbg_value(i64 %24, !3535, !DIExpression(), !3485)
    #dbg_value(i32 0, !3536, !DIExpression(), !3485)
  br label %for.cond, !dbg !3537

for.cond:                                         ; preds = %for.inc, %entry
  %Aso.0 = phi i64 [ %23, %entry ], [ %xor444, %for.inc ], !dbg !3485
  %Asi.0 = phi i64 [ %22, %entry ], [ %xor441, %for.inc ], !dbg !3485
  %Ase.0 = phi i64 [ %21, %entry ], [ %xor438, %for.inc ], !dbg !3485
  %Asa.0 = phi i64 [ %20, %entry ], [ %xor435, %for.inc ], !dbg !3485
  %Amu.0 = phi i64 [ %19, %entry ], [ %xor412, %for.inc ], !dbg !3485
  %Amo.0 = phi i64 [ %18, %entry ], [ %xor409, %for.inc ], !dbg !3485
  %Ami.0 = phi i64 [ %17, %entry ], [ %xor406, %for.inc ], !dbg !3485
  %Ame.0 = phi i64 [ %16, %entry ], [ %xor403, %for.inc ], !dbg !3485
  %Ama.0 = phi i64 [ %15, %entry ], [ %xor400, %for.inc ], !dbg !3485
  %Aku.0 = phi i64 [ %14, %entry ], [ %xor377, %for.inc ], !dbg !3485
  %Ako.0 = phi i64 [ %13, %entry ], [ %xor374, %for.inc ], !dbg !3485
  %Aki.0 = phi i64 [ %12, %entry ], [ %xor371, %for.inc ], !dbg !3485
  %Ake.0 = phi i64 [ %11, %entry ], [ %xor368, %for.inc ], !dbg !3485
  %Aka.0 = phi i64 [ %10, %entry ], [ %xor365, %for.inc ], !dbg !3485
  %Agu.0 = phi i64 [ %9, %entry ], [ %xor342, %for.inc ], !dbg !3485
  %Ago.0 = phi i64 [ %8, %entry ], [ %xor339, %for.inc ], !dbg !3485
  %Agi.0 = phi i64 [ %7, %entry ], [ %xor336, %for.inc ], !dbg !3485
  %Age.0 = phi i64 [ %6, %entry ], [ %xor333, %for.inc ], !dbg !3485
  %Aga.0 = phi i64 [ %5, %entry ], [ %xor330, %for.inc ], !dbg !3485
  %Abu.0 = phi i64 [ %4, %entry ], [ %xor307, %for.inc ], !dbg !3485
  %Abo.0 = phi i64 [ %3, %entry ], [ %xor304, %for.inc ], !dbg !3485
  %Abi.0 = phi i64 [ %2, %entry ], [ %xor301, %for.inc ], !dbg !3485
  %Abe.0 = phi i64 [ %1, %entry ], [ %xor298, %for.inc ], !dbg !3485
  %Aba.0 = phi i64 [ %0, %entry ], [ %xor295, %for.inc ], !dbg !3485
  %round.0 = phi i32 [ 0, %entry ], [ %add448, %for.inc ], !dbg !3539
  %Asu.0 = phi i64 [ %24, %entry ], [ %xor447, %for.inc ], !dbg !3485
    #dbg_value(i64 %Asu.0, !3535, !DIExpression(), !3485)
    #dbg_value(i32 %round.0, !3536, !DIExpression(), !3485)
    #dbg_value(i64 %Aba.0, !3487, !DIExpression(), !3485)
    #dbg_value(i64 %Abe.0, !3489, !DIExpression(), !3485)
    #dbg_value(i64 %Abi.0, !3491, !DIExpression(), !3485)
    #dbg_value(i64 %Abo.0, !3493, !DIExpression(), !3485)
    #dbg_value(i64 %Abu.0, !3495, !DIExpression(), !3485)
    #dbg_value(i64 %Aga.0, !3497, !DIExpression(), !3485)
    #dbg_value(i64 %Age.0, !3499, !DIExpression(), !3485)
    #dbg_value(i64 %Agi.0, !3501, !DIExpression(), !3485)
    #dbg_value(i64 %Ago.0, !3503, !DIExpression(), !3485)
    #dbg_value(i64 %Agu.0, !3505, !DIExpression(), !3485)
    #dbg_value(i64 %Aka.0, !3507, !DIExpression(), !3485)
    #dbg_value(i64 %Ake.0, !3509, !DIExpression(), !3485)
    #dbg_value(i64 %Aki.0, !3511, !DIExpression(), !3485)
    #dbg_value(i64 %Ako.0, !3513, !DIExpression(), !3485)
    #dbg_value(i64 %Aku.0, !3515, !DIExpression(), !3485)
    #dbg_value(i64 %Ama.0, !3517, !DIExpression(), !3485)
    #dbg_value(i64 %Ame.0, !3519, !DIExpression(), !3485)
    #dbg_value(i64 %Ami.0, !3521, !DIExpression(), !3485)
    #dbg_value(i64 %Amo.0, !3523, !DIExpression(), !3485)
    #dbg_value(i64 %Amu.0, !3525, !DIExpression(), !3485)
    #dbg_value(i64 %Asa.0, !3527, !DIExpression(), !3485)
    #dbg_value(i64 %Ase.0, !3529, !DIExpression(), !3485)
    #dbg_value(i64 %Asi.0, !3531, !DIExpression(), !3485)
    #dbg_value(i64 %Aso.0, !3533, !DIExpression(), !3485)
  %cmp = icmp samesign ult i32 %round.0, 24, !dbg !3540
  br i1 %cmp, label %for.inc, label %for.end, !dbg !3542

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0, i64 %Aga.0), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0, i64 %Age.0), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0, i64 %Agi.0), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0, i64 %Ago.0), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0, i64 %Agu.0), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3546, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3547, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3543, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3546, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3547, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3543, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3513, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3546, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3547, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3543, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3546, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3547, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3543, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3546, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3547, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3576, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3546, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3547, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3543, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3546, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3547, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3543, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3546, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3547, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3513, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3543, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3546, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3576, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3547, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3543, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3546, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 poison, !3547, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor32 = xor i64 %Abi.0, %Agi.0, !dbg !3578
    #dbg_value(!DIArgList(i64 %xor32, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor33 = xor i64 %xor32, %Aki.0, !dbg !3580
    #dbg_value(!DIArgList(i64 %xor33, i64 %Asi.0, i64 %Ami.0), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor34 = xor i64 %xor33, %Ami.0, !dbg !3581
    #dbg_value(!DIArgList(i64 %xor34, i64 %Asi.0), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor35 = xor i64 %xor34, %Asi.0, !dbg !3582
    #dbg_value(i64 %xor35, !3545, !DIExpression(), !3485)
  %xor40 = xor i64 %Abu.0, %Agu.0, !dbg !3583
    #dbg_value(!DIArgList(i64 %xor40, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor41 = xor i64 %xor40, %Aku.0, !dbg !3584
    #dbg_value(!DIArgList(i64 %xor41, i64 %Asu.0, i64 %Amu.0), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor42 = xor i64 %xor41, %Amu.0, !dbg !3585
    #dbg_value(!DIArgList(i64 %xor42, i64 %Asu.0), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor43 = xor i64 %xor42, %Asu.0, !dbg !3586
    #dbg_value(i64 %xor43, !3547, !DIExpression(), !3485)
  %25 = shl i64 %xor43, 1, !dbg !3587
  %26 = lshr i64 %xor43, 63, !dbg !3587
  %27 = or i64 %25, %26, !dbg !3587
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor35, i64 %27), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor35, i64 %27), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor35, i64 %27), !3513, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor35, i64 %27), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor35, i64 %27), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor35, i64 %27), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor57 = xor i64 %xor35, %27, !dbg !3588
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor57), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor57), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor57), !3513, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor57), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor57), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 %xor57, !3551, !DIExpression(), !3485)
  %xor203 = xor i64 %Ago.0, %xor57, !dbg !3589
    #dbg_value(i64 %xor203, !3503, !DIExpression(), !3485)
  %28 = shl i64 %xor203, 55, !dbg !3590
  %29 = lshr i64 %xor203, 9, !dbg !3590
  %30 = or i64 %28, %29, !dbg !3590
    #dbg_value(i64 %30, !3544, !DIExpression(), !3485)
  %xor28 = xor i64 %Abe.0, %Age.0, !dbg !3591
    #dbg_value(!DIArgList(i64 %xor28, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor29 = xor i64 %xor28, %Ake.0, !dbg !3592
    #dbg_value(!DIArgList(i64 %xor29, i64 %Ase.0, i64 %Ame.0), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor30 = xor i64 %xor29, %Ame.0, !dbg !3593
    #dbg_value(!DIArgList(i64 %xor30, i64 %Ase.0), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor31 = xor i64 %xor30, %Ase.0, !dbg !3594
    #dbg_value(i64 %xor31, !3544, !DIExpression(), !3485)
  %31 = shl i64 %xor31, 1, !dbg !3595
  %32 = lshr i64 %xor31, 63, !dbg !3595
  %33 = or i64 %31, %32, !dbg !3595
    #dbg_value(!DIArgList(i64 %xor43, i64 %33), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor43, i64 %33), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor43, i64 %33), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor43, i64 %33), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor43, i64 %33), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor45 = xor i64 %xor43, %33, !dbg !3596
    #dbg_value(i64 %xor45, !3548, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor45), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor45), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor45), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor45), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor211 = xor i64 %Ama.0, %xor45, !dbg !3597
    #dbg_value(i64 %xor211, !3517, !DIExpression(), !3485)
  %34 = shl i64 %xor211, 41, !dbg !3598
  %35 = lshr i64 %xor211, 23, !dbg !3598
  %36 = or i64 %34, %35, !dbg !3598
    #dbg_value(i64 %36, !3546, !DIExpression(), !3485)
  %xor36 = xor i64 %Abo.0, %Ago.0, !dbg !3599
    #dbg_value(!DIArgList(i64 %xor36, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor37 = xor i64 %xor36, %Ako.0, !dbg !3600
    #dbg_value(!DIArgList(i64 %xor37, i64 %Aso.0, i64 %Amo.0), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor38 = xor i64 %xor37, %Amo.0, !dbg !3601
    #dbg_value(!DIArgList(i64 %xor38, i64 %Aso.0), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor39 = xor i64 %xor38, %Aso.0, !dbg !3602
    #dbg_value(i64 %xor39, !3546, !DIExpression(), !3485)
  %xor = xor i64 %Aba.0, %Aga.0, !dbg !3603
    #dbg_value(!DIArgList(i64 %xor, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor25 = xor i64 %xor, %Aka.0, !dbg !3604
    #dbg_value(!DIArgList(i64 %xor25, i64 %Asa.0, i64 %Ama.0), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor26 = xor i64 %xor25, %Ama.0, !dbg !3605
    #dbg_value(!DIArgList(i64 %xor26, i64 %Asa.0), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor27 = xor i64 %xor26, %Asa.0, !dbg !3606
    #dbg_value(i64 %xor27, !3543, !DIExpression(), !3485)
  %37 = shl i64 %xor27, 1, !dbg !3607
  %38 = lshr i64 %xor27, 63, !dbg !3607
  %39 = or i64 %37, %38, !dbg !3607
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor39, i64 %39), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor39, i64 %39), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor39, i64 %39), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor39, i64 %39), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor39, i64 %39), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor39, i64 %39), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor61 = xor i64 %xor39, %39, !dbg !3608
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor61), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor61), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor61), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor61), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 %xor61, !3552, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor61), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor207 = xor i64 %Aku.0, %xor61, !dbg !3609
    #dbg_value(i64 %xor207, !3515, !DIExpression(), !3485)
  %40 = shl i64 %xor207, 39, !dbg !3610
  %41 = lshr i64 %xor207, 25, !dbg !3610
  %42 = or i64 %40, %41, !dbg !3610
    #dbg_value(i64 %42, !3545, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %42), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not222 = xor i64 %42, -1, !dbg !3611
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %not222), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and223 = and i64 %36, %not222, !dbg !3612
    #dbg_value(!DIArgList(i64 %30, i64 %and223), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor224 = xor i64 %30, %and223, !dbg !3613
    #dbg_value(i64 %xor224, !3574, !DIExpression(), !3485)
  %43 = shl i64 %xor39, 1, !dbg !3614
  %44 = lshr i64 %xor39, 63, !dbg !3614
  %45 = or i64 %43, %44, !dbg !3614
    #dbg_value(!DIArgList(i64 %xor31, i64 %45), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor31, i64 %45), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor31, i64 %45), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor31, i64 %45), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor31, i64 %45), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor31, i64 %45), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor53 = xor i64 %xor31, %45, !dbg !3615
    #dbg_value(i64 %xor53, !3550, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor53), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor53), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor53), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor53), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor53), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor67 = xor i64 %Aki.0, %xor53, !dbg !3616
    #dbg_value(i64 %xor67, !3511, !DIExpression(), !3485)
  %46 = shl i64 %xor67, 43, !dbg !3617
  %47 = lshr i64 %xor67, 21, !dbg !3617
  %48 = or i64 %46, %47, !dbg !3617
    #dbg_value(i64 %48, !3545, !DIExpression(), !3485)
  %49 = shl i64 %xor35, 1, !dbg !3618
  %50 = lshr i64 %xor35, 63, !dbg !3618
  %51 = or i64 %49, %50, !dbg !3618
    #dbg_value(!DIArgList(i64 %xor27, i64 %51), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor27, i64 %51), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor27, i64 %51), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor27, i64 %51), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor27, i64 %51), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor27, i64 %51), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor49 = xor i64 %xor27, %51, !dbg !3619
    #dbg_value(i64 %xor49, !3549, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor49), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor49), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor49), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor49), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor49), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor63 = xor i64 %Age.0, %xor49, !dbg !3620
    #dbg_value(i64 %xor63, !3499, !DIExpression(), !3485)
  %52 = shl i64 %xor63, 44, !dbg !3621
  %53 = lshr i64 %xor63, 20, !dbg !3621
  %54 = or i64 %52, %53, !dbg !3621
    #dbg_value(i64 %54, !3544, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %54), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not = xor i64 %54, -1, !dbg !3622
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %not), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and = and i64 %48, %not, !dbg !3623
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %and, i64 %xor45), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %arrayidx80 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %round.0, !dbg !3624
  %55 = load i64, ptr %arrayidx80, align 8, !dbg !3624
    #dbg_value(!DIArgList(i64 %and, i64 %Aba.0, i64 %xor45, i64 %55), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %56 = xor i64 %and, %55, !dbg !3625
    #dbg_value(!DIArgList(i64 %56, i64 %Aba.0, i64 %xor45), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor62 = xor i64 %Aba.0, %xor45, !dbg !3626
    #dbg_value(i64 %xor62, !3487, !DIExpression(), !3485)
    #dbg_value(i64 %xor62, !3543, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %56, i64 %xor62), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor81 = xor i64 %56, %xor62, !dbg !3625
    #dbg_value(i64 %xor81, !3553, !DIExpression(), !3485)
  %xor94 = xor i64 %Abo.0, %xor57, !dbg !3627
    #dbg_value(i64 %xor94, !3493, !DIExpression(), !3485)
  %57 = shl i64 %xor94, 28, !dbg !3628
  %58 = lshr i64 %xor94, 36, !dbg !3628
  %59 = or i64 %57, %58, !dbg !3628
    #dbg_value(i64 %59, !3543, !DIExpression(), !3485)
  %xor102 = xor i64 %Aka.0, %xor45, !dbg !3629
    #dbg_value(i64 %xor102, !3507, !DIExpression(), !3485)
  %60 = shl i64 %xor102, 3, !dbg !3630
  %61 = lshr i64 %xor102, 61, !dbg !3630
  %62 = or i64 %60, %61, !dbg !3630
    #dbg_value(i64 %62, !3545, !DIExpression(), !3485)
  %xor98 = xor i64 %Agu.0, %xor61, !dbg !3631
    #dbg_value(i64 %xor98, !3505, !DIExpression(), !3485)
  %63 = shl i64 %xor98, 20, !dbg !3632
  %64 = lshr i64 %xor98, 44, !dbg !3632
  %65 = or i64 %63, %64, !dbg !3632
    #dbg_value(i64 %65, !3544, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %65), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not114 = xor i64 %65, -1, !dbg !3633
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %not114), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and115 = and i64 %62, %not114, !dbg !3634
    #dbg_value(!DIArgList(i64 %59, i64 %and115), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor116 = xor i64 %59, %and115, !dbg !3635
    #dbg_value(i64 %xor116, !3558, !DIExpression(), !3485)
  %xor234 = xor i64 %xor81, %xor116, !dbg !3636
  %xor129 = xor i64 %Abe.0, %xor49, !dbg !3637
    #dbg_value(i64 %xor129, !3489, !DIExpression(), !3485)
  %66 = shl i64 %xor129, 1, !dbg !3638
  %67 = lshr i64 %xor129, 63, !dbg !3638
  %68 = or i64 %66, %67, !dbg !3638
    #dbg_value(i64 %68, !3543, !DIExpression(), !3485)
  %xor137 = xor i64 %Ako.0, %xor57, !dbg !3639
    #dbg_value(i64 %xor137, !3513, !DIExpression(), !3485)
  %69 = shl i64 %xor137, 25, !dbg !3640
  %70 = lshr i64 %xor137, 39, !dbg !3640
  %71 = or i64 %69, %70, !dbg !3640
    #dbg_value(i64 %71, !3545, !DIExpression(), !3485)
  %xor133 = xor i64 %Agi.0, %xor53, !dbg !3641
    #dbg_value(i64 %xor133, !3501, !DIExpression(), !3485)
  %72 = shl i64 %xor133, 6, !dbg !3642
  %73 = lshr i64 %xor133, 58, !dbg !3642
  %74 = or i64 %72, %73, !dbg !3642
    #dbg_value(i64 %74, !3544, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %74), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not149 = xor i64 %74, -1, !dbg !3643
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %not149), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and150 = and i64 %71, %not149, !dbg !3644
    #dbg_value(!DIArgList(i64 %68, i64 %and150), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor151 = xor i64 %68, %and150, !dbg !3645
    #dbg_value(i64 %xor151, !3563, !DIExpression(), !3485)
  %xor235 = xor i64 %xor234, %xor151, !dbg !3646
  %xor164 = xor i64 %Abu.0, %xor61, !dbg !3647
    #dbg_value(i64 %xor164, !3495, !DIExpression(), !3485)
  %75 = shl i64 %xor164, 27, !dbg !3648
  %76 = lshr i64 %xor164, 37, !dbg !3648
  %77 = or i64 %75, %76, !dbg !3648
    #dbg_value(i64 %77, !3543, !DIExpression(), !3485)
  %xor172 = xor i64 %Ake.0, %xor49, !dbg !3649
    #dbg_value(i64 %xor172, !3509, !DIExpression(), !3485)
  %78 = shl i64 %xor172, 10, !dbg !3650
  %79 = lshr i64 %xor172, 54, !dbg !3650
  %80 = or i64 %78, %79, !dbg !3650
    #dbg_value(i64 %80, !3545, !DIExpression(), !3485)
  %xor168 = xor i64 %Aga.0, %xor45, !dbg !3651
    #dbg_value(i64 %xor168, !3497, !DIExpression(), !3485)
  %81 = shl i64 %xor168, 36, !dbg !3652
  %82 = lshr i64 %xor168, 28, !dbg !3652
  %83 = or i64 %81, %82, !dbg !3652
    #dbg_value(i64 %83, !3544, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %83), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not184 = xor i64 %83, -1, !dbg !3653
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %not184), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and185 = and i64 %80, %not184, !dbg !3654
    #dbg_value(!DIArgList(i64 %77, i64 %and185), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor186 = xor i64 %77, %and185, !dbg !3655
    #dbg_value(i64 %xor186, !3568, !DIExpression(), !3485)
  %xor236 = xor i64 %xor235, %xor186, !dbg !3656
  %xor199 = xor i64 %Abi.0, %xor53, !dbg !3657
    #dbg_value(i64 %xor199, !3491, !DIExpression(), !3485)
  %84 = shl i64 %xor199, 62, !dbg !3658
  %85 = lshr i64 %xor199, 2, !dbg !3658
  %86 = or i64 %84, %85, !dbg !3658
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %30), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %30), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %not219 = xor i64 %30, -1, !dbg !3659
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %not219), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %not219), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %and220 = and i64 %42, %not219, !dbg !3660
    #dbg_value(!DIArgList(i64 %86, i64 %and220), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %and220), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor221 = xor i64 %86, %and220, !dbg !3661
    #dbg_value(i64 %xor221, !3573, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor221), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor237 = xor i64 %xor236, %xor221, !dbg !3662
    #dbg_value(i64 %xor237, !3543, !DIExpression(), !3485)
  %xor75 = xor i64 %Asu.0, %xor61, !dbg !3663
    #dbg_value(i64 %xor75, !3535, !DIExpression(), !3485)
  %87 = shl i64 %xor75, 14, !dbg !3664
  %88 = lshr i64 %xor75, 50, !dbg !3664
  %89 = or i64 %87, %88, !dbg !3664
    #dbg_value(i64 %89, !3547, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %xor62), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor71 = xor i64 %Amo.0, %xor57, !dbg !3665
    #dbg_value(i64 %xor71, !3523, !DIExpression(), !3485)
  %90 = shl i64 %xor71, 21, !dbg !3666
  %91 = lshr i64 %xor71, 43, !dbg !3666
  %92 = or i64 %90, %91, !dbg !3666
    #dbg_value(i64 %92, !3546, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %92), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %54, i64 %92, i64 %48), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %92, i64 %xor62, i64 %89), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not85 = xor i64 %92, -1, !dbg !3667
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %not85), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and86 = and i64 %89, %not85, !dbg !3668
    #dbg_value(!DIArgList(i64 %48, i64 %and86), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor87 = xor i64 %48, %and86, !dbg !3669
    #dbg_value(i64 %xor87, !3555, !DIExpression(), !3485)
  %xor110 = xor i64 %Asi.0, %xor53, !dbg !3670
    #dbg_value(i64 %xor110, !3531, !DIExpression(), !3485)
  %93 = shl i64 %xor110, 61, !dbg !3671
  %94 = lshr i64 %xor110, 3, !dbg !3671
  %95 = or i64 %93, %94, !dbg !3671
    #dbg_value(i64 %95, !3547, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %59), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor106 = xor i64 %Ame.0, %xor49, !dbg !3672
    #dbg_value(i64 %xor106, !3519, !DIExpression(), !3485)
  %96 = shl i64 %xor106, 45, !dbg !3673
  %97 = lshr i64 %xor106, 19, !dbg !3673
  %98 = or i64 %96, %97, !dbg !3673
    #dbg_value(i64 %98, !3546, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %98), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %95), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %65, i64 %98, i64 %62), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not120 = xor i64 %98, -1, !dbg !3674
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %not120), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and121 = and i64 %95, %not120, !dbg !3675
    #dbg_value(!DIArgList(i64 %62, i64 %and121), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor122 = xor i64 %62, %and121, !dbg !3676
    #dbg_value(i64 %xor122, !3560, !DIExpression(), !3485)
  %xor242 = xor i64 %xor87, %xor122, !dbg !3677
  %xor145 = xor i64 %Asa.0, %xor45, !dbg !3678
    #dbg_value(i64 %xor145, !3527, !DIExpression(), !3485)
  %99 = shl i64 %xor145, 18, !dbg !3679
  %100 = lshr i64 %xor145, 46, !dbg !3679
  %101 = or i64 %99, %100, !dbg !3679
    #dbg_value(i64 %101, !3547, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %68), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor141 = xor i64 %Amu.0, %xor61, !dbg !3680
    #dbg_value(i64 %xor141, !3525, !DIExpression(), !3485)
  %102 = shl i64 %xor141, 8, !dbg !3681
  %103 = lshr i64 %xor141, 56, !dbg !3681
  %104 = or i64 %102, %103, !dbg !3681
    #dbg_value(i64 %104, !3546, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %104), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %74, i64 %104, i64 %71), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %104, i64 %68, i64 %101), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not155 = xor i64 %104, -1, !dbg !3682
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %not155), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and156 = and i64 %101, %not155, !dbg !3683
    #dbg_value(!DIArgList(i64 %71, i64 %and156), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor157 = xor i64 %71, %and156, !dbg !3684
    #dbg_value(i64 %xor157, !3565, !DIExpression(), !3485)
  %xor243 = xor i64 %xor242, %xor157, !dbg !3685
  %xor180 = xor i64 %Aso.0, %xor57, !dbg !3686
    #dbg_value(i64 %xor180, !3533, !DIExpression(), !3485)
  %105 = shl i64 %xor180, 56, !dbg !3687
  %106 = lshr i64 %xor180, 8, !dbg !3687
  %107 = or i64 %105, %106, !dbg !3687
    #dbg_value(i64 %107, !3547, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %77), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor176 = xor i64 %Ami.0, %xor53, !dbg !3688
    #dbg_value(i64 %xor176, !3521, !DIExpression(), !3485)
  %108 = shl i64 %xor176, 15, !dbg !3689
  %109 = lshr i64 %xor176, 49, !dbg !3689
  %110 = or i64 %108, %109, !dbg !3689
    #dbg_value(i64 %110, !3546, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %110), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %83, i64 %110, i64 %80), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %110, i64 %77, i64 %107), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %48), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %not190 = xor i64 %110, -1, !dbg !3690
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %not190), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and191 = and i64 %107, %not190, !dbg !3691
    #dbg_value(!DIArgList(i64 %80, i64 %and191), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor192 = xor i64 %80, %and191, !dbg !3692
    #dbg_value(i64 %xor192, !3570, !DIExpression(), !3485)
  %xor244 = xor i64 %xor243, %xor192, !dbg !3693
  %xor215 = xor i64 %Ase.0, %xor49, !dbg !3694
    #dbg_value(i64 %xor215, !3529, !DIExpression(), !3485)
  %111 = shl i64 %xor215, 2, !dbg !3695
  %112 = lshr i64 %xor215, 62, !dbg !3695
  %113 = or i64 %111, %112, !dbg !3695
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %36), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %86), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %36, i64 %86, i64 %113), !3576, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %36), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %95), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %xor62), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %not225 = xor i64 %36, -1, !dbg !3696
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %not225), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %not225), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %and226 = and i64 %113, %not225, !dbg !3697
    #dbg_value(!DIArgList(i64 %42, i64 %and226), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %and226), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor227 = xor i64 %42, %and226, !dbg !3698
    #dbg_value(i64 %xor227, !3575, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor227), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor245 = xor i64 %xor244, %xor227, !dbg !3699
    #dbg_value(i64 %xor245, !3545, !DIExpression(), !3485)
  %114 = shl i64 %xor245, 1, !dbg !3700
  %115 = lshr i64 %xor245, 63, !dbg !3700
  %116 = or i64 %114, %115, !dbg !3700
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor237, i64 %116), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %54, i64 %xor237, i64 %92, i64 %48, i64 %116), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %65, i64 %xor237, i64 %98, i64 %62, i64 %116), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %74, i64 %xor237, i64 %104, i64 %71, i64 %116), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %83, i64 %xor237, i64 %110, i64 %80, i64 %116), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor237, i64 %116), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor261 = xor i64 %xor237, %116, !dbg !3701
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor261), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %48), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %62), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %71), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %80), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 %xor261, !3549, !DIExpression(), !3485)
  %xor429 = xor i64 %xor224, %xor261, !dbg !3702
    #dbg_value(i64 %xor429, !3574, !DIExpression(), !3485)
  %117 = shl i64 %xor429, 2, !dbg !3703
  %118 = lshr i64 %xor429, 62, !dbg !3703
  %119 = or i64 %117, %118, !dbg !3703
    #dbg_value(i64 %119, !3547, !DIExpression(), !3485)
  %not123 = xor i64 %95, -1, !dbg !3704
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %not123), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %not123), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %and124 = and i64 %59, %not123, !dbg !3705
    #dbg_value(!DIArgList(i64 %98, i64 %and124), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %and124), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor125 = xor i64 %98, %and124, !dbg !3706
    #dbg_value(i64 %xor125, !3561, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %89), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %not91 = xor i64 %xor62, -1, !dbg !3707
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %not91), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %not91), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %and92 = and i64 %54, %not91, !dbg !3708
    #dbg_value(!DIArgList(i64 %89, i64 %and92), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %and92), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor93 = xor i64 %89, %and92, !dbg !3709
    #dbg_value(i64 %xor93, !3557, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %not126 = xor i64 %59, -1, !dbg !3710
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %not126), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %not126), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %and127 = and i64 %65, %not126, !dbg !3711
    #dbg_value(!DIArgList(i64 %95, i64 %and127), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %and127), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor128 = xor i64 %95, %and127, !dbg !3712
    #dbg_value(i64 %xor128, !3562, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %xor128), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor250 = xor i64 %xor93, %xor128, !dbg !3713
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %not161 = xor i64 %68, -1, !dbg !3714
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %not161), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %not161), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %and162 = and i64 %74, %not161, !dbg !3715
    #dbg_value(!DIArgList(i64 %101, i64 %and162), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %and162), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor163 = xor i64 %101, %and162, !dbg !3716
    #dbg_value(i64 %xor163, !3567, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %xor163), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor251 = xor i64 %xor250, %xor163, !dbg !3717
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %not196 = xor i64 %77, -1, !dbg !3718
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %not196), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %not196), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %and197 = and i64 %83, %not196, !dbg !3719
    #dbg_value(!DIArgList(i64 %107, i64 %and197), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %and197), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor198 = xor i64 %107, %and197, !dbg !3720
    #dbg_value(i64 %xor198, !3572, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %xor198), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor252 = xor i64 %xor251, %xor198, !dbg !3721
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %86), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %not231 = xor i64 %86, -1, !dbg !3722
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %not231), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %not231), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %and232 = and i64 %30, %not231, !dbg !3723
    #dbg_value(!DIArgList(i64 %113, i64 %and232), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %and232), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor233 = xor i64 %113, %and232, !dbg !3724
    #dbg_value(i64 %xor233, !3577, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor233), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor253 = xor i64 %xor252, %xor233, !dbg !3725
    #dbg_value(i64 %xor253, !3547, !DIExpression(), !3485)
  %120 = shl i64 %xor253, 1, !dbg !3726
  %121 = lshr i64 %xor253, 63, !dbg !3726
  %122 = or i64 %120, %121, !dbg !3726
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor245, i64 %122), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %92, i64 %xor245, i64 %xor62, i64 %89, i64 %122), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %104, i64 %xor245, i64 %68, i64 %101, i64 %122), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %110, i64 %xor245, i64 %77, i64 %107, i64 %122), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %36, i64 %xor245, i64 %86, i64 %113, i64 %122), !3576, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor245, i64 %122), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor269 = xor i64 %xor245, %122, !dbg !3727
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor269), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %89), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %101), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %107), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %113), !3576, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 %xor269, !3551, !DIExpression(), !3485)
  %xor417 = xor i64 %xor125, %xor269, !dbg !3728
    #dbg_value(i64 %xor417, !3561, !DIExpression(), !3485)
  %123 = shl i64 %xor417, 55, !dbg !3729
  %124 = lshr i64 %xor417, 9, !dbg !3729
  %125 = or i64 %123, %124, !dbg !3729
    #dbg_value(i64 %125, !3544, !DIExpression(), !3485)
  %not82 = xor i64 %48, -1, !dbg !3730
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %not82), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %not82), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %and83 = and i64 %92, %not82, !dbg !3731
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %and83), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %and83), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor84 = xor i64 %54, %and83, !dbg !3732
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor261), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %not117 = xor i64 %62, -1, !dbg !3733
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %not117), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %not117), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %and118 = and i64 %98, %not117, !dbg !3734
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %and118), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %and118), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor119 = xor i64 %65, %and118, !dbg !3735
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %xor119), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor119, i64 %xor261), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor238 = xor i64 %xor84, %xor119, !dbg !3736
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %not152 = xor i64 %71, -1, !dbg !3737
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %not152), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %not152), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %and153 = and i64 %104, %not152, !dbg !3738
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %and153), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %and153), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor154 = xor i64 %74, %and153, !dbg !3739
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %xor154), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor154, i64 %xor261), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor239 = xor i64 %xor238, %xor154, !dbg !3740
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %80), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %not187 = xor i64 %80, -1, !dbg !3741
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %not187), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %not187), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %and188 = and i64 %110, %not187, !dbg !3742
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %and188), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %and188), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor189 = xor i64 %83, %and188, !dbg !3743
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor189), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor189, i64 %xor261), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor240 = xor i64 %xor239, %xor189, !dbg !3744
    #dbg_value(!DIArgList(i64 %xor240, i64 %xor224), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor241 = xor i64 %xor240, %xor224, !dbg !3745
    #dbg_value(i64 %xor241, !3544, !DIExpression(), !3485)
  %not88 = xor i64 %89, -1, !dbg !3746
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %not88), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %not88), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %and89 = and i64 %xor62, %not88, !dbg !3747
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %and89), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %and89), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor90 = xor i64 %92, %and89, !dbg !3748
    #dbg_value(!DIArgList(i64 %xor90, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor90, i64 %xor269), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor246 = xor i64 %xor90, %xor125, !dbg !3749
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %not158 = xor i64 %101, -1, !dbg !3750
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %not158), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %not158), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %and159 = and i64 %68, %not158, !dbg !3751
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %and159), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %and159), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor160 = xor i64 %104, %and159, !dbg !3752
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %xor160), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor160, i64 %xor269), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor247 = xor i64 %xor246, %xor160, !dbg !3753
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %not193 = xor i64 %107, -1, !dbg !3754
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %not193), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %not193), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %and194 = and i64 %77, %not193, !dbg !3755
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %and194), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %and194), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor195 = xor i64 %110, %and194, !dbg !3756
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %xor195), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor195, i64 %xor269), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor248 = xor i64 %xor247, %xor195, !dbg !3757
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %113), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %not228 = xor i64 %113, -1, !dbg !3758
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %not228), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %not228), !3576, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %and229 = and i64 %86, %not228, !dbg !3759
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %and229), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %and229), !3576, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor230 = xor i64 %36, %and229, !dbg !3760
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor230), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor230, i64 %xor269), !3576, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor249 = xor i64 %xor248, %xor230, !dbg !3761
    #dbg_value(i64 %xor249, !3546, !DIExpression(), !3485)
  %126 = shl i64 %xor249, 1, !dbg !3762
  %127 = lshr i64 %xor249, 63, !dbg !3762
  %128 = or i64 %126, %127, !dbg !3762
    #dbg_value(!DIArgList(i64 %xor241, i64 %128), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor241, i64 %128), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor241, i64 %128), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor241, i64 %128), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor241, i64 %128), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor241, i64 %128), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor265 = xor i64 %xor241, %128, !dbg !3763
    #dbg_value(i64 %xor265, !3550, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor265), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor265), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor265), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor265), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor265), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor413 = xor i64 %xor87, %xor265, !dbg !3764
    #dbg_value(i64 %xor413, !3555, !DIExpression(), !3485)
  %129 = shl i64 %xor413, 62, !dbg !3765
  %130 = lshr i64 %xor413, 2, !dbg !3765
  %131 = or i64 %129, %130, !dbg !3765
    #dbg_value(i64 %131, !3543, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %131), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not445 = xor i64 %131, -1, !dbg !3766
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %not445), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and446 = and i64 %125, %not445, !dbg !3767
    #dbg_value(!DIArgList(i64 %119, i64 %and446), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor447 = xor i64 %119, %and446, !dbg !3768
    #dbg_value(i64 %xor447, !3535, !DIExpression(), !3485)
  %132 = shl i64 %xor241, 1, !dbg !3769
  %133 = lshr i64 %xor241, 63, !dbg !3769
  %134 = or i64 %132, %133, !dbg !3769
    #dbg_value(!DIArgList(i64 %xor253, i64 %134), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor253, i64 %134), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor253, i64 %134), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor253, i64 %134), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor253, i64 %134), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor257 = xor i64 %xor253, %134, !dbg !3770
    #dbg_value(i64 %xor257, !3548, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor257), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor257), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor257), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor257), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor425 = xor i64 %xor186, %xor257, !dbg !3771
    #dbg_value(i64 %xor425, !3568, !DIExpression(), !3485)
  %135 = shl i64 %xor425, 41, !dbg !3772
  %136 = lshr i64 %xor425, 23, !dbg !3772
  %137 = or i64 %135, %136, !dbg !3772
    #dbg_value(i64 %137, !3546, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %119), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not442 = xor i64 %119, -1, !dbg !3773
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %not442), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and443 = and i64 %131, %not442, !dbg !3774
    #dbg_value(!DIArgList(i64 %137, i64 %and443), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor444 = xor i64 %137, %and443, !dbg !3775
    #dbg_value(i64 %xor444, !3533, !DIExpression(), !3485)
  %138 = shl i64 %xor237, 1, !dbg !3776
  %139 = lshr i64 %xor237, 63, !dbg !3776
  %140 = or i64 %138, %139, !dbg !3776
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor249, i64 %140), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor249, i64 %140), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor249, i64 %140), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor249, i64 %140), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor249, i64 %140), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor249, i64 %140), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor273 = xor i64 %xor249, %140, !dbg !3777
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor273), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor273), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor273), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor273), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(i64 %xor273, !3552, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor273), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor421 = xor i64 %xor163, %xor273, !dbg !3778
    #dbg_value(i64 %xor421, !3567, !DIExpression(), !3485)
  %141 = shl i64 %xor421, 39, !dbg !3779
  %142 = lshr i64 %xor421, 25, !dbg !3779
  %143 = or i64 %141, %142, !dbg !3779
    #dbg_value(i64 %143, !3545, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %137), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %143), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %125), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not439 = xor i64 %137, -1, !dbg !3780
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %not439), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and440 = and i64 %119, %not439, !dbg !3781
    #dbg_value(!DIArgList(i64 %143, i64 %and440), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor441 = xor i64 %143, %and440, !dbg !3782
    #dbg_value(i64 %xor441, !3531, !DIExpression(), !3485)
  %not436 = xor i64 %143, -1, !dbg !3783
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %not436), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and437 = and i64 %137, %not436, !dbg !3784
    #dbg_value(!DIArgList(i64 %125, i64 %and437), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor438 = xor i64 %125, %and437, !dbg !3785
    #dbg_value(i64 %xor438, !3529, !DIExpression(), !3485)
  %not433 = xor i64 %125, -1, !dbg !3786
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %not433), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and434 = and i64 %143, %not433, !dbg !3787
    #dbg_value(!DIArgList(i64 %131, i64 %and434), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor435 = xor i64 %131, %and434, !dbg !3788
    #dbg_value(i64 %xor435, !3527, !DIExpression(), !3485)
  %xor394 = xor i64 %xor230, %xor269, !dbg !3789
    #dbg_value(i64 %xor394, !3576, !DIExpression(), !3485)
  %144 = shl i64 %xor394, 56, !dbg !3790
  %145 = lshr i64 %xor394, 8, !dbg !3790
  %146 = or i64 %144, %145, !dbg !3790
    #dbg_value(i64 %146, !3547, !DIExpression(), !3485)
  %xor382 = xor i64 %xor116, %xor257, !dbg !3791
    #dbg_value(i64 %xor382, !3558, !DIExpression(), !3485)
  %147 = shl i64 %xor382, 36, !dbg !3792
  %148 = lshr i64 %xor382, 28, !dbg !3792
  %149 = or i64 %147, %148, !dbg !3792
    #dbg_value(i64 %149, !3544, !DIExpression(), !3485)
  %xor378 = xor i64 %xor93, %xor273, !dbg !3793
    #dbg_value(i64 %xor378, !3557, !DIExpression(), !3485)
  %150 = shl i64 %xor378, 27, !dbg !3794
  %151 = lshr i64 %xor378, 37, !dbg !3794
  %152 = or i64 %150, %151, !dbg !3794
    #dbg_value(i64 %152, !3543, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %152), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not410 = xor i64 %152, -1, !dbg !3795
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %not410), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and411 = and i64 %149, %not410, !dbg !3796
    #dbg_value(!DIArgList(i64 %146, i64 %and411), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor412 = xor i64 %146, %and411, !dbg !3797
    #dbg_value(i64 %xor412, !3525, !DIExpression(), !3485)
  %xor390 = xor i64 %xor192, %xor265, !dbg !3798
    #dbg_value(i64 %xor390, !3570, !DIExpression(), !3485)
  %153 = shl i64 %xor390, 15, !dbg !3799
  %154 = lshr i64 %xor390, 49, !dbg !3799
  %155 = or i64 %153, %154, !dbg !3799
    #dbg_value(i64 %155, !3546, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %146), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not407 = xor i64 %146, -1, !dbg !3800
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %not407), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and408 = and i64 %152, %not407, !dbg !3801
    #dbg_value(!DIArgList(i64 %155, i64 %and408), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor409 = xor i64 %155, %and408, !dbg !3802
    #dbg_value(i64 %xor409, !3523, !DIExpression(), !3485)
  %xor386 = xor i64 %xor154, %xor261, !dbg !3803
    #dbg_value(i64 %xor386, !3564, !DIExpression(), !3485)
  %156 = shl i64 %xor386, 10, !dbg !3804
  %157 = lshr i64 %xor386, 54, !dbg !3804
  %158 = or i64 %156, %157, !dbg !3804
    #dbg_value(i64 %158, !3545, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %155), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %158), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %149), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not404 = xor i64 %155, -1, !dbg !3805
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %not404), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and405 = and i64 %146, %not404, !dbg !3806
    #dbg_value(!DIArgList(i64 %158, i64 %and405), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor406 = xor i64 %158, %and405, !dbg !3807
    #dbg_value(i64 %xor406, !3521, !DIExpression(), !3485)
  %not401 = xor i64 %158, -1, !dbg !3808
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %not401), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and402 = and i64 %155, %not401, !dbg !3809
    #dbg_value(!DIArgList(i64 %149, i64 %and402), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor403 = xor i64 %149, %and402, !dbg !3810
    #dbg_value(i64 %xor403, !3519, !DIExpression(), !3485)
  %not398 = xor i64 %149, -1, !dbg !3811
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %not398), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and399 = and i64 %158, %not398, !dbg !3812
    #dbg_value(!DIArgList(i64 %152, i64 %and399), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor400 = xor i64 %152, %and399, !dbg !3813
    #dbg_value(i64 %xor400, !3517, !DIExpression(), !3485)
  %xor359 = xor i64 %xor221, %xor257, !dbg !3814
    #dbg_value(i64 %xor359, !3573, !DIExpression(), !3485)
  %159 = shl i64 %xor359, 18, !dbg !3815
  %160 = lshr i64 %xor359, 46, !dbg !3815
  %161 = or i64 %159, %160, !dbg !3815
    #dbg_value(i64 %161, !3547, !DIExpression(), !3485)
  %xor347 = xor i64 %xor122, %xor265, !dbg !3816
    #dbg_value(i64 %xor347, !3560, !DIExpression(), !3485)
  %162 = shl i64 %xor347, 6, !dbg !3817
  %163 = lshr i64 %xor347, 58, !dbg !3817
  %164 = or i64 %162, %163, !dbg !3817
    #dbg_value(i64 %164, !3544, !DIExpression(), !3485)
  %xor343 = xor i64 %xor84, %xor261, !dbg !3818
    #dbg_value(i64 %xor343, !3554, !DIExpression(), !3485)
  %165 = shl i64 %xor343, 1, !dbg !3819
  %166 = lshr i64 %xor343, 63, !dbg !3819
  %167 = or i64 %165, %166, !dbg !3819
    #dbg_value(i64 %167, !3543, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %167), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not375 = xor i64 %167, -1, !dbg !3820
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %not375), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and376 = and i64 %164, %not375, !dbg !3821
    #dbg_value(!DIArgList(i64 %161, i64 %and376), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor377 = xor i64 %161, %and376, !dbg !3822
    #dbg_value(i64 %xor377, !3515, !DIExpression(), !3485)
  %xor355 = xor i64 %xor198, %xor273, !dbg !3823
    #dbg_value(i64 %xor355, !3572, !DIExpression(), !3485)
  %168 = shl i64 %xor355, 8, !dbg !3824
  %169 = lshr i64 %xor355, 56, !dbg !3824
  %170 = or i64 %168, %169, !dbg !3824
    #dbg_value(i64 %170, !3546, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %161), !3513, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not372 = xor i64 %161, -1, !dbg !3825
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %not372), !3513, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and373 = and i64 %167, %not372, !dbg !3826
    #dbg_value(!DIArgList(i64 %170, i64 %and373), !3513, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor374 = xor i64 %170, %and373, !dbg !3827
    #dbg_value(i64 %xor374, !3513, !DIExpression(), !3485)
  %xor351 = xor i64 %xor160, %xor269, !dbg !3828
    #dbg_value(i64 %xor351, !3566, !DIExpression(), !3485)
  %171 = shl i64 %xor351, 25, !dbg !3829
  %172 = lshr i64 %xor351, 39, !dbg !3829
  %173 = or i64 %171, %172, !dbg !3829
    #dbg_value(i64 %173, !3545, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %170), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %173), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %164), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not369 = xor i64 %170, -1, !dbg !3830
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %not369), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and370 = and i64 %161, %not369, !dbg !3831
    #dbg_value(!DIArgList(i64 %173, i64 %and370), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor371 = xor i64 %173, %and370, !dbg !3832
    #dbg_value(i64 %xor371, !3511, !DIExpression(), !3485)
  %not366 = xor i64 %173, -1, !dbg !3833
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %not366), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and367 = and i64 %170, %not366, !dbg !3834
    #dbg_value(!DIArgList(i64 %164, i64 %and367), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor368 = xor i64 %164, %and367, !dbg !3835
    #dbg_value(i64 %xor368, !3509, !DIExpression(), !3485)
  %not363 = xor i64 %164, -1, !dbg !3836
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %not363), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and364 = and i64 %173, %not363, !dbg !3837
    #dbg_value(!DIArgList(i64 %167, i64 %and364), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor365 = xor i64 %167, %and364, !dbg !3838
    #dbg_value(i64 %xor365, !3507, !DIExpression(), !3485)
  %xor324 = xor i64 %xor227, %xor265, !dbg !3839
    #dbg_value(i64 %xor324, !3575, !DIExpression(), !3485)
  %174 = shl i64 %xor324, 61, !dbg !3840
  %175 = lshr i64 %xor324, 3, !dbg !3840
  %176 = or i64 %174, %175, !dbg !3840
    #dbg_value(i64 %176, !3547, !DIExpression(), !3485)
  %xor312 = xor i64 %xor128, %xor273, !dbg !3841
    #dbg_value(i64 %xor312, !3562, !DIExpression(), !3485)
  %177 = shl i64 %xor312, 20, !dbg !3842
  %178 = lshr i64 %xor312, 44, !dbg !3842
  %179 = or i64 %177, %178, !dbg !3842
    #dbg_value(i64 %179, !3544, !DIExpression(), !3485)
  %xor308 = xor i64 %xor90, %xor269, !dbg !3843
    #dbg_value(i64 %xor308, !3556, !DIExpression(), !3485)
  %180 = shl i64 %xor308, 28, !dbg !3844
  %181 = lshr i64 %xor308, 36, !dbg !3844
  %182 = or i64 %180, %181, !dbg !3844
    #dbg_value(i64 %182, !3543, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %182), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not340 = xor i64 %182, -1, !dbg !3845
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %not340), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and341 = and i64 %179, %not340, !dbg !3846
    #dbg_value(!DIArgList(i64 %176, i64 %and341), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor342 = xor i64 %176, %and341, !dbg !3847
    #dbg_value(i64 %xor342, !3505, !DIExpression(), !3485)
  %xor320 = xor i64 %xor189, %xor261, !dbg !3848
    #dbg_value(i64 %xor320, !3569, !DIExpression(), !3485)
  %183 = shl i64 %xor320, 45, !dbg !3849
  %184 = lshr i64 %xor320, 19, !dbg !3849
  %185 = or i64 %183, %184, !dbg !3849
    #dbg_value(i64 %185, !3546, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %176), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not337 = xor i64 %176, -1, !dbg !3850
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %not337), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and338 = and i64 %182, %not337, !dbg !3851
    #dbg_value(!DIArgList(i64 %185, i64 %and338), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor339 = xor i64 %185, %and338, !dbg !3852
    #dbg_value(i64 %xor339, !3503, !DIExpression(), !3485)
  %xor316 = xor i64 %xor151, %xor257, !dbg !3853
    #dbg_value(i64 %xor316, !3563, !DIExpression(), !3485)
  %186 = shl i64 %xor316, 3, !dbg !3854
  %187 = lshr i64 %xor316, 61, !dbg !3854
  %188 = or i64 %186, %187, !dbg !3854
    #dbg_value(i64 %188, !3545, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %185), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %188), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %179), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not334 = xor i64 %185, -1, !dbg !3855
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %not334), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and335 = and i64 %176, %not334, !dbg !3856
    #dbg_value(!DIArgList(i64 %188, i64 %and335), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor336 = xor i64 %188, %and335, !dbg !3857
    #dbg_value(i64 %xor336, !3501, !DIExpression(), !3485)
  %not331 = xor i64 %188, -1, !dbg !3858
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %not331), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and332 = and i64 %185, %not331, !dbg !3859
    #dbg_value(!DIArgList(i64 %179, i64 %and332), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor333 = xor i64 %179, %and332, !dbg !3860
    #dbg_value(i64 %xor333, !3499, !DIExpression(), !3485)
  %not328 = xor i64 %179, -1, !dbg !3861
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %not328), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and329 = and i64 %188, %not328, !dbg !3862
    #dbg_value(!DIArgList(i64 %182, i64 %and329), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor330 = xor i64 %182, %and329, !dbg !3863
    #dbg_value(i64 %xor330, !3497, !DIExpression(), !3485)
  %xor287 = xor i64 %xor233, %xor273, !dbg !3864
    #dbg_value(i64 %xor287, !3577, !DIExpression(), !3485)
  %189 = shl i64 %xor287, 14, !dbg !3865
  %190 = lshr i64 %xor287, 50, !dbg !3865
  %191 = or i64 %189, %190, !dbg !3865
    #dbg_value(i64 %191, !3547, !DIExpression(), !3485)
  %xor275 = xor i64 %xor119, %xor261, !dbg !3866
    #dbg_value(i64 %xor275, !3559, !DIExpression(), !3485)
  %192 = shl i64 %xor275, 44, !dbg !3867
  %193 = lshr i64 %xor275, 20, !dbg !3867
  %194 = or i64 %192, %193, !dbg !3867
    #dbg_value(i64 %194, !3544, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor81, i64 %xor257), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor274 = xor i64 %xor81, %xor257, !dbg !3868
    #dbg_value(i64 %xor274, !3553, !DIExpression(), !3485)
    #dbg_value(i64 %xor274, !3543, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor274), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not305 = xor i64 %xor274, -1, !dbg !3869
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %not305), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and306 = and i64 %194, %not305, !dbg !3870
    #dbg_value(!DIArgList(i64 %191, i64 %and306), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor307 = xor i64 %191, %and306, !dbg !3871
    #dbg_value(i64 %xor307, !3495, !DIExpression(), !3485)
  %xor283 = xor i64 %xor195, %xor269, !dbg !3872
    #dbg_value(i64 %xor283, !3571, !DIExpression(), !3485)
  %195 = shl i64 %xor283, 21, !dbg !3873
  %196 = lshr i64 %xor283, 43, !dbg !3873
  %197 = or i64 %195, %196, !dbg !3873
    #dbg_value(i64 %197, !3546, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %191), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not302 = xor i64 %191, -1, !dbg !3874
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %not302), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and303 = and i64 %xor274, %not302, !dbg !3875
    #dbg_value(!DIArgList(i64 %197, i64 %and303), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor304 = xor i64 %197, %and303, !dbg !3876
    #dbg_value(i64 %xor304, !3493, !DIExpression(), !3485)
  %xor279 = xor i64 %xor157, %xor265, !dbg !3877
    #dbg_value(i64 %xor279, !3565, !DIExpression(), !3485)
  %198 = shl i64 %xor279, 43, !dbg !3878
  %199 = lshr i64 %xor279, 21, !dbg !3878
  %200 = or i64 %198, %199, !dbg !3878
    #dbg_value(i64 %200, !3545, !DIExpression(), !3485)
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %197), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %200), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
    #dbg_value(!DIArgList(i64 %xor274, i64 %200, i64 %194), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %not299 = xor i64 %197, -1, !dbg !3879
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %not299), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and300 = and i64 %191, %not299, !dbg !3880
    #dbg_value(!DIArgList(i64 %200, i64 %and300), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor301 = xor i64 %200, %and300, !dbg !3881
    #dbg_value(i64 %xor301, !3491, !DIExpression(), !3485)
  %not296 = xor i64 %200, -1, !dbg !3882
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %not296), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3485)
  %and297 = and i64 %197, %not296, !dbg !3883
    #dbg_value(!DIArgList(i64 %194, i64 %and297), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %xor298 = xor i64 %194, %and297, !dbg !3884
    #dbg_value(i64 %xor298, !3489, !DIExpression(), !3485)
  %add = or disjoint i32 %round.0, 1, !dbg !3885
  %arrayidx294 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %add, !dbg !3886
  %201 = load i64, ptr %arrayidx294, align 8, !dbg !3886
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %194), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %not291 = xor i64 %194, -1, !dbg !3887
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %not291), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %and292 = and i64 %200, %not291, !dbg !3888
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %and292), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3485)
  %202 = xor i64 %and292, %201, !dbg !3889
  %xor295 = xor i64 %202, %xor274, !dbg !3889
    #dbg_value(i64 %xor295, !3487, !DIExpression(), !3485)
  %add448 = add nuw nsw i32 %round.0, 2, !dbg !3890
    #dbg_value(i32 %add448, !3536, !DIExpression(), !3485)
  br label %for.cond, !dbg !3891, !llvm.loop !3892

for.end:                                          ; preds = %for.cond
  %Aso.0.lcssa = phi i64 [ %Aso.0, %for.cond ], !dbg !3485
  %Asi.0.lcssa = phi i64 [ %Asi.0, %for.cond ], !dbg !3485
  %Ase.0.lcssa = phi i64 [ %Ase.0, %for.cond ], !dbg !3485
  %Asa.0.lcssa = phi i64 [ %Asa.0, %for.cond ], !dbg !3485
  %Amu.0.lcssa = phi i64 [ %Amu.0, %for.cond ], !dbg !3485
  %Amo.0.lcssa = phi i64 [ %Amo.0, %for.cond ], !dbg !3485
  %Ami.0.lcssa = phi i64 [ %Ami.0, %for.cond ], !dbg !3485
  %Ame.0.lcssa = phi i64 [ %Ame.0, %for.cond ], !dbg !3485
  %Ama.0.lcssa = phi i64 [ %Ama.0, %for.cond ], !dbg !3485
  %Aku.0.lcssa = phi i64 [ %Aku.0, %for.cond ], !dbg !3485
  %Ako.0.lcssa = phi i64 [ %Ako.0, %for.cond ], !dbg !3485
  %Aki.0.lcssa = phi i64 [ %Aki.0, %for.cond ], !dbg !3485
  %Ake.0.lcssa = phi i64 [ %Ake.0, %for.cond ], !dbg !3485
  %Aka.0.lcssa = phi i64 [ %Aka.0, %for.cond ], !dbg !3485
  %Agu.0.lcssa = phi i64 [ %Agu.0, %for.cond ], !dbg !3485
  %Ago.0.lcssa = phi i64 [ %Ago.0, %for.cond ], !dbg !3485
  %Agi.0.lcssa = phi i64 [ %Agi.0, %for.cond ], !dbg !3485
  %Age.0.lcssa = phi i64 [ %Age.0, %for.cond ], !dbg !3485
  %Aga.0.lcssa = phi i64 [ %Aga.0, %for.cond ], !dbg !3485
  %Abu.0.lcssa = phi i64 [ %Abu.0, %for.cond ], !dbg !3485
  %Abo.0.lcssa = phi i64 [ %Abo.0, %for.cond ], !dbg !3485
  %Abi.0.lcssa = phi i64 [ %Abi.0, %for.cond ], !dbg !3485
  %Abe.0.lcssa = phi i64 [ %Abe.0, %for.cond ], !dbg !3485
  %Aba.0.lcssa = phi i64 [ %Aba.0, %for.cond ], !dbg !3485
  %Asu.0.lcssa = phi i64 [ %Asu.0, %for.cond ], !dbg !3485
  store i64 %Aba.0.lcssa, ptr %state, align 8, !dbg !3894
  %arrayidx450 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3895
  store i64 %Abe.0.lcssa, ptr %arrayidx450, align 8, !dbg !3896
  %arrayidx451 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3897
  store i64 %Abi.0.lcssa, ptr %arrayidx451, align 8, !dbg !3898
  %arrayidx452 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3899
  store i64 %Abo.0.lcssa, ptr %arrayidx452, align 8, !dbg !3900
  %arrayidx453 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3901
  store i64 %Abu.0.lcssa, ptr %arrayidx453, align 8, !dbg !3902
  %arrayidx454 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3903
  store i64 %Aga.0.lcssa, ptr %arrayidx454, align 8, !dbg !3904
  %arrayidx455 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3905
  store i64 %Age.0.lcssa, ptr %arrayidx455, align 8, !dbg !3906
  %arrayidx456 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3907
  store i64 %Agi.0.lcssa, ptr %arrayidx456, align 8, !dbg !3908
  %arrayidx457 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3909
  store i64 %Ago.0.lcssa, ptr %arrayidx457, align 8, !dbg !3910
  %arrayidx458 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3911
  store i64 %Agu.0.lcssa, ptr %arrayidx458, align 8, !dbg !3912
  %arrayidx459 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3913
  store i64 %Aka.0.lcssa, ptr %arrayidx459, align 8, !dbg !3914
  %arrayidx460 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3915
  store i64 %Ake.0.lcssa, ptr %arrayidx460, align 8, !dbg !3916
  %arrayidx461 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3917
  store i64 %Aki.0.lcssa, ptr %arrayidx461, align 8, !dbg !3918
  %arrayidx462 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3919
  store i64 %Ako.0.lcssa, ptr %arrayidx462, align 8, !dbg !3920
  %arrayidx463 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3921
  store i64 %Aku.0.lcssa, ptr %arrayidx463, align 8, !dbg !3922
  %arrayidx464 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3923
  store i64 %Ama.0.lcssa, ptr %arrayidx464, align 8, !dbg !3924
  %arrayidx465 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3925
  store i64 %Ame.0.lcssa, ptr %arrayidx465, align 8, !dbg !3926
  %arrayidx466 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3927
  store i64 %Ami.0.lcssa, ptr %arrayidx466, align 8, !dbg !3928
  %arrayidx467 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3929
  store i64 %Amo.0.lcssa, ptr %arrayidx467, align 8, !dbg !3930
  %arrayidx468 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3931
  store i64 %Amu.0.lcssa, ptr %arrayidx468, align 8, !dbg !3932
  %arrayidx469 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3933
  store i64 %Asa.0.lcssa, ptr %arrayidx469, align 8, !dbg !3934
  %arrayidx470 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3935
  store i64 %Ase.0.lcssa, ptr %arrayidx470, align 8, !dbg !3936
  %arrayidx471 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3937
  store i64 %Asi.0.lcssa, ptr %arrayidx471, align 8, !dbg !3938
  %arrayidx472 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3939
  store i64 %Aso.0.lcssa, ptr %arrayidx472, align 8, !dbg !3940
  %arrayidx473 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3941
  store i64 %Asu.0.lcssa, ptr %arrayidx473, align 8, !dbg !3942
  ret void, !dbg !3943
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !3944 {
entry:
    #dbg_value(ptr %state, !3945, !DIExpression(), !3946)
  %0 = load ptr, ptr %state, align 4, !dbg !3947
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 168, i8 noundef zeroext 31) #4, !dbg !3948
  ret void, !dbg !3949
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_finalize(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !3950 {
entry:
    #dbg_value(ptr %s_inc, !3953, !DIExpression(), !3954)
    #dbg_value(i32 %r, !3955, !DIExpression(), !3954)
    #dbg_value(i8 %p, !3956, !DIExpression(), !3954)
  %conv = zext nneg i8 %p to i64, !dbg !3957
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3958
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3958
  %and = shl i64 %0, 3, !dbg !3959
  %mul = and i64 %and, 56, !dbg !3959
  %shl = shl nuw nsw i64 %conv, %mul, !dbg !3960
  %shr = lshr i64 %0, 3, !dbg !3961
  %idxprom = trunc i64 %shr to i32, !dbg !3962
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3962
  %1 = load i64, ptr %arrayidx2, align 8, !dbg !3963
  %xor = xor i64 %1, %shl, !dbg !3963
  store i64 %xor, ptr %arrayidx2, align 8, !dbg !3963
  %sub = shl nuw nsw i32 %r, 3, !dbg !3964
  %and3 = add nuw nsw i32 %sub, 56, !dbg !3964
  %mul4 = and i32 %and3, 56, !dbg !3964
  %sh_prom = zext nneg i32 %mul4 to i64, !dbg !3965
  %shl5 = shl nuw i64 128, %sh_prom, !dbg !3965
  %sub6 = add nsw i32 %r, -1, !dbg !3966
  %shr7 = lshr i32 %sub6, 3, !dbg !3967
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr7, !dbg !3968
  %2 = load i64, ptr %arrayidx8, align 8, !dbg !3969
  %xor9 = xor i64 %2, %shl5, !dbg !3969
  store i64 %xor9, ptr %arrayidx8, align 8, !dbg !3969
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3970
  store i64 0, ptr %arrayidx10, align 8, !dbg !3971
  ret void, !dbg !3972
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !3973 {
entry:
    #dbg_value(ptr %output, !3976, !DIExpression(), !3977)
    #dbg_value(i32 %outlen, !3978, !DIExpression(), !3977)
    #dbg_value(ptr %state, !3979, !DIExpression(), !3977)
  %0 = load ptr, ptr %state, align 4, !dbg !3980
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 168) #4, !dbg !3981
  ret void, !dbg !3982
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_squeeze(ptr noundef %h, i32 noundef %outlen, ptr noundef %s_inc, i32 noundef range(i32 136, 169) %r) unnamed_addr #0 !dbg !3983 {
entry:
    #dbg_value(ptr %h, !3986, !DIExpression(), !3987)
    #dbg_value(i32 %outlen, !3988, !DIExpression(), !3987)
    #dbg_value(ptr %s_inc, !3989, !DIExpression(), !3987)
    #dbg_value(i32 %r, !3990, !DIExpression(), !3987)
    #dbg_value(i32 0, !3991, !DIExpression(), !3987)
  br label %for.cond, !dbg !3992

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3994
    #dbg_value(i32 %i.0, !3991, !DIExpression(), !3987)
  %exitcond = icmp ne i32 %i.0, %outlen, !dbg !3995
  br i1 %exitcond, label %land.rhs, label %for.end, !dbg !3997

land.rhs:                                         ; preds = %for.cond
  %conv = zext i32 %i.0 to i64, !dbg !3998
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3999
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3999
  %cmp1 = icmp ugt i64 %0, %conv, !dbg !4000
  br i1 %cmp1, label %for.body, label %for.end, !dbg !4001

for.body:                                         ; preds = %land.rhs
  %conv3 = zext nneg i32 %r to i64, !dbg !4002
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4004
  %1 = load i64, ptr %arrayidx4, align 8, !dbg !4004
  %sub = sub i64 %conv3, %1, !dbg !4005
  %conv5 = zext i32 %i.0 to i64, !dbg !4006
  %add = add i64 %sub, %conv5, !dbg !4007
  %shr = lshr i64 %add, 3, !dbg !4008
  %idxprom = trunc i64 %shr to i32, !dbg !4009
  %arrayidx6 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !4009
  %2 = load i64, ptr %arrayidx6, align 8, !dbg !4009
  %conv7 = zext nneg i32 %r to i64, !dbg !4010
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4011
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !4011
  %sub9 = sub i64 %conv7, %3, !dbg !4012
  %conv10 = zext i32 %i.0 to i64, !dbg !4013
  %add11 = add i64 %sub9, %conv10, !dbg !4014
  %and = shl i64 %add11, 3, !dbg !4015
  %mul = and i64 %and, 56, !dbg !4015
  %shr12 = lshr i64 %2, %mul, !dbg !4016
  %conv13 = trunc i64 %shr12 to i8, !dbg !4017
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %h, i32 %i.0, !dbg !4018
  store i8 %conv13, ptr %arrayidx14, align 1, !dbg !4019
  %inc = add i32 %i.0, 1, !dbg !4020
    #dbg_value(i32 %inc, !3991, !DIExpression(), !3987)
  br label %for.cond, !dbg !4021, !llvm.loop !4022

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %outlen, %for.cond ], [ %i.0, %land.rhs ], !dbg !3994
  %add.ptr = getelementptr inbounds nuw i8, ptr %h, i32 %i.0.lcssa, !dbg !4024
    #dbg_value(ptr %add.ptr, !3986, !DIExpression(), !3987)
  %sub15 = sub i32 %outlen, %i.0.lcssa, !dbg !4025
    #dbg_value(i32 %sub15, !3988, !DIExpression(), !3987)
  %conv16 = zext i32 %i.0.lcssa to i64, !dbg !4026
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4027
  %4 = load i64, ptr %arrayidx17, align 8, !dbg !4028
  %sub18 = sub i64 %4, %conv16, !dbg !4028
  store i64 %sub18, ptr %arrayidx17, align 8, !dbg !4028
  br label %while.cond, !dbg !4029

while.cond:                                       ; preds = %for.end38, %for.end
  %outlen.addr.0 = phi i32 [ %sub15, %for.end ], [ %sub40, %for.end38 ], !dbg !3987
  %h.addr.0 = phi ptr [ %add.ptr, %for.end ], [ %add.ptr39, %for.end38 ], !dbg !3987
    #dbg_value(ptr %h.addr.0, !3986, !DIExpression(), !3987)
    #dbg_value(i32 %outlen.addr.0, !3988, !DIExpression(), !3987)
  %cmp19.not = icmp eq i32 %outlen.addr.0, 0, !dbg !4030
  br i1 %cmp19.not, label %while.end, label %while.body, !dbg !4029

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #4, !dbg !4031
    #dbg_value(i32 0, !3991, !DIExpression(), !3987)
  %5 = icmp ult i32 %outlen.addr.0, %r, !dbg !4033
  %6 = select i1 %5, i32 %outlen.addr.0, i32 %r, !dbg !4033
  br label %for.cond21, !dbg !4033

for.cond21:                                       ; preds = %for.body28, %while.body
  %i.1 = phi i32 [ 0, %while.body ], [ %inc37, %for.body28 ], !dbg !4035
    #dbg_value(i32 %i.1, !3991, !DIExpression(), !3987)
  %exitcond1 = icmp ne i32 %i.1, %6, !dbg !4036
  br i1 %exitcond1, label %for.body28, label %for.end38, !dbg !4038

for.body28:                                       ; preds = %for.cond21
  %shr29 = lshr i32 %i.1, 3, !dbg !4039
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr29, !dbg !4041
  %7 = load i64, ptr %arrayidx30, align 8, !dbg !4041
  %and31 = shl nuw nsw i32 %i.1, 3, !dbg !4042
  %mul32 = and i32 %and31, 56, !dbg !4042
  %sh_prom = zext nneg i32 %mul32 to i64, !dbg !4043
  %shr33 = lshr i64 %7, %sh_prom, !dbg !4043
  %conv34 = trunc i64 %shr33 to i8, !dbg !4044
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1, !dbg !4045
  store i8 %conv34, ptr %arrayidx35, align 1, !dbg !4046
  %inc37 = add nuw nsw i32 %i.1, 1, !dbg !4047
    #dbg_value(i32 %inc37, !3991, !DIExpression(), !3987)
  br label %for.cond21, !dbg !4048, !llvm.loop !4049

for.end38:                                        ; preds = %for.cond21
  %i.1.lcssa = phi i32 [ %i.1, %for.cond21 ], !dbg !4035
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1.lcssa, !dbg !4051
    #dbg_value(ptr %add.ptr39, !3986, !DIExpression(), !3987)
  %sub40 = sub i32 %outlen.addr.0, %i.1.lcssa, !dbg !4052
    #dbg_value(i32 %sub40, !3988, !DIExpression(), !3987)
  %sub41 = sub nsw i32 %r, %i.1.lcssa, !dbg !4053
  %conv42 = zext i32 %sub41 to i64, !dbg !4054
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4055
  store i64 %conv42, ptr %arrayidx43, align 8, !dbg !4056
  br label %while.cond, !dbg !4029, !llvm.loop !4057

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4059
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4060 {
entry:
    #dbg_value(ptr %dest, !4065, !DIExpression(), !4066)
    #dbg_value(ptr %src, !4067, !DIExpression(), !4066)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4068
  store ptr %call, ptr %dest, align 4, !dbg !4069
  %cmp = icmp eq ptr %call, null, !dbg !4070
  br i1 %cmp, label %if.then, label %if.end, !dbg !4070

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4072
  br label %if.end, !dbg !4074

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4075
  %1 = load ptr, ptr %src, align 4, !dbg !4076
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4077
  ret void, !dbg !4078
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4079 {
entry:
    #dbg_value(ptr %state, !4080, !DIExpression(), !4081)
  %0 = load ptr, ptr %state, align 4, !dbg !4082
  call void @free(ptr noundef %0) #6, !dbg !4083
  ret void, !dbg !4084
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4085 {
entry:
    #dbg_value(ptr %state, !4093, !DIExpression(), !4094)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4095
  store ptr %call, ptr %state, align 4, !dbg !4096
  %cmp = icmp eq ptr %call, null, !dbg !4097
  br i1 %cmp, label %if.then, label %if.end, !dbg !4097

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4099
  br label %if.end, !dbg !4101

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4102
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4103
  ret void, !dbg !4104
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4105 {
entry:
    #dbg_value(ptr %state, !4108, !DIExpression(), !4109)
    #dbg_value(ptr %input, !4110, !DIExpression(), !4109)
    #dbg_value(i32 %inlen, !4111, !DIExpression(), !4109)
  %0 = load ptr, ptr %state, align 4, !dbg !4112
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4113
  ret void, !dbg !4114
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !4115 {
entry:
    #dbg_value(ptr %state, !4116, !DIExpression(), !4117)
  %0 = load ptr, ptr %state, align 4, !dbg !4118
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 31) #4, !dbg !4119
  ret void, !dbg !4120
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !4121 {
entry:
    #dbg_value(ptr %output, !4124, !DIExpression(), !4125)
    #dbg_value(i32 %outlen, !4126, !DIExpression(), !4125)
    #dbg_value(ptr %state, !4127, !DIExpression(), !4125)
  %0 = load ptr, ptr %state, align 4, !dbg !4128
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 136) #4, !dbg !4129
  ret void, !dbg !4130
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4131 {
entry:
    #dbg_value(ptr %dest, !4136, !DIExpression(), !4137)
    #dbg_value(ptr %src, !4138, !DIExpression(), !4137)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4139
  store ptr %call, ptr %dest, align 4, !dbg !4140
  %cmp = icmp eq ptr %call, null, !dbg !4141
  br i1 %cmp, label %if.then, label %if.end, !dbg !4141

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4143
  br label %if.end, !dbg !4145

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4146
  %1 = load ptr, ptr %src, align 4, !dbg !4147
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4148
  ret void, !dbg !4149
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4150 {
entry:
    #dbg_value(ptr %state, !4151, !DIExpression(), !4152)
  %0 = load ptr, ptr %state, align 4, !dbg !4153
  call void @free(ptr noundef %0) #6, !dbg !4154
  ret void, !dbg !4155
}

; Function Attrs: nounwind
define dso_local void @shake128_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4156 {
entry:
    #dbg_value(ptr %state, !4164, !DIExpression(), !4165)
    #dbg_value(ptr %input, !4166, !DIExpression(), !4165)
    #dbg_value(i32 %inlen, !4167, !DIExpression(), !4165)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4168
  store ptr %call, ptr %state, align 4, !dbg !4169
  %cmp = icmp eq ptr %call, null, !dbg !4170
  br i1 %cmp, label %if.then, label %if.end, !dbg !4170

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4172
  br label %if.end, !dbg !4174

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4175
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !4176
  ret void, !dbg !4177
}

; Function Attrs: nounwind
define internal fastcc void @keccak_absorb(ptr noundef %s, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !4178 {
entry:
  %t = alloca [200 x i8], align 1
    #dbg_value(ptr %s, !4181, !DIExpression(), !4182)
    #dbg_value(i32 %r, !4183, !DIExpression(), !4182)
    #dbg_value(ptr %m, !4184, !DIExpression(), !4182)
    #dbg_value(i32 %mlen, !4185, !DIExpression(), !4182)
    #dbg_value(i8 %p, !4186, !DIExpression(), !4182)
    #dbg_declare(ptr %t, !4187, !DIExpression(), !4191)
    #dbg_value(i32 0, !4192, !DIExpression(), !4182)
  br label %for.cond, !dbg !4193

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4195
    #dbg_value(i32 %i.0, !4192, !DIExpression(), !4182)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !4196
  br i1 %exitcond, label %for.body, label %while.cond.preheader, !dbg !4198

while.cond.preheader:                             ; preds = %for.cond
  %0 = lshr i32 %r, 3, !dbg !4199
  br label %while.cond, !dbg !4199

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4200
  store i64 0, ptr %arrayidx, align 8, !dbg !4202
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4203
    #dbg_value(i32 %inc, !4192, !DIExpression(), !4182)
  br label %for.cond, !dbg !4204, !llvm.loop !4205

while.cond:                                       ; preds = %while.cond.preheader, %for.end8
  %m.addr.0 = phi ptr [ %add.ptr9, %for.end8 ], [ %m, %while.cond.preheader ]
  %mlen.addr.0 = phi i32 [ %sub, %for.end8 ], [ %mlen, %while.cond.preheader ]
    #dbg_value(i32 %mlen.addr.0, !4185, !DIExpression(), !4182)
    #dbg_value(ptr %m.addr.0, !4184, !DIExpression(), !4182)
  %cmp1.not = icmp ult i32 %mlen.addr.0, %r, !dbg !4207
  br i1 %cmp1.not, label %for.cond10.preheader, label %for.cond2.preheader, !dbg !4199

for.cond2.preheader:                              ; preds = %while.cond
  br label %for.cond2, !dbg !4208

for.cond10.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa5 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  br label %for.cond10, !dbg !4211

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %i.1 = phi i32 [ %inc7, %for.body4 ], [ 0, %for.cond2.preheader ], !dbg !4213
    #dbg_value(i32 %i.1, !4192, !DIExpression(), !4182)
  %exitcond3 = icmp ne i32 %i.1, %0, !dbg !4214
  br i1 %exitcond3, label %for.body4, label %for.end8, !dbg !4208

for.body4:                                        ; preds = %for.cond2
  %mul = shl nuw nsw i32 %i.1, 3, !dbg !4216
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %mul, !dbg !4218
  %call = call fastcc i64 @load64(ptr noundef %add.ptr) #4, !dbg !4219
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %s, i32 %i.1, !dbg !4220
  %1 = load i64, ptr %arrayidx5, align 8, !dbg !4221
  %xor = xor i64 %1, %call, !dbg !4221
  store i64 %xor, ptr %arrayidx5, align 8, !dbg !4221
  %inc7 = add nuw nsw i32 %i.1, 1, !dbg !4222
    #dbg_value(i32 %inc7, !4192, !DIExpression(), !4182)
  br label %for.cond2, !dbg !4223, !llvm.loop !4224

for.end8:                                         ; preds = %for.cond2
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !4226
  %sub = sub i32 %mlen.addr.0, %r, !dbg !4227
    #dbg_value(i32 %sub, !4185, !DIExpression(), !4182)
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %r, !dbg !4228
    #dbg_value(ptr %add.ptr9, !4184, !DIExpression(), !4182)
  br label %while.cond, !dbg !4199, !llvm.loop !4229

for.cond10:                                       ; preds = %for.cond10.preheader, %for.body12
  %i.2 = phi i32 [ %inc15, %for.body12 ], [ 0, %for.cond10.preheader ], !dbg !4231
    #dbg_value(i32 %i.2, !4192, !DIExpression(), !4182)
  %exitcond4 = icmp ne i32 %i.2, %r, !dbg !4232
  br i1 %exitcond4, label %for.body12, label %for.cond17.preheader, !dbg !4211

for.cond17.preheader:                             ; preds = %for.cond10
  br label %for.cond17, !dbg !4234

for.body12:                                       ; preds = %for.cond10
  %arrayidx13 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.2, !dbg !4236
  store i8 0, ptr %arrayidx13, align 1, !dbg !4238
  %inc15 = add nuw nsw i32 %i.2, 1, !dbg !4239
    #dbg_value(i32 %inc15, !4192, !DIExpression(), !4182)
  br label %for.cond10, !dbg !4240, !llvm.loop !4241

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body19
  %i.3 = phi i32 [ %inc23, %for.body19 ], [ 0, %for.cond17.preheader ], !dbg !4243
    #dbg_value(i32 %i.3, !4192, !DIExpression(), !4182)
  %exitcond6 = icmp ne i32 %i.3, %mlen.addr.0.lcssa5, !dbg !4244
  br i1 %exitcond6, label %for.body19, label %for.end24, !dbg !4234

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.3, !dbg !4246
  %2 = load i8, ptr %arrayidx20, align 1, !dbg !4246
  %arrayidx21 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3, !dbg !4248
  store i8 %2, ptr %arrayidx21, align 1, !dbg !4249
  %inc23 = add i32 %i.3, 1, !dbg !4250
    #dbg_value(i32 %inc23, !4192, !DIExpression(), !4182)
  br label %for.cond17, !dbg !4251, !llvm.loop !4252

for.end24:                                        ; preds = %for.cond17
  %i.3.lcssa = phi i32 [ %i.3, %for.cond17 ], !dbg !4243
  %arrayidx25 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3.lcssa, !dbg !4254
  store i8 %p, ptr %arrayidx25, align 1, !dbg !4255
  %sub26 = add nsw i32 %r, -1, !dbg !4256
  %arrayidx27 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %sub26, !dbg !4257
  %3 = load i8, ptr %arrayidx27, align 1, !dbg !4258
  %4 = or i8 %3, -128, !dbg !4258
  store i8 %4, ptr %arrayidx27, align 1, !dbg !4258
    #dbg_value(i32 0, !4192, !DIExpression(), !4182)
  br label %for.cond29, !dbg !4259

for.cond29:                                       ; preds = %for.body33, %for.end24
  %i.4 = phi i32 [ 0, %for.end24 ], [ %inc40, %for.body33 ], !dbg !4261
    #dbg_value(i32 %i.4, !4192, !DIExpression(), !4182)
  %exitcond7 = icmp ne i32 %i.4, %0, !dbg !4262
  br i1 %exitcond7, label %for.body33, label %for.end41, !dbg !4264

for.body33:                                       ; preds = %for.cond29
  %mul34 = shl nuw nsw i32 %i.4, 3, !dbg !4265
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %t, i32 %mul34, !dbg !4267
  %call36 = call fastcc i64 @load64(ptr noundef nonnull %add.ptr35) #4, !dbg !4268
  %arrayidx37 = getelementptr inbounds nuw i64, ptr %s, i32 %i.4, !dbg !4269
  %5 = load i64, ptr %arrayidx37, align 8, !dbg !4270
  %xor38 = xor i64 %5, %call36, !dbg !4270
  store i64 %xor38, ptr %arrayidx37, align 8, !dbg !4270
  %inc40 = add nuw nsw i32 %i.4, 1, !dbg !4271
    #dbg_value(i32 %inc40, !4192, !DIExpression(), !4182)
  br label %for.cond29, !dbg !4272, !llvm.loop !4273

for.end41:                                        ; preds = %for.cond29
  ret void, !dbg !4275
}

; Function Attrs: nounwind
define internal fastcc i64 @load64(ptr noundef %x) unnamed_addr #0 !dbg !4276 {
entry:
    #dbg_value(ptr %x, !4279, !DIExpression(), !4280)
    #dbg_value(i64 0, !4281, !DIExpression(), !4280)
    #dbg_value(i32 0, !4282, !DIExpression(), !4284)
  br label %for.cond, !dbg !4285

for.cond:                                         ; preds = %for.inc, %entry
  %r.0 = phi i64 [ 0, %entry ], [ %or, %for.inc ], !dbg !4280
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !4286
    #dbg_value(i32 %i.0, !4282, !DIExpression(), !4284)
    #dbg_value(i64 %r.0, !4281, !DIExpression(), !4280)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4287
  br i1 %exitcond, label %for.inc, label %for.end, !dbg !4289

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 poison, i8 poison, i32 poison), !4281, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4280)
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4290
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4290
    #dbg_value(!DIArgList(i64 %r.0, i8 %0, i32 %i.0), !4281, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4280)
  %conv = zext i8 %0 to i64, !dbg !4292
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %i.0), !4281, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4280)
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4293
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %mul), !4281, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4280)
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4294
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i64 %sh_prom), !4281, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4280)
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !4294
    #dbg_value(!DIArgList(i64 %r.0, i64 %shl), !4281, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !4280)
  %or = or i64 %r.0, %shl, !dbg !4295
    #dbg_value(i64 %or, !4281, !DIExpression(), !4280)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4296
    #dbg_value(i32 %inc, !4282, !DIExpression(), !4284)
  br label %for.cond, !dbg !4297, !llvm.loop !4298

for.end:                                          ; preds = %for.cond
  %r.0.lcssa = phi i64 [ %r.0, %for.cond ], !dbg !4280
  ret i64 %r.0.lcssa, !dbg !4300
}

; Function Attrs: nounwind
define dso_local void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4301 {
entry:
    #dbg_value(ptr %output, !4304, !DIExpression(), !4305)
    #dbg_value(i32 %nblocks, !4306, !DIExpression(), !4305)
    #dbg_value(ptr %state, !4307, !DIExpression(), !4305)
  %0 = load ptr, ptr %state, align 4, !dbg !4308
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 168) #4, !dbg !4309
  ret void, !dbg !4310
}

; Function Attrs: nounwind
define internal fastcc void @keccak_squeezeblocks(ptr noundef %h, i32 noundef %nblocks, ptr noundef %s, i32 noundef range(i32 72, 169) %r) unnamed_addr #0 !dbg !4311 {
entry:
    #dbg_value(ptr %h, !4312, !DIExpression(), !4313)
    #dbg_value(i32 %nblocks, !4314, !DIExpression(), !4313)
    #dbg_value(ptr %s, !4315, !DIExpression(), !4313)
    #dbg_value(i32 %r, !4316, !DIExpression(), !4313)
  %0 = lshr i32 %r, 3, !dbg !4317
  br label %while.cond, !dbg !4317

while.cond:                                       ; preds = %for.end, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %dec, %for.end ]
  %h.addr.0 = phi ptr [ %h, %entry ], [ %add.ptr2, %for.end ]
    #dbg_value(ptr %h.addr.0, !4312, !DIExpression(), !4313)
    #dbg_value(i32 %nblocks.addr.0, !4314, !DIExpression(), !4313)
  %cmp.not = icmp eq i32 %nblocks.addr.0, 0, !dbg !4318
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !4317

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !4319
    #dbg_value(i32 0, !4321, !DIExpression(), !4323)
  br label %for.cond, !dbg !4324

for.cond:                                         ; preds = %for.body, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc, %for.body ], !dbg !4325
    #dbg_value(i32 %i.0, !4321, !DIExpression(), !4323)
  %exitcond = icmp ne i32 %i.0, %0, !dbg !4326
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4328

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4329
  %add.ptr = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %mul, !dbg !4331
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4332
  %1 = load i64, ptr %arrayidx, align 8, !dbg !4332
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %1) #4, !dbg !4333
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4334
    #dbg_value(i32 %inc, !4321, !DIExpression(), !4323)
  br label %for.cond, !dbg !4335, !llvm.loop !4336

for.end:                                          ; preds = %for.cond
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %r, !dbg !4338
    #dbg_value(ptr %add.ptr2, !4312, !DIExpression(), !4313)
  %dec = add i32 %nblocks.addr.0, -1, !dbg !4339
    #dbg_value(i32 %dec, !4314, !DIExpression(), !4313)
  br label %while.cond, !dbg !4317, !llvm.loop !4340

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4342
}

; Function Attrs: nounwind
define internal fastcc void @store64(ptr noundef %x, i64 noundef %u) unnamed_addr #0 !dbg !4343 {
entry:
    #dbg_value(ptr %x, !4346, !DIExpression(), !4347)
    #dbg_value(i64 %u, !4348, !DIExpression(), !4347)
    #dbg_value(i32 0, !4349, !DIExpression(), !4351)
  br label %for.cond, !dbg !4352

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4353
    #dbg_value(i32 %i.0, !4349, !DIExpression(), !4351)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4354
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4356

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4357
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4359
  %shr = lshr i64 %u, %sh_prom, !dbg !4359
  %conv = trunc i64 %shr to i8, !dbg !4360
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4361
  store i8 %conv, ptr %arrayidx, align 1, !dbg !4362
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4363
    #dbg_value(i32 %inc, !4349, !DIExpression(), !4351)
  br label %for.cond, !dbg !4364, !llvm.loop !4365

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4367
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4368 {
entry:
    #dbg_value(ptr %dest, !4373, !DIExpression(), !4374)
    #dbg_value(ptr %src, !4375, !DIExpression(), !4374)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4376
  store ptr %call, ptr %dest, align 4, !dbg !4377
  %cmp = icmp eq ptr %call, null, !dbg !4378
  br i1 %cmp, label %if.then, label %if.end, !dbg !4378

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4380
  br label %if.end, !dbg !4382

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4383
  %1 = load ptr, ptr %src, align 4, !dbg !4384
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #6, !dbg !4385
  ret void, !dbg !4386
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4387 {
entry:
    #dbg_value(ptr %state, !4390, !DIExpression(), !4391)
  %0 = load ptr, ptr %state, align 4, !dbg !4392
  call void @free(ptr noundef %0) #6, !dbg !4393
  ret void, !dbg !4394
}

; Function Attrs: nounwind
define dso_local void @shake256_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4395 {
entry:
    #dbg_value(ptr %state, !4403, !DIExpression(), !4404)
    #dbg_value(ptr %input, !4405, !DIExpression(), !4404)
    #dbg_value(i32 %inlen, !4406, !DIExpression(), !4404)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4407
  store ptr %call, ptr %state, align 4, !dbg !4408
  %cmp = icmp eq ptr %call, null, !dbg !4409
  br i1 %cmp, label %if.then, label %if.end, !dbg !4409

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4411
  br label %if.end, !dbg !4413

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4414
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !4415
  ret void, !dbg !4416
}

; Function Attrs: nounwind
define dso_local void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4417 {
entry:
    #dbg_value(ptr %output, !4420, !DIExpression(), !4421)
    #dbg_value(i32 %nblocks, !4422, !DIExpression(), !4421)
    #dbg_value(ptr %state, !4423, !DIExpression(), !4421)
  %0 = load ptr, ptr %state, align 4, !dbg !4424
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 136) #4, !dbg !4425
  ret void, !dbg !4426
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4427 {
entry:
    #dbg_value(ptr %dest, !4432, !DIExpression(), !4433)
    #dbg_value(ptr %src, !4434, !DIExpression(), !4433)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4435
  store ptr %call, ptr %dest, align 4, !dbg !4436
  %cmp = icmp eq ptr %call, null, !dbg !4437
  br i1 %cmp, label %if.then, label %if.end, !dbg !4437

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4439
  br label %if.end, !dbg !4441

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4442
  %1 = load ptr, ptr %src, align 4, !dbg !4443
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #6, !dbg !4444
  ret void, !dbg !4445
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4446 {
entry:
    #dbg_value(ptr %state, !4449, !DIExpression(), !4450)
  %0 = load ptr, ptr %state, align 4, !dbg !4451
  call void @free(ptr noundef %0) #6, !dbg !4452
  ret void, !dbg !4453
}

; Function Attrs: nounwind
define dso_local void @shake128(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4454 {
entry:
  %t = alloca [168 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4457, !DIExpression(), !4458)
    #dbg_value(i32 %outlen, !4459, !DIExpression(), !4458)
    #dbg_value(ptr %input, !4460, !DIExpression(), !4458)
    #dbg_value(i32 %inlen, !4461, !DIExpression(), !4458)
  %div = udiv i32 %outlen, 168, !dbg !4462
    #dbg_value(i32 %div, !4463, !DIExpression(), !4458)
    #dbg_declare(ptr %t, !4464, !DIExpression(), !4468)
    #dbg_declare(ptr %s, !4469, !DIExpression(), !4470)
  call void @shake128_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4471
  call void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #4, !dbg !4472
  %mul = mul nuw i32 %div, 168, !dbg !4473
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4474
    #dbg_value(ptr %add.ptr, !4457, !DIExpression(), !4458)
  %mul1.neg = mul i32 %div, -168, !dbg !4475
  %sub = add i32 %mul1.neg, %outlen, !dbg !4476
    #dbg_value(i32 %sub, !4459, !DIExpression(), !4458)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4477
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4477

if.then:                                          ; preds = %entry
  call void @shake128_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #4, !dbg !4479
    #dbg_value(i32 0, !4481, !DIExpression(), !4483)
  br label %for.cond, !dbg !4484

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4485
    #dbg_value(i32 %i.0, !4481, !DIExpression(), !4483)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4486
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4488

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [168 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4489
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4489
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4491
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4492
  %inc = add i32 %i.0, 1, !dbg !4493
    #dbg_value(i32 %inc, !4481, !DIExpression(), !4483)
  br label %for.cond, !dbg !4494, !llvm.loop !4495

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4497

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake128_ctx_release(ptr noundef nonnull %s) #4, !dbg !4497
  ret void, !dbg !4498
}

; Function Attrs: nounwind
define dso_local void @shake256(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4499 {
entry:
  %t = alloca [136 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4500, !DIExpression(), !4501)
    #dbg_value(i32 %outlen, !4502, !DIExpression(), !4501)
    #dbg_value(ptr %input, !4503, !DIExpression(), !4501)
    #dbg_value(i32 %inlen, !4504, !DIExpression(), !4501)
  %div = udiv i32 %outlen, 136, !dbg !4505
    #dbg_value(i32 %div, !4506, !DIExpression(), !4501)
    #dbg_declare(ptr %t, !4507, !DIExpression(), !4511)
    #dbg_declare(ptr %s, !4512, !DIExpression(), !4513)
  call void @shake256_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4514
  call void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #4, !dbg !4515
  %mul = mul nuw i32 %div, 136, !dbg !4516
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4517
    #dbg_value(ptr %add.ptr, !4500, !DIExpression(), !4501)
  %mul1.neg = mul i32 %div, -136, !dbg !4518
  %sub = add i32 %mul1.neg, %outlen, !dbg !4519
    #dbg_value(i32 %sub, !4502, !DIExpression(), !4501)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4520
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4520

if.then:                                          ; preds = %entry
  call void @shake256_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #4, !dbg !4522
    #dbg_value(i32 0, !4524, !DIExpression(), !4526)
  br label %for.cond, !dbg !4527

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4528
    #dbg_value(i32 %i.0, !4524, !DIExpression(), !4526)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4529
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4531

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4532
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4532
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4534
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4535
  %inc = add i32 %i.0, 1, !dbg !4536
    #dbg_value(i32 %inc, !4524, !DIExpression(), !4526)
  br label %for.cond, !dbg !4537, !llvm.loop !4538

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4540

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake256_ctx_release(ptr noundef nonnull %s) #4, !dbg !4540
  ret void, !dbg !4541
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4542 {
entry:
    #dbg_value(ptr %state, !4550, !DIExpression(), !4551)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4552
  store ptr %call, ptr %state, align 4, !dbg !4553
  %cmp = icmp eq ptr %call, null, !dbg !4554
  br i1 %cmp, label %if.then, label %if.end, !dbg !4554

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4556
  br label %if.end, !dbg !4558

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4559
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4560
  ret void, !dbg !4561
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4562 {
entry:
    #dbg_value(ptr %dest, !4567, !DIExpression(), !4568)
    #dbg_value(ptr %src, !4569, !DIExpression(), !4568)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4570
  store ptr %call, ptr %dest, align 4, !dbg !4571
  %cmp = icmp eq ptr %call, null, !dbg !4572
  br i1 %cmp, label %if.then, label %if.end, !dbg !4572

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4574
  br label %if.end, !dbg !4576

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4577
  %1 = load ptr, ptr %src, align 4, !dbg !4578
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4579
  ret void, !dbg !4580
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4581 {
entry:
    #dbg_value(ptr %state, !4582, !DIExpression(), !4583)
  %0 = load ptr, ptr %state, align 4, !dbg !4584
  call void @free(ptr noundef %0) #6, !dbg !4585
  ret void, !dbg !4586
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4587 {
entry:
    #dbg_value(ptr %state, !4590, !DIExpression(), !4591)
    #dbg_value(ptr %input, !4592, !DIExpression(), !4591)
    #dbg_value(i32 %inlen, !4593, !DIExpression(), !4591)
  %0 = load ptr, ptr %state, align 4, !dbg !4594
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4595
  ret void, !dbg !4596
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4597 {
entry:
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4600, !DIExpression(), !4601)
    #dbg_value(ptr %state, !4602, !DIExpression(), !4601)
    #dbg_declare(ptr %t, !4603, !DIExpression(), !4604)
  %0 = load ptr, ptr %state, align 4, !dbg !4605
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 6) #4, !dbg !4606
  %1 = load ptr, ptr %state, align 4, !dbg !4607
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 136) #4, !dbg !4608
  call void @sha3_256_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4609
    #dbg_value(i32 0, !4610, !DIExpression(), !4612)
  br label %for.cond, !dbg !4613

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4614
    #dbg_value(i32 %i.0, !4610, !DIExpression(), !4612)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4615
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4617

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4618
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4618
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4620
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4621
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4622
    #dbg_value(i32 %inc, !4610, !DIExpression(), !4612)
  br label %for.cond, !dbg !4623, !llvm.loop !4624

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4626
}

; Function Attrs: nounwind
define dso_local void @sha3_256(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4627 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4630, !DIExpression(), !4631)
    #dbg_value(ptr %input, !4632, !DIExpression(), !4631)
    #dbg_value(i32 %inlen, !4633, !DIExpression(), !4631)
    #dbg_declare(ptr %s, !4634, !DIExpression(), !4638)
    #dbg_declare(ptr %t, !4639, !DIExpression(), !4640)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4641
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 136) #4, !dbg !4642
    #dbg_value(i32 0, !4643, !DIExpression(), !4645)
  br label %for.cond, !dbg !4646

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4647
    #dbg_value(i32 %i.0, !4643, !DIExpression(), !4645)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4648
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4650

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4651
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4651
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4653
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4654
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4655
    #dbg_value(i32 %inc, !4643, !DIExpression(), !4645)
  br label %for.cond, !dbg !4656, !llvm.loop !4657

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4659
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4660 {
entry:
    #dbg_value(ptr %state, !4668, !DIExpression(), !4669)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4670
  store ptr %call, ptr %state, align 4, !dbg !4671
  %cmp = icmp eq ptr %call, null, !dbg !4672
  br i1 %cmp, label %if.then, label %if.end, !dbg !4672

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4674
  br label %if.end, !dbg !4676

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4677
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4678
  ret void, !dbg !4679
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4680 {
entry:
    #dbg_value(ptr %dest, !4685, !DIExpression(), !4686)
    #dbg_value(ptr %src, !4687, !DIExpression(), !4686)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4688
  store ptr %call, ptr %dest, align 4, !dbg !4689
  %cmp = icmp eq ptr %call, null, !dbg !4690
  br i1 %cmp, label %if.then, label %if.end, !dbg !4690

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4692
  br label %if.end, !dbg !4694

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4695
  %1 = load ptr, ptr %src, align 4, !dbg !4696
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4697
  ret void, !dbg !4698
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4699 {
entry:
    #dbg_value(ptr %state, !4702, !DIExpression(), !4703)
    #dbg_value(ptr %input, !4704, !DIExpression(), !4703)
    #dbg_value(i32 %inlen, !4705, !DIExpression(), !4703)
  %0 = load ptr, ptr %state, align 4, !dbg !4706
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 104, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4707
  ret void, !dbg !4708
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4709 {
entry:
    #dbg_value(ptr %state, !4710, !DIExpression(), !4711)
  %0 = load ptr, ptr %state, align 4, !dbg !4712
  call void @free(ptr noundef %0) #6, !dbg !4713
  ret void, !dbg !4714
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4715 {
entry:
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4718, !DIExpression(), !4719)
    #dbg_value(ptr %state, !4720, !DIExpression(), !4719)
    #dbg_declare(ptr %t, !4721, !DIExpression(), !4725)
  %0 = load ptr, ptr %state, align 4, !dbg !4726
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 104, i8 noundef zeroext 6) #4, !dbg !4727
  %1 = load ptr, ptr %state, align 4, !dbg !4728
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 104) #4, !dbg !4729
  call void @sha3_384_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4730
    #dbg_value(i32 0, !4731, !DIExpression(), !4733)
  br label %for.cond, !dbg !4734

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4735
    #dbg_value(i32 %i.0, !4731, !DIExpression(), !4733)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4736
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4738

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4739
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4739
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4741
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4742
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4743
    #dbg_value(i32 %inc, !4731, !DIExpression(), !4733)
  br label %for.cond, !dbg !4744, !llvm.loop !4745

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4747
}

; Function Attrs: nounwind
define dso_local void @sha3_384(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4748 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4749, !DIExpression(), !4750)
    #dbg_value(ptr %input, !4751, !DIExpression(), !4750)
    #dbg_value(i32 %inlen, !4752, !DIExpression(), !4750)
    #dbg_declare(ptr %s, !4753, !DIExpression(), !4754)
    #dbg_declare(ptr %t, !4755, !DIExpression(), !4756)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 104, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4757
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 104) #4, !dbg !4758
    #dbg_value(i32 0, !4759, !DIExpression(), !4761)
  br label %for.cond, !dbg !4762

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4763
    #dbg_value(i32 %i.0, !4759, !DIExpression(), !4761)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4764
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4766

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4767
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4767
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4769
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4770
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4771
    #dbg_value(i32 %inc, !4759, !DIExpression(), !4761)
  br label %for.cond, !dbg !4772, !llvm.loop !4773

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4775
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4776 {
entry:
    #dbg_value(ptr %state, !4784, !DIExpression(), !4785)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4786
  store ptr %call, ptr %state, align 4, !dbg !4787
  %cmp = icmp eq ptr %call, null, !dbg !4788
  br i1 %cmp, label %if.then, label %if.end, !dbg !4788

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4790
  br label %if.end, !dbg !4792

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4793
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4794
  ret void, !dbg !4795
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4796 {
entry:
    #dbg_value(ptr %dest, !4801, !DIExpression(), !4802)
    #dbg_value(ptr %src, !4803, !DIExpression(), !4802)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4804
  store ptr %call, ptr %dest, align 4, !dbg !4805
  %cmp = icmp eq ptr %call, null, !dbg !4806
  br i1 %cmp, label %if.then, label %if.end, !dbg !4806

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4808
  br label %if.end, !dbg !4810

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4811
  %1 = load ptr, ptr %src, align 4, !dbg !4812
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4813
  ret void, !dbg !4814
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4815 {
entry:
    #dbg_value(ptr %state, !4818, !DIExpression(), !4819)
    #dbg_value(ptr %input, !4820, !DIExpression(), !4819)
    #dbg_value(i32 %inlen, !4821, !DIExpression(), !4819)
  %0 = load ptr, ptr %state, align 4, !dbg !4822
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 72, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4823
  ret void, !dbg !4824
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4825 {
entry:
    #dbg_value(ptr %state, !4826, !DIExpression(), !4827)
  %0 = load ptr, ptr %state, align 4, !dbg !4828
  call void @free(ptr noundef %0) #6, !dbg !4829
  ret void, !dbg !4830
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4831 {
entry:
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4834, !DIExpression(), !4835)
    #dbg_value(ptr %state, !4836, !DIExpression(), !4835)
    #dbg_declare(ptr %t, !4837, !DIExpression(), !4841)
  %0 = load ptr, ptr %state, align 4, !dbg !4842
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 72, i8 noundef zeroext 6) #4, !dbg !4843
  %1 = load ptr, ptr %state, align 4, !dbg !4844
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 72) #4, !dbg !4845
  call void @sha3_512_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4846
    #dbg_value(i32 0, !4847, !DIExpression(), !4849)
  br label %for.cond, !dbg !4850

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4851
    #dbg_value(i32 %i.0, !4847, !DIExpression(), !4849)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4852
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4854

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4855
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4855
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4857
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4858
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4859
    #dbg_value(i32 %inc, !4847, !DIExpression(), !4849)
  br label %for.cond, !dbg !4860, !llvm.loop !4861

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4863
}

; Function Attrs: nounwind
define dso_local void @sha3_512(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4864 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4865, !DIExpression(), !4866)
    #dbg_value(ptr %input, !4867, !DIExpression(), !4866)
    #dbg_value(i32 %inlen, !4868, !DIExpression(), !4866)
    #dbg_declare(ptr %s, !4869, !DIExpression(), !4870)
    #dbg_declare(ptr %t, !4871, !DIExpression(), !4872)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 72, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4873
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 72) #4, !dbg !4874
    #dbg_value(i32 0, !4875, !DIExpression(), !4877)
  br label %for.cond, !dbg !4878

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4879
    #dbg_value(i32 %i.0, !4875, !DIExpression(), !4877)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4880
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4882

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4883
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4883
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4885
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4886
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4887
    #dbg_value(i32 %inc, !4875, !DIExpression(), !4877)
  br label %for.cond, !dbg !4888, !llvm.loop !4889

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4891
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !4892 {
entry:
  %skey = alloca [22 x i64], align 8
    #dbg_value(ptr %r, !4900, !DIExpression(), !4901)
    #dbg_value(ptr %key, !4902, !DIExpression(), !4901)
    #dbg_declare(ptr %skey, !4903, !DIExpression(), !4907)
  %call = call dereferenceable_or_null(704) ptr @malloc(i32 noundef 704) #7, !dbg !4908
  store ptr %call, ptr %r, align 4, !dbg !4909
  %cmp = icmp eq ptr %call, null, !dbg !4910
  br i1 %cmp, label %if.then, label %if.end, !dbg !4910

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4912
  br label %if.end, !dbg !4914

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 16) #4, !dbg !4915
  %0 = load ptr, ptr %r, align 4, !dbg !4916
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 10) #4, !dbg !4917
  ret void, !dbg !4918
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %comp_skey, ptr noundef %key, i32 noundef range(i32 16, 33) %key_len) unnamed_addr #0 !dbg !4919 {
entry:
  %skey = alloca [60 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %comp_skey, !4922, !DIExpression(), !4923)
    #dbg_value(ptr %key, !4924, !DIExpression(), !4923)
    #dbg_value(i32 %key_len, !4925, !DIExpression(), !4923)
    #dbg_declare(ptr %skey, !4926, !DIExpression(), !4930)
  %0 = and i32 %key_len, 60, !dbg !4931
    #dbg_value(i32 %key_len, !4932, !DIExpression(DW_OP_constu, 16, DW_OP_minus, DW_OP_constu, 2, DW_OP_shr, DW_OP_plus_uconst, 10, DW_OP_stack_value), !4923)
  %shr1 = lshr i32 %key_len, 2, !dbg !4933
    #dbg_value(i32 %shr1, !4934, !DIExpression(), !4923)
  %shl = add nuw nsw i32 %0, 28, !dbg !4931
    #dbg_value(i32 %shl, !4935, !DIExpression(), !4923)
  %shr3 = lshr i32 %key_len, 2, !dbg !4936
  call fastcc void @br_range_dec32le(ptr noundef nonnull %skey, i32 noundef %shr3, ptr noundef %key) #4, !dbg !4937
  %shr4 = lshr i32 %key_len, 2, !dbg !4938
  %sub5 = add nsw i32 %shr4, -1, !dbg !4939
  %arrayidx = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub5, !dbg !4940
  %1 = load i32, ptr %arrayidx, align 4, !dbg !4940
    #dbg_value(i32 %1, !4941, !DIExpression(), !4923)
    #dbg_value(i32 %shr1, !4942, !DIExpression(), !4923)
    #dbg_value(i32 0, !4943, !DIExpression(), !4923)
    #dbg_value(i32 0, !4944, !DIExpression(), !4923)
  br label %for.cond, !dbg !4945

for.cond:                                         ; preds = %if.end16, %entry
  %i.0 = phi i32 [ %shr1, %entry ], [ %inc26, %if.end16 ], !dbg !4947
  %j.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end16 ], !dbg !4948
  %k.0 = phi i32 [ 0, %entry ], [ %spec.select1, %if.end16 ], !dbg !4948
  %tmp.0 = phi i32 [ %1, %entry ], [ %xor19, %if.end16 ], !dbg !4923
    #dbg_value(i32 %tmp.0, !4941, !DIExpression(), !4923)
    #dbg_value(i32 %k.0, !4944, !DIExpression(), !4923)
    #dbg_value(i32 %j.0, !4943, !DIExpression(), !4923)
    #dbg_value(i32 %i.0, !4942, !DIExpression(), !4923)
  %exitcond = icmp ne i32 %i.0, %shl, !dbg !4949
  br i1 %exitcond, label %for.body, label %for.cond27.preheader, !dbg !4951

for.cond27.preheader:                             ; preds = %for.cond
  br label %for.cond27, !dbg !4952

for.body:                                         ; preds = %for.cond
  %cmp6 = icmp eq i32 %j.0, 0, !dbg !4954
  br i1 %cmp6, label %if.then, label %if.else, !dbg !4954

if.then:                                          ; preds = %for.body
  %2 = shl i32 %tmp.0, 24, !dbg !4957
  %3 = lshr i32 %tmp.0, 8, !dbg !4957
  %4 = or i32 %2, %3, !dbg !4957
    #dbg_value(i32 %4, !4941, !DIExpression(), !4923)
  %call = call fastcc i32 @sub_word(i32 noundef %4) #4, !dbg !4959
  %arrayidx9 = getelementptr inbounds nuw [10 x i8], ptr @Rcon, i32 0, i32 %k.0, !dbg !4960
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !4960
  %conv = zext i8 %5 to i32, !dbg !4960
  %xor = xor i32 %call, %conv, !dbg !4961
    #dbg_value(i32 %xor, !4941, !DIExpression(), !4923)
  br label %if.end16, !dbg !4962

if.else:                                          ; preds = %for.body
  %cmp10 = icmp samesign ugt i32 %key_len, 27, !dbg !4963
  %cmp12 = icmp eq i32 %j.0, 4
  %or.cond = and i1 %cmp10, %cmp12, !dbg !4965
  br i1 %or.cond, label %if.then14, label %if.end16, !dbg !4965

if.then14:                                        ; preds = %if.else
  %call15 = call fastcc i32 @sub_word(i32 noundef %tmp.0) #4, !dbg !4966
    #dbg_value(i32 %call15, !4941, !DIExpression(), !4923)
  br label %if.end16, !dbg !4968

if.end16:                                         ; preds = %if.else, %if.then14, %if.then
  %tmp.2 = phi i32 [ %xor, %if.then ], [ %call15, %if.then14 ], [ %tmp.0, %if.else ], !dbg !4969
    #dbg_value(i32 %tmp.2, !4941, !DIExpression(), !4923)
  %sub17 = sub nuw nsw i32 %i.0, %shr1, !dbg !4970
  %arrayidx18 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub17, !dbg !4971
  %6 = load i32, ptr %arrayidx18, align 4, !dbg !4971
  %xor19 = xor i32 %tmp.2, %6, !dbg !4972
    #dbg_value(i32 %xor19, !4941, !DIExpression(), !4923)
  %arrayidx20 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %i.0, !dbg !4973
  store i32 %xor19, ptr %arrayidx20, align 4, !dbg !4974
  %inc = add i32 %j.0, 1, !dbg !4975
    #dbg_value(i32 %inc, !4943, !DIExpression(), !4923)
  %cmp21 = icmp eq i32 %inc, %shr1, !dbg !4977
  %spec.select = select i1 %cmp21, i32 0, i32 %inc, !dbg !4977
  %inc24 = zext i1 %cmp21 to i32, !dbg !4977
  %spec.select1 = add i32 %k.0, %inc24, !dbg !4977
    #dbg_value(i32 %spec.select1, !4944, !DIExpression(), !4923)
    #dbg_value(i32 %spec.select, !4943, !DIExpression(), !4923)
  %inc26 = add nuw nsw i32 %i.0, 1, !dbg !4978
    #dbg_value(i32 %inc26, !4942, !DIExpression(), !4923)
  br label %for.cond, !dbg !4979, !llvm.loop !4980

for.cond27:                                       ; preds = %for.cond27.preheader, %for.body30
  %i.1 = phi i32 [ %add73, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !4982
  %j.2 = phi i32 [ %add74, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !4982
    #dbg_value(i32 %j.2, !4943, !DIExpression(), !4923)
    #dbg_value(i32 %i.1, !4942, !DIExpression(), !4923)
  %cmp28 = icmp samesign ult i32 %i.1, %shl, !dbg !4983
  br i1 %cmp28, label %for.body30, label %for.end75, !dbg !4952

for.body30:                                       ; preds = %for.cond27
    #dbg_declare(ptr %q, !4985, !DIExpression(), !4990)
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !4991
  %add.ptr = getelementptr inbounds nuw i32, ptr %skey, i32 %i.1, !dbg !4992
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q, ptr noundef nonnull %arrayidx32, ptr noundef nonnull %add.ptr) #4, !dbg !4993
  %7 = load i64, ptr %q, align 8, !dbg !4994
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !4995
  store i64 %7, ptr %arrayidx35, align 8, !dbg !4996
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !4997
  store i64 %7, ptr %arrayidx37, align 8, !dbg !4998
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !4999
  store i64 %7, ptr %arrayidx39, align 8, !dbg !5000
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5001
  %8 = load i64, ptr %arrayidx40, align 8, !dbg !5001
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5002
  store i64 %8, ptr %arrayidx41, align 8, !dbg !5003
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5004
  store i64 %8, ptr %arrayidx43, align 8, !dbg !5005
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5006
  store i64 %8, ptr %arrayidx45, align 8, !dbg !5007
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5008
  %9 = load i64, ptr %q, align 8, !dbg !5009
  %and = and i64 %9, 1229782938247303441, !dbg !5010
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5011
  %10 = load i64, ptr %arrayidx48, align 8, !dbg !5011
  %and49 = and i64 %10, 2459565876494606882, !dbg !5012
  %or50 = or disjoint i64 %and, %and49, !dbg !5013
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5014
  %11 = load i64, ptr %arrayidx51, align 8, !dbg !5014
  %and52 = and i64 %11, 4919131752989213764, !dbg !5015
  %or53 = or disjoint i64 %or50, %and52, !dbg !5016
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5017
  %12 = load i64, ptr %arrayidx54, align 8, !dbg !5017
  %and55 = and i64 %12, -8608480567731124088, !dbg !5018
  %or56 = or disjoint i64 %or53, %and55, !dbg !5019
  %arrayidx58 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %j.2, !dbg !5020
  store i64 %or56, ptr %arrayidx58, align 8, !dbg !5021
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5022
  %13 = load i64, ptr %arrayidx59, align 8, !dbg !5022
  %and60 = and i64 %13, 1229782938247303441, !dbg !5023
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5024
  %14 = load i64, ptr %arrayidx61, align 8, !dbg !5024
  %and62 = and i64 %14, 2459565876494606882, !dbg !5025
  %or63 = or disjoint i64 %and60, %and62, !dbg !5026
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5027
  %15 = load i64, ptr %arrayidx64, align 8, !dbg !5027
  %and65 = and i64 %15, 4919131752989213764, !dbg !5028
  %or66 = or disjoint i64 %or63, %and65, !dbg !5029
  %arrayidx67 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5030
  %16 = load i64, ptr %arrayidx67, align 8, !dbg !5030
  %and68 = and i64 %16, -8608480567731124088, !dbg !5031
  %or69 = or disjoint i64 %or66, %and68, !dbg !5032
  %add70 = or disjoint i32 %j.2, 1, !dbg !5033
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %add70, !dbg !5034
  store i64 %or69, ptr %arrayidx71, align 8, !dbg !5035
  %add73 = add nuw nsw i32 %i.1, 4, !dbg !5036
    #dbg_value(i32 %add73, !4942, !DIExpression(), !4923)
  %add74 = add nuw nsw i32 %j.2, 2, !dbg !5037
    #dbg_value(i32 %add74, !4943, !DIExpression(), !4923)
  br label %for.cond27, !dbg !5038, !llvm.loop !5039

for.end75:                                        ; preds = %for.cond27
  ret void, !dbg !5041
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_skey_expand(ptr noundef %skey, ptr noundef nonnull %comp_skey, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5042 {
entry:
    #dbg_value(ptr %skey, !5045, !DIExpression(), !5046)
    #dbg_value(ptr %comp_skey, !5047, !DIExpression(), !5046)
    #dbg_value(i32 %nrounds, !5048, !DIExpression(), !5046)
  %add = shl nuw nsw i32 %nrounds, 1, !dbg !5049
  %shl = add nuw nsw i32 %add, 2, !dbg !5049
    #dbg_value(i32 %shl, !5050, !DIExpression(), !5046)
    #dbg_value(i32 0, !5051, !DIExpression(), !5046)
    #dbg_value(i32 0, !5052, !DIExpression(), !5046)
  br label %for.cond, !dbg !5053

for.cond:                                         ; preds = %for.body, %entry
  %u.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5055
  %v.0 = phi i32 [ 0, %entry ], [ %add21, %for.body ], !dbg !5055
    #dbg_value(i32 %v.0, !5052, !DIExpression(), !5046)
    #dbg_value(i32 %u.0, !5051, !DIExpression(), !5046)
  %exitcond = icmp ne i32 %u.0, %shl, !dbg !5056
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5058

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %u.0, !dbg !5059
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5059
    #dbg_value(i64 %0, !5061, !DIExpression(), !5062)
    #dbg_value(i64 %0, !5063, !DIExpression(), !5062)
    #dbg_value(i64 %0, !5064, !DIExpression(), !5062)
    #dbg_value(i64 %0, !5065, !DIExpression(), !5062)
  %and = and i64 %0, 1229782938247303441, !dbg !5066
    #dbg_value(i64 %and, !5065, !DIExpression(), !5062)
    #dbg_value(i64 %0, !5064, !DIExpression(DW_OP_constu, 2459565876494606882, DW_OP_and, DW_OP_stack_value), !5062)
    #dbg_value(i64 %0, !5063, !DIExpression(DW_OP_constu, 4919131752989213764, DW_OP_and, DW_OP_stack_value), !5062)
    #dbg_value(i64 %0, !5061, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !5062)
  %and1 = lshr i64 %0, 1, !dbg !5067
  %shr = and i64 %and1, 1229782938247303441, !dbg !5067
    #dbg_value(i64 %shr, !5064, !DIExpression(), !5062)
  %and2 = lshr i64 %0, 2, !dbg !5068
  %shr4 = and i64 %and2, 1229782938247303441, !dbg !5068
    #dbg_value(i64 %shr4, !5063, !DIExpression(), !5062)
  %and3 = lshr i64 %0, 3, !dbg !5069
  %shr5 = and i64 %and3, 1229782938247303441, !dbg !5069
    #dbg_value(i64 %shr5, !5061, !DIExpression(), !5062)
  %sub = mul nuw i64 %and, 15, !dbg !5070
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %skey, i32 %v.0, !dbg !5071
  store i64 %sub, ptr %arrayidx8, align 8, !dbg !5072
  %sub10 = mul nuw i64 %shr, 15, !dbg !5073
  %add11 = or disjoint i32 %v.0, 1, !dbg !5074
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %skey, i32 %add11, !dbg !5075
  store i64 %sub10, ptr %arrayidx12, align 8, !dbg !5076
  %sub14 = mul nuw i64 %shr4, 15, !dbg !5077
  %add15 = or disjoint i32 %v.0, 2, !dbg !5078
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %skey, i32 %add15, !dbg !5079
  store i64 %sub14, ptr %arrayidx16, align 8, !dbg !5080
  %sub18 = mul nuw i64 %shr5, 15, !dbg !5081
  %add19 = or disjoint i32 %v.0, 3, !dbg !5082
  %arrayidx20 = getelementptr inbounds nuw i64, ptr %skey, i32 %add19, !dbg !5083
  store i64 %sub18, ptr %arrayidx20, align 8, !dbg !5084
  %inc = add nuw nsw i32 %u.0, 1, !dbg !5085
    #dbg_value(i32 %inc, !5051, !DIExpression(), !5046)
  %add21 = add nuw nsw i32 %v.0, 4, !dbg !5086
    #dbg_value(i32 %add21, !5052, !DIExpression(), !5046)
  br label %for.cond, !dbg !5087, !llvm.loop !5088

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5090
}

; Function Attrs: nounwind
define internal fastcc void @br_range_dec32le(ptr noundef nonnull %v, i32 noundef range(i32 3, 17) %num, ptr noundef %src) unnamed_addr #0 !dbg !5091 {
entry:
    #dbg_value(ptr %v, !5095, !DIExpression(), !5096)
    #dbg_value(i32 %num, !5097, !DIExpression(), !5096)
    #dbg_value(ptr %src, !5098, !DIExpression(), !5096)
  br label %while.cond, !dbg !5099

while.cond:                                       ; preds = %while.body, %entry
  %src.addr.0 = phi ptr [ %src, %entry ], [ %add.ptr, %while.body ]
  %num.addr.0 = phi i32 [ %num, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
    #dbg_value(ptr %v.addr.0, !5095, !DIExpression(), !5096)
    #dbg_value(i32 %num.addr.0, !5097, !DIExpression(), !5096)
    #dbg_value(ptr %src.addr.0, !5098, !DIExpression(), !5096)
    #dbg_value(i32 %num.addr.0, !5097, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5096)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5100
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5099

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5101
    #dbg_value(i32 %dec, !5097, !DIExpression(), !5096)
  %call = call fastcc i32 @br_dec32le(ptr noundef %src.addr.0) #4, !dbg !5102
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5104
    #dbg_value(ptr %incdec.ptr, !5095, !DIExpression(), !5096)
  store i32 %call, ptr %v.addr.0, align 4, !dbg !5105
  %add.ptr = getelementptr inbounds nuw i8, ptr %src.addr.0, i32 4, !dbg !5106
    #dbg_value(ptr %add.ptr, !5098, !DIExpression(), !5096)
  br label %while.cond, !dbg !5099, !llvm.loop !5107

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5109
}

; Function Attrs: nounwind
define internal fastcc i32 @sub_word(i32 noundef %x) unnamed_addr #0 !dbg !5110 {
entry:
  %q = alloca [8 x i64], align 8
    #dbg_value(i32 %x, !5113, !DIExpression(), !5114)
    #dbg_declare(ptr %q, !5115, !DIExpression(), !5116)
  %call = call ptr @memset(ptr noundef nonnull %q, i32 noundef 0, i32 noundef 64) #6, !dbg !5117
  %conv = zext i32 %x to i64, !dbg !5118
  store i64 %conv, ptr %q, align 8, !dbg !5119
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5120
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5121
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5122
  %0 = load i64, ptr %q, align 8, !dbg !5123
  %conv5 = trunc i64 %0 to i32, !dbg !5124
  ret i32 %conv5, !dbg !5125
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q0, ptr noundef nonnull %q1, ptr noundef nonnull %w) unnamed_addr #0 !dbg !5126 {
entry:
    #dbg_value(ptr %q0, !5131, !DIExpression(), !5132)
    #dbg_value(ptr %q1, !5133, !DIExpression(), !5132)
    #dbg_value(ptr %w, !5134, !DIExpression(), !5132)
  %0 = load i32, ptr %w, align 4, !dbg !5135
  %conv = zext i32 %0 to i64, !dbg !5135
    #dbg_value(i64 %conv, !5136, !DIExpression(), !5132)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5137
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !5137
  %conv2 = zext i32 %1 to i64, !dbg !5137
    #dbg_value(i64 %conv2, !5138, !DIExpression(), !5132)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5139
  %2 = load i32, ptr %arrayidx3, align 4, !dbg !5139
  %conv4 = zext i32 %2 to i64, !dbg !5139
    #dbg_value(i64 %conv4, !5140, !DIExpression(), !5132)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5141
  %3 = load i32, ptr %arrayidx5, align 4, !dbg !5141
  %conv6 = zext i32 %3 to i64, !dbg !5141
    #dbg_value(i64 %conv6, !5142, !DIExpression(), !5132)
  %shl = shl nuw nsw i64 %conv, 16, !dbg !5143
  %or = or i64 %shl, %conv, !dbg !5144
    #dbg_value(i64 %or, !5136, !DIExpression(), !5132)
  %shl7 = shl nuw nsw i64 %conv2, 16, !dbg !5145
  %or8 = or i64 %shl7, %conv2, !dbg !5146
    #dbg_value(i64 %or8, !5138, !DIExpression(), !5132)
  %shl9 = shl nuw nsw i64 %conv4, 16, !dbg !5147
  %or10 = or i64 %shl9, %conv4, !dbg !5148
    #dbg_value(i64 %or10, !5140, !DIExpression(), !5132)
  %shl11 = shl nuw nsw i64 %conv6, 16, !dbg !5149
  %or12 = or i64 %shl11, %conv6, !dbg !5150
    #dbg_value(i64 %or12, !5142, !DIExpression(), !5132)
  %and = and i64 %or, 281470681808895, !dbg !5151
    #dbg_value(i64 %and, !5136, !DIExpression(), !5132)
  %and13 = and i64 %or8, 281470681808895, !dbg !5152
    #dbg_value(i64 %and13, !5138, !DIExpression(), !5132)
  %and14 = and i64 %or10, 281470681808895, !dbg !5153
    #dbg_value(i64 %and14, !5140, !DIExpression(), !5132)
  %and15 = and i64 %or12, 281470681808895, !dbg !5154
    #dbg_value(i64 %and15, !5142, !DIExpression(), !5132)
  %shl16 = shl nuw nsw i64 %and, 8, !dbg !5155
  %or17 = or i64 %and, %shl16, !dbg !5156
    #dbg_value(i64 %or17, !5136, !DIExpression(), !5132)
  %shl18 = shl nuw nsw i64 %and13, 8, !dbg !5157
  %or19 = or i64 %and13, %shl18, !dbg !5158
    #dbg_value(i64 %or19, !5138, !DIExpression(), !5132)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5140, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5132)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5142, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5132)
  %and24 = and i64 %or17, 71777214294589695, !dbg !5159
    #dbg_value(i64 %and24, !5136, !DIExpression(), !5132)
  %and25 = and i64 %or19, 71777214294589695, !dbg !5160
    #dbg_value(i64 %and25, !5138, !DIExpression(), !5132)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5140, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5132)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5142, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5132)
  %4 = shl nuw i64 %and14, 16, !dbg !5161
  %5 = shl nuw nsw i64 %and14, 8, !dbg !5161
  %and26 = or i64 %4, %5, !dbg !5161
  %shl28 = and i64 %and26, -71777214294589696, !dbg !5161
  %or29 = or disjoint i64 %and24, %shl28, !dbg !5162
  store i64 %or29, ptr %q0, align 8, !dbg !5163
  %6 = shl nuw i64 %and15, 16, !dbg !5164
  %7 = shl nuw nsw i64 %and15, 8, !dbg !5164
  %and27 = or i64 %6, %7, !dbg !5164
  %shl30 = and i64 %and27, -71777214294589696, !dbg !5164
  %or31 = or disjoint i64 %and25, %shl30, !dbg !5165
  store i64 %or31, ptr %q1, align 8, !dbg !5166
  ret void, !dbg !5167
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5168 {
entry:
    #dbg_value(ptr %q, !5169, !DIExpression(), !5170)
  %0 = load i64, ptr %q, align 8, !dbg !5171
    #dbg_value(i64 %0, !5173, !DIExpression(), !5174)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5171
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5171
    #dbg_value(i64 %1, !5175, !DIExpression(), !5174)
  %and = and i64 %0, 6148914691236517205, !dbg !5171
  %and2 = shl i64 %1, 1, !dbg !5171
  %shl = and i64 %and2, -6148914691236517206, !dbg !5171
  %or = or disjoint i64 %and, %shl, !dbg !5171
  store i64 %or, ptr %q, align 8, !dbg !5171
  %and4 = lshr i64 %0, 1, !dbg !5171
  %shr = and i64 %and4, 6148914691236517205, !dbg !5171
  %and5 = and i64 %1, -6148914691236517206, !dbg !5171
  %or6 = or disjoint i64 %shr, %and5, !dbg !5171
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5171
  store i64 %or6, ptr %arrayidx7, align 8, !dbg !5171
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5176
  %2 = load i64, ptr %arrayidx11, align 8, !dbg !5176
    #dbg_value(i64 %2, !5178, !DIExpression(), !5179)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5176
  %3 = load i64, ptr %arrayidx12, align 8, !dbg !5176
    #dbg_value(i64 %3, !5180, !DIExpression(), !5179)
  %and13 = and i64 %2, 6148914691236517205, !dbg !5176
  %and14 = shl i64 %3, 1, !dbg !5176
  %shl15 = and i64 %and14, -6148914691236517206, !dbg !5176
  %or16 = or disjoint i64 %and13, %shl15, !dbg !5176
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5176
  store i64 %or16, ptr %arrayidx17, align 8, !dbg !5176
  %and18 = lshr i64 %2, 1, !dbg !5176
  %shr19 = and i64 %and18, 6148914691236517205, !dbg !5176
  %and20 = and i64 %3, -6148914691236517206, !dbg !5176
  %or21 = or disjoint i64 %shr19, %and20, !dbg !5176
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5176
  store i64 %or21, ptr %arrayidx22, align 8, !dbg !5176
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5181
  %4 = load i64, ptr %arrayidx27, align 8, !dbg !5181
    #dbg_value(i64 %4, !5183, !DIExpression(), !5184)
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5181
  %5 = load i64, ptr %arrayidx28, align 8, !dbg !5181
    #dbg_value(i64 %5, !5185, !DIExpression(), !5184)
  %and29 = and i64 %4, 6148914691236517205, !dbg !5181
  %and30 = shl i64 %5, 1, !dbg !5181
  %shl31 = and i64 %and30, -6148914691236517206, !dbg !5181
  %or32 = or disjoint i64 %and29, %shl31, !dbg !5181
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5181
  store i64 %or32, ptr %arrayidx33, align 8, !dbg !5181
  %and34 = lshr i64 %4, 1, !dbg !5181
  %shr35 = and i64 %and34, 6148914691236517205, !dbg !5181
  %and36 = and i64 %5, -6148914691236517206, !dbg !5181
  %or37 = or disjoint i64 %shr35, %and36, !dbg !5181
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5181
  store i64 %or37, ptr %arrayidx38, align 8, !dbg !5181
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5186
  %6 = load i64, ptr %arrayidx43, align 8, !dbg !5186
    #dbg_value(i64 %6, !5188, !DIExpression(), !5189)
  %arrayidx44 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5186
  %7 = load i64, ptr %arrayidx44, align 8, !dbg !5186
    #dbg_value(i64 %7, !5190, !DIExpression(), !5189)
  %and45 = and i64 %6, 6148914691236517205, !dbg !5186
  %and46 = shl i64 %7, 1, !dbg !5186
  %shl47 = and i64 %and46, -6148914691236517206, !dbg !5186
  %or48 = or disjoint i64 %and45, %shl47, !dbg !5186
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5186
  store i64 %or48, ptr %arrayidx49, align 8, !dbg !5186
  %and50 = lshr i64 %6, 1, !dbg !5186
  %shr51 = and i64 %and50, 6148914691236517205, !dbg !5186
  %and52 = and i64 %7, -6148914691236517206, !dbg !5186
  %or53 = or disjoint i64 %shr51, %and52, !dbg !5186
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5186
  store i64 %or53, ptr %arrayidx54, align 8, !dbg !5186
  %8 = load i64, ptr %q, align 8, !dbg !5191
    #dbg_value(i64 %8, !5193, !DIExpression(), !5194)
  %arrayidx60 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5191
  %9 = load i64, ptr %arrayidx60, align 8, !dbg !5191
    #dbg_value(i64 %9, !5195, !DIExpression(), !5194)
  %and61 = and i64 %8, 3689348814741910323, !dbg !5191
  %and62 = shl i64 %9, 2, !dbg !5191
  %shl63 = and i64 %and62, -3689348814741910324, !dbg !5191
  %or64 = or disjoint i64 %and61, %shl63, !dbg !5191
  store i64 %or64, ptr %q, align 8, !dbg !5191
  %and66 = lshr i64 %8, 2, !dbg !5191
  %shr67 = and i64 %and66, 3689348814741910323, !dbg !5191
  %and68 = and i64 %9, -3689348814741910324, !dbg !5191
  %or69 = or disjoint i64 %shr67, %and68, !dbg !5191
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5191
  store i64 %or69, ptr %arrayidx70, align 8, !dbg !5191
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5196
  %10 = load i64, ptr %arrayidx75, align 8, !dbg !5196
    #dbg_value(i64 %10, !5198, !DIExpression(), !5199)
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5196
  %11 = load i64, ptr %arrayidx76, align 8, !dbg !5196
    #dbg_value(i64 %11, !5200, !DIExpression(), !5199)
  %and77 = and i64 %10, 3689348814741910323, !dbg !5196
  %and78 = shl i64 %11, 2, !dbg !5196
  %shl79 = and i64 %and78, -3689348814741910324, !dbg !5196
  %or80 = or disjoint i64 %and77, %shl79, !dbg !5196
  %arrayidx81 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5196
  store i64 %or80, ptr %arrayidx81, align 8, !dbg !5196
  %and82 = lshr i64 %10, 2, !dbg !5196
  %shr83 = and i64 %and82, 3689348814741910323, !dbg !5196
  %and84 = and i64 %11, -3689348814741910324, !dbg !5196
  %or85 = or disjoint i64 %shr83, %and84, !dbg !5196
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5196
  store i64 %or85, ptr %arrayidx86, align 8, !dbg !5196
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5201
  %12 = load i64, ptr %arrayidx91, align 8, !dbg !5201
    #dbg_value(i64 %12, !5203, !DIExpression(), !5204)
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5201
  %13 = load i64, ptr %arrayidx92, align 8, !dbg !5201
    #dbg_value(i64 %13, !5205, !DIExpression(), !5204)
  %and93 = and i64 %12, 3689348814741910323, !dbg !5201
  %and94 = shl i64 %13, 2, !dbg !5201
  %shl95 = and i64 %and94, -3689348814741910324, !dbg !5201
  %or96 = or disjoint i64 %and93, %shl95, !dbg !5201
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5201
  store i64 %or96, ptr %arrayidx97, align 8, !dbg !5201
  %and98 = lshr i64 %12, 2, !dbg !5201
  %shr99 = and i64 %and98, 3689348814741910323, !dbg !5201
  %and100 = and i64 %13, -3689348814741910324, !dbg !5201
  %or101 = or disjoint i64 %shr99, %and100, !dbg !5201
  %arrayidx102 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5201
  store i64 %or101, ptr %arrayidx102, align 8, !dbg !5201
  %arrayidx107 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5206
  %14 = load i64, ptr %arrayidx107, align 8, !dbg !5206
    #dbg_value(i64 %14, !5208, !DIExpression(), !5209)
  %arrayidx108 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5206
  %15 = load i64, ptr %arrayidx108, align 8, !dbg !5206
    #dbg_value(i64 %15, !5210, !DIExpression(), !5209)
  %and109 = and i64 %14, 3689348814741910323, !dbg !5206
  %and110 = shl i64 %15, 2, !dbg !5206
  %shl111 = and i64 %and110, -3689348814741910324, !dbg !5206
  %or112 = or disjoint i64 %and109, %shl111, !dbg !5206
  %arrayidx113 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5206
  store i64 %or112, ptr %arrayidx113, align 8, !dbg !5206
  %and114 = lshr i64 %14, 2, !dbg !5206
  %shr115 = and i64 %and114, 3689348814741910323, !dbg !5206
  %and116 = and i64 %15, -3689348814741910324, !dbg !5206
  %or117 = or disjoint i64 %shr115, %and116, !dbg !5206
  %arrayidx118 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5206
  store i64 %or117, ptr %arrayidx118, align 8, !dbg !5206
  %16 = load i64, ptr %q, align 8, !dbg !5211
    #dbg_value(i64 %16, !5213, !DIExpression(), !5214)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5211
  %17 = load i64, ptr %arrayidx124, align 8, !dbg !5211
    #dbg_value(i64 %17, !5215, !DIExpression(), !5214)
  %and125 = and i64 %16, 1085102592571150095, !dbg !5211
  %and126 = shl i64 %17, 4, !dbg !5211
  %shl127 = and i64 %and126, -1085102592571150096, !dbg !5211
  %or128 = or disjoint i64 %and125, %shl127, !dbg !5211
  store i64 %or128, ptr %q, align 8, !dbg !5211
  %and130 = lshr i64 %16, 4, !dbg !5211
  %shr131 = and i64 %and130, 1085102592571150095, !dbg !5211
  %and132 = and i64 %17, -1085102592571150096, !dbg !5211
  %or133 = or disjoint i64 %shr131, %and132, !dbg !5211
  %arrayidx134 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5211
  store i64 %or133, ptr %arrayidx134, align 8, !dbg !5211
  %arrayidx139 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5216
  %18 = load i64, ptr %arrayidx139, align 8, !dbg !5216
    #dbg_value(i64 %18, !5218, !DIExpression(), !5219)
  %arrayidx140 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5216
  %19 = load i64, ptr %arrayidx140, align 8, !dbg !5216
    #dbg_value(i64 %19, !5220, !DIExpression(), !5219)
  %and141 = and i64 %18, 1085102592571150095, !dbg !5216
  %and142 = shl i64 %19, 4, !dbg !5216
  %shl143 = and i64 %and142, -1085102592571150096, !dbg !5216
  %or144 = or disjoint i64 %and141, %shl143, !dbg !5216
  %arrayidx145 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5216
  store i64 %or144, ptr %arrayidx145, align 8, !dbg !5216
  %and146 = lshr i64 %18, 4, !dbg !5216
  %shr147 = and i64 %and146, 1085102592571150095, !dbg !5216
  %and148 = and i64 %19, -1085102592571150096, !dbg !5216
  %or149 = or disjoint i64 %shr147, %and148, !dbg !5216
  %arrayidx150 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5216
  store i64 %or149, ptr %arrayidx150, align 8, !dbg !5216
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5221
  %20 = load i64, ptr %arrayidx155, align 8, !dbg !5221
    #dbg_value(i64 %20, !5223, !DIExpression(), !5224)
  %arrayidx156 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5221
  %21 = load i64, ptr %arrayidx156, align 8, !dbg !5221
    #dbg_value(i64 %21, !5225, !DIExpression(), !5224)
  %and157 = and i64 %20, 1085102592571150095, !dbg !5221
  %and158 = shl i64 %21, 4, !dbg !5221
  %shl159 = and i64 %and158, -1085102592571150096, !dbg !5221
  %or160 = or disjoint i64 %and157, %shl159, !dbg !5221
  %arrayidx161 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5221
  store i64 %or160, ptr %arrayidx161, align 8, !dbg !5221
  %and162 = lshr i64 %20, 4, !dbg !5221
  %shr163 = and i64 %and162, 1085102592571150095, !dbg !5221
  %and164 = and i64 %21, -1085102592571150096, !dbg !5221
  %or165 = or disjoint i64 %shr163, %and164, !dbg !5221
  %arrayidx166 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5221
  store i64 %or165, ptr %arrayidx166, align 8, !dbg !5221
  %arrayidx171 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5226
  %22 = load i64, ptr %arrayidx171, align 8, !dbg !5226
    #dbg_value(i64 %22, !5228, !DIExpression(), !5229)
  %arrayidx172 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5226
  %23 = load i64, ptr %arrayidx172, align 8, !dbg !5226
    #dbg_value(i64 %23, !5230, !DIExpression(), !5229)
  %and173 = and i64 %22, 1085102592571150095, !dbg !5226
  %and174 = shl i64 %23, 4, !dbg !5226
  %shl175 = and i64 %and174, -1085102592571150096, !dbg !5226
  %or176 = or disjoint i64 %and173, %shl175, !dbg !5226
  %arrayidx177 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5226
  store i64 %or176, ptr %arrayidx177, align 8, !dbg !5226
  %and178 = lshr i64 %22, 4, !dbg !5226
  %shr179 = and i64 %and178, 1085102592571150095, !dbg !5226
  %and180 = and i64 %23, -1085102592571150096, !dbg !5226
  %or181 = or disjoint i64 %shr179, %and180, !dbg !5226
  %arrayidx182 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5226
  store i64 %or181, ptr %arrayidx182, align 8, !dbg !5226
  ret void, !dbg !5231
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5232 {
entry:
    #dbg_value(ptr %q, !5233, !DIExpression(), !5234)
  %arrayidx = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5235
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5235
    #dbg_value(i64 %0, !5236, !DIExpression(), !5234)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5237
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5237
    #dbg_value(i64 %1, !5238, !DIExpression(), !5234)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5239
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5239
    #dbg_value(i64 %2, !5240, !DIExpression(), !5234)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5241
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5241
    #dbg_value(i64 %3, !5242, !DIExpression(), !5234)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5243
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5243
    #dbg_value(i64 %4, !5244, !DIExpression(), !5234)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5245
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5245
    #dbg_value(i64 %5, !5246, !DIExpression(), !5234)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5247
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5247
    #dbg_value(i64 %6, !5248, !DIExpression(), !5234)
  %7 = load i64, ptr %q, align 8, !dbg !5249
    #dbg_value(i64 %7, !5250, !DIExpression(), !5234)
  %xor = xor i64 %3, %5, !dbg !5251
    #dbg_value(i64 %xor, !5252, !DIExpression(), !5234)
  %xor8 = xor i64 %0, %6, !dbg !5253
    #dbg_value(i64 %xor8, !5254, !DIExpression(), !5234)
  %xor9 = xor i64 %0, %3, !dbg !5255
    #dbg_value(i64 %xor9, !5256, !DIExpression(), !5234)
  %xor10 = xor i64 %0, %5, !dbg !5257
    #dbg_value(i64 %xor10, !5258, !DIExpression(), !5234)
  %xor11 = xor i64 %1, %2, !dbg !5259
    #dbg_value(i64 %xor11, !5260, !DIExpression(), !5234)
  %xor12 = xor i64 %xor11, %7, !dbg !5261
    #dbg_value(i64 %xor12, !5262, !DIExpression(), !5234)
  %xor13 = xor i64 %xor12, %3, !dbg !5263
    #dbg_value(i64 %xor13, !5264, !DIExpression(), !5234)
  %xor14 = xor i64 %xor8, %xor, !dbg !5265
    #dbg_value(i64 %xor14, !5266, !DIExpression(), !5234)
  %xor15 = xor i64 %xor12, %0, !dbg !5267
    #dbg_value(i64 %xor15, !5268, !DIExpression(), !5234)
  %xor16 = xor i64 %xor12, %6, !dbg !5269
    #dbg_value(i64 %xor16, !5270, !DIExpression(), !5234)
  %xor17 = xor i64 %xor16, %xor10, !dbg !5271
    #dbg_value(i64 %xor17, !5272, !DIExpression(), !5234)
  %xor18 = xor i64 %4, %xor14, !dbg !5273
    #dbg_value(i64 %xor18, !5274, !DIExpression(), !5234)
  %xor19 = xor i64 %xor18, %5, !dbg !5275
    #dbg_value(i64 %xor19, !5276, !DIExpression(), !5234)
  %xor20 = xor i64 %xor18, %1, !dbg !5277
    #dbg_value(i64 %xor20, !5278, !DIExpression(), !5234)
  %xor21 = xor i64 %xor19, %7, !dbg !5279
    #dbg_value(i64 %xor21, !5280, !DIExpression(), !5234)
  %xor22 = xor i64 %xor19, %xor11, !dbg !5281
    #dbg_value(i64 %xor22, !5282, !DIExpression(), !5234)
  %xor23 = xor i64 %xor20, %xor9, !dbg !5283
    #dbg_value(i64 %xor23, !5284, !DIExpression(), !5234)
  %xor24 = xor i64 %7, %xor23, !dbg !5285
    #dbg_value(i64 %xor24, !5286, !DIExpression(), !5234)
  %xor25 = xor i64 %xor22, %xor23, !dbg !5287
    #dbg_value(i64 %xor25, !5288, !DIExpression(), !5234)
    #dbg_value(!DIArgList(i64 %xor22, i64 %xor10), !5289, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5234)
  %xor27 = xor i64 %xor11, %xor23, !dbg !5290
    #dbg_value(i64 %xor27, !5291, !DIExpression(), !5234)
    #dbg_value(!DIArgList(i64 %xor8, i64 %xor27), !5292, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5234)
    #dbg_value(!DIArgList(i64 %0, i64 %xor27), !5293, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5234)
  %and = and i64 %xor14, %xor19, !dbg !5294
    #dbg_value(i64 %and, !5295, !DIExpression(), !5234)
  %and30 = and i64 %xor17, %xor21, !dbg !5296
    #dbg_value(i64 %and30, !5297, !DIExpression(), !5234)
  %xor31 = xor i64 %and30, %and, !dbg !5298
    #dbg_value(i64 %xor31, !5299, !DIExpression(), !5234)
  %and32 = and i64 %xor13, %7, !dbg !5300
    #dbg_value(i64 %and32, !5301, !DIExpression(), !5234)
    #dbg_value(!DIArgList(i64 %and32, i64 %and), !5302, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5234)
  %and34 = and i64 %xor8, %xor27, !dbg !5303
    #dbg_value(i64 %and34, !5304, !DIExpression(), !5234)
  %and35 = and i64 %xor16, %xor12, !dbg !5305
    #dbg_value(i64 %and35, !5306, !DIExpression(), !5234)
    #dbg_value(!DIArgList(i64 %and35, i64 %and34), !5307, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5234)
  %and37 = and i64 %xor15, %xor24, !dbg !5308
    #dbg_value(i64 %and37, !5309, !DIExpression(), !5234)
    #dbg_value(!DIArgList(i64 %and37, i64 %and34), !5310, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5234)
  %and39 = and i64 %xor9, %xor23, !dbg !5311
    #dbg_value(i64 %and39, !5312, !DIExpression(), !5234)
  %and40 = and i64 %xor, %xor25, !dbg !5313
    #dbg_value(i64 %and40, !5314, !DIExpression(), !5234)
  %xor41 = xor i64 %and40, %and39, !dbg !5315
    #dbg_value(i64 %xor41, !5316, !DIExpression(), !5234)
  %and42 = and i64 %xor10, %xor22, !dbg !5317
    #dbg_value(i64 %and42, !5318, !DIExpression(), !5234)
  %xor43 = xor i64 %and42, %and39, !dbg !5319
    #dbg_value(i64 %xor43, !5320, !DIExpression(), !5234)
  %xor44 = xor i64 %xor31, %xor41, !dbg !5321
    #dbg_value(i64 %xor44, !5322, !DIExpression(), !5234)
    #dbg_value(!DIArgList(i64 %and32, i64 %xor43, i64 %and), !5323, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5234)
    #dbg_value(!DIArgList(i64 %and35, i64 %xor41, i64 %and34), !5324, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5234)
    #dbg_value(!DIArgList(i64 %and37, i64 %xor43, i64 %and34), !5325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5234)
  %xor48 = xor i64 %xor44, %xor20, !dbg !5326
    #dbg_value(i64 %xor48, !5327, !DIExpression(), !5234)
  %8 = xor i64 %xor10, %and32, !dbg !5328
  %9 = xor i64 %8, %xor22, !dbg !5328
  %10 = xor i64 %9, %and, !dbg !5328
  %xor49 = xor i64 %10, %xor43, !dbg !5328
    #dbg_value(i64 %xor49, !5329, !DIExpression(), !5234)
  %11 = xor i64 %xor27, %and35, !dbg !5330
  %12 = xor i64 %11, %xor8, !dbg !5330
  %13 = xor i64 %12, %and34, !dbg !5330
  %xor50 = xor i64 %13, %xor41, !dbg !5330
    #dbg_value(i64 %xor50, !5331, !DIExpression(), !5234)
  %14 = xor i64 %xor27, %and37, !dbg !5332
  %15 = xor i64 %14, %0, !dbg !5332
  %16 = xor i64 %15, %and34, !dbg !5332
  %xor51 = xor i64 %16, %xor43, !dbg !5332
    #dbg_value(i64 %xor51, !5333, !DIExpression(), !5234)
  %xor52 = xor i64 %xor48, %xor49, !dbg !5334
    #dbg_value(i64 %xor52, !5335, !DIExpression(), !5234)
  %and53 = and i64 %xor48, %xor50, !dbg !5336
    #dbg_value(i64 %and53, !5337, !DIExpression(), !5234)
  %xor54 = xor i64 %xor51, %and53, !dbg !5338
    #dbg_value(i64 %xor54, !5339, !DIExpression(), !5234)
  %and55 = and i64 %xor52, %xor54, !dbg !5340
    #dbg_value(i64 %and55, !5341, !DIExpression(), !5234)
  %xor56 = xor i64 %and55, %xor49, !dbg !5342
    #dbg_value(i64 %xor56, !5343, !DIExpression(), !5234)
  %xor57 = xor i64 %xor50, %xor51, !dbg !5344
    #dbg_value(i64 %xor57, !5345, !DIExpression(), !5234)
  %xor58 = xor i64 %xor49, %and53, !dbg !5346
    #dbg_value(i64 %xor58, !5347, !DIExpression(), !5234)
  %and59 = and i64 %xor58, %xor57, !dbg !5348
    #dbg_value(i64 %and59, !5349, !DIExpression(), !5234)
  %xor60 = xor i64 %and59, %xor51, !dbg !5350
    #dbg_value(i64 %xor60, !5351, !DIExpression(), !5234)
  %xor61 = xor i64 %xor50, %xor60, !dbg !5352
    #dbg_value(i64 %xor61, !5353, !DIExpression(), !5234)
  %xor62 = xor i64 %and59, %and53, !dbg !5354
    #dbg_value(i64 %xor62, !5355, !DIExpression(), !5234)
  %and63 = and i64 %xor51, %xor62, !dbg !5356
    #dbg_value(i64 %and63, !5357, !DIExpression(), !5234)
  %xor64 = xor i64 %and63, %xor61, !dbg !5358
    #dbg_value(i64 %xor64, !5359, !DIExpression(), !5234)
  %xor65 = xor i64 %xor54, %and63, !dbg !5360
    #dbg_value(i64 %xor65, !5361, !DIExpression(), !5234)
  %and66 = and i64 %xor56, %xor65, !dbg !5362
    #dbg_value(i64 %and66, !5363, !DIExpression(), !5234)
  %xor67 = xor i64 %xor52, %and66, !dbg !5364
    #dbg_value(i64 %xor67, !5365, !DIExpression(), !5234)
  %xor68 = xor i64 %xor67, %xor64, !dbg !5366
    #dbg_value(i64 %xor68, !5367, !DIExpression(), !5234)
  %xor69 = xor i64 %xor56, %xor60, !dbg !5368
    #dbg_value(i64 %xor69, !5369, !DIExpression(), !5234)
  %xor70 = xor i64 %xor56, %xor67, !dbg !5370
    #dbg_value(i64 %xor70, !5371, !DIExpression(), !5234)
  %xor71 = xor i64 %and63, %xor50, !dbg !5372
    #dbg_value(i64 %xor71, !5373, !DIExpression(), !5234)
  %xor72 = xor i64 %xor69, %xor68, !dbg !5374
    #dbg_value(i64 %xor72, !5375, !DIExpression(), !5234)
  %and73 = and i64 %xor71, %xor19, !dbg !5376
    #dbg_value(i64 %and73, !5377, !DIExpression(), !5234)
  %and74 = and i64 %xor64, %xor21, !dbg !5378
    #dbg_value(i64 %and74, !5379, !DIExpression(), !5234)
  %and75 = and i64 %xor60, %7, !dbg !5380
    #dbg_value(i64 %and75, !5381, !DIExpression(), !5234)
  %and76 = and i64 %xor70, %xor27, !dbg !5382
    #dbg_value(i64 %and76, !5383, !DIExpression(), !5234)
  %and77 = and i64 %xor67, %xor12, !dbg !5384
    #dbg_value(i64 %and77, !5385, !DIExpression(), !5234)
  %and78 = and i64 %xor56, %xor24, !dbg !5386
    #dbg_value(i64 %and78, !5387, !DIExpression(), !5234)
  %and79 = and i64 %xor69, %xor23, !dbg !5388
    #dbg_value(i64 %and79, !5389, !DIExpression(), !5234)
  %and80 = and i64 %xor72, %xor25, !dbg !5390
    #dbg_value(i64 %and80, !5391, !DIExpression(), !5234)
  %and81 = and i64 %xor68, %xor22, !dbg !5392
    #dbg_value(i64 %and81, !5393, !DIExpression(), !5234)
  %and82 = and i64 %xor71, %xor14, !dbg !5394
    #dbg_value(i64 %and82, !5395, !DIExpression(), !5234)
  %and83 = and i64 %xor64, %xor17, !dbg !5396
    #dbg_value(i64 %and83, !5397, !DIExpression(), !5234)
  %and84 = and i64 %xor60, %xor13, !dbg !5398
    #dbg_value(i64 %and84, !5399, !DIExpression(), !5234)
  %and85 = and i64 %xor70, %xor8, !dbg !5400
    #dbg_value(i64 %and85, !5401, !DIExpression(), !5234)
  %and86 = and i64 %xor67, %xor16, !dbg !5402
    #dbg_value(i64 %and86, !5403, !DIExpression(), !5234)
  %and87 = and i64 %xor56, %xor15, !dbg !5404
    #dbg_value(i64 %and87, !5405, !DIExpression(), !5234)
  %and88 = and i64 %xor69, %xor9, !dbg !5406
    #dbg_value(i64 %and88, !5407, !DIExpression(), !5234)
  %and89 = and i64 %xor72, %xor, !dbg !5408
    #dbg_value(i64 %and89, !5409, !DIExpression(), !5234)
  %and90 = and i64 %xor68, %xor10, !dbg !5410
    #dbg_value(i64 %and90, !5411, !DIExpression(), !5234)
  %xor91 = xor i64 %and88, %and89, !dbg !5412
    #dbg_value(i64 %xor91, !5413, !DIExpression(), !5234)
  %xor92 = xor i64 %and83, %and84, !dbg !5414
    #dbg_value(i64 %xor92, !5415, !DIExpression(), !5234)
  %xor93 = xor i64 %and78, %and86, !dbg !5416
    #dbg_value(i64 %xor93, !5417, !DIExpression(), !5234)
  %xor94 = xor i64 %and82, %and83, !dbg !5418
    #dbg_value(i64 %xor94, !5419, !DIExpression(), !5234)
  %xor95 = xor i64 %and75, %and85, !dbg !5420
    #dbg_value(i64 %xor95, !5421, !DIExpression(), !5234)
  %xor96 = xor i64 %and75, %and78, !dbg !5422
    #dbg_value(i64 %xor96, !5423, !DIExpression(), !5234)
  %xor97 = xor i64 %and80, %and81, !dbg !5424
    #dbg_value(i64 %xor97, !5425, !DIExpression(), !5234)
  %xor98 = xor i64 %and73, %and76, !dbg !5426
    #dbg_value(i64 %xor98, !5427, !DIExpression(), !5234)
  %xor99 = xor i64 %and79, %and80, !dbg !5428
    #dbg_value(i64 %xor99, !5429, !DIExpression(), !5234)
  %xor100 = xor i64 %and89, %and90, !dbg !5430
    #dbg_value(i64 %xor100, !5431, !DIExpression(), !5234)
  %xor101 = xor i64 %and85, %xor93, !dbg !5432
    #dbg_value(i64 %xor101, !5433, !DIExpression(), !5234)
  %xor102 = xor i64 %xor95, %xor98, !dbg !5434
    #dbg_value(i64 %xor102, !5435, !DIExpression(), !5234)
  %xor103 = xor i64 %and77, %xor91, !dbg !5436
    #dbg_value(i64 %xor103, !5437, !DIExpression(), !5234)
  %xor104 = xor i64 %and76, %xor99, !dbg !5438
    #dbg_value(i64 %xor104, !5439, !DIExpression(), !5234)
  %xor105 = xor i64 %xor91, %xor102, !dbg !5440
    #dbg_value(i64 %xor105, !5441, !DIExpression(), !5234)
  %xor106 = xor i64 %and87, %xor102, !dbg !5442
    #dbg_value(i64 %xor106, !5443, !DIExpression(), !5234)
  %xor107 = xor i64 %xor97, %xor103, !dbg !5444
    #dbg_value(i64 %xor107, !5445, !DIExpression(), !5234)
  %xor108 = xor i64 %xor94, %xor103, !dbg !5446
    #dbg_value(i64 %xor108, !5447, !DIExpression(), !5234)
  %xor109 = xor i64 %and77, %xor104, !dbg !5448
    #dbg_value(i64 %xor109, !5449, !DIExpression(), !5234)
  %xor110 = xor i64 %xor106, %xor107, !dbg !5450
    #dbg_value(i64 %xor110, !5451, !DIExpression(), !5234)
  %xor111 = xor i64 %and74, %xor108, !dbg !5452
    #dbg_value(i64 %xor111, !5453, !DIExpression(), !5234)
  %xor112 = xor i64 %xor104, %xor108, !dbg !5454
    #dbg_value(i64 %xor112, !5455, !DIExpression(), !5234)
  %17 = xor i64 %xor107, %xor101, !dbg !5456
  %xor113 = xor i64 %17, -1, !dbg !5456
    #dbg_value(i64 %xor113, !5457, !DIExpression(), !5234)
  %18 = xor i64 %xor105, %xor93, !dbg !5458
  %xor115 = xor i64 %18, -1, !dbg !5458
    #dbg_value(i64 %xor115, !5459, !DIExpression(), !5234)
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor110), !5460, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5234)
  %xor117 = xor i64 %xor98, %xor111, !dbg !5461
    #dbg_value(i64 %xor117, !5462, !DIExpression(), !5234)
  %xor118 = xor i64 %xor96, %xor111, !dbg !5463
    #dbg_value(i64 %xor118, !5464, !DIExpression(), !5234)
  %xor119 = xor i64 %xor92, %xor110, !dbg !5465
    #dbg_value(i64 %xor119, !5466, !DIExpression(), !5234)
  %19 = xor i64 %xor117, %xor109, !dbg !5467
  %xor121 = xor i64 %19, -1, !dbg !5467
    #dbg_value(i64 %xor121, !5468, !DIExpression(), !5234)
  %20 = xor i64 %xor110, %xor100, !dbg !5469
  %21 = xor i64 %20, %xor109, !dbg !5469
  %xor123 = xor i64 %21, -1, !dbg !5469
    #dbg_value(i64 %xor123, !5470, !DIExpression(), !5234)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5471
  store i64 %xor112, ptr %arrayidx124, align 8, !dbg !5472
  %arrayidx125 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5473
  store i64 %xor121, ptr %arrayidx125, align 8, !dbg !5474
  %arrayidx126 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5475
  store i64 %xor123, ptr %arrayidx126, align 8, !dbg !5476
  %arrayidx127 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5477
  store i64 %xor117, ptr %arrayidx127, align 8, !dbg !5478
  %arrayidx128 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5479
  store i64 %xor118, ptr %arrayidx128, align 8, !dbg !5480
  %arrayidx129 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5481
  store i64 %xor119, ptr %arrayidx129, align 8, !dbg !5482
  %arrayidx130 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5483
  store i64 %xor113, ptr %arrayidx130, align 8, !dbg !5484
  store i64 %xor115, ptr %q, align 8, !dbg !5485
  ret void, !dbg !5486
}

; Function Attrs: nounwind
define internal fastcc i32 @br_dec32le(ptr noundef %src) unnamed_addr #0 !dbg !5487 {
entry:
    #dbg_value(ptr %src, !5490, !DIExpression(), !5491)
  %0 = load i8, ptr %src, align 1, !dbg !5492
  %conv = zext i8 %0 to i32, !dbg !5493
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %src, i32 1, !dbg !5494
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !5494
  %conv2 = zext i8 %1 to i32, !dbg !5495
  %shl = shl nuw nsw i32 %conv2, 8, !dbg !5496
  %or = or disjoint i32 %shl, %conv, !dbg !5497
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %src, i32 2, !dbg !5498
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !5498
  %conv4 = zext i8 %2 to i32, !dbg !5499
  %shl5 = shl nuw nsw i32 %conv4, 16, !dbg !5500
  %or6 = or disjoint i32 %or, %shl5, !dbg !5501
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %src, i32 3, !dbg !5502
  %3 = load i8, ptr %arrayidx7, align 1, !dbg !5502
  %conv8 = zext i8 %3 to i32, !dbg !5503
  %shl9 = shl nuw i32 %conv8, 24, !dbg !5504
  %or10 = or disjoint i32 %or6, %shl9, !dbg !5505
  ret i32 %or10, !dbg !5506
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5507 {
entry:
    #dbg_value(ptr %r, !5508, !DIExpression(), !5509)
    #dbg_value(ptr %key, !5510, !DIExpression(), !5509)
  call void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5511
  ret void, !dbg !5512
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5513 {
entry:
  %skey = alloca [26 x i64], align 8
    #dbg_value(ptr %r, !5521, !DIExpression(), !5522)
    #dbg_value(ptr %key, !5523, !DIExpression(), !5522)
    #dbg_declare(ptr %skey, !5524, !DIExpression(), !5528)
  %call = call dereferenceable_or_null(832) ptr @malloc(i32 noundef 832) #7, !dbg !5529
  store ptr %call, ptr %r, align 4, !dbg !5530
  %cmp = icmp eq ptr %call, null, !dbg !5531
  br i1 %cmp, label %if.then, label %if.end, !dbg !5531

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !5533
  br label %if.end, !dbg !5535

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 24) #4, !dbg !5536
  %0 = load ptr, ptr %r, align 4, !dbg !5537
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 12) #4, !dbg !5538
  ret void, !dbg !5539
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5540 {
entry:
    #dbg_value(ptr %r, !5541, !DIExpression(), !5542)
    #dbg_value(ptr %key, !5543, !DIExpression(), !5542)
  call void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5544
  ret void, !dbg !5545
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5546 {
entry:
  %skey = alloca [30 x i64], align 8
    #dbg_value(ptr %r, !5554, !DIExpression(), !5555)
    #dbg_value(ptr %key, !5556, !DIExpression(), !5555)
    #dbg_declare(ptr %skey, !5557, !DIExpression(), !5561)
  %call = call dereferenceable_or_null(960) ptr @malloc(i32 noundef 960) #7, !dbg !5562
  store ptr %call, ptr %r, align 4, !dbg !5563
  %cmp = icmp eq ptr %call, null, !dbg !5564
  br i1 %cmp, label %if.then, label %if.end, !dbg !5564

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !5566
  br label %if.end, !dbg !5568

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 32) #4, !dbg !5569
  %0 = load ptr, ptr %r, align 4, !dbg !5570
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 14) #4, !dbg !5571
  ret void, !dbg !5572
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5573 {
entry:
    #dbg_value(ptr %r, !5574, !DIExpression(), !5575)
    #dbg_value(ptr %key, !5576, !DIExpression(), !5575)
  call void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5577
  ret void, !dbg !5578
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5579 {
entry:
    #dbg_value(ptr %out, !5584, !DIExpression(), !5585)
    #dbg_value(ptr %in, !5586, !DIExpression(), !5585)
    #dbg_value(i32 %nblocks, !5587, !DIExpression(), !5585)
    #dbg_value(ptr %ctx, !5588, !DIExpression(), !5585)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5589
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 10) #4, !dbg !5590
  ret void, !dbg !5591
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5592 {
entry:
  %blocks = alloca [16 x i32], align 4
  %t = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5595, !DIExpression(), !5596)
    #dbg_value(ptr %in, !5597, !DIExpression(), !5596)
    #dbg_value(i32 %nblocks, !5598, !DIExpression(), !5596)
    #dbg_value(ptr %rkeys, !5599, !DIExpression(), !5596)
    #dbg_value(i32 %nrounds, !5600, !DIExpression(), !5596)
    #dbg_declare(ptr %blocks, !5601, !DIExpression(), !5603)
    #dbg_declare(ptr %t, !5604, !DIExpression(), !5605)
  br label %while.cond, !dbg !5606

while.cond:                                       ; preds = %while.body, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %sub, %while.body ]
  %in.addr.0 = phi ptr [ %in, %entry ], [ %add.ptr, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr2, %while.body ]
    #dbg_value(ptr %out.addr.0, !5595, !DIExpression(), !5596)
    #dbg_value(ptr %in.addr.0, !5597, !DIExpression(), !5596)
    #dbg_value(i32 %nblocks.addr.0, !5598, !DIExpression(), !5596)
  %cmp = icmp ugt i32 %nblocks.addr.0, 3, !dbg !5607
  br i1 %cmp, label %while.body, label %while.end, !dbg !5606

while.body:                                       ; preds = %while.cond
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef 16, ptr noundef %in.addr.0) #4, !dbg !5608
  call fastcc void @aes_ecb4x(ptr noundef %out.addr.0, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !5610
  %sub = add i32 %nblocks.addr.0, -4, !dbg !5611
    #dbg_value(i32 %sub, !5598, !DIExpression(), !5596)
  %add.ptr = getelementptr inbounds nuw i8, ptr %in.addr.0, i32 64, !dbg !5612
    #dbg_value(ptr %add.ptr, !5597, !DIExpression(), !5596)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !5613
    #dbg_value(ptr %add.ptr2, !5595, !DIExpression(), !5596)
  br label %while.cond, !dbg !5606, !llvm.loop !5614

while.end:                                        ; preds = %while.cond
  %nblocks.addr.0.lcssa = phi i32 [ %nblocks.addr.0, %while.cond ]
  %in.addr.0.lcssa = phi ptr [ %in.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %tobool.not = icmp eq i32 %nblocks.addr.0.lcssa, 0, !dbg !5616
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !5616

if.then:                                          ; preds = %while.end
  %mul = shl nuw nsw i32 %nblocks.addr.0.lcssa, 2, !dbg !5618
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef %mul, ptr noundef %in.addr.0.lcssa) #4, !dbg !5620
  call fastcc void @aes_ecb4x(ptr noundef nonnull %t, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !5621
  %mul7 = shl nuw nsw i32 %nblocks.addr.0.lcssa, 4, !dbg !5622
  %call = call ptr @memcpy(ptr noundef %out.addr.0.lcssa, ptr noundef nonnull %t, i32 noundef %mul7) #6, !dbg !5623
  br label %if.end, !dbg !5624

if.end:                                           ; preds = %if.then, %while.end
  ret void, !dbg !5625
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5626 {
entry:
  %w = alloca [16 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %out, !5629, !DIExpression(), !5630)
    #dbg_value(ptr %ivw, !5631, !DIExpression(), !5630)
    #dbg_value(ptr %sk_exp, !5632, !DIExpression(), !5630)
    #dbg_value(i32 %nrounds, !5633, !DIExpression(), !5630)
    #dbg_declare(ptr %w, !5634, !DIExpression(), !5635)
    #dbg_declare(ptr %q, !5636, !DIExpression(), !5637)
  %call = call ptr @memcpy(ptr noundef nonnull %w, ptr noundef nonnull %ivw, i32 noundef 64) #6, !dbg !5638
    #dbg_value(i32 0, !5639, !DIExpression(), !5630)
  br label %for.cond, !dbg !5640

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5642
    #dbg_value(i32 %i.0, !5639, !DIExpression(), !5630)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !5643
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5645

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.0, !dbg !5646
  %add = or disjoint i32 %i.0, 4, !dbg !5648
  %arrayidx1 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add, !dbg !5649
  %add.ptr.idx = shl nuw nsw i32 %i.0, 4, !dbg !5650
  %add.ptr = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr.idx, !dbg !5650
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx1, ptr noundef nonnull %add.ptr) #4, !dbg !5651
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5652
    #dbg_value(i32 %inc, !5639, !DIExpression(), !5630)
  br label %for.cond, !dbg !5653, !llvm.loop !5654

for.end:                                          ; preds = %for.cond
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5656
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk_exp) #4, !dbg !5657
    #dbg_value(i32 1, !5639, !DIExpression(), !5630)
  br label %for.cond5, !dbg !5658

for.cond5:                                        ; preds = %for.body7, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc15, %for.body7 ], !dbg !5660
    #dbg_value(i32 %i.1, !5639, !DIExpression(), !5630)
  %exitcond1 = icmp ne i32 %i.1, %nrounds, !dbg !5661
  br i1 %exitcond1, label %for.body7, label %for.end16, !dbg !5663

for.body7:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5664
  call fastcc void @shift_rows(ptr noundef nonnull %q) #4, !dbg !5666
  call fastcc void @mix_columns(ptr noundef nonnull %q) #4, !dbg !5667
  %add.ptr13.idx = shl nuw nsw i32 %i.1, 6, !dbg !5668
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr13.idx, !dbg !5668
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr13) #4, !dbg !5669
  %inc15 = add nuw nsw i32 %i.1, 1, !dbg !5670
    #dbg_value(i32 %inc15, !5639, !DIExpression(), !5630)
  br label %for.cond5, !dbg !5671, !llvm.loop !5672

for.end16:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5674
  call fastcc void @shift_rows(ptr noundef nonnull %q) #4, !dbg !5675
  %add.ptr20.idx = shl nuw nsw i32 %nrounds, 6, !dbg !5676
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr20.idx, !dbg !5676
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr20) #4, !dbg !5677
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5678
    #dbg_value(i32 0, !5639, !DIExpression(), !5630)
  br label %for.cond22, !dbg !5679

for.cond22:                                       ; preds = %for.body24, %for.end16
  %i.2 = phi i32 [ 0, %for.end16 ], [ %inc32, %for.body24 ], !dbg !5681
    #dbg_value(i32 %i.2, !5639, !DIExpression(), !5630)
  %exitcond2 = icmp ne i32 %i.2, 4, !dbg !5682
  br i1 %exitcond2, label %for.body24, label %for.end33, !dbg !5684

for.body24:                                       ; preds = %for.cond22
  %add.ptr27.idx = shl nuw nsw i32 %i.2, 4, !dbg !5685
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr27.idx, !dbg !5685
  %arrayidx28 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.2, !dbg !5687
  %0 = load i64, ptr %arrayidx28, align 8, !dbg !5687
  %add29 = or disjoint i32 %i.2, 4, !dbg !5688
  %arrayidx30 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add29, !dbg !5689
  %1 = load i64, ptr %arrayidx30, align 8, !dbg !5689
  call fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %add.ptr27, i64 noundef %0, i64 noundef %1) #4, !dbg !5690
  %inc32 = add nuw nsw i32 %i.2, 1, !dbg !5691
    #dbg_value(i32 %inc32, !5639, !DIExpression(), !5630)
  br label %for.cond22, !dbg !5692, !llvm.loop !5693

for.end33:                                        ; preds = %for.cond22
  call fastcc void @br_range_enc32le(ptr noundef %out, ptr noundef nonnull %w, i32 noundef 16) #4, !dbg !5695
  ret void, !dbg !5696
}

; Function Attrs: nounwind
define internal fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk) unnamed_addr #0 !dbg !5697 {
entry:
    #dbg_value(ptr %q, !5700, !DIExpression(), !5701)
    #dbg_value(ptr %sk, !5702, !DIExpression(), !5701)
  %0 = load i64, ptr %sk, align 8, !dbg !5703
  %1 = load i64, ptr %q, align 8, !dbg !5704
  %xor = xor i64 %1, %0, !dbg !5704
  store i64 %xor, ptr %q, align 8, !dbg !5704
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %sk, i32 8, !dbg !5705
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5705
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5706
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5707
  %xor4 = xor i64 %3, %2, !dbg !5707
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !5707
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %sk, i32 16, !dbg !5708
  %4 = load i64, ptr %arrayidx5, align 8, !dbg !5708
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5709
  %5 = load i64, ptr %arrayidx6, align 8, !dbg !5710
  %xor7 = xor i64 %5, %4, !dbg !5710
  store i64 %xor7, ptr %arrayidx6, align 8, !dbg !5710
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %sk, i32 24, !dbg !5711
  %6 = load i64, ptr %arrayidx8, align 8, !dbg !5711
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5712
  %7 = load i64, ptr %arrayidx9, align 8, !dbg !5713
  %xor10 = xor i64 %7, %6, !dbg !5713
  store i64 %xor10, ptr %arrayidx9, align 8, !dbg !5713
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %sk, i32 32, !dbg !5714
  %8 = load i64, ptr %arrayidx11, align 8, !dbg !5714
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5715
  %9 = load i64, ptr %arrayidx12, align 8, !dbg !5716
  %xor13 = xor i64 %9, %8, !dbg !5716
  store i64 %xor13, ptr %arrayidx12, align 8, !dbg !5716
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %sk, i32 40, !dbg !5717
  %10 = load i64, ptr %arrayidx14, align 8, !dbg !5717
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5718
  %11 = load i64, ptr %arrayidx15, align 8, !dbg !5719
  %xor16 = xor i64 %11, %10, !dbg !5719
  store i64 %xor16, ptr %arrayidx15, align 8, !dbg !5719
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %sk, i32 48, !dbg !5720
  %12 = load i64, ptr %arrayidx17, align 8, !dbg !5720
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5721
  %13 = load i64, ptr %arrayidx18, align 8, !dbg !5722
  %xor19 = xor i64 %13, %12, !dbg !5722
  store i64 %xor19, ptr %arrayidx18, align 8, !dbg !5722
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %sk, i32 56, !dbg !5723
  %14 = load i64, ptr %arrayidx20, align 8, !dbg !5723
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5724
  %15 = load i64, ptr %arrayidx21, align 8, !dbg !5725
  %xor22 = xor i64 %15, %14, !dbg !5725
  store i64 %xor22, ptr %arrayidx21, align 8, !dbg !5725
  ret void, !dbg !5726
}

; Function Attrs: nounwind
define internal fastcc void @shift_rows(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5727 {
entry:
    #dbg_value(ptr %q, !5728, !DIExpression(), !5729)
    #dbg_value(i32 0, !5730, !DIExpression(), !5729)
  br label %for.cond, !dbg !5731

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5733
    #dbg_value(i32 %i.0, !5730, !DIExpression(), !5729)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !5734
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5736

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5737
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5737
    #dbg_value(i64 %0, !5739, !DIExpression(), !5740)
  %and = and i64 %0, 65535, !dbg !5741
  %and1 = lshr i64 %0, 4, !dbg !5742
  %shr = and i64 %and1, 268369920, !dbg !5742
  %or = or disjoint i64 %and, %shr, !dbg !5743
  %and2 = shl i64 %0, 12, !dbg !5744
  %shl = and i64 %and2, 4026531840, !dbg !5744
  %or3 = or disjoint i64 %or, %shl, !dbg !5745
  %and4 = lshr i64 %0, 8, !dbg !5746
  %shr5 = and i64 %and4, 1095216660480, !dbg !5746
  %or6 = or disjoint i64 %or3, %shr5, !dbg !5747
  %and7 = shl i64 %0, 8, !dbg !5748
  %shl8 = and i64 %and7, 280375465082880, !dbg !5748
  %or9 = or disjoint i64 %or6, %shl8, !dbg !5749
  %and10 = lshr i64 %0, 12, !dbg !5750
  %shr11 = and i64 %and10, 4222124650659840, !dbg !5750
  %or12 = or disjoint i64 %or9, %shr11, !dbg !5751
  %and13 = shl i64 %0, 4, !dbg !5752
  %shl14 = and i64 %and13, -4503599627370496, !dbg !5752
  %or15 = or i64 %or12, %shl14, !dbg !5753
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5754
  store i64 %or15, ptr %arrayidx16, align 8, !dbg !5755
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5756
    #dbg_value(i32 %inc, !5730, !DIExpression(), !5729)
  br label %for.cond, !dbg !5757, !llvm.loop !5758

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5760
}

; Function Attrs: nounwind
define internal fastcc void @mix_columns(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5761 {
entry:
    #dbg_value(ptr %q, !5762, !DIExpression(), !5763)
  %0 = load i64, ptr %q, align 8, !dbg !5764
    #dbg_value(i64 %0, !5765, !DIExpression(), !5763)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5766
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5766
    #dbg_value(i64 %1, !5767, !DIExpression(), !5763)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5768
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5768
    #dbg_value(i64 %2, !5769, !DIExpression(), !5763)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5770
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5770
    #dbg_value(i64 %3, !5771, !DIExpression(), !5763)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5772
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5772
    #dbg_value(i64 %4, !5773, !DIExpression(), !5763)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5774
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5774
    #dbg_value(i64 %5, !5775, !DIExpression(), !5763)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5776
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5776
    #dbg_value(i64 %6, !5777, !DIExpression(), !5763)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5778
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !5778
    #dbg_value(i64 %7, !5779, !DIExpression(), !5763)
  %8 = shl i64 %0, 48, !dbg !5780
  %9 = lshr i64 %0, 16, !dbg !5780
  %10 = or i64 %8, %9, !dbg !5780
    #dbg_value(i64 %10, !5781, !DIExpression(), !5763)
  %11 = shl i64 %1, 48, !dbg !5782
  %12 = lshr i64 %1, 16, !dbg !5782
  %13 = or i64 %11, %12, !dbg !5782
    #dbg_value(i64 %13, !5783, !DIExpression(), !5763)
  %14 = shl i64 %2, 48, !dbg !5784
  %15 = lshr i64 %2, 16, !dbg !5784
  %16 = or i64 %14, %15, !dbg !5784
    #dbg_value(i64 %16, !5785, !DIExpression(), !5763)
  %17 = shl i64 %3, 48, !dbg !5786
  %18 = lshr i64 %3, 16, !dbg !5786
  %19 = or i64 %17, %18, !dbg !5786
    #dbg_value(i64 %19, !5787, !DIExpression(), !5763)
  %20 = shl i64 %4, 48, !dbg !5788
  %21 = lshr i64 %4, 16, !dbg !5788
  %22 = or i64 %20, %21, !dbg !5788
    #dbg_value(i64 %22, !5789, !DIExpression(), !5763)
  %23 = shl i64 %5, 48, !dbg !5790
  %24 = lshr i64 %5, 16, !dbg !5790
  %25 = or i64 %23, %24, !dbg !5790
    #dbg_value(i64 %25, !5791, !DIExpression(), !5763)
  %26 = shl i64 %6, 48, !dbg !5792
  %27 = lshr i64 %6, 16, !dbg !5792
  %28 = or i64 %26, %27, !dbg !5792
    #dbg_value(i64 %28, !5793, !DIExpression(), !5763)
  %29 = shl i64 %7, 48, !dbg !5794
  %30 = lshr i64 %7, 16, !dbg !5794
  %31 = or i64 %29, %30, !dbg !5794
    #dbg_value(i64 %31, !5795, !DIExpression(), !5763)
  %xor30 = xor i64 %0, %10, !dbg !5796
  %call = call fastcc i64 @rotr32(i64 noundef %xor30) #4, !dbg !5797
  %32 = xor i64 %31, %call, !dbg !5798
  %33 = xor i64 %32, %7, !dbg !5798
  %xor31 = xor i64 %33, %10, !dbg !5798
  store i64 %xor31, ptr %q, align 8, !dbg !5799
  %xor37 = xor i64 %1, %13, !dbg !5800
  %call38 = call fastcc i64 @rotr32(i64 noundef %xor37) #4, !dbg !5801
  %34 = xor i64 %10, %call38, !dbg !5802
  %35 = xor i64 %34, %0, !dbg !5802
  %36 = xor i64 %35, %7, !dbg !5802
  %37 = xor i64 %36, %31, !dbg !5802
  %xor39 = xor i64 %37, %13, !dbg !5802
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5803
  store i64 %xor39, ptr %arrayidx40, align 8, !dbg !5804
  %xor43 = xor i64 %2, %16, !dbg !5805
  %call44 = call fastcc i64 @rotr32(i64 noundef %xor43) #4, !dbg !5806
  %38 = xor i64 %13, %call44, !dbg !5807
  %39 = xor i64 %38, %1, !dbg !5807
  %xor45 = xor i64 %39, %16, !dbg !5807
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5808
  store i64 %xor45, ptr %arrayidx46, align 8, !dbg !5809
  %xor51 = xor i64 %3, %19, !dbg !5810
  %call52 = call fastcc i64 @rotr32(i64 noundef %xor51) #4, !dbg !5811
  %40 = xor i64 %16, %call52, !dbg !5812
  %41 = xor i64 %40, %2, !dbg !5812
  %42 = xor i64 %41, %7, !dbg !5812
  %43 = xor i64 %42, %31, !dbg !5812
  %xor53 = xor i64 %43, %19, !dbg !5812
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5813
  store i64 %xor53, ptr %arrayidx54, align 8, !dbg !5814
  %xor59 = xor i64 %4, %22, !dbg !5815
  %call60 = call fastcc i64 @rotr32(i64 noundef %xor59) #4, !dbg !5816
  %44 = xor i64 %19, %call60, !dbg !5817
  %45 = xor i64 %44, %3, !dbg !5817
  %46 = xor i64 %45, %7, !dbg !5817
  %47 = xor i64 %46, %31, !dbg !5817
  %xor61 = xor i64 %47, %22, !dbg !5817
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5818
  store i64 %xor61, ptr %arrayidx62, align 8, !dbg !5819
  %xor65 = xor i64 %5, %25, !dbg !5820
  %call66 = call fastcc i64 @rotr32(i64 noundef %xor65) #4, !dbg !5821
  %48 = xor i64 %22, %call66, !dbg !5822
  %49 = xor i64 %48, %4, !dbg !5822
  %xor67 = xor i64 %49, %25, !dbg !5822
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5823
  store i64 %xor67, ptr %arrayidx68, align 8, !dbg !5824
  %xor71 = xor i64 %6, %28, !dbg !5825
  %call72 = call fastcc i64 @rotr32(i64 noundef %xor71) #4, !dbg !5826
  %50 = xor i64 %25, %call72, !dbg !5827
  %51 = xor i64 %50, %5, !dbg !5827
  %xor73 = xor i64 %51, %28, !dbg !5827
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5828
  store i64 %xor73, ptr %arrayidx74, align 8, !dbg !5829
  %xor77 = xor i64 %7, %31, !dbg !5830
  %call78 = call fastcc i64 @rotr32(i64 noundef %xor77) #4, !dbg !5831
  %52 = xor i64 %28, %call78, !dbg !5832
  %53 = xor i64 %52, %6, !dbg !5832
  %xor79 = xor i64 %53, %31, !dbg !5832
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5833
  store i64 %xor79, ptr %arrayidx80, align 8, !dbg !5834
  ret void, !dbg !5835
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %w, i64 noundef %q0, i64 noundef %q1) unnamed_addr #0 !dbg !5836 {
entry:
    #dbg_value(ptr %w, !5839, !DIExpression(), !5840)
    #dbg_value(i64 %q0, !5841, !DIExpression(), !5840)
    #dbg_value(i64 %q1, !5842, !DIExpression(), !5840)
  %and = and i64 %q0, 71777214294589695, !dbg !5843
    #dbg_value(i64 %and, !5844, !DIExpression(), !5840)
  %and1 = and i64 %q1, 71777214294589695, !dbg !5845
    #dbg_value(i64 %and1, !5846, !DIExpression(), !5840)
  %shr = lshr i64 %q0, 8, !dbg !5847
  %and2 = and i64 %shr, 71776119077928960, !dbg !5848
    #dbg_value(i64 %shr, !5849, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5840)
  %shr3 = lshr i64 %q1, 8, !dbg !5850
  %and4 = and i64 %shr3, 71776119077928960, !dbg !5851
    #dbg_value(i64 %shr3, !5852, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5840)
  %shr5 = lshr i64 %and, 8, !dbg !5853
  %or = or disjoint i64 %and, %shr5, !dbg !5854
    #dbg_value(i64 %or, !5844, !DIExpression(), !5840)
  %shr6 = lshr i64 %and1, 8, !dbg !5855
  %or7 = or disjoint i64 %and1, %shr6, !dbg !5856
    #dbg_value(i64 %or7, !5846, !DIExpression(), !5840)
  %0 = and i64 %q0, 280375465148160, !dbg !5857
  %1 = or disjoint i64 %and2, %0, !dbg !5857
  %or9 = lshr exact i64 %1, 8, !dbg !5857
    #dbg_value(!DIArgList(i64 %and2, i64 %0), !5849, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5840)
  %2 = and i64 %q1, 280375465148160, !dbg !5858
  %3 = or disjoint i64 %and4, %2, !dbg !5858
  %or11 = lshr exact i64 %3, 8, !dbg !5858
    #dbg_value(!DIArgList(i64 %and4, i64 %2), !5852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5840)
  %and12 = and i64 %or, 281470681808895, !dbg !5859
    #dbg_value(i64 %and12, !5844, !DIExpression(), !5840)
  %and13 = and i64 %or7, 281470681808895, !dbg !5860
    #dbg_value(i64 %and13, !5846, !DIExpression(), !5840)
    #dbg_value(i64 %or9, !5849, !DIExpression(), !5840)
    #dbg_value(i64 %or11, !5852, !DIExpression(), !5840)
  %shr16 = lshr i64 %and12, 16, !dbg !5861
  %or181 = or disjoint i64 %and12, %shr16, !dbg !5862
  %or18 = trunc i64 %or181 to i32, !dbg !5862
  store i32 %or18, ptr %w, align 4, !dbg !5863
  %shr20 = lshr i64 %and13, 16, !dbg !5864
  %or222 = or disjoint i64 %and13, %shr20, !dbg !5865
  %or22 = trunc i64 %or222 to i32, !dbg !5865
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5866
  store i32 %or22, ptr %arrayidx23, align 4, !dbg !5867
  %shr25 = lshr i64 %1, 24, !dbg !5868
  %or273 = or disjoint i64 %or9, %shr25, !dbg !5869
  %or27 = trunc i64 %or273 to i32, !dbg !5869
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5870
  store i32 %or27, ptr %arrayidx28, align 4, !dbg !5871
  %shr30 = lshr i64 %3, 24, !dbg !5872
  %or324 = or disjoint i64 %or11, %shr30, !dbg !5873
  %or32 = trunc i64 %or324 to i32, !dbg !5873
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5874
  store i32 %or32, ptr %arrayidx33, align 4, !dbg !5875
  ret void, !dbg !5876
}

; Function Attrs: nounwind
define internal fastcc void @br_range_enc32le(ptr noundef %dst, ptr noundef nonnull %v, i32 noundef %num) unnamed_addr #0 !dbg !5877 {
entry:
    #dbg_value(ptr %dst, !5880, !DIExpression(), !5881)
    #dbg_value(ptr %v, !5882, !DIExpression(), !5881)
    #dbg_value(i32 16, !5883, !DIExpression(), !5881)
  br label %while.cond, !dbg !5884

while.cond:                                       ; preds = %while.body, %entry
  %num.addr.0 = phi i32 [ 16, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
  %dst.addr.0 = phi ptr [ %dst, %entry ], [ %add.ptr, %while.body ]
    #dbg_value(ptr %dst.addr.0, !5880, !DIExpression(), !5881)
    #dbg_value(ptr %v.addr.0, !5882, !DIExpression(), !5881)
    #dbg_value(i32 %num.addr.0, !5883, !DIExpression(), !5881)
    #dbg_value(i32 %num.addr.0, !5883, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5881)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5885
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5884

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5886
    #dbg_value(i32 %dec, !5883, !DIExpression(), !5881)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5887
    #dbg_value(ptr %incdec.ptr, !5882, !DIExpression(), !5881)
  %0 = load i32, ptr %v.addr.0, align 4, !dbg !5889
  call fastcc void @br_enc32le(ptr noundef %dst.addr.0, i32 noundef %0) #4, !dbg !5890
  %add.ptr = getelementptr inbounds nuw i8, ptr %dst.addr.0, i32 4, !dbg !5891
    #dbg_value(ptr %add.ptr, !5880, !DIExpression(), !5881)
  br label %while.cond, !dbg !5884, !llvm.loop !5892

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5894
}

; Function Attrs: nounwind
define internal fastcc void @br_enc32le(ptr noundef %dst, i32 noundef %x) unnamed_addr #0 !dbg !5895 {
entry:
    #dbg_value(ptr %dst, !5898, !DIExpression(), !5899)
    #dbg_value(i32 %x, !5900, !DIExpression(), !5899)
  %conv = trunc i32 %x to i8, !dbg !5901
  store i8 %conv, ptr %dst, align 1, !dbg !5902
  %shr = lshr i32 %x, 8, !dbg !5903
  %conv1 = trunc i32 %shr to i8, !dbg !5904
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %dst, i32 1, !dbg !5905
  store i8 %conv1, ptr %arrayidx2, align 1, !dbg !5906
  %shr3 = lshr i32 %x, 16, !dbg !5907
  %conv4 = trunc i32 %shr3 to i8, !dbg !5908
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %dst, i32 2, !dbg !5909
  store i8 %conv4, ptr %arrayidx5, align 1, !dbg !5910
  %shr6 = lshr i32 %x, 24, !dbg !5911
  %conv7 = trunc nuw i32 %shr6 to i8, !dbg !5912
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %dst, i32 3, !dbg !5913
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !5914
  ret void, !dbg !5915
}

; Function Attrs: nounwind
define internal fastcc i64 @rotr32(i64 noundef %x) unnamed_addr #0 !dbg !5916 {
entry:
    #dbg_value(i64 %x, !5919, !DIExpression(), !5920)
  %0 = shl i64 %x, 32, !dbg !5921
  %1 = lshr i64 %x, 32, !dbg !5921
  %2 = or i64 %0, %1, !dbg !5921
  ret i64 %2, !dbg !5922
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5923 {
entry:
    #dbg_value(ptr %out, !5926, !DIExpression(), !5927)
    #dbg_value(i32 %outlen, !5928, !DIExpression(), !5927)
    #dbg_value(ptr %iv, !5929, !DIExpression(), !5927)
    #dbg_value(ptr %ctx, !5930, !DIExpression(), !5927)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5931
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 10) #4, !dbg !5932
  ret void, !dbg !5933
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5934 {
entry:
  %ivw = alloca [16 x i32], align 4
  %tmp = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5937, !DIExpression(), !5938)
    #dbg_value(i32 %outlen, !5939, !DIExpression(), !5938)
    #dbg_value(ptr %iv, !5940, !DIExpression(), !5938)
    #dbg_value(ptr %rkeys, !5941, !DIExpression(), !5938)
    #dbg_value(i32 %nrounds, !5942, !DIExpression(), !5938)
    #dbg_declare(ptr %ivw, !5943, !DIExpression(), !5944)
    #dbg_value(i32 0, !5945, !DIExpression(), !5938)
  call fastcc void @br_range_dec32le(ptr noundef nonnull %ivw, i32 noundef 3, ptr noundef %iv) #4, !dbg !5946
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 16, !dbg !5947
  %call = call ptr @memcpy(ptr noundef nonnull %add.ptr, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !5948
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %ivw, i32 32, !dbg !5949
  %call6 = call ptr @memcpy(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !5950
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %ivw, i32 48, !dbg !5951
  %call10 = call ptr @memcpy(ptr noundef nonnull %add.ptr8, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !5952
  %call11 = call fastcc i32 @br_swap32(i32 noundef 0) #4, !dbg !5953
  %arrayidx = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !5954
  store i32 %call11, ptr %arrayidx, align 4, !dbg !5955
  %call12 = call fastcc i32 @br_swap32(i32 noundef 1) #4, !dbg !5956
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !5957
  store i32 %call12, ptr %arrayidx13, align 4, !dbg !5958
  %call15 = call fastcc i32 @br_swap32(i32 noundef 2) #4, !dbg !5959
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !5960
  store i32 %call15, ptr %arrayidx16, align 4, !dbg !5961
  %call18 = call fastcc i32 @br_swap32(i32 noundef 3) #4, !dbg !5962
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !5963
  store i32 %call18, ptr %arrayidx19, align 4, !dbg !5964
  br label %while.cond, !dbg !5965

while.cond:                                       ; preds = %while.body, %entry
  %outlen.addr.0 = phi i32 [ %outlen, %entry ], [ %sub, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr21, %while.body ]
    #dbg_value(ptr %out.addr.0, !5937, !DIExpression(), !5938)
    #dbg_value(i32 %outlen.addr.0, !5939, !DIExpression(), !5938)
  %cmp = icmp ugt i32 %outlen.addr.0, 64, !dbg !5966
  br i1 %cmp, label %while.body, label %while.end, !dbg !5965

while.body:                                       ; preds = %while.cond
  call fastcc void @aes_ctr4x(ptr noundef %out.addr.0, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !5967
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !5969
    #dbg_value(ptr %add.ptr21, !5937, !DIExpression(), !5938)
  %sub = add i32 %outlen.addr.0, -64, !dbg !5970
    #dbg_value(i32 %sub, !5939, !DIExpression(), !5938)
  br label %while.cond, !dbg !5965, !llvm.loop !5971

while.end:                                        ; preds = %while.cond
  %outlen.addr.0.lcssa = phi i32 [ %outlen.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %cmp22.not = icmp eq i32 %outlen.addr.0.lcssa, 0, !dbg !5973
  br i1 %cmp22.not, label %if.end, label %if.then, !dbg !5973

if.then:                                          ; preds = %while.end
    #dbg_declare(ptr %tmp, !5975, !DIExpression(), !5977)
  call fastcc void @aes_ctr4x(ptr noundef nonnull %tmp, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !5978
    #dbg_value(i32 0, !5979, !DIExpression(), !5938)
  br label %for.cond, !dbg !5980

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !5982
    #dbg_value(i32 %i.0, !5979, !DIExpression(), !5938)
  %cmp25 = icmp ult i32 %i.0, %outlen.addr.0.lcssa, !dbg !5983
  br i1 %cmp25, label %for.body, label %if.end.loopexit, !dbg !5985

for.body:                                         ; preds = %for.cond
  %arrayidx26 = getelementptr inbounds nuw [64 x i8], ptr %tmp, i32 0, i32 %i.0, !dbg !5986
  %0 = load i8, ptr %arrayidx26, align 1, !dbg !5986
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out.addr.0.lcssa, i32 %i.0, !dbg !5988
  store i8 %0, ptr %arrayidx27, align 1, !dbg !5989
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5990
    #dbg_value(i32 %inc, !5979, !DIExpression(), !5938)
  br label %for.cond, !dbg !5991, !llvm.loop !5992

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !5994

if.end:                                           ; preds = %if.end.loopexit, %while.end
  ret void, !dbg !5994
}

; Function Attrs: nounwind
define internal fastcc i32 @br_swap32(i32 noundef %x) unnamed_addr #0 !dbg !5995 {
entry:
    #dbg_value(i32 %x, !5996, !DIExpression(), !5997)
    #dbg_value(!DIArgList(i32 %x, i32 %x), !5996, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 18446744073692839680, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shr, DW_OP_constu, 16711935, DW_OP_and, DW_OP_or, DW_OP_stack_value), !5997)
  %0 = and i32 %x, 255, !dbg !5998
  %1 = shl i32 %0, 24, !dbg !5998
  %2 = and i32 %x, 65280, !dbg !5998
  %3 = shl i32 %2, 8, !dbg !5998
  %4 = and i32 %x, 16711680, !dbg !5998
  %5 = lshr i32 %4, 8, !dbg !5998
  %6 = and i32 %x, -16777216, !dbg !5998
  %7 = lshr i32 %6, 24, !dbg !5998
  %8 = or i32 %1, %3, !dbg !5998
  %9 = or i32 %8, %5, !dbg !5998
  %10 = or i32 %9, %7, !dbg !5998
  ret i32 %10, !dbg !5999
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !6000 {
entry:
    #dbg_value(ptr %out, !6003, !DIExpression(), !6004)
    #dbg_value(ptr %ivw, !6005, !DIExpression(), !6004)
    #dbg_value(ptr %sk_exp, !6006, !DIExpression(), !6004)
    #dbg_value(i32 %nrounds, !6007, !DIExpression(), !6004)
  call fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef %ivw, ptr noundef %sk_exp, i32 noundef %nrounds) #4, !dbg !6008
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !6009
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr) #4, !dbg !6010
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !6011
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr1) #4, !dbg !6012
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !6013
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr2) #4, !dbg !6014
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !6015
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr3) #4, !dbg !6016
  ret void, !dbg !6017
}

; Function Attrs: nounwind
define internal fastcc void @inc4_be(ptr noundef nonnull %x) unnamed_addr #0 !dbg !6018 {
entry:
    #dbg_value(ptr %x, !6021, !DIExpression(), !6022)
  %0 = load i32, ptr %x, align 4, !dbg !6023
  %call = call fastcc i32 @br_swap32(i32 noundef %0) #4, !dbg !6024
  %add = add i32 %call, 4, !dbg !6025
    #dbg_value(i32 %add, !6026, !DIExpression(), !6022)
  %call1 = call fastcc i32 @br_swap32(i32 noundef %add) #4, !dbg !6027
  store i32 %call1, ptr %x, align 4, !dbg !6028
  ret void, !dbg !6029
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6030 {
entry:
    #dbg_value(ptr %out, !6035, !DIExpression(), !6036)
    #dbg_value(ptr %in, !6037, !DIExpression(), !6036)
    #dbg_value(i32 %nblocks, !6038, !DIExpression(), !6036)
    #dbg_value(ptr %ctx, !6039, !DIExpression(), !6036)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6040
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 12) #4, !dbg !6041
  ret void, !dbg !6042
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6043 {
entry:
    #dbg_value(ptr %out, !6046, !DIExpression(), !6047)
    #dbg_value(i32 %outlen, !6048, !DIExpression(), !6047)
    #dbg_value(ptr %iv, !6049, !DIExpression(), !6047)
    #dbg_value(ptr %ctx, !6050, !DIExpression(), !6047)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6051
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 12) #4, !dbg !6052
  ret void, !dbg !6053
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6054 {
entry:
    #dbg_value(ptr %out, !6059, !DIExpression(), !6060)
    #dbg_value(ptr %in, !6061, !DIExpression(), !6060)
    #dbg_value(i32 %nblocks, !6062, !DIExpression(), !6060)
    #dbg_value(ptr %ctx, !6063, !DIExpression(), !6060)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6064
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 14) #4, !dbg !6065
  ret void, !dbg !6066
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6067 {
entry:
    #dbg_value(ptr %out, !6070, !DIExpression(), !6071)
    #dbg_value(i32 %outlen, !6072, !DIExpression(), !6071)
    #dbg_value(ptr %iv, !6073, !DIExpression(), !6071)
    #dbg_value(ptr %ctx, !6074, !DIExpression(), !6071)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6075
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 14) #4, !dbg !6076
  ret void, !dbg !6077
}

; Function Attrs: nounwind
define dso_local void @aes128_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6078 {
entry:
    #dbg_value(ptr %r, !6081, !DIExpression(), !6082)
  %0 = load ptr, ptr %r, align 4, !dbg !6083
  call void @free(ptr noundef %0) #6, !dbg !6084
  ret void, !dbg !6085
}

; Function Attrs: nounwind
define dso_local void @aes192_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6086 {
entry:
    #dbg_value(ptr %r, !6089, !DIExpression(), !6090)
  %0 = load ptr, ptr %r, align 4, !dbg !6091
  call void @free(ptr noundef %0) #6, !dbg !6092
  ret void, !dbg !6093
}

; Function Attrs: nounwind
define dso_local void @aes256_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6094 {
entry:
    #dbg_value(ptr %r, !6097, !DIExpression(), !6098)
  %0 = load ptr, ptr %r, align 4, !dbg !6099
  call void @free(ptr noundef %0) #6, !dbg !6100
  ret void, !dbg !6101
}

; Function Attrs: nounwind
define dso_local i32 @AES_128_CTR(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef %input, i32 noundef %inputByteLen) local_unnamed_addr #0 !dbg !6102 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
  %iv = alloca [16 x i8], align 1
    #dbg_value(ptr %output, !6105, !DIExpression(), !6106)
    #dbg_value(i32 %outputByteLen, !6107, !DIExpression(), !6106)
    #dbg_value(ptr %input, !6108, !DIExpression(), !6106)
    #dbg_value(i32 %inputByteLen, !6109, !DIExpression(), !6106)
    #dbg_declare(ptr %ctx, !6110, !DIExpression(), !6111)
    #dbg_declare(ptr %iv, !6112, !DIExpression(), !6113)
  call void @mayo_memset(ptr %iv, i8 0, i32 16), !dbg !6113
  call void @aes128_ctr_keyexp(ptr noundef nonnull %ctx, ptr noundef %input) #4, !dbg !6114
  call void @aes128_ctr(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef nonnull %iv, ptr noundef nonnull %ctx) #4, !dbg !6115
  call void @aes128_ctx_release(ptr noundef nonnull %ctx) #4, !dbg !6116
  ret i32 %outputByteLen, !dbg !6117
}

; Function Attrs: nounwind
define dso_local void @AES_256_ECB(ptr noundef %input, ptr noundef %key, ptr noundef %output) local_unnamed_addr #0 !dbg !6118 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %input, !6121, !DIExpression(), !6122)
    #dbg_value(ptr %key, !6123, !DIExpression(), !6122)
    #dbg_value(ptr %output, !6124, !DIExpression(), !6122)
    #dbg_declare(ptr %ctx, !6125, !DIExpression(), !6126)
  call void @aes256_ecb_keyexp(ptr noundef nonnull %ctx, ptr noundef %key) #4, !dbg !6127
  call void @aes256_ecb(ptr noundef %output, ptr noundef %input, i32 noundef 1, ptr noundef nonnull %ctx) #4, !dbg !6128
  call void @aes256_ctx_release(ptr noundef nonnull %ctx) #4, !dbg !6129
  ret void, !dbg !6130
}

; Function Attrs: nounwind
define dso_local void @mayo_secure_free(ptr noundef %mem, i32 noundef %size) local_unnamed_addr #0 !dbg !86 {
entry:
    #dbg_value(ptr %mem, !6131, !DIExpression(), !6132)
    #dbg_value(i32 %size, !6133, !DIExpression(), !6132)
  %tobool.not = icmp eq ptr %mem, null, !dbg !6134
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !6134

if.then:                                          ; preds = %entry
  %0 = load volatile ptr, ptr @mayo_secure_free.memset_func, align 4, !dbg !6136
  %call = call ptr %0(ptr noundef nonnull %mem, i32 noundef 0, i32 noundef %size) #6, !dbg !6136
  call void @free(ptr noundef nonnull %mem) #6, !dbg !6138
  br label %if.end, !dbg !6139

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6140
}

; Function Attrs: nounwind
define dso_local void @mayo_secure_clear(ptr noundef %mem, i32 noundef %size) local_unnamed_addr #0 !dbg !94 {
entry:
    #dbg_value(ptr %mem, !6141, !DIExpression(), !6142)
    #dbg_value(i32 %size, !6143, !DIExpression(), !6142)
  %0 = load volatile ptr, ptr @mayo_secure_clear.memset_func, align 4, !dbg !6144
  %call = call ptr %0(ptr noundef %mem, i32 noundef 0, i32 noundef %size) #6, !dbg !6144
  ret void, !dbg !6145
}

; Function Attrs: nounwind
define dso_local void @AES256_CTR_DRBG_Update(ptr noundef %provided_data, ptr noundef %Key, ptr noundef %V) local_unnamed_addr #0 !dbg !6146 {
entry:
  %temp = alloca [48 x i8], align 1
    #dbg_value(ptr %provided_data, !6149, !DIExpression(), !6150)
    #dbg_value(ptr %Key, !6151, !DIExpression(), !6150)
    #dbg_value(ptr %V, !6152, !DIExpression(), !6150)
    #dbg_declare(ptr %temp, !6153, !DIExpression(), !6157)
    #dbg_value(i32 0, !6158, !DIExpression(), !6160)
  br label %for.cond, !dbg !6161

for.cond:                                         ; preds = %for.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.end ], !dbg !6162
    #dbg_value(i32 %i.0, !6158, !DIExpression(), !6160)
  %exitcond = icmp ne i32 %i.0, 3, !dbg !6163
  br i1 %exitcond, label %for.cond1.preheader, label %for.end10, !dbg !6165

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !6166

for.cond1:                                        ; preds = %for.cond1.preheader, %if.then
  %j.0 = phi i32 [ %dec, %if.then ], [ 15, %for.cond1.preheader ], !dbg !6169
    #dbg_value(i32 %j.0, !6170, !DIExpression(), !6171)
  %cmp2 = icmp sgt i32 %j.0, -1, !dbg !6172
  br i1 %cmp2, label %for.body3, label %for.end.loopexit, !dbg !6166

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw i8, ptr %V, i32 %j.0, !dbg !6174
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6174
  %cmp4 = icmp eq i8 %0, -1, !dbg !6177
  br i1 %cmp4, label %if.then, label %if.else, !dbg !6177

if.then:                                          ; preds = %for.body3
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %V, i32 %j.0, !dbg !6178
  store i8 0, ptr %arrayidx6, align 1, !dbg !6180
  %dec = add nsw i32 %j.0, -1, !dbg !6181
    #dbg_value(i32 %dec, !6170, !DIExpression(), !6171)
  br label %for.cond1, !dbg !6182, !llvm.loop !6183

if.else:                                          ; preds = %for.body3
  %j.0.lcssa2 = phi i32 [ %j.0, %for.body3 ], !dbg !6169
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %V, i32 %j.0.lcssa2, !dbg !6185
  %1 = load i8, ptr %arrayidx7, align 1, !dbg !6187
  %inc = add i8 %1, 1, !dbg !6187
  store i8 %inc, ptr %arrayidx7, align 1, !dbg !6187
  br label %for.end, !dbg !6188

for.end.loopexit:                                 ; preds = %for.cond1
  br label %for.end, !dbg !6189

for.end:                                          ; preds = %for.end.loopexit, %if.else
  %mul = shl nuw nsw i32 %i.0, 4, !dbg !6189
  %add.ptr = getelementptr inbounds nuw i8, ptr %temp, i32 %mul, !dbg !6190
  call fastcc void @AES256_ECB(ptr noundef %Key, ptr noundef %V, ptr noundef nonnull %add.ptr) #4, !dbg !6191
  %inc9 = add nuw nsw i32 %i.0, 1, !dbg !6192
    #dbg_value(i32 %inc9, !6158, !DIExpression(), !6160)
  br label %for.cond, !dbg !6193, !llvm.loop !6194

for.end10:                                        ; preds = %for.cond
  %cmp11.not = icmp eq ptr %provided_data, null, !dbg !6196
  br i1 %cmp11.not, label %if.end27, label %for.cond15.preheader, !dbg !6196

for.cond15.preheader:                             ; preds = %for.end10
  br label %for.cond15, !dbg !6198

for.cond15:                                       ; preds = %for.cond15.preheader, %for.body18
  %i14.0 = phi i32 [ %inc25, %for.body18 ], [ 0, %for.cond15.preheader ], !dbg !6200
    #dbg_value(i32 %i14.0, !6201, !DIExpression(), !6202)
  %exitcond3 = icmp ne i32 %i14.0, 48, !dbg !6203
  br i1 %exitcond3, label %for.body18, label %if.end27.loopexit, !dbg !6198

for.body18:                                       ; preds = %for.cond15
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %provided_data, i32 %i14.0, !dbg !6205
  %2 = load i8, ptr %arrayidx19, align 1, !dbg !6205
  %arrayidx21 = getelementptr inbounds nuw [48 x i8], ptr %temp, i32 0, i32 %i14.0, !dbg !6207
  %3 = load i8, ptr %arrayidx21, align 1, !dbg !6208
  %xor1 = xor i8 %3, %2, !dbg !6208
  store i8 %xor1, ptr %arrayidx21, align 1, !dbg !6208
  %inc25 = add nuw nsw i32 %i14.0, 1, !dbg !6209
    #dbg_value(i32 %inc25, !6201, !DIExpression(), !6202)
  br label %for.cond15, !dbg !6210, !llvm.loop !6211

if.end27.loopexit:                                ; preds = %for.cond15
  br label %if.end27, !dbg !6213

if.end27:                                         ; preds = %if.end27.loopexit, %for.end10
  %call = call ptr @memcpy(ptr noundef %Key, ptr noundef nonnull %temp, i32 noundef 32) #6, !dbg !6213
  %add.ptr30 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !6214
  %call31 = call ptr @memcpy(ptr noundef %V, ptr noundef nonnull %add.ptr30, i32 noundef 16) #6, !dbg !6215
  ret void, !dbg !6216
}

; Function Attrs: nounwind
define internal fastcc void @AES256_ECB(ptr noundef %key, ptr noundef %ctr, ptr noundef nonnull %buffer) unnamed_addr #0 !dbg !6217 {
entry:
    #dbg_value(ptr %key, !6218, !DIExpression(), !6219)
    #dbg_value(ptr %ctr, !6220, !DIExpression(), !6219)
    #dbg_value(ptr %buffer, !6221, !DIExpression(), !6219)
  call void @AES_256_ECB(ptr noundef %ctr, ptr noundef %key, ptr noundef nonnull %buffer) #4, !dbg !6222
  ret void, !dbg !6223
}

; Function Attrs: nounwind
define dso_local i32 @randombytes(ptr noundef %random_array, i32 noundef %nbytes) local_unnamed_addr #0 !dbg !6224 {
entry:
    #dbg_value(ptr %random_array, !6227, !DIExpression(), !6228)
    #dbg_value(i32 %nbytes, !6229, !DIExpression(), !6228)
  %call = call fastcc i32 @randombytes_nist(ptr noundef %random_array, i32 noundef %nbytes) #4, !dbg !6230
    #dbg_value(i32 0, !6231, !DIExpression(), !6228)
  ret i32 0, !dbg !6232
}

; Function Attrs: nounwind
define internal fastcc i32 @randombytes_nist(ptr noundef %x, i32 noundef %xlen) unnamed_addr #0 !dbg !6233 {
entry:
  %block = alloca [16 x i8], align 1
    #dbg_value(ptr %x, !6234, !DIExpression(), !6235)
    #dbg_value(i32 %xlen, !6236, !DIExpression(), !6235)
    #dbg_declare(ptr %block, !6237, !DIExpression(), !6238)
    #dbg_value(i32 0, !6239, !DIExpression(), !6235)
  br label %while.cond, !dbg !6240

while.cond:                                       ; preds = %if.end15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %i.1, %if.end15 ], !dbg !6235
  %xlen.addr.0 = phi i32 [ %xlen, %entry ], [ %xlen.addr.1, %if.end15 ]
    #dbg_value(i32 %xlen.addr.0, !6236, !DIExpression(), !6235)
    #dbg_value(i32 %i.0, !6239, !DIExpression(), !6235)
  %cmp.not = icmp eq i32 %xlen.addr.0, 0, !dbg !6241
  br i1 %cmp.not, label %while.end, label %for.cond.preheader, !dbg !6240

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !6242

for.cond:                                         ; preds = %for.cond.preheader, %if.then
  %j.0 = phi i32 [ %dec, %if.then ], [ 15, %for.cond.preheader ], !dbg !6245
    #dbg_value(i32 %j.0, !6246, !DIExpression(), !6247)
  %cmp1 = icmp sgt i32 %j.0, -1, !dbg !6248
  br i1 %cmp1, label %for.body, label %for.end.loopexit, !dbg !6242

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0, !dbg !6250
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6250
  %cmp2 = icmp eq i8 %0, -1, !dbg !6253
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6253

if.then:                                          ; preds = %for.body
  %arrayidx4 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0, !dbg !6254
  store i8 0, ptr %arrayidx4, align 1, !dbg !6256
  %dec = add nsw i32 %j.0, -1, !dbg !6257
    #dbg_value(i32 %dec, !6246, !DIExpression(), !6247)
  br label %for.cond, !dbg !6258, !llvm.loop !6259

if.else:                                          ; preds = %for.body
  %j.0.lcssa1 = phi i32 [ %j.0, %for.body ], !dbg !6245
  %arrayidx5 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0.lcssa1, !dbg !6261
  %1 = load i8, ptr %arrayidx5, align 1, !dbg !6263
  %inc = add i8 %1, 1, !dbg !6263
  store i8 %inc, ptr %arrayidx5, align 1, !dbg !6263
  br label %for.end, !dbg !6264

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !6265

for.end:                                          ; preds = %for.end.loopexit, %if.else
  call fastcc void @AES256_ECB(ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), ptr noundef nonnull %block) #4, !dbg !6265
  %cmp6 = icmp ugt i32 %xlen.addr.0, 15, !dbg !6266
  br i1 %cmp6, label %if.then8, label %if.else10, !dbg !6266

if.then8:                                         ; preds = %for.end
  %add.ptr = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !6268
  %call = call ptr @memcpy(ptr noundef %add.ptr, ptr noundef nonnull %block, i32 noundef 16) #6, !dbg !6270
  %add = add i32 %i.0, 16, !dbg !6271
    #dbg_value(i32 %add, !6239, !DIExpression(), !6235)
  %sub = add i32 %xlen.addr.0, -16, !dbg !6272
    #dbg_value(i32 %sub, !6236, !DIExpression(), !6235)
  br label %if.end15, !dbg !6273

if.else10:                                        ; preds = %for.end
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !6274
  %call13 = call ptr @memcpy(ptr noundef %add.ptr11, ptr noundef nonnull %block, i32 noundef %xlen.addr.0) #6, !dbg !6276
  %add14 = add i32 %i.0, %xlen.addr.0, !dbg !6277
    #dbg_value(i32 %add14, !6239, !DIExpression(), !6235)
    #dbg_value(i32 0, !6236, !DIExpression(), !6235)
  br label %if.end15

if.end15:                                         ; preds = %if.else10, %if.then8
  %i.1 = phi i32 [ %add, %if.then8 ], [ %add14, %if.else10 ], !dbg !6278
  %xlen.addr.1 = phi i32 [ %sub, %if.then8 ], [ 0, %if.else10 ], !dbg !6278
    #dbg_value(i32 %xlen.addr.1, !6236, !DIExpression(), !6235)
    #dbg_value(i32 %i.1, !6239, !DIExpression(), !6235)
  br label %while.cond, !dbg !6240, !llvm.loop !6279

while.end:                                        ; preds = %while.cond
  call void @AES256_CTR_DRBG_Update(ptr noundef null, ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32)) #4, !dbg !6281
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6282
  %inc16 = add nsw i32 %2, 1, !dbg !6282
  store i32 %inc16, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6282
  ret i32 poison, !dbg !6283
}

; Function Attrs: nounwind
define dso_local void @randombytes_init(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) local_unnamed_addr #0 !dbg !6284 {
entry:
    #dbg_value(ptr %entropy_input, !6287, !DIExpression(), !6288)
    #dbg_value(ptr %personalization_string, !6289, !DIExpression(), !6288)
    #dbg_value(i32 %security_strength, !6290, !DIExpression(), !6288)
  call fastcc void @randombytes_init_nist(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) #4, !dbg !6291
  ret void, !dbg !6292
}

; Function Attrs: nounwind
define internal fastcc void @randombytes_init_nist(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) unnamed_addr #0 !dbg !6293 {
entry:
  %seed_material = alloca [48 x i8], align 1
    #dbg_value(ptr %entropy_input, !6294, !DIExpression(), !6295)
    #dbg_value(ptr %personalization_string, !6296, !DIExpression(), !6295)
    #dbg_value(i32 %security_strength, !6297, !DIExpression(), !6295)
    #dbg_declare(ptr %seed_material, !6298, !DIExpression(), !6299)
  %call = call ptr @memcpy(ptr noundef nonnull %seed_material, ptr noundef %entropy_input, i32 noundef 48) #6, !dbg !6300
  %tobool.not = icmp eq ptr %personalization_string, null, !dbg !6301
  br i1 %tobool.not, label %if.end, label %for.cond.preheader, !dbg !6301

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !6303

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !6305
    #dbg_value(i32 %i.0, !6306, !DIExpression(), !6307)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !6308
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !6303

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %personalization_string, i32 %i.0, !dbg !6310
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6310
  %arrayidx1 = getelementptr inbounds nuw [48 x i8], ptr %seed_material, i32 0, i32 %i.0, !dbg !6312
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !6313
  %xor1 = xor i8 %1, %0, !dbg !6313
  store i8 %xor1, ptr %arrayidx1, align 1, !dbg !6313
  %inc = add nuw nsw i32 %i.0, 1, !dbg !6314
    #dbg_value(i32 %inc, !6306, !DIExpression(), !6307)
  br label %for.cond, !dbg !6315, !llvm.loop !6316

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !6318

if.end:                                           ; preds = %if.end.loopexit, %entry
  %call4 = call ptr @memset(ptr noundef nonnull @DRBG_ctx, i32 noundef 0, i32 noundef 32) #6, !dbg !6318
  %call5 = call ptr @memset(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 noundef 0, i32 noundef 16) #6, !dbg !6319
  call void @AES256_CTR_DRBG_Update(ptr noundef nonnull %seed_material, ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32)) #4, !dbg !6320
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6321
  ret void, !dbg !6322
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
!42 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_2_ref_uint32_t_blocker", scope: !43, file: !58, line: 126, type: !63, isLocal: false, isDefinition: true)
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
!57 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_2_ref_uint64_t_blocker", scope: !43, file: !58, line: 127, type: !59, isLocal: false, isDefinition: true)
!58 = !DIFile(filename: "../../../src/arithmetic.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!59 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_2_ref_unsigned_char_blocker", scope: !43, file: !58, line: 128, type: !62, isLocal: false, isDefinition: true)
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
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 850176, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 13284)
!183 = !DILocation(line: 32, column: 10, scope: !134)
!184 = !DILocalVariable(name: "esk", scope: !134, file: !129, line: 33, type: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !36, line: 291, baseType: !186)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 819712, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 12808)
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
!275 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_keypair", scope: !25, file: !25, line: 298, type: !276, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!315 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_keypair_compact", scope: !25, file: !25, line: 537, type: !276, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!316 = !DILocalVariable(name: "p", arg: 1, scope: !315, file: !25, line: 537, type: !278)
!317 = !DILocation(line: 0, scope: !315)
!318 = !DILocalVariable(name: "cpk", arg: 2, scope: !315, file: !25, line: 537, type: !18)
!319 = !DILocalVariable(name: "csk", arg: 3, scope: !315, file: !25, line: 538, type: !18)
!320 = !DILocalVariable(name: "ret", scope: !315, file: !25, line: 539, type: !45)
!321 = !DILocalVariable(name: "seed_sk", scope: !315, file: !25, line: 540, type: !18)
!322 = !DILocalVariable(name: "S", scope: !315, file: !25, line: 541, type: !323)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4480, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 560)
!326 = !DILocation(line: 541, column: 19, scope: !315)
!327 = !DILocalVariable(name: "P", scope: !315, file: !25, line: 542, type: !328)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 811008, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 12672)
!331 = !DILocation(line: 542, column: 14, scope: !315)
!332 = !DILocalVariable(name: "P3", scope: !315, file: !25, line: 543, type: !333)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 73984, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 1156)
!336 = !DILocation(line: 543, column: 14, scope: !315)
!337 = !DILocalVariable(name: "O", scope: !315, file: !25, line: 546, type: !338)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8704, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 1088)
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
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 39168, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 612)
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
!462 = !DILocation(line: 277, column: 39, scope: !460)
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
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !39)
!682 = !DILocation(line: 265, column: 14, scope: !670)
!683 = !DILocalVariable(name: "i", scope: !684, file: !25, line: 266, type: !45)
!684 = distinct !DILexicalBlock(scope: !670, file: !25, line: 266, column: 5)
!685 = !DILocation(line: 0, scope: !684)
!686 = !DILocation(line: 266, column: 10, scope: !684)
!687 = !DILocation(line: 266, column: 28, scope: !688)
!688 = distinct !DILexicalBlock(scope: !684, file: !25, line: 266, column: 5)
!689 = !DILocation(line: 266, column: 5, scope: !684)
!690 = !DILocation(line: 266, scope: !684)
!691 = !DILocation(line: 268, column: 29, scope: !692)
!692 = distinct !DILexicalBlock(scope: !688, file: !25, line: 267, column: 5)
!693 = !DILocation(line: 268, column: 24, scope: !692)
!694 = !DILocation(line: 268, column: 9, scope: !692)
!695 = !DILocation(line: 269, column: 24, scope: !692)
!696 = !DILocation(line: 269, column: 21, scope: !692)
!697 = !DILocation(line: 269, column: 9, scope: !692)
!698 = !DILocation(line: 266, column: 5, scope: !688)
!699 = distinct !{!699, !689, !700, !244}
!700 = !DILocation(line: 270, column: 5, scope: !684)
!701 = !DILocation(line: 271, column: 1, scope: !670)
!702 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_expand_sk", scope: !25, file: !25, line: 310, type: !703, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!703 = !DISubroutineType(types: !704)
!704 = !{!45, !278, !49, !5}
!705 = !DILocalVariable(name: "p", arg: 1, scope: !702, file: !25, line: 310, type: !278)
!706 = !DILocation(line: 0, scope: !702)
!707 = !DILocalVariable(name: "csk", arg: 2, scope: !702, file: !25, line: 310, type: !49)
!708 = !DILocalVariable(name: "sk", arg: 3, scope: !702, file: !25, line: 311, type: !5)
!709 = !DILocalVariable(name: "ret", scope: !702, file: !25, line: 312, type: !45)
!710 = !DILocalVariable(name: "S", scope: !702, file: !25, line: 313, type: !323)
!711 = !DILocation(line: 313, column: 19, scope: !702)
!712 = !DILocalVariable(name: "P", scope: !702, file: !25, line: 314, type: !5)
!713 = !DILocation(line: 315, column: 24, scope: !702)
!714 = !DILocalVariable(name: "O", scope: !702, file: !25, line: 315, type: !18)
!715 = !DILocalVariable(name: "param_o", scope: !702, file: !25, line: 317, type: !343)
!716 = !DILocalVariable(name: "param_v", scope: !702, file: !25, line: 318, type: !343)
!717 = !DILocalVariable(name: "param_O_bytes", scope: !702, file: !25, line: 319, type: !343)
!718 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !702, file: !25, line: 320, type: !343)
!719 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !702, file: !25, line: 321, type: !343)
!720 = !DILocalVariable(name: "seed_sk", scope: !702, file: !25, line: 323, type: !49)
!721 = !DILocalVariable(name: "seed_pk", scope: !702, file: !25, line: 324, type: !18)
!722 = !DILocation(line: 326, column: 5, scope: !702)
!723 = !DILocation(line: 328, column: 14, scope: !702)
!724 = !DILocation(line: 328, column: 5, scope: !702)
!725 = !DILocation(line: 334, column: 5, scope: !702)
!726 = !DILocation(line: 341, column: 22, scope: !702)
!727 = !DILocalVariable(name: "P2", scope: !702, file: !25, line: 341, type: !5)
!728 = !DILocalVariable(name: "P1", scope: !702, file: !25, line: 343, type: !5)
!729 = !DILocalVariable(name: "L", scope: !702, file: !25, line: 346, type: !5)
!730 = !DILocation(line: 347, column: 5, scope: !702)
!731 = !DILocation(line: 355, column: 5, scope: !702)
!732 = !DILocation(line: 356, column: 5, scope: !702)
!733 = distinct !DISubprogram(name: "P1P1t_times_O", scope: !425, file: !425, line: 218, type: !471, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!734 = !DILocalVariable(name: "p", arg: 1, scope: !733, file: !425, line: 218, type: !278)
!735 = !DILocation(line: 0, scope: !733)
!736 = !DILocalVariable(name: "P1", arg: 2, scope: !733, file: !425, line: 218, type: !428)
!737 = !DILocalVariable(name: "O", arg: 3, scope: !733, file: !425, line: 218, type: !49)
!738 = !DILocalVariable(name: "acc", arg: 4, scope: !733, file: !425, line: 218, type: !5)
!739 = !DILocalVariable(name: "param_o", scope: !733, file: !425, line: 222, type: !343)
!740 = !DILocalVariable(name: "param_v", scope: !733, file: !425, line: 223, type: !343)
!741 = !DILocalVariable(name: "m_vec_limbs", scope: !733, file: !425, line: 224, type: !343)
!742 = !DILocalVariable(name: "bs_mat_entries_used", scope: !733, file: !425, line: 226, type: !45)
!743 = !DILocalVariable(name: "r", scope: !744, file: !425, line: 227, type: !45)
!744 = distinct !DILexicalBlock(scope: !733, file: !425, line: 227, column: 5)
!745 = !DILocation(line: 0, scope: !744)
!746 = !DILocation(line: 227, column: 10, scope: !744)
!747 = !DILocation(line: 226, column: 9, scope: !733)
!748 = !DILocation(line: 227, scope: !744)
!749 = !DILocation(line: 227, column: 23, scope: !750)
!750 = distinct !DILexicalBlock(scope: !744, file: !425, line: 227, column: 5)
!751 = !DILocation(line: 227, column: 5, scope: !744)
!752 = !DILocation(line: 228, column: 9, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !425, line: 228, column: 9)
!754 = distinct !DILexicalBlock(scope: !750, file: !425, line: 227, column: 39)
!755 = !DILocation(line: 228, scope: !753)
!756 = !DILocalVariable(name: "c", scope: !753, file: !425, line: 228, type: !45)
!757 = !DILocation(line: 0, scope: !753)
!758 = !DILocation(line: 228, column: 27, scope: !759)
!759 = distinct !DILexicalBlock(scope: !753, file: !425, line: 228, column: 9)
!760 = !DILocation(line: 229, column: 17, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !425, line: 229, column: 16)
!762 = distinct !DILexicalBlock(scope: !759, file: !425, line: 228, column: 43)
!763 = !DILocation(line: 233, column: 13, scope: !764)
!764 = distinct !DILexicalBlock(scope: !762, file: !425, line: 233, column: 13)
!765 = !DILocation(line: 233, scope: !764)
!766 = !DILocalVariable(name: "k", scope: !764, file: !425, line: 233, type: !45)
!767 = !DILocation(line: 0, scope: !764)
!768 = !DILocation(line: 233, column: 31, scope: !769)
!769 = distinct !DILexicalBlock(scope: !764, file: !425, line: 233, column: 13)
!770 = !DILocation(line: 234, column: 47, scope: !771)
!771 = distinct !DILexicalBlock(scope: !769, file: !425, line: 233, column: 50)
!772 = !DILocation(line: 234, column: 88, scope: !771)
!773 = !DILocation(line: 234, column: 84, scope: !771)
!774 = !DILocation(line: 234, column: 127, scope: !771)
!775 = !DILocation(line: 234, column: 137, scope: !771)
!776 = !DILocation(line: 234, column: 108, scope: !771)
!777 = !DILocation(line: 234, column: 17, scope: !771)
!778 = !DILocation(line: 235, column: 47, scope: !771)
!779 = !DILocation(line: 235, column: 88, scope: !771)
!780 = !DILocation(line: 235, column: 84, scope: !771)
!781 = !DILocation(line: 235, column: 127, scope: !771)
!782 = !DILocation(line: 235, column: 137, scope: !771)
!783 = !DILocation(line: 235, column: 108, scope: !771)
!784 = !DILocation(line: 235, column: 17, scope: !771)
!785 = !DILocation(line: 233, column: 44, scope: !769)
!786 = !DILocation(line: 233, column: 13, scope: !769)
!787 = distinct !{!787, !763, !788, !244}
!788 = !DILocation(line: 236, column: 13, scope: !764)
!789 = !DILocation(line: 0, scope: !762)
!790 = !DILocation(line: 228, column: 39, scope: !759)
!791 = !DILocation(line: 228, column: 9, scope: !759)
!792 = distinct !{!792, !752, !793, !244}
!793 = !DILocation(line: 238, column: 9, scope: !753)
!794 = !DILocation(line: 227, column: 35, scope: !750)
!795 = !DILocation(line: 227, column: 5, scope: !750)
!796 = distinct !{!796, !751, !797, !244}
!797 = !DILocation(line: 239, column: 5, scope: !744)
!798 = !DILocation(line: 240, column: 1, scope: !733)
!799 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_sign_signature", scope: !25, file: !25, line: 359, type: !800, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!800 = !DISubroutineType(types: !801)
!801 = !{!45, !278, !18, !802, !49, !15, !49}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!803 = !DILocalVariable(name: "p", arg: 1, scope: !799, file: !25, line: 359, type: !278)
!804 = !DILocation(line: 0, scope: !799)
!805 = !DILocalVariable(name: "sig", arg: 2, scope: !799, file: !25, line: 359, type: !18)
!806 = !DILocalVariable(name: "siglen", arg: 3, scope: !799, file: !25, line: 360, type: !802)
!807 = !DILocalVariable(name: "m", arg: 4, scope: !799, file: !25, line: 360, type: !49)
!808 = !DILocalVariable(name: "mlen", arg: 5, scope: !799, file: !25, line: 361, type: !15)
!809 = !DILocalVariable(name: "csk", arg: 6, scope: !799, file: !25, line: 361, type: !49)
!810 = !DILocalVariable(name: "ret", scope: !799, file: !25, line: 362, type: !45)
!811 = !DILocalVariable(name: "tenc", scope: !799, file: !25, line: 363, type: !112)
!812 = !DILocation(line: 363, column: 19, scope: !799)
!813 = !DILocalVariable(name: "t", scope: !799, file: !25, line: 363, type: !814)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 64)
!817 = !DILocation(line: 363, column: 38, scope: !799)
!818 = !DILocalVariable(name: "y", scope: !799, file: !25, line: 364, type: !814)
!819 = !DILocation(line: 364, column: 19, scope: !799)
!820 = !DILocalVariable(name: "salt", scope: !799, file: !25, line: 365, type: !821)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, elements: !73)
!822 = !DILocation(line: 365, column: 19, scope: !799)
!823 = !DILocalVariable(name: "V", scope: !799, file: !25, line: 366, type: !824)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1296, elements: !825)
!825 = !{!826}
!826 = !DISubrange(count: 162)
!827 = !DILocation(line: 366, column: 19, scope: !799)
!828 = !DILocalVariable(name: "Vdec", scope: !799, file: !25, line: 366, type: !829)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !830)
!830 = !{!831}
!831 = !DISubrange(count: 256)
!832 = !DILocation(line: 366, column: 57, scope: !799)
!833 = !DILocalVariable(name: "A", scope: !799, file: !25, line: 367, type: !834)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 35328, elements: !835)
!835 = !{!836}
!836 = !DISubrange(count: 4416)
!837 = !DILocation(line: 367, column: 19, scope: !799)
!838 = !DILocalVariable(name: "x", scope: !799, file: !25, line: 368, type: !839)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2592, elements: !840)
!840 = !{!841}
!841 = !DISubrange(count: 324)
!842 = !DILocation(line: 368, column: 19, scope: !799)
!843 = !DILocalVariable(name: "r", scope: !799, file: !25, line: 369, type: !844)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 552, elements: !845)
!845 = !{!846}
!846 = !DISubrange(count: 69)
!847 = !DILocation(line: 369, column: 19, scope: !799)
!848 = !DILocalVariable(name: "s", scope: !799, file: !25, line: 370, type: !839)
!849 = !DILocation(line: 370, column: 19, scope: !799)
!850 = !DILocalVariable(name: "sk", scope: !799, file: !25, line: 372, type: !185, align: 256)
!851 = !DILocation(line: 372, column: 22, scope: !799)
!852 = !DILocalVariable(name: "Ox", scope: !799, file: !25, line: 373, type: !814)
!853 = !DILocation(line: 373, column: 19, scope: !799)
!854 = !DILocalVariable(name: "tmp", scope: !799, file: !25, line: 374, type: !855)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 648, elements: !856)
!856 = !{!857}
!857 = !DISubrange(count: 81)
!858 = !DILocation(line: 374, column: 19, scope: !799)
!859 = !DILocalVariable(name: "param_m", scope: !799, file: !25, line: 378, type: !343)
!860 = !DILocalVariable(name: "param_n", scope: !799, file: !25, line: 379, type: !343)
!861 = !DILocalVariable(name: "param_o", scope: !799, file: !25, line: 380, type: !343)
!862 = !DILocalVariable(name: "param_k", scope: !799, file: !25, line: 381, type: !343)
!863 = !DILocalVariable(name: "param_v", scope: !799, file: !25, line: 382, type: !343)
!864 = !DILocalVariable(name: "param_m_bytes", scope: !799, file: !25, line: 383, type: !343)
!865 = !DILocalVariable(name: "param_v_bytes", scope: !799, file: !25, line: 384, type: !343)
!866 = !DILocalVariable(name: "param_r_bytes", scope: !799, file: !25, line: 385, type: !343)
!867 = !DILocalVariable(name: "param_sig_bytes", scope: !799, file: !25, line: 386, type: !343)
!868 = !DILocalVariable(name: "param_A_cols", scope: !799, file: !25, line: 387, type: !343)
!869 = !DILocalVariable(name: "param_digest_bytes", scope: !799, file: !25, line: 388, type: !343)
!870 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !799, file: !25, line: 389, type: !343)
!871 = !DILocalVariable(name: "param_salt_bytes", scope: !799, file: !25, line: 390, type: !343)
!872 = !DILocation(line: 392, column: 11, scope: !799)
!873 = !DILocalVariable(name: "seed_sk", scope: !799, file: !25, line: 371, type: !49)
!874 = !DILocation(line: 401, column: 5, scope: !799)
!875 = !DILocalVariable(name: "P1", scope: !799, file: !25, line: 403, type: !5)
!876 = !DILocalVariable(name: "L", scope: !799, file: !25, line: 404, type: !5)
!877 = !DILocalVariable(name: "Mtmp", scope: !799, file: !25, line: 405, type: !878)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 17408, elements: !879)
!879 = !{!880}
!880 = !DISubrange(count: 272)
!881 = !DILocation(line: 405, column: 14, scope: !799)
!882 = !DILocation(line: 420, column: 25, scope: !883)
!883 = distinct !DILexicalBlock(scope: !799, file: !25, line: 420, column: 9)
!884 = !DILocation(line: 420, column: 9, scope: !883)
!885 = !DILocation(line: 427, column: 37, scope: !799)
!886 = !DILocation(line: 427, column: 5, scope: !799)
!887 = !DILocation(line: 429, column: 5, scope: !799)
!888 = !DILocation(line: 437, column: 16, scope: !799)
!889 = !DILocation(line: 437, column: 5, scope: !799)
!890 = !DILocation(line: 438, column: 59, scope: !799)
!891 = !DILocalVariable(name: "ctrbyte", scope: !799, file: !25, line: 375, type: !18)
!892 = !DILocation(line: 440, column: 5, scope: !799)
!893 = !DILocation(line: 442, column: 5, scope: !799)
!894 = !DILocation(line: 445, column: 18, scope: !799)
!895 = !DILocation(line: 447, column: 9, scope: !799)
!896 = !DILocalVariable(name: "i", scope: !897, file: !25, line: 451, type: !45)
!897 = distinct !DILexicalBlock(scope: !799, file: !25, line: 451, column: 9)
!898 = !DILocation(line: 0, scope: !897)
!899 = !DILocation(line: 451, column: 14, scope: !897)
!900 = !DILocation(line: 451, scope: !897)
!901 = !DILocation(line: 451, column: 27, scope: !902)
!902 = distinct !DILexicalBlock(scope: !897, file: !25, line: 451, column: 9)
!903 = !DILocation(line: 451, column: 9, scope: !897)
!904 = !DILocation(line: 452, column: 26, scope: !905)
!905 = distinct !DILexicalBlock(scope: !902, file: !25, line: 451, column: 48)
!906 = !DILocation(line: 452, column: 22, scope: !905)
!907 = !DILocation(line: 452, column: 52, scope: !905)
!908 = !DILocation(line: 452, column: 48, scope: !905)
!909 = !DILocation(line: 452, column: 13, scope: !905)
!910 = !DILocation(line: 451, column: 43, scope: !902)
!911 = !DILocation(line: 451, column: 9, scope: !902)
!912 = distinct !{!912, !903, !913, !244}
!913 = !DILocation(line: 453, column: 9, scope: !897)
!914 = !DILocation(line: 404, column: 23, scope: !799)
!915 = !DILocation(line: 455, column: 9, scope: !799)
!916 = !DILocation(line: 457, column: 9, scope: !799)
!917 = !DILocation(line: 458, column: 9, scope: !799)
!918 = !DILocalVariable(name: "i", scope: !919, file: !25, line: 460, type: !45)
!919 = distinct !DILexicalBlock(scope: !799, file: !25, line: 460, column: 9)
!920 = !DILocation(line: 0, scope: !919)
!921 = !DILocation(line: 460, column: 14, scope: !919)
!922 = !DILocation(line: 460, scope: !919)
!923 = !DILocation(line: 460, column: 27, scope: !924)
!924 = distinct !DILexicalBlock(scope: !919, file: !25, line: 460, column: 9)
!925 = !DILocation(line: 460, column: 9, scope: !919)
!926 = !DILocation(line: 462, column: 20, scope: !927)
!927 = distinct !DILexicalBlock(scope: !924, file: !25, line: 461, column: 9)
!928 = !DILocation(line: 462, column: 43, scope: !927)
!929 = !DILocation(line: 462, column: 13, scope: !927)
!930 = !DILocation(line: 462, column: 48, scope: !927)
!931 = !DILocation(line: 460, column: 39, scope: !924)
!932 = !DILocation(line: 460, column: 9, scope: !924)
!933 = distinct !{!933, !925, !934, !244}
!934 = !DILocation(line: 463, column: 9, scope: !919)
!935 = !DILocation(line: 465, column: 18, scope: !799)
!936 = !DILocation(line: 465, column: 9, scope: !799)
!937 = !DILocation(line: 469, column: 13, scope: !938)
!938 = distinct !DILexicalBlock(scope: !799, file: !25, line: 469, column: 13)
!939 = !DILocation(line: 472, column: 13, scope: !940)
!940 = distinct !DILexicalBlock(scope: !938, file: !25, line: 471, column: 16)
!941 = !DILocation(line: 473, column: 13, scope: !940)
!942 = !DILocalVariable(name: "i", scope: !943, file: !25, line: 477, type: !45)
!943 = distinct !DILexicalBlock(scope: !799, file: !25, line: 477, column: 5)
!944 = !DILocation(line: 0, scope: !943)
!945 = !DILocation(line: 477, column: 10, scope: !943)
!946 = !DILocation(line: 477, scope: !943)
!947 = !DILocation(line: 477, column: 23, scope: !948)
!948 = distinct !DILexicalBlock(scope: !943, file: !25, line: 477, column: 5)
!949 = !DILocation(line: 477, column: 5, scope: !943)
!950 = !DILocation(line: 478, column: 23, scope: !951)
!951 = distinct !DILexicalBlock(scope: !948, file: !25, line: 477, column: 44)
!952 = !DILocation(line: 478, column: 19, scope: !951)
!953 = !DILocalVariable(name: "vi", scope: !799, file: !25, line: 376, type: !18)
!954 = !DILocation(line: 479, column: 17, scope: !951)
!955 = !DILocation(line: 479, column: 33, scope: !951)
!956 = !DILocation(line: 479, column: 29, scope: !951)
!957 = !DILocation(line: 479, column: 9, scope: !951)
!958 = !DILocation(line: 480, column: 31, scope: !951)
!959 = !DILocation(line: 480, column: 27, scope: !951)
!960 = !DILocation(line: 480, column: 9, scope: !951)
!961 = !DILocation(line: 481, column: 22, scope: !951)
!962 = !DILocation(line: 481, column: 18, scope: !951)
!963 = !DILocation(line: 481, column: 32, scope: !951)
!964 = !DILocation(line: 481, column: 61, scope: !951)
!965 = !DILocation(line: 481, column: 57, scope: !951)
!966 = !DILocation(line: 481, column: 9, scope: !951)
!967 = !DILocation(line: 477, column: 39, scope: !948)
!968 = !DILocation(line: 477, column: 5, scope: !948)
!969 = distinct !{!969, !949, !970, !244}
!970 = !DILocation(line: 482, column: 5, scope: !943)
!971 = !DILocation(line: 483, column: 5, scope: !799)
!972 = !DILocation(line: 485, column: 34, scope: !799)
!973 = !DILocation(line: 485, column: 5, scope: !799)
!974 = !DILocation(line: 486, column: 13, scope: !799)
!975 = !DILabel(scope: !799, name: "err", file: !25, line: 488)
!976 = !DILocation(line: 488, column: 1, scope: !799)
!977 = !DILocation(line: 489, column: 5, scope: !799)
!978 = !DILocation(line: 490, column: 5, scope: !799)
!979 = !DILocation(line: 491, column: 5, scope: !799)
!980 = !DILocation(line: 492, column: 5, scope: !799)
!981 = !DILocation(line: 493, column: 23, scope: !799)
!982 = !DILocation(line: 493, column: 5, scope: !799)
!983 = !DILocation(line: 494, column: 5, scope: !799)
!984 = !DILocation(line: 495, column: 5, scope: !799)
!985 = !DILocation(line: 496, column: 5, scope: !799)
!986 = !DILocation(line: 497, column: 5, scope: !799)
!987 = !DILocation(line: 498, column: 5, scope: !799)
!988 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !425, file: !425, line: 244, type: !989, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !278, !49, !428, !428, !5, !5}
!991 = !DILocalVariable(name: "p", arg: 1, scope: !988, file: !425, line: 244, type: !278)
!992 = !DILocation(line: 0, scope: !988)
!993 = !DILocalVariable(name: "Vdec", arg: 2, scope: !988, file: !425, line: 244, type: !49)
!994 = !DILocalVariable(name: "L", arg: 3, scope: !988, file: !425, line: 244, type: !428)
!995 = !DILocalVariable(name: "P1", arg: 4, scope: !988, file: !425, line: 244, type: !428)
!996 = !DILocalVariable(name: "VL", arg: 5, scope: !988, file: !425, line: 244, type: !5)
!997 = !DILocalVariable(name: "VP1V", arg: 6, scope: !988, file: !425, line: 244, type: !5)
!998 = !DILocalVariable(name: "param_k", scope: !988, file: !425, line: 246, type: !343)
!999 = !DILocalVariable(name: "param_v", scope: !988, file: !425, line: 247, type: !343)
!1000 = !DILocalVariable(name: "param_o", scope: !988, file: !425, line: 248, type: !343)
!1001 = !DILocation(line: 251, column: 5, scope: !988)
!1002 = !DILocalVariable(name: "Pv", scope: !988, file: !425, line: 254, type: !1003)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 65536, elements: !1004)
!1004 = !{!1005}
!1005 = !DISubrange(count: 1024)
!1006 = !DILocation(line: 254, column: 14, scope: !988)
!1007 = !DILocation(line: 255, column: 5, scope: !988)
!1008 = !DILocation(line: 256, column: 5, scope: !988)
!1009 = !DILocation(line: 257, column: 1, scope: !988)
!1010 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 43, type: !1011, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !278, !5, !49, !18}
!1013 = !DILocalVariable(name: "p", arg: 1, scope: !1010, file: !25, line: 43, type: !278)
!1014 = !DILocation(line: 0, scope: !1010)
!1015 = !DILocalVariable(name: "vPv", arg: 2, scope: !1010, file: !25, line: 43, type: !5)
!1016 = !DILocalVariable(name: "t", arg: 3, scope: !1010, file: !25, line: 43, type: !49)
!1017 = !DILocalVariable(name: "y", arg: 4, scope: !1010, file: !25, line: 43, type: !18)
!1018 = !DILocalVariable(name: "top_pos", scope: !1010, file: !25, line: 48, type: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!1020 = !DILocalVariable(name: "m_vec_limbs", scope: !1010, file: !25, line: 49, type: !1019)
!1021 = !DILocalVariable(name: "temp", scope: !1010, file: !25, line: 62, type: !681)
!1022 = !DILocation(line: 62, column: 14, scope: !1010)
!1023 = !DILocalVariable(name: "temp_bytes", scope: !1010, file: !25, line: 63, type: !18)
!1024 = !DILocalVariable(name: "i", scope: !1025, file: !25, line: 64, type: !45)
!1025 = distinct !DILexicalBlock(scope: !1010, file: !25, line: 64, column: 5)
!1026 = !DILocation(line: 0, scope: !1025)
!1027 = !DILocation(line: 64, column: 10, scope: !1025)
!1028 = !DILocation(line: 64, scope: !1025)
!1029 = !DILocation(line: 64, column: 36, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1025, file: !25, line: 64, column: 5)
!1031 = !DILocation(line: 64, column: 5, scope: !1025)
!1032 = !DILocation(line: 65, column: 9, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !25, line: 65, column: 9)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !25, line: 64, column: 48)
!1035 = !DILocation(line: 99, column: 5, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1010, file: !25, line: 99, column: 5)
!1037 = !DILocation(line: 65, scope: !1033)
!1038 = !DILocalVariable(name: "j", scope: !1033, file: !25, line: 65, type: !45)
!1039 = !DILocation(line: 0, scope: !1033)
!1040 = !DILocation(line: 65, column: 27, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1033, file: !25, line: 65, column: 9)
!1042 = !DILocation(line: 67, column: 34, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1041, file: !25, line: 65, column: 46)
!1044 = !DILocation(line: 67, column: 54, scope: !1043)
!1045 = !DILocalVariable(name: "top", scope: !1043, file: !25, line: 67, type: !14)
!1046 = !DILocation(line: 0, scope: !1043)
!1047 = !DILocation(line: 68, column: 13, scope: !1043)
!1048 = !DILocation(line: 68, column: 33, scope: !1043)
!1049 = !DILocalVariable(name: "k", scope: !1050, file: !25, line: 69, type: !45)
!1050 = distinct !DILexicalBlock(scope: !1043, file: !25, line: 69, column: 13)
!1051 = !DILocation(line: 0, scope: !1050)
!1052 = !DILocation(line: 69, column: 17, scope: !1050)
!1053 = !DILocation(line: 69, scope: !1050)
!1054 = !DILocation(line: 69, column: 43, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !25, line: 69, column: 13)
!1056 = !DILocation(line: 69, column: 13, scope: !1050)
!1057 = !DILocation(line: 67, column: 33, scope: !1043)
!1058 = !DILocation(line: 74, column: 13, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1043, file: !25, line: 74, column: 13)
!1060 = !DILocation(line: 70, column: 30, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1055, file: !25, line: 69, column: 52)
!1062 = !DILocation(line: 70, column: 38, scope: !1061)
!1063 = !DILocation(line: 70, column: 23, scope: !1061)
!1064 = !DILocation(line: 70, column: 17, scope: !1061)
!1065 = !DILocation(line: 70, column: 27, scope: !1061)
!1066 = !DILocation(line: 71, column: 17, scope: !1061)
!1067 = !DILocation(line: 71, column: 25, scope: !1061)
!1068 = !DILocation(line: 69, column: 49, scope: !1055)
!1069 = !DILocation(line: 69, column: 13, scope: !1055)
!1070 = distinct !{!1070, !1056, !1071, !244}
!1071 = !DILocation(line: 72, column: 13, scope: !1050)
!1072 = !DILocation(line: 74, scope: !1059)
!1073 = !DILocalVariable(name: "jj", scope: !1059, file: !25, line: 74, type: !45)
!1074 = !DILocation(line: 0, scope: !1059)
!1075 = !DILocation(line: 74, column: 33, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1059, file: !25, line: 74, column: 13)
!1077 = !DILocation(line: 92, column: 13, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1043, file: !25, line: 92, column: 13)
!1079 = !DILocation(line: 75, column: 22, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !25, line: 75, column: 20)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !25, line: 74, column: 53)
!1082 = !DILocation(line: 75, column: 25, scope: !1080)
!1083 = !DILocation(line: 79, column: 52, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !25, line: 75, column: 30)
!1085 = !DILocation(line: 79, column: 41, scope: !1084)
!1086 = !DILocation(line: 79, column: 34, scope: !1084)
!1087 = !DILocation(line: 79, column: 21, scope: !1084)
!1088 = !DILocation(line: 79, column: 38, scope: !1084)
!1089 = !DILocation(line: 81, column: 17, scope: !1084)
!1090 = !DILocation(line: 86, column: 52, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1080, file: !25, line: 82, column: 22)
!1092 = !DILocation(line: 86, column: 41, scope: !1091)
!1093 = !DILocation(line: 86, column: 73, scope: !1091)
!1094 = !DILocation(line: 86, column: 34, scope: !1091)
!1095 = !DILocation(line: 86, column: 21, scope: !1091)
!1096 = !DILocation(line: 86, column: 38, scope: !1091)
!1097 = !DILocation(line: 74, column: 49, scope: !1076)
!1098 = !DILocation(line: 74, column: 13, scope: !1076)
!1099 = distinct !{!1099, !1058, !1100, !244}
!1100 = !DILocation(line: 89, column: 13, scope: !1059)
!1101 = !DILocation(line: 92, scope: !1078)
!1102 = !DILocalVariable(name: "k", scope: !1078, file: !25, line: 92, type: !15)
!1103 = !DILocation(line: 0, scope: !1078)
!1104 = !DILocation(line: 92, column: 31, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1078, file: !25, line: 92, column: 13)
!1106 = !DILocation(line: 93, column: 54, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1105, file: !25, line: 92, column: 51)
!1108 = !DILocation(line: 93, column: 68, scope: !1107)
!1109 = !DILocation(line: 93, column: 28, scope: !1107)
!1110 = !DILocation(line: 93, column: 78, scope: !1107)
!1111 = !DILocation(line: 93, column: 109, scope: !1107)
!1112 = !DILocation(line: 93, column: 123, scope: !1107)
!1113 = !DILocation(line: 93, column: 83, scope: !1107)
!1114 = !DILocation(line: 93, column: 82, scope: !1107)
!1115 = !DILocation(line: 93, column: 73, scope: !1107)
!1116 = !DILocation(line: 93, column: 17, scope: !1107)
!1117 = !DILocation(line: 93, column: 25, scope: !1107)
!1118 = !DILocation(line: 92, column: 48, scope: !1105)
!1119 = !DILocation(line: 92, column: 13, scope: !1105)
!1120 = distinct !{!1120, !1077, !1121, !244}
!1121 = !DILocation(line: 94, column: 13, scope: !1078)
!1122 = !DILocation(line: 65, column: 42, scope: !1041)
!1123 = !DILocation(line: 65, column: 9, scope: !1041)
!1124 = distinct !{!1124, !1032, !1125, !244}
!1125 = !DILocation(line: 95, column: 9, scope: !1033)
!1126 = !DILocation(line: 64, column: 44, scope: !1030)
!1127 = !DILocation(line: 64, column: 5, scope: !1030)
!1128 = distinct !{!1128, !1031, !1129, !244}
!1129 = !DILocation(line: 96, column: 5, scope: !1025)
!1130 = !DILocation(line: 99, scope: !1036)
!1131 = !DILocalVariable(name: "i", scope: !1036, file: !25, line: 99, type: !45)
!1132 = !DILocation(line: 0, scope: !1036)
!1133 = !DILocation(line: 99, column: 23, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1036, file: !25, line: 99, column: 5)
!1135 = !DILocation(line: 105, column: 18, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1134, file: !25, line: 100, column: 5)
!1137 = !DILocation(line: 105, column: 40, scope: !1136)
!1138 = !DILocation(line: 105, column: 28, scope: !1136)
!1139 = !DILocation(line: 105, column: 44, scope: !1136)
!1140 = !DILocation(line: 105, column: 25, scope: !1136)
!1141 = !DILocation(line: 105, column: 9, scope: !1136)
!1142 = !DILocation(line: 105, column: 16, scope: !1136)
!1143 = !DILocation(line: 106, column: 21, scope: !1136)
!1144 = !DILocation(line: 106, column: 18, scope: !1136)
!1145 = !DILocation(line: 106, column: 40, scope: !1136)
!1146 = !DILocation(line: 106, column: 28, scope: !1136)
!1147 = !DILocation(line: 106, column: 44, scope: !1136)
!1148 = !DILocation(line: 106, column: 25, scope: !1136)
!1149 = !DILocation(line: 106, column: 12, scope: !1136)
!1150 = !DILocation(line: 106, column: 9, scope: !1136)
!1151 = !DILocation(line: 106, column: 16, scope: !1136)
!1152 = !DILocation(line: 99, column: 38, scope: !1134)
!1153 = !DILocation(line: 99, column: 5, scope: !1134)
!1154 = distinct !{!1154, !1035, !1155, !244}
!1155 = !DILocation(line: 108, column: 5, scope: !1036)
!1156 = !DILocation(line: 109, column: 1, scope: !1010)
!1157 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 154, type: !1158, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null, !278, !5, !18}
!1160 = !DILocalVariable(name: "p", arg: 1, scope: !1157, file: !25, line: 154, type: !278)
!1161 = !DILocation(line: 0, scope: !1157)
!1162 = !DILocalVariable(name: "VtL", arg: 2, scope: !1157, file: !25, line: 154, type: !5)
!1163 = !DILocalVariable(name: "A_out", arg: 3, scope: !1157, file: !25, line: 154, type: !18)
!1164 = !DILocalVariable(name: "bits_to_shift", scope: !1157, file: !25, line: 159, type: !45)
!1165 = !DILocalVariable(name: "words_to_shift", scope: !1157, file: !25, line: 160, type: !45)
!1166 = !DILocalVariable(name: "m_vec_limbs", scope: !1157, file: !25, line: 161, type: !343)
!1167 = !DILocalVariable(name: "A", scope: !1157, file: !25, line: 162, type: !1168)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 40960, elements: !1169)
!1169 = !{!1170}
!1170 = !DISubrange(count: 640)
!1171 = !DILocation(line: 162, column: 14, scope: !1157)
!1172 = !DILocalVariable(name: "A_width", scope: !1157, file: !25, line: 163, type: !15)
!1173 = !DILocalVariable(name: "i", scope: !1174, file: !25, line: 177, type: !45)
!1174 = distinct !DILexicalBlock(scope: !1157, file: !25, line: 177, column: 5)
!1175 = !DILocation(line: 0, scope: !1174)
!1176 = !DILocation(line: 177, column: 10, scope: !1174)
!1177 = !DILocation(line: 177, scope: !1174)
!1178 = !DILocation(line: 160, column: 9, scope: !1157)
!1179 = !DILocation(line: 159, column: 9, scope: !1157)
!1180 = !DILocation(line: 177, column: 23, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1174, file: !25, line: 177, column: 5)
!1182 = !DILocation(line: 177, column: 5, scope: !1174)
!1183 = !DILocation(line: 178, column: 9, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !25, line: 178, column: 9)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !25, line: 177, column: 47)
!1186 = !DILocation(line: 212, column: 5, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1157, file: !25, line: 212, column: 5)
!1188 = !DILocation(line: 178, scope: !1184)
!1189 = !DILocalVariable(name: "j", scope: !1184, file: !25, line: 178, type: !45)
!1190 = !DILocation(line: 0, scope: !1184)
!1191 = !DILocation(line: 178, column: 40, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1184, file: !25, line: 178, column: 9)
!1193 = !DILocation(line: 180, column: 22, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1192, file: !25, line: 178, column: 51)
!1195 = !DILocalVariable(name: "Mj", scope: !1157, file: !25, line: 164, type: !428)
!1196 = !DILocalVariable(name: "c", scope: !1197, file: !25, line: 181, type: !45)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !25, line: 181, column: 13)
!1198 = !DILocation(line: 0, scope: !1197)
!1199 = !DILocation(line: 181, column: 18, scope: !1197)
!1200 = !DILocation(line: 181, scope: !1197)
!1201 = !DILocation(line: 181, column: 31, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !25, line: 181, column: 13)
!1203 = !DILocation(line: 181, column: 13, scope: !1197)
!1204 = !DILocation(line: 182, column: 17, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !25, line: 182, column: 17)
!1206 = distinct !DILexicalBlock(scope: !1202, file: !25, line: 181, column: 50)
!1207 = !DILocation(line: 182, scope: !1205)
!1208 = !DILocalVariable(name: "k", scope: !1205, file: !25, line: 182, type: !45)
!1209 = !DILocation(line: 0, scope: !1205)
!1210 = !DILocation(line: 182, column: 35, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1205, file: !25, line: 182, column: 17)
!1212 = !DILocation(line: 184, column: 86, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1211, file: !25, line: 183, column: 17)
!1214 = !DILocation(line: 184, column: 83, scope: !1213)
!1215 = !DILocation(line: 184, column: 78, scope: !1213)
!1216 = !DILocation(line: 184, column: 100, scope: !1213)
!1217 = !DILocation(line: 184, column: 35, scope: !1213)
!1218 = !DILocation(line: 184, column: 39, scope: !1213)
!1219 = !DILocation(line: 184, column: 48, scope: !1213)
!1220 = !DILocation(line: 184, column: 65, scope: !1213)
!1221 = !DILocation(line: 184, column: 43, scope: !1213)
!1222 = !DILocation(line: 184, column: 21, scope: !1213)
!1223 = !DILocation(line: 184, column: 75, scope: !1213)
!1224 = !DILocation(line: 185, column: 38, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1213, file: !25, line: 185, column: 24)
!1226 = !DILocation(line: 186, column: 94, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1225, file: !25, line: 185, column: 42)
!1228 = !DILocation(line: 186, column: 91, scope: !1227)
!1229 = !DILocation(line: 186, column: 86, scope: !1227)
!1230 = !DILocation(line: 186, column: 114, scope: !1227)
!1231 = !DILocation(line: 186, column: 108, scope: !1227)
!1232 = !DILocation(line: 186, column: 39, scope: !1227)
!1233 = !DILocation(line: 186, column: 43, scope: !1227)
!1234 = !DILocation(line: 186, column: 52, scope: !1227)
!1235 = !DILocation(line: 186, column: 73, scope: !1227)
!1236 = !DILocation(line: 186, column: 47, scope: !1227)
!1237 = !DILocation(line: 186, column: 25, scope: !1227)
!1238 = !DILocation(line: 186, column: 83, scope: !1227)
!1239 = !DILocation(line: 187, column: 21, scope: !1227)
!1240 = !DILocation(line: 182, column: 51, scope: !1211)
!1241 = !DILocation(line: 182, column: 17, scope: !1211)
!1242 = distinct !{!1242, !1204, !1243, !244}
!1243 = !DILocation(line: 188, column: 17, scope: !1205)
!1244 = !DILocation(line: 181, column: 46, scope: !1202)
!1245 = !DILocation(line: 181, column: 13, scope: !1202)
!1246 = distinct !{!1246, !1203, !1247, !244}
!1247 = !DILocation(line: 189, column: 13, scope: !1197)
!1248 = !DILocation(line: 191, column: 19, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1194, file: !25, line: 191, column: 17)
!1250 = !DILocation(line: 192, column: 26, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1249, file: !25, line: 191, column: 25)
!1252 = !DILocalVariable(name: "Mi", scope: !1157, file: !25, line: 164, type: !428)
!1253 = !DILocalVariable(name: "c", scope: !1254, file: !25, line: 193, type: !45)
!1254 = distinct !DILexicalBlock(scope: !1251, file: !25, line: 193, column: 17)
!1255 = !DILocation(line: 0, scope: !1254)
!1256 = !DILocation(line: 193, column: 22, scope: !1254)
!1257 = !DILocation(line: 193, scope: !1254)
!1258 = !DILocation(line: 193, column: 35, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1254, file: !25, line: 193, column: 17)
!1260 = !DILocation(line: 193, column: 17, scope: !1254)
!1261 = !DILocation(line: 194, column: 21, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !25, line: 194, column: 21)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !25, line: 193, column: 54)
!1264 = !DILocation(line: 194, scope: !1262)
!1265 = !DILocalVariable(name: "k", scope: !1262, file: !25, line: 194, type: !45)
!1266 = !DILocation(line: 0, scope: !1262)
!1267 = !DILocation(line: 194, column: 39, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1262, file: !25, line: 194, column: 21)
!1269 = !DILocation(line: 196, column: 89, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1268, file: !25, line: 195, column: 21)
!1271 = !DILocation(line: 196, column: 86, scope: !1270)
!1272 = !DILocation(line: 196, column: 81, scope: !1270)
!1273 = !DILocation(line: 196, column: 103, scope: !1270)
!1274 = !DILocation(line: 196, column: 38, scope: !1270)
!1275 = !DILocation(line: 196, column: 42, scope: !1270)
!1276 = !DILocation(line: 196, column: 51, scope: !1270)
!1277 = !DILocation(line: 196, column: 68, scope: !1270)
!1278 = !DILocation(line: 196, column: 46, scope: !1270)
!1279 = !DILocation(line: 196, column: 25, scope: !1270)
!1280 = !DILocation(line: 196, column: 78, scope: !1270)
!1281 = !DILocation(line: 197, column: 42, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1270, file: !25, line: 197, column: 28)
!1283 = !DILocation(line: 198, column: 97, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1282, file: !25, line: 197, column: 46)
!1285 = !DILocation(line: 198, column: 94, scope: !1284)
!1286 = !DILocation(line: 198, column: 89, scope: !1284)
!1287 = !DILocation(line: 198, column: 117, scope: !1284)
!1288 = !DILocation(line: 198, column: 111, scope: !1284)
!1289 = !DILocation(line: 198, column: 42, scope: !1284)
!1290 = !DILocation(line: 198, column: 46, scope: !1284)
!1291 = !DILocation(line: 198, column: 55, scope: !1284)
!1292 = !DILocation(line: 198, column: 76, scope: !1284)
!1293 = !DILocation(line: 198, column: 50, scope: !1284)
!1294 = !DILocation(line: 198, column: 29, scope: !1284)
!1295 = !DILocation(line: 198, column: 86, scope: !1284)
!1296 = !DILocation(line: 199, column: 25, scope: !1284)
!1297 = !DILocation(line: 194, column: 55, scope: !1268)
!1298 = !DILocation(line: 194, column: 21, scope: !1268)
!1299 = distinct !{!1299, !1261, !1300, !244}
!1300 = !DILocation(line: 200, column: 21, scope: !1262)
!1301 = !DILocation(line: 193, column: 50, scope: !1259)
!1302 = !DILocation(line: 193, column: 17, scope: !1259)
!1303 = distinct !{!1303, !1260, !1304, !244}
!1304 = !DILocation(line: 201, column: 17, scope: !1254)
!1305 = !DILocation(line: 204, column: 27, scope: !1194)
!1306 = !DILocation(line: 205, column: 30, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1194, file: !25, line: 205, column: 16)
!1308 = !DILocation(line: 178, column: 46, scope: !1192)
!1309 = !DILocation(line: 178, column: 9, scope: !1192)
!1310 = distinct !{!1310, !1183, !1311, !244}
!1311 = !DILocation(line: 209, column: 9, scope: !1184)
!1312 = !DILocation(line: 177, column: 42, scope: !1181)
!1313 = !DILocation(line: 177, column: 5, scope: !1181)
!1314 = distinct !{!1314, !1182, !1315, !244}
!1315 = !DILocation(line: 210, column: 5, scope: !1174)
!1316 = !DILocation(line: 212, scope: !1187)
!1317 = !DILocalVariable(name: "c", scope: !1187, file: !25, line: 212, type: !15)
!1318 = !DILocation(line: 0, scope: !1187)
!1319 = !DILocation(line: 212, column: 26, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1187, file: !25, line: 212, column: 5)
!1321 = !DILocation(line: 214, column: 35, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1320, file: !25, line: 213, column: 5)
!1323 = !DILocation(line: 214, column: 9, scope: !1322)
!1324 = !DILocation(line: 212, column: 91, scope: !1320)
!1325 = !DILocation(line: 212, column: 5, scope: !1320)
!1326 = distinct !{!1326, !1186, !1327, !244}
!1327 = !DILocation(line: 215, column: 5, scope: !1187)
!1328 = !DILocalVariable(name: "tab", scope: !1157, file: !25, line: 217, type: !116)
!1329 = !DILocation(line: 217, column: 19, scope: !1157)
!1330 = !DILocalVariable(name: "i", scope: !1331, file: !25, line: 218, type: !15)
!1331 = distinct !DILexicalBlock(scope: !1157, file: !25, line: 218, column: 5)
!1332 = !DILocation(line: 0, scope: !1331)
!1333 = !DILocation(line: 218, column: 10, scope: !1331)
!1334 = !DILocation(line: 218, scope: !1331)
!1335 = !DILocation(line: 218, column: 26, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1331, file: !25, line: 218, column: 5)
!1337 = !DILocation(line: 218, column: 5, scope: !1331)
!1338 = !DILocation(line: 228, column: 5, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1157, file: !25, line: 228, column: 5)
!1340 = !DILocation(line: 220, column: 28, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1336, file: !25, line: 219, column: 5)
!1342 = !DILocation(line: 220, column: 22, scope: !1341)
!1343 = !DILocation(line: 220, column: 14, scope: !1341)
!1344 = !DILocation(line: 220, column: 9, scope: !1341)
!1345 = !DILocation(line: 220, column: 20, scope: !1341)
!1346 = !DILocation(line: 221, column: 22, scope: !1341)
!1347 = !DILocation(line: 221, column: 14, scope: !1341)
!1348 = !DILocation(line: 221, column: 16, scope: !1341)
!1349 = !DILocation(line: 221, column: 9, scope: !1341)
!1350 = !DILocation(line: 221, column: 20, scope: !1341)
!1351 = !DILocation(line: 222, column: 28, scope: !1341)
!1352 = !DILocation(line: 222, column: 22, scope: !1341)
!1353 = !DILocation(line: 222, column: 14, scope: !1341)
!1354 = !DILocation(line: 222, column: 16, scope: !1341)
!1355 = !DILocation(line: 222, column: 9, scope: !1341)
!1356 = !DILocation(line: 222, column: 20, scope: !1341)
!1357 = !DILocation(line: 223, column: 28, scope: !1341)
!1358 = !DILocation(line: 223, column: 22, scope: !1341)
!1359 = !DILocation(line: 223, column: 14, scope: !1341)
!1360 = !DILocation(line: 223, column: 16, scope: !1341)
!1361 = !DILocation(line: 223, column: 9, scope: !1341)
!1362 = !DILocation(line: 223, column: 20, scope: !1341)
!1363 = !DILocation(line: 218, column: 41, scope: !1336)
!1364 = !DILocation(line: 218, column: 5, scope: !1336)
!1365 = distinct !{!1365, !1337, !1366, !244}
!1366 = !DILocation(line: 224, column: 5, scope: !1331)
!1367 = !DILocation(line: 228, scope: !1339)
!1368 = !DILocalVariable(name: "c", scope: !1339, file: !25, line: 228, type: !15)
!1369 = !DILocation(line: 0, scope: !1339)
!1370 = !DILocation(line: 228, column: 26, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1339, file: !25, line: 228, column: 5)
!1372 = !DILocation(line: 230, column: 9, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !25, line: 230, column: 9)
!1374 = distinct !DILexicalBlock(scope: !1371, file: !25, line: 229, column: 5)
!1375 = !DILocation(line: 250, column: 5, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1157, file: !25, line: 250, column: 5)
!1377 = !DILocation(line: 230, scope: !1373)
!1378 = !DILocalVariable(name: "r", scope: !1373, file: !25, line: 230, type: !45)
!1379 = !DILocation(line: 0, scope: !1373)
!1380 = !DILocation(line: 230, column: 36, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1373, file: !25, line: 230, column: 9)
!1382 = !DILocation(line: 232, column: 28, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1381, file: !25, line: 231, column: 9)
!1384 = !DILocation(line: 232, column: 32, scope: !1383)
!1385 = !DILocation(line: 232, column: 41, scope: !1383)
!1386 = !DILocation(line: 232, column: 49, scope: !1383)
!1387 = !DILocation(line: 232, column: 45, scope: !1383)
!1388 = !DILocalVariable(name: "pos", scope: !1383, file: !25, line: 232, type: !15)
!1389 = !DILocation(line: 0, scope: !1383)
!1390 = !DILocation(line: 233, column: 28, scope: !1383)
!1391 = !DILocation(line: 233, column: 41, scope: !1383)
!1392 = !DILocalVariable(name: "t0", scope: !1383, file: !25, line: 233, type: !6)
!1393 = !DILocation(line: 234, column: 35, scope: !1383)
!1394 = !DILocation(line: 234, column: 41, scope: !1383)
!1395 = !DILocalVariable(name: "t1", scope: !1383, file: !25, line: 234, type: !6)
!1396 = !DILocation(line: 235, column: 35, scope: !1383)
!1397 = !DILocation(line: 235, column: 41, scope: !1383)
!1398 = !DILocalVariable(name: "t2", scope: !1383, file: !25, line: 235, type: !6)
!1399 = !DILocation(line: 236, column: 28, scope: !1383)
!1400 = !DILocation(line: 236, column: 35, scope: !1383)
!1401 = !DILocation(line: 236, column: 41, scope: !1383)
!1402 = !DILocalVariable(name: "t3", scope: !1383, file: !25, line: 236, type: !6)
!1403 = !DILocalVariable(name: "t", scope: !1404, file: !25, line: 237, type: !15)
!1404 = distinct !DILexicalBlock(scope: !1383, file: !25, line: 237, column: 13)
!1405 = !DILocation(line: 0, scope: !1404)
!1406 = !DILocation(line: 237, column: 18, scope: !1404)
!1407 = !DILocation(line: 237, scope: !1404)
!1408 = !DILocation(line: 237, column: 34, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1404, file: !25, line: 237, column: 13)
!1410 = !DILocation(line: 237, column: 13, scope: !1404)
!1411 = !DILocation(line: 239, column: 89, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1409, file: !25, line: 238, column: 13)
!1413 = !DILocation(line: 239, column: 84, scope: !1412)
!1414 = !DILocation(line: 239, column: 83, scope: !1412)
!1415 = !DILocation(line: 239, column: 105, scope: !1412)
!1416 = !DILocation(line: 239, column: 107, scope: !1412)
!1417 = !DILocation(line: 239, column: 100, scope: !1412)
!1418 = !DILocation(line: 239, column: 99, scope: !1412)
!1419 = !DILocation(line: 239, column: 95, scope: !1412)
!1420 = !DILocation(line: 239, column: 121, scope: !1412)
!1421 = !DILocation(line: 239, column: 123, scope: !1412)
!1422 = !DILocation(line: 239, column: 116, scope: !1412)
!1423 = !DILocation(line: 239, column: 115, scope: !1412)
!1424 = !DILocation(line: 239, column: 111, scope: !1412)
!1425 = !DILocation(line: 239, column: 137, scope: !1412)
!1426 = !DILocation(line: 239, column: 139, scope: !1412)
!1427 = !DILocation(line: 239, column: 132, scope: !1412)
!1428 = !DILocation(line: 239, column: 131, scope: !1412)
!1429 = !DILocation(line: 239, column: 127, scope: !1412)
!1430 = !DILocation(line: 239, column: 22, scope: !1412)
!1431 = !DILocation(line: 239, column: 24, scope: !1412)
!1432 = !DILocation(line: 239, column: 36, scope: !1412)
!1433 = !DILocation(line: 239, column: 40, scope: !1412)
!1434 = !DILocation(line: 239, column: 49, scope: !1412)
!1435 = !DILocation(line: 239, column: 58, scope: !1412)
!1436 = !DILocation(line: 239, column: 72, scope: !1412)
!1437 = !DILocation(line: 239, column: 53, scope: !1412)
!1438 = !DILocation(line: 239, column: 17, scope: !1412)
!1439 = !DILocation(line: 239, column: 78, scope: !1412)
!1440 = !DILocation(line: 237, column: 49, scope: !1409)
!1441 = !DILocation(line: 237, column: 13, scope: !1409)
!1442 = distinct !{!1442, !1410, !1443, !244}
!1443 = !DILocation(line: 240, column: 13, scope: !1404)
!1444 = !DILocation(line: 230, column: 82, scope: !1381)
!1445 = !DILocation(line: 230, column: 9, scope: !1381)
!1446 = distinct !{!1446, !1372, !1447, !244}
!1447 = !DILocation(line: 241, column: 9, scope: !1373)
!1448 = !DILocation(line: 228, column: 38, scope: !1371)
!1449 = !DILocation(line: 228, column: 5, scope: !1371)
!1450 = distinct !{!1450, !1338, !1451, !244}
!1451 = !DILocation(line: 242, column: 5, scope: !1339)
!1452 = !DILocation(line: 250, scope: !1376)
!1453 = !DILocalVariable(name: "r", scope: !1376, file: !25, line: 250, type: !45)
!1454 = !DILocation(line: 0, scope: !1376)
!1455 = !DILocation(line: 250, column: 23, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1376, file: !25, line: 250, column: 5)
!1457 = !DILocation(line: 252, column: 9, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !25, line: 252, column: 9)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !25, line: 251, column: 5)
!1460 = !DILocation(line: 252, scope: !1458)
!1461 = !DILocalVariable(name: "c", scope: !1458, file: !25, line: 252, type: !45)
!1462 = !DILocation(line: 0, scope: !1458)
!1463 = !DILocation(line: 252, column: 27, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1458, file: !25, line: 252, column: 9)
!1465 = !DILocation(line: 254, column: 13, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !25, line: 254, column: 13)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !25, line: 253, column: 9)
!1468 = !DILocation(line: 254, scope: !1466)
!1469 = !DILocalVariable(name: "i", scope: !1466, file: !25, line: 254, type: !45)
!1470 = !DILocation(line: 0, scope: !1466)
!1471 = !DILocation(line: 254, column: 35, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1466, file: !25, line: 254, column: 13)
!1473 = !DILocation(line: 256, column: 55, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1472, file: !25, line: 255, column: 13)
!1475 = !DILocation(line: 256, column: 59, scope: !1474)
!1476 = !DILocation(line: 256, column: 63, scope: !1474)
!1477 = !DILocation(line: 256, column: 44, scope: !1474)
!1478 = !DILocation(line: 256, column: 95, scope: !1474)
!1479 = !DILocation(line: 256, column: 92, scope: !1474)
!1480 = !DILocation(line: 256, column: 75, scope: !1474)
!1481 = !DILocation(line: 256, column: 99, scope: !1474)
!1482 = !DILocation(line: 256, column: 104, scope: !1474)
!1483 = !DILocation(line: 256, column: 17, scope: !1474)
!1484 = !DILocation(line: 254, column: 50, scope: !1472)
!1485 = !DILocation(line: 254, column: 13, scope: !1472)
!1486 = distinct !{!1486, !1465, !1487, !244}
!1487 = !DILocation(line: 257, column: 13, scope: !1466)
!1488 = !DILocation(line: 252, column: 50, scope: !1464)
!1489 = !DILocation(line: 252, column: 9, scope: !1464)
!1490 = distinct !{!1490, !1457, !1491, !244}
!1491 = !DILocation(line: 258, column: 9, scope: !1458)
!1492 = !DILocation(line: 250, column: 38, scope: !1456)
!1493 = !DILocation(line: 250, column: 5, scope: !1456)
!1494 = distinct !{!1494, !1375, !1495, !244}
!1495 = !DILocation(line: 259, column: 5, scope: !1376)
!1496 = !DILocation(line: 260, column: 1, scope: !1157)
!1497 = distinct !DISubprogram(name: "mat_mul", scope: !595, file: !595, line: 79, type: !1498, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !49, !49, !18, !45, !45, !45}
!1500 = !DILocalVariable(name: "a", arg: 1, scope: !1497, file: !595, line: 79, type: !49)
!1501 = !DILocation(line: 0, scope: !1497)
!1502 = !DILocalVariable(name: "b", arg: 2, scope: !1497, file: !595, line: 79, type: !49)
!1503 = !DILocalVariable(name: "c", arg: 3, scope: !1497, file: !595, line: 80, type: !18)
!1504 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1497, file: !595, line: 80, type: !45)
!1505 = !DILocalVariable(name: "row_a", arg: 5, scope: !1497, file: !595, line: 80, type: !45)
!1506 = !DILocalVariable(name: "col_b", arg: 6, scope: !1497, file: !595, line: 80, type: !45)
!1507 = !DILocalVariable(name: "i", scope: !1508, file: !595, line: 81, type: !45)
!1508 = distinct !DILexicalBlock(scope: !1497, file: !595, line: 81, column: 5)
!1509 = !DILocation(line: 0, scope: !1508)
!1510 = !DILocation(line: 81, column: 10, scope: !1508)
!1511 = !DILocation(line: 81, scope: !1508)
!1512 = !DILocation(line: 81, column: 23, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1508, file: !595, line: 81, column: 5)
!1514 = !DILocation(line: 81, column: 5, scope: !1508)
!1515 = !DILocation(line: 82, column: 9, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !595, line: 82, column: 9)
!1517 = distinct !DILexicalBlock(scope: !1513, file: !595, line: 81, column: 53)
!1518 = !DILocation(line: 82, scope: !1516)
!1519 = !DILocalVariable(name: "j", scope: !1516, file: !595, line: 82, type: !45)
!1520 = !DILocation(line: 0, scope: !1516)
!1521 = !DILocation(line: 83, column: 18, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !595, line: 82, column: 46)
!1523 = distinct !DILexicalBlock(scope: !1516, file: !595, line: 82, column: 9)
!1524 = !DILocation(line: 83, column: 16, scope: !1522)
!1525 = !DILocation(line: 82, column: 41, scope: !1523)
!1526 = !DILocation(line: 82, column: 9, scope: !1523)
!1527 = distinct !{!1527, !1515, !1528, !244}
!1528 = !DILocation(line: 84, column: 9, scope: !1516)
!1529 = !DILocation(line: 81, column: 32, scope: !1513)
!1530 = !DILocation(line: 81, column: 39, scope: !1513)
!1531 = !DILocation(line: 81, column: 5, scope: !1513)
!1532 = distinct !{!1532, !1514, !1533, !244}
!1533 = !DILocation(line: 85, column: 5, scope: !1508)
!1534 = !DILocation(line: 86, column: 1, scope: !1497)
!1535 = distinct !DISubprogram(name: "mat_add", scope: !595, file: !595, line: 88, type: !1536, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{null, !49, !49, !18, !45, !45}
!1538 = !DILocalVariable(name: "a", arg: 1, scope: !1535, file: !595, line: 88, type: !49)
!1539 = !DILocation(line: 0, scope: !1535)
!1540 = !DILocalVariable(name: "b", arg: 2, scope: !1535, file: !595, line: 88, type: !49)
!1541 = !DILocalVariable(name: "c", arg: 3, scope: !1535, file: !595, line: 89, type: !18)
!1542 = !DILocalVariable(name: "m", arg: 4, scope: !1535, file: !595, line: 89, type: !45)
!1543 = !DILocalVariable(name: "n", arg: 5, scope: !1535, file: !595, line: 89, type: !45)
!1544 = !DILocalVariable(name: "i", scope: !1545, file: !595, line: 90, type: !45)
!1545 = distinct !DILexicalBlock(scope: !1535, file: !595, line: 90, column: 5)
!1546 = !DILocation(line: 0, scope: !1545)
!1547 = !DILocation(line: 90, column: 10, scope: !1545)
!1548 = !DILocation(line: 90, scope: !1545)
!1549 = !DILocation(line: 90, column: 23, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1545, file: !595, line: 90, column: 5)
!1551 = !DILocation(line: 90, column: 5, scope: !1545)
!1552 = !DILocalVariable(name: "j", scope: !1553, file: !595, line: 91, type: !45)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !595, line: 91, column: 9)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !595, line: 90, column: 33)
!1555 = !DILocation(line: 0, scope: !1553)
!1556 = !DILocation(line: 92, column: 42, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !595, line: 91, column: 37)
!1558 = distinct !DILexicalBlock(scope: !1553, file: !595, line: 91, column: 9)
!1559 = !DILocation(line: 92, column: 38, scope: !1557)
!1560 = !DILocation(line: 92, column: 60, scope: !1557)
!1561 = !DILocation(line: 92, column: 56, scope: !1557)
!1562 = !DILocation(line: 92, column: 32, scope: !1557)
!1563 = !DILocation(line: 92, column: 17, scope: !1557)
!1564 = !DILocation(line: 92, column: 30, scope: !1557)
!1565 = !DILocation(line: 90, column: 28, scope: !1550)
!1566 = !DILocation(line: 90, column: 5, scope: !1550)
!1567 = distinct !{!1567, !1551, !1568, !244}
!1568 = !DILocation(line: 94, column: 5, scope: !1545)
!1569 = !DILocation(line: 95, column: 1, scope: !1535)
!1570 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 32, type: !379, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1571 = !DILocalVariable(name: "m", arg: 1, scope: !1570, file: !25, line: 32, type: !49)
!1572 = !DILocation(line: 0, scope: !1570)
!1573 = !DILocalVariable(name: "menc", arg: 2, scope: !1570, file: !25, line: 32, type: !18)
!1574 = !DILocalVariable(name: "mlen", arg: 3, scope: !1570, file: !25, line: 32, type: !45)
!1575 = !DILocalVariable(name: "i", scope: !1570, file: !25, line: 33, type: !45)
!1576 = !DILocation(line: 34, column: 10, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1570, file: !25, line: 34, column: 5)
!1578 = !DILocation(line: 34, scope: !1577)
!1579 = !DILocation(line: 34, column: 19, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1577, file: !25, line: 34, column: 5)
!1581 = !DILocation(line: 34, column: 5, scope: !1577)
!1582 = !DILocation(line: 35, column: 20, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1580, file: !25, line: 34, column: 44)
!1584 = !DILocation(line: 35, column: 31, scope: !1583)
!1585 = !DILocation(line: 35, column: 27, scope: !1583)
!1586 = !DILocation(line: 35, column: 36, scope: !1583)
!1587 = !DILocation(line: 35, column: 24, scope: !1583)
!1588 = !DILocation(line: 35, column: 9, scope: !1583)
!1589 = !DILocation(line: 35, column: 17, scope: !1583)
!1590 = !DILocation(line: 34, column: 31, scope: !1580)
!1591 = !DILocation(line: 34, column: 38, scope: !1580)
!1592 = !DILocation(line: 34, column: 5, scope: !1580)
!1593 = distinct !{!1593, !1581, !1594, !244}
!1594 = !DILocation(line: 36, column: 5, scope: !1577)
!1595 = !DILocation(line: 41, column: 1, scope: !1570)
!1596 = distinct !DISubprogram(name: "add_f", scope: !595, file: !595, line: 43, type: !1597, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!14, !14, !14}
!1599 = !DILocalVariable(name: "a", arg: 1, scope: !1596, file: !595, line: 43, type: !14)
!1600 = !DILocation(line: 0, scope: !1596)
!1601 = !DILocalVariable(name: "b", arg: 2, scope: !1596, file: !595, line: 43, type: !14)
!1602 = !DILocation(line: 44, column: 14, scope: !1596)
!1603 = !DILocation(line: 44, column: 5, scope: !1596)
!1604 = distinct !DISubprogram(name: "lincomb", scope: !595, file: !595, line: 70, type: !1605, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!14, !49, !49, !45, !45}
!1607 = !DILocalVariable(name: "a", arg: 1, scope: !1604, file: !595, line: 70, type: !49)
!1608 = !DILocation(line: 0, scope: !1604)
!1609 = !DILocalVariable(name: "b", arg: 2, scope: !1604, file: !595, line: 71, type: !49)
!1610 = !DILocalVariable(name: "n", arg: 3, scope: !1604, file: !595, line: 71, type: !45)
!1611 = !DILocalVariable(name: "m", arg: 4, scope: !1604, file: !595, line: 71, type: !45)
!1612 = !DILocalVariable(name: "ret", scope: !1604, file: !595, line: 72, type: !14)
!1613 = !DILocalVariable(name: "i", scope: !1614, file: !595, line: 73, type: !45)
!1614 = distinct !DILexicalBlock(scope: !1604, file: !595, line: 73, column: 5)
!1615 = !DILocation(line: 0, scope: !1614)
!1616 = !DILocation(line: 73, column: 10, scope: !1614)
!1617 = !DILocation(line: 73, scope: !1614)
!1618 = !DILocation(line: 73, column: 23, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1614, file: !595, line: 73, column: 5)
!1620 = !DILocation(line: 73, column: 5, scope: !1614)
!1621 = !DILocation(line: 74, column: 27, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1619, file: !595, line: 73, column: 41)
!1623 = !DILocation(line: 74, column: 33, scope: !1622)
!1624 = !DILocation(line: 74, column: 21, scope: !1622)
!1625 = !DILocation(line: 74, column: 15, scope: !1622)
!1626 = !DILocation(line: 73, column: 28, scope: !1619)
!1627 = !DILocation(line: 73, column: 35, scope: !1619)
!1628 = !DILocation(line: 73, column: 5, scope: !1619)
!1629 = distinct !{!1629, !1620, !1630, !244}
!1630 = !DILocation(line: 75, column: 5, scope: !1614)
!1631 = !DILocation(line: 76, column: 5, scope: !1604)
!1632 = distinct !DISubprogram(name: "mul_f", scope: !595, file: !595, line: 9, type: !1597, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1633 = !DILocalVariable(name: "a", arg: 1, scope: !1632, file: !595, line: 9, type: !14)
!1634 = !DILocation(line: 0, scope: !1632)
!1635 = !DILocalVariable(name: "b", arg: 2, scope: !1632, file: !595, line: 9, type: !14)
!1636 = !DILocation(line: 14, column: 10, scope: !1632)
!1637 = !DILocation(line: 14, column: 7, scope: !1632)
!1638 = !DILocation(line: 17, column: 17, scope: !1632)
!1639 = !DILocalVariable(name: "p", scope: !1632, file: !595, line: 11, type: !14)
!1640 = !DILocation(line: 18, column: 13, scope: !1632)
!1641 = !DILocation(line: 18, column: 17, scope: !1632)
!1642 = !DILocation(line: 18, column: 7, scope: !1632)
!1643 = !DILocation(line: 19, column: 13, scope: !1632)
!1644 = !DILocation(line: 19, column: 17, scope: !1632)
!1645 = !DILocation(line: 19, column: 7, scope: !1632)
!1646 = !DILocation(line: 20, column: 13, scope: !1632)
!1647 = !DILocation(line: 20, column: 17, scope: !1632)
!1648 = !DILocation(line: 20, column: 7, scope: !1632)
!1649 = !DILocalVariable(name: "top_p", scope: !1632, file: !595, line: 23, type: !14)
!1650 = !DILocation(line: 24, column: 37, scope: !1632)
!1651 = !DILocation(line: 24, column: 52, scope: !1632)
!1652 = !DILocation(line: 24, column: 43, scope: !1632)
!1653 = !DILocation(line: 24, column: 59, scope: !1632)
!1654 = !DILocalVariable(name: "out", scope: !1632, file: !595, line: 24, type: !14)
!1655 = !DILocation(line: 25, column: 5, scope: !1632)
!1656 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 111, type: !5)
!1657 = !DILocation(line: 0, scope: !24)
!1658 = !DILocalVariable(name: "i", scope: !1659, file: !25, line: 117, type: !15)
!1659 = distinct !DILexicalBlock(scope: !24, file: !25, line: 117, column: 5)
!1660 = !DILocation(line: 0, scope: !1659)
!1661 = !DILocation(line: 117, column: 10, scope: !1659)
!1662 = !DILocation(line: 117, scope: !1659)
!1663 = !DILocation(line: 117, column: 26, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1659, file: !25, line: 117, column: 5)
!1665 = !DILocation(line: 117, column: 5, scope: !1659)
!1666 = !DILocation(line: 124, column: 5, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !24, file: !25, line: 124, column: 5)
!1668 = !DILocation(line: 119, column: 24, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1664, file: !25, line: 118, column: 5)
!1670 = !DILocation(line: 119, column: 29, scope: !1669)
!1671 = !DILocation(line: 119, column: 41, scope: !1669)
!1672 = !DILocation(line: 119, column: 38, scope: !1669)
!1673 = !DILocation(line: 119, column: 36, scope: !1669)
!1674 = !DILocation(line: 119, column: 46, scope: !1669)
!1675 = !DILocalVariable(name: "t", scope: !1669, file: !25, line: 119, type: !6)
!1676 = !DILocation(line: 0, scope: !1669)
!1677 = !DILocation(line: 120, column: 21, scope: !1669)
!1678 = !DILocation(line: 120, column: 9, scope: !1669)
!1679 = !DILocation(line: 120, column: 16, scope: !1669)
!1680 = !DILocation(line: 121, column: 12, scope: !1669)
!1681 = !DILocation(line: 121, column: 9, scope: !1669)
!1682 = !DILocation(line: 121, column: 16, scope: !1669)
!1683 = !DILocation(line: 117, column: 33, scope: !1664)
!1684 = !DILocation(line: 117, column: 5, scope: !1664)
!1685 = distinct !{!1685, !1665, !1686, !244}
!1686 = !DILocation(line: 122, column: 5, scope: !1659)
!1687 = !DILocation(line: 124, scope: !1667)
!1688 = !DILocalVariable(name: "i", scope: !1667, file: !25, line: 124, type: !15)
!1689 = !DILocation(line: 0, scope: !1667)
!1690 = !DILocation(line: 124, column: 26, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1667, file: !25, line: 124, column: 5)
!1692 = !DILocation(line: 134, column: 5, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !24, file: !25, line: 134, column: 5)
!1694 = !DILocation(line: 126, column: 25, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1691, file: !25, line: 125, column: 5)
!1696 = !DILocation(line: 126, column: 32, scope: !1695)
!1697 = !DILocation(line: 126, column: 43, scope: !1695)
!1698 = !DILocation(line: 126, column: 40, scope: !1695)
!1699 = !DILocation(line: 126, column: 38, scope: !1695)
!1700 = !DILocation(line: 126, column: 48, scope: !1695)
!1701 = !DILocalVariable(name: "t0", scope: !1695, file: !25, line: 126, type: !6)
!1702 = !DILocation(line: 0, scope: !1695)
!1703 = !DILocation(line: 127, column: 28, scope: !1695)
!1704 = !DILocation(line: 127, column: 25, scope: !1695)
!1705 = !DILocation(line: 127, column: 32, scope: !1695)
!1706 = !DILocation(line: 127, column: 43, scope: !1695)
!1707 = !DILocation(line: 127, column: 40, scope: !1695)
!1708 = !DILocation(line: 127, column: 38, scope: !1695)
!1709 = !DILocation(line: 127, column: 48, scope: !1695)
!1710 = !DILocalVariable(name: "t1", scope: !1695, file: !25, line: 127, type: !6)
!1711 = !DILocation(line: 128, column: 23, scope: !1695)
!1712 = !DILocation(line: 128, column: 9, scope: !1695)
!1713 = !DILocation(line: 128, column: 16, scope: !1695)
!1714 = !DILocation(line: 129, column: 23, scope: !1695)
!1715 = !DILocation(line: 129, column: 12, scope: !1695)
!1716 = !DILocation(line: 129, column: 9, scope: !1695)
!1717 = !DILocation(line: 129, column: 16, scope: !1695)
!1718 = !DILocation(line: 130, column: 12, scope: !1695)
!1719 = !DILocation(line: 130, column: 9, scope: !1695)
!1720 = !DILocation(line: 130, column: 16, scope: !1695)
!1721 = !DILocation(line: 131, column: 12, scope: !1695)
!1722 = !DILocation(line: 131, column: 9, scope: !1695)
!1723 = !DILocation(line: 131, column: 16, scope: !1695)
!1724 = !DILocation(line: 124, column: 33, scope: !1691)
!1725 = !DILocation(line: 124, column: 5, scope: !1691)
!1726 = distinct !{!1726, !1666, !1727, !244}
!1727 = !DILocation(line: 132, column: 5, scope: !1667)
!1728 = !DILocation(line: 134, scope: !1693)
!1729 = !DILocalVariable(name: "i", scope: !1693, file: !25, line: 134, type: !15)
!1730 = !DILocation(line: 0, scope: !1693)
!1731 = !DILocation(line: 134, column: 26, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1693, file: !25, line: 134, column: 5)
!1733 = !DILocation(line: 145, column: 5, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !24, file: !25, line: 145, column: 5)
!1735 = !DILocation(line: 136, column: 25, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !25, line: 135, column: 5)
!1737 = !DILocation(line: 136, column: 32, scope: !1736)
!1738 = !DILocation(line: 136, column: 44, scope: !1736)
!1739 = !DILocation(line: 136, column: 41, scope: !1736)
!1740 = !DILocation(line: 136, column: 39, scope: !1736)
!1741 = !DILocation(line: 136, column: 50, scope: !1736)
!1742 = !DILocalVariable(name: "t0", scope: !1736, file: !25, line: 136, type: !6)
!1743 = !DILocation(line: 0, scope: !1736)
!1744 = !DILocation(line: 137, column: 28, scope: !1736)
!1745 = !DILocation(line: 137, column: 25, scope: !1736)
!1746 = !DILocation(line: 137, column: 32, scope: !1736)
!1747 = !DILocation(line: 137, column: 44, scope: !1736)
!1748 = !DILocation(line: 137, column: 41, scope: !1736)
!1749 = !DILocation(line: 137, column: 39, scope: !1736)
!1750 = !DILocation(line: 137, column: 50, scope: !1736)
!1751 = !DILocalVariable(name: "t1", scope: !1736, file: !25, line: 137, type: !6)
!1752 = !DILocation(line: 139, column: 23, scope: !1736)
!1753 = !DILocation(line: 139, column: 9, scope: !1736)
!1754 = !DILocation(line: 139, column: 17, scope: !1736)
!1755 = !DILocation(line: 140, column: 23, scope: !1736)
!1756 = !DILocation(line: 140, column: 12, scope: !1736)
!1757 = !DILocation(line: 140, column: 9, scope: !1736)
!1758 = !DILocation(line: 140, column: 17, scope: !1736)
!1759 = !DILocation(line: 141, column: 12, scope: !1736)
!1760 = !DILocation(line: 141, column: 9, scope: !1736)
!1761 = !DILocation(line: 141, column: 17, scope: !1736)
!1762 = !DILocation(line: 142, column: 12, scope: !1736)
!1763 = !DILocation(line: 142, column: 9, scope: !1736)
!1764 = !DILocation(line: 142, column: 17, scope: !1736)
!1765 = !DILocation(line: 134, column: 32, scope: !1732)
!1766 = !DILocation(line: 134, column: 5, scope: !1732)
!1767 = distinct !{!1767, !1692, !1768, !244}
!1768 = !DILocation(line: 143, column: 5, scope: !1693)
!1769 = !DILocation(line: 145, scope: !1734)
!1770 = !DILocalVariable(name: "i", scope: !1734, file: !25, line: 145, type: !15)
!1771 = !DILocation(line: 0, scope: !1734)
!1772 = !DILocation(line: 145, column: 26, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1734, file: !25, line: 145, column: 5)
!1774 = !DILocation(line: 147, column: 24, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1773, file: !25, line: 146, column: 5)
!1776 = !DILocation(line: 147, column: 28, scope: !1775)
!1777 = !DILocation(line: 147, column: 39, scope: !1775)
!1778 = !DILocation(line: 147, column: 36, scope: !1775)
!1779 = !DILocation(line: 147, column: 44, scope: !1775)
!1780 = !DILocalVariable(name: "t", scope: !1775, file: !25, line: 147, type: !6)
!1781 = !DILocation(line: 0, scope: !1775)
!1782 = !DILocation(line: 148, column: 21, scope: !1775)
!1783 = !DILocation(line: 148, column: 9, scope: !1775)
!1784 = !DILocation(line: 148, column: 16, scope: !1775)
!1785 = !DILocation(line: 149, column: 12, scope: !1775)
!1786 = !DILocation(line: 149, column: 9, scope: !1775)
!1787 = !DILocation(line: 149, column: 16, scope: !1775)
!1788 = !DILocation(line: 145, column: 32, scope: !1773)
!1789 = !DILocation(line: 145, column: 5, scope: !1773)
!1790 = distinct !{!1790, !1733, !1791, !244}
!1791 = !DILocation(line: 150, column: 5, scope: !1734)
!1792 = !DILocation(line: 151, column: 1, scope: !24)
!1793 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !425, file: !425, line: 61, type: !481, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1794 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1793, file: !425, line: 61, type: !343)
!1795 = !DILocation(line: 0, scope: !1793)
!1796 = !DILocalVariable(name: "mat", arg: 2, scope: !1793, file: !425, line: 61, type: !49)
!1797 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1793, file: !425, line: 61, type: !428)
!1798 = !DILocalVariable(name: "acc", arg: 4, scope: !1793, file: !425, line: 61, type: !5)
!1799 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1793, file: !425, line: 62, type: !343)
!1800 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1793, file: !425, line: 62, type: !343)
!1801 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1793, file: !425, line: 62, type: !343)
!1802 = !DILocalVariable(name: "r", scope: !1803, file: !425, line: 64, type: !45)
!1803 = distinct !DILexicalBlock(scope: !1793, file: !425, line: 64, column: 5)
!1804 = !DILocation(line: 0, scope: !1803)
!1805 = !DILocation(line: 64, column: 10, scope: !1803)
!1806 = !DILocation(line: 64, scope: !1803)
!1807 = !DILocation(line: 64, column: 23, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1803, file: !425, line: 64, column: 5)
!1809 = !DILocation(line: 64, column: 5, scope: !1803)
!1810 = !DILocation(line: 65, column: 9, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !425, line: 65, column: 9)
!1812 = distinct !DILexicalBlock(scope: !1808, file: !425, line: 64, column: 40)
!1813 = !DILocation(line: 65, scope: !1811)
!1814 = !DILocalVariable(name: "c", scope: !1811, file: !425, line: 65, type: !45)
!1815 = !DILocation(line: 0, scope: !1811)
!1816 = !DILocation(line: 65, column: 27, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1811, file: !425, line: 65, column: 9)
!1818 = !DILocation(line: 66, column: 13, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !425, line: 66, column: 13)
!1820 = distinct !DILexicalBlock(scope: !1817, file: !425, line: 65, column: 44)
!1821 = !DILocation(line: 66, scope: !1819)
!1822 = !DILocalVariable(name: "k", scope: !1819, file: !425, line: 66, type: !45)
!1823 = !DILocation(line: 0, scope: !1819)
!1824 = !DILocation(line: 66, column: 31, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1819, file: !425, line: 66, column: 13)
!1826 = !DILocation(line: 67, column: 70, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1825, file: !425, line: 66, column: 54)
!1828 = !DILocation(line: 67, column: 84, scope: !1827)
!1829 = !DILocation(line: 67, column: 51, scope: !1827)
!1830 = !DILocation(line: 67, column: 96, scope: !1827)
!1831 = !DILocation(line: 67, column: 90, scope: !1827)
!1832 = !DILocation(line: 67, column: 136, scope: !1827)
!1833 = !DILocation(line: 67, column: 150, scope: !1827)
!1834 = !DILocation(line: 67, column: 117, scope: !1827)
!1835 = !DILocation(line: 67, column: 17, scope: !1827)
!1836 = !DILocation(line: 66, column: 48, scope: !1825)
!1837 = !DILocation(line: 66, column: 13, scope: !1825)
!1838 = distinct !{!1838, !1818, !1839, !244}
!1839 = !DILocation(line: 68, column: 13, scope: !1819)
!1840 = !DILocation(line: 65, column: 40, scope: !1817)
!1841 = !DILocation(line: 65, column: 9, scope: !1817)
!1842 = distinct !{!1842, !1810, !1843, !244}
!1843 = !DILocation(line: 69, column: 9, scope: !1811)
!1844 = !DILocation(line: 64, column: 36, scope: !1808)
!1845 = !DILocation(line: 64, column: 5, scope: !1808)
!1846 = distinct !{!1846, !1809, !1847, !244}
!1847 = !DILocation(line: 70, column: 5, scope: !1803)
!1848 = !DILocation(line: 71, column: 1, scope: !1793)
!1849 = distinct !DISubprogram(name: "P1_times_Vt", scope: !425, file: !425, line: 82, type: !471, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1850 = !DILocalVariable(name: "p", arg: 1, scope: !1849, file: !425, line: 82, type: !278)
!1851 = !DILocation(line: 0, scope: !1849)
!1852 = !DILocalVariable(name: "P1", arg: 2, scope: !1849, file: !425, line: 82, type: !428)
!1853 = !DILocalVariable(name: "V", arg: 3, scope: !1849, file: !425, line: 82, type: !49)
!1854 = !DILocalVariable(name: "acc", arg: 4, scope: !1849, file: !425, line: 82, type: !5)
!1855 = !DILocation(line: 86, column: 5, scope: !1849)
!1856 = !DILocation(line: 87, column: 1, scope: !1849)
!1857 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !425, file: !425, line: 32, type: !611, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1858 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1857, file: !425, line: 32, type: !343)
!1859 = !DILocation(line: 0, scope: !1857)
!1860 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1857, file: !425, line: 32, type: !428)
!1861 = !DILocalVariable(name: "mat", arg: 3, scope: !1857, file: !425, line: 32, type: !49)
!1862 = !DILocalVariable(name: "acc", arg: 4, scope: !1857, file: !425, line: 32, type: !5)
!1863 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1857, file: !425, line: 33, type: !343)
!1864 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1857, file: !425, line: 33, type: !343)
!1865 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1857, file: !425, line: 33, type: !343)
!1866 = !DILocalVariable(name: "triangular", arg: 8, scope: !1857, file: !425, line: 33, type: !343)
!1867 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1857, file: !425, line: 34, type: !45)
!1868 = !DILocalVariable(name: "r", scope: !1869, file: !425, line: 35, type: !45)
!1869 = distinct !DILexicalBlock(scope: !1857, file: !425, line: 35, column: 5)
!1870 = !DILocation(line: 0, scope: !1869)
!1871 = !DILocation(line: 35, column: 10, scope: !1869)
!1872 = !DILocation(line: 34, column: 9, scope: !1857)
!1873 = !DILocation(line: 35, scope: !1869)
!1874 = !DILocation(line: 35, column: 23, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1869, file: !425, line: 35, column: 5)
!1876 = !DILocation(line: 35, column: 5, scope: !1869)
!1877 = !DILocation(line: 36, column: 9, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !425, line: 36, column: 9)
!1879 = distinct !DILexicalBlock(scope: !1875, file: !425, line: 35, column: 43)
!1880 = !DILocation(line: 36, scope: !1878)
!1881 = !DILocalVariable(name: "c", scope: !1878, file: !425, line: 36, type: !45)
!1882 = !DILocation(line: 0, scope: !1878)
!1883 = !DILocation(line: 36, column: 40, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1878, file: !425, line: 36, column: 9)
!1885 = !DILocation(line: 37, column: 13, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !425, line: 37, column: 13)
!1887 = distinct !DILexicalBlock(scope: !1884, file: !425, line: 36, column: 60)
!1888 = !DILocation(line: 37, scope: !1886)
!1889 = !DILocalVariable(name: "k", scope: !1886, file: !425, line: 37, type: !45)
!1890 = !DILocation(line: 0, scope: !1886)
!1891 = !DILocation(line: 37, column: 31, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1886, file: !425, line: 37, column: 13)
!1893 = !DILocation(line: 38, column: 51, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1892, file: !425, line: 37, column: 51)
!1895 = !DILocation(line: 38, column: 94, scope: !1894)
!1896 = !DILocation(line: 38, column: 88, scope: !1894)
!1897 = !DILocation(line: 38, column: 132, scope: !1894)
!1898 = !DILocation(line: 38, column: 118, scope: !1894)
!1899 = !DILocation(line: 38, column: 17, scope: !1894)
!1900 = !DILocation(line: 37, column: 45, scope: !1892)
!1901 = !DILocation(line: 37, column: 13, scope: !1892)
!1902 = distinct !{!1902, !1885, !1903, !244}
!1903 = !DILocation(line: 39, column: 13, scope: !1886)
!1904 = !DILocation(line: 40, column: 33, scope: !1887)
!1905 = !DILocation(line: 36, column: 56, scope: !1884)
!1906 = !DILocation(line: 36, column: 9, scope: !1884)
!1907 = distinct !{!1907, !1877, !1908, !244}
!1908 = !DILocation(line: 41, column: 9, scope: !1878)
!1909 = !DILocation(line: 35, column: 39, scope: !1875)
!1910 = !DILocation(line: 35, column: 5, scope: !1875)
!1911 = distinct !{!1911, !1876, !1912, !244}
!1912 = !DILocation(line: 42, column: 5, scope: !1869)
!1913 = !DILocation(line: 43, column: 1, scope: !1857)
!1914 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_sign", scope: !25, file: !25, line: 501, type: !800, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1915 = !DILocalVariable(name: "p", arg: 1, scope: !1914, file: !25, line: 501, type: !278)
!1916 = !DILocation(line: 0, scope: !1914)
!1917 = !DILocalVariable(name: "sm", arg: 2, scope: !1914, file: !25, line: 501, type: !18)
!1918 = !DILocalVariable(name: "smlen", arg: 3, scope: !1914, file: !25, line: 502, type: !802)
!1919 = !DILocalVariable(name: "m", arg: 4, scope: !1914, file: !25, line: 502, type: !49)
!1920 = !DILocalVariable(name: "mlen", arg: 5, scope: !1914, file: !25, line: 503, type: !15)
!1921 = !DILocalVariable(name: "csk", arg: 6, scope: !1914, file: !25, line: 503, type: !49)
!1922 = !DILocalVariable(name: "ret", scope: !1914, file: !25, line: 504, type: !45)
!1923 = !DILocalVariable(name: "param_sig_bytes", scope: !1914, file: !25, line: 505, type: !343)
!1924 = !DILocation(line: 507, column: 16, scope: !1914)
!1925 = !DILocation(line: 507, column: 5, scope: !1914)
!1926 = !DILocation(line: 508, column: 50, scope: !1914)
!1927 = !DILocalVariable(name: "siglen", scope: !1914, file: !25, line: 506, type: !15)
!1928 = !DILocation(line: 508, column: 11, scope: !1914)
!1929 = !DILocation(line: 509, column: 24, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1914, file: !25, line: 509, column: 9)
!1931 = !DILocation(line: 510, column: 23, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1930, file: !25, line: 509, column: 62)
!1933 = !DILocation(line: 510, column: 30, scope: !1932)
!1934 = !DILocation(line: 510, column: 9, scope: !1932)
!1935 = !DILocation(line: 511, column: 9, scope: !1932)
!1936 = !DILocation(line: 514, column: 14, scope: !1914)
!1937 = !DILocation(line: 514, column: 21, scope: !1914)
!1938 = !DILocation(line: 514, column: 12, scope: !1914)
!1939 = !DILocation(line: 514, column: 5, scope: !1914)
!1940 = !DILabel(scope: !1914, name: "err", file: !25, line: 515)
!1941 = !DILocation(line: 515, column: 1, scope: !1914)
!1942 = !DILocation(line: 516, column: 5, scope: !1914)
!1943 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_open", scope: !25, file: !25, line: 519, type: !800, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1944 = !DILocalVariable(name: "p", arg: 1, scope: !1943, file: !25, line: 519, type: !278)
!1945 = !DILocation(line: 0, scope: !1943)
!1946 = !DILocalVariable(name: "m", arg: 2, scope: !1943, file: !25, line: 519, type: !18)
!1947 = !DILocalVariable(name: "mlen", arg: 3, scope: !1943, file: !25, line: 520, type: !802)
!1948 = !DILocalVariable(name: "sm", arg: 4, scope: !1943, file: !25, line: 520, type: !49)
!1949 = !DILocalVariable(name: "smlen", arg: 5, scope: !1943, file: !25, line: 521, type: !15)
!1950 = !DILocalVariable(name: "pk", arg: 6, scope: !1943, file: !25, line: 521, type: !49)
!1951 = !DILocalVariable(name: "param_sig_bytes", scope: !1943, file: !25, line: 522, type: !343)
!1952 = !DILocation(line: 523, column: 15, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1943, file: !25, line: 523, column: 9)
!1954 = !DILocation(line: 526, column: 36, scope: !1943)
!1955 = !DILocation(line: 526, column: 61, scope: !1943)
!1956 = !DILocation(line: 526, column: 18, scope: !1943)
!1957 = !DILocalVariable(name: "result", scope: !1943, file: !25, line: 526, type: !45)
!1958 = !DILocation(line: 529, column: 16, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1943, file: !25, line: 529, column: 9)
!1960 = !DILocation(line: 530, column: 23, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1959, file: !25, line: 529, column: 28)
!1962 = !DILocation(line: 530, column: 15, scope: !1961)
!1963 = !DILocation(line: 531, column: 23, scope: !1961)
!1964 = !DILocation(line: 531, column: 9, scope: !1961)
!1965 = !DILocation(line: 532, column: 5, scope: !1961)
!1966 = !DILocation(line: 535, column: 1, scope: !1943)
!1967 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_verify", scope: !25, file: !25, line: 616, type: !1968, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!45, !278, !49, !15, !49, !49}
!1970 = !DILocalVariable(name: "p", arg: 1, scope: !1967, file: !25, line: 616, type: !278)
!1971 = !DILocation(line: 0, scope: !1967)
!1972 = !DILocalVariable(name: "m", arg: 2, scope: !1967, file: !25, line: 616, type: !49)
!1973 = !DILocalVariable(name: "mlen", arg: 3, scope: !1967, file: !25, line: 617, type: !15)
!1974 = !DILocalVariable(name: "sig", arg: 4, scope: !1967, file: !25, line: 617, type: !49)
!1975 = !DILocalVariable(name: "cpk", arg: 5, scope: !1967, file: !25, line: 618, type: !49)
!1976 = !DILocalVariable(name: "tEnc", scope: !1967, file: !25, line: 619, type: !112)
!1977 = !DILocation(line: 619, column: 19, scope: !1967)
!1978 = !DILocalVariable(name: "t", scope: !1967, file: !25, line: 620, type: !814)
!1979 = !DILocation(line: 620, column: 19, scope: !1967)
!1980 = !DILocalVariable(name: "y", scope: !1967, file: !25, line: 621, type: !1981)
!1981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1024, elements: !1982)
!1982 = !{!1983}
!1983 = !DISubrange(count: 128)
!1984 = !DILocation(line: 621, column: 19, scope: !1967)
!1985 = !DILocalVariable(name: "s", scope: !1967, file: !25, line: 622, type: !839)
!1986 = !DILocation(line: 622, column: 19, scope: !1967)
!1987 = !DILocalVariable(name: "pk", scope: !1967, file: !25, line: 623, type: !180)
!1988 = !DILocation(line: 623, column: 14, scope: !1967)
!1989 = !DILocalVariable(name: "tmp", scope: !1967, file: !25, line: 624, type: !1990)
!1990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 448, elements: !1991)
!1991 = !{!1992}
!1992 = !DISubrange(count: 56)
!1993 = !DILocation(line: 624, column: 19, scope: !1967)
!1994 = !DILocalVariable(name: "param_m", scope: !1967, file: !25, line: 626, type: !343)
!1995 = !DILocalVariable(name: "param_n", scope: !1967, file: !25, line: 627, type: !343)
!1996 = !DILocalVariable(name: "param_k", scope: !1967, file: !25, line: 628, type: !343)
!1997 = !DILocalVariable(name: "param_m_bytes", scope: !1967, file: !25, line: 629, type: !343)
!1998 = !DILocalVariable(name: "param_sig_bytes", scope: !1967, file: !25, line: 630, type: !343)
!1999 = !DILocalVariable(name: "param_digest_bytes", scope: !1967, file: !25, line: 631, type: !343)
!2000 = !DILocalVariable(name: "param_salt_bytes", scope: !1967, file: !25, line: 632, type: !343)
!2001 = !DILocation(line: 634, column: 15, scope: !1967)
!2002 = !DILocalVariable(name: "ret", scope: !1967, file: !25, line: 634, type: !45)
!2003 = !DILocalVariable(name: "P1", scope: !1967, file: !25, line: 639, type: !5)
!2004 = !DILocation(line: 640, column: 23, scope: !1967)
!2005 = !DILocalVariable(name: "P2", scope: !1967, file: !25, line: 640, type: !5)
!2006 = !DILocation(line: 641, column: 23, scope: !1967)
!2007 = !DILocalVariable(name: "P3", scope: !1967, file: !25, line: 641, type: !5)
!2008 = !DILocation(line: 656, column: 5, scope: !1967)
!2009 = !DILocation(line: 659, column: 16, scope: !1967)
!2010 = !DILocation(line: 659, column: 60, scope: !1967)
!2011 = !DILocation(line: 659, column: 5, scope: !1967)
!2012 = !DILocation(line: 661, column: 5, scope: !1967)
!2013 = !DILocation(line: 662, column: 5, scope: !1967)
!2014 = !DILocation(line: 665, column: 5, scope: !1967)
!2015 = !DILocation(line: 667, column: 5, scope: !1967)
!2016 = !DILocation(line: 669, column: 9, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1967, file: !25, line: 669, column: 9)
!2018 = !DILocation(line: 669, column: 31, scope: !2017)
!2019 = !DILocation(line: 673, column: 1, scope: !1967)
!2020 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_expand_pk", scope: !25, file: !25, line: 607, type: !703, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2021 = !DILocalVariable(name: "p", arg: 1, scope: !2020, file: !25, line: 607, type: !278)
!2022 = !DILocation(line: 0, scope: !2020)
!2023 = !DILocalVariable(name: "cpk", arg: 2, scope: !2020, file: !25, line: 607, type: !49)
!2024 = !DILocalVariable(name: "pk", arg: 3, scope: !2020, file: !25, line: 608, type: !5)
!2025 = !DILocation(line: 609, column: 5, scope: !2020)
!2026 = !DILocation(line: 611, column: 23, scope: !2020)
!2027 = !DILocation(line: 611, column: 72, scope: !2020)
!2028 = !DILocation(line: 611, column: 5, scope: !2020)
!2029 = !DILocation(line: 613, column: 5, scope: !2020)
!2030 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 288, type: !2031, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{null, !278, !49, !428, !428, !428, !18}
!2033 = !DILocalVariable(name: "p", arg: 1, scope: !2030, file: !25, line: 288, type: !278)
!2034 = !DILocation(line: 0, scope: !2030)
!2035 = !DILocalVariable(name: "s", arg: 2, scope: !2030, file: !25, line: 288, type: !49)
!2036 = !DILocalVariable(name: "P1", arg: 3, scope: !2030, file: !25, line: 288, type: !428)
!2037 = !DILocalVariable(name: "P2", arg: 4, scope: !2030, file: !25, line: 288, type: !428)
!2038 = !DILocalVariable(name: "P3", arg: 5, scope: !2030, file: !25, line: 288, type: !428)
!2039 = !DILocalVariable(name: "eval", arg: 6, scope: !2030, file: !25, line: 288, type: !18)
!2040 = !DILocalVariable(name: "SPS", scope: !2030, file: !25, line: 289, type: !2041)
!2041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 4096, elements: !815)
!2042 = !DILocation(line: 289, column: 14, scope: !2030)
!2043 = !DILocation(line: 291, column: 5, scope: !2030)
!2044 = !DILocalVariable(name: "zero", scope: !2030, file: !25, line: 292, type: !814)
!2045 = !DILocation(line: 292, column: 19, scope: !2030)
!2046 = !DILocation(line: 293, column: 5, scope: !2030)
!2047 = !DILocation(line: 294, column: 1, scope: !2030)
!2048 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !425, file: !425, line: 277, type: !2049, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{null, !278, !428, !428, !428, !49, !5}
!2051 = !DILocalVariable(name: "p", arg: 1, scope: !2048, file: !425, line: 277, type: !278)
!2052 = !DILocation(line: 0, scope: !2048)
!2053 = !DILocalVariable(name: "P1", arg: 2, scope: !2048, file: !425, line: 277, type: !428)
!2054 = !DILocalVariable(name: "P2", arg: 3, scope: !2048, file: !425, line: 277, type: !428)
!2055 = !DILocalVariable(name: "P3", arg: 4, scope: !2048, file: !425, line: 277, type: !428)
!2056 = !DILocalVariable(name: "s", arg: 5, scope: !2048, file: !425, line: 277, type: !49)
!2057 = !DILocalVariable(name: "SPS", arg: 6, scope: !2048, file: !425, line: 278, type: !5)
!2058 = !DILocalVariable(name: "PS", scope: !2048, file: !425, line: 286, type: !2059)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 82944, elements: !2060)
!2060 = !{!2061}
!2061 = !DISubrange(count: 1296)
!2062 = !DILocation(line: 286, column: 14, scope: !2048)
!2063 = !DILocation(line: 287, column: 5, scope: !2048)
!2064 = !DILocation(line: 290, column: 5, scope: !2048)
!2065 = !DILocation(line: 292, column: 1, scope: !2048)
!2066 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !425, file: !425, line: 151, type: !2067, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{null, !428, !428, !428, !49, !343, !343, !343, !343, !5}
!2069 = !DILocalVariable(name: "P1", arg: 1, scope: !2066, file: !425, line: 151, type: !428)
!2070 = !DILocation(line: 0, scope: !2066)
!2071 = !DILocalVariable(name: "P2", arg: 2, scope: !2066, file: !425, line: 151, type: !428)
!2072 = !DILocalVariable(name: "P3", arg: 3, scope: !2066, file: !425, line: 151, type: !428)
!2073 = !DILocalVariable(name: "S", arg: 4, scope: !2066, file: !425, line: 151, type: !49)
!2074 = !DILocalVariable(name: "m", arg: 5, scope: !2066, file: !425, line: 152, type: !343)
!2075 = !DILocalVariable(name: "v", arg: 6, scope: !2066, file: !425, line: 152, type: !343)
!2076 = !DILocalVariable(name: "o", arg: 7, scope: !2066, file: !425, line: 152, type: !343)
!2077 = !DILocalVariable(name: "k", arg: 8, scope: !2066, file: !425, line: 152, type: !343)
!2078 = !DILocalVariable(name: "PS", arg: 9, scope: !2066, file: !425, line: 152, type: !5)
!2079 = !DILocalVariable(name: "n", scope: !2066, file: !425, line: 154, type: !343)
!2080 = !DILocalVariable(name: "m_vec_limbs", scope: !2066, file: !425, line: 155, type: !343)
!2081 = !DILocalVariable(name: "accumulator", scope: !2066, file: !425, line: 157, type: !2082)
!2082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1327104, elements: !2083)
!2083 = !{!2084}
!2084 = !DISubrange(count: 20736)
!2085 = !DILocation(line: 157, column: 14, scope: !2066)
!2086 = !DILocalVariable(name: "P1_used", scope: !2066, file: !425, line: 158, type: !45)
!2087 = !DILocalVariable(name: "row", scope: !2088, file: !425, line: 159, type: !45)
!2088 = distinct !DILexicalBlock(scope: !2066, file: !425, line: 159, column: 5)
!2089 = !DILocation(line: 0, scope: !2088)
!2090 = !DILocation(line: 159, column: 10, scope: !2088)
!2091 = !DILocation(line: 158, column: 9, scope: !2066)
!2092 = !DILocation(line: 159, scope: !2088)
!2093 = !DILocation(line: 159, column: 27, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2088, file: !425, line: 159, column: 5)
!2095 = !DILocation(line: 159, column: 5, scope: !2088)
!2096 = !DILocation(line: 160, column: 9, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !425, line: 160, column: 9)
!2098 = distinct !DILexicalBlock(scope: !2094, file: !425, line: 159, column: 39)
!2099 = !DILocation(line: 175, column: 5, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2066, file: !425, line: 175, column: 5)
!2101 = !DILocation(line: 160, scope: !2097)
!2102 = !DILocalVariable(name: "j", scope: !2097, file: !425, line: 160, type: !45)
!2103 = !DILocation(line: 0, scope: !2097)
!2104 = !DILocation(line: 160, column: 29, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2097, file: !425, line: 160, column: 9)
!2106 = !DILocation(line: 167, column: 9, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2098, file: !425, line: 167, column: 9)
!2108 = !DILocation(line: 161, column: 13, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !425, line: 161, column: 13)
!2110 = distinct !DILexicalBlock(scope: !2105, file: !425, line: 160, column: 39)
!2111 = !DILocation(line: 161, scope: !2109)
!2112 = !DILocalVariable(name: "col", scope: !2109, file: !425, line: 161, type: !45)
!2113 = !DILocation(line: 0, scope: !2109)
!2114 = !DILocation(line: 161, column: 35, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2109, file: !425, line: 161, column: 13)
!2116 = !DILocation(line: 162, column: 43, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2115, file: !425, line: 161, column: 47)
!2118 = !DILocation(line: 162, column: 102, scope: !2117)
!2119 = !DILocation(line: 162, column: 115, scope: !2117)
!2120 = !DILocation(line: 162, column: 109, scope: !2117)
!2121 = !DILocation(line: 162, column: 107, scope: !2117)
!2122 = !DILocation(line: 162, column: 82, scope: !2117)
!2123 = !DILocation(line: 162, column: 17, scope: !2117)
!2124 = !DILocation(line: 161, column: 43, scope: !2115)
!2125 = !DILocation(line: 161, column: 13, scope: !2115)
!2126 = distinct !{!2126, !2108, !2127, !244}
!2127 = !DILocation(line: 163, column: 13, scope: !2109)
!2128 = !DILocation(line: 164, column: 21, scope: !2110)
!2129 = !DILocation(line: 160, column: 35, scope: !2105)
!2130 = !DILocation(line: 160, column: 9, scope: !2105)
!2131 = distinct !{!2131, !2096, !2132, !244}
!2132 = !DILocation(line: 165, column: 9, scope: !2097)
!2133 = !DILocation(line: 167, scope: !2107)
!2134 = !DILocalVariable(name: "j", scope: !2107, file: !425, line: 167, type: !45)
!2135 = !DILocation(line: 0, scope: !2107)
!2136 = !DILocation(line: 167, column: 27, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2107, file: !425, line: 167, column: 9)
!2138 = !DILocation(line: 168, column: 13, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !425, line: 168, column: 13)
!2140 = distinct !DILexicalBlock(scope: !2137, file: !425, line: 167, column: 37)
!2141 = !DILocation(line: 168, scope: !2139)
!2142 = !DILocalVariable(name: "col", scope: !2139, file: !425, line: 168, type: !45)
!2143 = !DILocation(line: 0, scope: !2139)
!2144 = !DILocation(line: 168, column: 35, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2139, file: !425, line: 168, column: 13)
!2146 = !DILocation(line: 169, column: 50, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2145, file: !425, line: 168, column: 47)
!2148 = !DILocation(line: 169, column: 54, scope: !2147)
!2149 = !DILocation(line: 169, column: 43, scope: !2147)
!2150 = !DILocation(line: 169, column: 104, scope: !2147)
!2151 = !DILocation(line: 169, column: 118, scope: !2147)
!2152 = !DILocation(line: 169, column: 111, scope: !2147)
!2153 = !DILocation(line: 169, column: 109, scope: !2147)
!2154 = !DILocation(line: 169, column: 84, scope: !2147)
!2155 = !DILocation(line: 169, column: 17, scope: !2147)
!2156 = !DILocation(line: 168, column: 43, scope: !2145)
!2157 = !DILocation(line: 168, column: 13, scope: !2145)
!2158 = distinct !{!2158, !2138, !2159, !244}
!2159 = !DILocation(line: 170, column: 13, scope: !2139)
!2160 = !DILocation(line: 167, column: 33, scope: !2137)
!2161 = !DILocation(line: 167, column: 9, scope: !2137)
!2162 = distinct !{!2162, !2106, !2163, !244}
!2163 = !DILocation(line: 171, column: 9, scope: !2107)
!2164 = !DILocation(line: 159, column: 35, scope: !2094)
!2165 = !DILocation(line: 159, column: 5, scope: !2094)
!2166 = distinct !{!2166, !2095, !2167, !244}
!2167 = !DILocation(line: 172, column: 5, scope: !2088)
!2168 = !DILocation(line: 174, column: 9, scope: !2066)
!2169 = !DILocation(line: 175, scope: !2100)
!2170 = !DILocalVariable(name: "row", scope: !2100, file: !425, line: 175, type: !45)
!2171 = !DILocation(line: 0, scope: !2100)
!2172 = !DILocalVariable(name: "P3_used", scope: !2066, file: !425, line: 174, type: !45)
!2173 = !DILocation(line: 175, column: 27, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2100, file: !425, line: 175, column: 5)
!2175 = !DILocation(line: 176, column: 9, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !425, line: 176, column: 9)
!2177 = distinct !DILexicalBlock(scope: !2174, file: !425, line: 175, column: 39)
!2178 = !DILocation(line: 186, column: 5, scope: !2066)
!2179 = !DILocation(line: 176, scope: !2176)
!2180 = !DILocalVariable(name: "j", scope: !2176, file: !425, line: 176, type: !45)
!2181 = !DILocation(line: 0, scope: !2176)
!2182 = !DILocation(line: 176, column: 29, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2176, file: !425, line: 176, column: 9)
!2184 = !DILocation(line: 177, column: 13, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !425, line: 177, column: 13)
!2186 = distinct !DILexicalBlock(scope: !2183, file: !425, line: 176, column: 39)
!2187 = !DILocation(line: 177, scope: !2185)
!2188 = !DILocalVariable(name: "col", scope: !2185, file: !425, line: 177, type: !45)
!2189 = !DILocation(line: 0, scope: !2185)
!2190 = !DILocation(line: 177, column: 35, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2185, file: !425, line: 177, column: 13)
!2192 = !DILocation(line: 178, column: 43, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2191, file: !425, line: 177, column: 47)
!2194 = !DILocation(line: 178, column: 100, scope: !2193)
!2195 = !DILocation(line: 178, column: 113, scope: !2193)
!2196 = !DILocation(line: 178, column: 107, scope: !2193)
!2197 = !DILocation(line: 178, column: 105, scope: !2193)
!2198 = !DILocation(line: 178, column: 80, scope: !2193)
!2199 = !DILocation(line: 178, column: 17, scope: !2193)
!2200 = !DILocation(line: 177, column: 43, scope: !2191)
!2201 = !DILocation(line: 177, column: 13, scope: !2191)
!2202 = distinct !{!2202, !2184, !2203, !244}
!2203 = !DILocation(line: 179, column: 13, scope: !2185)
!2204 = !DILocation(line: 180, column: 21, scope: !2186)
!2205 = !DILocation(line: 176, column: 35, scope: !2183)
!2206 = !DILocation(line: 176, column: 9, scope: !2183)
!2207 = distinct !{!2207, !2175, !2208, !244}
!2208 = !DILocation(line: 181, column: 9, scope: !2176)
!2209 = !DILocation(line: 175, column: 35, scope: !2174)
!2210 = !DILocation(line: 175, column: 5, scope: !2174)
!2211 = distinct !{!2211, !2099, !2212, !244}
!2212 = !DILocation(line: 182, column: 5, scope: !2100)
!2213 = !DILocalVariable(name: "i", scope: !2066, file: !425, line: 185, type: !45)
!2214 = !DILocation(line: 186, column: 14, scope: !2066)
!2215 = !DILocation(line: 187, column: 54, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2066, file: !425, line: 186, column: 23)
!2217 = !DILocation(line: 187, column: 81, scope: !2216)
!2218 = !DILocation(line: 187, column: 9, scope: !2216)
!2219 = !DILocation(line: 188, column: 10, scope: !2216)
!2220 = distinct !{!2220, !2178, !2221, !244}
!2221 = !DILocation(line: 189, column: 5, scope: !2066)
!2222 = !DILocation(line: 191, column: 1, scope: !2066)
!2223 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !425, file: !425, line: 195, type: !2224, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{null, !428, !49, !45, !45, !45, !5}
!2226 = !DILocalVariable(name: "PS", arg: 1, scope: !2223, file: !425, line: 195, type: !428)
!2227 = !DILocation(line: 0, scope: !2223)
!2228 = !DILocalVariable(name: "S", arg: 2, scope: !2223, file: !425, line: 195, type: !49)
!2229 = !DILocalVariable(name: "m", arg: 3, scope: !2223, file: !425, line: 195, type: !45)
!2230 = !DILocalVariable(name: "k", arg: 4, scope: !2223, file: !425, line: 195, type: !45)
!2231 = !DILocalVariable(name: "n", arg: 5, scope: !2223, file: !425, line: 195, type: !45)
!2232 = !DILocalVariable(name: "SPS", arg: 6, scope: !2223, file: !425, line: 195, type: !5)
!2233 = !DILocalVariable(name: "accumulator", scope: !2223, file: !425, line: 196, type: !1003)
!2234 = !DILocation(line: 196, column: 14, scope: !2223)
!2235 = !DILocalVariable(name: "m_vec_limbs", scope: !2223, file: !425, line: 197, type: !343)
!2236 = !DILocalVariable(name: "row", scope: !2237, file: !425, line: 198, type: !45)
!2237 = distinct !DILexicalBlock(scope: !2223, file: !425, line: 198, column: 5)
!2238 = !DILocation(line: 0, scope: !2237)
!2239 = !DILocation(line: 198, column: 10, scope: !2237)
!2240 = !DILocation(line: 198, scope: !2237)
!2241 = !DILocation(line: 198, column: 27, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2237, file: !425, line: 198, column: 5)
!2243 = !DILocation(line: 198, column: 5, scope: !2237)
!2244 = !DILocation(line: 199, column: 9, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !425, line: 199, column: 9)
!2246 = distinct !DILexicalBlock(scope: !2242, file: !425, line: 198, column: 39)
!2247 = !DILocation(line: 208, column: 5, scope: !2223)
!2248 = !DILocation(line: 199, scope: !2245)
!2249 = !DILocalVariable(name: "j", scope: !2245, file: !425, line: 199, type: !45)
!2250 = !DILocation(line: 0, scope: !2245)
!2251 = !DILocation(line: 199, column: 27, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2245, file: !425, line: 199, column: 9)
!2253 = !DILocation(line: 200, column: 13, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !425, line: 200, column: 13)
!2255 = distinct !DILexicalBlock(scope: !2252, file: !425, line: 199, column: 37)
!2256 = !DILocation(line: 200, scope: !2254)
!2257 = !DILocalVariable(name: "col", scope: !2254, file: !425, line: 200, type: !45)
!2258 = !DILocation(line: 0, scope: !2254)
!2259 = !DILocation(line: 200, column: 35, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2254, file: !425, line: 200, column: 13)
!2261 = !DILocation(line: 201, column: 63, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2260, file: !425, line: 200, column: 50)
!2263 = !DILocation(line: 201, column: 47, scope: !2262)
!2264 = !DILocation(line: 201, column: 110, scope: !2262)
!2265 = !DILocation(line: 201, column: 123, scope: !2262)
!2266 = !DILocation(line: 201, column: 117, scope: !2262)
!2267 = !DILocation(line: 201, column: 115, scope: !2262)
!2268 = !DILocation(line: 201, column: 90, scope: !2262)
!2269 = !DILocation(line: 201, column: 21, scope: !2262)
!2270 = !DILocation(line: 200, column: 44, scope: !2260)
!2271 = !DILocation(line: 200, column: 13, scope: !2260)
!2272 = distinct !{!2272, !2253, !2273, !244}
!2273 = !DILocation(line: 202, column: 13, scope: !2254)
!2274 = !DILocation(line: 199, column: 33, scope: !2252)
!2275 = !DILocation(line: 199, column: 9, scope: !2252)
!2276 = distinct !{!2276, !2244, !2277, !244}
!2277 = !DILocation(line: 203, column: 9, scope: !2245)
!2278 = !DILocation(line: 198, column: 35, scope: !2242)
!2279 = !DILocation(line: 198, column: 5, scope: !2242)
!2280 = distinct !{!2280, !2243, !2281, !244}
!2281 = !DILocation(line: 204, column: 5, scope: !2237)
!2282 = !DILocalVariable(name: "i", scope: !2223, file: !425, line: 207, type: !45)
!2283 = !DILocation(line: 208, column: 14, scope: !2223)
!2284 = !DILocation(line: 209, column: 54, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2223, file: !425, line: 208, column: 21)
!2286 = !DILocation(line: 209, column: 82, scope: !2285)
!2287 = !DILocation(line: 209, column: 9, scope: !2285)
!2288 = !DILocation(line: 210, column: 10, scope: !2285)
!2289 = distinct !{!2289, !2247, !2290, !244}
!2290 = !DILocation(line: 211, column: 5, scope: !2223)
!2291 = !DILocation(line: 212, column: 1, scope: !2223)
!2292 = distinct !DISubprogram(name: "m_vec_add", scope: !539, file: !539, line: 22, type: !2293, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{null, !45, !428, !5}
!2295 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2292, file: !539, line: 22, type: !45)
!2296 = !DILocation(line: 0, scope: !2292)
!2297 = !DILocalVariable(name: "in", arg: 2, scope: !2292, file: !539, line: 22, type: !428)
!2298 = !DILocalVariable(name: "acc", arg: 3, scope: !2292, file: !539, line: 22, type: !5)
!2299 = !DILocalVariable(name: "i", scope: !2300, file: !539, line: 24, type: !15)
!2300 = distinct !DILexicalBlock(scope: !2292, file: !539, line: 24, column: 5)
!2301 = !DILocation(line: 0, scope: !2300)
!2302 = !DILocation(line: 24, column: 10, scope: !2300)
!2303 = !DILocation(line: 24, scope: !2300)
!2304 = !DILocation(line: 24, column: 26, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2300, file: !539, line: 24, column: 5)
!2306 = !DILocation(line: 24, column: 5, scope: !2300)
!2307 = !DILocation(line: 26, column: 19, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2305, file: !539, line: 25, column: 5)
!2309 = !DILocation(line: 26, column: 9, scope: !2308)
!2310 = !DILocation(line: 26, column: 16, scope: !2308)
!2311 = !DILocation(line: 24, column: 46, scope: !2305)
!2312 = !DILocation(line: 24, column: 5, scope: !2305)
!2313 = distinct !{!2313, !2306, !2314, !244}
!2314 = !DILocation(line: 27, column: 5, scope: !2300)
!2315 = !DILocation(line: 28, column: 1, scope: !2292)
!2316 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !539, file: !539, line: 66, type: !2317, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{null, !45, !5, !5}
!2319 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2316, file: !539, line: 66, type: !45)
!2320 = !DILocation(line: 0, scope: !2316)
!2321 = !DILocalVariable(name: "bins", arg: 2, scope: !2316, file: !539, line: 66, type: !5)
!2322 = !DILocalVariable(name: "out", arg: 3, scope: !2316, file: !539, line: 66, type: !5)
!2323 = !DILocation(line: 67, column: 44, scope: !2316)
!2324 = !DILocation(line: 67, column: 73, scope: !2316)
!2325 = !DILocation(line: 67, column: 5, scope: !2316)
!2326 = !DILocation(line: 68, column: 40, scope: !2316)
!2327 = !DILocation(line: 68, column: 69, scope: !2316)
!2328 = !DILocation(line: 68, column: 5, scope: !2316)
!2329 = !DILocation(line: 69, column: 44, scope: !2316)
!2330 = !DILocation(line: 69, column: 74, scope: !2316)
!2331 = !DILocation(line: 69, column: 5, scope: !2316)
!2332 = !DILocation(line: 70, column: 40, scope: !2316)
!2333 = !DILocation(line: 70, column: 69, scope: !2316)
!2334 = !DILocation(line: 70, column: 5, scope: !2316)
!2335 = !DILocation(line: 71, column: 44, scope: !2316)
!2336 = !DILocation(line: 71, column: 73, scope: !2316)
!2337 = !DILocation(line: 71, column: 5, scope: !2316)
!2338 = !DILocation(line: 72, column: 40, scope: !2316)
!2339 = !DILocation(line: 72, column: 69, scope: !2316)
!2340 = !DILocation(line: 72, column: 5, scope: !2316)
!2341 = !DILocation(line: 73, column: 44, scope: !2316)
!2342 = !DILocation(line: 73, column: 74, scope: !2316)
!2343 = !DILocation(line: 73, column: 5, scope: !2316)
!2344 = !DILocation(line: 74, column: 40, scope: !2316)
!2345 = !DILocation(line: 74, column: 69, scope: !2316)
!2346 = !DILocation(line: 74, column: 5, scope: !2316)
!2347 = !DILocation(line: 75, column: 44, scope: !2316)
!2348 = !DILocation(line: 75, column: 74, scope: !2316)
!2349 = !DILocation(line: 75, column: 5, scope: !2316)
!2350 = !DILocation(line: 76, column: 40, scope: !2316)
!2351 = !DILocation(line: 76, column: 69, scope: !2316)
!2352 = !DILocation(line: 76, column: 5, scope: !2316)
!2353 = !DILocation(line: 77, column: 44, scope: !2316)
!2354 = !DILocation(line: 77, column: 74, scope: !2316)
!2355 = !DILocation(line: 77, column: 5, scope: !2316)
!2356 = !DILocation(line: 78, column: 40, scope: !2316)
!2357 = !DILocation(line: 78, column: 69, scope: !2316)
!2358 = !DILocation(line: 78, column: 5, scope: !2316)
!2359 = !DILocation(line: 79, column: 44, scope: !2316)
!2360 = !DILocation(line: 79, column: 74, scope: !2316)
!2361 = !DILocation(line: 79, column: 5, scope: !2316)
!2362 = !DILocation(line: 80, column: 40, scope: !2316)
!2363 = !DILocation(line: 80, column: 69, scope: !2316)
!2364 = !DILocation(line: 80, column: 5, scope: !2316)
!2365 = !DILocation(line: 81, column: 35, scope: !2316)
!2366 = !DILocation(line: 81, column: 5, scope: !2316)
!2367 = !DILocation(line: 82, column: 1, scope: !2316)
!2368 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !539, file: !539, line: 56, type: !2293, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2369 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2368, file: !539, line: 56, type: !45)
!2370 = !DILocation(line: 0, scope: !2368)
!2371 = !DILocalVariable(name: "in", arg: 2, scope: !2368, file: !539, line: 56, type: !428)
!2372 = !DILocalVariable(name: "acc", arg: 3, scope: !2368, file: !539, line: 56, type: !5)
!2373 = !DILocalVariable(name: "mask_lsb", scope: !2368, file: !539, line: 58, type: !6)
!2374 = !DILocalVariable(name: "i", scope: !2375, file: !539, line: 59, type: !45)
!2375 = distinct !DILexicalBlock(scope: !2368, file: !539, line: 59, column: 5)
!2376 = !DILocation(line: 0, scope: !2375)
!2377 = !DILocation(line: 59, column: 9, scope: !2375)
!2378 = !DILocation(line: 59, scope: !2375)
!2379 = !DILocation(line: 59, column: 20, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2375, file: !539, line: 59, column: 5)
!2381 = !DILocation(line: 59, column: 5, scope: !2375)
!2382 = !DILocation(line: 60, column: 22, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2380, file: !539, line: 59, column: 43)
!2384 = !DILocation(line: 60, column: 28, scope: !2383)
!2385 = !DILocalVariable(name: "t", scope: !2383, file: !539, line: 60, type: !6)
!2386 = !DILocation(line: 0, scope: !2383)
!2387 = !DILocation(line: 61, column: 32, scope: !2383)
!2388 = !DILocation(line: 61, column: 43, scope: !2383)
!2389 = !DILocation(line: 61, column: 38, scope: !2383)
!2390 = !DILocation(line: 61, column: 9, scope: !2383)
!2391 = !DILocation(line: 61, column: 16, scope: !2383)
!2392 = !DILocation(line: 59, column: 40, scope: !2380)
!2393 = !DILocation(line: 59, column: 5, scope: !2380)
!2394 = distinct !{!2394, !2381, !2395, !244}
!2395 = !DILocation(line: 62, column: 5, scope: !2375)
!2396 = !DILocation(line: 63, column: 1, scope: !2368)
!2397 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !539, file: !539, line: 46, type: !2293, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2398 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2397, file: !539, line: 46, type: !45)
!2399 = !DILocation(line: 0, scope: !2397)
!2400 = !DILocalVariable(name: "in", arg: 2, scope: !2397, file: !539, line: 46, type: !428)
!2401 = !DILocalVariable(name: "acc", arg: 3, scope: !2397, file: !539, line: 46, type: !5)
!2402 = !DILocalVariable(name: "mask_msb", scope: !2397, file: !539, line: 48, type: !6)
!2403 = !DILocalVariable(name: "i", scope: !2404, file: !539, line: 49, type: !45)
!2404 = distinct !DILexicalBlock(scope: !2397, file: !539, line: 49, column: 5)
!2405 = !DILocation(line: 0, scope: !2404)
!2406 = !DILocation(line: 49, column: 9, scope: !2404)
!2407 = !DILocation(line: 49, scope: !2404)
!2408 = !DILocation(line: 49, column: 20, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2404, file: !539, line: 49, column: 5)
!2410 = !DILocation(line: 49, column: 5, scope: !2404)
!2411 = !DILocation(line: 50, column: 22, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2409, file: !539, line: 49, column: 43)
!2413 = !DILocalVariable(name: "t", scope: !2412, file: !539, line: 50, type: !6)
!2414 = !DILocation(line: 0, scope: !2412)
!2415 = !DILocation(line: 51, column: 32, scope: !2412)
!2416 = !DILocation(line: 51, column: 44, scope: !2412)
!2417 = !DILocation(line: 51, column: 50, scope: !2412)
!2418 = !DILocation(line: 51, column: 38, scope: !2412)
!2419 = !DILocation(line: 51, column: 9, scope: !2412)
!2420 = !DILocation(line: 51, column: 16, scope: !2412)
!2421 = !DILocation(line: 49, column: 40, scope: !2409)
!2422 = !DILocation(line: 49, column: 5, scope: !2409)
!2423 = distinct !{!2423, !2410, !2424, !244}
!2424 = !DILocation(line: 52, column: 5, scope: !2404)
!2425 = !DILocation(line: 53, column: 1, scope: !2397)
!2426 = distinct !DISubprogram(name: "m_vec_copy", scope: !539, file: !539, line: 13, type: !2293, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2427 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2426, file: !539, line: 13, type: !45)
!2428 = !DILocation(line: 0, scope: !2426)
!2429 = !DILocalVariable(name: "in", arg: 2, scope: !2426, file: !539, line: 13, type: !428)
!2430 = !DILocalVariable(name: "out", arg: 3, scope: !2426, file: !539, line: 13, type: !5)
!2431 = !DILocalVariable(name: "i", scope: !2432, file: !539, line: 15, type: !15)
!2432 = distinct !DILexicalBlock(scope: !2426, file: !539, line: 15, column: 5)
!2433 = !DILocation(line: 0, scope: !2432)
!2434 = !DILocation(line: 15, column: 10, scope: !2432)
!2435 = !DILocation(line: 15, scope: !2432)
!2436 = !DILocation(line: 15, column: 26, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2432, file: !539, line: 15, column: 5)
!2438 = !DILocation(line: 15, column: 5, scope: !2432)
!2439 = !DILocation(line: 17, column: 18, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2437, file: !539, line: 16, column: 5)
!2441 = !DILocation(line: 17, column: 9, scope: !2440)
!2442 = !DILocation(line: 17, column: 16, scope: !2440)
!2443 = !DILocation(line: 15, column: 46, scope: !2437)
!2444 = !DILocation(line: 15, column: 5, scope: !2437)
!2445 = distinct !{!2445, !2438, !2446, !244}
!2446 = !DILocation(line: 18, column: 5, scope: !2432)
!2447 = !DILocation(line: 19, column: 1, scope: !2426)
!2448 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_m_upper", scope: !58, file: !58, line: 14, type: !2449, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{null, !2451, !428, !5, !45}
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2453)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2454)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2455)
!2455 = !{!2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2454, file: !36, line: 266, baseType: !45, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2454, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2454, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2454, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2454, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2454, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2454, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2454, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2454, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2454, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2454, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2454, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2454, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2454, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2454, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2454, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2454, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2454, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2454, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2454, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2454, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2454, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2454, file: !36, line: 288, baseType: !165, size: 32, offset: 704)
!2479 = !DILocalVariable(name: "p", arg: 1, scope: !2448, file: !58, line: 14, type: !2451)
!2480 = !DILocation(line: 0, scope: !2448)
!2481 = !DILocalVariable(name: "in", arg: 2, scope: !2448, file: !58, line: 14, type: !428)
!2482 = !DILocalVariable(name: "out", arg: 3, scope: !2448, file: !58, line: 14, type: !5)
!2483 = !DILocalVariable(name: "size", arg: 4, scope: !2448, file: !58, line: 14, type: !45)
!2484 = !DILocalVariable(name: "m_vec_limbs", scope: !2448, file: !58, line: 19, type: !343)
!2485 = !DILocalVariable(name: "m_vecs_stored", scope: !2448, file: !58, line: 20, type: !45)
!2486 = !DILocalVariable(name: "r", scope: !2487, file: !58, line: 21, type: !45)
!2487 = distinct !DILexicalBlock(scope: !2448, file: !58, line: 21, column: 5)
!2488 = !DILocation(line: 0, scope: !2487)
!2489 = !DILocation(line: 21, column: 10, scope: !2487)
!2490 = !DILocation(line: 20, column: 9, scope: !2448)
!2491 = !DILocation(line: 21, scope: !2487)
!2492 = !DILocation(line: 21, column: 23, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2487, file: !58, line: 21, column: 5)
!2494 = !DILocation(line: 21, column: 5, scope: !2487)
!2495 = !DILocation(line: 22, column: 9, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !58, line: 22, column: 9)
!2497 = distinct !DILexicalBlock(scope: !2493, file: !58, line: 21, column: 36)
!2498 = !DILocation(line: 22, scope: !2496)
!2499 = !DILocalVariable(name: "c", scope: !2496, file: !58, line: 22, type: !45)
!2500 = !DILocation(line: 0, scope: !2496)
!2501 = !DILocation(line: 22, column: 27, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2496, file: !58, line: 22, column: 9)
!2503 = !DILocation(line: 23, column: 59, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2502, file: !58, line: 22, column: 40)
!2505 = !DILocation(line: 23, column: 66, scope: !2504)
!2506 = !DILocation(line: 23, column: 40, scope: !2504)
!2507 = !DILocation(line: 23, column: 76, scope: !2504)
!2508 = !DILocation(line: 23, column: 13, scope: !2504)
!2509 = !DILocation(line: 24, column: 19, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2504, file: !58, line: 24, column: 17)
!2511 = !DILocation(line: 25, column: 62, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2510, file: !58, line: 24, column: 25)
!2513 = !DILocation(line: 25, column: 69, scope: !2512)
!2514 = !DILocation(line: 25, column: 43, scope: !2512)
!2515 = !DILocation(line: 25, column: 79, scope: !2512)
!2516 = !DILocation(line: 25, column: 17, scope: !2512)
!2517 = !DILocation(line: 26, column: 13, scope: !2512)
!2518 = !DILocation(line: 27, column: 27, scope: !2504)
!2519 = !DILocation(line: 22, column: 36, scope: !2502)
!2520 = !DILocation(line: 22, column: 9, scope: !2502)
!2521 = distinct !{!2521, !2495, !2522, !244}
!2522 = !DILocation(line: 28, column: 9, scope: !2496)
!2523 = !DILocation(line: 21, column: 32, scope: !2493)
!2524 = !DILocation(line: 21, column: 5, scope: !2493)
!2525 = distinct !{!2525, !2494, !2526, !244}
!2526 = !DILocation(line: 29, column: 5, scope: !2487)
!2527 = !DILocation(line: 30, column: 1, scope: !2448)
!2528 = distinct !DISubprogram(name: "m_vec_copy", scope: !539, file: !539, line: 13, type: !2293, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2529 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2528, file: !539, line: 13, type: !45)
!2530 = !DILocation(line: 0, scope: !2528)
!2531 = !DILocalVariable(name: "in", arg: 2, scope: !2528, file: !539, line: 13, type: !428)
!2532 = !DILocalVariable(name: "out", arg: 3, scope: !2528, file: !539, line: 13, type: !5)
!2533 = !DILocalVariable(name: "i", scope: !2534, file: !539, line: 15, type: !15)
!2534 = distinct !DILexicalBlock(scope: !2528, file: !539, line: 15, column: 5)
!2535 = !DILocation(line: 0, scope: !2534)
!2536 = !DILocation(line: 15, column: 10, scope: !2534)
!2537 = !DILocation(line: 15, scope: !2534)
!2538 = !DILocation(line: 15, column: 26, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2534, file: !539, line: 15, column: 5)
!2540 = !DILocation(line: 15, column: 5, scope: !2534)
!2541 = !DILocation(line: 17, column: 18, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2539, file: !539, line: 16, column: 5)
!2543 = !DILocation(line: 17, column: 9, scope: !2542)
!2544 = !DILocation(line: 17, column: 16, scope: !2542)
!2545 = !DILocation(line: 15, column: 46, scope: !2539)
!2546 = !DILocation(line: 15, column: 5, scope: !2539)
!2547 = distinct !{!2547, !2540, !2548, !244}
!2548 = !DILocation(line: 18, column: 5, scope: !2534)
!2549 = !DILocation(line: 19, column: 1, scope: !2528)
!2550 = distinct !DISubprogram(name: "m_vec_add", scope: !539, file: !539, line: 22, type: !2293, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2551 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2550, file: !539, line: 22, type: !45)
!2552 = !DILocation(line: 0, scope: !2550)
!2553 = !DILocalVariable(name: "in", arg: 2, scope: !2550, file: !539, line: 22, type: !428)
!2554 = !DILocalVariable(name: "acc", arg: 3, scope: !2550, file: !539, line: 22, type: !5)
!2555 = !DILocalVariable(name: "i", scope: !2556, file: !539, line: 24, type: !15)
!2556 = distinct !DILexicalBlock(scope: !2550, file: !539, line: 24, column: 5)
!2557 = !DILocation(line: 0, scope: !2556)
!2558 = !DILocation(line: 24, column: 10, scope: !2556)
!2559 = !DILocation(line: 24, scope: !2556)
!2560 = !DILocation(line: 24, column: 26, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2556, file: !539, line: 24, column: 5)
!2562 = !DILocation(line: 24, column: 5, scope: !2556)
!2563 = !DILocation(line: 26, column: 19, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2561, file: !539, line: 25, column: 5)
!2565 = !DILocation(line: 26, column: 9, scope: !2564)
!2566 = !DILocation(line: 26, column: 16, scope: !2564)
!2567 = !DILocation(line: 24, column: 46, scope: !2561)
!2568 = !DILocation(line: 24, column: 5, scope: !2561)
!2569 = distinct !{!2569, !2562, !2570, !244}
!2570 = !DILocation(line: 27, column: 5, scope: !2556)
!2571 = !DILocation(line: 28, column: 1, scope: !2550)
!2572 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2573, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!45, !2451, !18, !49, !49, !18, !45, !45, !45, !45}
!2575 = !DILocalVariable(name: "p", arg: 1, scope: !2572, file: !58, line: 40, type: !2451)
!2576 = !DILocation(line: 0, scope: !2572)
!2577 = !DILocalVariable(name: "A", arg: 2, scope: !2572, file: !58, line: 40, type: !18)
!2578 = !DILocalVariable(name: "y", arg: 3, scope: !2572, file: !58, line: 41, type: !49)
!2579 = !DILocalVariable(name: "r", arg: 4, scope: !2572, file: !58, line: 41, type: !49)
!2580 = !DILocalVariable(name: "x", arg: 5, scope: !2572, file: !58, line: 42, type: !18)
!2581 = !DILocalVariable(name: "k", arg: 6, scope: !2572, file: !58, line: 42, type: !45)
!2582 = !DILocalVariable(name: "o", arg: 7, scope: !2572, file: !58, line: 42, type: !45)
!2583 = !DILocalVariable(name: "m", arg: 8, scope: !2572, file: !58, line: 42, type: !45)
!2584 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2572, file: !58, line: 42, type: !45)
!2585 = !DILocalVariable(name: "i", scope: !2586, file: !58, line: 51, type: !45)
!2586 = distinct !DILexicalBlock(scope: !2572, file: !58, line: 51, column: 5)
!2587 = !DILocation(line: 0, scope: !2586)
!2588 = !DILocation(line: 51, column: 10, scope: !2586)
!2589 = !DILocation(line: 51, scope: !2586)
!2590 = !DILocation(line: 51, column: 23, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2586, file: !58, line: 51, column: 5)
!2592 = !DILocation(line: 51, column: 5, scope: !2586)
!2593 = !DILocation(line: 57, column: 5, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2572, file: !58, line: 57, column: 5)
!2595 = !DILocation(line: 52, column: 16, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2591, file: !58, line: 51, column: 37)
!2597 = !DILocation(line: 52, column: 9, scope: !2596)
!2598 = !DILocation(line: 52, column: 14, scope: !2596)
!2599 = !DILocation(line: 51, column: 33, scope: !2591)
!2600 = !DILocation(line: 51, column: 5, scope: !2591)
!2601 = distinct !{!2601, !2592, !2602, !244}
!2602 = !DILocation(line: 53, column: 5, scope: !2586)
!2603 = !DILocation(line: 57, scope: !2594)
!2604 = !DILocalVariable(name: "i", scope: !2594, file: !58, line: 57, type: !45)
!2605 = !DILocation(line: 0, scope: !2594)
!2606 = !DILocation(line: 57, column: 23, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2594, file: !58, line: 57, column: 5)
!2608 = !DILocation(line: 58, column: 13, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2607, file: !58, line: 57, column: 33)
!2610 = !DILocation(line: 58, column: 26, scope: !2609)
!2611 = !DILocation(line: 58, column: 30, scope: !2609)
!2612 = !DILocation(line: 58, column: 21, scope: !2609)
!2613 = !DILocation(line: 58, column: 9, scope: !2609)
!2614 = !DILocation(line: 58, column: 36, scope: !2609)
!2615 = !DILocation(line: 57, column: 29, scope: !2607)
!2616 = !DILocation(line: 57, column: 5, scope: !2607)
!2617 = distinct !{!2617, !2593, !2618, !244}
!2618 = !DILocation(line: 59, column: 5, scope: !2594)
!2619 = !DILocation(line: 60, column: 25, scope: !2572)
!2620 = !DILocation(line: 60, column: 29, scope: !2572)
!2621 = !DILocation(line: 60, column: 5, scope: !2572)
!2622 = !DILocalVariable(name: "i", scope: !2623, file: !58, line: 63, type: !45)
!2623 = distinct !DILexicalBlock(scope: !2572, file: !58, line: 63, column: 5)
!2624 = !DILocation(line: 0, scope: !2623)
!2625 = !DILocation(line: 63, column: 10, scope: !2623)
!2626 = !DILocation(line: 63, scope: !2623)
!2627 = !DILocation(line: 63, column: 23, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2623, file: !58, line: 63, column: 5)
!2629 = !DILocation(line: 63, column: 5, scope: !2623)
!2630 = !DILocation(line: 64, column: 44, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2628, file: !58, line: 63, column: 33)
!2632 = !DILocation(line: 64, column: 50, scope: !2631)
!2633 = !DILocation(line: 64, column: 38, scope: !2631)
!2634 = !DILocation(line: 64, column: 13, scope: !2631)
!2635 = !DILocation(line: 64, column: 26, scope: !2631)
!2636 = !DILocation(line: 64, column: 30, scope: !2631)
!2637 = !DILocation(line: 64, column: 21, scope: !2631)
!2638 = !DILocation(line: 64, column: 9, scope: !2631)
!2639 = !DILocation(line: 64, column: 36, scope: !2631)
!2640 = !DILocation(line: 63, column: 29, scope: !2628)
!2641 = !DILocation(line: 63, column: 5, scope: !2628)
!2642 = distinct !{!2642, !2629, !2643, !244}
!2643 = !DILocation(line: 65, column: 5, scope: !2623)
!2644 = !DILocation(line: 67, column: 16, scope: !2572)
!2645 = !DILocation(line: 67, column: 20, scope: !2572)
!2646 = !DILocation(line: 67, column: 5, scope: !2572)
!2647 = !DILocalVariable(name: "full_rank", scope: !2572, file: !58, line: 70, type: !14)
!2648 = !DILocalVariable(name: "i", scope: !2649, file: !58, line: 71, type: !45)
!2649 = distinct !DILexicalBlock(scope: !2572, file: !58, line: 71, column: 5)
!2650 = !DILocation(line: 0, scope: !2649)
!2651 = !DILocation(line: 71, column: 10, scope: !2649)
!2652 = !DILocation(line: 71, scope: !2649)
!2653 = !DILocation(line: 71, column: 23, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2649, file: !58, line: 71, column: 5)
!2655 = !DILocation(line: 71, column: 5, scope: !2649)
!2656 = !DILocation(line: 72, column: 27, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2654, file: !58, line: 71, column: 42)
!2658 = !DILocation(line: 72, column: 32, scope: !2657)
!2659 = !DILocation(line: 72, column: 22, scope: !2657)
!2660 = !DILocation(line: 72, column: 19, scope: !2657)
!2661 = !DILocation(line: 71, column: 38, scope: !2654)
!2662 = !DILocation(line: 71, column: 5, scope: !2654)
!2663 = distinct !{!2663, !2655, !2664, !244}
!2664 = !DILocation(line: 73, column: 5, scope: !2649)
!2665 = !DILocation(line: 80, column: 19, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2572, file: !58, line: 80, column: 9)
!2667 = !DILocation(line: 88, column: 5, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2572, file: !58, line: 88, column: 5)
!2669 = distinct !{!2669, !2667, !2670, !244}
!2670 = !DILocation(line: 122, column: 5, scope: !2668)
!2671 = !DILocation(line: 88, scope: !2668)
!2672 = !DILocalVariable(name: "row", scope: !2668, file: !58, line: 88, type: !45)
!2673 = !DILocation(line: 0, scope: !2668)
!2674 = !DILocation(line: 88, column: 31, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2668, file: !58, line: 88, column: 5)
!2676 = !DILocalVariable(name: "finished", scope: !2572, file: !58, line: 46, type: !14)
!2677 = !DILocation(line: 90, column: 27, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2675, file: !58, line: 88, column: 44)
!2679 = !DILocalVariable(name: "col_upper_bound", scope: !2572, file: !58, line: 47, type: !45)
!2680 = !DILocalVariable(name: "col", scope: !2681, file: !58, line: 93, type: !45)
!2681 = distinct !DILexicalBlock(scope: !2678, file: !58, line: 93, column: 9)
!2682 = !DILocation(line: 0, scope: !2681)
!2683 = !DILocation(line: 93, column: 14, scope: !2681)
!2684 = !DILocation(line: 0, scope: !2678)
!2685 = !DILocation(line: 93, scope: !2681)
!2686 = !DILocation(line: 93, column: 33, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2681, file: !58, line: 93, column: 9)
!2688 = !DILocation(line: 93, column: 9, scope: !2681)
!2689 = !DILocation(line: 97, column: 50, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2687, file: !58, line: 93, column: 60)
!2691 = !DILocation(line: 97, column: 44, scope: !2690)
!2692 = !DILocation(line: 97, column: 30, scope: !2690)
!2693 = !DILocation(line: 97, column: 73, scope: !2690)
!2694 = !DILocalVariable(name: "correct_column", scope: !2572, file: !58, line: 48, type: !14)
!2695 = !DILocation(line: 99, column: 63, scope: !2690)
!2696 = !DILocation(line: 99, column: 48, scope: !2690)
!2697 = !DILocation(line: 99, column: 46, scope: !2690)
!2698 = !DILocalVariable(name: "u", scope: !2690, file: !58, line: 99, type: !14)
!2699 = !DILocation(line: 0, scope: !2690)
!2700 = !DILocation(line: 100, column: 13, scope: !2690)
!2701 = !DILocation(line: 100, column: 20, scope: !2690)
!2702 = !DILocalVariable(name: "i", scope: !2703, file: !58, line: 102, type: !45)
!2703 = distinct !DILexicalBlock(scope: !2690, file: !58, line: 102, column: 13)
!2704 = !DILocation(line: 0, scope: !2703)
!2705 = !DILocation(line: 102, column: 18, scope: !2703)
!2706 = !DILocation(line: 102, scope: !2703)
!2707 = !DILocation(line: 102, column: 31, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2703, file: !58, line: 102, column: 13)
!2709 = !DILocation(line: 102, column: 13, scope: !2703)
!2710 = !DILocation(line: 103, column: 53, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2708, file: !58, line: 102, column: 46)
!2712 = !DILocation(line: 103, column: 45, scope: !2711)
!2713 = !DILocation(line: 103, column: 34, scope: !2711)
!2714 = !DILocation(line: 103, column: 95, scope: !2711)
!2715 = !DILocation(line: 103, column: 99, scope: !2711)
!2716 = !DILocation(line: 103, column: 91, scope: !2711)
!2717 = !DILocation(line: 103, column: 80, scope: !2711)
!2718 = !DILocation(line: 103, column: 115, scope: !2711)
!2719 = !DILocation(line: 103, column: 76, scope: !2711)
!2720 = !DILocation(line: 104, column: 49, scope: !2711)
!2721 = !DILocation(line: 104, column: 53, scope: !2711)
!2722 = !DILocation(line: 104, column: 45, scope: !2711)
!2723 = !DILocation(line: 104, column: 34, scope: !2711)
!2724 = !DILocation(line: 104, column: 69, scope: !2711)
!2725 = !DILocation(line: 104, column: 30, scope: !2711)
!2726 = !DILocation(line: 104, column: 95, scope: !2711)
!2727 = !DILocation(line: 104, column: 99, scope: !2711)
!2728 = !DILocation(line: 104, column: 91, scope: !2711)
!2729 = !DILocation(line: 104, column: 80, scope: !2711)
!2730 = !DILocation(line: 104, column: 115, scope: !2711)
!2731 = !DILocation(line: 104, column: 76, scope: !2711)
!2732 = !DILocation(line: 105, column: 49, scope: !2711)
!2733 = !DILocation(line: 105, column: 53, scope: !2711)
!2734 = !DILocation(line: 105, column: 45, scope: !2711)
!2735 = !DILocation(line: 105, column: 34, scope: !2711)
!2736 = !DILocation(line: 105, column: 69, scope: !2711)
!2737 = !DILocation(line: 105, column: 30, scope: !2711)
!2738 = !DILocation(line: 105, column: 95, scope: !2711)
!2739 = !DILocation(line: 105, column: 99, scope: !2711)
!2740 = !DILocation(line: 105, column: 91, scope: !2711)
!2741 = !DILocation(line: 105, column: 80, scope: !2711)
!2742 = !DILocation(line: 105, column: 115, scope: !2711)
!2743 = !DILocation(line: 105, column: 76, scope: !2711)
!2744 = !DILocation(line: 106, column: 49, scope: !2711)
!2745 = !DILocation(line: 106, column: 53, scope: !2711)
!2746 = !DILocation(line: 106, column: 45, scope: !2711)
!2747 = !DILocation(line: 106, column: 34, scope: !2711)
!2748 = !DILocation(line: 106, column: 69, scope: !2711)
!2749 = !DILocation(line: 106, column: 30, scope: !2711)
!2750 = !DILocation(line: 106, column: 95, scope: !2711)
!2751 = !DILocation(line: 106, column: 99, scope: !2711)
!2752 = !DILocation(line: 106, column: 91, scope: !2711)
!2753 = !DILocation(line: 106, column: 80, scope: !2711)
!2754 = !DILocation(line: 106, column: 115, scope: !2711)
!2755 = !DILocation(line: 106, column: 76, scope: !2711)
!2756 = !DILocalVariable(name: "tmp", scope: !2711, file: !58, line: 103, type: !6)
!2757 = !DILocation(line: 0, scope: !2711)
!2758 = !DILocation(line: 108, column: 23, scope: !2711)
!2759 = !DILocation(line: 110, column: 34, scope: !2711)
!2760 = !DILocation(line: 110, column: 17, scope: !2711)
!2761 = !DILocation(line: 110, column: 48, scope: !2711)
!2762 = !DILocation(line: 111, column: 56, scope: !2711)
!2763 = !DILocation(line: 111, column: 34, scope: !2711)
!2764 = !DILocation(line: 111, column: 17, scope: !2711)
!2765 = !DILocation(line: 111, column: 48, scope: !2711)
!2766 = !DILocation(line: 112, column: 56, scope: !2711)
!2767 = !DILocation(line: 112, column: 34, scope: !2711)
!2768 = !DILocation(line: 112, column: 17, scope: !2711)
!2769 = !DILocation(line: 112, column: 48, scope: !2711)
!2770 = !DILocation(line: 113, column: 56, scope: !2711)
!2771 = !DILocation(line: 113, column: 34, scope: !2711)
!2772 = !DILocation(line: 113, column: 17, scope: !2711)
!2773 = !DILocation(line: 113, column: 48, scope: !2711)
!2774 = !DILocation(line: 114, column: 56, scope: !2711)
!2775 = !DILocation(line: 114, column: 34, scope: !2711)
!2776 = !DILocation(line: 114, column: 17, scope: !2711)
!2777 = !DILocation(line: 114, column: 48, scope: !2711)
!2778 = !DILocation(line: 115, column: 56, scope: !2711)
!2779 = !DILocation(line: 115, column: 34, scope: !2711)
!2780 = !DILocation(line: 115, column: 17, scope: !2711)
!2781 = !DILocation(line: 115, column: 48, scope: !2711)
!2782 = !DILocation(line: 116, column: 56, scope: !2711)
!2783 = !DILocation(line: 116, column: 34, scope: !2711)
!2784 = !DILocation(line: 116, column: 17, scope: !2711)
!2785 = !DILocation(line: 116, column: 48, scope: !2711)
!2786 = !DILocation(line: 117, column: 56, scope: !2711)
!2787 = !DILocation(line: 117, column: 34, scope: !2711)
!2788 = !DILocation(line: 117, column: 17, scope: !2711)
!2789 = !DILocation(line: 117, column: 48, scope: !2711)
!2790 = !DILocation(line: 102, column: 40, scope: !2708)
!2791 = !DILocation(line: 102, column: 13, scope: !2708)
!2792 = distinct !{!2792, !2709, !2793, !244}
!2793 = !DILocation(line: 118, column: 13, scope: !2703)
!2794 = !DILocation(line: 120, column: 33, scope: !2690)
!2795 = !DILocation(line: 93, column: 56, scope: !2687)
!2796 = !DILocation(line: 93, column: 9, scope: !2687)
!2797 = distinct !{!2797, !2688, !2798, !244}
!2798 = !DILocation(line: 121, column: 9, scope: !2681)
!2799 = !DILocation(line: 124, column: 1, scope: !2572)
!2800 = distinct !DISubprogram(name: "mat_mul", scope: !595, file: !595, line: 79, type: !1498, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2801 = !DILocalVariable(name: "a", arg: 1, scope: !2800, file: !595, line: 79, type: !49)
!2802 = !DILocation(line: 0, scope: !2800)
!2803 = !DILocalVariable(name: "b", arg: 2, scope: !2800, file: !595, line: 79, type: !49)
!2804 = !DILocalVariable(name: "c", arg: 3, scope: !2800, file: !595, line: 80, type: !18)
!2805 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2800, file: !595, line: 80, type: !45)
!2806 = !DILocalVariable(name: "row_a", arg: 5, scope: !2800, file: !595, line: 80, type: !45)
!2807 = !DILocalVariable(name: "col_b", arg: 6, scope: !2800, file: !595, line: 80, type: !45)
!2808 = !DILocalVariable(name: "i", scope: !2809, file: !595, line: 81, type: !45)
!2809 = distinct !DILexicalBlock(scope: !2800, file: !595, line: 81, column: 5)
!2810 = !DILocation(line: 0, scope: !2809)
!2811 = !DILocation(line: 81, column: 10, scope: !2809)
!2812 = !DILocation(line: 81, scope: !2809)
!2813 = !DILocation(line: 81, column: 23, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2809, file: !595, line: 81, column: 5)
!2815 = !DILocation(line: 81, column: 5, scope: !2809)
!2816 = !DILocation(line: 82, column: 9, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !595, line: 82, column: 9)
!2818 = distinct !DILexicalBlock(scope: !2814, file: !595, line: 81, column: 53)
!2819 = !DILocation(line: 82, scope: !2817)
!2820 = !DILocalVariable(name: "j", scope: !2817, file: !595, line: 82, type: !45)
!2821 = !DILocation(line: 0, scope: !2817)
!2822 = !DILocation(line: 83, column: 18, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !595, line: 82, column: 46)
!2824 = distinct !DILexicalBlock(scope: !2817, file: !595, line: 82, column: 9)
!2825 = !DILocation(line: 83, column: 16, scope: !2823)
!2826 = !DILocation(line: 82, column: 41, scope: !2824)
!2827 = !DILocation(line: 82, column: 9, scope: !2824)
!2828 = distinct !{!2828, !2816, !2829, !244}
!2829 = !DILocation(line: 84, column: 9, scope: !2817)
!2830 = !DILocation(line: 81, column: 32, scope: !2814)
!2831 = !DILocation(line: 81, column: 39, scope: !2814)
!2832 = !DILocation(line: 81, column: 5, scope: !2814)
!2833 = distinct !{!2833, !2815, !2834, !244}
!2834 = !DILocation(line: 85, column: 5, scope: !2809)
!2835 = !DILocation(line: 86, column: 1, scope: !2800)
!2836 = distinct !DISubprogram(name: "sub_f", scope: !595, file: !595, line: 48, type: !1597, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2837 = !DILocalVariable(name: "a", arg: 1, scope: !2836, file: !595, line: 48, type: !14)
!2838 = !DILocation(line: 0, scope: !2836)
!2839 = !DILocalVariable(name: "b", arg: 2, scope: !2836, file: !595, line: 48, type: !14)
!2840 = !DILocation(line: 49, column: 14, scope: !2836)
!2841 = !DILocation(line: 49, column: 5, scope: !2836)
!2842 = distinct !DISubprogram(name: "EF", scope: !2843, file: !2843, line: 60, type: !2844, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2843 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2844 = !DISubroutineType(types: !2845)
!2845 = !{null, !18, !45, !45}
!2846 = !DILocalVariable(name: "A", arg: 1, scope: !2842, file: !2843, line: 60, type: !18)
!2847 = !DILocation(line: 0, scope: !2842)
!2848 = !DILocalVariable(name: "nrows", arg: 2, scope: !2842, file: !2843, line: 60, type: !45)
!2849 = !DILocalVariable(name: "ncols", arg: 3, scope: !2842, file: !2843, line: 60, type: !45)
!2850 = !DILocalVariable(name: "_pivot_row", scope: !2842, file: !2843, line: 62, type: !2851, align: 256)
!2851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 320, elements: !2852)
!2852 = !{!2853}
!2853 = !DISubrange(count: 5)
!2854 = !DILocation(line: 62, column: 27, scope: !2842)
!2855 = !DILocalVariable(name: "_pivot_row2", scope: !2842, file: !2843, line: 63, type: !2851, align: 256)
!2856 = !DILocation(line: 63, column: 27, scope: !2842)
!2857 = !DILocalVariable(name: "packed_A", scope: !2842, file: !2843, line: 64, type: !2858, align: 256)
!2858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 20480, elements: !2859)
!2859 = !{!2860}
!2860 = !DISubrange(count: 320)
!2861 = !DILocation(line: 64, column: 27, scope: !2842)
!2862 = !DILocation(line: 66, column: 26, scope: !2842)
!2863 = !DILocation(line: 66, column: 32, scope: !2842)
!2864 = !DILocalVariable(name: "row_len", scope: !2842, file: !2843, line: 66, type: !45)
!2865 = !DILocalVariable(name: "i", scope: !2866, file: !2843, line: 69, type: !45)
!2866 = distinct !DILexicalBlock(scope: !2842, file: !2843, line: 69, column: 5)
!2867 = !DILocation(line: 0, scope: !2866)
!2868 = !DILocation(line: 69, column: 10, scope: !2866)
!2869 = !DILocation(line: 69, scope: !2866)
!2870 = !DILocation(line: 69, column: 23, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2866, file: !2843, line: 69, column: 5)
!2872 = !DILocation(line: 69, column: 5, scope: !2866)
!2873 = !DILocation(line: 77, column: 5, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2842, file: !2843, line: 77, column: 5)
!2875 = !DILocation(line: 70, column: 29, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2871, file: !2843, line: 69, column: 37)
!2877 = !DILocation(line: 70, column: 25, scope: !2876)
!2878 = !DILocation(line: 70, column: 51, scope: !2876)
!2879 = !DILocation(line: 70, column: 47, scope: !2876)
!2880 = !DILocation(line: 70, column: 9, scope: !2876)
!2881 = !DILocation(line: 69, column: 33, scope: !2871)
!2882 = !DILocation(line: 69, column: 5, scope: !2871)
!2883 = distinct !{!2883, !2872, !2884, !244}
!2884 = !DILocation(line: 71, column: 5, scope: !2866)
!2885 = !DILocation(line: 77, scope: !2874)
!2886 = !DILocalVariable(name: "pivot_row", scope: !2842, file: !2843, line: 76, type: !45)
!2887 = !DILocalVariable(name: "pivot_col", scope: !2874, file: !2843, line: 77, type: !45)
!2888 = !DILocation(line: 0, scope: !2874)
!2889 = !DILocation(line: 77, column: 39, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2874, file: !2843, line: 77, column: 5)
!2891 = !DILocation(line: 138, column: 5, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2842, file: !2843, line: 138, column: 5)
!2893 = !DILocation(line: 79, column: 37, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2890, file: !2843, line: 77, column: 61)
!2895 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2894, file: !2843, line: 79, type: !45)
!2896 = !DILocation(line: 0, scope: !2894)
!2897 = !DILocation(line: 80, column: 37, scope: !2894)
!2898 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2894, file: !2843, line: 80, type: !45)
!2899 = !DILocalVariable(name: "i", scope: !2900, file: !2843, line: 85, type: !45)
!2900 = distinct !DILexicalBlock(scope: !2894, file: !2843, line: 85, column: 9)
!2901 = !DILocation(line: 0, scope: !2900)
!2902 = !DILocation(line: 85, column: 14, scope: !2900)
!2903 = !DILocation(line: 85, scope: !2900)
!2904 = !DILocation(line: 85, column: 27, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2900, file: !2843, line: 85, column: 9)
!2906 = !DILocation(line: 85, column: 9, scope: !2900)
!2907 = !DILocation(line: 93, column: 9, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2894, file: !2843, line: 93, column: 9)
!2909 = !DILocation(line: 86, column: 13, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2905, file: !2843, line: 85, column: 43)
!2911 = !DILocation(line: 86, column: 27, scope: !2910)
!2912 = !DILocation(line: 87, column: 13, scope: !2910)
!2913 = !DILocation(line: 87, column: 28, scope: !2910)
!2914 = !DILocation(line: 85, column: 39, scope: !2905)
!2915 = !DILocation(line: 85, column: 9, scope: !2905)
!2916 = distinct !{!2916, !2906, !2917, !244}
!2917 = !DILocation(line: 88, column: 9, scope: !2900)
!2918 = !DILocation(line: 0, scope: !2908)
!2919 = !DILocalVariable(name: "row", scope: !2908, file: !2843, line: 93, type: !45)
!2920 = !DILocalVariable(name: "pivot", scope: !2894, file: !2843, line: 91, type: !14)
!2921 = !DILocalVariable(name: "pivot_is_zero", scope: !2894, file: !2843, line: 92, type: !6)
!2922 = !DILocation(line: 94, column: 24, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2908, file: !2843, line: 93, column: 9)
!2924 = !DILocation(line: 94, column: 21, scope: !2923)
!2925 = !DILocation(line: 96, column: 38, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2923, file: !2843, line: 94, column: 80)
!2927 = !DILocation(line: 96, column: 37, scope: !2926)
!2928 = !DILocalVariable(name: "is_pivot_row", scope: !2926, file: !2843, line: 96, type: !6)
!2929 = !DILocation(line: 0, scope: !2926)
!2930 = !DILocation(line: 97, column: 40, scope: !2926)
!2931 = !DILocalVariable(name: "below_pivot_row", scope: !2926, file: !2843, line: 97, type: !6)
!2932 = !DILocalVariable(name: "j", scope: !2933, file: !2843, line: 99, type: !45)
!2933 = distinct !DILexicalBlock(scope: !2926, file: !2843, line: 99, column: 13)
!2934 = !DILocation(line: 0, scope: !2933)
!2935 = !DILocation(line: 99, column: 18, scope: !2933)
!2936 = !DILocation(line: 99, scope: !2933)
!2937 = !DILocation(line: 99, column: 31, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2933, file: !2843, line: 99, column: 13)
!2939 = !DILocation(line: 99, column: 13, scope: !2933)
!2940 = !DILocation(line: 100, column: 67, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2938, file: !2843, line: 99, column: 47)
!2942 = !DILocation(line: 100, column: 48, scope: !2941)
!2943 = !DILocation(line: 101, column: 47, scope: !2941)
!2944 = !DILocation(line: 101, column: 57, scope: !2941)
!2945 = !DILocation(line: 101, column: 34, scope: !2941)
!2946 = !DILocation(line: 100, column: 85, scope: !2941)
!2947 = !DILocation(line: 100, column: 17, scope: !2941)
!2948 = !DILocation(line: 100, column: 31, scope: !2941)
!2949 = !DILocation(line: 99, column: 43, scope: !2938)
!2950 = !DILocation(line: 99, column: 13, scope: !2938)
!2951 = distinct !{!2951, !2939, !2952, !244}
!2952 = !DILocation(line: 102, column: 13, scope: !2933)
!2953 = !DILocation(line: 103, column: 21, scope: !2926)
!2954 = !DILocation(line: 104, column: 44, scope: !2926)
!2955 = !DILocation(line: 104, column: 30, scope: !2926)
!2956 = !DILocation(line: 104, column: 29, scope: !2926)
!2957 = !DILocation(line: 94, column: 76, scope: !2923)
!2958 = !DILocation(line: 93, column: 9, scope: !2923)
!2959 = distinct !{!2959, !2907, !2960, !244}
!2960 = !DILocation(line: 105, column: 9, scope: !2908)
!2961 = !DILocation(line: 108, column: 19, scope: !2894)
!2962 = !DILocalVariable(name: "inverse", scope: !2842, file: !2843, line: 75, type: !14)
!2963 = !DILocation(line: 109, column: 9, scope: !2894)
!2964 = !DILocalVariable(name: "row", scope: !2965, file: !2843, line: 113, type: !45)
!2965 = distinct !DILexicalBlock(scope: !2894, file: !2843, line: 113, column: 9)
!2966 = !DILocation(line: 0, scope: !2965)
!2967 = !DILocation(line: 113, column: 14, scope: !2965)
!2968 = !DILocation(line: 113, scope: !2965)
!2969 = !DILocation(line: 113, column: 51, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2965, file: !2843, line: 113, column: 9)
!2971 = !DILocation(line: 113, column: 9, scope: !2965)
!2972 = !DILocation(line: 124, column: 9, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2894, file: !2843, line: 124, column: 9)
!2974 = !DILocation(line: 114, column: 33, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2970, file: !2843, line: 113, column: 84)
!2976 = !DILocation(line: 114, column: 63, scope: !2975)
!2977 = !DILocalVariable(name: "do_copy", scope: !2975, file: !2843, line: 114, type: !6)
!2978 = !DILocation(line: 0, scope: !2975)
!2979 = !DILocalVariable(name: "do_not_copy", scope: !2975, file: !2843, line: 115, type: !6)
!2980 = !DILocalVariable(name: "col", scope: !2981, file: !2843, line: 116, type: !45)
!2981 = distinct !DILexicalBlock(scope: !2975, file: !2843, line: 116, column: 13)
!2982 = !DILocation(line: 0, scope: !2981)
!2983 = !DILocation(line: 116, column: 18, scope: !2981)
!2984 = !DILocation(line: 116, scope: !2981)
!2985 = !DILocation(line: 116, column: 35, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2981, file: !2843, line: 116, column: 13)
!2987 = !DILocation(line: 116, column: 13, scope: !2981)
!2988 = !DILocation(line: 118, column: 49, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2986, file: !2843, line: 116, column: 53)
!2990 = !DILocation(line: 118, column: 59, scope: !2989)
!2991 = !DILocation(line: 118, column: 36, scope: !2989)
!2992 = !DILocation(line: 118, column: 34, scope: !2989)
!2993 = !DILocation(line: 119, column: 32, scope: !2989)
!2994 = !DILocation(line: 119, column: 30, scope: !2989)
!2995 = !DILocation(line: 118, column: 67, scope: !2989)
!2996 = !DILocation(line: 117, column: 30, scope: !2989)
!2997 = !DILocation(line: 117, column: 40, scope: !2989)
!2998 = !DILocation(line: 117, column: 17, scope: !2989)
!2999 = !DILocation(line: 117, column: 47, scope: !2989)
!3000 = !DILocation(line: 116, column: 49, scope: !2986)
!3001 = !DILocation(line: 116, column: 13, scope: !2986)
!3002 = distinct !{!3002, !2987, !3003, !244}
!3003 = !DILocation(line: 120, column: 13, scope: !2981)
!3004 = !DILocation(line: 113, column: 80, scope: !2970)
!3005 = !DILocation(line: 113, column: 9, scope: !2970)
!3006 = distinct !{!3006, !2971, !3007, !244}
!3007 = !DILocation(line: 121, column: 9, scope: !2965)
!3008 = !DILocation(line: 124, scope: !2973)
!3009 = !DILocalVariable(name: "row", scope: !2973, file: !2843, line: 124, type: !45)
!3010 = !DILocation(line: 0, scope: !2973)
!3011 = !DILocation(line: 124, column: 51, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2973, file: !2843, line: 124, column: 9)
!3013 = !DILocation(line: 125, column: 46, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3012, file: !2843, line: 124, column: 67)
!3015 = !DILocalVariable(name: "below_pivot", scope: !3014, file: !2843, line: 125, type: !14)
!3016 = !DILocation(line: 0, scope: !3014)
!3017 = !DILocation(line: 126, column: 74, scope: !3014)
!3018 = !DILocation(line: 126, column: 68, scope: !3014)
!3019 = !DILocation(line: 126, column: 41, scope: !3014)
!3020 = !DILocalVariable(name: "elt_to_elim", scope: !3014, file: !2843, line: 126, type: !14)
!3021 = !DILocation(line: 128, column: 63, scope: !3014)
!3022 = !DILocation(line: 129, column: 52, scope: !3014)
!3023 = !DILocation(line: 129, column: 46, scope: !3014)
!3024 = !DILocation(line: 128, column: 13, scope: !3014)
!3025 = !DILocation(line: 124, column: 63, scope: !3012)
!3026 = !DILocation(line: 124, column: 9, scope: !3012)
!3027 = distinct !{!3027, !2972, !3028, !244}
!3028 = !DILocation(line: 130, column: 9, scope: !2973)
!3029 = !DILocation(line: 132, column: 19, scope: !2894)
!3030 = !DILocation(line: 77, column: 57, scope: !2890)
!3031 = !DILocation(line: 77, column: 5, scope: !2890)
!3032 = distinct !{!3032, !2873, !3033, !244}
!3033 = !DILocation(line: 133, column: 5, scope: !2874)
!3034 = !DILocation(line: 138, scope: !2892)
!3035 = !DILocalVariable(name: "i", scope: !2892, file: !2843, line: 138, type: !45)
!3036 = !DILocation(line: 0, scope: !2892)
!3037 = !DILocation(line: 138, column: 23, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !2892, file: !2843, line: 138, column: 5)
!3039 = !DILocation(line: 139, column: 47, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3038, file: !2843, line: 138, column: 37)
!3041 = !DILocation(line: 139, column: 43, scope: !3040)
!3042 = !DILocation(line: 139, column: 9, scope: !3040)
!3043 = !DILocalVariable(name: "j", scope: !3044, file: !2843, line: 140, type: !45)
!3044 = distinct !DILexicalBlock(scope: !3040, file: !2843, line: 140, column: 9)
!3045 = !DILocation(line: 0, scope: !3044)
!3046 = !DILocation(line: 140, column: 14, scope: !3044)
!3047 = !DILocation(line: 140, scope: !3044)
!3048 = !DILocation(line: 140, column: 27, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3044, file: !2843, line: 140, column: 9)
!3050 = !DILocation(line: 140, column: 9, scope: !3044)
!3051 = !DILocation(line: 141, column: 32, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3049, file: !2843, line: 140, column: 41)
!3053 = !DILocation(line: 141, column: 17, scope: !3052)
!3054 = !DILocation(line: 141, column: 13, scope: !3052)
!3055 = !DILocation(line: 141, column: 30, scope: !3052)
!3056 = !DILocation(line: 140, column: 37, scope: !3049)
!3057 = !DILocation(line: 140, column: 9, scope: !3049)
!3058 = distinct !{!3058, !3050, !3059, !244}
!3059 = !DILocation(line: 142, column: 9, scope: !3044)
!3060 = !DILocation(line: 138, column: 33, scope: !3038)
!3061 = !DILocation(line: 138, column: 5, scope: !3038)
!3062 = distinct !{!3062, !2891, !3063, !244}
!3063 = !DILocation(line: 143, column: 5, scope: !2892)
!3064 = !DILocation(line: 145, column: 5, scope: !2842)
!3065 = !DILocation(line: 146, column: 5, scope: !2842)
!3066 = !DILocation(line: 147, column: 5, scope: !2842)
!3067 = !DILocation(line: 148, column: 5, scope: !2842)
!3068 = !DILocation(line: 149, column: 1, scope: !2842)
!3069 = distinct !DISubprogram(name: "ct_compare_8", scope: !3070, file: !3070, line: 51, type: !1597, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3070 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3071 = !DILocalVariable(name: "a", arg: 1, scope: !3069, file: !3070, line: 51, type: !14)
!3072 = !DILocation(line: 0, scope: !3069)
!3073 = !DILocalVariable(name: "b", arg: 2, scope: !3069, file: !3070, line: 51, type: !14)
!3074 = !DILocation(line: 52, column: 42, scope: !3069)
!3075 = !DILocation(line: 52, column: 13, scope: !3069)
!3076 = !DILocation(line: 52, column: 71, scope: !3069)
!3077 = !DILocation(line: 52, column: 69, scope: !3069)
!3078 = !DILocation(line: 52, column: 5, scope: !3069)
!3079 = distinct !DISubprogram(name: "mul_fx8", scope: !595, file: !595, line: 28, type: !3080, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!6, !14, !6}
!3082 = !DILocalVariable(name: "a", arg: 1, scope: !3079, file: !595, line: 28, type: !14)
!3083 = !DILocation(line: 0, scope: !3079)
!3084 = !DILocalVariable(name: "b", arg: 2, scope: !3079, file: !595, line: 28, type: !6)
!3085 = !DILocation(line: 31, column: 13, scope: !3079)
!3086 = !DILocation(line: 31, column: 10, scope: !3079)
!3087 = !DILocation(line: 31, column: 17, scope: !3079)
!3088 = !DILocalVariable(name: "p", scope: !3079, file: !595, line: 30, type: !6)
!3089 = !DILocation(line: 32, column: 13, scope: !3079)
!3090 = !DILocation(line: 32, column: 10, scope: !3079)
!3091 = !DILocation(line: 32, column: 17, scope: !3079)
!3092 = !DILocation(line: 32, column: 7, scope: !3079)
!3093 = !DILocation(line: 33, column: 13, scope: !3079)
!3094 = !DILocation(line: 33, column: 10, scope: !3079)
!3095 = !DILocation(line: 33, column: 17, scope: !3079)
!3096 = !DILocation(line: 33, column: 7, scope: !3079)
!3097 = !DILocation(line: 34, column: 13, scope: !3079)
!3098 = !DILocation(line: 34, column: 10, scope: !3079)
!3099 = !DILocation(line: 34, column: 17, scope: !3079)
!3100 = !DILocation(line: 34, column: 7, scope: !3079)
!3101 = !DILocalVariable(name: "top_p", scope: !3079, file: !595, line: 37, type: !6)
!3102 = !DILocation(line: 38, column: 32, scope: !3079)
!3103 = !DILocation(line: 38, column: 47, scope: !3079)
!3104 = !DILocation(line: 38, column: 38, scope: !3079)
!3105 = !DILocation(line: 38, column: 54, scope: !3079)
!3106 = !DILocalVariable(name: "out", scope: !3079, file: !595, line: 38, type: !6)
!3107 = !DILocation(line: 39, column: 5, scope: !3079)
!3108 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2843, file: !2843, line: 24, type: !3109, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{null, !49, !5, !45}
!3111 = !DILocalVariable(name: "in", arg: 1, scope: !3108, file: !2843, line: 24, type: !49)
!3112 = !DILocation(line: 0, scope: !3108)
!3113 = !DILocalVariable(name: "out", arg: 2, scope: !3108, file: !2843, line: 24, type: !5)
!3114 = !DILocalVariable(name: "ncols", arg: 3, scope: !3108, file: !2843, line: 24, type: !45)
!3115 = !DILocalVariable(name: "out8", scope: !3108, file: !2843, line: 26, type: !18)
!3116 = !DILocalVariable(name: "i", scope: !3108, file: !2843, line: 25, type: !45)
!3117 = !DILocation(line: 27, column: 9, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3108, file: !2843, line: 27, column: 5)
!3119 = !DILocation(line: 27, scope: !3118)
!3120 = !DILocation(line: 27, column: 17, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3118, file: !2843, line: 27, column: 5)
!3122 = !DILocation(line: 27, column: 20, scope: !3121)
!3123 = !DILocation(line: 27, column: 5, scope: !3118)
!3124 = !DILocation(line: 31, column: 23, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3121, file: !2843, line: 27, column: 36)
!3126 = !DILocation(line: 31, column: 44, scope: !3125)
!3127 = !DILocation(line: 31, column: 40, scope: !3125)
!3128 = !DILocation(line: 31, column: 48, scope: !3125)
!3129 = !DILocation(line: 31, column: 37, scope: !3125)
!3130 = !DILocation(line: 31, column: 15, scope: !3125)
!3131 = !DILocation(line: 31, column: 9, scope: !3125)
!3132 = !DILocation(line: 31, column: 20, scope: !3125)
!3133 = !DILocation(line: 27, column: 31, scope: !3121)
!3134 = !DILocation(line: 27, column: 5, scope: !3121)
!3135 = distinct !{!3135, !3123, !3136, !244}
!3136 = !DILocation(line: 33, column: 5, scope: !3118)
!3137 = !DILocation(line: 34, column: 19, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3108, file: !2843, line: 34, column: 9)
!3139 = !DILocation(line: 38, column: 23, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3138, file: !2843, line: 34, column: 24)
!3141 = !DILocation(line: 38, column: 15, scope: !3140)
!3142 = !DILocation(line: 38, column: 9, scope: !3140)
!3143 = !DILocation(line: 38, column: 20, scope: !3140)
!3144 = !DILocation(line: 40, column: 5, scope: !3140)
!3145 = !DILocation(line: 41, column: 1, scope: !3108)
!3146 = distinct !DISubprogram(name: "ct_compare_64", scope: !3070, file: !3070, line: 46, type: !3147, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!6, !45, !45}
!3149 = !DILocalVariable(name: "a", arg: 1, scope: !3146, file: !3070, line: 46, type: !45)
!3150 = !DILocation(line: 0, scope: !3146)
!3151 = !DILocalVariable(name: "b", arg: 2, scope: !3146, file: !3070, line: 46, type: !45)
!3152 = !DILocation(line: 47, column: 38, scope: !3146)
!3153 = !DILocation(line: 47, column: 44, scope: !3146)
!3154 = !DILocation(line: 47, column: 73, scope: !3146)
!3155 = !DILocation(line: 47, column: 71, scope: !3146)
!3156 = !DILocation(line: 47, column: 5, scope: !3146)
!3157 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3070, file: !3070, line: 35, type: !3147, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3158 = !DILocalVariable(name: "a", arg: 1, scope: !3157, file: !3070, line: 35, type: !45)
!3159 = !DILocation(line: 0, scope: !3157)
!3160 = !DILocalVariable(name: "b", arg: 2, scope: !3157, file: !3070, line: 35, type: !45)
!3161 = !DILocalVariable(name: "diff", scope: !3157, file: !3070, line: 36, type: !46)
!3162 = !DILocation(line: 37, column: 30, scope: !3157)
!3163 = !DILocation(line: 37, column: 59, scope: !3157)
!3164 = !DILocation(line: 37, column: 57, scope: !3157)
!3165 = !DILocation(line: 37, column: 5, scope: !3157)
!3166 = distinct !DISubprogram(name: "m_extract_element", scope: !2843, file: !2843, line: 16, type: !3167, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!14, !428, !45}
!3169 = !DILocalVariable(name: "in", arg: 1, scope: !3166, file: !2843, line: 16, type: !428)
!3170 = !DILocation(line: 0, scope: !3166)
!3171 = !DILocalVariable(name: "index", arg: 2, scope: !3166, file: !2843, line: 16, type: !45)
!3172 = !DILocation(line: 17, column: 27, scope: !3166)
!3173 = !DILocalVariable(name: "leg", scope: !3166, file: !2843, line: 17, type: !343)
!3174 = !DILocation(line: 18, column: 30, scope: !3166)
!3175 = !DILocalVariable(name: "offset", scope: !3166, file: !2843, line: 18, type: !343)
!3176 = !DILocation(line: 20, column: 13, scope: !3166)
!3177 = !DILocation(line: 20, column: 31, scope: !3166)
!3178 = !DILocation(line: 20, column: 21, scope: !3166)
!3179 = !DILocation(line: 20, column: 12, scope: !3166)
!3180 = !DILocation(line: 20, column: 5, scope: !3166)
!3181 = distinct !DISubprogram(name: "inverse_f", scope: !595, file: !595, line: 57, type: !3182, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!14, !14}
!3184 = !DILocalVariable(name: "a", arg: 1, scope: !3181, file: !595, line: 57, type: !14)
!3185 = !DILocation(line: 0, scope: !3181)
!3186 = !DILocation(line: 61, column: 24, scope: !3181)
!3187 = !DILocalVariable(name: "a2", scope: !3181, file: !595, line: 61, type: !14)
!3188 = !DILocation(line: 62, column: 24, scope: !3181)
!3189 = !DILocalVariable(name: "a4", scope: !3181, file: !595, line: 62, type: !14)
!3190 = !DILocation(line: 63, column: 24, scope: !3181)
!3191 = !DILocalVariable(name: "a8", scope: !3181, file: !595, line: 63, type: !14)
!3192 = !DILocation(line: 64, column: 24, scope: !3181)
!3193 = !DILocalVariable(name: "a6", scope: !3181, file: !595, line: 64, type: !14)
!3194 = !DILocation(line: 65, column: 25, scope: !3181)
!3195 = !DILocalVariable(name: "a14", scope: !3181, file: !595, line: 65, type: !14)
!3196 = !DILocation(line: 67, column: 5, scope: !3181)
!3197 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3070, file: !3070, line: 94, type: !3198, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{null, !343, !428, !14, !5}
!3200 = !DILocalVariable(name: "legs", arg: 1, scope: !3197, file: !3070, line: 94, type: !343)
!3201 = !DILocation(line: 0, scope: !3197)
!3202 = !DILocalVariable(name: "in", arg: 2, scope: !3197, file: !3070, line: 94, type: !428)
!3203 = !DILocalVariable(name: "a", arg: 3, scope: !3197, file: !3070, line: 94, type: !14)
!3204 = !DILocalVariable(name: "acc", arg: 4, scope: !3197, file: !3070, line: 94, type: !5)
!3205 = !DILocation(line: 95, column: 20, scope: !3197)
!3206 = !DILocalVariable(name: "tab", scope: !3197, file: !3070, line: 95, type: !19)
!3207 = !DILocalVariable(name: "lsb_ask", scope: !3197, file: !3070, line: 97, type: !6)
!3208 = !DILocalVariable(name: "i", scope: !3209, file: !3070, line: 99, type: !45)
!3209 = distinct !DILexicalBlock(scope: !3197, file: !3070, line: 99, column: 5)
!3210 = !DILocation(line: 0, scope: !3209)
!3211 = !DILocation(line: 99, column: 9, scope: !3209)
!3212 = !DILocation(line: 99, scope: !3209)
!3213 = !DILocation(line: 99, column: 20, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3209, file: !3070, line: 99, column: 5)
!3215 = !DILocation(line: 99, column: 5, scope: !3209)
!3216 = !DILocation(line: 100, column: 21, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3214, file: !3070, line: 99, column: 32)
!3218 = !DILocation(line: 100, column: 33, scope: !3217)
!3219 = !DILocation(line: 100, column: 51, scope: !3217)
!3220 = !DILocation(line: 100, column: 46, scope: !3217)
!3221 = !DILocation(line: 100, column: 44, scope: !3217)
!3222 = !DILocation(line: 101, column: 27, scope: !3217)
!3223 = !DILocation(line: 101, column: 33, scope: !3217)
!3224 = !DILocation(line: 101, column: 52, scope: !3217)
!3225 = !DILocation(line: 101, column: 59, scope: !3217)
!3226 = !DILocation(line: 101, column: 46, scope: !3217)
!3227 = !DILocation(line: 101, column: 44, scope: !3217)
!3228 = !DILocation(line: 101, column: 17, scope: !3217)
!3229 = !DILocation(line: 102, column: 21, scope: !3217)
!3230 = !DILocation(line: 102, column: 27, scope: !3217)
!3231 = !DILocation(line: 102, column: 33, scope: !3217)
!3232 = !DILocation(line: 102, column: 52, scope: !3217)
!3233 = !DILocation(line: 102, column: 59, scope: !3217)
!3234 = !DILocation(line: 102, column: 46, scope: !3217)
!3235 = !DILocation(line: 102, column: 44, scope: !3217)
!3236 = !DILocation(line: 102, column: 17, scope: !3217)
!3237 = !DILocation(line: 103, column: 21, scope: !3217)
!3238 = !DILocation(line: 103, column: 27, scope: !3217)
!3239 = !DILocation(line: 103, column: 33, scope: !3217)
!3240 = !DILocation(line: 103, column: 52, scope: !3217)
!3241 = !DILocation(line: 103, column: 59, scope: !3217)
!3242 = !DILocation(line: 103, column: 46, scope: !3217)
!3243 = !DILocation(line: 103, column: 44, scope: !3217)
!3244 = !DILocation(line: 103, column: 17, scope: !3217)
!3245 = !DILocation(line: 100, column: 9, scope: !3217)
!3246 = !DILocation(line: 100, column: 16, scope: !3217)
!3247 = !DILocation(line: 99, column: 29, scope: !3214)
!3248 = !DILocation(line: 99, column: 5, scope: !3214)
!3249 = distinct !{!3249, !3215, !3250, !244}
!3250 = !DILocation(line: 104, column: 5, scope: !3209)
!3251 = !DILocation(line: 105, column: 1, scope: !3197)
!3252 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2843, file: !2843, line: 44, type: !3253, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{null, !45, !428, !18}
!3255 = !DILocalVariable(name: "legs", arg: 1, scope: !3252, file: !2843, line: 44, type: !45)
!3256 = !DILocation(line: 0, scope: !3252)
!3257 = !DILocalVariable(name: "in", arg: 2, scope: !3252, file: !2843, line: 44, type: !428)
!3258 = !DILocalVariable(name: "out", arg: 3, scope: !3252, file: !2843, line: 44, type: !18)
!3259 = !DILocalVariable(name: "in8", scope: !3252, file: !2843, line: 45, type: !49)
!3260 = !DILocalVariable(name: "i", scope: !3261, file: !2843, line: 46, type: !45)
!3261 = distinct !DILexicalBlock(scope: !3252, file: !2843, line: 46, column: 5)
!3262 = !DILocation(line: 0, scope: !3261)
!3263 = !DILocation(line: 46, column: 9, scope: !3261)
!3264 = !DILocation(line: 46, scope: !3261)
!3265 = !DILocation(line: 46, column: 29, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3261, file: !2843, line: 46, column: 5)
!3267 = !DILocation(line: 46, column: 22, scope: !3266)
!3268 = !DILocation(line: 46, column: 5, scope: !3261)
!3269 = !DILocation(line: 51, column: 26, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3266, file: !2843, line: 46, column: 42)
!3271 = !DILocation(line: 51, column: 21, scope: !3270)
!3272 = !DILocation(line: 51, column: 31, scope: !3270)
!3273 = !DILocation(line: 51, column: 9, scope: !3270)
!3274 = !DILocation(line: 51, column: 18, scope: !3270)
!3275 = !DILocation(line: 52, column: 26, scope: !3270)
!3276 = !DILocation(line: 52, column: 21, scope: !3270)
!3277 = !DILocation(line: 52, column: 30, scope: !3270)
!3278 = !DILocation(line: 52, column: 14, scope: !3270)
!3279 = !DILocation(line: 52, column: 9, scope: !3270)
!3280 = !DILocation(line: 52, column: 18, scope: !3270)
!3281 = !DILocation(line: 46, column: 37, scope: !3266)
!3282 = !DILocation(line: 46, column: 5, scope: !3266)
!3283 = distinct !{!3283, !3268, !3284, !244}
!3284 = !DILocation(line: 54, column: 5, scope: !3261)
!3285 = !DILocation(line: 55, column: 1, scope: !3252)
!3286 = distinct !DISubprogram(name: "mul_table", scope: !595, file: !595, line: 129, type: !596, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3287 = !DILocalVariable(name: "b", arg: 1, scope: !3286, file: !595, line: 129, type: !12)
!3288 = !DILocation(line: 0, scope: !3286)
!3289 = !DILocation(line: 130, column: 19, scope: !3286)
!3290 = !DILocation(line: 130, column: 33, scope: !3286)
!3291 = !DILocalVariable(name: "x", scope: !3286, file: !595, line: 130, type: !19)
!3292 = !DILocalVariable(name: "high_nibble_mask", scope: !3286, file: !595, line: 132, type: !19)
!3293 = !DILocation(line: 134, column: 28, scope: !3286)
!3294 = !DILocalVariable(name: "high_half", scope: !3286, file: !595, line: 134, type: !19)
!3295 = !DILocation(line: 135, column: 28, scope: !3286)
!3296 = !DILocation(line: 135, column: 47, scope: !3286)
!3297 = !DILocation(line: 135, column: 34, scope: !3286)
!3298 = !DILocation(line: 135, column: 5, scope: !3286)
!3299 = distinct !DISubprogram(name: "mul_f", scope: !595, file: !595, line: 9, type: !1597, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3300 = !DILocalVariable(name: "a", arg: 1, scope: !3299, file: !595, line: 9, type: !14)
!3301 = !DILocation(line: 0, scope: !3299)
!3302 = !DILocalVariable(name: "b", arg: 2, scope: !3299, file: !595, line: 9, type: !14)
!3303 = !DILocation(line: 14, column: 10, scope: !3299)
!3304 = !DILocation(line: 14, column: 7, scope: !3299)
!3305 = !DILocation(line: 17, column: 17, scope: !3299)
!3306 = !DILocalVariable(name: "p", scope: !3299, file: !595, line: 11, type: !14)
!3307 = !DILocation(line: 18, column: 13, scope: !3299)
!3308 = !DILocation(line: 18, column: 17, scope: !3299)
!3309 = !DILocation(line: 18, column: 7, scope: !3299)
!3310 = !DILocation(line: 19, column: 13, scope: !3299)
!3311 = !DILocation(line: 19, column: 17, scope: !3299)
!3312 = !DILocation(line: 19, column: 7, scope: !3299)
!3313 = !DILocation(line: 20, column: 13, scope: !3299)
!3314 = !DILocation(line: 20, column: 17, scope: !3299)
!3315 = !DILocation(line: 20, column: 7, scope: !3299)
!3316 = !DILocalVariable(name: "top_p", scope: !3299, file: !595, line: 23, type: !14)
!3317 = !DILocation(line: 24, column: 37, scope: !3299)
!3318 = !DILocation(line: 24, column: 52, scope: !3299)
!3319 = !DILocation(line: 24, column: 43, scope: !3299)
!3320 = !DILocation(line: 24, column: 59, scope: !3299)
!3321 = !DILocalVariable(name: "out", scope: !3299, file: !595, line: 24, type: !14)
!3322 = !DILocation(line: 25, column: 5, scope: !3299)
!3323 = distinct !DISubprogram(name: "lincomb", scope: !595, file: !595, line: 70, type: !1605, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3324 = !DILocalVariable(name: "a", arg: 1, scope: !3323, file: !595, line: 70, type: !49)
!3325 = !DILocation(line: 0, scope: !3323)
!3326 = !DILocalVariable(name: "b", arg: 2, scope: !3323, file: !595, line: 71, type: !49)
!3327 = !DILocalVariable(name: "n", arg: 3, scope: !3323, file: !595, line: 71, type: !45)
!3328 = !DILocalVariable(name: "m", arg: 4, scope: !3323, file: !595, line: 71, type: !45)
!3329 = !DILocalVariable(name: "ret", scope: !3323, file: !595, line: 72, type: !14)
!3330 = !DILocalVariable(name: "i", scope: !3331, file: !595, line: 73, type: !45)
!3331 = distinct !DILexicalBlock(scope: !3323, file: !595, line: 73, column: 5)
!3332 = !DILocation(line: 0, scope: !3331)
!3333 = !DILocation(line: 73, column: 10, scope: !3331)
!3334 = !DILocation(line: 73, scope: !3331)
!3335 = !DILocation(line: 73, column: 23, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3331, file: !595, line: 73, column: 5)
!3337 = !DILocation(line: 73, column: 5, scope: !3331)
!3338 = !DILocation(line: 74, column: 27, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3336, file: !595, line: 73, column: 41)
!3340 = !DILocation(line: 74, column: 33, scope: !3339)
!3341 = !DILocation(line: 74, column: 21, scope: !3339)
!3342 = !DILocation(line: 74, column: 15, scope: !3339)
!3343 = !DILocation(line: 73, column: 28, scope: !3336)
!3344 = !DILocation(line: 73, column: 35, scope: !3336)
!3345 = !DILocation(line: 73, column: 5, scope: !3336)
!3346 = distinct !{!3346, !3337, !3347, !244}
!3347 = !DILocation(line: 75, column: 5, scope: !3331)
!3348 = !DILocation(line: 76, column: 5, scope: !3323)
!3349 = distinct !DISubprogram(name: "add_f", scope: !595, file: !595, line: 43, type: !1597, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3350 = !DILocalVariable(name: "a", arg: 1, scope: !3349, file: !595, line: 43, type: !14)
!3351 = !DILocation(line: 0, scope: !3349)
!3352 = !DILocalVariable(name: "b", arg: 2, scope: !3349, file: !595, line: 43, type: !14)
!3353 = !DILocation(line: 44, column: 14, scope: !3349)
!3354 = !DILocation(line: 44, column: 5, scope: !3349)
!3355 = distinct !DISubprogram(name: "shake128_inc_init", scope: !71, file: !71, line: 688, type: !3356, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{null, !3358}
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 32)
!3359 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128incctx", file: !71, line: 31, baseType: !3360)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 29, size: 32, elements: !3361)
!3361 = !{!3362}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3360, file: !71, line: 30, baseType: !5, size: 32)
!3363 = !DILocalVariable(name: "state", arg: 1, scope: !3355, file: !71, line: 688, type: !3358)
!3364 = !DILocation(line: 0, scope: !3355)
!3365 = !DILocation(line: 689, column: 18, scope: !3355)
!3366 = !DILocation(line: 689, column: 16, scope: !3355)
!3367 = !DILocation(line: 690, column: 20, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3355, file: !71, line: 690, column: 9)
!3369 = !DILocation(line: 691, column: 9, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3368, file: !71, line: 690, column: 29)
!3371 = !DILocation(line: 692, column: 5, scope: !3370)
!3372 = !DILocation(line: 693, column: 28, scope: !3355)
!3373 = !DILocation(line: 693, column: 5, scope: !3355)
!3374 = !DILocation(line: 694, column: 1, scope: !3355)
!3375 = distinct !DISubprogram(name: "keccak_inc_init", scope: !71, file: !71, line: 580, type: !26, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3376 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3375, file: !71, line: 580, type: !5)
!3377 = !DILocation(line: 0, scope: !3375)
!3378 = !DILocalVariable(name: "i", scope: !3375, file: !71, line: 581, type: !15)
!3379 = !DILocation(line: 583, column: 10, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3375, file: !71, line: 583, column: 5)
!3381 = !DILocation(line: 583, scope: !3380)
!3382 = !DILocation(line: 583, column: 19, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3380, file: !71, line: 583, column: 5)
!3384 = !DILocation(line: 583, column: 5, scope: !3380)
!3385 = !DILocation(line: 584, column: 9, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3383, file: !71, line: 583, column: 30)
!3387 = !DILocation(line: 584, column: 18, scope: !3386)
!3388 = !DILocation(line: 583, column: 25, scope: !3383)
!3389 = !DILocation(line: 583, column: 5, scope: !3383)
!3390 = distinct !{!3390, !3384, !3391, !244}
!3391 = !DILocation(line: 585, column: 5, scope: !3380)
!3392 = !DILocation(line: 586, column: 5, scope: !3375)
!3393 = !DILocation(line: 586, column: 15, scope: !3375)
!3394 = !DILocation(line: 587, column: 1, scope: !3375)
!3395 = distinct !DISubprogram(name: "shake128_inc_absorb", scope: !71, file: !71, line: 696, type: !3396, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{null, !3358, !257, !15}
!3398 = !DILocalVariable(name: "state", arg: 1, scope: !3395, file: !71, line: 696, type: !3358)
!3399 = !DILocation(line: 0, scope: !3395)
!3400 = !DILocalVariable(name: "input", arg: 2, scope: !3395, file: !71, line: 696, type: !257)
!3401 = !DILocalVariable(name: "inlen", arg: 3, scope: !3395, file: !71, line: 696, type: !15)
!3402 = !DILocation(line: 697, column: 30, scope: !3395)
!3403 = !DILocation(line: 697, column: 5, scope: !3395)
!3404 = !DILocation(line: 698, column: 1, scope: !3395)
!3405 = distinct !DISubprogram(name: "keccak_inc_absorb", scope: !71, file: !71, line: 603, type: !3406, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{null, !5, !19, !257, !15}
!3408 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3405, file: !71, line: 603, type: !5)
!3409 = !DILocation(line: 0, scope: !3405)
!3410 = !DILocalVariable(name: "r", arg: 2, scope: !3405, file: !71, line: 603, type: !19)
!3411 = !DILocalVariable(name: "m", arg: 3, scope: !3405, file: !71, line: 603, type: !257)
!3412 = !DILocalVariable(name: "mlen", arg: 4, scope: !3405, file: !71, line: 604, type: !15)
!3413 = !DILocation(line: 608, column: 5, scope: !3405)
!3414 = !DILocation(line: 608, column: 12, scope: !3405)
!3415 = !DILocation(line: 608, column: 19, scope: !3405)
!3416 = !DILocation(line: 608, column: 17, scope: !3405)
!3417 = !DILocation(line: 608, column: 32, scope: !3405)
!3418 = !DILocation(line: 608, column: 29, scope: !3405)
!3419 = !DILocation(line: 609, column: 9, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !71, line: 609, column: 9)
!3421 = distinct !DILexicalBlock(scope: !3405, file: !71, line: 608, column: 35)
!3422 = !DILocation(line: 621, column: 5, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3405, file: !71, line: 621, column: 5)
!3424 = !DILocation(line: 609, scope: !3420)
!3425 = !DILocalVariable(name: "i", scope: !3405, file: !71, line: 605, type: !15)
!3426 = !DILocation(line: 609, column: 39, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3420, file: !71, line: 609, column: 9)
!3428 = !DILocation(line: 609, column: 29, scope: !3427)
!3429 = !DILocation(line: 609, column: 27, scope: !3427)
!3430 = !DILocation(line: 609, column: 23, scope: !3427)
!3431 = !DILocation(line: 612, column: 54, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3427, file: !71, line: 609, column: 55)
!3433 = !DILocation(line: 612, column: 44, scope: !3432)
!3434 = !DILocation(line: 612, column: 69, scope: !3432)
!3435 = !DILocation(line: 612, column: 81, scope: !3432)
!3436 = !DILocation(line: 612, column: 79, scope: !3432)
!3437 = !DILocation(line: 612, column: 65, scope: !3432)
!3438 = !DILocation(line: 612, column: 59, scope: !3432)
!3439 = !DILocation(line: 612, column: 20, scope: !3432)
!3440 = !DILocation(line: 612, column: 32, scope: !3432)
!3441 = !DILocation(line: 612, column: 30, scope: !3432)
!3442 = !DILocation(line: 612, column: 35, scope: !3432)
!3443 = !DILocation(line: 612, column: 13, scope: !3432)
!3444 = !DILocation(line: 612, column: 41, scope: !3432)
!3445 = !DILocation(line: 609, column: 51, scope: !3427)
!3446 = !DILocation(line: 609, column: 9, scope: !3427)
!3447 = distinct !{!3447, !3419, !3448, !244}
!3448 = !DILocation(line: 613, column: 9, scope: !3420)
!3449 = !DILocation(line: 614, column: 30, scope: !3421)
!3450 = !DILocation(line: 614, column: 17, scope: !3421)
!3451 = !DILocation(line: 614, column: 14, scope: !3421)
!3452 = !DILocation(line: 615, column: 11, scope: !3421)
!3453 = !DILocation(line: 616, column: 9, scope: !3421)
!3454 = !DILocation(line: 616, column: 19, scope: !3421)
!3455 = !DILocation(line: 618, column: 9, scope: !3421)
!3456 = distinct !{!3456, !3413, !3457, !244}
!3457 = !DILocation(line: 619, column: 5, scope: !3405)
!3458 = !DILocation(line: 621, scope: !3423)
!3459 = !DILocation(line: 621, column: 19, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3423, file: !71, line: 621, column: 5)
!3461 = !DILocation(line: 622, column: 50, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3460, file: !71, line: 621, column: 32)
!3463 = !DILocation(line: 622, column: 40, scope: !3462)
!3464 = !DILocation(line: 622, column: 65, scope: !3462)
!3465 = !DILocation(line: 622, column: 77, scope: !3462)
!3466 = !DILocation(line: 622, column: 75, scope: !3462)
!3467 = !DILocation(line: 622, column: 61, scope: !3462)
!3468 = !DILocation(line: 622, column: 55, scope: !3462)
!3469 = !DILocation(line: 622, column: 16, scope: !3462)
!3470 = !DILocation(line: 622, column: 28, scope: !3462)
!3471 = !DILocation(line: 622, column: 26, scope: !3462)
!3472 = !DILocation(line: 622, column: 31, scope: !3462)
!3473 = !DILocation(line: 622, column: 9, scope: !3462)
!3474 = !DILocation(line: 622, column: 37, scope: !3462)
!3475 = !DILocation(line: 621, column: 28, scope: !3460)
!3476 = !DILocation(line: 621, column: 5, scope: !3460)
!3477 = distinct !{!3477, !3422, !3478, !244}
!3478 = !DILocation(line: 623, column: 5, scope: !3423)
!3479 = !DILocation(line: 624, column: 18, scope: !3405)
!3480 = !DILocation(line: 624, column: 5, scope: !3405)
!3481 = !DILocation(line: 624, column: 15, scope: !3405)
!3482 = !DILocation(line: 625, column: 1, scope: !3405)
!3483 = distinct !DISubprogram(name: "KeccakF1600_StatePermute", scope: !71, file: !71, line: 236, type: !26, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3484 = !DILocalVariable(name: "state", arg: 1, scope: !3483, file: !71, line: 236, type: !5)
!3485 = !DILocation(line: 0, scope: !3483)
!3486 = !DILocation(line: 253, column: 11, scope: !3483)
!3487 = !DILocalVariable(name: "Aba", scope: !3483, file: !71, line: 239, type: !6)
!3488 = !DILocation(line: 254, column: 11, scope: !3483)
!3489 = !DILocalVariable(name: "Abe", scope: !3483, file: !71, line: 239, type: !6)
!3490 = !DILocation(line: 255, column: 11, scope: !3483)
!3491 = !DILocalVariable(name: "Abi", scope: !3483, file: !71, line: 239, type: !6)
!3492 = !DILocation(line: 256, column: 11, scope: !3483)
!3493 = !DILocalVariable(name: "Abo", scope: !3483, file: !71, line: 239, type: !6)
!3494 = !DILocation(line: 257, column: 11, scope: !3483)
!3495 = !DILocalVariable(name: "Abu", scope: !3483, file: !71, line: 239, type: !6)
!3496 = !DILocation(line: 258, column: 11, scope: !3483)
!3497 = !DILocalVariable(name: "Aga", scope: !3483, file: !71, line: 240, type: !6)
!3498 = !DILocation(line: 259, column: 11, scope: !3483)
!3499 = !DILocalVariable(name: "Age", scope: !3483, file: !71, line: 240, type: !6)
!3500 = !DILocation(line: 260, column: 11, scope: !3483)
!3501 = !DILocalVariable(name: "Agi", scope: !3483, file: !71, line: 240, type: !6)
!3502 = !DILocation(line: 261, column: 11, scope: !3483)
!3503 = !DILocalVariable(name: "Ago", scope: !3483, file: !71, line: 240, type: !6)
!3504 = !DILocation(line: 262, column: 11, scope: !3483)
!3505 = !DILocalVariable(name: "Agu", scope: !3483, file: !71, line: 240, type: !6)
!3506 = !DILocation(line: 263, column: 11, scope: !3483)
!3507 = !DILocalVariable(name: "Aka", scope: !3483, file: !71, line: 241, type: !6)
!3508 = !DILocation(line: 264, column: 11, scope: !3483)
!3509 = !DILocalVariable(name: "Ake", scope: !3483, file: !71, line: 241, type: !6)
!3510 = !DILocation(line: 265, column: 11, scope: !3483)
!3511 = !DILocalVariable(name: "Aki", scope: !3483, file: !71, line: 241, type: !6)
!3512 = !DILocation(line: 266, column: 11, scope: !3483)
!3513 = !DILocalVariable(name: "Ako", scope: !3483, file: !71, line: 241, type: !6)
!3514 = !DILocation(line: 267, column: 11, scope: !3483)
!3515 = !DILocalVariable(name: "Aku", scope: !3483, file: !71, line: 241, type: !6)
!3516 = !DILocation(line: 268, column: 11, scope: !3483)
!3517 = !DILocalVariable(name: "Ama", scope: !3483, file: !71, line: 242, type: !6)
!3518 = !DILocation(line: 269, column: 11, scope: !3483)
!3519 = !DILocalVariable(name: "Ame", scope: !3483, file: !71, line: 242, type: !6)
!3520 = !DILocation(line: 270, column: 11, scope: !3483)
!3521 = !DILocalVariable(name: "Ami", scope: !3483, file: !71, line: 242, type: !6)
!3522 = !DILocation(line: 271, column: 11, scope: !3483)
!3523 = !DILocalVariable(name: "Amo", scope: !3483, file: !71, line: 242, type: !6)
!3524 = !DILocation(line: 272, column: 11, scope: !3483)
!3525 = !DILocalVariable(name: "Amu", scope: !3483, file: !71, line: 242, type: !6)
!3526 = !DILocation(line: 273, column: 11, scope: !3483)
!3527 = !DILocalVariable(name: "Asa", scope: !3483, file: !71, line: 243, type: !6)
!3528 = !DILocation(line: 274, column: 11, scope: !3483)
!3529 = !DILocalVariable(name: "Ase", scope: !3483, file: !71, line: 243, type: !6)
!3530 = !DILocation(line: 275, column: 11, scope: !3483)
!3531 = !DILocalVariable(name: "Asi", scope: !3483, file: !71, line: 243, type: !6)
!3532 = !DILocation(line: 276, column: 11, scope: !3483)
!3533 = !DILocalVariable(name: "Aso", scope: !3483, file: !71, line: 243, type: !6)
!3534 = !DILocation(line: 277, column: 11, scope: !3483)
!3535 = !DILocalVariable(name: "Asu", scope: !3483, file: !71, line: 243, type: !6)
!3536 = !DILocalVariable(name: "round", scope: !3483, file: !71, line: 237, type: !45)
!3537 = !DILocation(line: 279, column: 10, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3483, file: !71, line: 279, column: 5)
!3539 = !DILocation(line: 279, scope: !3538)
!3540 = !DILocation(line: 279, column: 27, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3538, file: !71, line: 279, column: 5)
!3542 = !DILocation(line: 279, column: 5, scope: !3538)
!3543 = !DILocalVariable(name: "BCa", scope: !3483, file: !71, line: 244, type: !6)
!3544 = !DILocalVariable(name: "BCe", scope: !3483, file: !71, line: 244, type: !6)
!3545 = !DILocalVariable(name: "BCi", scope: !3483, file: !71, line: 244, type: !6)
!3546 = !DILocalVariable(name: "BCo", scope: !3483, file: !71, line: 244, type: !6)
!3547 = !DILocalVariable(name: "BCu", scope: !3483, file: !71, line: 244, type: !6)
!3548 = !DILocalVariable(name: "Da", scope: !3483, file: !71, line: 245, type: !6)
!3549 = !DILocalVariable(name: "De", scope: !3483, file: !71, line: 245, type: !6)
!3550 = !DILocalVariable(name: "Di", scope: !3483, file: !71, line: 245, type: !6)
!3551 = !DILocalVariable(name: "Do", scope: !3483, file: !71, line: 245, type: !6)
!3552 = !DILocalVariable(name: "Du", scope: !3483, file: !71, line: 245, type: !6)
!3553 = !DILocalVariable(name: "Eba", scope: !3483, file: !71, line: 246, type: !6)
!3554 = !DILocalVariable(name: "Ebe", scope: !3483, file: !71, line: 246, type: !6)
!3555 = !DILocalVariable(name: "Ebi", scope: !3483, file: !71, line: 246, type: !6)
!3556 = !DILocalVariable(name: "Ebo", scope: !3483, file: !71, line: 246, type: !6)
!3557 = !DILocalVariable(name: "Ebu", scope: !3483, file: !71, line: 246, type: !6)
!3558 = !DILocalVariable(name: "Ega", scope: !3483, file: !71, line: 247, type: !6)
!3559 = !DILocalVariable(name: "Ege", scope: !3483, file: !71, line: 247, type: !6)
!3560 = !DILocalVariable(name: "Egi", scope: !3483, file: !71, line: 247, type: !6)
!3561 = !DILocalVariable(name: "Ego", scope: !3483, file: !71, line: 247, type: !6)
!3562 = !DILocalVariable(name: "Egu", scope: !3483, file: !71, line: 247, type: !6)
!3563 = !DILocalVariable(name: "Eka", scope: !3483, file: !71, line: 248, type: !6)
!3564 = !DILocalVariable(name: "Eke", scope: !3483, file: !71, line: 248, type: !6)
!3565 = !DILocalVariable(name: "Eki", scope: !3483, file: !71, line: 248, type: !6)
!3566 = !DILocalVariable(name: "Eko", scope: !3483, file: !71, line: 248, type: !6)
!3567 = !DILocalVariable(name: "Eku", scope: !3483, file: !71, line: 248, type: !6)
!3568 = !DILocalVariable(name: "Ema", scope: !3483, file: !71, line: 249, type: !6)
!3569 = !DILocalVariable(name: "Eme", scope: !3483, file: !71, line: 249, type: !6)
!3570 = !DILocalVariable(name: "Emi", scope: !3483, file: !71, line: 249, type: !6)
!3571 = !DILocalVariable(name: "Emo", scope: !3483, file: !71, line: 249, type: !6)
!3572 = !DILocalVariable(name: "Emu", scope: !3483, file: !71, line: 249, type: !6)
!3573 = !DILocalVariable(name: "Esa", scope: !3483, file: !71, line: 250, type: !6)
!3574 = !DILocalVariable(name: "Ese", scope: !3483, file: !71, line: 250, type: !6)
!3575 = !DILocalVariable(name: "Esi", scope: !3483, file: !71, line: 250, type: !6)
!3576 = !DILocalVariable(name: "Eso", scope: !3483, file: !71, line: 250, type: !6)
!3577 = !DILocalVariable(name: "Esu", scope: !3483, file: !71, line: 250, type: !6)
!3578 = !DILocation(line: 283, column: 19, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3541, file: !71, line: 279, column: 50)
!3580 = !DILocation(line: 283, column: 25, scope: !3579)
!3581 = !DILocation(line: 283, column: 31, scope: !3579)
!3582 = !DILocation(line: 283, column: 37, scope: !3579)
!3583 = !DILocation(line: 285, column: 19, scope: !3579)
!3584 = !DILocation(line: 285, column: 25, scope: !3579)
!3585 = !DILocation(line: 285, column: 31, scope: !3579)
!3586 = !DILocation(line: 285, column: 37, scope: !3579)
!3587 = !DILocation(line: 291, column: 20, scope: !3579)
!3588 = !DILocation(line: 291, column: 18, scope: !3579)
!3589 = !DILocation(line: 361, column: 13, scope: !3579)
!3590 = !DILocation(line: 362, column: 15, scope: !3579)
!3591 = !DILocation(line: 282, column: 19, scope: !3579)
!3592 = !DILocation(line: 282, column: 25, scope: !3579)
!3593 = !DILocation(line: 282, column: 31, scope: !3579)
!3594 = !DILocation(line: 282, column: 37, scope: !3579)
!3595 = !DILocation(line: 288, column: 20, scope: !3579)
!3596 = !DILocation(line: 288, column: 18, scope: !3579)
!3597 = !DILocation(line: 365, column: 13, scope: !3579)
!3598 = !DILocation(line: 366, column: 15, scope: !3579)
!3599 = !DILocation(line: 284, column: 19, scope: !3579)
!3600 = !DILocation(line: 284, column: 25, scope: !3579)
!3601 = !DILocation(line: 284, column: 31, scope: !3579)
!3602 = !DILocation(line: 284, column: 37, scope: !3579)
!3603 = !DILocation(line: 281, column: 19, scope: !3579)
!3604 = !DILocation(line: 281, column: 25, scope: !3579)
!3605 = !DILocation(line: 281, column: 31, scope: !3579)
!3606 = !DILocation(line: 281, column: 37, scope: !3579)
!3607 = !DILocation(line: 292, column: 20, scope: !3579)
!3608 = !DILocation(line: 292, column: 18, scope: !3579)
!3609 = !DILocation(line: 363, column: 13, scope: !3579)
!3610 = !DILocation(line: 364, column: 15, scope: !3579)
!3611 = !DILocation(line: 370, column: 23, scope: !3579)
!3612 = !DILocation(line: 370, column: 29, scope: !3579)
!3613 = !DILocation(line: 370, column: 19, scope: !3579)
!3614 = !DILocation(line: 290, column: 20, scope: !3579)
!3615 = !DILocation(line: 290, column: 18, scope: !3579)
!3616 = !DILocation(line: 298, column: 13, scope: !3579)
!3617 = !DILocation(line: 299, column: 15, scope: !3579)
!3618 = !DILocation(line: 289, column: 20, scope: !3579)
!3619 = !DILocation(line: 289, column: 18, scope: !3579)
!3620 = !DILocation(line: 296, column: 13, scope: !3579)
!3621 = !DILocation(line: 297, column: 15, scope: !3579)
!3622 = !DILocation(line: 304, column: 23, scope: !3579)
!3623 = !DILocation(line: 304, column: 29, scope: !3579)
!3624 = !DILocation(line: 305, column: 16, scope: !3579)
!3625 = !DILocation(line: 305, column: 13, scope: !3579)
!3626 = !DILocation(line: 294, column: 13, scope: !3579)
!3627 = !DILocation(line: 311, column: 13, scope: !3579)
!3628 = !DILocation(line: 312, column: 15, scope: !3579)
!3629 = !DILocation(line: 315, column: 13, scope: !3579)
!3630 = !DILocation(line: 316, column: 15, scope: !3579)
!3631 = !DILocation(line: 313, column: 13, scope: !3579)
!3632 = !DILocation(line: 314, column: 15, scope: !3579)
!3633 = !DILocation(line: 321, column: 23, scope: !3579)
!3634 = !DILocation(line: 321, column: 29, scope: !3579)
!3635 = !DILocation(line: 321, column: 19, scope: !3579)
!3636 = !DILocation(line: 376, column: 19, scope: !3579)
!3637 = !DILocation(line: 327, column: 13, scope: !3579)
!3638 = !DILocation(line: 328, column: 15, scope: !3579)
!3639 = !DILocation(line: 331, column: 13, scope: !3579)
!3640 = !DILocation(line: 332, column: 15, scope: !3579)
!3641 = !DILocation(line: 329, column: 13, scope: !3579)
!3642 = !DILocation(line: 330, column: 15, scope: !3579)
!3643 = !DILocation(line: 337, column: 23, scope: !3579)
!3644 = !DILocation(line: 337, column: 29, scope: !3579)
!3645 = !DILocation(line: 337, column: 19, scope: !3579)
!3646 = !DILocation(line: 376, column: 25, scope: !3579)
!3647 = !DILocation(line: 343, column: 13, scope: !3579)
!3648 = !DILocation(line: 344, column: 15, scope: !3579)
!3649 = !DILocation(line: 347, column: 13, scope: !3579)
!3650 = !DILocation(line: 348, column: 15, scope: !3579)
!3651 = !DILocation(line: 345, column: 13, scope: !3579)
!3652 = !DILocation(line: 346, column: 15, scope: !3579)
!3653 = !DILocation(line: 353, column: 23, scope: !3579)
!3654 = !DILocation(line: 353, column: 29, scope: !3579)
!3655 = !DILocation(line: 353, column: 19, scope: !3579)
!3656 = !DILocation(line: 376, column: 31, scope: !3579)
!3657 = !DILocation(line: 359, column: 13, scope: !3579)
!3658 = !DILocation(line: 360, column: 15, scope: !3579)
!3659 = !DILocation(line: 369, column: 23, scope: !3579)
!3660 = !DILocation(line: 369, column: 29, scope: !3579)
!3661 = !DILocation(line: 369, column: 19, scope: !3579)
!3662 = !DILocation(line: 376, column: 37, scope: !3579)
!3663 = !DILocation(line: 302, column: 13, scope: !3579)
!3664 = !DILocation(line: 303, column: 15, scope: !3579)
!3665 = !DILocation(line: 300, column: 13, scope: !3579)
!3666 = !DILocation(line: 301, column: 15, scope: !3579)
!3667 = !DILocation(line: 307, column: 23, scope: !3579)
!3668 = !DILocation(line: 307, column: 29, scope: !3579)
!3669 = !DILocation(line: 307, column: 19, scope: !3579)
!3670 = !DILocation(line: 319, column: 13, scope: !3579)
!3671 = !DILocation(line: 320, column: 15, scope: !3579)
!3672 = !DILocation(line: 317, column: 13, scope: !3579)
!3673 = !DILocation(line: 318, column: 15, scope: !3579)
!3674 = !DILocation(line: 323, column: 23, scope: !3579)
!3675 = !DILocation(line: 323, column: 29, scope: !3579)
!3676 = !DILocation(line: 323, column: 19, scope: !3579)
!3677 = !DILocation(line: 378, column: 19, scope: !3579)
!3678 = !DILocation(line: 335, column: 13, scope: !3579)
!3679 = !DILocation(line: 336, column: 15, scope: !3579)
!3680 = !DILocation(line: 333, column: 13, scope: !3579)
!3681 = !DILocation(line: 334, column: 15, scope: !3579)
!3682 = !DILocation(line: 339, column: 23, scope: !3579)
!3683 = !DILocation(line: 339, column: 29, scope: !3579)
!3684 = !DILocation(line: 339, column: 19, scope: !3579)
!3685 = !DILocation(line: 378, column: 25, scope: !3579)
!3686 = !DILocation(line: 351, column: 13, scope: !3579)
!3687 = !DILocation(line: 352, column: 15, scope: !3579)
!3688 = !DILocation(line: 349, column: 13, scope: !3579)
!3689 = !DILocation(line: 350, column: 15, scope: !3579)
!3690 = !DILocation(line: 355, column: 23, scope: !3579)
!3691 = !DILocation(line: 355, column: 29, scope: !3579)
!3692 = !DILocation(line: 355, column: 19, scope: !3579)
!3693 = !DILocation(line: 378, column: 31, scope: !3579)
!3694 = !DILocation(line: 367, column: 13, scope: !3579)
!3695 = !DILocation(line: 368, column: 15, scope: !3579)
!3696 = !DILocation(line: 371, column: 23, scope: !3579)
!3697 = !DILocation(line: 371, column: 29, scope: !3579)
!3698 = !DILocation(line: 371, column: 19, scope: !3579)
!3699 = !DILocation(line: 378, column: 37, scope: !3579)
!3700 = !DILocation(line: 384, column: 20, scope: !3579)
!3701 = !DILocation(line: 384, column: 18, scope: !3579)
!3702 = !DILocation(line: 462, column: 13, scope: !3579)
!3703 = !DILocation(line: 463, column: 15, scope: !3579)
!3704 = !DILocation(line: 324, column: 23, scope: !3579)
!3705 = !DILocation(line: 324, column: 29, scope: !3579)
!3706 = !DILocation(line: 324, column: 19, scope: !3579)
!3707 = !DILocation(line: 309, column: 23, scope: !3579)
!3708 = !DILocation(line: 309, column: 29, scope: !3579)
!3709 = !DILocation(line: 309, column: 19, scope: !3579)
!3710 = !DILocation(line: 325, column: 23, scope: !3579)
!3711 = !DILocation(line: 325, column: 29, scope: !3579)
!3712 = !DILocation(line: 325, column: 19, scope: !3579)
!3713 = !DILocation(line: 380, column: 19, scope: !3579)
!3714 = !DILocation(line: 341, column: 23, scope: !3579)
!3715 = !DILocation(line: 341, column: 29, scope: !3579)
!3716 = !DILocation(line: 341, column: 19, scope: !3579)
!3717 = !DILocation(line: 380, column: 25, scope: !3579)
!3718 = !DILocation(line: 357, column: 23, scope: !3579)
!3719 = !DILocation(line: 357, column: 29, scope: !3579)
!3720 = !DILocation(line: 357, column: 19, scope: !3579)
!3721 = !DILocation(line: 380, column: 31, scope: !3579)
!3722 = !DILocation(line: 373, column: 23, scope: !3579)
!3723 = !DILocation(line: 373, column: 29, scope: !3579)
!3724 = !DILocation(line: 373, column: 19, scope: !3579)
!3725 = !DILocation(line: 380, column: 37, scope: !3579)
!3726 = !DILocation(line: 386, column: 20, scope: !3579)
!3727 = !DILocation(line: 386, column: 18, scope: !3579)
!3728 = !DILocation(line: 456, column: 13, scope: !3579)
!3729 = !DILocation(line: 457, column: 15, scope: !3579)
!3730 = !DILocation(line: 306, column: 23, scope: !3579)
!3731 = !DILocation(line: 306, column: 29, scope: !3579)
!3732 = !DILocation(line: 306, column: 19, scope: !3579)
!3733 = !DILocation(line: 322, column: 23, scope: !3579)
!3734 = !DILocation(line: 322, column: 29, scope: !3579)
!3735 = !DILocation(line: 322, column: 19, scope: !3579)
!3736 = !DILocation(line: 377, column: 19, scope: !3579)
!3737 = !DILocation(line: 338, column: 23, scope: !3579)
!3738 = !DILocation(line: 338, column: 29, scope: !3579)
!3739 = !DILocation(line: 338, column: 19, scope: !3579)
!3740 = !DILocation(line: 377, column: 25, scope: !3579)
!3741 = !DILocation(line: 354, column: 23, scope: !3579)
!3742 = !DILocation(line: 354, column: 29, scope: !3579)
!3743 = !DILocation(line: 354, column: 19, scope: !3579)
!3744 = !DILocation(line: 377, column: 31, scope: !3579)
!3745 = !DILocation(line: 377, column: 37, scope: !3579)
!3746 = !DILocation(line: 308, column: 23, scope: !3579)
!3747 = !DILocation(line: 308, column: 29, scope: !3579)
!3748 = !DILocation(line: 308, column: 19, scope: !3579)
!3749 = !DILocation(line: 379, column: 19, scope: !3579)
!3750 = !DILocation(line: 340, column: 23, scope: !3579)
!3751 = !DILocation(line: 340, column: 29, scope: !3579)
!3752 = !DILocation(line: 340, column: 19, scope: !3579)
!3753 = !DILocation(line: 379, column: 25, scope: !3579)
!3754 = !DILocation(line: 356, column: 23, scope: !3579)
!3755 = !DILocation(line: 356, column: 29, scope: !3579)
!3756 = !DILocation(line: 356, column: 19, scope: !3579)
!3757 = !DILocation(line: 379, column: 31, scope: !3579)
!3758 = !DILocation(line: 372, column: 23, scope: !3579)
!3759 = !DILocation(line: 372, column: 29, scope: !3579)
!3760 = !DILocation(line: 372, column: 19, scope: !3579)
!3761 = !DILocation(line: 379, column: 37, scope: !3579)
!3762 = !DILocation(line: 385, column: 20, scope: !3579)
!3763 = !DILocation(line: 385, column: 18, scope: !3579)
!3764 = !DILocation(line: 454, column: 13, scope: !3579)
!3765 = !DILocation(line: 455, column: 15, scope: !3579)
!3766 = !DILocation(line: 468, column: 23, scope: !3579)
!3767 = !DILocation(line: 468, column: 29, scope: !3579)
!3768 = !DILocation(line: 468, column: 19, scope: !3579)
!3769 = !DILocation(line: 383, column: 20, scope: !3579)
!3770 = !DILocation(line: 383, column: 18, scope: !3579)
!3771 = !DILocation(line: 460, column: 13, scope: !3579)
!3772 = !DILocation(line: 461, column: 15, scope: !3579)
!3773 = !DILocation(line: 467, column: 23, scope: !3579)
!3774 = !DILocation(line: 467, column: 29, scope: !3579)
!3775 = !DILocation(line: 467, column: 19, scope: !3579)
!3776 = !DILocation(line: 387, column: 20, scope: !3579)
!3777 = !DILocation(line: 387, column: 18, scope: !3579)
!3778 = !DILocation(line: 458, column: 13, scope: !3579)
!3779 = !DILocation(line: 459, column: 15, scope: !3579)
!3780 = !DILocation(line: 466, column: 23, scope: !3579)
!3781 = !DILocation(line: 466, column: 29, scope: !3579)
!3782 = !DILocation(line: 466, column: 19, scope: !3579)
!3783 = !DILocation(line: 465, column: 23, scope: !3579)
!3784 = !DILocation(line: 465, column: 29, scope: !3579)
!3785 = !DILocation(line: 465, column: 19, scope: !3579)
!3786 = !DILocation(line: 464, column: 23, scope: !3579)
!3787 = !DILocation(line: 464, column: 29, scope: !3579)
!3788 = !DILocation(line: 464, column: 19, scope: !3579)
!3789 = !DILocation(line: 446, column: 13, scope: !3579)
!3790 = !DILocation(line: 447, column: 15, scope: !3579)
!3791 = !DILocation(line: 440, column: 13, scope: !3579)
!3792 = !DILocation(line: 441, column: 15, scope: !3579)
!3793 = !DILocation(line: 438, column: 13, scope: !3579)
!3794 = !DILocation(line: 439, column: 15, scope: !3579)
!3795 = !DILocation(line: 452, column: 23, scope: !3579)
!3796 = !DILocation(line: 452, column: 29, scope: !3579)
!3797 = !DILocation(line: 452, column: 19, scope: !3579)
!3798 = !DILocation(line: 444, column: 13, scope: !3579)
!3799 = !DILocation(line: 445, column: 15, scope: !3579)
!3800 = !DILocation(line: 451, column: 23, scope: !3579)
!3801 = !DILocation(line: 451, column: 29, scope: !3579)
!3802 = !DILocation(line: 451, column: 19, scope: !3579)
!3803 = !DILocation(line: 442, column: 13, scope: !3579)
!3804 = !DILocation(line: 443, column: 15, scope: !3579)
!3805 = !DILocation(line: 450, column: 23, scope: !3579)
!3806 = !DILocation(line: 450, column: 29, scope: !3579)
!3807 = !DILocation(line: 450, column: 19, scope: !3579)
!3808 = !DILocation(line: 449, column: 23, scope: !3579)
!3809 = !DILocation(line: 449, column: 29, scope: !3579)
!3810 = !DILocation(line: 449, column: 19, scope: !3579)
!3811 = !DILocation(line: 448, column: 23, scope: !3579)
!3812 = !DILocation(line: 448, column: 29, scope: !3579)
!3813 = !DILocation(line: 448, column: 19, scope: !3579)
!3814 = !DILocation(line: 430, column: 13, scope: !3579)
!3815 = !DILocation(line: 431, column: 15, scope: !3579)
!3816 = !DILocation(line: 424, column: 13, scope: !3579)
!3817 = !DILocation(line: 425, column: 15, scope: !3579)
!3818 = !DILocation(line: 422, column: 13, scope: !3579)
!3819 = !DILocation(line: 423, column: 15, scope: !3579)
!3820 = !DILocation(line: 436, column: 23, scope: !3579)
!3821 = !DILocation(line: 436, column: 29, scope: !3579)
!3822 = !DILocation(line: 436, column: 19, scope: !3579)
!3823 = !DILocation(line: 428, column: 13, scope: !3579)
!3824 = !DILocation(line: 429, column: 15, scope: !3579)
!3825 = !DILocation(line: 435, column: 23, scope: !3579)
!3826 = !DILocation(line: 435, column: 29, scope: !3579)
!3827 = !DILocation(line: 435, column: 19, scope: !3579)
!3828 = !DILocation(line: 426, column: 13, scope: !3579)
!3829 = !DILocation(line: 427, column: 15, scope: !3579)
!3830 = !DILocation(line: 434, column: 23, scope: !3579)
!3831 = !DILocation(line: 434, column: 29, scope: !3579)
!3832 = !DILocation(line: 434, column: 19, scope: !3579)
!3833 = !DILocation(line: 433, column: 23, scope: !3579)
!3834 = !DILocation(line: 433, column: 29, scope: !3579)
!3835 = !DILocation(line: 433, column: 19, scope: !3579)
!3836 = !DILocation(line: 432, column: 23, scope: !3579)
!3837 = !DILocation(line: 432, column: 29, scope: !3579)
!3838 = !DILocation(line: 432, column: 19, scope: !3579)
!3839 = !DILocation(line: 414, column: 13, scope: !3579)
!3840 = !DILocation(line: 415, column: 15, scope: !3579)
!3841 = !DILocation(line: 408, column: 13, scope: !3579)
!3842 = !DILocation(line: 409, column: 15, scope: !3579)
!3843 = !DILocation(line: 406, column: 13, scope: !3579)
!3844 = !DILocation(line: 407, column: 15, scope: !3579)
!3845 = !DILocation(line: 420, column: 23, scope: !3579)
!3846 = !DILocation(line: 420, column: 29, scope: !3579)
!3847 = !DILocation(line: 420, column: 19, scope: !3579)
!3848 = !DILocation(line: 412, column: 13, scope: !3579)
!3849 = !DILocation(line: 413, column: 15, scope: !3579)
!3850 = !DILocation(line: 419, column: 23, scope: !3579)
!3851 = !DILocation(line: 419, column: 29, scope: !3579)
!3852 = !DILocation(line: 419, column: 19, scope: !3579)
!3853 = !DILocation(line: 410, column: 13, scope: !3579)
!3854 = !DILocation(line: 411, column: 15, scope: !3579)
!3855 = !DILocation(line: 418, column: 23, scope: !3579)
!3856 = !DILocation(line: 418, column: 29, scope: !3579)
!3857 = !DILocation(line: 418, column: 19, scope: !3579)
!3858 = !DILocation(line: 417, column: 23, scope: !3579)
!3859 = !DILocation(line: 417, column: 29, scope: !3579)
!3860 = !DILocation(line: 417, column: 19, scope: !3579)
!3861 = !DILocation(line: 416, column: 23, scope: !3579)
!3862 = !DILocation(line: 416, column: 29, scope: !3579)
!3863 = !DILocation(line: 416, column: 19, scope: !3579)
!3864 = !DILocation(line: 397, column: 13, scope: !3579)
!3865 = !DILocation(line: 398, column: 15, scope: !3579)
!3866 = !DILocation(line: 391, column: 13, scope: !3579)
!3867 = !DILocation(line: 392, column: 15, scope: !3579)
!3868 = !DILocation(line: 389, column: 13, scope: !3579)
!3869 = !DILocation(line: 404, column: 23, scope: !3579)
!3870 = !DILocation(line: 404, column: 29, scope: !3579)
!3871 = !DILocation(line: 404, column: 19, scope: !3579)
!3872 = !DILocation(line: 395, column: 13, scope: !3579)
!3873 = !DILocation(line: 396, column: 15, scope: !3579)
!3874 = !DILocation(line: 403, column: 23, scope: !3579)
!3875 = !DILocation(line: 403, column: 29, scope: !3579)
!3876 = !DILocation(line: 403, column: 19, scope: !3579)
!3877 = !DILocation(line: 393, column: 13, scope: !3579)
!3878 = !DILocation(line: 394, column: 15, scope: !3579)
!3879 = !DILocation(line: 402, column: 23, scope: !3579)
!3880 = !DILocation(line: 402, column: 29, scope: !3579)
!3881 = !DILocation(line: 402, column: 19, scope: !3579)
!3882 = !DILocation(line: 401, column: 23, scope: !3579)
!3883 = !DILocation(line: 401, column: 29, scope: !3579)
!3884 = !DILocation(line: 401, column: 19, scope: !3579)
!3885 = !DILocation(line: 400, column: 45, scope: !3579)
!3886 = !DILocation(line: 400, column: 16, scope: !3579)
!3887 = !DILocation(line: 399, column: 23, scope: !3579)
!3888 = !DILocation(line: 399, column: 29, scope: !3579)
!3889 = !DILocation(line: 400, column: 13, scope: !3579)
!3890 = !DILocation(line: 279, column: 44, scope: !3541)
!3891 = !DILocation(line: 279, column: 5, scope: !3541)
!3892 = distinct !{!3892, !3542, !3893, !244}
!3893 = !DILocation(line: 469, column: 5, scope: !3538)
!3894 = !DILocation(line: 472, column: 14, scope: !3483)
!3895 = !DILocation(line: 473, column: 5, scope: !3483)
!3896 = !DILocation(line: 473, column: 14, scope: !3483)
!3897 = !DILocation(line: 474, column: 5, scope: !3483)
!3898 = !DILocation(line: 474, column: 14, scope: !3483)
!3899 = !DILocation(line: 475, column: 5, scope: !3483)
!3900 = !DILocation(line: 475, column: 14, scope: !3483)
!3901 = !DILocation(line: 476, column: 5, scope: !3483)
!3902 = !DILocation(line: 476, column: 14, scope: !3483)
!3903 = !DILocation(line: 477, column: 5, scope: !3483)
!3904 = !DILocation(line: 477, column: 14, scope: !3483)
!3905 = !DILocation(line: 478, column: 5, scope: !3483)
!3906 = !DILocation(line: 478, column: 14, scope: !3483)
!3907 = !DILocation(line: 479, column: 5, scope: !3483)
!3908 = !DILocation(line: 479, column: 14, scope: !3483)
!3909 = !DILocation(line: 480, column: 5, scope: !3483)
!3910 = !DILocation(line: 480, column: 14, scope: !3483)
!3911 = !DILocation(line: 481, column: 5, scope: !3483)
!3912 = !DILocation(line: 481, column: 14, scope: !3483)
!3913 = !DILocation(line: 482, column: 5, scope: !3483)
!3914 = !DILocation(line: 482, column: 15, scope: !3483)
!3915 = !DILocation(line: 483, column: 5, scope: !3483)
!3916 = !DILocation(line: 483, column: 15, scope: !3483)
!3917 = !DILocation(line: 484, column: 5, scope: !3483)
!3918 = !DILocation(line: 484, column: 15, scope: !3483)
!3919 = !DILocation(line: 485, column: 5, scope: !3483)
!3920 = !DILocation(line: 485, column: 15, scope: !3483)
!3921 = !DILocation(line: 486, column: 5, scope: !3483)
!3922 = !DILocation(line: 486, column: 15, scope: !3483)
!3923 = !DILocation(line: 487, column: 5, scope: !3483)
!3924 = !DILocation(line: 487, column: 15, scope: !3483)
!3925 = !DILocation(line: 488, column: 5, scope: !3483)
!3926 = !DILocation(line: 488, column: 15, scope: !3483)
!3927 = !DILocation(line: 489, column: 5, scope: !3483)
!3928 = !DILocation(line: 489, column: 15, scope: !3483)
!3929 = !DILocation(line: 490, column: 5, scope: !3483)
!3930 = !DILocation(line: 490, column: 15, scope: !3483)
!3931 = !DILocation(line: 491, column: 5, scope: !3483)
!3932 = !DILocation(line: 491, column: 15, scope: !3483)
!3933 = !DILocation(line: 492, column: 5, scope: !3483)
!3934 = !DILocation(line: 492, column: 15, scope: !3483)
!3935 = !DILocation(line: 493, column: 5, scope: !3483)
!3936 = !DILocation(line: 493, column: 15, scope: !3483)
!3937 = !DILocation(line: 494, column: 5, scope: !3483)
!3938 = !DILocation(line: 494, column: 15, scope: !3483)
!3939 = !DILocation(line: 495, column: 5, scope: !3483)
!3940 = !DILocation(line: 495, column: 15, scope: !3483)
!3941 = !DILocation(line: 496, column: 5, scope: !3483)
!3942 = !DILocation(line: 496, column: 15, scope: !3483)
!3943 = !DILocation(line: 497, column: 1, scope: !3483)
!3944 = distinct !DISubprogram(name: "shake128_inc_finalize", scope: !71, file: !71, line: 700, type: !3356, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3945 = !DILocalVariable(name: "state", arg: 1, scope: !3944, file: !71, line: 700, type: !3358)
!3946 = !DILocation(line: 0, scope: !3944)
!3947 = !DILocation(line: 701, column: 32, scope: !3944)
!3948 = !DILocation(line: 701, column: 5, scope: !3944)
!3949 = !DILocation(line: 702, column: 1, scope: !3944)
!3950 = distinct !DISubprogram(name: "keccak_inc_finalize", scope: !71, file: !71, line: 640, type: !3951, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{null, !5, !19, !12}
!3953 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3950, file: !71, line: 640, type: !5)
!3954 = !DILocation(line: 0, scope: !3950)
!3955 = !DILocalVariable(name: "r", arg: 2, scope: !3950, file: !71, line: 640, type: !19)
!3956 = !DILocalVariable(name: "p", arg: 3, scope: !3950, file: !71, line: 640, type: !12)
!3957 = !DILocation(line: 643, column: 30, scope: !3950)
!3958 = !DILocation(line: 643, column: 51, scope: !3950)
!3959 = !DILocation(line: 643, column: 48, scope: !3950)
!3960 = !DILocation(line: 643, column: 42, scope: !3950)
!3961 = !DILocation(line: 643, column: 21, scope: !3950)
!3962 = !DILocation(line: 643, column: 5, scope: !3950)
!3963 = !DILocation(line: 643, column: 27, scope: !3950)
!3964 = !DILocation(line: 644, column: 48, scope: !3950)
!3965 = !DILocation(line: 644, column: 42, scope: !3950)
!3966 = !DILocation(line: 644, column: 14, scope: !3950)
!3967 = !DILocation(line: 644, column: 19, scope: !3950)
!3968 = !DILocation(line: 644, column: 5, scope: !3950)
!3969 = !DILocation(line: 644, column: 25, scope: !3950)
!3970 = !DILocation(line: 645, column: 5, scope: !3950)
!3971 = !DILocation(line: 645, column: 15, scope: !3950)
!3972 = !DILocation(line: 646, column: 1, scope: !3950)
!3973 = distinct !DISubprogram(name: "shake128_inc_squeeze", scope: !71, file: !71, line: 704, type: !3974, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{null, !11, !15, !3358}
!3976 = !DILocalVariable(name: "output", arg: 1, scope: !3973, file: !71, line: 704, type: !11)
!3977 = !DILocation(line: 0, scope: !3973)
!3978 = !DILocalVariable(name: "outlen", arg: 2, scope: !3973, file: !71, line: 704, type: !15)
!3979 = !DILocalVariable(name: "state", arg: 3, scope: !3973, file: !71, line: 704, type: !3358)
!3980 = !DILocation(line: 705, column: 47, scope: !3973)
!3981 = !DILocation(line: 705, column: 5, scope: !3973)
!3982 = !DILocation(line: 706, column: 1, scope: !3973)
!3983 = distinct !DISubprogram(name: "keccak_inc_squeeze", scope: !71, file: !71, line: 661, type: !3984, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{null, !11, !15, !5, !19}
!3986 = !DILocalVariable(name: "h", arg: 1, scope: !3983, file: !71, line: 661, type: !11)
!3987 = !DILocation(line: 0, scope: !3983)
!3988 = !DILocalVariable(name: "outlen", arg: 2, scope: !3983, file: !71, line: 661, type: !15)
!3989 = !DILocalVariable(name: "s_inc", arg: 3, scope: !3983, file: !71, line: 662, type: !5)
!3990 = !DILocalVariable(name: "r", arg: 4, scope: !3983, file: !71, line: 662, type: !19)
!3991 = !DILocalVariable(name: "i", scope: !3983, file: !71, line: 663, type: !15)
!3992 = !DILocation(line: 666, column: 10, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3983, file: !71, line: 666, column: 5)
!3994 = !DILocation(line: 666, scope: !3993)
!3995 = !DILocation(line: 666, column: 19, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3993, file: !71, line: 666, column: 5)
!3997 = !DILocation(line: 666, column: 28, scope: !3996)
!3998 = !DILocation(line: 666, column: 31, scope: !3996)
!3999 = !DILocation(line: 666, column: 35, scope: !3996)
!4000 = !DILocation(line: 666, column: 33, scope: !3996)
!4001 = !DILocation(line: 666, column: 5, scope: !3993)
!4002 = !DILocation(line: 669, column: 33, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3996, file: !71, line: 666, column: 51)
!4004 = !DILocation(line: 669, column: 37, scope: !4003)
!4005 = !DILocation(line: 669, column: 35, scope: !4003)
!4006 = !DILocation(line: 669, column: 49, scope: !4003)
!4007 = !DILocation(line: 669, column: 47, scope: !4003)
!4008 = !DILocation(line: 669, column: 52, scope: !4003)
!4009 = !DILocation(line: 669, column: 26, scope: !4003)
!4010 = !DILocation(line: 669, column: 68, scope: !4003)
!4011 = !DILocation(line: 669, column: 72, scope: !4003)
!4012 = !DILocation(line: 669, column: 70, scope: !4003)
!4013 = !DILocation(line: 669, column: 84, scope: !4003)
!4014 = !DILocation(line: 669, column: 82, scope: !4003)
!4015 = !DILocation(line: 669, column: 64, scope: !4003)
!4016 = !DILocation(line: 669, column: 58, scope: !4003)
!4017 = !DILocation(line: 669, column: 16, scope: !4003)
!4018 = !DILocation(line: 669, column: 9, scope: !4003)
!4019 = !DILocation(line: 669, column: 14, scope: !4003)
!4020 = !DILocation(line: 666, column: 47, scope: !3996)
!4021 = !DILocation(line: 666, column: 5, scope: !3996)
!4022 = distinct !{!4022, !4001, !4023, !244}
!4023 = !DILocation(line: 670, column: 5, scope: !3993)
!4024 = !DILocation(line: 671, column: 7, scope: !3983)
!4025 = !DILocation(line: 672, column: 12, scope: !3983)
!4026 = !DILocation(line: 673, column: 18, scope: !3983)
!4027 = !DILocation(line: 673, column: 5, scope: !3983)
!4028 = !DILocation(line: 673, column: 15, scope: !3983)
!4029 = !DILocation(line: 676, column: 5, scope: !3983)
!4030 = !DILocation(line: 676, column: 19, scope: !3983)
!4031 = !DILocation(line: 677, column: 9, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !3983, file: !71, line: 676, column: 24)
!4033 = !DILocation(line: 679, column: 14, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4032, file: !71, line: 679, column: 9)
!4035 = !DILocation(line: 679, scope: !4034)
!4036 = !DILocation(line: 679, column: 32, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4034, file: !71, line: 679, column: 9)
!4038 = !DILocation(line: 679, column: 9, scope: !4034)
!4039 = !DILocation(line: 680, column: 38, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4037, file: !71, line: 679, column: 47)
!4041 = !DILocation(line: 680, column: 30, scope: !4040)
!4042 = !DILocation(line: 680, column: 50, scope: !4040)
!4043 = !DILocation(line: 680, column: 44, scope: !4040)
!4044 = !DILocation(line: 680, column: 20, scope: !4040)
!4045 = !DILocation(line: 680, column: 13, scope: !4040)
!4046 = !DILocation(line: 680, column: 18, scope: !4040)
!4047 = !DILocation(line: 679, column: 43, scope: !4037)
!4048 = !DILocation(line: 679, column: 9, scope: !4037)
!4049 = distinct !{!4049, !4038, !4050, !244}
!4050 = !DILocation(line: 681, column: 9, scope: !4034)
!4051 = !DILocation(line: 682, column: 11, scope: !4032)
!4052 = !DILocation(line: 683, column: 16, scope: !4032)
!4053 = !DILocation(line: 684, column: 23, scope: !4032)
!4054 = !DILocation(line: 684, column: 21, scope: !4032)
!4055 = !DILocation(line: 684, column: 9, scope: !4032)
!4056 = !DILocation(line: 684, column: 19, scope: !4032)
!4057 = distinct !{!4057, !4029, !4058, !244}
!4058 = !DILocation(line: 685, column: 5, scope: !3983)
!4059 = !DILocation(line: 686, column: 1, scope: !3983)
!4060 = distinct !DISubprogram(name: "shake128_inc_ctx_clone", scope: !71, file: !71, line: 708, type: !4061, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{null, !3358, !4063}
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 32)
!4064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3359)
!4065 = !DILocalVariable(name: "dest", arg: 1, scope: !4060, file: !71, line: 708, type: !3358)
!4066 = !DILocation(line: 0, scope: !4060)
!4067 = !DILocalVariable(name: "src", arg: 2, scope: !4060, file: !71, line: 708, type: !4063)
!4068 = !DILocation(line: 709, column: 17, scope: !4060)
!4069 = !DILocation(line: 709, column: 15, scope: !4060)
!4070 = !DILocation(line: 710, column: 19, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4060, file: !71, line: 710, column: 9)
!4072 = !DILocation(line: 711, column: 9, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4071, file: !71, line: 710, column: 28)
!4074 = !DILocation(line: 712, column: 5, scope: !4073)
!4075 = !DILocation(line: 713, column: 18, scope: !4060)
!4076 = !DILocation(line: 713, column: 28, scope: !4060)
!4077 = !DILocation(line: 713, column: 5, scope: !4060)
!4078 = !DILocation(line: 714, column: 1, scope: !4060)
!4079 = distinct !DISubprogram(name: "shake128_inc_ctx_release", scope: !71, file: !71, line: 716, type: !3356, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4080 = !DILocalVariable(name: "state", arg: 1, scope: !4079, file: !71, line: 716, type: !3358)
!4081 = !DILocation(line: 0, scope: !4079)
!4082 = !DILocation(line: 717, column: 17, scope: !4079)
!4083 = !DILocation(line: 717, column: 5, scope: !4079)
!4084 = !DILocation(line: 718, column: 1, scope: !4079)
!4085 = distinct !DISubprogram(name: "shake256_inc_init", scope: !71, file: !71, line: 720, type: !4086, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{null, !4088}
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 32)
!4089 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256incctx", file: !71, line: 41, baseType: !4090)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 39, size: 32, elements: !4091)
!4091 = !{!4092}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4090, file: !71, line: 40, baseType: !5, size: 32)
!4093 = !DILocalVariable(name: "state", arg: 1, scope: !4085, file: !71, line: 720, type: !4088)
!4094 = !DILocation(line: 0, scope: !4085)
!4095 = !DILocation(line: 721, column: 18, scope: !4085)
!4096 = !DILocation(line: 721, column: 16, scope: !4085)
!4097 = !DILocation(line: 722, column: 20, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4085, file: !71, line: 722, column: 9)
!4099 = !DILocation(line: 723, column: 9, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4098, file: !71, line: 722, column: 29)
!4101 = !DILocation(line: 724, column: 5, scope: !4100)
!4102 = !DILocation(line: 725, column: 28, scope: !4085)
!4103 = !DILocation(line: 725, column: 5, scope: !4085)
!4104 = !DILocation(line: 726, column: 1, scope: !4085)
!4105 = distinct !DISubprogram(name: "shake256_inc_absorb", scope: !71, file: !71, line: 728, type: !4106, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{null, !4088, !257, !15}
!4108 = !DILocalVariable(name: "state", arg: 1, scope: !4105, file: !71, line: 728, type: !4088)
!4109 = !DILocation(line: 0, scope: !4105)
!4110 = !DILocalVariable(name: "input", arg: 2, scope: !4105, file: !71, line: 728, type: !257)
!4111 = !DILocalVariable(name: "inlen", arg: 3, scope: !4105, file: !71, line: 728, type: !15)
!4112 = !DILocation(line: 729, column: 30, scope: !4105)
!4113 = !DILocation(line: 729, column: 5, scope: !4105)
!4114 = !DILocation(line: 730, column: 1, scope: !4105)
!4115 = distinct !DISubprogram(name: "shake256_inc_finalize", scope: !71, file: !71, line: 732, type: !4086, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4116 = !DILocalVariable(name: "state", arg: 1, scope: !4115, file: !71, line: 732, type: !4088)
!4117 = !DILocation(line: 0, scope: !4115)
!4118 = !DILocation(line: 733, column: 32, scope: !4115)
!4119 = !DILocation(line: 733, column: 5, scope: !4115)
!4120 = !DILocation(line: 734, column: 1, scope: !4115)
!4121 = distinct !DISubprogram(name: "shake256_inc_squeeze", scope: !71, file: !71, line: 736, type: !4122, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{null, !11, !15, !4088}
!4124 = !DILocalVariable(name: "output", arg: 1, scope: !4121, file: !71, line: 736, type: !11)
!4125 = !DILocation(line: 0, scope: !4121)
!4126 = !DILocalVariable(name: "outlen", arg: 2, scope: !4121, file: !71, line: 736, type: !15)
!4127 = !DILocalVariable(name: "state", arg: 3, scope: !4121, file: !71, line: 736, type: !4088)
!4128 = !DILocation(line: 737, column: 47, scope: !4121)
!4129 = !DILocation(line: 737, column: 5, scope: !4121)
!4130 = !DILocation(line: 738, column: 1, scope: !4121)
!4131 = distinct !DISubprogram(name: "shake256_inc_ctx_clone", scope: !71, file: !71, line: 740, type: !4132, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{null, !4088, !4134}
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 32)
!4135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4089)
!4136 = !DILocalVariable(name: "dest", arg: 1, scope: !4131, file: !71, line: 740, type: !4088)
!4137 = !DILocation(line: 0, scope: !4131)
!4138 = !DILocalVariable(name: "src", arg: 2, scope: !4131, file: !71, line: 740, type: !4134)
!4139 = !DILocation(line: 741, column: 17, scope: !4131)
!4140 = !DILocation(line: 741, column: 15, scope: !4131)
!4141 = !DILocation(line: 742, column: 19, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4131, file: !71, line: 742, column: 9)
!4143 = !DILocation(line: 743, column: 9, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4142, file: !71, line: 742, column: 28)
!4145 = !DILocation(line: 744, column: 5, scope: !4144)
!4146 = !DILocation(line: 745, column: 18, scope: !4131)
!4147 = !DILocation(line: 745, column: 28, scope: !4131)
!4148 = !DILocation(line: 745, column: 5, scope: !4131)
!4149 = !DILocation(line: 746, column: 1, scope: !4131)
!4150 = distinct !DISubprogram(name: "shake256_inc_ctx_release", scope: !71, file: !71, line: 748, type: !4086, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4151 = !DILocalVariable(name: "state", arg: 1, scope: !4150, file: !71, line: 748, type: !4088)
!4152 = !DILocation(line: 0, scope: !4150)
!4153 = !DILocation(line: 749, column: 17, scope: !4150)
!4154 = !DILocation(line: 749, column: 5, scope: !4150)
!4155 = !DILocation(line: 750, column: 1, scope: !4150)
!4156 = distinct !DISubprogram(name: "shake128_absorb", scope: !71, file: !71, line: 764, type: !4157, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{null, !4159, !257, !15}
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 32)
!4160 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128ctx", file: !71, line: 36, baseType: !4161)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 34, size: 32, elements: !4162)
!4162 = !{!4163}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4161, file: !71, line: 35, baseType: !5, size: 32)
!4164 = !DILocalVariable(name: "state", arg: 1, scope: !4156, file: !71, line: 764, type: !4159)
!4165 = !DILocation(line: 0, scope: !4156)
!4166 = !DILocalVariable(name: "input", arg: 2, scope: !4156, file: !71, line: 764, type: !257)
!4167 = !DILocalVariable(name: "inlen", arg: 3, scope: !4156, file: !71, line: 764, type: !15)
!4168 = !DILocation(line: 765, column: 18, scope: !4156)
!4169 = !DILocation(line: 765, column: 16, scope: !4156)
!4170 = !DILocation(line: 766, column: 20, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4156, file: !71, line: 766, column: 9)
!4172 = !DILocation(line: 767, column: 9, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4171, file: !71, line: 766, column: 29)
!4174 = !DILocation(line: 768, column: 5, scope: !4173)
!4175 = !DILocation(line: 769, column: 26, scope: !4156)
!4176 = !DILocation(line: 769, column: 5, scope: !4156)
!4177 = !DILocation(line: 770, column: 1, scope: !4156)
!4178 = distinct !DISubprogram(name: "keccak_absorb", scope: !71, file: !71, line: 512, type: !4179, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{null, !5, !19, !257, !15, !12}
!4181 = !DILocalVariable(name: "s", arg: 1, scope: !4178, file: !71, line: 512, type: !5)
!4182 = !DILocation(line: 0, scope: !4178)
!4183 = !DILocalVariable(name: "r", arg: 2, scope: !4178, file: !71, line: 512, type: !19)
!4184 = !DILocalVariable(name: "m", arg: 3, scope: !4178, file: !71, line: 512, type: !257)
!4185 = !DILocalVariable(name: "mlen", arg: 4, scope: !4178, file: !71, line: 513, type: !15)
!4186 = !DILocalVariable(name: "p", arg: 5, scope: !4178, file: !71, line: 513, type: !12)
!4187 = !DILocalVariable(name: "t", scope: !4178, file: !71, line: 515, type: !4188)
!4188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1600, elements: !4189)
!4189 = !{!4190}
!4190 = !DISubrange(count: 200)
!4191 = !DILocation(line: 515, column: 13, scope: !4178)
!4192 = !DILocalVariable(name: "i", scope: !4178, file: !71, line: 514, type: !15)
!4193 = !DILocation(line: 518, column: 10, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4178, file: !71, line: 518, column: 5)
!4195 = !DILocation(line: 518, scope: !4194)
!4196 = !DILocation(line: 518, column: 19, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4194, file: !71, line: 518, column: 5)
!4198 = !DILocation(line: 518, column: 5, scope: !4194)
!4199 = !DILocation(line: 522, column: 5, scope: !4178)
!4200 = !DILocation(line: 519, column: 9, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4197, file: !71, line: 518, column: 30)
!4202 = !DILocation(line: 519, column: 14, scope: !4201)
!4203 = !DILocation(line: 518, column: 25, scope: !4197)
!4204 = !DILocation(line: 518, column: 5, scope: !4197)
!4205 = distinct !{!4205, !4198, !4206, !244}
!4206 = !DILocation(line: 520, column: 5, scope: !4194)
!4207 = !DILocation(line: 522, column: 17, scope: !4178)
!4208 = !DILocation(line: 523, column: 9, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4210, file: !71, line: 523, column: 9)
!4210 = distinct !DILexicalBlock(scope: !4178, file: !71, line: 522, column: 23)
!4211 = !DILocation(line: 532, column: 5, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4178, file: !71, line: 532, column: 5)
!4213 = !DILocation(line: 523, scope: !4209)
!4214 = !DILocation(line: 523, column: 23, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4209, file: !71, line: 523, column: 9)
!4216 = !DILocation(line: 524, column: 34, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4215, file: !71, line: 523, column: 37)
!4218 = !DILocation(line: 524, column: 30, scope: !4217)
!4219 = !DILocation(line: 524, column: 21, scope: !4217)
!4220 = !DILocation(line: 524, column: 13, scope: !4217)
!4221 = !DILocation(line: 524, column: 18, scope: !4217)
!4222 = !DILocation(line: 523, column: 32, scope: !4215)
!4223 = !DILocation(line: 523, column: 9, scope: !4215)
!4224 = distinct !{!4224, !4208, !4225, !244}
!4225 = !DILocation(line: 525, column: 9, scope: !4209)
!4226 = !DILocation(line: 527, column: 9, scope: !4210)
!4227 = !DILocation(line: 528, column: 14, scope: !4210)
!4228 = !DILocation(line: 529, column: 11, scope: !4210)
!4229 = distinct !{!4229, !4199, !4230, !244}
!4230 = !DILocation(line: 530, column: 5, scope: !4178)
!4231 = !DILocation(line: 532, scope: !4212)
!4232 = !DILocation(line: 532, column: 19, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4212, file: !71, line: 532, column: 5)
!4234 = !DILocation(line: 535, column: 5, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4178, file: !71, line: 535, column: 5)
!4236 = !DILocation(line: 533, column: 9, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4233, file: !71, line: 532, column: 29)
!4238 = !DILocation(line: 533, column: 14, scope: !4237)
!4239 = !DILocation(line: 532, column: 24, scope: !4233)
!4240 = !DILocation(line: 532, column: 5, scope: !4233)
!4241 = distinct !{!4241, !4211, !4242, !244}
!4242 = !DILocation(line: 534, column: 5, scope: !4212)
!4243 = !DILocation(line: 535, scope: !4235)
!4244 = !DILocation(line: 535, column: 19, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4235, file: !71, line: 535, column: 5)
!4246 = !DILocation(line: 536, column: 16, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4245, file: !71, line: 535, column: 32)
!4248 = !DILocation(line: 536, column: 9, scope: !4247)
!4249 = !DILocation(line: 536, column: 14, scope: !4247)
!4250 = !DILocation(line: 535, column: 27, scope: !4245)
!4251 = !DILocation(line: 535, column: 5, scope: !4245)
!4252 = distinct !{!4252, !4234, !4253, !244}
!4253 = !DILocation(line: 537, column: 5, scope: !4235)
!4254 = !DILocation(line: 538, column: 5, scope: !4178)
!4255 = !DILocation(line: 538, column: 10, scope: !4178)
!4256 = !DILocation(line: 539, column: 9, scope: !4178)
!4257 = !DILocation(line: 539, column: 5, scope: !4178)
!4258 = !DILocation(line: 539, column: 14, scope: !4178)
!4259 = !DILocation(line: 540, column: 10, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4178, file: !71, line: 540, column: 5)
!4261 = !DILocation(line: 540, scope: !4260)
!4262 = !DILocation(line: 540, column: 19, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4260, file: !71, line: 540, column: 5)
!4264 = !DILocation(line: 540, column: 5, scope: !4260)
!4265 = !DILocation(line: 541, column: 30, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4263, file: !71, line: 540, column: 33)
!4267 = !DILocation(line: 541, column: 26, scope: !4266)
!4268 = !DILocation(line: 541, column: 17, scope: !4266)
!4269 = !DILocation(line: 541, column: 9, scope: !4266)
!4270 = !DILocation(line: 541, column: 14, scope: !4266)
!4271 = !DILocation(line: 540, column: 28, scope: !4263)
!4272 = !DILocation(line: 540, column: 5, scope: !4263)
!4273 = distinct !{!4273, !4264, !4274, !244}
!4274 = !DILocation(line: 542, column: 5, scope: !4260)
!4275 = !DILocation(line: 543, column: 1, scope: !4178)
!4276 = distinct !DISubprogram(name: "load64", scope: !71, file: !71, line: 190, type: !4277, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!6, !257}
!4279 = !DILocalVariable(name: "x", arg: 1, scope: !4276, file: !71, line: 190, type: !257)
!4280 = !DILocation(line: 0, scope: !4276)
!4281 = !DILocalVariable(name: "r", scope: !4276, file: !71, line: 191, type: !6)
!4282 = !DILocalVariable(name: "i", scope: !4283, file: !71, line: 192, type: !15)
!4283 = distinct !DILexicalBlock(scope: !4276, file: !71, line: 192, column: 5)
!4284 = !DILocation(line: 0, scope: !4283)
!4285 = !DILocation(line: 192, column: 10, scope: !4283)
!4286 = !DILocation(line: 192, scope: !4283)
!4287 = !DILocation(line: 192, column: 26, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4283, file: !71, line: 192, column: 5)
!4289 = !DILocation(line: 192, column: 5, scope: !4283)
!4290 = !DILocation(line: 193, column: 24, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4288, file: !71, line: 192, column: 36)
!4292 = !DILocation(line: 193, column: 14, scope: !4291)
!4293 = !DILocation(line: 193, column: 34, scope: !4291)
!4294 = !DILocation(line: 193, column: 29, scope: !4291)
!4295 = !DILocation(line: 193, column: 11, scope: !4291)
!4296 = !DILocation(line: 192, column: 31, scope: !4288)
!4297 = !DILocation(line: 192, column: 5, scope: !4288)
!4298 = distinct !{!4298, !4289, !4299, !244}
!4299 = !DILocation(line: 194, column: 5, scope: !4283)
!4300 = !DILocation(line: 196, column: 5, scope: !4276)
!4301 = distinct !DISubprogram(name: "shake128_squeezeblocks", scope: !71, file: !71, line: 784, type: !4302, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{null, !11, !15, !4159}
!4304 = !DILocalVariable(name: "output", arg: 1, scope: !4301, file: !71, line: 784, type: !11)
!4305 = !DILocation(line: 0, scope: !4301)
!4306 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4301, file: !71, line: 784, type: !15)
!4307 = !DILocalVariable(name: "state", arg: 3, scope: !4301, file: !71, line: 784, type: !4159)
!4308 = !DILocation(line: 785, column: 50, scope: !4301)
!4309 = !DILocation(line: 785, column: 5, scope: !4301)
!4310 = !DILocation(line: 786, column: 1, scope: !4301)
!4311 = distinct !DISubprogram(name: "keccak_squeezeblocks", scope: !71, file: !71, line: 558, type: !3984, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4312 = !DILocalVariable(name: "h", arg: 1, scope: !4311, file: !71, line: 558, type: !11)
!4313 = !DILocation(line: 0, scope: !4311)
!4314 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4311, file: !71, line: 558, type: !15)
!4315 = !DILocalVariable(name: "s", arg: 3, scope: !4311, file: !71, line: 559, type: !5)
!4316 = !DILocalVariable(name: "r", arg: 4, scope: !4311, file: !71, line: 559, type: !19)
!4317 = !DILocation(line: 560, column: 5, scope: !4311)
!4318 = !DILocation(line: 560, column: 20, scope: !4311)
!4319 = !DILocation(line: 561, column: 9, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4311, file: !71, line: 560, column: 25)
!4321 = !DILocalVariable(name: "i", scope: !4322, file: !71, line: 562, type: !15)
!4322 = distinct !DILexicalBlock(scope: !4320, file: !71, line: 562, column: 9)
!4323 = !DILocation(line: 0, scope: !4322)
!4324 = !DILocation(line: 562, column: 14, scope: !4322)
!4325 = !DILocation(line: 562, scope: !4322)
!4326 = !DILocation(line: 562, column: 30, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4322, file: !71, line: 562, column: 9)
!4328 = !DILocation(line: 562, column: 9, scope: !4322)
!4329 = !DILocation(line: 563, column: 27, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4327, file: !71, line: 562, column: 47)
!4331 = !DILocation(line: 563, column: 23, scope: !4330)
!4332 = !DILocation(line: 563, column: 32, scope: !4330)
!4333 = !DILocation(line: 563, column: 13, scope: !4330)
!4334 = !DILocation(line: 562, column: 43, scope: !4327)
!4335 = !DILocation(line: 562, column: 9, scope: !4327)
!4336 = distinct !{!4336, !4328, !4337, !244}
!4337 = !DILocation(line: 564, column: 9, scope: !4322)
!4338 = !DILocation(line: 565, column: 11, scope: !4320)
!4339 = !DILocation(line: 566, column: 16, scope: !4320)
!4340 = distinct !{!4340, !4317, !4341, !244}
!4341 = !DILocation(line: 567, column: 5, scope: !4311)
!4342 = !DILocation(line: 568, column: 1, scope: !4311)
!4343 = distinct !DISubprogram(name: "store64", scope: !71, file: !71, line: 207, type: !4344, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{null, !11, !6}
!4346 = !DILocalVariable(name: "x", arg: 1, scope: !4343, file: !71, line: 207, type: !11)
!4347 = !DILocation(line: 0, scope: !4343)
!4348 = !DILocalVariable(name: "u", arg: 2, scope: !4343, file: !71, line: 207, type: !6)
!4349 = !DILocalVariable(name: "i", scope: !4350, file: !71, line: 208, type: !15)
!4350 = distinct !DILexicalBlock(scope: !4343, file: !71, line: 208, column: 5)
!4351 = !DILocation(line: 0, scope: !4350)
!4352 = !DILocation(line: 208, column: 10, scope: !4350)
!4353 = !DILocation(line: 208, scope: !4350)
!4354 = !DILocation(line: 208, column: 26, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4350, file: !71, line: 208, column: 5)
!4356 = !DILocation(line: 208, column: 5, scope: !4350)
!4357 = !DILocation(line: 209, column: 34, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4355, file: !71, line: 208, column: 36)
!4359 = !DILocation(line: 209, column: 29, scope: !4358)
!4360 = !DILocation(line: 209, column: 16, scope: !4358)
!4361 = !DILocation(line: 209, column: 9, scope: !4358)
!4362 = !DILocation(line: 209, column: 14, scope: !4358)
!4363 = !DILocation(line: 208, column: 31, scope: !4355)
!4364 = !DILocation(line: 208, column: 5, scope: !4355)
!4365 = distinct !{!4365, !4356, !4366, !244}
!4366 = !DILocation(line: 210, column: 5, scope: !4350)
!4367 = !DILocation(line: 211, column: 1, scope: !4343)
!4368 = distinct !DISubprogram(name: "shake128_ctx_clone", scope: !71, file: !71, line: 788, type: !4369, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{null, !4159, !4371}
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 32)
!4372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4160)
!4373 = !DILocalVariable(name: "dest", arg: 1, scope: !4368, file: !71, line: 788, type: !4159)
!4374 = !DILocation(line: 0, scope: !4368)
!4375 = !DILocalVariable(name: "src", arg: 2, scope: !4368, file: !71, line: 788, type: !4371)
!4376 = !DILocation(line: 789, column: 17, scope: !4368)
!4377 = !DILocation(line: 789, column: 15, scope: !4368)
!4378 = !DILocation(line: 790, column: 19, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4368, file: !71, line: 790, column: 9)
!4380 = !DILocation(line: 791, column: 9, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4379, file: !71, line: 790, column: 28)
!4382 = !DILocation(line: 792, column: 5, scope: !4381)
!4383 = !DILocation(line: 793, column: 18, scope: !4368)
!4384 = !DILocation(line: 793, column: 28, scope: !4368)
!4385 = !DILocation(line: 793, column: 5, scope: !4368)
!4386 = !DILocation(line: 794, column: 1, scope: !4368)
!4387 = distinct !DISubprogram(name: "shake128_ctx_release", scope: !71, file: !71, line: 797, type: !4388, scopeLine: 797, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{null, !4159}
!4390 = !DILocalVariable(name: "state", arg: 1, scope: !4387, file: !71, line: 797, type: !4159)
!4391 = !DILocation(line: 0, scope: !4387)
!4392 = !DILocation(line: 798, column: 17, scope: !4387)
!4393 = !DILocation(line: 798, column: 5, scope: !4387)
!4394 = !DILocation(line: 799, column: 1, scope: !4387)
!4395 = distinct !DISubprogram(name: "shake256_absorb", scope: !71, file: !71, line: 812, type: !4396, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{null, !4398, !257, !15}
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 32)
!4399 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256ctx", file: !71, line: 46, baseType: !4400)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 44, size: 32, elements: !4401)
!4401 = !{!4402}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4400, file: !71, line: 45, baseType: !5, size: 32)
!4403 = !DILocalVariable(name: "state", arg: 1, scope: !4395, file: !71, line: 812, type: !4398)
!4404 = !DILocation(line: 0, scope: !4395)
!4405 = !DILocalVariable(name: "input", arg: 2, scope: !4395, file: !71, line: 812, type: !257)
!4406 = !DILocalVariable(name: "inlen", arg: 3, scope: !4395, file: !71, line: 812, type: !15)
!4407 = !DILocation(line: 813, column: 18, scope: !4395)
!4408 = !DILocation(line: 813, column: 16, scope: !4395)
!4409 = !DILocation(line: 814, column: 20, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4395, file: !71, line: 814, column: 9)
!4411 = !DILocation(line: 815, column: 9, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4410, file: !71, line: 814, column: 29)
!4413 = !DILocation(line: 816, column: 5, scope: !4412)
!4414 = !DILocation(line: 817, column: 26, scope: !4395)
!4415 = !DILocation(line: 817, column: 5, scope: !4395)
!4416 = !DILocation(line: 818, column: 1, scope: !4395)
!4417 = distinct !DISubprogram(name: "shake256_squeezeblocks", scope: !71, file: !71, line: 832, type: !4418, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{null, !11, !15, !4398}
!4420 = !DILocalVariable(name: "output", arg: 1, scope: !4417, file: !71, line: 832, type: !11)
!4421 = !DILocation(line: 0, scope: !4417)
!4422 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4417, file: !71, line: 832, type: !15)
!4423 = !DILocalVariable(name: "state", arg: 3, scope: !4417, file: !71, line: 832, type: !4398)
!4424 = !DILocation(line: 833, column: 50, scope: !4417)
!4425 = !DILocation(line: 833, column: 5, scope: !4417)
!4426 = !DILocation(line: 834, column: 1, scope: !4417)
!4427 = distinct !DISubprogram(name: "shake256_ctx_clone", scope: !71, file: !71, line: 836, type: !4428, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{null, !4398, !4430}
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 32)
!4431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4399)
!4432 = !DILocalVariable(name: "dest", arg: 1, scope: !4427, file: !71, line: 836, type: !4398)
!4433 = !DILocation(line: 0, scope: !4427)
!4434 = !DILocalVariable(name: "src", arg: 2, scope: !4427, file: !71, line: 836, type: !4430)
!4435 = !DILocation(line: 837, column: 17, scope: !4427)
!4436 = !DILocation(line: 837, column: 15, scope: !4427)
!4437 = !DILocation(line: 838, column: 19, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4427, file: !71, line: 838, column: 9)
!4439 = !DILocation(line: 839, column: 9, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4438, file: !71, line: 838, column: 28)
!4441 = !DILocation(line: 840, column: 5, scope: !4440)
!4442 = !DILocation(line: 841, column: 18, scope: !4427)
!4443 = !DILocation(line: 841, column: 28, scope: !4427)
!4444 = !DILocation(line: 841, column: 5, scope: !4427)
!4445 = !DILocation(line: 842, column: 1, scope: !4427)
!4446 = distinct !DISubprogram(name: "shake256_ctx_release", scope: !71, file: !71, line: 845, type: !4447, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{null, !4398}
!4449 = !DILocalVariable(name: "state", arg: 1, scope: !4446, file: !71, line: 845, type: !4398)
!4450 = !DILocation(line: 0, scope: !4446)
!4451 = !DILocation(line: 846, column: 17, scope: !4446)
!4452 = !DILocation(line: 846, column: 5, scope: !4446)
!4453 = !DILocation(line: 847, column: 1, scope: !4446)
!4454 = distinct !DISubprogram(name: "shake128", scope: !71, file: !71, line: 859, type: !4455, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{null, !11, !15, !257, !15}
!4457 = !DILocalVariable(name: "output", arg: 1, scope: !4454, file: !71, line: 859, type: !11)
!4458 = !DILocation(line: 0, scope: !4454)
!4459 = !DILocalVariable(name: "outlen", arg: 2, scope: !4454, file: !71, line: 859, type: !15)
!4460 = !DILocalVariable(name: "input", arg: 3, scope: !4454, file: !71, line: 860, type: !257)
!4461 = !DILocalVariable(name: "inlen", arg: 4, scope: !4454, file: !71, line: 860, type: !15)
!4462 = !DILocation(line: 861, column: 29, scope: !4454)
!4463 = !DILocalVariable(name: "nblocks", scope: !4454, file: !71, line: 861, type: !15)
!4464 = !DILocalVariable(name: "t", scope: !4454, file: !71, line: 862, type: !4465)
!4465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1344, elements: !4466)
!4466 = !{!4467}
!4467 = !DISubrange(count: 168)
!4468 = !DILocation(line: 862, column: 13, scope: !4454)
!4469 = !DILocalVariable(name: "s", scope: !4454, file: !71, line: 863, type: !4160)
!4470 = !DILocation(line: 863, column: 17, scope: !4454)
!4471 = !DILocation(line: 865, column: 5, scope: !4454)
!4472 = !DILocation(line: 866, column: 5, scope: !4454)
!4473 = !DILocation(line: 868, column: 23, scope: !4454)
!4474 = !DILocation(line: 868, column: 12, scope: !4454)
!4475 = !DILocation(line: 869, column: 23, scope: !4454)
!4476 = !DILocation(line: 869, column: 12, scope: !4454)
!4477 = !DILocation(line: 871, column: 9, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4454, file: !71, line: 871, column: 9)
!4479 = !DILocation(line: 872, column: 9, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4478, file: !71, line: 871, column: 17)
!4481 = !DILocalVariable(name: "i", scope: !4482, file: !71, line: 873, type: !15)
!4482 = distinct !DILexicalBlock(scope: !4480, file: !71, line: 873, column: 9)
!4483 = !DILocation(line: 0, scope: !4482)
!4484 = !DILocation(line: 873, column: 14, scope: !4482)
!4485 = !DILocation(line: 873, scope: !4482)
!4486 = !DILocation(line: 873, column: 30, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4482, file: !71, line: 873, column: 9)
!4488 = !DILocation(line: 873, column: 9, scope: !4482)
!4489 = !DILocation(line: 874, column: 25, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4487, file: !71, line: 873, column: 45)
!4491 = !DILocation(line: 874, column: 13, scope: !4490)
!4492 = !DILocation(line: 874, column: 23, scope: !4490)
!4493 = !DILocation(line: 873, column: 40, scope: !4487)
!4494 = !DILocation(line: 873, column: 9, scope: !4487)
!4495 = distinct !{!4495, !4488, !4496, !244}
!4496 = !DILocation(line: 875, column: 9, scope: !4482)
!4497 = !DILocation(line: 877, column: 5, scope: !4454)
!4498 = !DILocation(line: 878, column: 1, scope: !4454)
!4499 = distinct !DISubprogram(name: "shake256", scope: !71, file: !71, line: 890, type: !4455, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4500 = !DILocalVariable(name: "output", arg: 1, scope: !4499, file: !71, line: 890, type: !11)
!4501 = !DILocation(line: 0, scope: !4499)
!4502 = !DILocalVariable(name: "outlen", arg: 2, scope: !4499, file: !71, line: 890, type: !15)
!4503 = !DILocalVariable(name: "input", arg: 3, scope: !4499, file: !71, line: 891, type: !257)
!4504 = !DILocalVariable(name: "inlen", arg: 4, scope: !4499, file: !71, line: 891, type: !15)
!4505 = !DILocation(line: 892, column: 29, scope: !4499)
!4506 = !DILocalVariable(name: "nblocks", scope: !4499, file: !71, line: 892, type: !15)
!4507 = !DILocalVariable(name: "t", scope: !4499, file: !71, line: 893, type: !4508)
!4508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1088, elements: !4509)
!4509 = !{!4510}
!4510 = !DISubrange(count: 136)
!4511 = !DILocation(line: 893, column: 13, scope: !4499)
!4512 = !DILocalVariable(name: "s", scope: !4499, file: !71, line: 894, type: !4399)
!4513 = !DILocation(line: 894, column: 17, scope: !4499)
!4514 = !DILocation(line: 896, column: 5, scope: !4499)
!4515 = !DILocation(line: 897, column: 5, scope: !4499)
!4516 = !DILocation(line: 899, column: 23, scope: !4499)
!4517 = !DILocation(line: 899, column: 12, scope: !4499)
!4518 = !DILocation(line: 900, column: 23, scope: !4499)
!4519 = !DILocation(line: 900, column: 12, scope: !4499)
!4520 = !DILocation(line: 902, column: 9, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4499, file: !71, line: 902, column: 9)
!4522 = !DILocation(line: 903, column: 9, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4521, file: !71, line: 902, column: 17)
!4524 = !DILocalVariable(name: "i", scope: !4525, file: !71, line: 904, type: !15)
!4525 = distinct !DILexicalBlock(scope: !4523, file: !71, line: 904, column: 9)
!4526 = !DILocation(line: 0, scope: !4525)
!4527 = !DILocation(line: 904, column: 14, scope: !4525)
!4528 = !DILocation(line: 904, scope: !4525)
!4529 = !DILocation(line: 904, column: 30, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4525, file: !71, line: 904, column: 9)
!4531 = !DILocation(line: 904, column: 9, scope: !4525)
!4532 = !DILocation(line: 905, column: 25, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4530, file: !71, line: 904, column: 45)
!4534 = !DILocation(line: 905, column: 13, scope: !4533)
!4535 = !DILocation(line: 905, column: 23, scope: !4533)
!4536 = !DILocation(line: 904, column: 40, scope: !4530)
!4537 = !DILocation(line: 904, column: 9, scope: !4530)
!4538 = distinct !{!4538, !4531, !4539, !244}
!4539 = !DILocation(line: 906, column: 9, scope: !4525)
!4540 = !DILocation(line: 908, column: 5, scope: !4499)
!4541 = !DILocation(line: 909, column: 1, scope: !4499)
!4542 = distinct !DISubprogram(name: "sha3_256_inc_init", scope: !71, file: !71, line: 911, type: !4543, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{null, !4545}
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 32)
!4546 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_256incctx", file: !71, line: 51, baseType: !4547)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 49, size: 32, elements: !4548)
!4548 = !{!4549}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4547, file: !71, line: 50, baseType: !5, size: 32)
!4550 = !DILocalVariable(name: "state", arg: 1, scope: !4542, file: !71, line: 911, type: !4545)
!4551 = !DILocation(line: 0, scope: !4542)
!4552 = !DILocation(line: 912, column: 18, scope: !4542)
!4553 = !DILocation(line: 912, column: 16, scope: !4542)
!4554 = !DILocation(line: 913, column: 20, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4542, file: !71, line: 913, column: 9)
!4556 = !DILocation(line: 914, column: 9, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4555, file: !71, line: 913, column: 29)
!4558 = !DILocation(line: 915, column: 5, scope: !4557)
!4559 = !DILocation(line: 916, column: 28, scope: !4542)
!4560 = !DILocation(line: 916, column: 5, scope: !4542)
!4561 = !DILocation(line: 917, column: 1, scope: !4542)
!4562 = distinct !DISubprogram(name: "sha3_256_inc_ctx_clone", scope: !71, file: !71, line: 919, type: !4563, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{null, !4545, !4565}
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 32)
!4566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4546)
!4567 = !DILocalVariable(name: "dest", arg: 1, scope: !4562, file: !71, line: 919, type: !4545)
!4568 = !DILocation(line: 0, scope: !4562)
!4569 = !DILocalVariable(name: "src", arg: 2, scope: !4562, file: !71, line: 919, type: !4565)
!4570 = !DILocation(line: 920, column: 17, scope: !4562)
!4571 = !DILocation(line: 920, column: 15, scope: !4562)
!4572 = !DILocation(line: 921, column: 19, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4562, file: !71, line: 921, column: 9)
!4574 = !DILocation(line: 922, column: 9, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4573, file: !71, line: 921, column: 28)
!4576 = !DILocation(line: 923, column: 5, scope: !4575)
!4577 = !DILocation(line: 924, column: 18, scope: !4562)
!4578 = !DILocation(line: 924, column: 28, scope: !4562)
!4579 = !DILocation(line: 924, column: 5, scope: !4562)
!4580 = !DILocation(line: 925, column: 1, scope: !4562)
!4581 = distinct !DISubprogram(name: "sha3_256_inc_ctx_release", scope: !71, file: !71, line: 927, type: !4543, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4582 = !DILocalVariable(name: "state", arg: 1, scope: !4581, file: !71, line: 927, type: !4545)
!4583 = !DILocation(line: 0, scope: !4581)
!4584 = !DILocation(line: 928, column: 17, scope: !4581)
!4585 = !DILocation(line: 928, column: 5, scope: !4581)
!4586 = !DILocation(line: 929, column: 1, scope: !4581)
!4587 = distinct !DISubprogram(name: "sha3_256_inc_absorb", scope: !71, file: !71, line: 931, type: !4588, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{null, !4545, !257, !15}
!4590 = !DILocalVariable(name: "state", arg: 1, scope: !4587, file: !71, line: 931, type: !4545)
!4591 = !DILocation(line: 0, scope: !4587)
!4592 = !DILocalVariable(name: "input", arg: 2, scope: !4587, file: !71, line: 931, type: !257)
!4593 = !DILocalVariable(name: "inlen", arg: 3, scope: !4587, file: !71, line: 931, type: !15)
!4594 = !DILocation(line: 932, column: 30, scope: !4587)
!4595 = !DILocation(line: 932, column: 5, scope: !4587)
!4596 = !DILocation(line: 933, column: 1, scope: !4587)
!4597 = distinct !DISubprogram(name: "sha3_256_inc_finalize", scope: !71, file: !71, line: 935, type: !4598, scopeLine: 935, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{null, !11, !4545}
!4600 = !DILocalVariable(name: "output", arg: 1, scope: !4597, file: !71, line: 935, type: !11)
!4601 = !DILocation(line: 0, scope: !4597)
!4602 = !DILocalVariable(name: "state", arg: 2, scope: !4597, file: !71, line: 935, type: !4545)
!4603 = !DILocalVariable(name: "t", scope: !4597, file: !71, line: 936, type: !4508)
!4604 = !DILocation(line: 936, column: 13, scope: !4597)
!4605 = !DILocation(line: 937, column: 32, scope: !4597)
!4606 = !DILocation(line: 937, column: 5, scope: !4597)
!4607 = !DILocation(line: 939, column: 39, scope: !4597)
!4608 = !DILocation(line: 939, column: 5, scope: !4597)
!4609 = !DILocation(line: 941, column: 5, scope: !4597)
!4610 = !DILocalVariable(name: "i", scope: !4611, file: !71, line: 943, type: !15)
!4611 = distinct !DILexicalBlock(scope: !4597, file: !71, line: 943, column: 5)
!4612 = !DILocation(line: 0, scope: !4611)
!4613 = !DILocation(line: 943, column: 10, scope: !4611)
!4614 = !DILocation(line: 943, scope: !4611)
!4615 = !DILocation(line: 943, column: 26, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4611, file: !71, line: 943, column: 5)
!4617 = !DILocation(line: 943, column: 5, scope: !4611)
!4618 = !DILocation(line: 944, column: 21, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4616, file: !71, line: 943, column: 37)
!4620 = !DILocation(line: 944, column: 9, scope: !4619)
!4621 = !DILocation(line: 944, column: 19, scope: !4619)
!4622 = !DILocation(line: 943, column: 33, scope: !4616)
!4623 = !DILocation(line: 943, column: 5, scope: !4616)
!4624 = distinct !{!4624, !4617, !4625, !244}
!4625 = !DILocation(line: 945, column: 5, scope: !4611)
!4626 = !DILocation(line: 946, column: 1, scope: !4597)
!4627 = distinct !DISubprogram(name: "sha3_256", scope: !71, file: !71, line: 957, type: !4628, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{null, !11, !257, !15}
!4630 = !DILocalVariable(name: "output", arg: 1, scope: !4627, file: !71, line: 957, type: !11)
!4631 = !DILocation(line: 0, scope: !4627)
!4632 = !DILocalVariable(name: "input", arg: 2, scope: !4627, file: !71, line: 957, type: !257)
!4633 = !DILocalVariable(name: "inlen", arg: 3, scope: !4627, file: !71, line: 957, type: !15)
!4634 = !DILocalVariable(name: "s", scope: !4627, file: !71, line: 958, type: !4635)
!4635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1600, elements: !4636)
!4636 = !{!4637}
!4637 = !DISubrange(count: 25)
!4638 = !DILocation(line: 958, column: 14, scope: !4627)
!4639 = !DILocalVariable(name: "t", scope: !4627, file: !71, line: 959, type: !4508)
!4640 = !DILocation(line: 959, column: 13, scope: !4627)
!4641 = !DILocation(line: 962, column: 5, scope: !4627)
!4642 = !DILocation(line: 965, column: 5, scope: !4627)
!4643 = !DILocalVariable(name: "i", scope: !4644, file: !71, line: 967, type: !15)
!4644 = distinct !DILexicalBlock(scope: !4627, file: !71, line: 967, column: 5)
!4645 = !DILocation(line: 0, scope: !4644)
!4646 = !DILocation(line: 967, column: 10, scope: !4644)
!4647 = !DILocation(line: 967, scope: !4644)
!4648 = !DILocation(line: 967, column: 26, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4644, file: !71, line: 967, column: 5)
!4650 = !DILocation(line: 967, column: 5, scope: !4644)
!4651 = !DILocation(line: 968, column: 21, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4649, file: !71, line: 967, column: 37)
!4653 = !DILocation(line: 968, column: 9, scope: !4652)
!4654 = !DILocation(line: 968, column: 19, scope: !4652)
!4655 = !DILocation(line: 967, column: 33, scope: !4649)
!4656 = !DILocation(line: 967, column: 5, scope: !4649)
!4657 = distinct !{!4657, !4650, !4658, !244}
!4658 = !DILocation(line: 969, column: 5, scope: !4644)
!4659 = !DILocation(line: 970, column: 1, scope: !4627)
!4660 = distinct !DISubprogram(name: "sha3_384_inc_init", scope: !71, file: !71, line: 972, type: !4661, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{null, !4663}
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 32)
!4664 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_384incctx", file: !71, line: 56, baseType: !4665)
!4665 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 54, size: 32, elements: !4666)
!4666 = !{!4667}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4665, file: !71, line: 55, baseType: !5, size: 32)
!4668 = !DILocalVariable(name: "state", arg: 1, scope: !4660, file: !71, line: 972, type: !4663)
!4669 = !DILocation(line: 0, scope: !4660)
!4670 = !DILocation(line: 973, column: 18, scope: !4660)
!4671 = !DILocation(line: 973, column: 16, scope: !4660)
!4672 = !DILocation(line: 974, column: 20, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4660, file: !71, line: 974, column: 9)
!4674 = !DILocation(line: 975, column: 9, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4673, file: !71, line: 974, column: 29)
!4676 = !DILocation(line: 976, column: 5, scope: !4675)
!4677 = !DILocation(line: 977, column: 28, scope: !4660)
!4678 = !DILocation(line: 977, column: 5, scope: !4660)
!4679 = !DILocation(line: 978, column: 1, scope: !4660)
!4680 = distinct !DISubprogram(name: "sha3_384_inc_ctx_clone", scope: !71, file: !71, line: 980, type: !4681, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{null, !4663, !4683}
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 32)
!4684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4664)
!4685 = !DILocalVariable(name: "dest", arg: 1, scope: !4680, file: !71, line: 980, type: !4663)
!4686 = !DILocation(line: 0, scope: !4680)
!4687 = !DILocalVariable(name: "src", arg: 2, scope: !4680, file: !71, line: 980, type: !4683)
!4688 = !DILocation(line: 981, column: 17, scope: !4680)
!4689 = !DILocation(line: 981, column: 15, scope: !4680)
!4690 = !DILocation(line: 982, column: 19, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4680, file: !71, line: 982, column: 9)
!4692 = !DILocation(line: 983, column: 9, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4691, file: !71, line: 982, column: 28)
!4694 = !DILocation(line: 984, column: 5, scope: !4693)
!4695 = !DILocation(line: 985, column: 18, scope: !4680)
!4696 = !DILocation(line: 985, column: 28, scope: !4680)
!4697 = !DILocation(line: 985, column: 5, scope: !4680)
!4698 = !DILocation(line: 986, column: 1, scope: !4680)
!4699 = distinct !DISubprogram(name: "sha3_384_inc_absorb", scope: !71, file: !71, line: 988, type: !4700, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4700 = !DISubroutineType(types: !4701)
!4701 = !{null, !4663, !257, !15}
!4702 = !DILocalVariable(name: "state", arg: 1, scope: !4699, file: !71, line: 988, type: !4663)
!4703 = !DILocation(line: 0, scope: !4699)
!4704 = !DILocalVariable(name: "input", arg: 2, scope: !4699, file: !71, line: 988, type: !257)
!4705 = !DILocalVariable(name: "inlen", arg: 3, scope: !4699, file: !71, line: 988, type: !15)
!4706 = !DILocation(line: 989, column: 30, scope: !4699)
!4707 = !DILocation(line: 989, column: 5, scope: !4699)
!4708 = !DILocation(line: 990, column: 1, scope: !4699)
!4709 = distinct !DISubprogram(name: "sha3_384_inc_ctx_release", scope: !71, file: !71, line: 992, type: !4661, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4710 = !DILocalVariable(name: "state", arg: 1, scope: !4709, file: !71, line: 992, type: !4663)
!4711 = !DILocation(line: 0, scope: !4709)
!4712 = !DILocation(line: 993, column: 17, scope: !4709)
!4713 = !DILocation(line: 993, column: 5, scope: !4709)
!4714 = !DILocation(line: 994, column: 1, scope: !4709)
!4715 = distinct !DISubprogram(name: "sha3_384_inc_finalize", scope: !71, file: !71, line: 996, type: !4716, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{null, !11, !4663}
!4718 = !DILocalVariable(name: "output", arg: 1, scope: !4715, file: !71, line: 996, type: !11)
!4719 = !DILocation(line: 0, scope: !4715)
!4720 = !DILocalVariable(name: "state", arg: 2, scope: !4715, file: !71, line: 996, type: !4663)
!4721 = !DILocalVariable(name: "t", scope: !4715, file: !71, line: 997, type: !4722)
!4722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 832, elements: !4723)
!4723 = !{!4724}
!4724 = !DISubrange(count: 104)
!4725 = !DILocation(line: 997, column: 13, scope: !4715)
!4726 = !DILocation(line: 998, column: 32, scope: !4715)
!4727 = !DILocation(line: 998, column: 5, scope: !4715)
!4728 = !DILocation(line: 1000, column: 39, scope: !4715)
!4729 = !DILocation(line: 1000, column: 5, scope: !4715)
!4730 = !DILocation(line: 1002, column: 5, scope: !4715)
!4731 = !DILocalVariable(name: "i", scope: !4732, file: !71, line: 1004, type: !15)
!4732 = distinct !DILexicalBlock(scope: !4715, file: !71, line: 1004, column: 5)
!4733 = !DILocation(line: 0, scope: !4732)
!4734 = !DILocation(line: 1004, column: 10, scope: !4732)
!4735 = !DILocation(line: 1004, scope: !4732)
!4736 = !DILocation(line: 1004, column: 26, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4732, file: !71, line: 1004, column: 5)
!4738 = !DILocation(line: 1004, column: 5, scope: !4732)
!4739 = !DILocation(line: 1005, column: 21, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4737, file: !71, line: 1004, column: 37)
!4741 = !DILocation(line: 1005, column: 9, scope: !4740)
!4742 = !DILocation(line: 1005, column: 19, scope: !4740)
!4743 = !DILocation(line: 1004, column: 33, scope: !4737)
!4744 = !DILocation(line: 1004, column: 5, scope: !4737)
!4745 = distinct !{!4745, !4738, !4746, !244}
!4746 = !DILocation(line: 1006, column: 5, scope: !4732)
!4747 = !DILocation(line: 1007, column: 1, scope: !4715)
!4748 = distinct !DISubprogram(name: "sha3_384", scope: !71, file: !71, line: 1018, type: !4628, scopeLine: 1018, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4749 = !DILocalVariable(name: "output", arg: 1, scope: !4748, file: !71, line: 1018, type: !11)
!4750 = !DILocation(line: 0, scope: !4748)
!4751 = !DILocalVariable(name: "input", arg: 2, scope: !4748, file: !71, line: 1018, type: !257)
!4752 = !DILocalVariable(name: "inlen", arg: 3, scope: !4748, file: !71, line: 1018, type: !15)
!4753 = !DILocalVariable(name: "s", scope: !4748, file: !71, line: 1019, type: !4635)
!4754 = !DILocation(line: 1019, column: 14, scope: !4748)
!4755 = !DILocalVariable(name: "t", scope: !4748, file: !71, line: 1020, type: !4722)
!4756 = !DILocation(line: 1020, column: 13, scope: !4748)
!4757 = !DILocation(line: 1023, column: 5, scope: !4748)
!4758 = !DILocation(line: 1026, column: 5, scope: !4748)
!4759 = !DILocalVariable(name: "i", scope: !4760, file: !71, line: 1028, type: !15)
!4760 = distinct !DILexicalBlock(scope: !4748, file: !71, line: 1028, column: 5)
!4761 = !DILocation(line: 0, scope: !4760)
!4762 = !DILocation(line: 1028, column: 10, scope: !4760)
!4763 = !DILocation(line: 1028, scope: !4760)
!4764 = !DILocation(line: 1028, column: 26, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4760, file: !71, line: 1028, column: 5)
!4766 = !DILocation(line: 1028, column: 5, scope: !4760)
!4767 = !DILocation(line: 1029, column: 21, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4765, file: !71, line: 1028, column: 37)
!4769 = !DILocation(line: 1029, column: 9, scope: !4768)
!4770 = !DILocation(line: 1029, column: 19, scope: !4768)
!4771 = !DILocation(line: 1028, column: 33, scope: !4765)
!4772 = !DILocation(line: 1028, column: 5, scope: !4765)
!4773 = distinct !{!4773, !4766, !4774, !244}
!4774 = !DILocation(line: 1030, column: 5, scope: !4760)
!4775 = !DILocation(line: 1031, column: 1, scope: !4748)
!4776 = distinct !DISubprogram(name: "sha3_512_inc_init", scope: !71, file: !71, line: 1033, type: !4777, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{null, !4779}
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 32)
!4780 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_512incctx", file: !71, line: 61, baseType: !4781)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 59, size: 32, elements: !4782)
!4782 = !{!4783}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4781, file: !71, line: 60, baseType: !5, size: 32)
!4784 = !DILocalVariable(name: "state", arg: 1, scope: !4776, file: !71, line: 1033, type: !4779)
!4785 = !DILocation(line: 0, scope: !4776)
!4786 = !DILocation(line: 1034, column: 18, scope: !4776)
!4787 = !DILocation(line: 1034, column: 16, scope: !4776)
!4788 = !DILocation(line: 1035, column: 20, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4776, file: !71, line: 1035, column: 9)
!4790 = !DILocation(line: 1036, column: 9, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4789, file: !71, line: 1035, column: 29)
!4792 = !DILocation(line: 1037, column: 5, scope: !4791)
!4793 = !DILocation(line: 1038, column: 28, scope: !4776)
!4794 = !DILocation(line: 1038, column: 5, scope: !4776)
!4795 = !DILocation(line: 1039, column: 1, scope: !4776)
!4796 = distinct !DISubprogram(name: "sha3_512_inc_ctx_clone", scope: !71, file: !71, line: 1041, type: !4797, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{null, !4779, !4799}
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 32)
!4800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4780)
!4801 = !DILocalVariable(name: "dest", arg: 1, scope: !4796, file: !71, line: 1041, type: !4779)
!4802 = !DILocation(line: 0, scope: !4796)
!4803 = !DILocalVariable(name: "src", arg: 2, scope: !4796, file: !71, line: 1041, type: !4799)
!4804 = !DILocation(line: 1042, column: 17, scope: !4796)
!4805 = !DILocation(line: 1042, column: 15, scope: !4796)
!4806 = !DILocation(line: 1043, column: 19, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4796, file: !71, line: 1043, column: 9)
!4808 = !DILocation(line: 1044, column: 9, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4807, file: !71, line: 1043, column: 28)
!4810 = !DILocation(line: 1045, column: 5, scope: !4809)
!4811 = !DILocation(line: 1046, column: 18, scope: !4796)
!4812 = !DILocation(line: 1046, column: 28, scope: !4796)
!4813 = !DILocation(line: 1046, column: 5, scope: !4796)
!4814 = !DILocation(line: 1047, column: 1, scope: !4796)
!4815 = distinct !DISubprogram(name: "sha3_512_inc_absorb", scope: !71, file: !71, line: 1049, type: !4816, scopeLine: 1049, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{null, !4779, !257, !15}
!4818 = !DILocalVariable(name: "state", arg: 1, scope: !4815, file: !71, line: 1049, type: !4779)
!4819 = !DILocation(line: 0, scope: !4815)
!4820 = !DILocalVariable(name: "input", arg: 2, scope: !4815, file: !71, line: 1049, type: !257)
!4821 = !DILocalVariable(name: "inlen", arg: 3, scope: !4815, file: !71, line: 1049, type: !15)
!4822 = !DILocation(line: 1050, column: 30, scope: !4815)
!4823 = !DILocation(line: 1050, column: 5, scope: !4815)
!4824 = !DILocation(line: 1051, column: 1, scope: !4815)
!4825 = distinct !DISubprogram(name: "sha3_512_inc_ctx_release", scope: !71, file: !71, line: 1053, type: !4777, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4826 = !DILocalVariable(name: "state", arg: 1, scope: !4825, file: !71, line: 1053, type: !4779)
!4827 = !DILocation(line: 0, scope: !4825)
!4828 = !DILocation(line: 1054, column: 17, scope: !4825)
!4829 = !DILocation(line: 1054, column: 5, scope: !4825)
!4830 = !DILocation(line: 1055, column: 1, scope: !4825)
!4831 = distinct !DISubprogram(name: "sha3_512_inc_finalize", scope: !71, file: !71, line: 1057, type: !4832, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{null, !11, !4779}
!4834 = !DILocalVariable(name: "output", arg: 1, scope: !4831, file: !71, line: 1057, type: !11)
!4835 = !DILocation(line: 0, scope: !4831)
!4836 = !DILocalVariable(name: "state", arg: 2, scope: !4831, file: !71, line: 1057, type: !4779)
!4837 = !DILocalVariable(name: "t", scope: !4831, file: !71, line: 1058, type: !4838)
!4838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 576, elements: !4839)
!4839 = !{!4840}
!4840 = !DISubrange(count: 72)
!4841 = !DILocation(line: 1058, column: 13, scope: !4831)
!4842 = !DILocation(line: 1059, column: 32, scope: !4831)
!4843 = !DILocation(line: 1059, column: 5, scope: !4831)
!4844 = !DILocation(line: 1061, column: 39, scope: !4831)
!4845 = !DILocation(line: 1061, column: 5, scope: !4831)
!4846 = !DILocation(line: 1063, column: 5, scope: !4831)
!4847 = !DILocalVariable(name: "i", scope: !4848, file: !71, line: 1065, type: !15)
!4848 = distinct !DILexicalBlock(scope: !4831, file: !71, line: 1065, column: 5)
!4849 = !DILocation(line: 0, scope: !4848)
!4850 = !DILocation(line: 1065, column: 10, scope: !4848)
!4851 = !DILocation(line: 1065, scope: !4848)
!4852 = !DILocation(line: 1065, column: 26, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4848, file: !71, line: 1065, column: 5)
!4854 = !DILocation(line: 1065, column: 5, scope: !4848)
!4855 = !DILocation(line: 1066, column: 21, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4853, file: !71, line: 1065, column: 37)
!4857 = !DILocation(line: 1066, column: 9, scope: !4856)
!4858 = !DILocation(line: 1066, column: 19, scope: !4856)
!4859 = !DILocation(line: 1065, column: 33, scope: !4853)
!4860 = !DILocation(line: 1065, column: 5, scope: !4853)
!4861 = distinct !{!4861, !4854, !4862, !244}
!4862 = !DILocation(line: 1067, column: 5, scope: !4848)
!4863 = !DILocation(line: 1068, column: 1, scope: !4831)
!4864 = distinct !DISubprogram(name: "sha3_512", scope: !71, file: !71, line: 1079, type: !4628, scopeLine: 1079, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4865 = !DILocalVariable(name: "output", arg: 1, scope: !4864, file: !71, line: 1079, type: !11)
!4866 = !DILocation(line: 0, scope: !4864)
!4867 = !DILocalVariable(name: "input", arg: 2, scope: !4864, file: !71, line: 1079, type: !257)
!4868 = !DILocalVariable(name: "inlen", arg: 3, scope: !4864, file: !71, line: 1079, type: !15)
!4869 = !DILocalVariable(name: "s", scope: !4864, file: !71, line: 1080, type: !4635)
!4870 = !DILocation(line: 1080, column: 14, scope: !4864)
!4871 = !DILocalVariable(name: "t", scope: !4864, file: !71, line: 1081, type: !4838)
!4872 = !DILocation(line: 1081, column: 13, scope: !4864)
!4873 = !DILocation(line: 1084, column: 5, scope: !4864)
!4874 = !DILocation(line: 1087, column: 5, scope: !4864)
!4875 = !DILocalVariable(name: "i", scope: !4876, file: !71, line: 1089, type: !15)
!4876 = distinct !DILexicalBlock(scope: !4864, file: !71, line: 1089, column: 5)
!4877 = !DILocation(line: 0, scope: !4876)
!4878 = !DILocation(line: 1089, column: 10, scope: !4876)
!4879 = !DILocation(line: 1089, scope: !4876)
!4880 = !DILocation(line: 1089, column: 26, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4876, file: !71, line: 1089, column: 5)
!4882 = !DILocation(line: 1089, column: 5, scope: !4876)
!4883 = !DILocation(line: 1090, column: 21, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4881, file: !71, line: 1089, column: 37)
!4885 = !DILocation(line: 1090, column: 9, scope: !4884)
!4886 = !DILocation(line: 1090, column: 19, scope: !4884)
!4887 = !DILocation(line: 1089, column: 33, scope: !4881)
!4888 = !DILocation(line: 1089, column: 5, scope: !4881)
!4889 = distinct !{!4889, !4882, !4890, !244}
!4890 = !DILocation(line: 1091, column: 5, scope: !4876)
!4891 = !DILocation(line: 1092, column: 1, scope: !4864)
!4892 = distinct !DISubprogram(name: "aes128_ecb_keyexp", scope: !80, file: !80, line: 635, type: !4893, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{null, !4895, !49}
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 32)
!4896 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes128ctx", file: !80, line: 46, baseType: !4897)
!4897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 44, size: 32, elements: !4898)
!4898 = !{!4899}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !4897, file: !80, line: 45, baseType: !5, size: 32)
!4900 = !DILocalVariable(name: "r", arg: 1, scope: !4892, file: !80, line: 635, type: !4895)
!4901 = !DILocation(line: 0, scope: !4892)
!4902 = !DILocalVariable(name: "key", arg: 2, scope: !4892, file: !80, line: 635, type: !49)
!4903 = !DILocalVariable(name: "skey", scope: !4892, file: !80, line: 636, type: !4904)
!4904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1408, elements: !4905)
!4905 = !{!4906}
!4906 = !DISubrange(count: 22)
!4907 = !DILocation(line: 636, column: 14, scope: !4892)
!4908 = !DILocation(line: 638, column: 17, scope: !4892)
!4909 = !DILocation(line: 638, column: 15, scope: !4892)
!4910 = !DILocation(line: 639, column: 19, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4892, file: !80, line: 639, column: 9)
!4912 = !DILocation(line: 640, column: 9, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4911, file: !80, line: 639, column: 28)
!4914 = !DILocation(line: 641, column: 5, scope: !4913)
!4915 = !DILocation(line: 643, column: 5, scope: !4892)
!4916 = !DILocation(line: 644, column: 32, scope: !4892)
!4917 = !DILocation(line: 644, column: 5, scope: !4892)
!4918 = !DILocation(line: 645, column: 1, scope: !4892)
!4919 = distinct !DISubprogram(name: "br_aes_ct64_keysched", scope: !80, file: !80, line: 403, type: !4920, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{null, !5, !49, !17}
!4922 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !4919, file: !80, line: 403, type: !5)
!4923 = !DILocation(line: 0, scope: !4919)
!4924 = !DILocalVariable(name: "key", arg: 2, scope: !4919, file: !80, line: 403, type: !49)
!4925 = !DILocalVariable(name: "key_len", arg: 3, scope: !4919, file: !80, line: 403, type: !17)
!4926 = !DILocalVariable(name: "skey", scope: !4919, file: !80, line: 406, type: !4927)
!4927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1920, elements: !4928)
!4928 = !{!4929}
!4929 = !DISubrange(count: 60)
!4930 = !DILocation(line: 406, column: 14, scope: !4919)
!4931 = !DILocation(line: 410, column: 26, scope: !4919)
!4932 = !DILocalVariable(name: "nrounds", scope: !4919, file: !80, line: 407, type: !17)
!4933 = !DILocation(line: 409, column: 19, scope: !4919)
!4934 = !DILocalVariable(name: "nk", scope: !4919, file: !80, line: 404, type: !17)
!4935 = !DILocalVariable(name: "nkf", scope: !4919, file: !80, line: 404, type: !17)
!4936 = !DILocation(line: 411, column: 37, scope: !4919)
!4937 = !DILocation(line: 411, column: 5, scope: !4919)
!4938 = !DILocation(line: 412, column: 25, scope: !4919)
!4939 = !DILocation(line: 412, column: 31, scope: !4919)
!4940 = !DILocation(line: 412, column: 11, scope: !4919)
!4941 = !DILocalVariable(name: "tmp", scope: !4919, file: !80, line: 405, type: !19)
!4942 = !DILocalVariable(name: "i", scope: !4919, file: !80, line: 404, type: !17)
!4943 = !DILocalVariable(name: "j", scope: !4919, file: !80, line: 404, type: !17)
!4944 = !DILocalVariable(name: "k", scope: !4919, file: !80, line: 404, type: !17)
!4945 = !DILocation(line: 413, column: 10, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4919, file: !80, line: 413, column: 5)
!4947 = !DILocation(line: 413, scope: !4946)
!4948 = !DILocation(line: 0, scope: !4946)
!4949 = !DILocation(line: 413, column: 34, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4946, file: !80, line: 413, column: 5)
!4951 = !DILocation(line: 413, column: 5, scope: !4946)
!4952 = !DILocation(line: 428, column: 5, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4919, file: !80, line: 428, column: 5)
!4954 = !DILocation(line: 414, column: 15, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4956, file: !80, line: 414, column: 13)
!4956 = distinct !DILexicalBlock(scope: !4950, file: !80, line: 413, column: 47)
!4957 = !DILocation(line: 415, column: 31, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4955, file: !80, line: 414, column: 21)
!4959 = !DILocation(line: 416, column: 19, scope: !4958)
!4960 = !DILocation(line: 416, column: 35, scope: !4958)
!4961 = !DILocation(line: 416, column: 33, scope: !4958)
!4962 = !DILocation(line: 417, column: 9, scope: !4958)
!4963 = !DILocation(line: 417, column: 23, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4955, file: !80, line: 417, column: 20)
!4965 = !DILocation(line: 417, column: 27, scope: !4964)
!4966 = !DILocation(line: 418, column: 19, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4964, file: !80, line: 417, column: 38)
!4968 = !DILocation(line: 419, column: 9, scope: !4967)
!4969 = !DILocation(line: 0, scope: !4955)
!4970 = !DILocation(line: 420, column: 23, scope: !4956)
!4971 = !DILocation(line: 420, column: 16, scope: !4956)
!4972 = !DILocation(line: 420, column: 13, scope: !4956)
!4973 = !DILocation(line: 421, column: 9, scope: !4956)
!4974 = !DILocation(line: 421, column: 17, scope: !4956)
!4975 = !DILocation(line: 422, column: 13, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4956, file: !80, line: 422, column: 13)
!4977 = !DILocation(line: 422, column: 18, scope: !4976)
!4978 = !DILocation(line: 413, column: 43, scope: !4950)
!4979 = !DILocation(line: 413, column: 5, scope: !4950)
!4980 = distinct !{!4980, !4951, !4981, !244}
!4981 = !DILocation(line: 426, column: 5, scope: !4946)
!4982 = !DILocation(line: 428, scope: !4953)
!4983 = !DILocation(line: 428, column: 26, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4953, file: !80, line: 428, column: 5)
!4985 = !DILocalVariable(name: "q", scope: !4986, file: !80, line: 429, type: !4987)
!4986 = distinct !DILexicalBlock(scope: !4984, file: !80, line: 428, column: 49)
!4987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !4988)
!4988 = !{!4989}
!4989 = !DISubrange(count: 8)
!4990 = !DILocation(line: 429, column: 18, scope: !4986)
!4991 = !DILocation(line: 431, column: 43, scope: !4986)
!4992 = !DILocation(line: 431, column: 54, scope: !4986)
!4993 = !DILocation(line: 431, column: 9, scope: !4986)
!4994 = !DILocation(line: 432, column: 16, scope: !4986)
!4995 = !DILocation(line: 432, column: 9, scope: !4986)
!4996 = !DILocation(line: 432, column: 14, scope: !4986)
!4997 = !DILocation(line: 433, column: 9, scope: !4986)
!4998 = !DILocation(line: 433, column: 14, scope: !4986)
!4999 = !DILocation(line: 434, column: 9, scope: !4986)
!5000 = !DILocation(line: 434, column: 14, scope: !4986)
!5001 = !DILocation(line: 435, column: 16, scope: !4986)
!5002 = !DILocation(line: 435, column: 9, scope: !4986)
!5003 = !DILocation(line: 435, column: 14, scope: !4986)
!5004 = !DILocation(line: 436, column: 9, scope: !4986)
!5005 = !DILocation(line: 436, column: 14, scope: !4986)
!5006 = !DILocation(line: 437, column: 9, scope: !4986)
!5007 = !DILocation(line: 437, column: 14, scope: !4986)
!5008 = !DILocation(line: 438, column: 9, scope: !4986)
!5009 = !DILocation(line: 440, column: 14, scope: !4986)
!5010 = !DILocation(line: 440, column: 19, scope: !4986)
!5011 = !DILocation(line: 441, column: 16, scope: !4986)
!5012 = !DILocation(line: 441, column: 21, scope: !4986)
!5013 = !DILocation(line: 441, column: 13, scope: !4986)
!5014 = !DILocation(line: 442, column: 16, scope: !4986)
!5015 = !DILocation(line: 442, column: 21, scope: !4986)
!5016 = !DILocation(line: 442, column: 13, scope: !4986)
!5017 = !DILocation(line: 443, column: 16, scope: !4986)
!5018 = !DILocation(line: 443, column: 21, scope: !4986)
!5019 = !DILocation(line: 443, column: 13, scope: !4986)
!5020 = !DILocation(line: 439, column: 9, scope: !4986)
!5021 = !DILocation(line: 439, column: 26, scope: !4986)
!5022 = !DILocation(line: 445, column: 14, scope: !4986)
!5023 = !DILocation(line: 445, column: 19, scope: !4986)
!5024 = !DILocation(line: 446, column: 16, scope: !4986)
!5025 = !DILocation(line: 446, column: 21, scope: !4986)
!5026 = !DILocation(line: 446, column: 13, scope: !4986)
!5027 = !DILocation(line: 447, column: 16, scope: !4986)
!5028 = !DILocation(line: 447, column: 21, scope: !4986)
!5029 = !DILocation(line: 447, column: 13, scope: !4986)
!5030 = !DILocation(line: 448, column: 16, scope: !4986)
!5031 = !DILocation(line: 448, column: 21, scope: !4986)
!5032 = !DILocation(line: 448, column: 13, scope: !4986)
!5033 = !DILocation(line: 444, column: 21, scope: !4986)
!5034 = !DILocation(line: 444, column: 9, scope: !4986)
!5035 = !DILocation(line: 444, column: 26, scope: !4986)
!5036 = !DILocation(line: 428, column: 35, scope: !4984)
!5037 = !DILocation(line: 428, column: 43, scope: !4984)
!5038 = !DILocation(line: 428, column: 5, scope: !4984)
!5039 = distinct !{!5039, !4952, !5040, !244}
!5040 = !DILocation(line: 449, column: 5, scope: !4953)
!5041 = !DILocation(line: 450, column: 1, scope: !4919)
!5042 = distinct !DISubprogram(name: "br_aes_ct64_skey_expand", scope: !80, file: !80, line: 452, type: !5043, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5043 = !DISubroutineType(types: !5044)
!5044 = !{null, !5, !428, !17}
!5045 = !DILocalVariable(name: "skey", arg: 1, scope: !5042, file: !80, line: 452, type: !5)
!5046 = !DILocation(line: 0, scope: !5042)
!5047 = !DILocalVariable(name: "comp_skey", arg: 2, scope: !5042, file: !80, line: 452, type: !428)
!5048 = !DILocalVariable(name: "nrounds", arg: 3, scope: !5042, file: !80, line: 452, type: !17)
!5049 = !DILocation(line: 455, column: 23, scope: !5042)
!5050 = !DILocalVariable(name: "n", scope: !5042, file: !80, line: 453, type: !17)
!5051 = !DILocalVariable(name: "u", scope: !5042, file: !80, line: 453, type: !17)
!5052 = !DILocalVariable(name: "v", scope: !5042, file: !80, line: 453, type: !17)
!5053 = !DILocation(line: 456, column: 10, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5042, file: !80, line: 456, column: 5)
!5055 = !DILocation(line: 456, scope: !5054)
!5056 = !DILocation(line: 456, column: 26, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5054, file: !80, line: 456, column: 5)
!5058 = !DILocation(line: 456, column: 5, scope: !5054)
!5059 = !DILocation(line: 459, column: 29, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5057, file: !80, line: 456, column: 45)
!5061 = !DILocalVariable(name: "x3", scope: !5060, file: !80, line: 457, type: !6)
!5062 = !DILocation(line: 0, scope: !5060)
!5063 = !DILocalVariable(name: "x2", scope: !5060, file: !80, line: 457, type: !6)
!5064 = !DILocalVariable(name: "x1", scope: !5060, file: !80, line: 457, type: !6)
!5065 = !DILocalVariable(name: "x0", scope: !5060, file: !80, line: 457, type: !6)
!5066 = !DILocation(line: 460, column: 12, scope: !5060)
!5067 = !DILocation(line: 464, column: 12, scope: !5060)
!5068 = !DILocation(line: 465, column: 12, scope: !5060)
!5069 = !DILocation(line: 466, column: 12, scope: !5060)
!5070 = !DILocation(line: 467, column: 33, scope: !5060)
!5071 = !DILocation(line: 467, column: 9, scope: !5060)
!5072 = !DILocation(line: 467, column: 21, scope: !5060)
!5073 = !DILocation(line: 468, column: 33, scope: !5060)
!5074 = !DILocation(line: 468, column: 16, scope: !5060)
!5075 = !DILocation(line: 468, column: 9, scope: !5060)
!5076 = !DILocation(line: 468, column: 21, scope: !5060)
!5077 = !DILocation(line: 469, column: 33, scope: !5060)
!5078 = !DILocation(line: 469, column: 16, scope: !5060)
!5079 = !DILocation(line: 469, column: 9, scope: !5060)
!5080 = !DILocation(line: 469, column: 21, scope: !5060)
!5081 = !DILocation(line: 470, column: 33, scope: !5060)
!5082 = !DILocation(line: 470, column: 16, scope: !5060)
!5083 = !DILocation(line: 470, column: 9, scope: !5060)
!5084 = !DILocation(line: 470, column: 21, scope: !5060)
!5085 = !DILocation(line: 456, column: 33, scope: !5057)
!5086 = !DILocation(line: 456, column: 39, scope: !5057)
!5087 = !DILocation(line: 456, column: 5, scope: !5057)
!5088 = distinct !{!5088, !5058, !5089, !244}
!5089 = !DILocation(line: 471, column: 5, scope: !5054)
!5090 = !DILocation(line: 472, column: 1, scope: !5042)
!5091 = distinct !DISubprogram(name: "br_range_dec32le", scope: !80, file: !80, line: 104, type: !5092, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{null, !5094, !15, !49}
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!5095 = !DILocalVariable(name: "v", arg: 1, scope: !5091, file: !80, line: 104, type: !5094)
!5096 = !DILocation(line: 0, scope: !5091)
!5097 = !DILocalVariable(name: "num", arg: 2, scope: !5091, file: !80, line: 104, type: !15)
!5098 = !DILocalVariable(name: "src", arg: 3, scope: !5091, file: !80, line: 104, type: !49)
!5099 = !DILocation(line: 105, column: 5, scope: !5091)
!5100 = !DILocation(line: 105, column: 18, scope: !5091)
!5101 = !DILocation(line: 105, column: 15, scope: !5091)
!5102 = !DILocation(line: 106, column: 17, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5091, file: !80, line: 105, column: 23)
!5104 = !DILocation(line: 106, column: 12, scope: !5103)
!5105 = !DILocation(line: 106, column: 15, scope: !5103)
!5106 = !DILocation(line: 107, column: 13, scope: !5103)
!5107 = distinct !{!5107, !5099, !5108, !244}
!5108 = !DILocation(line: 108, column: 5, scope: !5091)
!5109 = !DILocation(line: 109, column: 1, scope: !5091)
!5110 = distinct !DISubprogram(name: "sub_word", scope: !80, file: !80, line: 392, type: !5111, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!19, !19}
!5113 = !DILocalVariable(name: "x", arg: 1, scope: !5110, file: !80, line: 392, type: !19)
!5114 = !DILocation(line: 0, scope: !5110)
!5115 = !DILocalVariable(name: "q", scope: !5110, file: !80, line: 393, type: !4987)
!5116 = !DILocation(line: 393, column: 14, scope: !5110)
!5117 = !DILocation(line: 395, column: 5, scope: !5110)
!5118 = !DILocation(line: 396, column: 12, scope: !5110)
!5119 = !DILocation(line: 396, column: 10, scope: !5110)
!5120 = !DILocation(line: 397, column: 5, scope: !5110)
!5121 = !DILocation(line: 398, column: 5, scope: !5110)
!5122 = !DILocation(line: 399, column: 5, scope: !5110)
!5123 = !DILocation(line: 400, column: 22, scope: !5110)
!5124 = !DILocation(line: 400, column: 12, scope: !5110)
!5125 = !DILocation(line: 400, column: 5, scope: !5110)
!5126 = distinct !DISubprogram(name: "br_aes_ct64_interleave_in", scope: !80, file: !80, line: 339, type: !5127, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{null, !5, !5, !5129}
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 32)
!5130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!5131 = !DILocalVariable(name: "q0", arg: 1, scope: !5126, file: !80, line: 339, type: !5)
!5132 = !DILocation(line: 0, scope: !5126)
!5133 = !DILocalVariable(name: "q1", arg: 2, scope: !5126, file: !80, line: 339, type: !5)
!5134 = !DILocalVariable(name: "w", arg: 3, scope: !5126, file: !80, line: 339, type: !5129)
!5135 = !DILocation(line: 342, column: 10, scope: !5126)
!5136 = !DILocalVariable(name: "x0", scope: !5126, file: !80, line: 340, type: !6)
!5137 = !DILocation(line: 343, column: 10, scope: !5126)
!5138 = !DILocalVariable(name: "x1", scope: !5126, file: !80, line: 340, type: !6)
!5139 = !DILocation(line: 344, column: 10, scope: !5126)
!5140 = !DILocalVariable(name: "x2", scope: !5126, file: !80, line: 340, type: !6)
!5141 = !DILocation(line: 345, column: 10, scope: !5126)
!5142 = !DILocalVariable(name: "x3", scope: !5126, file: !80, line: 340, type: !6)
!5143 = !DILocation(line: 346, column: 15, scope: !5126)
!5144 = !DILocation(line: 346, column: 8, scope: !5126)
!5145 = !DILocation(line: 347, column: 15, scope: !5126)
!5146 = !DILocation(line: 347, column: 8, scope: !5126)
!5147 = !DILocation(line: 348, column: 15, scope: !5126)
!5148 = !DILocation(line: 348, column: 8, scope: !5126)
!5149 = !DILocation(line: 349, column: 15, scope: !5126)
!5150 = !DILocation(line: 349, column: 8, scope: !5126)
!5151 = !DILocation(line: 350, column: 8, scope: !5126)
!5152 = !DILocation(line: 351, column: 8, scope: !5126)
!5153 = !DILocation(line: 352, column: 8, scope: !5126)
!5154 = !DILocation(line: 353, column: 8, scope: !5126)
!5155 = !DILocation(line: 354, column: 15, scope: !5126)
!5156 = !DILocation(line: 354, column: 8, scope: !5126)
!5157 = !DILocation(line: 355, column: 15, scope: !5126)
!5158 = !DILocation(line: 355, column: 8, scope: !5126)
!5159 = !DILocation(line: 358, column: 8, scope: !5126)
!5160 = !DILocation(line: 359, column: 8, scope: !5126)
!5161 = !DILocation(line: 362, column: 20, scope: !5126)
!5162 = !DILocation(line: 362, column: 14, scope: !5126)
!5163 = !DILocation(line: 362, column: 9, scope: !5126)
!5164 = !DILocation(line: 363, column: 20, scope: !5126)
!5165 = !DILocation(line: 363, column: 14, scope: !5126)
!5166 = !DILocation(line: 363, column: 9, scope: !5126)
!5167 = !DILocation(line: 364, column: 1, scope: !5126)
!5168 = distinct !DISubprogram(name: "br_aes_ct64_ortho", scope: !80, file: !80, line: 309, type: !26, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5169 = !DILocalVariable(name: "q", arg: 1, scope: !5168, file: !80, line: 309, type: !5)
!5170 = !DILocation(line: 0, scope: !5168)
!5171 = !DILocation(line: 322, column: 5, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5168, file: !80, line: 322, column: 5)
!5173 = !DILocalVariable(name: "a", scope: !5172, file: !80, line: 322, type: !6)
!5174 = !DILocation(line: 0, scope: !5172)
!5175 = !DILocalVariable(name: "b", scope: !5172, file: !80, line: 322, type: !6)
!5176 = !DILocation(line: 323, column: 5, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5168, file: !80, line: 323, column: 5)
!5178 = !DILocalVariable(name: "a", scope: !5177, file: !80, line: 323, type: !6)
!5179 = !DILocation(line: 0, scope: !5177)
!5180 = !DILocalVariable(name: "b", scope: !5177, file: !80, line: 323, type: !6)
!5181 = !DILocation(line: 324, column: 5, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5168, file: !80, line: 324, column: 5)
!5183 = !DILocalVariable(name: "a", scope: !5182, file: !80, line: 324, type: !6)
!5184 = !DILocation(line: 0, scope: !5182)
!5185 = !DILocalVariable(name: "b", scope: !5182, file: !80, line: 324, type: !6)
!5186 = !DILocation(line: 325, column: 5, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5168, file: !80, line: 325, column: 5)
!5188 = !DILocalVariable(name: "a", scope: !5187, file: !80, line: 325, type: !6)
!5189 = !DILocation(line: 0, scope: !5187)
!5190 = !DILocalVariable(name: "b", scope: !5187, file: !80, line: 325, type: !6)
!5191 = !DILocation(line: 327, column: 5, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5168, file: !80, line: 327, column: 5)
!5193 = !DILocalVariable(name: "a", scope: !5192, file: !80, line: 327, type: !6)
!5194 = !DILocation(line: 0, scope: !5192)
!5195 = !DILocalVariable(name: "b", scope: !5192, file: !80, line: 327, type: !6)
!5196 = !DILocation(line: 328, column: 5, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5168, file: !80, line: 328, column: 5)
!5198 = !DILocalVariable(name: "a", scope: !5197, file: !80, line: 328, type: !6)
!5199 = !DILocation(line: 0, scope: !5197)
!5200 = !DILocalVariable(name: "b", scope: !5197, file: !80, line: 328, type: !6)
!5201 = !DILocation(line: 329, column: 5, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5168, file: !80, line: 329, column: 5)
!5203 = !DILocalVariable(name: "a", scope: !5202, file: !80, line: 329, type: !6)
!5204 = !DILocation(line: 0, scope: !5202)
!5205 = !DILocalVariable(name: "b", scope: !5202, file: !80, line: 329, type: !6)
!5206 = !DILocation(line: 330, column: 5, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5168, file: !80, line: 330, column: 5)
!5208 = !DILocalVariable(name: "a", scope: !5207, file: !80, line: 330, type: !6)
!5209 = !DILocation(line: 0, scope: !5207)
!5210 = !DILocalVariable(name: "b", scope: !5207, file: !80, line: 330, type: !6)
!5211 = !DILocation(line: 332, column: 5, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5168, file: !80, line: 332, column: 5)
!5213 = !DILocalVariable(name: "a", scope: !5212, file: !80, line: 332, type: !6)
!5214 = !DILocation(line: 0, scope: !5212)
!5215 = !DILocalVariable(name: "b", scope: !5212, file: !80, line: 332, type: !6)
!5216 = !DILocation(line: 333, column: 5, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5168, file: !80, line: 333, column: 5)
!5218 = !DILocalVariable(name: "a", scope: !5217, file: !80, line: 333, type: !6)
!5219 = !DILocation(line: 0, scope: !5217)
!5220 = !DILocalVariable(name: "b", scope: !5217, file: !80, line: 333, type: !6)
!5221 = !DILocation(line: 334, column: 5, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5168, file: !80, line: 334, column: 5)
!5223 = !DILocalVariable(name: "a", scope: !5222, file: !80, line: 334, type: !6)
!5224 = !DILocation(line: 0, scope: !5222)
!5225 = !DILocalVariable(name: "b", scope: !5222, file: !80, line: 334, type: !6)
!5226 = !DILocation(line: 335, column: 5, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5168, file: !80, line: 335, column: 5)
!5228 = !DILocalVariable(name: "a", scope: !5227, file: !80, line: 335, type: !6)
!5229 = !DILocation(line: 0, scope: !5227)
!5230 = !DILocalVariable(name: "b", scope: !5227, file: !80, line: 335, type: !6)
!5231 = !DILocation(line: 336, column: 1, scope: !5168)
!5232 = distinct !DISubprogram(name: "br_aes_ct64_bitslice_Sbox", scope: !80, file: !80, line: 135, type: !26, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5233 = !DILocalVariable(name: "q", arg: 1, scope: !5232, file: !80, line: 135, type: !5)
!5234 = !DILocation(line: 0, scope: !5232)
!5235 = !DILocation(line: 161, column: 10, scope: !5232)
!5236 = !DILocalVariable(name: "x0", scope: !5232, file: !80, line: 146, type: !6)
!5237 = !DILocation(line: 162, column: 10, scope: !5232)
!5238 = !DILocalVariable(name: "x1", scope: !5232, file: !80, line: 146, type: !6)
!5239 = !DILocation(line: 163, column: 10, scope: !5232)
!5240 = !DILocalVariable(name: "x2", scope: !5232, file: !80, line: 146, type: !6)
!5241 = !DILocation(line: 164, column: 10, scope: !5232)
!5242 = !DILocalVariable(name: "x3", scope: !5232, file: !80, line: 146, type: !6)
!5243 = !DILocation(line: 165, column: 10, scope: !5232)
!5244 = !DILocalVariable(name: "x4", scope: !5232, file: !80, line: 146, type: !6)
!5245 = !DILocation(line: 166, column: 10, scope: !5232)
!5246 = !DILocalVariable(name: "x5", scope: !5232, file: !80, line: 146, type: !6)
!5247 = !DILocation(line: 167, column: 10, scope: !5232)
!5248 = !DILocalVariable(name: "x6", scope: !5232, file: !80, line: 146, type: !6)
!5249 = !DILocation(line: 168, column: 10, scope: !5232)
!5250 = !DILocalVariable(name: "x7", scope: !5232, file: !80, line: 146, type: !6)
!5251 = !DILocation(line: 173, column: 14, scope: !5232)
!5252 = !DILocalVariable(name: "y14", scope: !5232, file: !80, line: 148, type: !6)
!5253 = !DILocation(line: 174, column: 14, scope: !5232)
!5254 = !DILocalVariable(name: "y13", scope: !5232, file: !80, line: 148, type: !6)
!5255 = !DILocation(line: 175, column: 13, scope: !5232)
!5256 = !DILocalVariable(name: "y9", scope: !5232, file: !80, line: 147, type: !6)
!5257 = !DILocation(line: 176, column: 13, scope: !5232)
!5258 = !DILocalVariable(name: "y8", scope: !5232, file: !80, line: 147, type: !6)
!5259 = !DILocation(line: 177, column: 13, scope: !5232)
!5260 = !DILocalVariable(name: "t0", scope: !5232, file: !80, line: 152, type: !6)
!5261 = !DILocation(line: 178, column: 13, scope: !5232)
!5262 = !DILocalVariable(name: "y1", scope: !5232, file: !80, line: 147, type: !6)
!5263 = !DILocation(line: 179, column: 13, scope: !5232)
!5264 = !DILocalVariable(name: "y4", scope: !5232, file: !80, line: 147, type: !6)
!5265 = !DILocation(line: 180, column: 15, scope: !5232)
!5266 = !DILocalVariable(name: "y12", scope: !5232, file: !80, line: 148, type: !6)
!5267 = !DILocation(line: 181, column: 13, scope: !5232)
!5268 = !DILocalVariable(name: "y2", scope: !5232, file: !80, line: 147, type: !6)
!5269 = !DILocation(line: 182, column: 13, scope: !5232)
!5270 = !DILocalVariable(name: "y5", scope: !5232, file: !80, line: 147, type: !6)
!5271 = !DILocation(line: 183, column: 13, scope: !5232)
!5272 = !DILocalVariable(name: "y3", scope: !5232, file: !80, line: 147, type: !6)
!5273 = !DILocation(line: 184, column: 13, scope: !5232)
!5274 = !DILocalVariable(name: "t1", scope: !5232, file: !80, line: 152, type: !6)
!5275 = !DILocation(line: 185, column: 14, scope: !5232)
!5276 = !DILocalVariable(name: "y15", scope: !5232, file: !80, line: 148, type: !6)
!5277 = !DILocation(line: 186, column: 14, scope: !5232)
!5278 = !DILocalVariable(name: "y20", scope: !5232, file: !80, line: 149, type: !6)
!5279 = !DILocation(line: 187, column: 14, scope: !5232)
!5280 = !DILocalVariable(name: "y6", scope: !5232, file: !80, line: 147, type: !6)
!5281 = !DILocation(line: 188, column: 15, scope: !5232)
!5282 = !DILocalVariable(name: "y10", scope: !5232, file: !80, line: 148, type: !6)
!5283 = !DILocation(line: 189, column: 15, scope: !5232)
!5284 = !DILocalVariable(name: "y11", scope: !5232, file: !80, line: 148, type: !6)
!5285 = !DILocation(line: 190, column: 13, scope: !5232)
!5286 = !DILocalVariable(name: "y7", scope: !5232, file: !80, line: 147, type: !6)
!5287 = !DILocation(line: 191, column: 15, scope: !5232)
!5288 = !DILocalVariable(name: "y17", scope: !5232, file: !80, line: 148, type: !6)
!5289 = !DILocalVariable(name: "y19", scope: !5232, file: !80, line: 148, type: !6)
!5290 = !DILocation(line: 193, column: 14, scope: !5232)
!5291 = !DILocalVariable(name: "y16", scope: !5232, file: !80, line: 148, type: !6)
!5292 = !DILocalVariable(name: "y21", scope: !5232, file: !80, line: 149, type: !6)
!5293 = !DILocalVariable(name: "y18", scope: !5232, file: !80, line: 148, type: !6)
!5294 = !DILocation(line: 200, column: 14, scope: !5232)
!5295 = !DILocalVariable(name: "t2", scope: !5232, file: !80, line: 152, type: !6)
!5296 = !DILocation(line: 201, column: 13, scope: !5232)
!5297 = !DILocalVariable(name: "t3", scope: !5232, file: !80, line: 152, type: !6)
!5298 = !DILocation(line: 202, column: 13, scope: !5232)
!5299 = !DILocalVariable(name: "t4", scope: !5232, file: !80, line: 152, type: !6)
!5300 = !DILocation(line: 203, column: 13, scope: !5232)
!5301 = !DILocalVariable(name: "t5", scope: !5232, file: !80, line: 152, type: !6)
!5302 = !DILocalVariable(name: "t6", scope: !5232, file: !80, line: 152, type: !6)
!5303 = !DILocation(line: 205, column: 14, scope: !5232)
!5304 = !DILocalVariable(name: "t7", scope: !5232, file: !80, line: 152, type: !6)
!5305 = !DILocation(line: 206, column: 13, scope: !5232)
!5306 = !DILocalVariable(name: "t8", scope: !5232, file: !80, line: 152, type: !6)
!5307 = !DILocalVariable(name: "t9", scope: !5232, file: !80, line: 152, type: !6)
!5308 = !DILocation(line: 208, column: 14, scope: !5232)
!5309 = !DILocalVariable(name: "t10", scope: !5232, file: !80, line: 153, type: !6)
!5310 = !DILocalVariable(name: "t11", scope: !5232, file: !80, line: 153, type: !6)
!5311 = !DILocation(line: 210, column: 14, scope: !5232)
!5312 = !DILocalVariable(name: "t12", scope: !5232, file: !80, line: 153, type: !6)
!5313 = !DILocation(line: 211, column: 15, scope: !5232)
!5314 = !DILocalVariable(name: "t13", scope: !5232, file: !80, line: 153, type: !6)
!5315 = !DILocation(line: 212, column: 15, scope: !5232)
!5316 = !DILocalVariable(name: "t14", scope: !5232, file: !80, line: 153, type: !6)
!5317 = !DILocation(line: 213, column: 14, scope: !5232)
!5318 = !DILocalVariable(name: "t15", scope: !5232, file: !80, line: 153, type: !6)
!5319 = !DILocation(line: 214, column: 15, scope: !5232)
!5320 = !DILocalVariable(name: "t16", scope: !5232, file: !80, line: 153, type: !6)
!5321 = !DILocation(line: 215, column: 14, scope: !5232)
!5322 = !DILocalVariable(name: "t17", scope: !5232, file: !80, line: 153, type: !6)
!5323 = !DILocalVariable(name: "t18", scope: !5232, file: !80, line: 153, type: !6)
!5324 = !DILocalVariable(name: "t19", scope: !5232, file: !80, line: 153, type: !6)
!5325 = !DILocalVariable(name: "t20", scope: !5232, file: !80, line: 154, type: !6)
!5326 = !DILocation(line: 219, column: 15, scope: !5232)
!5327 = !DILocalVariable(name: "t21", scope: !5232, file: !80, line: 154, type: !6)
!5328 = !DILocation(line: 220, column: 15, scope: !5232)
!5329 = !DILocalVariable(name: "t22", scope: !5232, file: !80, line: 154, type: !6)
!5330 = !DILocation(line: 221, column: 15, scope: !5232)
!5331 = !DILocalVariable(name: "t23", scope: !5232, file: !80, line: 154, type: !6)
!5332 = !DILocation(line: 222, column: 15, scope: !5232)
!5333 = !DILocalVariable(name: "t24", scope: !5232, file: !80, line: 154, type: !6)
!5334 = !DILocation(line: 224, column: 15, scope: !5232)
!5335 = !DILocalVariable(name: "t25", scope: !5232, file: !80, line: 154, type: !6)
!5336 = !DILocation(line: 225, column: 15, scope: !5232)
!5337 = !DILocalVariable(name: "t26", scope: !5232, file: !80, line: 154, type: !6)
!5338 = !DILocation(line: 226, column: 15, scope: !5232)
!5339 = !DILocalVariable(name: "t27", scope: !5232, file: !80, line: 154, type: !6)
!5340 = !DILocation(line: 227, column: 15, scope: !5232)
!5341 = !DILocalVariable(name: "t28", scope: !5232, file: !80, line: 154, type: !6)
!5342 = !DILocation(line: 228, column: 15, scope: !5232)
!5343 = !DILocalVariable(name: "t29", scope: !5232, file: !80, line: 154, type: !6)
!5344 = !DILocation(line: 229, column: 15, scope: !5232)
!5345 = !DILocalVariable(name: "t30", scope: !5232, file: !80, line: 155, type: !6)
!5346 = !DILocation(line: 230, column: 15, scope: !5232)
!5347 = !DILocalVariable(name: "t31", scope: !5232, file: !80, line: 155, type: !6)
!5348 = !DILocation(line: 231, column: 15, scope: !5232)
!5349 = !DILocalVariable(name: "t32", scope: !5232, file: !80, line: 155, type: !6)
!5350 = !DILocation(line: 232, column: 15, scope: !5232)
!5351 = !DILocalVariable(name: "t33", scope: !5232, file: !80, line: 155, type: !6)
!5352 = !DILocation(line: 233, column: 15, scope: !5232)
!5353 = !DILocalVariable(name: "t34", scope: !5232, file: !80, line: 155, type: !6)
!5354 = !DILocation(line: 234, column: 15, scope: !5232)
!5355 = !DILocalVariable(name: "t35", scope: !5232, file: !80, line: 155, type: !6)
!5356 = !DILocation(line: 235, column: 15, scope: !5232)
!5357 = !DILocalVariable(name: "t36", scope: !5232, file: !80, line: 155, type: !6)
!5358 = !DILocation(line: 236, column: 15, scope: !5232)
!5359 = !DILocalVariable(name: "t37", scope: !5232, file: !80, line: 155, type: !6)
!5360 = !DILocation(line: 237, column: 15, scope: !5232)
!5361 = !DILocalVariable(name: "t38", scope: !5232, file: !80, line: 155, type: !6)
!5362 = !DILocation(line: 238, column: 15, scope: !5232)
!5363 = !DILocalVariable(name: "t39", scope: !5232, file: !80, line: 155, type: !6)
!5364 = !DILocation(line: 239, column: 15, scope: !5232)
!5365 = !DILocalVariable(name: "t40", scope: !5232, file: !80, line: 156, type: !6)
!5366 = !DILocation(line: 241, column: 15, scope: !5232)
!5367 = !DILocalVariable(name: "t41", scope: !5232, file: !80, line: 156, type: !6)
!5368 = !DILocation(line: 242, column: 15, scope: !5232)
!5369 = !DILocalVariable(name: "t42", scope: !5232, file: !80, line: 156, type: !6)
!5370 = !DILocation(line: 243, column: 15, scope: !5232)
!5371 = !DILocalVariable(name: "t43", scope: !5232, file: !80, line: 156, type: !6)
!5372 = !DILocation(line: 244, column: 15, scope: !5232)
!5373 = !DILocalVariable(name: "t44", scope: !5232, file: !80, line: 156, type: !6)
!5374 = !DILocation(line: 245, column: 15, scope: !5232)
!5375 = !DILocalVariable(name: "t45", scope: !5232, file: !80, line: 156, type: !6)
!5376 = !DILocation(line: 246, column: 14, scope: !5232)
!5377 = !DILocalVariable(name: "z0", scope: !5232, file: !80, line: 150, type: !6)
!5378 = !DILocation(line: 247, column: 14, scope: !5232)
!5379 = !DILocalVariable(name: "z1", scope: !5232, file: !80, line: 150, type: !6)
!5380 = !DILocation(line: 248, column: 14, scope: !5232)
!5381 = !DILocalVariable(name: "z2", scope: !5232, file: !80, line: 150, type: !6)
!5382 = !DILocation(line: 249, column: 14, scope: !5232)
!5383 = !DILocalVariable(name: "z3", scope: !5232, file: !80, line: 150, type: !6)
!5384 = !DILocation(line: 250, column: 14, scope: !5232)
!5385 = !DILocalVariable(name: "z4", scope: !5232, file: !80, line: 150, type: !6)
!5386 = !DILocation(line: 251, column: 14, scope: !5232)
!5387 = !DILocalVariable(name: "z5", scope: !5232, file: !80, line: 150, type: !6)
!5388 = !DILocation(line: 252, column: 14, scope: !5232)
!5389 = !DILocalVariable(name: "z6", scope: !5232, file: !80, line: 150, type: !6)
!5390 = !DILocation(line: 253, column: 14, scope: !5232)
!5391 = !DILocalVariable(name: "z7", scope: !5232, file: !80, line: 150, type: !6)
!5392 = !DILocation(line: 254, column: 14, scope: !5232)
!5393 = !DILocalVariable(name: "z8", scope: !5232, file: !80, line: 150, type: !6)
!5394 = !DILocation(line: 255, column: 14, scope: !5232)
!5395 = !DILocalVariable(name: "z9", scope: !5232, file: !80, line: 150, type: !6)
!5396 = !DILocation(line: 256, column: 15, scope: !5232)
!5397 = !DILocalVariable(name: "z10", scope: !5232, file: !80, line: 151, type: !6)
!5398 = !DILocation(line: 257, column: 15, scope: !5232)
!5399 = !DILocalVariable(name: "z11", scope: !5232, file: !80, line: 151, type: !6)
!5400 = !DILocation(line: 258, column: 15, scope: !5232)
!5401 = !DILocalVariable(name: "z12", scope: !5232, file: !80, line: 151, type: !6)
!5402 = !DILocation(line: 259, column: 15, scope: !5232)
!5403 = !DILocalVariable(name: "z13", scope: !5232, file: !80, line: 151, type: !6)
!5404 = !DILocation(line: 260, column: 15, scope: !5232)
!5405 = !DILocalVariable(name: "z14", scope: !5232, file: !80, line: 151, type: !6)
!5406 = !DILocation(line: 261, column: 15, scope: !5232)
!5407 = !DILocalVariable(name: "z15", scope: !5232, file: !80, line: 151, type: !6)
!5408 = !DILocation(line: 262, column: 15, scope: !5232)
!5409 = !DILocalVariable(name: "z16", scope: !5232, file: !80, line: 151, type: !6)
!5410 = !DILocation(line: 263, column: 15, scope: !5232)
!5411 = !DILocalVariable(name: "z17", scope: !5232, file: !80, line: 151, type: !6)
!5412 = !DILocation(line: 268, column: 15, scope: !5232)
!5413 = !DILocalVariable(name: "t46", scope: !5232, file: !80, line: 156, type: !6)
!5414 = !DILocation(line: 269, column: 15, scope: !5232)
!5415 = !DILocalVariable(name: "t47", scope: !5232, file: !80, line: 156, type: !6)
!5416 = !DILocation(line: 270, column: 14, scope: !5232)
!5417 = !DILocalVariable(name: "t48", scope: !5232, file: !80, line: 156, type: !6)
!5418 = !DILocation(line: 271, column: 14, scope: !5232)
!5419 = !DILocalVariable(name: "t49", scope: !5232, file: !80, line: 156, type: !6)
!5420 = !DILocation(line: 272, column: 14, scope: !5232)
!5421 = !DILocalVariable(name: "t50", scope: !5232, file: !80, line: 157, type: !6)
!5422 = !DILocation(line: 273, column: 14, scope: !5232)
!5423 = !DILocalVariable(name: "t51", scope: !5232, file: !80, line: 157, type: !6)
!5424 = !DILocation(line: 274, column: 14, scope: !5232)
!5425 = !DILocalVariable(name: "t52", scope: !5232, file: !80, line: 157, type: !6)
!5426 = !DILocation(line: 275, column: 14, scope: !5232)
!5427 = !DILocalVariable(name: "t53", scope: !5232, file: !80, line: 157, type: !6)
!5428 = !DILocation(line: 276, column: 14, scope: !5232)
!5429 = !DILocalVariable(name: "t54", scope: !5232, file: !80, line: 157, type: !6)
!5430 = !DILocation(line: 277, column: 15, scope: !5232)
!5431 = !DILocalVariable(name: "t55", scope: !5232, file: !80, line: 157, type: !6)
!5432 = !DILocation(line: 278, column: 15, scope: !5232)
!5433 = !DILocalVariable(name: "t56", scope: !5232, file: !80, line: 157, type: !6)
!5434 = !DILocation(line: 279, column: 15, scope: !5232)
!5435 = !DILocalVariable(name: "t57", scope: !5232, file: !80, line: 157, type: !6)
!5436 = !DILocation(line: 280, column: 14, scope: !5232)
!5437 = !DILocalVariable(name: "t58", scope: !5232, file: !80, line: 157, type: !6)
!5438 = !DILocation(line: 281, column: 14, scope: !5232)
!5439 = !DILocalVariable(name: "t59", scope: !5232, file: !80, line: 157, type: !6)
!5440 = !DILocation(line: 282, column: 15, scope: !5232)
!5441 = !DILocalVariable(name: "t60", scope: !5232, file: !80, line: 158, type: !6)
!5442 = !DILocation(line: 283, column: 15, scope: !5232)
!5443 = !DILocalVariable(name: "t61", scope: !5232, file: !80, line: 158, type: !6)
!5444 = !DILocation(line: 284, column: 15, scope: !5232)
!5445 = !DILocalVariable(name: "t62", scope: !5232, file: !80, line: 158, type: !6)
!5446 = !DILocation(line: 285, column: 15, scope: !5232)
!5447 = !DILocalVariable(name: "t63", scope: !5232, file: !80, line: 158, type: !6)
!5448 = !DILocation(line: 286, column: 14, scope: !5232)
!5449 = !DILocalVariable(name: "t64", scope: !5232, file: !80, line: 158, type: !6)
!5450 = !DILocation(line: 287, column: 15, scope: !5232)
!5451 = !DILocalVariable(name: "t65", scope: !5232, file: !80, line: 158, type: !6)
!5452 = !DILocation(line: 288, column: 14, scope: !5232)
!5453 = !DILocalVariable(name: "t66", scope: !5232, file: !80, line: 158, type: !6)
!5454 = !DILocation(line: 289, column: 14, scope: !5232)
!5455 = !DILocalVariable(name: "s0", scope: !5232, file: !80, line: 159, type: !6)
!5456 = !DILocation(line: 290, column: 14, scope: !5232)
!5457 = !DILocalVariable(name: "s6", scope: !5232, file: !80, line: 159, type: !6)
!5458 = !DILocation(line: 291, column: 14, scope: !5232)
!5459 = !DILocalVariable(name: "s7", scope: !5232, file: !80, line: 159, type: !6)
!5460 = !DILocalVariable(name: "t67", scope: !5232, file: !80, line: 158, type: !6)
!5461 = !DILocation(line: 293, column: 14, scope: !5232)
!5462 = !DILocalVariable(name: "s3", scope: !5232, file: !80, line: 159, type: !6)
!5463 = !DILocation(line: 294, column: 14, scope: !5232)
!5464 = !DILocalVariable(name: "s4", scope: !5232, file: !80, line: 159, type: !6)
!5465 = !DILocation(line: 295, column: 14, scope: !5232)
!5466 = !DILocalVariable(name: "s5", scope: !5232, file: !80, line: 159, type: !6)
!5467 = !DILocation(line: 296, column: 14, scope: !5232)
!5468 = !DILocalVariable(name: "s1", scope: !5232, file: !80, line: 159, type: !6)
!5469 = !DILocation(line: 297, column: 14, scope: !5232)
!5470 = !DILocalVariable(name: "s2", scope: !5232, file: !80, line: 159, type: !6)
!5471 = !DILocation(line: 299, column: 5, scope: !5232)
!5472 = !DILocation(line: 299, column: 10, scope: !5232)
!5473 = !DILocation(line: 300, column: 5, scope: !5232)
!5474 = !DILocation(line: 300, column: 10, scope: !5232)
!5475 = !DILocation(line: 301, column: 5, scope: !5232)
!5476 = !DILocation(line: 301, column: 10, scope: !5232)
!5477 = !DILocation(line: 302, column: 5, scope: !5232)
!5478 = !DILocation(line: 302, column: 10, scope: !5232)
!5479 = !DILocation(line: 303, column: 5, scope: !5232)
!5480 = !DILocation(line: 303, column: 10, scope: !5232)
!5481 = !DILocation(line: 304, column: 5, scope: !5232)
!5482 = !DILocation(line: 304, column: 10, scope: !5232)
!5483 = !DILocation(line: 305, column: 5, scope: !5232)
!5484 = !DILocation(line: 305, column: 10, scope: !5232)
!5485 = !DILocation(line: 306, column: 10, scope: !5232)
!5486 = !DILocation(line: 307, column: 1, scope: !5232)
!5487 = distinct !DISubprogram(name: "br_dec32le", scope: !80, file: !80, line: 96, type: !5488, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5488 = !DISubroutineType(types: !5489)
!5489 = !{!19, !49}
!5490 = !DILocalVariable(name: "src", arg: 1, scope: !5487, file: !80, line: 96, type: !49)
!5491 = !DILocation(line: 0, scope: !5487)
!5492 = !DILocation(line: 97, column: 22, scope: !5487)
!5493 = !DILocation(line: 97, column: 12, scope: !5487)
!5494 = !DILocation(line: 98, column: 25, scope: !5487)
!5495 = !DILocation(line: 98, column: 15, scope: !5487)
!5496 = !DILocation(line: 98, column: 32, scope: !5487)
!5497 = !DILocation(line: 98, column: 12, scope: !5487)
!5498 = !DILocation(line: 99, column: 25, scope: !5487)
!5499 = !DILocation(line: 99, column: 15, scope: !5487)
!5500 = !DILocation(line: 99, column: 32, scope: !5487)
!5501 = !DILocation(line: 99, column: 12, scope: !5487)
!5502 = !DILocation(line: 100, column: 25, scope: !5487)
!5503 = !DILocation(line: 100, column: 15, scope: !5487)
!5504 = !DILocation(line: 100, column: 32, scope: !5487)
!5505 = !DILocation(line: 100, column: 12, scope: !5487)
!5506 = !DILocation(line: 97, column: 5, scope: !5487)
!5507 = distinct !DISubprogram(name: "aes128_ctr_keyexp", scope: !80, file: !80, line: 647, type: !4893, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5508 = !DILocalVariable(name: "r", arg: 1, scope: !5507, file: !80, line: 647, type: !4895)
!5509 = !DILocation(line: 0, scope: !5507)
!5510 = !DILocalVariable(name: "key", arg: 2, scope: !5507, file: !80, line: 647, type: !49)
!5511 = !DILocation(line: 648, column: 5, scope: !5507)
!5512 = !DILocation(line: 649, column: 1, scope: !5507)
!5513 = distinct !DISubprogram(name: "aes192_ecb_keyexp", scope: !80, file: !80, line: 652, type: !5514, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5514 = !DISubroutineType(types: !5515)
!5515 = !{null, !5516, !49}
!5516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5517, size: 32)
!5517 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes192ctx", file: !80, line: 51, baseType: !5518)
!5518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 49, size: 32, elements: !5519)
!5519 = !{!5520}
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5518, file: !80, line: 50, baseType: !5, size: 32)
!5521 = !DILocalVariable(name: "r", arg: 1, scope: !5513, file: !80, line: 652, type: !5516)
!5522 = !DILocation(line: 0, scope: !5513)
!5523 = !DILocalVariable(name: "key", arg: 2, scope: !5513, file: !80, line: 652, type: !49)
!5524 = !DILocalVariable(name: "skey", scope: !5513, file: !80, line: 653, type: !5525)
!5525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1664, elements: !5526)
!5526 = !{!5527}
!5527 = !DISubrange(count: 26)
!5528 = !DILocation(line: 653, column: 14, scope: !5513)
!5529 = !DILocation(line: 654, column: 17, scope: !5513)
!5530 = !DILocation(line: 654, column: 15, scope: !5513)
!5531 = !DILocation(line: 655, column: 19, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5513, file: !80, line: 655, column: 9)
!5533 = !DILocation(line: 656, column: 9, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5532, file: !80, line: 655, column: 28)
!5535 = !DILocation(line: 657, column: 5, scope: !5534)
!5536 = !DILocation(line: 659, column: 5, scope: !5513)
!5537 = !DILocation(line: 660, column: 32, scope: !5513)
!5538 = !DILocation(line: 660, column: 5, scope: !5513)
!5539 = !DILocation(line: 661, column: 1, scope: !5513)
!5540 = distinct !DISubprogram(name: "aes192_ctr_keyexp", scope: !80, file: !80, line: 664, type: !5514, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5541 = !DILocalVariable(name: "r", arg: 1, scope: !5540, file: !80, line: 664, type: !5516)
!5542 = !DILocation(line: 0, scope: !5540)
!5543 = !DILocalVariable(name: "key", arg: 2, scope: !5540, file: !80, line: 664, type: !49)
!5544 = !DILocation(line: 665, column: 5, scope: !5540)
!5545 = !DILocation(line: 666, column: 1, scope: !5540)
!5546 = distinct !DISubprogram(name: "aes256_ecb_keyexp", scope: !80, file: !80, line: 669, type: !5547, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5547 = !DISubroutineType(types: !5548)
!5548 = !{null, !5549, !49}
!5549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5550, size: 32)
!5550 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes256ctx", file: !80, line: 56, baseType: !5551)
!5551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 54, size: 32, elements: !5552)
!5552 = !{!5553}
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5551, file: !80, line: 55, baseType: !5, size: 32)
!5554 = !DILocalVariable(name: "r", arg: 1, scope: !5546, file: !80, line: 669, type: !5549)
!5555 = !DILocation(line: 0, scope: !5546)
!5556 = !DILocalVariable(name: "key", arg: 2, scope: !5546, file: !80, line: 669, type: !49)
!5557 = !DILocalVariable(name: "skey", scope: !5546, file: !80, line: 670, type: !5558)
!5558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1920, elements: !5559)
!5559 = !{!5560}
!5560 = !DISubrange(count: 30)
!5561 = !DILocation(line: 670, column: 14, scope: !5546)
!5562 = !DILocation(line: 671, column: 17, scope: !5546)
!5563 = !DILocation(line: 671, column: 15, scope: !5546)
!5564 = !DILocation(line: 672, column: 19, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5546, file: !80, line: 672, column: 9)
!5566 = !DILocation(line: 673, column: 9, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5565, file: !80, line: 672, column: 28)
!5568 = !DILocation(line: 674, column: 5, scope: !5567)
!5569 = !DILocation(line: 676, column: 5, scope: !5546)
!5570 = !DILocation(line: 677, column: 32, scope: !5546)
!5571 = !DILocation(line: 677, column: 5, scope: !5546)
!5572 = !DILocation(line: 678, column: 1, scope: !5546)
!5573 = distinct !DISubprogram(name: "aes256_ctr_keyexp", scope: !80, file: !80, line: 681, type: !5547, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5574 = !DILocalVariable(name: "r", arg: 1, scope: !5573, file: !80, line: 681, type: !5549)
!5575 = !DILocation(line: 0, scope: !5573)
!5576 = !DILocalVariable(name: "key", arg: 2, scope: !5573, file: !80, line: 681, type: !49)
!5577 = !DILocation(line: 682, column: 5, scope: !5573)
!5578 = !DILocation(line: 683, column: 1, scope: !5573)
!5579 = distinct !DISubprogram(name: "aes128_ecb", scope: !80, file: !80, line: 686, type: !5580, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5580 = !DISubroutineType(types: !5581)
!5581 = !{null, !18, !49, !15, !5582}
!5582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5583, size: 32)
!5583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4896)
!5584 = !DILocalVariable(name: "out", arg: 1, scope: !5579, file: !80, line: 686, type: !18)
!5585 = !DILocation(line: 0, scope: !5579)
!5586 = !DILocalVariable(name: "in", arg: 2, scope: !5579, file: !80, line: 686, type: !49)
!5587 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5579, file: !80, line: 686, type: !15)
!5588 = !DILocalVariable(name: "ctx", arg: 4, scope: !5579, file: !80, line: 686, type: !5582)
!5589 = !DILocation(line: 687, column: 36, scope: !5579)
!5590 = !DILocation(line: 687, column: 5, scope: !5579)
!5591 = !DILocation(line: 688, column: 1, scope: !5579)
!5592 = distinct !DISubprogram(name: "aes_ecb", scope: !80, file: !80, line: 587, type: !5593, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5593 = !DISubroutineType(types: !5594)
!5594 = !{null, !18, !49, !15, !428, !17}
!5595 = !DILocalVariable(name: "out", arg: 1, scope: !5592, file: !80, line: 587, type: !18)
!5596 = !DILocation(line: 0, scope: !5592)
!5597 = !DILocalVariable(name: "in", arg: 2, scope: !5592, file: !80, line: 587, type: !49)
!5598 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5592, file: !80, line: 587, type: !15)
!5599 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5592, file: !80, line: 587, type: !428)
!5600 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5592, file: !80, line: 587, type: !17)
!5601 = !DILocalVariable(name: "blocks", scope: !5592, file: !80, line: 588, type: !5602)
!5602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !117)
!5603 = !DILocation(line: 588, column: 14, scope: !5592)
!5604 = !DILocalVariable(name: "t", scope: !5592, file: !80, line: 589, type: !814)
!5605 = !DILocation(line: 589, column: 19, scope: !5592)
!5606 = !DILocation(line: 591, column: 5, scope: !5592)
!5607 = !DILocation(line: 591, column: 20, scope: !5592)
!5608 = !DILocation(line: 592, column: 9, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5592, file: !80, line: 591, column: 26)
!5610 = !DILocation(line: 593, column: 9, scope: !5609)
!5611 = !DILocation(line: 594, column: 17, scope: !5609)
!5612 = !DILocation(line: 595, column: 12, scope: !5609)
!5613 = !DILocation(line: 596, column: 13, scope: !5609)
!5614 = distinct !{!5614, !5606, !5615, !244}
!5615 = !DILocation(line: 597, column: 5, scope: !5592)
!5616 = !DILocation(line: 599, column: 9, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5592, file: !80, line: 599, column: 9)
!5618 = !DILocation(line: 600, column: 42, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5617, file: !80, line: 599, column: 18)
!5620 = !DILocation(line: 600, column: 9, scope: !5619)
!5621 = !DILocation(line: 601, column: 9, scope: !5619)
!5622 = !DILocation(line: 602, column: 32, scope: !5619)
!5623 = !DILocation(line: 602, column: 9, scope: !5619)
!5624 = !DILocation(line: 603, column: 5, scope: !5619)
!5625 = !DILocation(line: 604, column: 1, scope: !5592)
!5626 = distinct !DISubprogram(name: "aes_ecb4x", scope: !80, file: !80, line: 545, type: !5627, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5627 = !DISubroutineType(types: !5628)
!5628 = !{null, !18, !5129, !428, !17}
!5629 = !DILocalVariable(name: "out", arg: 1, scope: !5626, file: !80, line: 545, type: !18)
!5630 = !DILocation(line: 0, scope: !5626)
!5631 = !DILocalVariable(name: "ivw", arg: 2, scope: !5626, file: !80, line: 545, type: !5129)
!5632 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !5626, file: !80, line: 545, type: !428)
!5633 = !DILocalVariable(name: "nrounds", arg: 4, scope: !5626, file: !80, line: 545, type: !17)
!5634 = !DILocalVariable(name: "w", scope: !5626, file: !80, line: 546, type: !5602)
!5635 = !DILocation(line: 546, column: 14, scope: !5626)
!5636 = !DILocalVariable(name: "q", scope: !5626, file: !80, line: 547, type: !4987)
!5637 = !DILocation(line: 547, column: 14, scope: !5626)
!5638 = !DILocation(line: 550, column: 5, scope: !5626)
!5639 = !DILocalVariable(name: "i", scope: !5626, file: !80, line: 548, type: !17)
!5640 = !DILocation(line: 551, column: 10, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5626, file: !80, line: 551, column: 5)
!5642 = !DILocation(line: 551, scope: !5641)
!5643 = !DILocation(line: 551, column: 19, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5641, file: !80, line: 551, column: 5)
!5645 = !DILocation(line: 551, column: 5, scope: !5641)
!5646 = !DILocation(line: 552, column: 36, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5644, file: !80, line: 551, column: 29)
!5648 = !DILocation(line: 552, column: 47, scope: !5647)
!5649 = !DILocation(line: 552, column: 43, scope: !5647)
!5650 = !DILocation(line: 552, column: 55, scope: !5647)
!5651 = !DILocation(line: 552, column: 9, scope: !5647)
!5652 = !DILocation(line: 551, column: 25, scope: !5644)
!5653 = !DILocation(line: 551, column: 5, scope: !5644)
!5654 = distinct !{!5654, !5645, !5655, !244}
!5655 = !DILocation(line: 553, column: 5, scope: !5641)
!5656 = !DILocation(line: 554, column: 5, scope: !5626)
!5657 = !DILocation(line: 557, column: 5, scope: !5626)
!5658 = !DILocation(line: 558, column: 10, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5626, file: !80, line: 558, column: 5)
!5660 = !DILocation(line: 558, scope: !5659)
!5661 = !DILocation(line: 558, column: 19, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5659, file: !80, line: 558, column: 5)
!5663 = !DILocation(line: 558, column: 5, scope: !5659)
!5664 = !DILocation(line: 559, column: 9, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5662, file: !80, line: 558, column: 35)
!5666 = !DILocation(line: 560, column: 9, scope: !5665)
!5667 = !DILocation(line: 561, column: 9, scope: !5665)
!5668 = !DILocation(line: 562, column: 33, scope: !5665)
!5669 = !DILocation(line: 562, column: 9, scope: !5665)
!5670 = !DILocation(line: 558, column: 31, scope: !5662)
!5671 = !DILocation(line: 558, column: 5, scope: !5662)
!5672 = distinct !{!5672, !5663, !5673, !244}
!5673 = !DILocation(line: 563, column: 5, scope: !5659)
!5674 = !DILocation(line: 564, column: 5, scope: !5626)
!5675 = !DILocation(line: 565, column: 5, scope: !5626)
!5676 = !DILocation(line: 566, column: 29, scope: !5626)
!5677 = !DILocation(line: 566, column: 5, scope: !5626)
!5678 = !DILocation(line: 568, column: 5, scope: !5626)
!5679 = !DILocation(line: 569, column: 10, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5626, file: !80, line: 569, column: 5)
!5681 = !DILocation(line: 569, scope: !5680)
!5682 = !DILocation(line: 569, column: 19, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5680, file: !80, line: 569, column: 5)
!5684 = !DILocation(line: 569, column: 5, scope: !5680)
!5685 = !DILocation(line: 570, column: 38, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5683, file: !80, line: 569, column: 30)
!5687 = !DILocation(line: 570, column: 50, scope: !5686)
!5688 = !DILocation(line: 570, column: 60, scope: !5686)
!5689 = !DILocation(line: 570, column: 56, scope: !5686)
!5690 = !DILocation(line: 570, column: 9, scope: !5686)
!5691 = !DILocation(line: 569, column: 26, scope: !5683)
!5692 = !DILocation(line: 569, column: 5, scope: !5683)
!5693 = distinct !{!5693, !5684, !5694, !244}
!5694 = !DILocation(line: 571, column: 5, scope: !5680)
!5695 = !DILocation(line: 572, column: 5, scope: !5626)
!5696 = !DILocation(line: 573, column: 1, scope: !5626)
!5697 = distinct !DISubprogram(name: "add_round_key", scope: !80, file: !80, line: 475, type: !5698, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5698 = !DISubroutineType(types: !5699)
!5699 = !{null, !5, !428}
!5700 = !DILocalVariable(name: "q", arg: 1, scope: !5697, file: !80, line: 475, type: !5)
!5701 = !DILocation(line: 0, scope: !5697)
!5702 = !DILocalVariable(name: "sk", arg: 2, scope: !5697, file: !80, line: 475, type: !428)
!5703 = !DILocation(line: 476, column: 13, scope: !5697)
!5704 = !DILocation(line: 476, column: 10, scope: !5697)
!5705 = !DILocation(line: 477, column: 13, scope: !5697)
!5706 = !DILocation(line: 477, column: 5, scope: !5697)
!5707 = !DILocation(line: 477, column: 10, scope: !5697)
!5708 = !DILocation(line: 478, column: 13, scope: !5697)
!5709 = !DILocation(line: 478, column: 5, scope: !5697)
!5710 = !DILocation(line: 478, column: 10, scope: !5697)
!5711 = !DILocation(line: 479, column: 13, scope: !5697)
!5712 = !DILocation(line: 479, column: 5, scope: !5697)
!5713 = !DILocation(line: 479, column: 10, scope: !5697)
!5714 = !DILocation(line: 480, column: 13, scope: !5697)
!5715 = !DILocation(line: 480, column: 5, scope: !5697)
!5716 = !DILocation(line: 480, column: 10, scope: !5697)
!5717 = !DILocation(line: 481, column: 13, scope: !5697)
!5718 = !DILocation(line: 481, column: 5, scope: !5697)
!5719 = !DILocation(line: 481, column: 10, scope: !5697)
!5720 = !DILocation(line: 482, column: 13, scope: !5697)
!5721 = !DILocation(line: 482, column: 5, scope: !5697)
!5722 = !DILocation(line: 482, column: 10, scope: !5697)
!5723 = !DILocation(line: 483, column: 13, scope: !5697)
!5724 = !DILocation(line: 483, column: 5, scope: !5697)
!5725 = !DILocation(line: 483, column: 10, scope: !5697)
!5726 = !DILocation(line: 484, column: 1, scope: !5697)
!5727 = distinct !DISubprogram(name: "shift_rows", scope: !80, file: !80, line: 486, type: !26, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5728 = !DILocalVariable(name: "q", arg: 1, scope: !5727, file: !80, line: 486, type: !5)
!5729 = !DILocation(line: 0, scope: !5727)
!5730 = !DILocalVariable(name: "i", scope: !5727, file: !80, line: 487, type: !45)
!5731 = !DILocation(line: 489, column: 10, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5727, file: !80, line: 489, column: 5)
!5733 = !DILocation(line: 489, scope: !5732)
!5734 = !DILocation(line: 489, column: 19, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5732, file: !80, line: 489, column: 5)
!5736 = !DILocation(line: 489, column: 5, scope: !5732)
!5737 = !DILocation(line: 492, column: 13, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5735, file: !80, line: 489, column: 30)
!5739 = !DILocalVariable(name: "x", scope: !5738, file: !80, line: 490, type: !6)
!5740 = !DILocation(line: 0, scope: !5738)
!5741 = !DILocation(line: 493, column: 19, scope: !5738)
!5742 = !DILocation(line: 494, column: 54, scope: !5738)
!5743 = !DILocation(line: 494, column: 16, scope: !5738)
!5744 = !DILocation(line: 495, column: 54, scope: !5738)
!5745 = !DILocation(line: 495, column: 16, scope: !5738)
!5746 = !DILocation(line: 496, column: 54, scope: !5738)
!5747 = !DILocation(line: 496, column: 16, scope: !5738)
!5748 = !DILocation(line: 497, column: 54, scope: !5738)
!5749 = !DILocation(line: 497, column: 16, scope: !5738)
!5750 = !DILocation(line: 498, column: 54, scope: !5738)
!5751 = !DILocation(line: 498, column: 16, scope: !5738)
!5752 = !DILocation(line: 499, column: 54, scope: !5738)
!5753 = !DILocation(line: 499, column: 16, scope: !5738)
!5754 = !DILocation(line: 493, column: 9, scope: !5738)
!5755 = !DILocation(line: 493, column: 14, scope: !5738)
!5756 = !DILocation(line: 489, column: 26, scope: !5735)
!5757 = !DILocation(line: 489, column: 5, scope: !5735)
!5758 = distinct !{!5758, !5736, !5759, !244}
!5759 = !DILocation(line: 500, column: 5, scope: !5732)
!5760 = !DILocation(line: 501, column: 1, scope: !5727)
!5761 = distinct !DISubprogram(name: "mix_columns", scope: !80, file: !80, line: 507, type: !26, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5762 = !DILocalVariable(name: "q", arg: 1, scope: !5761, file: !80, line: 507, type: !5)
!5763 = !DILocation(line: 0, scope: !5761)
!5764 = !DILocation(line: 511, column: 10, scope: !5761)
!5765 = !DILocalVariable(name: "q0", scope: !5761, file: !80, line: 508, type: !6)
!5766 = !DILocation(line: 512, column: 10, scope: !5761)
!5767 = !DILocalVariable(name: "q1", scope: !5761, file: !80, line: 508, type: !6)
!5768 = !DILocation(line: 513, column: 10, scope: !5761)
!5769 = !DILocalVariable(name: "q2", scope: !5761, file: !80, line: 508, type: !6)
!5770 = !DILocation(line: 514, column: 10, scope: !5761)
!5771 = !DILocalVariable(name: "q3", scope: !5761, file: !80, line: 508, type: !6)
!5772 = !DILocation(line: 515, column: 10, scope: !5761)
!5773 = !DILocalVariable(name: "q4", scope: !5761, file: !80, line: 508, type: !6)
!5774 = !DILocation(line: 516, column: 10, scope: !5761)
!5775 = !DILocalVariable(name: "q5", scope: !5761, file: !80, line: 508, type: !6)
!5776 = !DILocation(line: 517, column: 10, scope: !5761)
!5777 = !DILocalVariable(name: "q6", scope: !5761, file: !80, line: 508, type: !6)
!5778 = !DILocation(line: 518, column: 10, scope: !5761)
!5779 = !DILocalVariable(name: "q7", scope: !5761, file: !80, line: 508, type: !6)
!5780 = !DILocation(line: 519, column: 21, scope: !5761)
!5781 = !DILocalVariable(name: "r0", scope: !5761, file: !80, line: 509, type: !6)
!5782 = !DILocation(line: 520, column: 21, scope: !5761)
!5783 = !DILocalVariable(name: "r1", scope: !5761, file: !80, line: 509, type: !6)
!5784 = !DILocation(line: 521, column: 21, scope: !5761)
!5785 = !DILocalVariable(name: "r2", scope: !5761, file: !80, line: 509, type: !6)
!5786 = !DILocation(line: 522, column: 21, scope: !5761)
!5787 = !DILocalVariable(name: "r3", scope: !5761, file: !80, line: 509, type: !6)
!5788 = !DILocation(line: 523, column: 21, scope: !5761)
!5789 = !DILocalVariable(name: "r4", scope: !5761, file: !80, line: 509, type: !6)
!5790 = !DILocation(line: 524, column: 21, scope: !5761)
!5791 = !DILocalVariable(name: "r5", scope: !5761, file: !80, line: 509, type: !6)
!5792 = !DILocation(line: 525, column: 21, scope: !5761)
!5793 = !DILocalVariable(name: "r6", scope: !5761, file: !80, line: 509, type: !6)
!5794 = !DILocation(line: 526, column: 21, scope: !5761)
!5795 = !DILocalVariable(name: "r7", scope: !5761, file: !80, line: 509, type: !6)
!5796 = !DILocation(line: 528, column: 37, scope: !5761)
!5797 = !DILocation(line: 528, column: 27, scope: !5761)
!5798 = !DILocation(line: 528, column: 25, scope: !5761)
!5799 = !DILocation(line: 528, column: 10, scope: !5761)
!5800 = !DILocation(line: 529, column: 47, scope: !5761)
!5801 = !DILocation(line: 529, column: 37, scope: !5761)
!5802 = !DILocation(line: 529, column: 35, scope: !5761)
!5803 = !DILocation(line: 529, column: 5, scope: !5761)
!5804 = !DILocation(line: 529, column: 10, scope: !5761)
!5805 = !DILocation(line: 530, column: 37, scope: !5761)
!5806 = !DILocation(line: 530, column: 27, scope: !5761)
!5807 = !DILocation(line: 530, column: 25, scope: !5761)
!5808 = !DILocation(line: 530, column: 5, scope: !5761)
!5809 = !DILocation(line: 530, column: 10, scope: !5761)
!5810 = !DILocation(line: 531, column: 47, scope: !5761)
!5811 = !DILocation(line: 531, column: 37, scope: !5761)
!5812 = !DILocation(line: 531, column: 35, scope: !5761)
!5813 = !DILocation(line: 531, column: 5, scope: !5761)
!5814 = !DILocation(line: 531, column: 10, scope: !5761)
!5815 = !DILocation(line: 532, column: 47, scope: !5761)
!5816 = !DILocation(line: 532, column: 37, scope: !5761)
!5817 = !DILocation(line: 532, column: 35, scope: !5761)
!5818 = !DILocation(line: 532, column: 5, scope: !5761)
!5819 = !DILocation(line: 532, column: 10, scope: !5761)
!5820 = !DILocation(line: 533, column: 37, scope: !5761)
!5821 = !DILocation(line: 533, column: 27, scope: !5761)
!5822 = !DILocation(line: 533, column: 25, scope: !5761)
!5823 = !DILocation(line: 533, column: 5, scope: !5761)
!5824 = !DILocation(line: 533, column: 10, scope: !5761)
!5825 = !DILocation(line: 534, column: 37, scope: !5761)
!5826 = !DILocation(line: 534, column: 27, scope: !5761)
!5827 = !DILocation(line: 534, column: 25, scope: !5761)
!5828 = !DILocation(line: 534, column: 5, scope: !5761)
!5829 = !DILocation(line: 534, column: 10, scope: !5761)
!5830 = !DILocation(line: 535, column: 37, scope: !5761)
!5831 = !DILocation(line: 535, column: 27, scope: !5761)
!5832 = !DILocation(line: 535, column: 25, scope: !5761)
!5833 = !DILocation(line: 535, column: 5, scope: !5761)
!5834 = !DILocation(line: 535, column: 10, scope: !5761)
!5835 = !DILocation(line: 536, column: 1, scope: !5761)
!5836 = distinct !DISubprogram(name: "br_aes_ct64_interleave_out", scope: !80, file: !80, line: 367, type: !5837, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5837 = !DISubroutineType(types: !5838)
!5838 = !{null, !5094, !6, !6}
!5839 = !DILocalVariable(name: "w", arg: 1, scope: !5836, file: !80, line: 367, type: !5094)
!5840 = !DILocation(line: 0, scope: !5836)
!5841 = !DILocalVariable(name: "q0", arg: 2, scope: !5836, file: !80, line: 367, type: !6)
!5842 = !DILocalVariable(name: "q1", arg: 3, scope: !5836, file: !80, line: 367, type: !6)
!5843 = !DILocation(line: 370, column: 13, scope: !5836)
!5844 = !DILocalVariable(name: "x0", scope: !5836, file: !80, line: 368, type: !6)
!5845 = !DILocation(line: 371, column: 13, scope: !5836)
!5846 = !DILocalVariable(name: "x1", scope: !5836, file: !80, line: 368, type: !6)
!5847 = !DILocation(line: 372, column: 14, scope: !5836)
!5848 = !DILocation(line: 372, column: 20, scope: !5836)
!5849 = !DILocalVariable(name: "x2", scope: !5836, file: !80, line: 368, type: !6)
!5850 = !DILocation(line: 373, column: 14, scope: !5836)
!5851 = !DILocation(line: 373, column: 20, scope: !5836)
!5852 = !DILocalVariable(name: "x3", scope: !5836, file: !80, line: 368, type: !6)
!5853 = !DILocation(line: 374, column: 15, scope: !5836)
!5854 = !DILocation(line: 374, column: 8, scope: !5836)
!5855 = !DILocation(line: 375, column: 15, scope: !5836)
!5856 = !DILocation(line: 375, column: 8, scope: !5836)
!5857 = !DILocation(line: 376, column: 8, scope: !5836)
!5858 = !DILocation(line: 377, column: 8, scope: !5836)
!5859 = !DILocation(line: 378, column: 8, scope: !5836)
!5860 = !DILocation(line: 379, column: 8, scope: !5836)
!5861 = !DILocation(line: 382, column: 41, scope: !5836)
!5862 = !DILocation(line: 382, column: 25, scope: !5836)
!5863 = !DILocation(line: 382, column: 10, scope: !5836)
!5864 = !DILocation(line: 383, column: 41, scope: !5836)
!5865 = !DILocation(line: 383, column: 25, scope: !5836)
!5866 = !DILocation(line: 383, column: 5, scope: !5836)
!5867 = !DILocation(line: 383, column: 10, scope: !5836)
!5868 = !DILocation(line: 384, column: 41, scope: !5836)
!5869 = !DILocation(line: 384, column: 25, scope: !5836)
!5870 = !DILocation(line: 384, column: 5, scope: !5836)
!5871 = !DILocation(line: 384, column: 10, scope: !5836)
!5872 = !DILocation(line: 385, column: 41, scope: !5836)
!5873 = !DILocation(line: 385, column: 25, scope: !5836)
!5874 = !DILocation(line: 385, column: 5, scope: !5836)
!5875 = !DILocation(line: 385, column: 10, scope: !5836)
!5876 = !DILocation(line: 386, column: 1, scope: !5836)
!5877 = distinct !DISubprogram(name: "br_range_enc32le", scope: !80, file: !80, line: 127, type: !5878, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5878 = !DISubroutineType(types: !5879)
!5879 = !{null, !18, !5129, !15}
!5880 = !DILocalVariable(name: "dst", arg: 1, scope: !5877, file: !80, line: 127, type: !18)
!5881 = !DILocation(line: 0, scope: !5877)
!5882 = !DILocalVariable(name: "v", arg: 2, scope: !5877, file: !80, line: 127, type: !5129)
!5883 = !DILocalVariable(name: "num", arg: 3, scope: !5877, file: !80, line: 127, type: !15)
!5884 = !DILocation(line: 128, column: 5, scope: !5877)
!5885 = !DILocation(line: 128, column: 18, scope: !5877)
!5886 = !DILocation(line: 128, column: 15, scope: !5877)
!5887 = !DILocation(line: 129, column: 28, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5877, file: !80, line: 128, column: 23)
!5889 = !DILocation(line: 129, column: 25, scope: !5888)
!5890 = !DILocation(line: 129, column: 9, scope: !5888)
!5891 = !DILocation(line: 130, column: 13, scope: !5888)
!5892 = distinct !{!5892, !5884, !5893, !244}
!5893 = !DILocation(line: 131, column: 5, scope: !5877)
!5894 = !DILocation(line: 132, column: 1, scope: !5877)
!5895 = distinct !DISubprogram(name: "br_enc32le", scope: !80, file: !80, line: 119, type: !5896, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5896 = !DISubroutineType(types: !5897)
!5897 = !{null, !18, !19}
!5898 = !DILocalVariable(name: "dst", arg: 1, scope: !5895, file: !80, line: 119, type: !18)
!5899 = !DILocation(line: 0, scope: !5895)
!5900 = !DILocalVariable(name: "x", arg: 2, scope: !5895, file: !80, line: 119, type: !19)
!5901 = !DILocation(line: 120, column: 14, scope: !5895)
!5902 = !DILocation(line: 120, column: 12, scope: !5895)
!5903 = !DILocation(line: 121, column: 32, scope: !5895)
!5904 = !DILocation(line: 121, column: 14, scope: !5895)
!5905 = !DILocation(line: 121, column: 5, scope: !5895)
!5906 = !DILocation(line: 121, column: 12, scope: !5895)
!5907 = !DILocation(line: 122, column: 32, scope: !5895)
!5908 = !DILocation(line: 122, column: 14, scope: !5895)
!5909 = !DILocation(line: 122, column: 5, scope: !5895)
!5910 = !DILocation(line: 122, column: 12, scope: !5895)
!5911 = !DILocation(line: 123, column: 32, scope: !5895)
!5912 = !DILocation(line: 123, column: 14, scope: !5895)
!5913 = !DILocation(line: 123, column: 5, scope: !5895)
!5914 = !DILocation(line: 123, column: 12, scope: !5895)
!5915 = !DILocation(line: 124, column: 1, scope: !5895)
!5916 = distinct !DISubprogram(name: "rotr32", scope: !80, file: !80, line: 503, type: !5917, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5917 = !DISubroutineType(types: !5918)
!5918 = !{!6, !6}
!5919 = !DILocalVariable(name: "x", arg: 1, scope: !5916, file: !80, line: 503, type: !6)
!5920 = !DILocation(line: 0, scope: !5916)
!5921 = !DILocation(line: 504, column: 22, scope: !5916)
!5922 = !DILocation(line: 504, column: 5, scope: !5916)
!5923 = distinct !DISubprogram(name: "aes128_ctr", scope: !80, file: !80, line: 690, type: !5924, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5924 = !DISubroutineType(types: !5925)
!5925 = !{null, !18, !15, !49, !5582}
!5926 = !DILocalVariable(name: "out", arg: 1, scope: !5923, file: !80, line: 690, type: !18)
!5927 = !DILocation(line: 0, scope: !5923)
!5928 = !DILocalVariable(name: "outlen", arg: 2, scope: !5923, file: !80, line: 690, type: !15)
!5929 = !DILocalVariable(name: "iv", arg: 3, scope: !5923, file: !80, line: 690, type: !49)
!5930 = !DILocalVariable(name: "ctx", arg: 4, scope: !5923, file: !80, line: 690, type: !5582)
!5931 = !DILocation(line: 691, column: 35, scope: !5923)
!5932 = !DILocation(line: 691, column: 5, scope: !5923)
!5933 = !DILocation(line: 692, column: 1, scope: !5923)
!5934 = distinct !DISubprogram(name: "aes_ctr", scope: !80, file: !80, line: 607, type: !5935, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5935 = !DISubroutineType(types: !5936)
!5936 = !{null, !18, !15, !49, !428, !17}
!5937 = !DILocalVariable(name: "out", arg: 1, scope: !5934, file: !80, line: 607, type: !18)
!5938 = !DILocation(line: 0, scope: !5934)
!5939 = !DILocalVariable(name: "outlen", arg: 2, scope: !5934, file: !80, line: 607, type: !15)
!5940 = !DILocalVariable(name: "iv", arg: 3, scope: !5934, file: !80, line: 607, type: !49)
!5941 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5934, file: !80, line: 607, type: !428)
!5942 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5934, file: !80, line: 607, type: !17)
!5943 = !DILocalVariable(name: "ivw", scope: !5934, file: !80, line: 608, type: !5602)
!5944 = !DILocation(line: 608, column: 14, scope: !5934)
!5945 = !DILocalVariable(name: "cc", scope: !5934, file: !80, line: 610, type: !19)
!5946 = !DILocation(line: 612, column: 5, scope: !5934)
!5947 = !DILocation(line: 613, column: 16, scope: !5934)
!5948 = !DILocation(line: 613, column: 5, scope: !5934)
!5949 = !DILocation(line: 614, column: 16, scope: !5934)
!5950 = !DILocation(line: 614, column: 5, scope: !5934)
!5951 = !DILocation(line: 615, column: 16, scope: !5934)
!5952 = !DILocation(line: 615, column: 5, scope: !5934)
!5953 = !DILocation(line: 616, column: 15, scope: !5934)
!5954 = !DILocation(line: 616, column: 5, scope: !5934)
!5955 = !DILocation(line: 616, column: 13, scope: !5934)
!5956 = !DILocation(line: 617, column: 15, scope: !5934)
!5957 = !DILocation(line: 617, column: 5, scope: !5934)
!5958 = !DILocation(line: 617, column: 13, scope: !5934)
!5959 = !DILocation(line: 618, column: 15, scope: !5934)
!5960 = !DILocation(line: 618, column: 5, scope: !5934)
!5961 = !DILocation(line: 618, column: 13, scope: !5934)
!5962 = !DILocation(line: 619, column: 15, scope: !5934)
!5963 = !DILocation(line: 619, column: 5, scope: !5934)
!5964 = !DILocation(line: 619, column: 13, scope: !5934)
!5965 = !DILocation(line: 621, column: 5, scope: !5934)
!5966 = !DILocation(line: 621, column: 19, scope: !5934)
!5967 = !DILocation(line: 622, column: 9, scope: !5968)
!5968 = distinct !DILexicalBlock(scope: !5934, file: !80, line: 621, column: 25)
!5969 = !DILocation(line: 623, column: 13, scope: !5968)
!5970 = !DILocation(line: 624, column: 16, scope: !5968)
!5971 = distinct !{!5971, !5965, !5972, !244}
!5972 = !DILocation(line: 625, column: 5, scope: !5934)
!5973 = !DILocation(line: 626, column: 16, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5934, file: !80, line: 626, column: 9)
!5975 = !DILocalVariable(name: "tmp", scope: !5976, file: !80, line: 627, type: !814)
!5976 = distinct !DILexicalBlock(scope: !5974, file: !80, line: 626, column: 21)
!5977 = !DILocation(line: 627, column: 23, scope: !5976)
!5978 = !DILocation(line: 628, column: 9, scope: !5976)
!5979 = !DILocalVariable(name: "i", scope: !5934, file: !80, line: 609, type: !15)
!5980 = !DILocation(line: 629, column: 14, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5976, file: !80, line: 629, column: 9)
!5982 = !DILocation(line: 629, scope: !5981)
!5983 = !DILocation(line: 629, column: 23, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5981, file: !80, line: 629, column: 9)
!5985 = !DILocation(line: 629, column: 9, scope: !5981)
!5986 = !DILocation(line: 630, column: 22, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5984, file: !80, line: 629, column: 38)
!5988 = !DILocation(line: 630, column: 13, scope: !5987)
!5989 = !DILocation(line: 630, column: 20, scope: !5987)
!5990 = !DILocation(line: 629, column: 34, scope: !5984)
!5991 = !DILocation(line: 629, column: 9, scope: !5984)
!5992 = distinct !{!5992, !5985, !5993, !244}
!5993 = !DILocation(line: 631, column: 9, scope: !5981)
!5994 = !DILocation(line: 633, column: 1, scope: !5934)
!5995 = distinct !DISubprogram(name: "br_swap32", scope: !80, file: !80, line: 112, type: !5111, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5996 = !DILocalVariable(name: "x", arg: 1, scope: !5995, file: !80, line: 112, type: !19)
!5997 = !DILocation(line: 0, scope: !5995)
!5998 = !DILocation(line: 115, column: 22, scope: !5995)
!5999 = !DILocation(line: 115, column: 5, scope: !5995)
!6000 = distinct !DISubprogram(name: "aes_ctr4x", scope: !80, file: !80, line: 576, type: !6001, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6001 = !DISubroutineType(types: !6002)
!6002 = !{null, !18, !5094, !428, !17}
!6003 = !DILocalVariable(name: "out", arg: 1, scope: !6000, file: !80, line: 576, type: !18)
!6004 = !DILocation(line: 0, scope: !6000)
!6005 = !DILocalVariable(name: "ivw", arg: 2, scope: !6000, file: !80, line: 576, type: !5094)
!6006 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !6000, file: !80, line: 576, type: !428)
!6007 = !DILocalVariable(name: "nrounds", arg: 4, scope: !6000, file: !80, line: 576, type: !17)
!6008 = !DILocation(line: 577, column: 5, scope: !6000)
!6009 = !DILocation(line: 580, column: 17, scope: !6000)
!6010 = !DILocation(line: 580, column: 5, scope: !6000)
!6011 = !DILocation(line: 581, column: 17, scope: !6000)
!6012 = !DILocation(line: 581, column: 5, scope: !6000)
!6013 = !DILocation(line: 582, column: 17, scope: !6000)
!6014 = !DILocation(line: 582, column: 5, scope: !6000)
!6015 = !DILocation(line: 583, column: 17, scope: !6000)
!6016 = !DILocation(line: 583, column: 5, scope: !6000)
!6017 = !DILocation(line: 584, column: 1, scope: !6000)
!6018 = distinct !DISubprogram(name: "inc4_be", scope: !80, file: !80, line: 539, type: !6019, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6019 = !DISubroutineType(types: !6020)
!6020 = !{null, !5094}
!6021 = !DILocalVariable(name: "x", arg: 1, scope: !6018, file: !80, line: 539, type: !5094)
!6022 = !DILocation(line: 0, scope: !6018)
!6023 = !DILocation(line: 540, column: 28, scope: !6018)
!6024 = !DILocation(line: 540, column: 18, scope: !6018)
!6025 = !DILocation(line: 540, column: 32, scope: !6018)
!6026 = !DILocalVariable(name: "t", scope: !6018, file: !80, line: 540, type: !19)
!6027 = !DILocation(line: 541, column: 10, scope: !6018)
!6028 = !DILocation(line: 541, column: 8, scope: !6018)
!6029 = !DILocation(line: 542, column: 1, scope: !6018)
!6030 = distinct !DISubprogram(name: "aes192_ecb", scope: !80, file: !80, line: 694, type: !6031, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6031 = !DISubroutineType(types: !6032)
!6032 = !{null, !18, !49, !15, !6033}
!6033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6034, size: 32)
!6034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5517)
!6035 = !DILocalVariable(name: "out", arg: 1, scope: !6030, file: !80, line: 694, type: !18)
!6036 = !DILocation(line: 0, scope: !6030)
!6037 = !DILocalVariable(name: "in", arg: 2, scope: !6030, file: !80, line: 694, type: !49)
!6038 = !DILocalVariable(name: "nblocks", arg: 3, scope: !6030, file: !80, line: 694, type: !15)
!6039 = !DILocalVariable(name: "ctx", arg: 4, scope: !6030, file: !80, line: 694, type: !6033)
!6040 = !DILocation(line: 695, column: 36, scope: !6030)
!6041 = !DILocation(line: 695, column: 5, scope: !6030)
!6042 = !DILocation(line: 696, column: 1, scope: !6030)
!6043 = distinct !DISubprogram(name: "aes192_ctr", scope: !80, file: !80, line: 698, type: !6044, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6044 = !DISubroutineType(types: !6045)
!6045 = !{null, !18, !15, !49, !6033}
!6046 = !DILocalVariable(name: "out", arg: 1, scope: !6043, file: !80, line: 698, type: !18)
!6047 = !DILocation(line: 0, scope: !6043)
!6048 = !DILocalVariable(name: "outlen", arg: 2, scope: !6043, file: !80, line: 698, type: !15)
!6049 = !DILocalVariable(name: "iv", arg: 3, scope: !6043, file: !80, line: 698, type: !49)
!6050 = !DILocalVariable(name: "ctx", arg: 4, scope: !6043, file: !80, line: 698, type: !6033)
!6051 = !DILocation(line: 699, column: 35, scope: !6043)
!6052 = !DILocation(line: 699, column: 5, scope: !6043)
!6053 = !DILocation(line: 700, column: 1, scope: !6043)
!6054 = distinct !DISubprogram(name: "aes256_ecb", scope: !80, file: !80, line: 702, type: !6055, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6055 = !DISubroutineType(types: !6056)
!6056 = !{null, !18, !49, !15, !6057}
!6057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6058, size: 32)
!6058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5550)
!6059 = !DILocalVariable(name: "out", arg: 1, scope: !6054, file: !80, line: 702, type: !18)
!6060 = !DILocation(line: 0, scope: !6054)
!6061 = !DILocalVariable(name: "in", arg: 2, scope: !6054, file: !80, line: 702, type: !49)
!6062 = !DILocalVariable(name: "nblocks", arg: 3, scope: !6054, file: !80, line: 702, type: !15)
!6063 = !DILocalVariable(name: "ctx", arg: 4, scope: !6054, file: !80, line: 702, type: !6057)
!6064 = !DILocation(line: 703, column: 36, scope: !6054)
!6065 = !DILocation(line: 703, column: 5, scope: !6054)
!6066 = !DILocation(line: 704, column: 1, scope: !6054)
!6067 = distinct !DISubprogram(name: "aes256_ctr", scope: !80, file: !80, line: 706, type: !6068, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6068 = !DISubroutineType(types: !6069)
!6069 = !{null, !18, !15, !49, !6057}
!6070 = !DILocalVariable(name: "out", arg: 1, scope: !6067, file: !80, line: 706, type: !18)
!6071 = !DILocation(line: 0, scope: !6067)
!6072 = !DILocalVariable(name: "outlen", arg: 2, scope: !6067, file: !80, line: 706, type: !15)
!6073 = !DILocalVariable(name: "iv", arg: 3, scope: !6067, file: !80, line: 706, type: !49)
!6074 = !DILocalVariable(name: "ctx", arg: 4, scope: !6067, file: !80, line: 706, type: !6057)
!6075 = !DILocation(line: 707, column: 35, scope: !6067)
!6076 = !DILocation(line: 707, column: 5, scope: !6067)
!6077 = !DILocation(line: 708, column: 1, scope: !6067)
!6078 = distinct !DISubprogram(name: "aes128_ctx_release", scope: !80, file: !80, line: 710, type: !6079, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6079 = !DISubroutineType(types: !6080)
!6080 = !{null, !4895}
!6081 = !DILocalVariable(name: "r", arg: 1, scope: !6078, file: !80, line: 710, type: !4895)
!6082 = !DILocation(line: 0, scope: !6078)
!6083 = !DILocation(line: 711, column: 13, scope: !6078)
!6084 = !DILocation(line: 711, column: 5, scope: !6078)
!6085 = !DILocation(line: 712, column: 1, scope: !6078)
!6086 = distinct !DISubprogram(name: "aes192_ctx_release", scope: !80, file: !80, line: 714, type: !6087, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6087 = !DISubroutineType(types: !6088)
!6088 = !{null, !5516}
!6089 = !DILocalVariable(name: "r", arg: 1, scope: !6086, file: !80, line: 714, type: !5516)
!6090 = !DILocation(line: 0, scope: !6086)
!6091 = !DILocation(line: 715, column: 13, scope: !6086)
!6092 = !DILocation(line: 715, column: 5, scope: !6086)
!6093 = !DILocation(line: 716, column: 1, scope: !6086)
!6094 = distinct !DISubprogram(name: "aes256_ctx_release", scope: !80, file: !80, line: 718, type: !6095, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6095 = !DISubroutineType(types: !6096)
!6096 = !{null, !5549}
!6097 = !DILocalVariable(name: "r", arg: 1, scope: !6094, file: !80, line: 718, type: !5549)
!6098 = !DILocation(line: 0, scope: !6094)
!6099 = !DILocation(line: 719, column: 13, scope: !6094)
!6100 = !DILocation(line: 719, column: 5, scope: !6094)
!6101 = !DILocation(line: 720, column: 1, scope: !6094)
!6102 = distinct !DISubprogram(name: "AES_128_CTR", scope: !80, file: !80, line: 722, type: !6103, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6103 = !DISubroutineType(types: !6104)
!6104 = !{!45, !18, !15, !49, !15}
!6105 = !DILocalVariable(name: "output", arg: 1, scope: !6102, file: !80, line: 722, type: !18)
!6106 = !DILocation(line: 0, scope: !6102)
!6107 = !DILocalVariable(name: "outputByteLen", arg: 2, scope: !6102, file: !80, line: 722, type: !15)
!6108 = !DILocalVariable(name: "input", arg: 3, scope: !6102, file: !80, line: 723, type: !49)
!6109 = !DILocalVariable(name: "inputByteLen", arg: 4, scope: !6102, file: !80, line: 723, type: !15)
!6110 = !DILocalVariable(name: "ctx", scope: !6102, file: !80, line: 724, type: !4896)
!6111 = !DILocation(line: 724, column: 15, scope: !6102)
!6112 = !DILocalVariable(name: "iv", scope: !6102, file: !80, line: 725, type: !116)
!6113 = !DILocation(line: 725, column: 19, scope: !6102)
!6114 = !DILocation(line: 727, column: 5, scope: !6102)
!6115 = !DILocation(line: 728, column: 5, scope: !6102)
!6116 = !DILocation(line: 729, column: 5, scope: !6102)
!6117 = !DILocation(line: 731, column: 5, scope: !6102)
!6118 = distinct !DISubprogram(name: "AES_256_ECB", scope: !80, file: !80, line: 734, type: !6119, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6119 = !DISubroutineType(types: !6120)
!6120 = !{null, !257, !49, !18}
!6121 = !DILocalVariable(name: "input", arg: 1, scope: !6118, file: !80, line: 734, type: !257)
!6122 = !DILocation(line: 0, scope: !6118)
!6123 = !DILocalVariable(name: "key", arg: 2, scope: !6118, file: !80, line: 734, type: !49)
!6124 = !DILocalVariable(name: "output", arg: 3, scope: !6118, file: !80, line: 734, type: !18)
!6125 = !DILocalVariable(name: "ctx", scope: !6118, file: !80, line: 735, type: !5550)
!6126 = !DILocation(line: 735, column: 15, scope: !6118)
!6127 = !DILocation(line: 737, column: 5, scope: !6118)
!6128 = !DILocation(line: 738, column: 5, scope: !6118)
!6129 = !DILocation(line: 739, column: 5, scope: !6118)
!6130 = !DILocation(line: 740, column: 1, scope: !6118)
!6131 = !DILocalVariable(name: "mem", arg: 1, scope: !86, file: !87, line: 7, type: !69)
!6132 = !DILocation(line: 0, scope: !86)
!6133 = !DILocalVariable(name: "size", arg: 2, scope: !86, file: !87, line: 7, type: !15)
!6134 = !DILocation(line: 8, column: 9, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !86, file: !87, line: 8, column: 9)
!6136 = !DILocation(line: 11, column: 9, scope: !6137)
!6137 = distinct !DILexicalBlock(scope: !6135, file: !87, line: 8, column: 14)
!6138 = !DILocation(line: 12, column: 9, scope: !6137)
!6139 = !DILocation(line: 13, column: 5, scope: !6137)
!6140 = !DILocation(line: 14, column: 1, scope: !86)
!6141 = !DILocalVariable(name: "mem", arg: 1, scope: !94, file: !87, line: 15, type: !69)
!6142 = !DILocation(line: 0, scope: !94)
!6143 = !DILocalVariable(name: "size", arg: 2, scope: !94, file: !87, line: 15, type: !15)
!6144 = !DILocation(line: 18, column: 5, scope: !94)
!6145 = !DILocation(line: 19, column: 1, scope: !94)
!6146 = distinct !DISubprogram(name: "AES256_CTR_DRBG_Update", scope: !107, file: !107, line: 101, type: !6147, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6147 = !DISubroutineType(types: !6148)
!6148 = !{null, !18, !18, !18}
!6149 = !DILocalVariable(name: "provided_data", arg: 1, scope: !6146, file: !107, line: 101, type: !18)
!6150 = !DILocation(line: 0, scope: !6146)
!6151 = !DILocalVariable(name: "Key", arg: 2, scope: !6146, file: !107, line: 102, type: !18)
!6152 = !DILocalVariable(name: "V", arg: 3, scope: !6146, file: !107, line: 103, type: !18)
!6153 = !DILocalVariable(name: "temp", scope: !6146, file: !107, line: 104, type: !6154)
!6154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 384, elements: !6155)
!6155 = !{!6156}
!6156 = !DISubrange(count: 48)
!6157 = !DILocation(line: 104, column: 21, scope: !6146)
!6158 = !DILocalVariable(name: "i", scope: !6159, file: !107, line: 106, type: !45)
!6159 = distinct !DILexicalBlock(scope: !6146, file: !107, line: 106, column: 5)
!6160 = !DILocation(line: 0, scope: !6159)
!6161 = !DILocation(line: 106, column: 10, scope: !6159)
!6162 = !DILocation(line: 106, scope: !6159)
!6163 = !DILocation(line: 106, column: 23, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6159, file: !107, line: 106, column: 5)
!6165 = !DILocation(line: 106, column: 5, scope: !6159)
!6166 = !DILocation(line: 108, column: 9, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6168, file: !107, line: 108, column: 9)
!6168 = distinct !DILexicalBlock(scope: !6164, file: !107, line: 106, column: 33)
!6169 = !DILocation(line: 108, scope: !6167)
!6170 = !DILocalVariable(name: "j", scope: !6167, file: !107, line: 108, type: !45)
!6171 = !DILocation(line: 0, scope: !6167)
!6172 = !DILocation(line: 108, column: 28, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6167, file: !107, line: 108, column: 9)
!6174 = !DILocation(line: 109, column: 18, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6176, file: !107, line: 109, column: 18)
!6176 = distinct !DILexicalBlock(scope: !6173, file: !107, line: 108, column: 39)
!6177 = !DILocation(line: 109, column: 23, scope: !6175)
!6178 = !DILocation(line: 110, column: 17, scope: !6179)
!6179 = distinct !DILexicalBlock(scope: !6175, file: !107, line: 109, column: 33)
!6180 = !DILocation(line: 110, column: 22, scope: !6179)
!6181 = !DILocation(line: 108, column: 35, scope: !6173)
!6182 = !DILocation(line: 108, column: 9, scope: !6173)
!6183 = distinct !{!6183, !6166, !6184, !244}
!6184 = !DILocation(line: 115, column: 9, scope: !6167)
!6185 = !DILocation(line: 112, column: 17, scope: !6186)
!6186 = distinct !DILexicalBlock(scope: !6175, file: !107, line: 111, column: 20)
!6187 = !DILocation(line: 112, column: 21, scope: !6186)
!6188 = !DILocation(line: 113, column: 17, scope: !6186)
!6189 = !DILocation(line: 117, column: 38, scope: !6168)
!6190 = !DILocation(line: 117, column: 33, scope: !6168)
!6191 = !DILocation(line: 117, column: 9, scope: !6168)
!6192 = !DILocation(line: 106, column: 29, scope: !6164)
!6193 = !DILocation(line: 106, column: 5, scope: !6164)
!6194 = distinct !{!6194, !6165, !6195, !244}
!6195 = !DILocation(line: 118, column: 5, scope: !6159)
!6196 = !DILocation(line: 119, column: 24, scope: !6197)
!6197 = distinct !DILexicalBlock(scope: !6146, file: !107, line: 119, column: 10)
!6198 = !DILocation(line: 120, column: 9, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6197, file: !107, line: 120, column: 9)
!6200 = !DILocation(line: 120, scope: !6199)
!6201 = !DILocalVariable(name: "i", scope: !6199, file: !107, line: 120, type: !45)
!6202 = !DILocation(line: 0, scope: !6199)
!6203 = !DILocation(line: 120, column: 27, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6199, file: !107, line: 120, column: 9)
!6205 = !DILocation(line: 121, column: 24, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6204, file: !107, line: 120, column: 38)
!6207 = !DILocation(line: 121, column: 13, scope: !6206)
!6208 = !DILocation(line: 121, column: 21, scope: !6206)
!6209 = !DILocation(line: 120, column: 34, scope: !6204)
!6210 = !DILocation(line: 120, column: 9, scope: !6204)
!6211 = distinct !{!6211, !6198, !6212, !244}
!6212 = !DILocation(line: 122, column: 9, scope: !6199)
!6213 = !DILocation(line: 123, column: 5, scope: !6146)
!6214 = !DILocation(line: 124, column: 20, scope: !6146)
!6215 = !DILocation(line: 124, column: 5, scope: !6146)
!6216 = !DILocation(line: 125, column: 1, scope: !6146)
!6217 = distinct !DISubprogram(name: "AES256_ECB", scope: !107, file: !107, line: 24, type: !6147, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6218 = !DILocalVariable(name: "key", arg: 1, scope: !6217, file: !107, line: 24, type: !18)
!6219 = !DILocation(line: 0, scope: !6217)
!6220 = !DILocalVariable(name: "ctr", arg: 2, scope: !6217, file: !107, line: 24, type: !18)
!6221 = !DILocalVariable(name: "buffer", arg: 3, scope: !6217, file: !107, line: 24, type: !18)
!6222 = !DILocation(line: 25, column: 5, scope: !6217)
!6223 = !DILocation(line: 26, column: 1, scope: !6217)
!6224 = distinct !DISubprogram(name: "randombytes", scope: !107, file: !107, line: 127, type: !6225, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6225 = !DISubroutineType(types: !6226)
!6226 = !{!45, !18, !15}
!6227 = !DILocalVariable(name: "random_array", arg: 1, scope: !6224, file: !107, line: 127, type: !18)
!6228 = !DILocation(line: 0, scope: !6224)
!6229 = !DILocalVariable(name: "nbytes", arg: 2, scope: !6224, file: !107, line: 127, type: !15)
!6230 = !DILocation(line: 128, column: 15, scope: !6224)
!6231 = !DILocalVariable(name: "ret", scope: !6224, file: !107, line: 128, type: !45)
!6232 = !DILocation(line: 132, column: 5, scope: !6224)
!6233 = distinct !DISubprogram(name: "randombytes_nist", scope: !107, file: !107, line: 69, type: !6225, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6234 = !DILocalVariable(name: "x", arg: 1, scope: !6233, file: !107, line: 69, type: !18)
!6235 = !DILocation(line: 0, scope: !6233)
!6236 = !DILocalVariable(name: "xlen", arg: 2, scope: !6233, file: !107, line: 69, type: !15)
!6237 = !DILocalVariable(name: "block", scope: !6233, file: !107, line: 70, type: !116)
!6238 = !DILocation(line: 70, column: 21, scope: !6233)
!6239 = !DILocalVariable(name: "i", scope: !6233, file: !107, line: 71, type: !15)
!6240 = !DILocation(line: 73, column: 5, scope: !6233)
!6241 = !DILocation(line: 73, column: 18, scope: !6233)
!6242 = !DILocation(line: 75, column: 9, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6244, file: !107, line: 75, column: 9)
!6244 = distinct !DILexicalBlock(scope: !6233, file: !107, line: 73, column: 24)
!6245 = !DILocation(line: 75, scope: !6243)
!6246 = !DILocalVariable(name: "j", scope: !6243, file: !107, line: 75, type: !45)
!6247 = !DILocation(line: 0, scope: !6243)
!6248 = !DILocation(line: 75, column: 28, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6243, file: !107, line: 75, column: 9)
!6250 = !DILocation(line: 76, column: 18, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6252, file: !107, line: 76, column: 18)
!6252 = distinct !DILexicalBlock(scope: !6249, file: !107, line: 75, column: 39)
!6253 = !DILocation(line: 76, column: 32, scope: !6251)
!6254 = !DILocation(line: 77, column: 17, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6251, file: !107, line: 76, column: 42)
!6256 = !DILocation(line: 77, column: 31, scope: !6255)
!6257 = !DILocation(line: 75, column: 35, scope: !6249)
!6258 = !DILocation(line: 75, column: 9, scope: !6249)
!6259 = distinct !{!6259, !6242, !6260, !244}
!6260 = !DILocation(line: 82, column: 9, scope: !6243)
!6261 = !DILocation(line: 79, column: 17, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6251, file: !107, line: 78, column: 20)
!6263 = !DILocation(line: 79, column: 30, scope: !6262)
!6264 = !DILocation(line: 80, column: 17, scope: !6262)
!6265 = !DILocation(line: 83, column: 9, scope: !6244)
!6266 = !DILocation(line: 84, column: 19, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6244, file: !107, line: 84, column: 14)
!6268 = !DILocation(line: 85, column: 22, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6267, file: !107, line: 84, column: 26)
!6270 = !DILocation(line: 85, column: 13, scope: !6269)
!6271 = !DILocation(line: 86, column: 15, scope: !6269)
!6272 = !DILocation(line: 87, column: 18, scope: !6269)
!6273 = !DILocation(line: 88, column: 9, scope: !6269)
!6274 = !DILocation(line: 89, column: 22, scope: !6275)
!6275 = distinct !DILexicalBlock(scope: !6267, file: !107, line: 88, column: 16)
!6276 = !DILocation(line: 89, column: 13, scope: !6275)
!6277 = !DILocation(line: 90, column: 15, scope: !6275)
!6278 = !DILocation(line: 0, scope: !6267)
!6279 = distinct !{!6279, !6240, !6280, !244}
!6280 = !DILocation(line: 93, column: 5, scope: !6233)
!6281 = !DILocation(line: 94, column: 5, scope: !6233)
!6282 = !DILocation(line: 95, column: 28, scope: !6233)
!6283 = !DILocation(line: 97, column: 5, scope: !6233)
!6284 = distinct !DISubprogram(name: "randombytes_init", scope: !107, file: !107, line: 136, type: !6285, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6285 = !DISubroutineType(types: !6286)
!6286 = !{null, !18, !18, !45}
!6287 = !DILocalVariable(name: "entropy_input", arg: 1, scope: !6284, file: !107, line: 136, type: !18)
!6288 = !DILocation(line: 0, scope: !6284)
!6289 = !DILocalVariable(name: "personalization_string", arg: 2, scope: !6284, file: !107, line: 137, type: !18)
!6290 = !DILocalVariable(name: "security_strength", arg: 3, scope: !6284, file: !107, line: 138, type: !45)
!6291 = !DILocation(line: 139, column: 12, scope: !6284)
!6292 = !DILocation(line: 139, column: 5, scope: !6284)
!6293 = distinct !DISubprogram(name: "randombytes_init_nist", scope: !107, file: !107, line: 51, type: !6285, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6294 = !DILocalVariable(name: "entropy_input", arg: 1, scope: !6293, file: !107, line: 51, type: !18)
!6295 = !DILocation(line: 0, scope: !6293)
!6296 = !DILocalVariable(name: "personalization_string", arg: 2, scope: !6293, file: !107, line: 52, type: !18)
!6297 = !DILocalVariable(name: "security_strength", arg: 3, scope: !6293, file: !107, line: 53, type: !45)
!6298 = !DILocalVariable(name: "seed_material", scope: !6293, file: !107, line: 54, type: !6154)
!6299 = !DILocation(line: 54, column: 21, scope: !6293)
!6300 = !DILocation(line: 57, column: 5, scope: !6293)
!6301 = !DILocation(line: 58, column: 9, scope: !6302)
!6302 = distinct !DILexicalBlock(scope: !6293, file: !107, line: 58, column: 9)
!6303 = !DILocation(line: 59, column: 9, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6302, file: !107, line: 59, column: 9)
!6305 = !DILocation(line: 59, scope: !6304)
!6306 = !DILocalVariable(name: "i", scope: !6304, file: !107, line: 59, type: !45)
!6307 = !DILocation(line: 0, scope: !6304)
!6308 = !DILocation(line: 59, column: 27, scope: !6309)
!6309 = distinct !DILexicalBlock(scope: !6304, file: !107, line: 59, column: 9)
!6310 = !DILocation(line: 60, column: 33, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6309, file: !107, line: 59, column: 38)
!6312 = !DILocation(line: 60, column: 13, scope: !6311)
!6313 = !DILocation(line: 60, column: 30, scope: !6311)
!6314 = !DILocation(line: 59, column: 34, scope: !6309)
!6315 = !DILocation(line: 59, column: 9, scope: !6309)
!6316 = distinct !{!6316, !6303, !6317, !244}
!6317 = !DILocation(line: 61, column: 9, scope: !6304)
!6318 = !DILocation(line: 62, column: 5, scope: !6293)
!6319 = !DILocation(line: 63, column: 5, scope: !6293)
!6320 = !DILocation(line: 64, column: 5, scope: !6293)
!6321 = !DILocation(line: 65, column: 29, scope: !6293)
!6322 = !DILocation(line: 66, column: 1, scope: !6293)
