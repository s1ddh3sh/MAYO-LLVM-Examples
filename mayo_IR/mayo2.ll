; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-unknown-none-eabihf"

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
    #dbg_value(i32 %c93.0, !1317, !DIExpression(), !1316)
  %cmp96 = icmp samesign ult i32 %c93.0, 400, !dbg !1318
  br i1 %cmp96, label %for.body97, label %for.end101, !dbg !1186

for.body97:                                       ; preds = %for.cond94
  %add.ptr98 = getelementptr inbounds nuw i64, ptr %A, i32 %c93.0, !dbg !1320
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr98) #4, !dbg !1322
  %add100 = add nuw nsw i32 %c93.0, 16, !dbg !1323
    #dbg_value(i32 %add100, !1317, !DIExpression(), !1316)
  br label %for.cond94, !dbg !1324, !llvm.loop !1325

for.end101:                                       ; preds = %for.cond94
    #dbg_declare(ptr %tab, !1327, !DIExpression(), !1328)
  call void @mayo_memset(ptr %tab, i8 0, i32 16), !dbg !1328
    #dbg_value(i32 0, !1329, !DIExpression(), !1331)
  br label %for.cond103, !dbg !1332

for.cond103:                                      ; preds = %for.body105, %for.end101
  %i102.0 = phi i32 [ 0, %for.end101 ], [ %inc125, %for.body105 ], !dbg !1333
    #dbg_value(i32 %i102.0, !1329, !DIExpression(), !1331)
  %exitcond8 = icmp ne i32 %i102.0, 4, !dbg !1334
  br i1 %exitcond8, label %for.body105, label %for.cond128.preheader, !dbg !1336

for.cond128.preheader:                            ; preds = %for.cond103
  br label %for.cond128, !dbg !1337

for.body105:                                      ; preds = %for.cond103
  %arrayidx106 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i102.0, !dbg !1339
  %10 = load i8, ptr %arrayidx106, align 1, !dbg !1339
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %10, i8 noundef zeroext 1) #4, !dbg !1341
  %mul107 = shl nuw nsw i32 %i102.0, 2, !dbg !1342
  %arrayidx108 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul107, !dbg !1343
  store i8 %call, ptr %arrayidx108, align 1, !dbg !1344
  %call110 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %10, i8 noundef zeroext 2) #4, !dbg !1345
  %mul111 = shl nuw nsw i32 %i102.0, 2, !dbg !1346
  %add112 = or disjoint i32 %mul111, 1, !dbg !1347
  %arrayidx113 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add112, !dbg !1348
  store i8 %call110, ptr %arrayidx113, align 1, !dbg !1349
  %arrayidx114 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i102.0, !dbg !1350
  %11 = load i8, ptr %arrayidx114, align 1, !dbg !1350
  %call115 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %11, i8 noundef zeroext 4) #4, !dbg !1351
  %mul116 = shl nuw nsw i32 %i102.0, 2, !dbg !1352
  %add117 = or disjoint i32 %mul116, 2, !dbg !1353
  %arrayidx118 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add117, !dbg !1354
  store i8 %call115, ptr %arrayidx118, align 1, !dbg !1355
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i102.0, !dbg !1356
  %12 = load i8, ptr %arrayidx119, align 1, !dbg !1356
  %call120 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %12, i8 noundef zeroext 8) #4, !dbg !1357
  %mul121 = shl nuw nsw i32 %i102.0, 2, !dbg !1358
  %add122 = or disjoint i32 %mul121, 3, !dbg !1359
  %arrayidx123 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add122, !dbg !1360
  store i8 %call120, ptr %arrayidx123, align 1, !dbg !1361
  %inc125 = add nuw nsw i32 %i102.0, 1, !dbg !1362
    #dbg_value(i32 %inc125, !1329, !DIExpression(), !1331)
  br label %for.cond103, !dbg !1363, !llvm.loop !1364

for.cond128:                                      ; preds = %for.cond128.preheader, %for.inc189
  %c127.0 = phi i32 [ %add190, %for.inc189 ], [ 0, %for.cond128.preheader ], !dbg !1366
    #dbg_value(i32 %c127.0, !1367, !DIExpression(), !1368)
  %cmp129 = icmp samesign ult i32 %c127.0, 80, !dbg !1369
  br i1 %cmp129, label %for.cond131.preheader, label %for.cond193.preheader, !dbg !1337

for.cond131.preheader:                            ; preds = %for.cond128
  br label %for.cond131, !dbg !1371

for.cond193.preheader:                            ; preds = %for.cond128
  br label %for.cond193, !dbg !1374

for.cond131:                                      ; preds = %for.cond131.preheader, %for.inc186
  %r.0 = phi i32 [ %inc187, %for.inc186 ], [ 64, %for.cond131.preheader ], !dbg !1376
    #dbg_value(i32 %r.0, !1377, !DIExpression(), !1376)
  %exitcond10 = icmp ne i32 %r.0, 74, !dbg !1378
  br i1 %exitcond10, label %for.body133, label %for.inc189, !dbg !1371

for.body133:                                      ; preds = %for.cond131
  %div1 = lshr i32 %r.0, 4, !dbg !1380
  %mul134 = mul nuw nsw i32 %div1, 80, !dbg !1382
  %add135 = add nuw nsw i32 %mul134, %c127.0, !dbg !1383
  %rem = and i32 %r.0, 15, !dbg !1384
  %add136 = or disjoint i32 %add135, %rem, !dbg !1385
    #dbg_value(i32 %add136, !1386, !DIExpression(), !1387)
  %arrayidx137 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add136, !dbg !1388
  %13 = load i64, ptr %arrayidx137, align 8, !dbg !1388
  %and = and i64 %13, 1229782938247303441, !dbg !1389
    #dbg_value(i64 %and, !1390, !DIExpression(), !1387)
  %shr139 = lshr i64 %13, 1, !dbg !1391
  %and140 = and i64 %shr139, 1229782938247303441, !dbg !1392
    #dbg_value(i64 %and140, !1393, !DIExpression(), !1387)
  %shr142 = lshr i64 %13, 2, !dbg !1394
  %and143 = and i64 %shr142, 1229782938247303441, !dbg !1395
    #dbg_value(i64 %and143, !1396, !DIExpression(), !1387)
  %arrayidx144 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add136, !dbg !1397
  %14 = load i64, ptr %arrayidx144, align 8, !dbg !1397
  %shr145 = lshr i64 %14, 3, !dbg !1398
  %and146 = and i64 %shr145, 1229782938247303441, !dbg !1399
    #dbg_value(i64 %and146, !1400, !DIExpression(), !1387)
    #dbg_value(i32 0, !1401, !DIExpression(), !1403)
  br label %for.cond147, !dbg !1404

for.cond147:                                      ; preds = %for.body149, %for.body133
  %t.0 = phi i32 [ 0, %for.body133 ], [ %inc184, %for.body149 ], !dbg !1405
    #dbg_value(i32 %t.0, !1401, !DIExpression(), !1403)
  %exitcond9 = icmp ne i32 %t.0, 4, !dbg !1406
  br i1 %exitcond9, label %for.body149, label %for.inc186, !dbg !1408

for.body149:                                      ; preds = %for.cond147
  %mul150 = shl nuw nsw i32 %t.0, 2, !dbg !1409
  %arrayidx152 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul150, !dbg !1411
  %15 = load i8, ptr %arrayidx152, align 1, !dbg !1411
  %conv = zext i8 %15 to i64, !dbg !1411
  %mul153 = mul i64 %and, %conv, !dbg !1412
  %mul154 = shl nuw nsw i32 %t.0, 2, !dbg !1413
  %add155 = or disjoint i32 %mul154, 1, !dbg !1414
  %arrayidx156 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add155, !dbg !1415
  %16 = load i8, ptr %arrayidx156, align 1, !dbg !1415
  %conv157 = zext i8 %16 to i64, !dbg !1415
  %mul158 = mul i64 %and140, %conv157, !dbg !1416
  %xor159 = xor i64 %mul153, %mul158, !dbg !1417
  %mul160 = shl nuw nsw i32 %t.0, 2, !dbg !1418
  %add161 = or disjoint i32 %mul160, 2, !dbg !1419
  %arrayidx162 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add161, !dbg !1420
  %17 = load i8, ptr %arrayidx162, align 1, !dbg !1420
  %conv163 = zext i8 %17 to i64, !dbg !1420
  %mul164 = mul i64 %and143, %conv163, !dbg !1421
  %xor165 = xor i64 %xor159, %mul164, !dbg !1422
  %mul166 = shl nuw nsw i32 %t.0, 2, !dbg !1423
  %add167 = or disjoint i32 %mul166, 3, !dbg !1424
  %arrayidx168 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add167, !dbg !1425
  %18 = load i8, ptr %arrayidx168, align 1, !dbg !1425
  %conv169 = zext i8 %18 to i64, !dbg !1425
  %mul170 = mul i64 %and146, %conv169, !dbg !1426
  %xor171 = xor i64 %xor165, %mul170, !dbg !1427
  %add172 = add nuw nsw i32 %r.0, %t.0, !dbg !1428
  %sub173 = add nsw i32 %add172, -64, !dbg !1429
  %div1742 = lshr i32 %sub173, 4, !dbg !1430
  %mul175 = mul i32 %div1742, 80, !dbg !1431
  %add176 = add i32 %mul175, %c127.0, !dbg !1432
  %add177 = add nuw nsw i32 %r.0, %t.0, !dbg !1433
  %rem179 = and i32 %add177, 15, !dbg !1434
  %add180 = or disjoint i32 %add176, %rem179, !dbg !1435
  %arrayidx181 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add180, !dbg !1436
  %19 = load i64, ptr %arrayidx181, align 8, !dbg !1437
  %xor182 = xor i64 %19, %xor171, !dbg !1437
  store i64 %xor182, ptr %arrayidx181, align 8, !dbg !1437
  %inc184 = add nuw nsw i32 %t.0, 1, !dbg !1438
    #dbg_value(i32 %inc184, !1401, !DIExpression(), !1403)
  br label %for.cond147, !dbg !1439, !llvm.loop !1440

for.inc186:                                       ; preds = %for.cond147
  %inc187 = add nuw nsw i32 %r.0, 1, !dbg !1442
    #dbg_value(i32 %inc187, !1377, !DIExpression(), !1376)
  br label %for.cond131, !dbg !1443, !llvm.loop !1444

for.inc189:                                       ; preds = %for.cond131
  %add190 = add nuw nsw i32 %c127.0, 16, !dbg !1446
    #dbg_value(i32 %add190, !1367, !DIExpression(), !1368)
  br label %for.cond128, !dbg !1447, !llvm.loop !1448

for.cond193:                                      ; preds = %for.cond193.preheader, %for.inc227
  %indvars.iv = phi i32 [ 64, %for.cond193.preheader ], [ %indvars.iv.next, %for.inc227 ], !dbg !1450
  %r192.0 = phi i32 [ %add228, %for.inc227 ], [ 0, %for.cond193.preheader ], !dbg !1450
    #dbg_value(i32 %r192.0, !1451, !DIExpression(), !1452)
  %cmp194 = icmp samesign ult i32 %r192.0, 64, !dbg !1453
  br i1 %cmp194, label %for.cond198.preheader, label %for.end229, !dbg !1374

for.cond198.preheader:                            ; preds = %for.cond193
  br label %for.cond198, !dbg !1455

for.cond198:                                      ; preds = %for.cond198.preheader, %for.inc224
  %c197.0 = phi i32 [ %add225, %for.inc224 ], [ 0, %for.cond198.preheader ], !dbg !1458
    #dbg_value(i32 %c197.0, !1459, !DIExpression(), !1460)
  %cmp199 = icmp samesign ult i32 %c197.0, 68, !dbg !1461
  br i1 %cmp199, label %for.cond203.preheader, label %for.inc227, !dbg !1455

for.cond203.preheader:                            ; preds = %for.cond198
  br label %for.cond203, !dbg !1463

for.cond203:                                      ; preds = %for.cond203.preheader, %for.body207
  %i202.0 = phi i32 [ %inc222, %for.body207 ], [ 0, %for.cond203.preheader ], !dbg !1466
    #dbg_value(i32 %i202.0, !1467, !DIExpression(), !1468)
  %exitcond11 = icmp ne i32 %i202.0, %indvars.iv, !dbg !1469
  br i1 %exitcond11, label %for.body207, label %for.inc224, !dbg !1463

for.body207:                                      ; preds = %for.cond203
  %div209 = mul nuw nsw i32 %r192.0, 5, !dbg !1471
  %add210 = add nuw nsw i32 %div209, %c197.0, !dbg !1473
  %add211 = add nuw nsw i32 %add210, %i202.0, !dbg !1474
  %arrayidx212 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add211, !dbg !1475
  %add213 = add nuw nsw i32 %r192.0, %i202.0, !dbg !1476
  %mul214 = mul nuw nsw i32 %add213, 69, !dbg !1477
  %add.ptr215 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul214, !dbg !1478
  %add.ptr216 = getelementptr inbounds nuw i8, ptr %add.ptr215, i32 %c197.0, !dbg !1479
  %cmp218 = icmp samesign ult i32 %c197.0, 52, !dbg !1480
  %sub220 = sub nsw i32 68, %c197.0, !dbg !1480
  %cond = select i1 %cmp218, i32 16, i32 %sub220, !dbg !1480
  call fastcc void @decode(ptr noundef nonnull %arrayidx212, ptr noundef nonnull %add.ptr216, i32 noundef %cond) #4, !dbg !1481
  %inc222 = add nuw nsw i32 %i202.0, 1, !dbg !1482
    #dbg_value(i32 %inc222, !1467, !DIExpression(), !1468)
  br label %for.cond203, !dbg !1483, !llvm.loop !1484

for.inc224:                                       ; preds = %for.cond203
  %add225 = add nuw nsw i32 %c197.0, 16, !dbg !1486
    #dbg_value(i32 %add225, !1459, !DIExpression(), !1460)
  br label %for.cond198, !dbg !1487, !llvm.loop !1488

for.inc227:                                       ; preds = %for.cond198
  %add228 = add nuw nsw i32 %r192.0, 16, !dbg !1490
    #dbg_value(i32 %add228, !1451, !DIExpression(), !1452)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1491
  br label %for.cond193, !dbg !1491, !llvm.loop !1492

for.end229:                                       ; preds = %for.cond193
  ret void, !dbg !1494
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1495 {
entry:
    #dbg_value(ptr %a, !1498, !DIExpression(), !1499)
    #dbg_value(ptr %b, !1500, !DIExpression(), !1499)
    #dbg_value(ptr %c, !1501, !DIExpression(), !1499)
    #dbg_value(i32 17, !1502, !DIExpression(), !1499)
    #dbg_value(i32 64, !1503, !DIExpression(), !1499)
    #dbg_value(i32 1, !1504, !DIExpression(), !1499)
    #dbg_value(i32 0, !1505, !DIExpression(), !1507)
  br label %for.cond, !dbg !1508

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1509
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1498, !DIExpression(), !1499)
    #dbg_value(ptr %c.addr.0, !1501, !DIExpression(), !1499)
    #dbg_value(i32 %i.0, !1505, !DIExpression(), !1507)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !1510
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !1512

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1513

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !1516
    #dbg_value(i32 poison, !1517, !DIExpression(), !1518)
    #dbg_value(ptr %c.addr.1, !1501, !DIExpression(), !1499)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !1513

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef 17, i32 noundef 1) #4, !dbg !1519
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1522
    #dbg_value(i32 1, !1517, !DIExpression(), !1518)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1523
    #dbg_value(ptr %incdec.ptr, !1501, !DIExpression(), !1499)
  br label %for.cond1, !dbg !1524, !llvm.loop !1525

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw nsw i32 %i.0, 1, !dbg !1527
    #dbg_value(i32 %inc5, !1505, !DIExpression(), !1507)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %a.addr.0, i32 17, !dbg !1528
    #dbg_value(ptr %add.ptr6, !1498, !DIExpression(), !1499)
  br label %for.cond, !dbg !1529, !llvm.loop !1530

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1532
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1533 {
entry:
    #dbg_value(ptr %a, !1536, !DIExpression(), !1537)
    #dbg_value(ptr %b, !1538, !DIExpression(), !1537)
    #dbg_value(ptr %c, !1539, !DIExpression(), !1537)
    #dbg_value(i32 64, !1540, !DIExpression(), !1537)
    #dbg_value(i32 1, !1541, !DIExpression(), !1537)
    #dbg_value(i32 0, !1542, !DIExpression(), !1544)
  br label %for.cond, !dbg !1545

for.cond:                                         ; preds = %for.body3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ], !dbg !1546
    #dbg_value(i32 %i.0, !1542, !DIExpression(), !1544)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !1547
  br i1 %exitcond, label %for.body3, label %for.end13, !dbg !1549

for.body3:                                        ; preds = %for.cond
    #dbg_value(i32 poison, !1550, !DIExpression(), !1553)
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1554
  %0 = load i8, ptr %add.ptr, align 1, !dbg !1557
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %b, i32 %i.0, !dbg !1558
  %1 = load i8, ptr %add.ptr6, align 1, !dbg !1559
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #4, !dbg !1560
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !1561
  store i8 %call, ptr %add.ptr9, align 1, !dbg !1562
    #dbg_value(i32 1, !1550, !DIExpression(), !1553)
    #dbg_value(i32 poison, !1550, !DIExpression(), !1553)
  %inc12 = add nuw nsw i32 %i.0, 1, !dbg !1563
    #dbg_value(i32 %inc12, !1542, !DIExpression(), !1544)
  br label %for.cond, !dbg !1564, !llvm.loop !1565

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1567
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef nonnull %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1568 {
entry:
    #dbg_value(ptr %m, !1569, !DIExpression(), !1570)
    #dbg_value(ptr %menc, !1571, !DIExpression(), !1570)
    #dbg_value(i32 324, !1572, !DIExpression(), !1570)
    #dbg_value(i32 0, !1573, !DIExpression(), !1570)
  br label %for.cond, !dbg !1574

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1576
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1569, !DIExpression(), !1570)
    #dbg_value(i32 %i.0, !1573, !DIExpression(), !1570)
  %exitcond = icmp ne i32 %i.0, 162, !dbg !1577
  br i1 %exitcond, label %for.body, label %if.end, !dbg !1579

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1580
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1582
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1583
  %shl = shl i8 %1, 4, !dbg !1584
  %or = or i8 %shl, %0, !dbg !1585
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1586
  store i8 %or, ptr %arrayidx, align 1, !dbg !1587
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1588
    #dbg_value(i32 %inc, !1573, !DIExpression(), !1570)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1589
    #dbg_value(ptr %add.ptr3, !1569, !DIExpression(), !1570)
  br label %for.cond, !dbg !1590, !llvm.loop !1591

if.end:                                           ; preds = %for.cond
  ret void, !dbg !1593
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1594 {
entry:
    #dbg_value(i8 %a, !1597, !DIExpression(), !1598)
    #dbg_value(i8 %b, !1599, !DIExpression(), !1598)
  %xor1 = xor i8 %a, %b, !dbg !1600
  ret i8 %xor1, !dbg !1601
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef nonnull %a, ptr noundef nonnull %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1602 {
entry:
    #dbg_value(ptr %a, !1605, !DIExpression(), !1606)
    #dbg_value(ptr %b, !1607, !DIExpression(), !1606)
    #dbg_value(i32 17, !1608, !DIExpression(), !1606)
    #dbg_value(i32 1, !1609, !DIExpression(), !1606)
    #dbg_value(i8 0, !1610, !DIExpression(), !1606)
    #dbg_value(i32 0, !1611, !DIExpression(), !1613)
  br label %for.cond, !dbg !1614

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1606
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1615
    #dbg_value(i32 %i.0, !1611, !DIExpression(), !1613)
    #dbg_value(ptr %b.addr.0, !1607, !DIExpression(), !1606)
    #dbg_value(i8 %ret.0, !1610, !DIExpression(), !1606)
  %exitcond = icmp ne i32 %i.0, 17, !dbg !1616
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1618

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1619
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1619
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1621
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #4, !dbg !1622
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #4, !dbg !1623
    #dbg_value(i8 %call1, !1610, !DIExpression(), !1606)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1624
    #dbg_value(i32 %inc, !1611, !DIExpression(), !1613)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !1625
    #dbg_value(ptr %add.ptr, !1607, !DIExpression(), !1606)
  br label %for.cond, !dbg !1626, !llvm.loop !1627

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1606
  ret i8 %ret.0.lcssa, !dbg !1629
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1630 {
entry:
    #dbg_value(i8 %a, !1631, !DIExpression(), !1632)
    #dbg_value(i8 %b, !1633, !DIExpression(), !1632)
  %0 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !1634
  %xor1 = xor i8 %a, %0, !dbg !1635
    #dbg_value(i8 %xor1, !1631, !DIExpression(), !1632)
  %1 = trunc i8 %xor1 to i1, !dbg !1636
    #dbg_value(i8 poison, !1637, !DIExpression(), !1632)
  %2 = and i8 %xor1, 2, !dbg !1638
  %mul9 = mul i8 %2, %b, !dbg !1639
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1636
  %xor11 = xor i8 %conv10, %mul9, !dbg !1640
    #dbg_value(i8 %xor11, !1637, !DIExpression(), !1632)
  %3 = and i8 %xor1, 4, !dbg !1641
  %mul16 = mul i8 %3, %b, !dbg !1642
  %xor18 = xor i8 %mul16, %xor11, !dbg !1643
    #dbg_value(i8 %xor18, !1637, !DIExpression(), !1632)
  %4 = and i8 %xor1, 8, !dbg !1644
  %mul23 = mul i8 %4, %b, !dbg !1645
  %xor25 = xor i8 %mul23, %xor18, !dbg !1646
    #dbg_value(i8 %xor25, !1637, !DIExpression(), !1632)
    #dbg_value(i8 %xor25, !1647, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1632)
  %5 = lshr i8 %xor25, 4, !dbg !1648
  %6 = lshr i8 %xor25, 3, !dbg !1649
  %7 = and i8 %6, 14, !dbg !1649
  %8 = xor i8 %5, %7, !dbg !1650
  %xor25.masked = and i8 %xor25, 15, !dbg !1651
  %9 = xor i8 %8, %xor25.masked, !dbg !1651
    #dbg_value(i8 %9, !1652, !DIExpression(), !1632)
  ret i8 %9, !dbg !1653
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1654, !DIExpression(), !1655)
    #dbg_value(i32 0, !1656, !DIExpression(), !1658)
  br label %for.cond, !dbg !1659

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1660
    #dbg_value(i32 %i.0, !1656, !DIExpression(), !1658)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1661
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1663

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1664

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1666
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1666
  %shr = lshr i64 %0, 4, !dbg !1668
  %add = or disjoint i32 %i.0, 1, !dbg !1669
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1670
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1670
  %xor = xor i64 %shr, %1, !dbg !1671
  %and = and i64 %xor, 1085102592571150095, !dbg !1672
    #dbg_value(i64 %and, !1673, !DIExpression(), !1674)
  %shl = shl nuw i64 %and, 4, !dbg !1675
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1676
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1677
  %xor3 = xor i64 %2, %shl, !dbg !1677
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1677
  %add4 = or disjoint i32 %i.0, 1, !dbg !1678
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1679
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1680
  %xor6 = xor i64 %3, %and, !dbg !1680
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1680
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1681
    #dbg_value(i32 %add7, !1656, !DIExpression(), !1658)
  br label %for.cond, !dbg !1682, !llvm.loop !1683

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1685
    #dbg_value(i32 %i8.0, !1686, !DIExpression(), !1687)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1688
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1664

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1690

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1692
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1692
  %shr13 = lshr i64 %4, 8, !dbg !1694
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1695
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1696
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1696
  %xor16 = xor i64 %shr13, %5, !dbg !1697
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1698
    #dbg_value(i64 %and17, !1699, !DIExpression(), !1700)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1701
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1702
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1702
  %shr20 = lshr i64 %6, 8, !dbg !1703
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1704
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1705
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1705
  %xor23 = xor i64 %shr20, %7, !dbg !1706
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1707
    #dbg_value(i64 %and24, !1708, !DIExpression(), !1700)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1709
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1710
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1711
  %xor27 = xor i64 %8, %shl25, !dbg !1711
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1711
  %shl28 = shl nuw i64 %and24, 8, !dbg !1712
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1713
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1714
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1715
  %xor31 = xor i64 %9, %shl28, !dbg !1715
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1715
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1716
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1717
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1718
  %xor34 = xor i64 %10, %and17, !dbg !1718
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1718
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1719
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1720
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1721
  %xor37 = xor i64 %11, %and24, !dbg !1721
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1721
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1722
    #dbg_value(i32 %add39, !1686, !DIExpression(), !1687)
  br label %for.cond9, !dbg !1723, !llvm.loop !1724

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1726
    #dbg_value(i32 %i41.0, !1727, !DIExpression(), !1728)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1729
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1690

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1731

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1733
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1733
  %shr47 = lshr i64 %12, 16, !dbg !1735
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1736
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1737
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1737
  %xor50 = xor i64 %shr47, %13, !dbg !1738
  %and51 = and i64 %xor50, 281470681808895, !dbg !1739
    #dbg_value(i64 %and51, !1740, !DIExpression(), !1741)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1742
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1743
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1743
  %shr55 = lshr i64 %14, 16, !dbg !1744
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1745
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1746
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1746
  %xor58 = xor i64 %shr55, %15, !dbg !1747
  %and59 = and i64 %xor58, 281470681808895, !dbg !1748
    #dbg_value(i64 %and59, !1749, !DIExpression(), !1741)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1750
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1751
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1752
  %xor62 = xor i64 %16, %shl60, !dbg !1752
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1752
  %shl63 = shl nuw i64 %and59, 16, !dbg !1753
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1754
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1755
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1756
  %xor66 = xor i64 %17, %shl63, !dbg !1756
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1756
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1757
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1758
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1759
  %xor69 = xor i64 %18, %and51, !dbg !1759
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1759
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1760
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1761
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1762
  %xor72 = xor i64 %19, %and59, !dbg !1762
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1762
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1763
    #dbg_value(i32 %inc, !1727, !DIExpression(), !1728)
  br label %for.cond42, !dbg !1764, !llvm.loop !1765

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1767
    #dbg_value(i32 %i75.0, !1768, !DIExpression(), !1769)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1770
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1731

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1772
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1772
  %shr81 = lshr i64 %20, 32, !dbg !1774
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1775
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1776
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1776
  %.masked = and i64 %21, 4294967295, !dbg !1777
  %and85 = xor i64 %shr81, %.masked, !dbg !1777
    #dbg_value(i64 %and85, !1778, !DIExpression(), !1779)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1780
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1781
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1782
  %xor88 = xor i64 %22, %shl86, !dbg !1782
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1782
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1783
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1784
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1785
  %xor91 = xor i64 %23, %and85, !dbg !1785
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1785
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1786
    #dbg_value(i32 %inc93, !1768, !DIExpression(), !1769)
  br label %for.cond76, !dbg !1787, !llvm.loop !1788

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1790
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef range(i32 4, 18) %bs_mat_cols) unnamed_addr #0 !dbg !1791 {
entry:
    #dbg_value(i32 4, !1792, !DIExpression(), !1793)
    #dbg_value(ptr %mat, !1794, !DIExpression(), !1793)
    #dbg_value(ptr %bs_mat, !1795, !DIExpression(), !1793)
    #dbg_value(ptr %acc, !1796, !DIExpression(), !1793)
    #dbg_value(i32 4, !1797, !DIExpression(), !1793)
    #dbg_value(i32 64, !1798, !DIExpression(), !1793)
    #dbg_value(i32 %bs_mat_cols, !1799, !DIExpression(), !1793)
    #dbg_value(i32 0, !1800, !DIExpression(), !1802)
  br label %for.cond, !dbg !1803

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1804
    #dbg_value(i32 %r.0, !1800, !DIExpression(), !1802)
  %exitcond2 = icmp ne i32 %r.0, 4, !dbg !1805
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1807

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1808

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1811
    #dbg_value(i32 %c.0, !1812, !DIExpression(), !1813)
  %exitcond1 = icmp ne i32 %c.0, 64, !dbg !1814
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1808

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1816

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1819
    #dbg_value(i32 %k.0, !1820, !DIExpression(), !1821)
  %exitcond = icmp ne i32 %k.0, %bs_mat_cols, !dbg !1822
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1816

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, %bs_mat_cols, !dbg !1824
  %add = add nuw nsw i32 %mul, %k.0, !dbg !1826
  %add.ptr.idx = shl nsw i32 %add, 5, !dbg !1827
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1827
  %mul8 = shl nuw nsw i32 %r.0, 6, !dbg !1828
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1829
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1829
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1829
  %mul10 = mul nuw nsw i32 %r.0, %bs_mat_cols, !dbg !1830
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !1831
  %add.ptr13.idx = shl nsw i32 %add11, 5, !dbg !1832
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !1832
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #4, !dbg !1833
  %add14 = add nuw nsw i32 %k.0, 1, !dbg !1834
    #dbg_value(i32 %add14, !1820, !DIExpression(), !1821)
  br label %for.cond4, !dbg !1835, !llvm.loop !1836

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1838
    #dbg_value(i32 %inc, !1812, !DIExpression(), !1813)
  br label %for.cond1, !dbg !1839, !llvm.loop !1840

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1842
    #dbg_value(i32 %inc18, !1800, !DIExpression(), !1802)
  br label %for.cond, !dbg !1843, !llvm.loop !1844

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1846
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %V, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !1847 {
entry:
    #dbg_value(ptr %p, !1848, !DIExpression(), !1849)
    #dbg_value(ptr %P1, !1850, !DIExpression(), !1849)
    #dbg_value(ptr %V, !1851, !DIExpression(), !1849)
    #dbg_value(ptr %acc, !1852, !DIExpression(), !1849)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 4, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 64, i32 noundef 64, i32 noundef 4, i32 noundef 1) #4, !dbg !1853
  ret void, !dbg !1854
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1855 {
entry:
    #dbg_value(i32 4, !1856, !DIExpression(), !1857)
    #dbg_value(ptr %bs_mat, !1858, !DIExpression(), !1857)
    #dbg_value(ptr %mat, !1859, !DIExpression(), !1857)
    #dbg_value(ptr %acc, !1860, !DIExpression(), !1857)
    #dbg_value(i32 64, !1861, !DIExpression(), !1857)
    #dbg_value(i32 64, !1862, !DIExpression(), !1857)
    #dbg_value(i32 4, !1863, !DIExpression(), !1857)
    #dbg_value(i32 1, !1864, !DIExpression(), !1857)
    #dbg_value(i32 0, !1865, !DIExpression(), !1857)
    #dbg_value(i32 0, !1866, !DIExpression(), !1868)
  br label %for.cond, !dbg !1869

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 64, %entry ], !dbg !1870
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1870
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1871
    #dbg_value(i32 %r.0, !1866, !DIExpression(), !1868)
    #dbg_value(i32 %bs_mat_entries_used.0, !1865, !DIExpression(), !1857)
  %exitcond2 = icmp ne i32 %r.0, 64, !dbg !1872
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1874

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !1875
  br label %for.cond1, !dbg !1875

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %bs_mat_entries_used.1 = phi i32 [ %add14, %for.inc15 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !1857
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ %r.0, %for.cond1.preheader ], !dbg !1878
    #dbg_value(i32 %c.0, !1879, !DIExpression(), !1880)
    #dbg_value(i32 %bs_mat_entries_used.1, !1865, !DIExpression(), !1857)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !1881
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1875

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1883

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1886
    #dbg_value(i32 %k.0, !1887, !DIExpression(), !1888)
  %exitcond = icmp ne i32 %k.0, 4, !dbg !1889
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1883

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !1891
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1891
  %mul8 = shl nuw nsw i32 %k.0, 6, !dbg !1893
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1894
  %arrayidx = getelementptr i8, ptr %1, i32 %c.0, !dbg !1894
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1894
  %3 = shl nuw nsw i32 %r.0, 4, !dbg !1895
  %4 = shl nuw nsw i32 %k.0, 2, !dbg !1895
  %mul11 = or disjoint i32 %3, %4, !dbg !1895
  %add.ptr12 = getelementptr inbounds nuw i64, ptr %acc, i32 %mul11, !dbg !1896
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #4, !dbg !1897
  %add13 = add nuw nsw i32 %k.0, 1, !dbg !1898
    #dbg_value(i32 %add13, !1887, !DIExpression(), !1888)
  br label %for.cond4, !dbg !1899, !llvm.loop !1900

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1865, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1857)
  %add14 = add i32 %bs_mat_entries_used.1, 1, !dbg !1902
    #dbg_value(i32 %add14, !1865, !DIExpression(), !1857)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1903
    #dbg_value(i32 %inc, !1879, !DIExpression(), !1880)
  br label %for.cond1, !dbg !1904, !llvm.loop !1905

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1857
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1907
    #dbg_value(i32 %inc18, !1866, !DIExpression(), !1868)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !1908
  br label %for.cond, !dbg !1908, !llvm.loop !1909

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1911
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1912 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1913, !DIExpression(), !1914)
    #dbg_value(ptr %sm, !1915, !DIExpression(), !1914)
    #dbg_value(ptr %smlen, !1916, !DIExpression(), !1914)
    #dbg_value(ptr %m, !1917, !DIExpression(), !1914)
    #dbg_value(i32 %mlen, !1918, !DIExpression(), !1914)
    #dbg_value(ptr %csk, !1919, !DIExpression(), !1914)
    #dbg_value(i32 0, !1920, !DIExpression(), !1914)
    #dbg_value(i32 186, !1921, !DIExpression(), !1914)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1922
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #6, !dbg !1923
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1924
    #dbg_value(ptr %siglen, !1925, !DIExpression(DW_OP_deref), !1914)
  %call2 = call i32 @pqmayo_MAYO_2_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #4, !dbg !1926
    #dbg_value(i32 0, !1920, !DIExpression(), !1914)
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1925, !DIExpression(), !1914)
  %cmp3.not = icmp eq i32 %0, 186
  br i1 %cmp3.not, label %if.end, label %if.then, !dbg !1927

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1929
    #dbg_value(i32 %1, !1925, !DIExpression(), !1914)
  %add = add i32 %1, %mlen, !dbg !1931
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #6, !dbg !1932
  br label %err, !dbg !1933

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1934
    #dbg_value(i32 %2, !1925, !DIExpression(), !1914)
  %add5 = add i32 %2, %mlen, !dbg !1935
  store i32 %add5, ptr %smlen, align 4, !dbg !1936
  br label %err, !dbg !1937

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1938, !1939)
  ret i32 0, !dbg !1940
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1941 {
entry:
    #dbg_value(ptr %p, !1942, !DIExpression(), !1943)
    #dbg_value(ptr %m, !1944, !DIExpression(), !1943)
    #dbg_value(ptr %mlen, !1945, !DIExpression(), !1943)
    #dbg_value(ptr %sm, !1946, !DIExpression(), !1943)
    #dbg_value(i32 %smlen, !1947, !DIExpression(), !1943)
    #dbg_value(ptr %pk, !1948, !DIExpression(), !1943)
    #dbg_value(i32 186, !1949, !DIExpression(), !1943)
  %cmp = icmp ult i32 %smlen, 186, !dbg !1950
  br i1 %cmp, label %return, label %if.end, !dbg !1950

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1952
  %sub = add i32 %smlen, -186, !dbg !1953
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #4, !dbg !1954
    #dbg_value(i32 %call, !1955, !DIExpression(), !1943)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1956
  br i1 %cmp1, label %if.then2, label %return, !dbg !1956

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -186, !dbg !1958
  store i32 %sub3, ptr %mlen, align 4, !dbg !1960
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1961
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #6, !dbg !1962
  br label %return, !dbg !1963

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ %call, %if.end ], !dbg !1943
  ret i32 %retval.0, !dbg !1964
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1965 {
entry:
  %tEnc = alloca [32 x i8], align 1
  %t = alloca [64 x i8], align 1
  %y = alloca [128 x i8], align 1
  %s = alloca [324 x i8], align 1
  %pk = alloca [13284 x i64], align 8
  %tmp = alloca [56 x i8], align 1
    #dbg_value(ptr %p, !1968, !DIExpression(), !1969)
    #dbg_value(ptr %m, !1970, !DIExpression(), !1969)
    #dbg_value(i32 %mlen, !1971, !DIExpression(), !1969)
    #dbg_value(ptr %sig, !1972, !DIExpression(), !1969)
    #dbg_value(ptr %cpk, !1973, !DIExpression(), !1969)
    #dbg_declare(ptr %tEnc, !1974, !DIExpression(), !1975)
    #dbg_declare(ptr %t, !1976, !DIExpression(), !1977)
    #dbg_declare(ptr %y, !1978, !DIExpression(), !1982)
  call void @mayo_memset(ptr %y, i8 0, i32 128), !dbg !1982
    #dbg_declare(ptr %s, !1983, !DIExpression(), !1984)
    #dbg_declare(ptr %pk, !1985, !DIExpression(), !1986)
  call void @mayo_memset(ptr %pk, i8 0, i32 106272), !dbg !1986
    #dbg_declare(ptr %tmp, !1987, !DIExpression(), !1991)
    #dbg_value(i32 64, !1992, !DIExpression(), !1969)
    #dbg_value(i32 81, !1993, !DIExpression(), !1969)
    #dbg_value(i32 4, !1994, !DIExpression(), !1969)
    #dbg_value(i32 32, !1995, !DIExpression(), !1969)
    #dbg_value(i32 186, !1996, !DIExpression(), !1969)
    #dbg_value(i32 32, !1997, !DIExpression(), !1969)
    #dbg_value(i32 24, !1998, !DIExpression(), !1969)
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #4, !dbg !1999
    #dbg_value(i32 0, !2000, !DIExpression(), !1969)
    #dbg_value(ptr %pk, !2001, !DIExpression(), !1969)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 66560, !dbg !2002
    #dbg_value(ptr %add.ptr, !2003, !DIExpression(), !1969)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 101376, !dbg !2004
    #dbg_value(ptr %add.ptr2, !2005, !DIExpression(), !1969)
  call void @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #4, !dbg !2006
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !2007
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 162, !dbg !2008
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 24) #6, !dbg !2009
  call void @shake256(ptr noundef nonnull %tEnc, i32 noundef 32, ptr noundef nonnull %tmp, i32 noundef 56) #4, !dbg !2010
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 64) #4, !dbg !2011
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 324) #4, !dbg !2012
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #4, !dbg !2013
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 64) #6, !dbg !2014
  %cmp21 = icmp ne i32 %call20, 0, !dbg !2016
  %. = zext i1 %cmp21 to i32, !dbg !1969
  ret i32 %., !dbg !2017
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !2018 {
entry:
    #dbg_value(ptr %p, !2019, !DIExpression(), !2020)
    #dbg_value(ptr %cpk, !2021, !DIExpression(), !2020)
    #dbg_value(ptr %pk, !2022, !DIExpression(), !2020)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #4, !dbg !2023
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !2024
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 101376, !dbg !2025
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 153, i32 noundef 64) #4, !dbg !2026
  ret i32 0, !dbg !2027
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %eval) unnamed_addr #0 !dbg !2028 {
entry:
  %SPS = alloca [64 x i64], align 8
  %zero = alloca [64 x i8], align 1
    #dbg_value(ptr %p, !2031, !DIExpression(), !2032)
    #dbg_value(ptr %s, !2033, !DIExpression(), !2032)
    #dbg_value(ptr %P1, !2034, !DIExpression(), !2032)
    #dbg_value(ptr %P2, !2035, !DIExpression(), !2032)
    #dbg_value(ptr %P3, !2036, !DIExpression(), !2032)
    #dbg_value(ptr %eval, !2037, !DIExpression(), !2032)
    #dbg_declare(ptr %SPS, !2038, !DIExpression(), !2040)
  call void @mayo_memset(ptr %SPS, i8 0, i32 512), !dbg !2040
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #4, !dbg !2041
    #dbg_declare(ptr %zero, !2042, !DIExpression(), !2043)
  call void @mayo_memset(ptr %zero, i8 0, i32 64), !dbg !2043
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #4, !dbg !2044
  ret void, !dbg !2045
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %s, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2046 {
entry:
  %PS = alloca [1296 x i64], align 8
    #dbg_value(ptr %p, !2049, !DIExpression(), !2050)
    #dbg_value(ptr %P1, !2051, !DIExpression(), !2050)
    #dbg_value(ptr %P2, !2052, !DIExpression(), !2050)
    #dbg_value(ptr %P3, !2053, !DIExpression(), !2050)
    #dbg_value(ptr %s, !2054, !DIExpression(), !2050)
    #dbg_value(ptr %SPS, !2055, !DIExpression(), !2050)
    #dbg_declare(ptr %PS, !2056, !DIExpression(), !2060)
  call void @mayo_memset(ptr %PS, i8 0, i32 10368), !dbg !2060
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 64, i32 noundef 64, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %PS) #4, !dbg !2061
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 64, i32 noundef 4, i32 noundef 81, ptr noundef %SPS) #4, !dbg !2062
  ret void, !dbg !2063
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef nonnull %PS) unnamed_addr #0 !dbg !2064 {
entry:
  %accumulator = alloca [20736 x i64], align 8
    #dbg_value(ptr %P1, !2067, !DIExpression(), !2068)
    #dbg_value(ptr %P2, !2069, !DIExpression(), !2068)
    #dbg_value(ptr %P3, !2070, !DIExpression(), !2068)
    #dbg_value(ptr %S, !2071, !DIExpression(), !2068)
    #dbg_value(i32 64, !2072, !DIExpression(), !2068)
    #dbg_value(i32 64, !2073, !DIExpression(), !2068)
    #dbg_value(i32 17, !2074, !DIExpression(), !2068)
    #dbg_value(i32 4, !2075, !DIExpression(), !2068)
    #dbg_value(ptr %PS, !2076, !DIExpression(), !2068)
    #dbg_value(i32 81, !2077, !DIExpression(), !2068)
    #dbg_value(i32 4, !2078, !DIExpression(), !2068)
    #dbg_declare(ptr %accumulator, !2079, !DIExpression(), !2083)
  call void @mayo_memset(ptr %accumulator, i8 0, i32 165888), !dbg !2083
    #dbg_value(i32 0, !2084, !DIExpression(), !2068)
    #dbg_value(i32 0, !2085, !DIExpression(), !2087)
  br label %for.cond, !dbg !2088

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ 64, %entry ], !dbg !2089
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2089
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2090
    #dbg_value(i32 %row.0, !2085, !DIExpression(), !2087)
    #dbg_value(i32 %P1_used.0, !2084, !DIExpression(), !2068)
  %exitcond4 = icmp ne i32 %row.0, 64, !dbg !2091
  br i1 %exitcond4, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2093

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2094
  br label %for.cond2, !dbg !2094

for.cond56.preheader:                             ; preds = %for.cond
  br label %for.cond56, !dbg !2097

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !2068
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2099
    #dbg_value(i32 %j.0, !2100, !DIExpression(), !2101)
    #dbg_value(i32 %P1_used.1, !2084, !DIExpression(), !2068)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2102
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2094

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !2068
  br label %for.cond21, !dbg !2104

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2106

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2109
    #dbg_value(i32 %col.0, !2110, !DIExpression(), !2111)
  %exitcond = icmp ne i32 %col.0, 4, !dbg !2112
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2106

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = shl nsw i32 %P1_used.1, 5, !dbg !2114
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !2114
  %1 = shl nuw nsw i32 %row.0, 6, !dbg !2116
  %2 = shl nuw nsw i32 %col.0, 4, !dbg !2116
  %mul10 = or disjoint i32 %1, %2, !dbg !2116
  %mul11 = mul nuw nsw i32 %col.0, 81, !dbg !2117
  %3 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2118
  %arrayidx = getelementptr i8, ptr %3, i32 %j.0, !dbg !2118
  %4 = load i8, ptr %arrayidx, align 1, !dbg !2118
  %conv = zext i8 %4 to i32, !dbg !2118
  %add13 = add nuw nsw i32 %mul10, %conv, !dbg !2119
  %add.ptr15.idx = shl nuw nsw i32 %add13, 5, !dbg !2120
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr15.idx, !dbg !2120
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #4, !dbg !2121
  %inc = add nuw nsw i32 %col.0, 1, !dbg !2122
    #dbg_value(i32 %inc, !2110, !DIExpression(), !2111)
  br label %for.cond5, !dbg !2123, !llvm.loop !2124

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2084, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2068)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2126
    #dbg_value(i32 %inc16, !2084, !DIExpression(), !2068)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2127
    #dbg_value(i32 %inc18, !2100, !DIExpression(), !2101)
  br label %for.cond2, !dbg !2128, !llvm.loop !2129

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2131
    #dbg_value(i32 %j20.0, !2132, !DIExpression(), !2133)
  %exitcond3 = icmp ne i32 %j20.0, 17, !dbg !2134
  br i1 %exitcond3, label %for.cond26.preheader, label %for.inc52, !dbg !2104

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2136

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2139
    #dbg_value(i32 %col25.0, !2140, !DIExpression(), !2141)
  %exitcond2 = icmp ne i32 %col25.0, 4, !dbg !2142
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2136

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nuw nsw i32 %row.0, 17, !dbg !2144
  %add31 = add nuw nsw i32 %mul30, %j20.0, !dbg !2146
  %add.ptr33.idx = shl nuw nsw i32 %add31, 5, !dbg !2147
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr33.idx, !dbg !2147
  %5 = shl nuw nsw i32 %row.0, 6, !dbg !2148
  %6 = shl nuw nsw i32 %col25.0, 4, !dbg !2148
  %mul37 = or disjoint i32 %5, %6, !dbg !2148
  %mul38 = mul nuw nsw i32 %col25.0, 81, !dbg !2149
  %7 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2150
  %8 = getelementptr i8, ptr %7, i32 %j20.0, !dbg !2150
  %arrayidx41 = getelementptr i8, ptr %8, i32 64, !dbg !2150
  %9 = load i8, ptr %arrayidx41, align 1, !dbg !2150
  %conv42 = zext i8 %9 to i32, !dbg !2150
  %add43 = add nuw nsw i32 %mul37, %conv42, !dbg !2151
  %add.ptr45.idx = shl nuw nsw i32 %add43, 5, !dbg !2152
  %add.ptr45 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr45.idx, !dbg !2152
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #4, !dbg !2153
  %inc47 = add nuw nsw i32 %col25.0, 1, !dbg !2154
    #dbg_value(i32 %inc47, !2140, !DIExpression(), !2141)
  br label %for.cond26, !dbg !2155, !llvm.loop !2156

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw nsw i32 %j20.0, 1, !dbg !2158
    #dbg_value(i32 %inc50, !2132, !DIExpression(), !2133)
  br label %for.cond21, !dbg !2159, !llvm.loop !2160

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw nsw i32 %row.0, 1, !dbg !2162
    #dbg_value(i32 %inc53, !2085, !DIExpression(), !2087)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !2163
  br label %for.cond, !dbg !2163, !llvm.loop !2164

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %indvars.iv6 = phi i32 [ 17, %for.cond56.preheader ], [ %indvars.iv.next7, %for.inc90 ], !dbg !2166
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2166
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ 64, %for.cond56.preheader ], !dbg !2167
    #dbg_value(i32 %row55.0, !2168, !DIExpression(), !2169)
    #dbg_value(i32 %P3_used.0, !2170, !DIExpression(), !2068)
  %exitcond9 = icmp ne i32 %row55.0, 81, !dbg !2171
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2097

for.cond61.preheader:                             ; preds = %for.cond56
  %10 = add i32 %P3_used.0, %indvars.iv6, !dbg !2173
  br label %for.cond61, !dbg !2173

while.cond.preheader:                             ; preds = %for.cond56
  br label %while.cond, !dbg !2176

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !2068
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2177
    #dbg_value(i32 %j60.0, !2178, !DIExpression(), !2179)
    #dbg_value(i32 %P3_used.1, !2170, !DIExpression(), !2068)
  %exitcond8 = icmp ne i32 %P3_used.1, %10, !dbg !2180
  br i1 %exitcond8, label %for.cond66.preheader, label %for.inc90, !dbg !2173

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2182

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2185
    #dbg_value(i32 %col65.0, !2186, !DIExpression(), !2187)
  %exitcond5 = icmp ne i32 %col65.0, 4, !dbg !2188
  br i1 %exitcond5, label %for.body69, label %for.inc87, !dbg !2182

for.body69:                                       ; preds = %for.cond66
  %add.ptr71.idx = shl nsw i32 %P3_used.1, 5, !dbg !2190
  %add.ptr71 = getelementptr inbounds i8, ptr %P3, i32 %add.ptr71.idx, !dbg !2190
  %11 = shl nuw nsw i32 %row55.0, 6, !dbg !2192
  %12 = shl nuw nsw i32 %col65.0, 4, !dbg !2192
  %mul75 = or disjoint i32 %11, %12, !dbg !2192
  %mul76 = mul nuw nsw i32 %col65.0, 81, !dbg !2193
  %13 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2194
  %arrayidx78 = getelementptr i8, ptr %13, i32 %j60.0, !dbg !2194
  %14 = load i8, ptr %arrayidx78, align 1, !dbg !2194
  %conv79 = zext i8 %14 to i32, !dbg !2194
  %add80 = add nuw nsw i32 %mul75, %conv79, !dbg !2195
  %add.ptr82.idx = shl nuw nsw i32 %add80, 5, !dbg !2196
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr82.idx, !dbg !2196
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #4, !dbg !2197
  %inc84 = add nuw nsw i32 %col65.0, 1, !dbg !2198
    #dbg_value(i32 %inc84, !2186, !DIExpression(), !2187)
  br label %for.cond66, !dbg !2199, !llvm.loop !2200

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2170, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2068)
  %inc86 = add i32 %P3_used.1, 1, !dbg !2202
    #dbg_value(i32 %inc86, !2170, !DIExpression(), !2068)
  %inc88 = add nuw nsw i32 %j60.0, 1, !dbg !2203
    #dbg_value(i32 %inc88, !2178, !DIExpression(), !2179)
  br label %for.cond61, !dbg !2204, !llvm.loop !2205

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !2068
  %inc91 = add nuw nsw i32 %row55.0, 1, !dbg !2207
    #dbg_value(i32 %inc91, !2168, !DIExpression(), !2169)
  %indvars.iv.next7 = add nsw i32 %indvars.iv6, -1, !dbg !2208
  br label %for.cond56, !dbg !2208, !llvm.loop !2209

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !2068
    #dbg_value(i32 %i.0, !2211, !DIExpression(), !2068)
  %exitcond10 = icmp ne i32 %i.0, 324, !dbg !2212
  br i1 %exitcond10, label %while.body, label %while.end, !dbg !2176

while.body:                                       ; preds = %while.cond
  %add.ptr99.idx = shl nuw nsw i32 %i.0, 9, !dbg !2213
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr99.idx, !dbg !2213
  %add.ptr101.idx = shl nuw nsw i32 %i.0, 5, !dbg !2215
  %add.ptr101 = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr101.idx, !dbg !2215
  call fastcc void @m_vec_multiply_bins(i32 noundef 4, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #4, !dbg !2216
  %inc102 = add nuw nsw i32 %i.0, 1, !dbg !2217
    #dbg_value(i32 %inc102, !2211, !DIExpression(), !2068)
  br label %while.cond, !dbg !2176, !llvm.loop !2218

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2220
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2221 {
entry:
  %accumulator = alloca [1024 x i64], align 8
    #dbg_value(ptr %PS, !2224, !DIExpression(), !2225)
    #dbg_value(ptr %S, !2226, !DIExpression(), !2225)
    #dbg_value(i32 64, !2227, !DIExpression(), !2225)
    #dbg_value(i32 4, !2228, !DIExpression(), !2225)
    #dbg_value(i32 81, !2229, !DIExpression(), !2225)
    #dbg_value(ptr %SPS, !2230, !DIExpression(), !2225)
    #dbg_declare(ptr %accumulator, !2231, !DIExpression(), !2232)
  call void @mayo_memset(ptr %accumulator, i8 0, i32 8192), !dbg !2232
    #dbg_value(i32 4, !2233, !DIExpression(), !2225)
    #dbg_value(i32 0, !2234, !DIExpression(), !2236)
  br label %for.cond, !dbg !2237

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2238
    #dbg_value(i32 %row.0, !2234, !DIExpression(), !2236)
  %exitcond2 = icmp ne i32 %row.0, 4, !dbg !2239
  br i1 %exitcond2, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2241

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2242

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !2245

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2246
    #dbg_value(i32 %j.0, !2247, !DIExpression(), !2248)
  %exitcond1 = icmp ne i32 %j.0, 81, !dbg !2249
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2242

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2251

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2254
    #dbg_value(i32 %col.0, !2255, !DIExpression(), !2256)
  %exitcond = icmp ne i32 %col.0, 4, !dbg !2257
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2251

for.body6:                                        ; preds = %for.cond4
  %0 = shl nuw nsw i32 %j.0, 4, !dbg !2259
  %1 = shl nuw nsw i32 %col.0, 2, !dbg !2259
  %mul8 = or disjoint i32 %0, %1, !dbg !2259
  %add.ptr = getelementptr inbounds nuw i64, ptr %PS, i32 %mul8, !dbg !2261
  %2 = shl nuw nsw i32 %row.0, 6, !dbg !2262
  %3 = shl nuw nsw i32 %col.0, 4, !dbg !2262
  %mul11 = or disjoint i32 %2, %3, !dbg !2262
  %mul12 = mul nuw nsw i32 %row.0, 81, !dbg !2263
  %4 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2264
  %arrayidx = getelementptr i8, ptr %4, i32 %j.0, !dbg !2264
  %5 = load i8, ptr %arrayidx, align 1, !dbg !2264
  %conv = zext i8 %5 to i32, !dbg !2264
  %add14 = add nuw nsw i32 %mul11, %conv, !dbg !2265
  %add.ptr16.idx = shl nuw nsw i32 %add14, 5, !dbg !2266
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr16.idx, !dbg !2266
  call fastcc void @m_vec_add(i32 noundef 4, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #4, !dbg !2267
  %add17 = add nuw nsw i32 %col.0, 1, !dbg !2268
    #dbg_value(i32 %add17, !2255, !DIExpression(), !2256)
  br label %for.cond4, !dbg !2269, !llvm.loop !2270

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %j.0, 1, !dbg !2272
    #dbg_value(i32 %inc, !2247, !DIExpression(), !2248)
  br label %for.cond1, !dbg !2273, !llvm.loop !2274

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw nsw i32 %row.0, 1, !dbg !2276
    #dbg_value(i32 %inc21, !2234, !DIExpression(), !2236)
  br label %for.cond, !dbg !2277, !llvm.loop !2278

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2225
    #dbg_value(i32 %i.0, !2280, !DIExpression(), !2225)
  %exitcond3 = icmp ne i32 %i.0, 16, !dbg !2281
  br i1 %exitcond3, label %while.body, label %while.end, !dbg !2245

while.body:                                       ; preds = %while.cond
  %add.ptr29.idx = shl nuw nsw i32 %i.0, 9, !dbg !2282
  %add.ptr29 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr29.idx, !dbg !2282
  %add.ptr31.idx = shl nuw nsw i32 %i.0, 5, !dbg !2284
  %add.ptr31 = getelementptr inbounds nuw i8, ptr %SPS, i32 %add.ptr31.idx, !dbg !2284
  call fastcc void @m_vec_multiply_bins(i32 noundef 4, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #4, !dbg !2285
  %inc32 = add nuw nsw i32 %i.0, 1, !dbg !2286
    #dbg_value(i32 %inc32, !2280, !DIExpression(), !2225)
  br label %while.cond, !dbg !2245, !llvm.loop !2287

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2289
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2290 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2293, !DIExpression(), !2294)
    #dbg_value(ptr %in, !2295, !DIExpression(), !2294)
    #dbg_value(ptr %acc, !2296, !DIExpression(), !2294)
    #dbg_value(i32 0, !2297, !DIExpression(), !2299)
  br label %for.cond, !dbg !2300

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2301
    #dbg_value(i32 %i.0, !2297, !DIExpression(), !2299)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2302
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2304

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2305
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2305
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2307
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2308
  %xor = xor i64 %1, %0, !dbg !2308
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2308
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2309
    #dbg_value(i32 %inc, !2297, !DIExpression(), !2299)
  br label %for.cond, !dbg !2310, !llvm.loop !2311

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2313
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef nonnull %bins, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2314 {
entry:
    #dbg_value(i32 4, !2317, !DIExpression(), !2318)
    #dbg_value(ptr %bins, !2319, !DIExpression(), !2318)
    #dbg_value(ptr %out, !2320, !DIExpression(), !2318)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 160, !dbg !2321
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2322
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #4, !dbg !2323
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 352, !dbg !2324
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 384, !dbg !2325
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #4, !dbg !2326
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2327
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2328
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #4, !dbg !2329
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 384, !dbg !2330
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 192, !dbg !2331
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #4, !dbg !2332
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2333
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2334
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #4, !dbg !2335
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 192, !dbg !2336
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 96, !dbg !2337
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #4, !dbg !2338
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2339
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2340
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #4, !dbg !2341
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 96, !dbg !2342
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 256, !dbg !2343
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #4, !dbg !2344
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2345
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 416, !dbg !2346
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #4, !dbg !2347
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 256, !dbg !2348
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 128, !dbg !2349
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #4, !dbg !2350
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 416, !dbg !2351
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2352
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #4, !dbg !2353
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 128, !dbg !2354
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 64, !dbg !2355
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #4, !dbg !2356
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2357
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2358
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 4, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #4, !dbg !2359
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 64, !dbg !2360
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2361
  call fastcc void @m_vec_mul_add_x(i32 noundef 4, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #4, !dbg !2362
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2363
  call fastcc void @m_vec_copy(i32 noundef 4, ptr noundef nonnull %add.ptr28, ptr noundef %out) #4, !dbg !2364
  ret void, !dbg !2365
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2366 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2367, !DIExpression(), !2368)
    #dbg_value(ptr %in, !2369, !DIExpression(), !2368)
    #dbg_value(ptr %acc, !2370, !DIExpression(), !2368)
    #dbg_value(i64 1229782938247303441, !2371, !DIExpression(), !2368)
    #dbg_value(i32 0, !2372, !DIExpression(), !2374)
  br label %for.cond, !dbg !2375

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2376
    #dbg_value(i32 %i.0, !2372, !DIExpression(), !2374)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2377
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2379

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2380
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2380
  %and = and i64 %0, 1229782938247303441, !dbg !2382
    #dbg_value(i64 %and, !2383, !DIExpression(), !2384)
  %xor = lshr i64 %0, 1, !dbg !2385
  %shr = and i64 %xor, 8608480567731124087, !dbg !2385
  %mul = mul nuw i64 %and, 9, !dbg !2386
  %xor2 = xor i64 %shr, %mul, !dbg !2387
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2388
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2389
  %xor4 = xor i64 %1, %xor2, !dbg !2389
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2389
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2390
    #dbg_value(i32 %inc, !2372, !DIExpression(), !2374)
  br label %for.cond, !dbg !2391, !llvm.loop !2392

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2394
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2395 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2396, !DIExpression(), !2397)
    #dbg_value(ptr %in, !2398, !DIExpression(), !2397)
    #dbg_value(ptr %acc, !2399, !DIExpression(), !2397)
    #dbg_value(i64 -8608480567731124088, !2400, !DIExpression(), !2397)
    #dbg_value(i32 0, !2401, !DIExpression(), !2403)
  br label %for.cond, !dbg !2404

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2405
    #dbg_value(i32 %i.0, !2401, !DIExpression(), !2403)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2406
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2408

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2409
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2409
    #dbg_value(i64 %0, !2411, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2412)
  %xor = shl i64 %0, 1, !dbg !2413
  %shl = and i64 %xor, -1229782938247303442, !dbg !2413
  %and = lshr i64 %0, 3, !dbg !2414
  %shr = and i64 %and, 1229782938247303441, !dbg !2414
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2415
  %xor2 = xor i64 %shl, %mul, !dbg !2416
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2417
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2418
  %xor4 = xor i64 %1, %xor2, !dbg !2418
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2418
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2419
    #dbg_value(i32 %inc, !2401, !DIExpression(), !2403)
  br label %for.cond, !dbg !2420, !llvm.loop !2421

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2423
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2424 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2425, !DIExpression(), !2426)
    #dbg_value(ptr %in, !2427, !DIExpression(), !2426)
    #dbg_value(ptr %out, !2428, !DIExpression(), !2426)
    #dbg_value(i32 0, !2429, !DIExpression(), !2431)
  br label %for.cond, !dbg !2432

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2433
    #dbg_value(i32 %i.0, !2429, !DIExpression(), !2431)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2434
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2436

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2437
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2437
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2439
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2440
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2441
    #dbg_value(i32 %inc, !2429, !DIExpression(), !2431)
  br label %for.cond, !dbg !2442, !llvm.loop !2443

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2445
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_2_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2446 {
entry:
    #dbg_value(ptr %p, !2477, !DIExpression(), !2478)
    #dbg_value(ptr %in, !2479, !DIExpression(), !2478)
    #dbg_value(ptr %out, !2480, !DIExpression(), !2478)
    #dbg_value(i32 %size, !2481, !DIExpression(), !2478)
    #dbg_value(i32 4, !2482, !DIExpression(), !2478)
    #dbg_value(i32 0, !2483, !DIExpression(), !2478)
    #dbg_value(i32 0, !2484, !DIExpression(), !2486)
  %0 = icmp sgt i32 %size, 0, !dbg !2487
  %1 = select i1 %0, i32 %size, i32 0, !dbg !2487
  br label %for.cond, !dbg !2487

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2488
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2488
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2489
    #dbg_value(i32 %r.0, !2484, !DIExpression(), !2486)
    #dbg_value(i32 %m_vecs_stored.0, !2483, !DIExpression(), !2478)
  %exitcond1 = icmp ne i32 %r.0, %1, !dbg !2490
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2492

for.cond1.preheader:                              ; preds = %for.cond
  %2 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2493
  br label %for.cond1, !dbg !2493

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2478
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2496
    #dbg_value(i32 %c.0, !2497, !DIExpression(), !2498)
    #dbg_value(i32 %m_vecs_stored.1, !2483, !DIExpression(), !2478)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %2, !dbg !2499
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2493

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2501
  %add = add nsw i32 %mul, %c.0, !dbg !2503
  %add.ptr.idx = shl nsw i32 %add, 5, !dbg !2504
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2504
  %add.ptr6.idx = shl nsw i32 %m_vecs_stored.1, 5, !dbg !2505
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2505
  call fastcc void @m_vec_copy.17(i32 noundef 4, ptr noundef %add.ptr, ptr noundef %add.ptr6) #4, !dbg !2506
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2507
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2507

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2509
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2511
  %add.ptr11.idx = shl nsw i32 %add9, 5, !dbg !2512
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2512
  %add.ptr13.idx = shl nsw i32 %m_vecs_stored.1, 5, !dbg !2513
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2513
  call fastcc void @m_vec_add.18(i32 noundef 4, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #4, !dbg !2514
  br label %for.inc, !dbg !2515

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2483, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2478)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2516
    #dbg_value(i32 %inc, !2483, !DIExpression(), !2478)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2517
    #dbg_value(i32 %inc14, !2497, !DIExpression(), !2498)
  br label %for.cond1, !dbg !2518, !llvm.loop !2519

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2478
  %inc16 = add nuw i32 %r.0, 1, !dbg !2521
    #dbg_value(i32 %inc16, !2484, !DIExpression(), !2486)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2522
  br label %for.cond, !dbg !2522, !llvm.loop !2523

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2525
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2526 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2527, !DIExpression(), !2528)
    #dbg_value(ptr %in, !2529, !DIExpression(), !2528)
    #dbg_value(ptr %out, !2530, !DIExpression(), !2528)
    #dbg_value(i32 0, !2531, !DIExpression(), !2533)
  br label %for.cond, !dbg !2534

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2535
    #dbg_value(i32 %i.0, !2531, !DIExpression(), !2533)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2536
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2538

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2539
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2539
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2541
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2542
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2543
    #dbg_value(i32 %inc, !2531, !DIExpression(), !2533)
  br label %for.cond, !dbg !2544, !llvm.loop !2545

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2547
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2548 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2549, !DIExpression(), !2550)
    #dbg_value(ptr %in, !2551, !DIExpression(), !2550)
    #dbg_value(ptr %acc, !2552, !DIExpression(), !2550)
    #dbg_value(i32 0, !2553, !DIExpression(), !2555)
  br label %for.cond, !dbg !2556

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2557
    #dbg_value(i32 %i.0, !2553, !DIExpression(), !2555)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2558
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2560

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2561
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2561
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2563
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2564
  %xor = xor i64 %1, %0, !dbg !2564
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2564
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2565
    #dbg_value(i32 %inc, !2553, !DIExpression(), !2555)
  br label %for.cond, !dbg !2566, !llvm.loop !2567

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2569
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2570 {
entry:
  %Ar = alloca [64 x i8], align 1
    #dbg_value(ptr %p, !2573, !DIExpression(), !2574)
    #dbg_value(ptr %A, !2575, !DIExpression(), !2574)
    #dbg_value(ptr %y, !2576, !DIExpression(), !2574)
    #dbg_value(ptr %r, !2577, !DIExpression(), !2574)
    #dbg_value(ptr %x, !2578, !DIExpression(), !2574)
    #dbg_value(i32 %k, !2579, !DIExpression(), !2574)
    #dbg_value(i32 %o, !2580, !DIExpression(), !2574)
    #dbg_value(i32 %m, !2581, !DIExpression(), !2574)
    #dbg_value(i32 %A_cols, !2582, !DIExpression(), !2574)
    #dbg_value(i32 0, !2583, !DIExpression(), !2585)
  %0 = mul nsw i32 %o, %k, !dbg !2586
  %1 = icmp sgt i32 %0, 0, !dbg !2586
  %2 = select i1 %1, i32 %0, i32 0, !dbg !2586
  br label %for.cond, !dbg !2586

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2587
    #dbg_value(i32 %i.0, !2583, !DIExpression(), !2585)
  %exitcond = icmp ne i32 %i.0, %2, !dbg !2588
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2590

for.cond3.preheader:                              ; preds = %for.cond
  %3 = icmp sgt i32 %m, 0, !dbg !2591
  %4 = select i1 %3, i32 %m, i32 0, !dbg !2591
  br label %for.cond3, !dbg !2591

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2593
  %5 = load i8, ptr %arrayidx, align 1, !dbg !2593
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2595
  store i8 %5, ptr %arrayidx1, align 1, !dbg !2596
  %inc = add nuw i32 %i.0, 1, !dbg !2597
    #dbg_value(i32 %inc, !2583, !DIExpression(), !2585)
  br label %for.cond, !dbg !2598, !llvm.loop !2599

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2601
    #dbg_value(i32 %i2.0, !2602, !DIExpression(), !2603)
  %exitcond14 = icmp ne i32 %i2.0, %4, !dbg !2604
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2591

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2606
  %mul7 = mul nsw i32 %k, %o, !dbg !2608
  %add = add nsw i32 %mul7, 1, !dbg !2609
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2610
  %6 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2611
  %arrayidx10 = getelementptr i8, ptr %6, i32 %mul8, !dbg !2611
  store i8 0, ptr %arrayidx10, align 1, !dbg !2612
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2613
    #dbg_value(i32 %inc12, !2602, !DIExpression(), !2603)
  br label %for.cond3, !dbg !2614, !llvm.loop !2615

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2617
  %add15 = add nsw i32 %mul14, 1, !dbg !2618
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #4, !dbg !2619
    #dbg_value(i32 0, !2620, !DIExpression(), !2622)
  br label %for.cond17, !dbg !2623

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2624
    #dbg_value(i32 %i16.0, !2620, !DIExpression(), !2622)
  %exitcond15 = icmp ne i32 %i16.0, %4, !dbg !2625
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2627

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2628
  %7 = load i8, ptr %arrayidx20, align 1, !dbg !2628
  %arrayidx21 = getelementptr inbounds nuw [64 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2630
  %8 = load i8, ptr %arrayidx21, align 1, !dbg !2630
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %7, i8 noundef zeroext %8) #4, !dbg !2631
  %mul22 = mul nsw i32 %k, %o, !dbg !2632
  %mul23 = mul nsw i32 %k, %o, !dbg !2633
  %add24 = add nsw i32 %mul23, 1, !dbg !2634
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2635
  %9 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2636
  %arrayidx27 = getelementptr i8, ptr %9, i32 %mul25, !dbg !2636
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2637
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2638
    #dbg_value(i32 %inc29, !2620, !DIExpression(), !2622)
  br label %for.cond17, !dbg !2639, !llvm.loop !2640

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2642
  %add32 = add nsw i32 %mul31, 1, !dbg !2643
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #4, !dbg !2644
    #dbg_value(i8 0, !2645, !DIExpression(), !2574)
    #dbg_value(i32 0, !2646, !DIExpression(), !2648)
  %10 = add i32 %A_cols, -1, !dbg !2649
  %11 = icmp sgt i32 %10, 0, !dbg !2649
  %12 = select i1 %11, i32 %10, i32 0, !dbg !2649
  br label %for.cond34, !dbg !2649

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2574
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2650
    #dbg_value(i32 %i33.0, !2646, !DIExpression(), !2648)
    #dbg_value(i8 %full_rank.0, !2645, !DIExpression(), !2574)
  %exitcond17 = icmp ne i32 %i33.0, %12, !dbg !2651
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2653

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2645, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2574)
  %sub37 = add nsw i32 %m, -1, !dbg !2654
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2656
  %13 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2657
  %arrayidx40 = getelementptr i8, ptr %13, i32 %i33.0, !dbg !2657
  %14 = load i8, ptr %arrayidx40, align 1, !dbg !2657
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %14), !2645, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2574)
  %or12 = or i8 %full_rank.0, %14, !dbg !2658
    #dbg_value(i8 %or12, !2645, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2574)
    #dbg_value(i8 %or12, !2645, !DIExpression(), !2574)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2659
    #dbg_value(i32 %inc44, !2646, !DIExpression(), !2648)
  br label %for.cond34, !dbg !2660, !llvm.loop !2661

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2574
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2663
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2663

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2665

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2665, !llvm.loop !2667

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2669
    #dbg_value(i32 %row.0, !2670, !DIExpression(), !2671)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2672
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2665

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2674, !DIExpression(), !2574)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2675
  %div = sdiv i32 32, %sub54, !dbg !2675
  %add55 = add nsw i32 %row.0, %div, !dbg !2675
  %mul56 = mul nsw i32 %k, %o, !dbg !2675
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2675
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2675

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2675
  %div60 = sdiv i32 32, %sub59, !dbg !2675
  %add61 = add nsw i32 %row.0, %div60, !dbg !2675
  br label %cond.end, !dbg !2675

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2675
  br label %cond.end, !dbg !2675

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2675
    #dbg_value(i32 %cond, !2677, !DIExpression(), !2574)
    #dbg_value(i32 %row.0, !2678, !DIExpression(), !2680)
  br label %for.cond63, !dbg !2681

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2682
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2683
    #dbg_value(i32 %col.0, !2678, !DIExpression(), !2680)
    #dbg_value(i8 %finished.0, !2674, !DIExpression(), !2574)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2684
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2686

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2687
  %15 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2689
  %arrayidx69 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2689
  %16 = load i8, ptr %arrayidx69, align 1, !dbg !2689
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %16, i8 noundef zeroext 0) #4, !dbg !2690
  %not = xor i8 %finished.0, -1, !dbg !2691
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2692, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2574)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2693
  %17 = getelementptr i8, ptr %A, i32 %add76, !dbg !2694
  %arrayidx78 = getelementptr i8, ptr %17, i32 -1, !dbg !2694
  %18 = load i8, ptr %arrayidx78, align 1, !dbg !2694
  %19 = and i8 %18, %not, !dbg !2695
  %and801 = and i8 %19, %call70, !dbg !2695
    #dbg_value(i8 %and801, !2696, !DIExpression(), !2697)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2698
  %20 = load i8, ptr %arrayidx83, align 1, !dbg !2699
  %xor2 = xor i8 %20, %and801, !dbg !2699
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2699
    #dbg_value(i32 0, !2700, !DIExpression(), !2702)
  br label %for.cond87, !dbg !2703

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2704
    #dbg_value(i32 %i86.0, !2700, !DIExpression(), !2702)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2705
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2707

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2708
  %21 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2710
  %arrayidx93 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2710
  %22 = load i8, ptr %arrayidx93, align 1, !dbg !2710
  %conv94 = zext i8 %22 to i64, !dbg !2711
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2712
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2713
  %23 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2714
  %arrayidx98 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2714
  %24 = load i8, ptr %arrayidx98, align 1, !dbg !2714
  %conv99 = zext i8 %24 to i64, !dbg !2715
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2716
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2717
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2718
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2719
  %25 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2720
  %arrayidx105 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2720
  %26 = load i8, ptr %arrayidx105, align 1, !dbg !2720
  %conv106 = zext i8 %26 to i64, !dbg !2721
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2722
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2723
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2724
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2725
  %27 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2726
  %arrayidx112 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2726
  %28 = load i8, ptr %arrayidx112, align 1, !dbg !2726
  %conv113 = zext i8 %28 to i64, !dbg !2727
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2728
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2729
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2730
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2731
  %29 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2732
  %arrayidx119 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2732
  %30 = load i8, ptr %arrayidx119, align 1, !dbg !2732
  %conv120 = zext i8 %30 to i64, !dbg !2733
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2734
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2735
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2736
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2737
  %31 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2738
  %arrayidx126 = getelementptr i8, ptr %31, i32 %col.0, !dbg !2738
  %32 = load i8, ptr %arrayidx126, align 1, !dbg !2738
  %conv127 = zext i8 %32 to i64, !dbg !2739
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2740
  %xor129 = xor i64 %xor122, %shl128, !dbg !2741
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2742
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2743
  %33 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2744
  %arrayidx133 = getelementptr i8, ptr %33, i32 %col.0, !dbg !2744
  %34 = load i8, ptr %arrayidx133, align 1, !dbg !2744
  %conv134 = zext i8 %34 to i64, !dbg !2745
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2746
  %xor136 = xor i64 %xor129, %shl135, !dbg !2747
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2748
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2749
  %35 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2750
  %arrayidx140 = getelementptr i8, ptr %35, i32 %col.0, !dbg !2750
  %36 = load i8, ptr %arrayidx140, align 1, !dbg !2750
  %conv141 = zext i8 %36 to i64, !dbg !2751
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2752
  %xor143 = xor i64 %xor136, %shl142, !dbg !2753
    #dbg_value(i64 %xor143, !2754, !DIExpression(), !2755)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #4, !dbg !2756
    #dbg_value(i64 %call144, !2754, !DIExpression(), !2755)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2757
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2757
  %37 = getelementptr i8, ptr %A, i32 %add147, !dbg !2758
  %arrayidx149 = getelementptr i8, ptr %37, i32 -1, !dbg !2758
  %38 = load i8, ptr %arrayidx149, align 1, !dbg !2759
  %39 = trunc i64 %call144 to i8, !dbg !2759
  %40 = and i8 %39, 15, !dbg !2759
  %conv152 = xor i8 %40, %38, !dbg !2759
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2759
  %shr = lshr i64 %call144, 8, !dbg !2760
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2761
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2761
  %41 = getelementptr i8, ptr %A, i32 %add156, !dbg !2762
  %arrayidx158 = getelementptr i8, ptr %41, i32 -1, !dbg !2762
  %42 = load i8, ptr %arrayidx158, align 1, !dbg !2763
  %43 = trunc i64 %shr to i8, !dbg !2763
  %44 = and i8 %43, 15, !dbg !2763
  %conv161 = xor i8 %44, %42, !dbg !2763
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2763
  %shr162 = lshr i64 %call144, 16, !dbg !2764
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2765
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2765
  %45 = getelementptr i8, ptr %A, i32 %add166, !dbg !2766
  %arrayidx168 = getelementptr i8, ptr %45, i32 -1, !dbg !2766
  %46 = load i8, ptr %arrayidx168, align 1, !dbg !2767
  %47 = trunc i64 %shr162 to i8, !dbg !2767
  %48 = and i8 %47, 15, !dbg !2767
  %conv171 = xor i8 %48, %46, !dbg !2767
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2767
  %shr172 = lshr i64 %call144, 24, !dbg !2768
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2769
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2769
  %49 = getelementptr i8, ptr %A, i32 %add176, !dbg !2770
  %arrayidx178 = getelementptr i8, ptr %49, i32 -1, !dbg !2770
  %50 = load i8, ptr %arrayidx178, align 1, !dbg !2771
  %51 = trunc i64 %shr172 to i8, !dbg !2771
  %52 = and i8 %51, 15, !dbg !2771
  %conv181 = xor i8 %52, %50, !dbg !2771
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2771
  %shr182 = lshr i64 %call144, 32, !dbg !2772
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2773
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2773
  %53 = getelementptr i8, ptr %A, i32 %add186, !dbg !2774
  %arrayidx188 = getelementptr i8, ptr %53, i32 -1, !dbg !2774
  %54 = load i8, ptr %arrayidx188, align 1, !dbg !2775
  %55 = trunc i64 %shr182 to i8, !dbg !2775
  %56 = and i8 %55, 15, !dbg !2775
  %conv191 = xor i8 %56, %54, !dbg !2775
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2775
  %shr192 = lshr i64 %call144, 40, !dbg !2776
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2777
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2777
  %57 = getelementptr i8, ptr %A, i32 %add196, !dbg !2778
  %arrayidx198 = getelementptr i8, ptr %57, i32 -1, !dbg !2778
  %58 = load i8, ptr %arrayidx198, align 1, !dbg !2779
  %59 = trunc i64 %shr192 to i8, !dbg !2779
  %60 = and i8 %59, 15, !dbg !2779
  %conv201 = xor i8 %60, %58, !dbg !2779
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2779
  %shr202 = lshr i64 %call144, 48, !dbg !2780
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2781
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2781
  %61 = getelementptr i8, ptr %A, i32 %add206, !dbg !2782
  %arrayidx208 = getelementptr i8, ptr %61, i32 -1, !dbg !2782
  %62 = load i8, ptr %arrayidx208, align 1, !dbg !2783
  %63 = trunc i64 %shr202 to i8, !dbg !2783
  %64 = and i8 %63, 15, !dbg !2783
  %conv211 = xor i8 %64, %62, !dbg !2783
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2783
  %shr212 = lshr i64 %call144, 56, !dbg !2784
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2785
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2785
  %65 = getelementptr i8, ptr %A, i32 %add216, !dbg !2786
  %arrayidx218 = getelementptr i8, ptr %65, i32 -1, !dbg !2786
  %66 = load i8, ptr %arrayidx218, align 1, !dbg !2787
  %67 = trunc nuw nsw i64 %shr212 to i8, !dbg !2787
  %conv221 = xor i8 %66, %67, !dbg !2787
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2787
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2788
    #dbg_value(i32 %add223, !2700, !DIExpression(), !2702)
  br label %for.cond87, !dbg !2789, !llvm.loop !2790

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2674, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2574)
  %or2273 = or i8 %finished.0, %call70, !dbg !2792
    #dbg_value(i8 %or2273, !2674, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2574)
    #dbg_value(i8 %or2273, !2674, !DIExpression(), !2574)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2793
    #dbg_value(i32 %inc230, !2678, !DIExpression(), !2680)
  br label %for.cond63, !dbg !2794, !llvm.loop !2795

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2797

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2574
  ret i32 %retval.0, !dbg !2797
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef nonnull %c, i32 noundef range(i32 -2147483647, -2147483648) %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2798 {
entry:
    #dbg_value(ptr %a, !2799, !DIExpression(), !2800)
    #dbg_value(ptr %b, !2801, !DIExpression(), !2800)
    #dbg_value(ptr %c, !2802, !DIExpression(), !2800)
    #dbg_value(i32 %colrow_ab, !2803, !DIExpression(), !2800)
    #dbg_value(i32 %row_a, !2804, !DIExpression(), !2800)
    #dbg_value(i32 1, !2805, !DIExpression(), !2800)
    #dbg_value(i32 0, !2806, !DIExpression(), !2808)
  %0 = icmp sgt i32 %row_a, 0, !dbg !2809
  %1 = select i1 %0, i32 %row_a, i32 0, !dbg !2809
  br label %for.cond, !dbg !2809

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2810
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2799, !DIExpression(), !2800)
    #dbg_value(ptr %c.addr.0, !2802, !DIExpression(), !2800)
    #dbg_value(i32 %i.0, !2806, !DIExpression(), !2808)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !2811
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !2813

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2814

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !2817
    #dbg_value(i32 poison, !2818, !DIExpression(), !2819)
    #dbg_value(ptr %c.addr.1, !2802, !DIExpression(), !2800)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !2814

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef %colrow_ab, i32 noundef 1) #4, !dbg !2820
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2823
    #dbg_value(i32 1, !2818, !DIExpression(), !2819)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2824
    #dbg_value(ptr %incdec.ptr, !2802, !DIExpression(), !2800)
  br label %for.cond1, !dbg !2825, !llvm.loop !2826

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2828
    #dbg_value(i32 %inc5, !2806, !DIExpression(), !2808)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2829
    #dbg_value(ptr %add.ptr6, !2799, !DIExpression(), !2800)
  br label %for.cond, !dbg !2830, !llvm.loop !2831

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2833
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2834 {
entry:
    #dbg_value(i8 %a, !2835, !DIExpression(), !2836)
    #dbg_value(i8 %b, !2837, !DIExpression(), !2836)
  %xor1 = xor i8 %a, %b, !dbg !2838
  ret i8 %xor1, !dbg !2839
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !2840 {
entry:
  %_pivot_row = alloca [5 x i64], align 32
  %_pivot_row2 = alloca [5 x i64], align 32
  %packed_A = alloca [320 x i64], align 32
  %temp = alloca [84 x i8], align 1
    #dbg_value(ptr %A, !2844, !DIExpression(), !2845)
    #dbg_value(i32 %nrows, !2846, !DIExpression(), !2845)
    #dbg_value(i32 %ncols, !2847, !DIExpression(), !2845)
    #dbg_declare(ptr %_pivot_row, !2848, !DIExpression(), !2852)
    #dbg_declare(ptr %_pivot_row2, !2853, !DIExpression(), !2854)
    #dbg_declare(ptr %packed_A, !2855, !DIExpression(), !2859)
  call void @mayo_memset(ptr %packed_A, i8 0, i32 2560), !dbg !2859
  %add = add nsw i32 %ncols, 15, !dbg !2860
  %div = sdiv i32 %add, 16, !dbg !2861
    #dbg_value(i32 %div, !2862, !DIExpression(), !2845)
    #dbg_value(i32 0, !2863, !DIExpression(), !2865)
  %0 = icmp sgt i32 %nrows, 0, !dbg !2866
  %1 = select i1 %0, i32 %nrows, i32 0, !dbg !2866
  br label %for.cond, !dbg !2866

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2867
    #dbg_value(i32 %i.0, !2863, !DIExpression(), !2865)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !2868
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2870

for.cond3.preheader:                              ; preds = %for.cond
  %2 = icmp sgt i32 %div, 0, !dbg !2871
  %3 = select i1 %2, i32 %div, i32 0, !dbg !2871
  %4 = icmp sgt i32 %ncols, 0, !dbg !2871
  %5 = select i1 %4, i32 %ncols, i32 0, !dbg !2871
  br label %for.cond3, !dbg !2871

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2873
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2875
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2876
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2877
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #4, !dbg !2878
  %inc = add nuw i32 %i.0, 1, !dbg !2879
    #dbg_value(i32 %inc, !2863, !DIExpression(), !2865)
  br label %for.cond, !dbg !2880, !llvm.loop !2881

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2883
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2845
    #dbg_value(i32 %pivot_row.0, !2884, !DIExpression(), !2845)
    #dbg_value(i32 %pivot_col.0, !2885, !DIExpression(), !2886)
  %exitcond6 = icmp ne i32 %pivot_col.0, %5, !dbg !2887
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2871

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2889

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2891
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2891
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2891
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2891
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2891
    #dbg_value(i32 %cond, !2893, !DIExpression(), !2894)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2895
    #dbg_value(i32 %cond16, !2896, !DIExpression(), !2894)
    #dbg_value(i32 0, !2897, !DIExpression(), !2899)
  br label %for.cond18, !dbg !2900

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2901
    #dbg_value(i32 %i17.0, !2897, !DIExpression(), !2899)
  %exitcond2 = icmp ne i32 %i17.0, %3, !dbg !2902
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !2904

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2895
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2895
  br label %for.cond25, !dbg !2905

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2907
  store i64 0, ptr %arrayidx, align 8, !dbg !2909
  %arrayidx21 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2910
  store i64 0, ptr %arrayidx21, align 8, !dbg !2911
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2912
    #dbg_value(i32 %inc23, !2897, !DIExpression(), !2899)
  br label %for.cond18, !dbg !2913, !llvm.loop !2914

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2894
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2894
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2916
    #dbg_value(i32 %row.0, !2917, !DIExpression(), !2916)
    #dbg_value(i8 %pivot.0, !2918, !DIExpression(), !2894)
    #dbg_value(i64 %pivot_is_zero.0, !2919, !DIExpression(), !2894)
  %add27 = add nsw i32 %cond16, 32, !dbg !2920
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2920
  %sub30 = add nsw i32 %nrows, -1, !dbg !2920
  %add32 = add nsw i32 %cond16, 32, !dbg !2920
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2920
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2922
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2905

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #4, !dbg !2923
  %not = xor i64 %call, -1, !dbg !2925
    #dbg_value(i64 %not, !2926, !DIExpression(), !2927)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #4, !dbg !2928
    #dbg_value(i64 %call37, !2929, !DIExpression(), !2927)
    #dbg_value(i32 0, !2930, !DIExpression(), !2932)
  br label %for.cond38, !dbg !2933

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2934
    #dbg_value(i32 %j.0, !2930, !DIExpression(), !2932)
  %exitcond3 = icmp ne i32 %j.0, %3, !dbg !2935
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !2937

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2938
  %or = or i64 %and, %not, !dbg !2940
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2941
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2942
  %arrayidx43 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2943
  %6 = load i64, ptr %arrayidx43, align 8, !dbg !2943
  %and44 = and i64 %or, %6, !dbg !2944
  %arrayidx45 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2945
  %7 = load i64, ptr %arrayidx45, align 8, !dbg !2946
  %xor = xor i64 %7, %and44, !dbg !2946
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2946
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2947
    #dbg_value(i32 %inc47, !2930, !DIExpression(), !2932)
  br label %for.cond38, !dbg !2948, !llvm.loop !2949

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #4, !dbg !2951
    #dbg_value(i8 %call50, !2918, !DIExpression(), !2894)
  %conv = zext nneg i8 %call50 to i32, !dbg !2952
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #4, !dbg !2953
    #dbg_value(i64 %call51, !2919, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2894)
  %not52 = xor i64 %call51, -1, !dbg !2954
    #dbg_value(i64 %not52, !2919, !DIExpression(), !2894)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2955
    #dbg_value(i32 %inc54, !2917, !DIExpression(), !2916)
  br label %for.cond25, !dbg !2956, !llvm.loop !2957

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2894
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2894
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #4, !dbg !2959
    #dbg_value(i8 %call56, !2960, !DIExpression(), !2845)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #4, !dbg !2961
    #dbg_value(i32 %cond, !2962, !DIExpression(), !2964)
  br label %for.cond60, !dbg !2965

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !2966
    #dbg_value(i32 %row59.0, !2962, !DIExpression(), !2964)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !2967
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !2969

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !2970

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #4, !dbg !2972
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !2974
  %and67 = xor i64 %and67.demorgan, -1, !dbg !2974
    #dbg_value(i64 %and67, !2975, !DIExpression(), !2976)
    #dbg_value(i64 %and67.demorgan, !2977, !DIExpression(), !2976)
    #dbg_value(i32 0, !2978, !DIExpression(), !2980)
  br label %for.cond69, !dbg !2981

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !2982
    #dbg_value(i32 %col.0, !2978, !DIExpression(), !2980)
  %exitcond4 = icmp ne i32 %col.0, %3, !dbg !2983
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !2985

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !2986
  %add74 = add nsw i32 %mul73, %col.0, !dbg !2988
  %arrayidx75 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !2989
  %8 = load i64, ptr %arrayidx75, align 8, !dbg !2989
  %and76 = and i64 %and67.demorgan, %8, !dbg !2990
  %arrayidx77 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !2991
  %9 = load i64, ptr %arrayidx77, align 8, !dbg !2991
  %and78 = and i64 %9, %and67, !dbg !2992
  %add79 = add i64 %and76, %and78, !dbg !2993
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !2994
  %add81 = add nsw i32 %mul80, %col.0, !dbg !2995
  %arrayidx82 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !2996
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !2997
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !2998
    #dbg_value(i32 %inc84, !2978, !DIExpression(), !2980)
  br label %for.cond69, !dbg !2999, !llvm.loop !3000

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !3002
    #dbg_value(i32 %inc87, !2962, !DIExpression(), !2964)
  br label %for.cond60, !dbg !3003, !llvm.loop !3004

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !3006
    #dbg_value(i32 %row89.0, !3007, !DIExpression(), !3008)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !3009
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !2970

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !3011
    #dbg_value(i1 %cmp94, !3013, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3014)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !3015
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !3016
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #4, !dbg !3017
    #dbg_value(i8 %call100, !3018, !DIExpression(), !3014)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !3019
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !3020
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !3021
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #4, !dbg !3022
  %inc110 = add nsw i32 %row89.0, 1, !dbg !3023
    #dbg_value(i32 %inc110, !3007, !DIExpression(), !3008)
  br label %for.cond90, !dbg !3024, !llvm.loop !3025

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2884, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2845)
  %10 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !3027
  %11 = add i32 %10, 1, !dbg !3027
  %conv116 = add i32 %11, %pivot_row.0, !dbg !3027
    #dbg_value(i32 %conv116, !2884, !DIExpression(), !2845)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !3028
    #dbg_value(i32 %inc118, !2885, !DIExpression(), !2886)
  br label %for.cond3, !dbg !3029, !llvm.loop !3030

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !3032
    #dbg_value(i32 %i120.0, !3033, !DIExpression(), !3034)
  %exitcond8 = icmp ne i32 %i120.0, %1, !dbg !3035
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2889

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !3037
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !3039
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #4, !dbg !3040
    #dbg_value(i32 0, !3041, !DIExpression(), !3043)
  br label %for.cond130, !dbg !3044

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !3045
    #dbg_value(i32 %j129.0, !3041, !DIExpression(), !3043)
  %exitcond7 = icmp ne i32 %j129.0, %5, !dbg !3046
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !3048

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [84 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !3049
  %12 = load i8, ptr %arrayidx134, align 1, !dbg !3049
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !3051
  %13 = getelementptr i8, ptr %A, i32 %mul135, !dbg !3052
  %arrayidx137 = getelementptr i8, ptr %13, i32 %j129.0, !dbg !3052
  store i8 %12, ptr %arrayidx137, align 1, !dbg !3053
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3054
    #dbg_value(i32 %inc139, !3041, !DIExpression(), !3043)
  br label %for.cond130, !dbg !3055, !llvm.loop !3056

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3058
    #dbg_value(i32 %inc142, !3033, !DIExpression(), !3034)
  br label %for.cond121, !dbg !3059, !llvm.loop !3060

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 84) #4, !dbg !3062
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 40) #4, !dbg !3063
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 40) #4, !dbg !3064
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 2560) #4, !dbg !3065
  ret void, !dbg !3066
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3067 {
entry:
    #dbg_value(i8 %a, !3069, !DIExpression(), !3070)
    #dbg_value(i8 0, !3071, !DIExpression(), !3070)
  %0 = icmp ne i8 %a, 0, !dbg !3072
  %conv3 = sext i1 %0 to i8, !dbg !3073
  %1 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !3074
  %xor5 = xor i8 %1, %conv3, !dbg !3075
  ret i8 %xor5, !dbg !3076
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3077 {
entry:
    #dbg_value(i8 %a, !3080, !DIExpression(), !3081)
    #dbg_value(i64 %b, !3082, !DIExpression(), !3081)
  %0 = and i8 %a, 1, !dbg !3083
  %conv1 = zext nneg i8 %0 to i64, !dbg !3084
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3085
    #dbg_value(i64 %mul, !3086, !DIExpression(), !3081)
  %1 = and i8 %a, 2, !dbg !3087
  %conv4 = zext nneg i8 %1 to i64, !dbg !3088
  %mul5 = mul i64 %b, %conv4, !dbg !3089
  %xor = xor i64 %mul, %mul5, !dbg !3090
    #dbg_value(i64 %xor, !3086, !DIExpression(), !3081)
  %2 = and i8 %a, 4, !dbg !3091
  %conv8 = zext nneg i8 %2 to i64, !dbg !3092
  %mul9 = mul i64 %b, %conv8, !dbg !3093
  %xor10 = xor i64 %xor, %mul9, !dbg !3094
    #dbg_value(i64 %xor10, !3086, !DIExpression(), !3081)
  %3 = and i8 %a, 8, !dbg !3095
  %conv13 = zext nneg i8 %3 to i64, !dbg !3096
  %mul14 = mul i64 %b, %conv13, !dbg !3097
  %xor15 = xor i64 %xor10, %mul14, !dbg !3098
    #dbg_value(i64 %xor15, !3086, !DIExpression(), !3081)
    #dbg_value(i64 %xor15, !3099, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3081)
  %shr = lshr i64 %xor15, 4, !dbg !3100
  %and16 = lshr i64 %xor15, 3, !dbg !3101
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3101
  %4 = xor i64 %shr, %shr18, !dbg !3102
  %xor19 = xor i64 %4, %xor15, !dbg !3102
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3103
    #dbg_value(i64 %and20, !3104, !DIExpression(), !3081)
  ret i64 %and20, !dbg !3105
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef nonnull %out, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !3106 {
entry:
    #dbg_value(ptr %in, !3109, !DIExpression(), !3110)
    #dbg_value(ptr %out, !3111, !DIExpression(), !3110)
    #dbg_value(i32 %ncols, !3112, !DIExpression(), !3110)
    #dbg_value(ptr %out, !3113, !DIExpression(), !3110)
    #dbg_value(i32 0, !3114, !DIExpression(), !3110)
  br label %for.cond, !dbg !3115

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3117
    #dbg_value(i32 %i.0, !3114, !DIExpression(), !3110)
  %add = or disjoint i32 %i.0, 1, !dbg !3118
  %cmp = icmp slt i32 %add, %ncols, !dbg !3120
  br i1 %cmp, label %for.body, label %for.end, !dbg !3121

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3122
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3122
  %add2 = or disjoint i32 %i.0, 1, !dbg !3124
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3125
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3125
  %shl5 = shl i8 %1, 4, !dbg !3126
  %or = or i8 %shl5, %0, !dbg !3127
  %div = lshr exact i32 %i.0, 1, !dbg !3128
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3129
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3130
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3131
    #dbg_value(i32 %add8, !3114, !DIExpression(), !3110)
  br label %for.cond, !dbg !3132, !llvm.loop !3133

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3117
  %2 = and i32 %ncols, -2147483647, !dbg !3135
  %cmp9 = icmp eq i32 %2, 1, !dbg !3135
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3135

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3137
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3137
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3139
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3140
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3141
  br label %if.end, !dbg !3142

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3143
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3144 {
entry:
    #dbg_value(i32 %a, !3147, !DIExpression(), !3148)
    #dbg_value(i32 %b, !3149, !DIExpression(), !3148)
  %xor = xor i32 %a, %b, !dbg !3150
  %0 = icmp sgt i32 %xor, 0, !dbg !3151
  %shr = sext i1 %0 to i64, !dbg !3151
  %1 = load volatile i64, ptr @pqmayo_MAYO_2_ref_uint64_t_blocker, align 8, !dbg !3152
  %xor1 = xor i64 %1, %shr, !dbg !3153
  ret i64 %xor1, !dbg !3154
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3155 {
entry:
    #dbg_value(i32 %a, !3156, !DIExpression(), !3157)
    #dbg_value(i32 %b, !3158, !DIExpression(), !3157)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3159, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3157)
  %0 = icmp slt i32 %b, %a, !dbg !3160
  %shr = sext i1 %0 to i64, !dbg !3160
  %1 = load volatile i64, ptr @pqmayo_MAYO_2_ref_uint64_t_blocker, align 8, !dbg !3161
  %xor = xor i64 %1, %shr, !dbg !3162
  ret i64 %xor, !dbg !3163
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef nonnull %in, i32 noundef range(i32 -2147483648, 2147483647) %index) unnamed_addr #0 !dbg !3164 {
entry:
    #dbg_value(ptr %in, !3167, !DIExpression(), !3168)
    #dbg_value(i32 %index, !3169, !DIExpression(), !3168)
  %div = sdiv i32 %index, 16, !dbg !3170
    #dbg_value(i32 %div, !3171, !DIExpression(), !3168)
  %rem = srem i32 %index, 16, !dbg !3172
    #dbg_value(i32 %rem, !3173, !DIExpression(), !3168)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3174
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3174
  %mul = shl nsw i32 %rem, 2, !dbg !3175
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3176
  %shr = lshr i64 %0, %sh_prom, !dbg !3176
  %1 = trunc i64 %shr to i8, !dbg !3177
  %conv = and i8 %1, 15, !dbg !3177
  ret i8 %conv, !dbg !3178
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext range(i8 0, 16) %a) unnamed_addr #0 !dbg !3179 {
entry:
    #dbg_value(i8 %a, !3182, !DIExpression(), !3183)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #4, !dbg !3184
    #dbg_value(i8 %call, !3185, !DIExpression(), !3183)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #4, !dbg !3186
    #dbg_value(i8 %call1, !3187, !DIExpression(), !3183)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #4, !dbg !3188
    #dbg_value(i8 %call2, !3189, !DIExpression(), !3183)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #4, !dbg !3190
    #dbg_value(i8 %call3, !3191, !DIExpression(), !3183)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #4, !dbg !3192
    #dbg_value(i8 %call4, !3193, !DIExpression(), !3183)
  ret i8 %call4, !dbg !3194
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, i8 noundef zeroext range(i8 0, 16) %a, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !3195 {
entry:
    #dbg_value(i32 %legs, !3198, !DIExpression(), !3199)
    #dbg_value(ptr %in, !3200, !DIExpression(), !3199)
    #dbg_value(i8 %a, !3201, !DIExpression(), !3199)
    #dbg_value(ptr %acc, !3202, !DIExpression(), !3199)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #4, !dbg !3203
    #dbg_value(i32 %call, !3204, !DIExpression(), !3199)
    #dbg_value(i64 1229782938247303441, !3205, !DIExpression(), !3199)
    #dbg_value(i32 0, !3206, !DIExpression(), !3208)
  %0 = icmp sgt i32 %legs, 0, !dbg !3209
  %1 = select i1 %0, i32 %legs, i32 0, !dbg !3209
  br label %for.cond, !dbg !3209

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3210
    #dbg_value(i32 %i.0, !3206, !DIExpression(), !3208)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !3211
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3213

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3214
  %2 = load i64, ptr %arrayidx, align 8, !dbg !3214
  %and = and i64 %2, 1229782938247303441, !dbg !3216
  %and1 = and i32 %call, 255, !dbg !3217
  %conv = zext nneg i32 %and1 to i64, !dbg !3218
  %mul = mul i64 %and, %conv, !dbg !3219
  %shr = lshr i64 %2, 1, !dbg !3220
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3221
  %shr4 = lshr i32 %call, 8, !dbg !3222
  %and5 = and i32 %shr4, 15, !dbg !3223
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3224
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3225
  %xor = xor i64 %mul, %mul7, !dbg !3226
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3227
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !3227
  %shr9 = lshr i64 %3, 2, !dbg !3228
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3229
  %shr11 = lshr i32 %call, 16, !dbg !3230
  %and12 = and i32 %shr11, 15, !dbg !3231
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3232
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3233
  %xor15 = xor i64 %xor, %mul14, !dbg !3234
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3235
  %4 = load i64, ptr %arrayidx16, align 8, !dbg !3235
  %shr17 = lshr i64 %4, 3, !dbg !3236
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3237
  %shr19 = lshr i32 %call, 24, !dbg !3238
  %and20 = and i32 %shr19, 15, !dbg !3239
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3240
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3241
  %xor23 = xor i64 %xor15, %mul22, !dbg !3242
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3243
  %5 = load i64, ptr %arrayidx24, align 8, !dbg !3244
  %xor25 = xor i64 %5, %xor23, !dbg !3244
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3244
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3245
    #dbg_value(i32 %inc, !3206, !DIExpression(), !3208)
  br label %for.cond, !dbg !3246, !llvm.loop !3247

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3249
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !3250 {
entry:
    #dbg_value(i32 %legs, !3253, !DIExpression(), !3254)
    #dbg_value(ptr %in, !3255, !DIExpression(), !3254)
    #dbg_value(ptr %out, !3256, !DIExpression(), !3254)
    #dbg_value(ptr %in, !3257, !DIExpression(), !3254)
    #dbg_value(i32 0, !3258, !DIExpression(), !3260)
  br label %for.cond, !dbg !3261

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3262
    #dbg_value(i32 %i.0, !3258, !DIExpression(), !3260)
  %mul = shl nsw i32 %legs, 4, !dbg !3263
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3265
  br i1 %cmp, label %for.body, label %for.end, !dbg !3266

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3267
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3269
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3269
  %1 = and i8 %0, 15, !dbg !3270
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3271
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3272
  %div3 = lshr exact i32 %i.0, 1, !dbg !3273
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3274
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3274
  %3 = lshr i8 %2, 4, !dbg !3275
  %add = or disjoint i32 %i.0, 1, !dbg !3276
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3277
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3278
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3279
    #dbg_value(i32 %add8, !3258, !DIExpression(), !3260)
  br label %for.cond, !dbg !3280, !llvm.loop !3281

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3283
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, -2147483648) i32 @mul_table.22(i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3284 {
entry:
    #dbg_value(i8 %b, !3285, !DIExpression(), !3286)
  %conv = zext nneg i8 %b to i32, !dbg !3287
  %mul = mul nuw nsw i32 %conv, 134480385, !dbg !3288
    #dbg_value(i32 %mul, !3289, !DIExpression(), !3286)
    #dbg_value(i32 -252645136, !3290, !DIExpression(), !3286)
  %and = and i32 %mul, 1894838512, !dbg !3291
    #dbg_value(i32 %and, !3292, !DIExpression(), !3286)
  %shr = lshr exact i32 %and, 4, !dbg !3293
  %shr1 = lshr exact i32 %and, 3, !dbg !3294
  %0 = xor i32 %shr, %shr1, !dbg !3295
  %xor2 = xor i32 %0, %mul, !dbg !3295
  ret i32 %xor2, !dbg !3296
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3297 {
entry:
    #dbg_value(i8 %a, !3298, !DIExpression(), !3299)
    #dbg_value(i8 %b, !3300, !DIExpression(), !3299)
  %0 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !3301
  %xor1 = xor i8 %a, %0, !dbg !3302
    #dbg_value(i8 %xor1, !3298, !DIExpression(), !3299)
  %1 = trunc i8 %xor1 to i1, !dbg !3303
    #dbg_value(i8 poison, !3304, !DIExpression(), !3299)
  %2 = and i8 %xor1, 2, !dbg !3305
  %mul9 = mul i8 %2, %b, !dbg !3306
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3303
  %xor11 = xor i8 %conv10, %mul9, !dbg !3307
    #dbg_value(i8 %xor11, !3304, !DIExpression(), !3299)
  %3 = and i8 %xor1, 4, !dbg !3308
  %mul16 = mul i8 %3, %b, !dbg !3309
  %xor18 = xor i8 %mul16, %xor11, !dbg !3310
    #dbg_value(i8 %xor18, !3304, !DIExpression(), !3299)
  %4 = and i8 %xor1, 8, !dbg !3311
  %mul23 = mul i8 %4, %b, !dbg !3312
  %xor25 = xor i8 %mul23, %xor18, !dbg !3313
    #dbg_value(i8 %xor25, !3304, !DIExpression(), !3299)
    #dbg_value(i8 %xor25, !3314, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3299)
  %5 = lshr i8 %xor25, 4, !dbg !3315
  %6 = lshr i8 %xor25, 3, !dbg !3316
  %7 = and i8 %6, 14, !dbg !3316
  %8 = xor i8 %5, %7, !dbg !3317
  %xor25.masked = and i8 %xor25, 15, !dbg !3318
  %9 = xor i8 %8, %xor25.masked, !dbg !3318
    #dbg_value(i8 %9, !3319, !DIExpression(), !3299)
  ret i8 %9, !dbg !3320
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef range(i32 -2147483647, -2147483648) %n, i32 noundef %m) unnamed_addr #0 !dbg !3321 {
entry:
    #dbg_value(ptr %a, !3322, !DIExpression(), !3323)
    #dbg_value(ptr %b, !3324, !DIExpression(), !3323)
    #dbg_value(i32 %n, !3325, !DIExpression(), !3323)
    #dbg_value(i32 1, !3326, !DIExpression(), !3323)
    #dbg_value(i8 0, !3327, !DIExpression(), !3323)
    #dbg_value(i32 0, !3328, !DIExpression(), !3330)
  %0 = icmp sgt i32 %n, 0, !dbg !3331
  %1 = select i1 %0, i32 %n, i32 0, !dbg !3331
  br label %for.cond, !dbg !3331

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3323
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3332
    #dbg_value(i32 %i.0, !3328, !DIExpression(), !3330)
    #dbg_value(ptr %b.addr.0, !3324, !DIExpression(), !3323)
    #dbg_value(i8 %ret.0, !3327, !DIExpression(), !3323)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !3333
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3335

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3336
  %2 = load i8, ptr %arrayidx, align 1, !dbg !3336
  %3 = load i8, ptr %b.addr.0, align 1, !dbg !3338
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %2, i8 noundef zeroext %3) #4, !dbg !3339
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #4, !dbg !3340
    #dbg_value(i8 %call1, !3327, !DIExpression(), !3323)
  %inc = add nuw i32 %i.0, 1, !dbg !3341
    #dbg_value(i32 %inc, !3328, !DIExpression(), !3330)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !3342
    #dbg_value(ptr %add.ptr, !3324, !DIExpression(), !3323)
  br label %for.cond, !dbg !3343, !llvm.loop !3344

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3323
  ret i8 %ret.0.lcssa, !dbg !3346
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @add_f.25(i8 noundef zeroext range(i8 0, 16) %a, i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3347 {
entry:
    #dbg_value(i8 %a, !3348, !DIExpression(), !3349)
    #dbg_value(i8 %b, !3350, !DIExpression(), !3349)
  %xor1 = xor i8 %a, %b, !dbg !3351
  ret i8 %xor1, !dbg !3352
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !3353 {
entry:
    #dbg_value(ptr %state, !3361, !DIExpression(), !3362)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !3363
  store ptr %call, ptr %state, align 4, !dbg !3364
  %cmp = icmp eq ptr %call, null, !dbg !3365
  br i1 %cmp, label %if.then, label %if.end, !dbg !3365

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !3367
  br label %if.end, !dbg !3369

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !3370
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !3371
  ret void, !dbg !3372
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i32 noundef) local_unnamed_addr #3

declare dso_local void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_init(ptr noundef %s_inc) unnamed_addr #0 !dbg !3373 {
entry:
    #dbg_value(ptr %s_inc, !3374, !DIExpression(), !3375)
    #dbg_value(i32 0, !3376, !DIExpression(), !3375)
  br label %for.cond, !dbg !3377

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3379
    #dbg_value(i32 %i.0, !3376, !DIExpression(), !3375)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !3380
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3382

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s_inc, i32 %i.0, !dbg !3383
  store i64 0, ptr %arrayidx, align 8, !dbg !3385
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3386
    #dbg_value(i32 %inc, !3376, !DIExpression(), !3375)
  br label %for.cond, !dbg !3387, !llvm.loop !3388

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3390
  store i64 0, ptr %arrayidx1, align 8, !dbg !3391
  ret void, !dbg !3392
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3393 {
entry:
    #dbg_value(ptr %state, !3396, !DIExpression(), !3397)
    #dbg_value(ptr %input, !3398, !DIExpression(), !3397)
    #dbg_value(i32 %inlen, !3399, !DIExpression(), !3397)
  %0 = load ptr, ptr %state, align 4, !dbg !3400
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen) #4, !dbg !3401
  ret void, !dbg !3402
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_absorb(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen) unnamed_addr #0 !dbg !3403 {
entry:
    #dbg_value(ptr %s_inc, !3406, !DIExpression(), !3407)
    #dbg_value(i32 %r, !3408, !DIExpression(), !3407)
    #dbg_value(ptr %m, !3409, !DIExpression(), !3407)
    #dbg_value(i32 %mlen, !3410, !DIExpression(), !3407)
  br label %while.cond, !dbg !3411

while.cond:                                       ; preds = %for.end, %entry
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr, %for.end ]
  %mlen.addr.0 = phi i32 [ %mlen, %entry ], [ %sub20, %for.end ]
    #dbg_value(i32 %mlen.addr.0, !3410, !DIExpression(), !3407)
    #dbg_value(ptr %m.addr.0, !3409, !DIExpression(), !3407)
  %conv = zext i32 %mlen.addr.0 to i64, !dbg !3412
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3413
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3413
  %add = add i64 %0, %conv, !dbg !3414
  %conv1 = zext nneg i32 %r to i64, !dbg !3415
  %cmp.not = icmp ult i64 %add, %conv1, !dbg !3416
  br i1 %cmp.not, label %for.cond25.preheader, label %for.cond.preheader, !dbg !3411

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !3417

for.cond25.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa1 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  %mlen.addr.0.lcssa = phi i32 [ %mlen.addr.0, %while.cond ]
  br label %for.cond25, !dbg !3420

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !3422
    #dbg_value(i32 %i.0, !3423, !DIExpression(), !3407)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3424
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !3424
  %conv4 = trunc i64 %1 to i32, !dbg !3426
  %sub = sub i32 %r, %conv4, !dbg !3427
  %cmp5 = icmp ult i32 %i.0, %sub, !dbg !3428
  br i1 %cmp5, label %for.body, label %for.end, !dbg !3417

for.body:                                         ; preds = %for.cond
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %i.0, !dbg !3429
  %2 = load i8, ptr %arrayidx7, align 1, !dbg !3429
  %conv8 = zext i8 %2 to i64, !dbg !3431
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3432
  %3 = load i64, ptr %arrayidx9, align 8, !dbg !3432
  %conv10 = zext i32 %i.0 to i64, !dbg !3433
  %add11 = add i64 %3, %conv10, !dbg !3434
  %and = shl i64 %add11, 3, !dbg !3435
  %mul = and i64 %and, 56, !dbg !3435
  %shl = shl nuw i64 %conv8, %mul, !dbg !3436
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3437
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !3437
  %conv13 = zext i32 %i.0 to i64, !dbg !3438
  %add14 = add i64 %4, %conv13, !dbg !3439
  %shr = lshr i64 %add14, 3, !dbg !3440
  %idxprom = trunc i64 %shr to i32, !dbg !3441
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3441
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !3442
  %xor = xor i64 %5, %shl, !dbg !3442
  store i64 %xor, ptr %arrayidx15, align 8, !dbg !3442
  %inc = add nuw i32 %i.0, 1, !dbg !3443
    #dbg_value(i32 %inc, !3423, !DIExpression(), !3407)
  br label %for.cond, !dbg !3444, !llvm.loop !3445

for.end:                                          ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3447
  %6 = load i64, ptr %arrayidx17, align 8, !dbg !3447
  %7 = trunc i64 %6 to i32, !dbg !3448
  %conv19.neg = sub i32 %7, %r, !dbg !3448
  %sub20 = add i32 %conv19.neg, %mlen.addr.0, !dbg !3449
    #dbg_value(i32 %sub20, !3410, !DIExpression(), !3407)
  %8 = trunc i64 %6 to i32, !dbg !3450
  %idx.ext = sub i32 %r, %8, !dbg !3450
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %idx.ext, !dbg !3450
    #dbg_value(ptr %add.ptr, !3409, !DIExpression(), !3407)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3451
  store i64 0, ptr %arrayidx24, align 8, !dbg !3452
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #4, !dbg !3453
  br label %while.cond, !dbg !3411, !llvm.loop !3454

for.cond25:                                       ; preds = %for.cond25.preheader, %for.body28
  %i.1 = phi i32 [ %inc45, %for.body28 ], [ 0, %for.cond25.preheader ], !dbg !3456
    #dbg_value(i32 %i.1, !3423, !DIExpression(), !3407)
  %exitcond = icmp ne i32 %i.1, %mlen.addr.0.lcssa1, !dbg !3457
  br i1 %exitcond, label %for.body28, label %for.end46, !dbg !3420

for.body28:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.1, !dbg !3459
  %9 = load i8, ptr %arrayidx29, align 1, !dbg !3459
  %conv30 = zext i8 %9 to i64, !dbg !3461
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3462
  %10 = load i64, ptr %arrayidx31, align 8, !dbg !3462
  %conv32 = zext i32 %i.1 to i64, !dbg !3463
  %add33 = add i64 %10, %conv32, !dbg !3464
  %and34 = shl i64 %add33, 3, !dbg !3465
  %mul35 = and i64 %and34, 56, !dbg !3465
  %shl36 = shl nuw i64 %conv30, %mul35, !dbg !3466
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3467
  %11 = load i64, ptr %arrayidx37, align 8, !dbg !3467
  %conv38 = zext i32 %i.1 to i64, !dbg !3468
  %add39 = add i64 %11, %conv38, !dbg !3469
  %shr40 = lshr i64 %add39, 3, !dbg !3470
  %idxprom41 = trunc i64 %shr40 to i32, !dbg !3471
  %arrayidx42 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom41, !dbg !3471
  %12 = load i64, ptr %arrayidx42, align 8, !dbg !3472
  %xor43 = xor i64 %12, %shl36, !dbg !3472
  store i64 %xor43, ptr %arrayidx42, align 8, !dbg !3472
  %inc45 = add i32 %i.1, 1, !dbg !3473
    #dbg_value(i32 %inc45, !3423, !DIExpression(), !3407)
  br label %for.cond25, !dbg !3474, !llvm.loop !3475

for.end46:                                        ; preds = %for.cond25
  %conv47 = zext i32 %mlen.addr.0.lcssa to i64, !dbg !3477
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3478
  %13 = load i64, ptr %arrayidx48, align 8, !dbg !3479
  %add49 = add i64 %13, %conv47, !dbg !3479
  store i64 %add49, ptr %arrayidx48, align 8, !dbg !3479
  ret void, !dbg !3480
}

; Function Attrs: nounwind
define internal fastcc void @KeccakF1600_StatePermute(ptr noundef %state) unnamed_addr #0 !dbg !3481 {
entry:
    #dbg_value(ptr %state, !3482, !DIExpression(), !3483)
  %0 = load i64, ptr %state, align 8, !dbg !3484
    #dbg_value(i64 %0, !3485, !DIExpression(), !3483)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3486
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !3486
    #dbg_value(i64 %1, !3487, !DIExpression(), !3483)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3488
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !3488
    #dbg_value(i64 %2, !3489, !DIExpression(), !3483)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3490
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !3490
    #dbg_value(i64 %3, !3491, !DIExpression(), !3483)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3492
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !3492
    #dbg_value(i64 %4, !3493, !DIExpression(), !3483)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3494
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !3494
    #dbg_value(i64 %5, !3495, !DIExpression(), !3483)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3496
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !3496
    #dbg_value(i64 %6, !3497, !DIExpression(), !3483)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3498
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !3498
    #dbg_value(i64 %7, !3499, !DIExpression(), !3483)
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3500
  %8 = load i64, ptr %arrayidx8, align 8, !dbg !3500
    #dbg_value(i64 %8, !3501, !DIExpression(), !3483)
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3502
  %9 = load i64, ptr %arrayidx9, align 8, !dbg !3502
    #dbg_value(i64 %9, !3503, !DIExpression(), !3483)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3504
  %10 = load i64, ptr %arrayidx10, align 8, !dbg !3504
    #dbg_value(i64 %10, !3505, !DIExpression(), !3483)
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3506
  %11 = load i64, ptr %arrayidx11, align 8, !dbg !3506
    #dbg_value(i64 %11, !3507, !DIExpression(), !3483)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3508
  %12 = load i64, ptr %arrayidx12, align 8, !dbg !3508
    #dbg_value(i64 %12, !3509, !DIExpression(), !3483)
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3510
  %13 = load i64, ptr %arrayidx13, align 8, !dbg !3510
    #dbg_value(i64 %13, !3511, !DIExpression(), !3483)
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3512
  %14 = load i64, ptr %arrayidx14, align 8, !dbg !3512
    #dbg_value(i64 %14, !3513, !DIExpression(), !3483)
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3514
  %15 = load i64, ptr %arrayidx15, align 8, !dbg !3514
    #dbg_value(i64 %15, !3515, !DIExpression(), !3483)
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3516
  %16 = load i64, ptr %arrayidx16, align 8, !dbg !3516
    #dbg_value(i64 %16, !3517, !DIExpression(), !3483)
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3518
  %17 = load i64, ptr %arrayidx17, align 8, !dbg !3518
    #dbg_value(i64 %17, !3519, !DIExpression(), !3483)
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3520
  %18 = load i64, ptr %arrayidx18, align 8, !dbg !3520
    #dbg_value(i64 %18, !3521, !DIExpression(), !3483)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3522
  %19 = load i64, ptr %arrayidx19, align 8, !dbg !3522
    #dbg_value(i64 %19, !3523, !DIExpression(), !3483)
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3524
  %20 = load i64, ptr %arrayidx20, align 8, !dbg !3524
    #dbg_value(i64 %20, !3525, !DIExpression(), !3483)
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3526
  %21 = load i64, ptr %arrayidx21, align 8, !dbg !3526
    #dbg_value(i64 %21, !3527, !DIExpression(), !3483)
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3528
  %22 = load i64, ptr %arrayidx22, align 8, !dbg !3528
    #dbg_value(i64 %22, !3529, !DIExpression(), !3483)
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3530
  %23 = load i64, ptr %arrayidx23, align 8, !dbg !3530
    #dbg_value(i64 %23, !3531, !DIExpression(), !3483)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3532
  %24 = load i64, ptr %arrayidx24, align 8, !dbg !3532
    #dbg_value(i64 %24, !3533, !DIExpression(), !3483)
    #dbg_value(i32 0, !3534, !DIExpression(), !3483)
  br label %for.cond, !dbg !3535

for.cond:                                         ; preds = %for.inc, %entry
  %Aso.0 = phi i64 [ %23, %entry ], [ %xor444, %for.inc ], !dbg !3483
  %Asi.0 = phi i64 [ %22, %entry ], [ %xor441, %for.inc ], !dbg !3483
  %Ase.0 = phi i64 [ %21, %entry ], [ %xor438, %for.inc ], !dbg !3483
  %Asa.0 = phi i64 [ %20, %entry ], [ %xor435, %for.inc ], !dbg !3483
  %Amu.0 = phi i64 [ %19, %entry ], [ %xor412, %for.inc ], !dbg !3483
  %Amo.0 = phi i64 [ %18, %entry ], [ %xor409, %for.inc ], !dbg !3483
  %Ami.0 = phi i64 [ %17, %entry ], [ %xor406, %for.inc ], !dbg !3483
  %Ame.0 = phi i64 [ %16, %entry ], [ %xor403, %for.inc ], !dbg !3483
  %Ama.0 = phi i64 [ %15, %entry ], [ %xor400, %for.inc ], !dbg !3483
  %Aku.0 = phi i64 [ %14, %entry ], [ %xor377, %for.inc ], !dbg !3483
  %Ako.0 = phi i64 [ %13, %entry ], [ %xor374, %for.inc ], !dbg !3483
  %Aki.0 = phi i64 [ %12, %entry ], [ %xor371, %for.inc ], !dbg !3483
  %Ake.0 = phi i64 [ %11, %entry ], [ %xor368, %for.inc ], !dbg !3483
  %Aka.0 = phi i64 [ %10, %entry ], [ %xor365, %for.inc ], !dbg !3483
  %Agu.0 = phi i64 [ %9, %entry ], [ %xor342, %for.inc ], !dbg !3483
  %Ago.0 = phi i64 [ %8, %entry ], [ %xor339, %for.inc ], !dbg !3483
  %Agi.0 = phi i64 [ %7, %entry ], [ %xor336, %for.inc ], !dbg !3483
  %Age.0 = phi i64 [ %6, %entry ], [ %xor333, %for.inc ], !dbg !3483
  %Aga.0 = phi i64 [ %5, %entry ], [ %xor330, %for.inc ], !dbg !3483
  %Abu.0 = phi i64 [ %4, %entry ], [ %xor307, %for.inc ], !dbg !3483
  %Abo.0 = phi i64 [ %3, %entry ], [ %xor304, %for.inc ], !dbg !3483
  %Abi.0 = phi i64 [ %2, %entry ], [ %xor301, %for.inc ], !dbg !3483
  %Abe.0 = phi i64 [ %1, %entry ], [ %xor298, %for.inc ], !dbg !3483
  %Aba.0 = phi i64 [ %0, %entry ], [ %xor295, %for.inc ], !dbg !3483
  %round.0 = phi i32 [ 0, %entry ], [ %add448, %for.inc ], !dbg !3537
  %Asu.0 = phi i64 [ %24, %entry ], [ %xor447, %for.inc ], !dbg !3483
    #dbg_value(i64 %Asu.0, !3533, !DIExpression(), !3483)
    #dbg_value(i32 %round.0, !3534, !DIExpression(), !3483)
    #dbg_value(i64 %Aba.0, !3485, !DIExpression(), !3483)
    #dbg_value(i64 %Abe.0, !3487, !DIExpression(), !3483)
    #dbg_value(i64 %Abi.0, !3489, !DIExpression(), !3483)
    #dbg_value(i64 %Abo.0, !3491, !DIExpression(), !3483)
    #dbg_value(i64 %Abu.0, !3493, !DIExpression(), !3483)
    #dbg_value(i64 %Aga.0, !3495, !DIExpression(), !3483)
    #dbg_value(i64 %Age.0, !3497, !DIExpression(), !3483)
    #dbg_value(i64 %Agi.0, !3499, !DIExpression(), !3483)
    #dbg_value(i64 %Ago.0, !3501, !DIExpression(), !3483)
    #dbg_value(i64 %Agu.0, !3503, !DIExpression(), !3483)
    #dbg_value(i64 %Aka.0, !3505, !DIExpression(), !3483)
    #dbg_value(i64 %Ake.0, !3507, !DIExpression(), !3483)
    #dbg_value(i64 %Aki.0, !3509, !DIExpression(), !3483)
    #dbg_value(i64 %Ako.0, !3511, !DIExpression(), !3483)
    #dbg_value(i64 %Aku.0, !3513, !DIExpression(), !3483)
    #dbg_value(i64 %Ama.0, !3515, !DIExpression(), !3483)
    #dbg_value(i64 %Ame.0, !3517, !DIExpression(), !3483)
    #dbg_value(i64 %Ami.0, !3519, !DIExpression(), !3483)
    #dbg_value(i64 %Amo.0, !3521, !DIExpression(), !3483)
    #dbg_value(i64 %Amu.0, !3523, !DIExpression(), !3483)
    #dbg_value(i64 %Asa.0, !3525, !DIExpression(), !3483)
    #dbg_value(i64 %Ase.0, !3527, !DIExpression(), !3483)
    #dbg_value(i64 %Asi.0, !3529, !DIExpression(), !3483)
    #dbg_value(i64 %Aso.0, !3531, !DIExpression(), !3483)
  %cmp = icmp samesign ult i32 %round.0, 24, !dbg !3538
  br i1 %cmp, label %for.inc, label %for.end, !dbg !3540

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0, i64 %Aga.0), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0, i64 %Age.0), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0, i64 %Agi.0), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0, i64 %Ago.0), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0, i64 %Agu.0), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3542, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3543, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3541, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3542, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3543, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3541, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3542, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3543, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3541, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3542, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3543, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3541, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3542, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3513, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3543, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3542, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3543, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3541, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3542, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3543, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3541, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3542, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3543, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3513, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3541, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3542, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3543, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3541, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3542, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3543, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3544, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 poison, !3545, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor32 = xor i64 %Abi.0, %Agi.0, !dbg !3576
    #dbg_value(!DIArgList(i64 %xor32, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor33 = xor i64 %xor32, %Aki.0, !dbg !3578
    #dbg_value(!DIArgList(i64 %xor33, i64 %Asi.0, i64 %Ami.0), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor34 = xor i64 %xor33, %Ami.0, !dbg !3579
    #dbg_value(!DIArgList(i64 %xor34, i64 %Asi.0), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor35 = xor i64 %xor34, %Asi.0, !dbg !3580
    #dbg_value(i64 %xor35, !3543, !DIExpression(), !3483)
  %xor40 = xor i64 %Abu.0, %Agu.0, !dbg !3581
    #dbg_value(!DIArgList(i64 %xor40, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor41 = xor i64 %xor40, %Aku.0, !dbg !3582
    #dbg_value(!DIArgList(i64 %xor41, i64 %Asu.0, i64 %Amu.0), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor42 = xor i64 %xor41, %Amu.0, !dbg !3583
    #dbg_value(!DIArgList(i64 %xor42, i64 %Asu.0), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor43 = xor i64 %xor42, %Asu.0, !dbg !3584
    #dbg_value(i64 %xor43, !3545, !DIExpression(), !3483)
  %25 = shl i64 %xor43, 1, !dbg !3585
  %26 = lshr i64 %xor43, 63, !dbg !3585
  %27 = or i64 %25, %26, !dbg !3585
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor35, i64 %27), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor35, i64 %27), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor35, i64 %27), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor35, i64 %27), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor35, i64 %27), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor35, i64 %27), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor57 = xor i64 %xor35, %27, !dbg !3586
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor57), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor57), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor57), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor57), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor57), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 %xor57, !3549, !DIExpression(), !3483)
  %xor203 = xor i64 %Ago.0, %xor57, !dbg !3587
    #dbg_value(i64 %xor203, !3501, !DIExpression(), !3483)
  %28 = shl i64 %xor203, 55, !dbg !3588
  %29 = lshr i64 %xor203, 9, !dbg !3588
  %30 = or i64 %28, %29, !dbg !3588
    #dbg_value(i64 %30, !3542, !DIExpression(), !3483)
  %xor28 = xor i64 %Abe.0, %Age.0, !dbg !3589
    #dbg_value(!DIArgList(i64 %xor28, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor29 = xor i64 %xor28, %Ake.0, !dbg !3590
    #dbg_value(!DIArgList(i64 %xor29, i64 %Ase.0, i64 %Ame.0), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor30 = xor i64 %xor29, %Ame.0, !dbg !3591
    #dbg_value(!DIArgList(i64 %xor30, i64 %Ase.0), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor31 = xor i64 %xor30, %Ase.0, !dbg !3592
    #dbg_value(i64 %xor31, !3542, !DIExpression(), !3483)
  %31 = shl i64 %xor31, 1, !dbg !3593
  %32 = lshr i64 %xor31, 63, !dbg !3593
  %33 = or i64 %31, %32, !dbg !3593
    #dbg_value(!DIArgList(i64 %xor43, i64 %33), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor43, i64 %33), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor43, i64 %33), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor43, i64 %33), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor43, i64 %33), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor45 = xor i64 %xor43, %33, !dbg !3594
    #dbg_value(i64 %xor45, !3546, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor45), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor45), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor45), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor45), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor211 = xor i64 %Ama.0, %xor45, !dbg !3595
    #dbg_value(i64 %xor211, !3515, !DIExpression(), !3483)
  %34 = shl i64 %xor211, 41, !dbg !3596
  %35 = lshr i64 %xor211, 23, !dbg !3596
  %36 = or i64 %34, %35, !dbg !3596
    #dbg_value(i64 %36, !3544, !DIExpression(), !3483)
  %xor36 = xor i64 %Abo.0, %Ago.0, !dbg !3597
    #dbg_value(!DIArgList(i64 %xor36, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor37 = xor i64 %xor36, %Ako.0, !dbg !3598
    #dbg_value(!DIArgList(i64 %xor37, i64 %Aso.0, i64 %Amo.0), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor38 = xor i64 %xor37, %Amo.0, !dbg !3599
    #dbg_value(!DIArgList(i64 %xor38, i64 %Aso.0), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor39 = xor i64 %xor38, %Aso.0, !dbg !3600
    #dbg_value(i64 %xor39, !3544, !DIExpression(), !3483)
  %xor = xor i64 %Aba.0, %Aga.0, !dbg !3601
    #dbg_value(!DIArgList(i64 %xor, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor25 = xor i64 %xor, %Aka.0, !dbg !3602
    #dbg_value(!DIArgList(i64 %xor25, i64 %Asa.0, i64 %Ama.0), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor26 = xor i64 %xor25, %Ama.0, !dbg !3603
    #dbg_value(!DIArgList(i64 %xor26, i64 %Asa.0), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor27 = xor i64 %xor26, %Asa.0, !dbg !3604
    #dbg_value(i64 %xor27, !3541, !DIExpression(), !3483)
  %37 = shl i64 %xor27, 1, !dbg !3605
  %38 = lshr i64 %xor27, 63, !dbg !3605
  %39 = or i64 %37, %38, !dbg !3605
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor39, i64 %39), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor39, i64 %39), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor39, i64 %39), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor39, i64 %39), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor39, i64 %39), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor39, i64 %39), !3513, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor61 = xor i64 %xor39, %39, !dbg !3606
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor61), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor61), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor61), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor61), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 %xor61, !3550, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor61), !3513, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor207 = xor i64 %Aku.0, %xor61, !dbg !3607
    #dbg_value(i64 %xor207, !3513, !DIExpression(), !3483)
  %40 = shl i64 %xor207, 39, !dbg !3608
  %41 = lshr i64 %xor207, 25, !dbg !3608
  %42 = or i64 %40, %41, !dbg !3608
    #dbg_value(i64 %42, !3543, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %42), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not222 = xor i64 %42, -1, !dbg !3609
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %not222), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and223 = and i64 %36, %not222, !dbg !3610
    #dbg_value(!DIArgList(i64 %30, i64 %and223), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor224 = xor i64 %30, %and223, !dbg !3611
    #dbg_value(i64 %xor224, !3572, !DIExpression(), !3483)
  %43 = shl i64 %xor39, 1, !dbg !3612
  %44 = lshr i64 %xor39, 63, !dbg !3612
  %45 = or i64 %43, %44, !dbg !3612
    #dbg_value(!DIArgList(i64 %xor31, i64 %45), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor31, i64 %45), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor31, i64 %45), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor31, i64 %45), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor31, i64 %45), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor31, i64 %45), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor53 = xor i64 %xor31, %45, !dbg !3613
    #dbg_value(i64 %xor53, !3548, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor53), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor53), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor53), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor53), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor53), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor67 = xor i64 %Aki.0, %xor53, !dbg !3614
    #dbg_value(i64 %xor67, !3509, !DIExpression(), !3483)
  %46 = shl i64 %xor67, 43, !dbg !3615
  %47 = lshr i64 %xor67, 21, !dbg !3615
  %48 = or i64 %46, %47, !dbg !3615
    #dbg_value(i64 %48, !3543, !DIExpression(), !3483)
  %49 = shl i64 %xor35, 1, !dbg !3616
  %50 = lshr i64 %xor35, 63, !dbg !3616
  %51 = or i64 %49, %50, !dbg !3616
    #dbg_value(!DIArgList(i64 %xor27, i64 %51), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor27, i64 %51), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor27, i64 %51), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor27, i64 %51), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor27, i64 %51), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor27, i64 %51), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor49 = xor i64 %xor27, %51, !dbg !3617
    #dbg_value(i64 %xor49, !3547, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor49), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor49), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor49), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor49), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor49), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor63 = xor i64 %Age.0, %xor49, !dbg !3618
    #dbg_value(i64 %xor63, !3497, !DIExpression(), !3483)
  %52 = shl i64 %xor63, 44, !dbg !3619
  %53 = lshr i64 %xor63, 20, !dbg !3619
  %54 = or i64 %52, %53, !dbg !3619
    #dbg_value(i64 %54, !3542, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %54), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not = xor i64 %54, -1, !dbg !3620
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %not), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and = and i64 %48, %not, !dbg !3621
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %and, i64 %xor45), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %arrayidx80 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %round.0, !dbg !3622
  %55 = load i64, ptr %arrayidx80, align 8, !dbg !3622
    #dbg_value(!DIArgList(i64 %and, i64 %Aba.0, i64 %xor45, i64 %55), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %56 = xor i64 %and, %55, !dbg !3623
    #dbg_value(!DIArgList(i64 %56, i64 %Aba.0, i64 %xor45), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor62 = xor i64 %Aba.0, %xor45, !dbg !3624
    #dbg_value(i64 %xor62, !3485, !DIExpression(), !3483)
    #dbg_value(i64 %xor62, !3541, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %56, i64 %xor62), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor81 = xor i64 %56, %xor62, !dbg !3623
    #dbg_value(i64 %xor81, !3551, !DIExpression(), !3483)
  %xor94 = xor i64 %Abo.0, %xor57, !dbg !3625
    #dbg_value(i64 %xor94, !3491, !DIExpression(), !3483)
  %57 = shl i64 %xor94, 28, !dbg !3626
  %58 = lshr i64 %xor94, 36, !dbg !3626
  %59 = or i64 %57, %58, !dbg !3626
    #dbg_value(i64 %59, !3541, !DIExpression(), !3483)
  %xor102 = xor i64 %Aka.0, %xor45, !dbg !3627
    #dbg_value(i64 %xor102, !3505, !DIExpression(), !3483)
  %60 = shl i64 %xor102, 3, !dbg !3628
  %61 = lshr i64 %xor102, 61, !dbg !3628
  %62 = or i64 %60, %61, !dbg !3628
    #dbg_value(i64 %62, !3543, !DIExpression(), !3483)
  %xor98 = xor i64 %Agu.0, %xor61, !dbg !3629
    #dbg_value(i64 %xor98, !3503, !DIExpression(), !3483)
  %63 = shl i64 %xor98, 20, !dbg !3630
  %64 = lshr i64 %xor98, 44, !dbg !3630
  %65 = or i64 %63, %64, !dbg !3630
    #dbg_value(i64 %65, !3542, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %65), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not114 = xor i64 %65, -1, !dbg !3631
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %not114), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and115 = and i64 %62, %not114, !dbg !3632
    #dbg_value(!DIArgList(i64 %59, i64 %and115), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor116 = xor i64 %59, %and115, !dbg !3633
    #dbg_value(i64 %xor116, !3556, !DIExpression(), !3483)
  %xor234 = xor i64 %xor81, %xor116, !dbg !3634
  %xor129 = xor i64 %Abe.0, %xor49, !dbg !3635
    #dbg_value(i64 %xor129, !3487, !DIExpression(), !3483)
  %66 = shl i64 %xor129, 1, !dbg !3636
  %67 = lshr i64 %xor129, 63, !dbg !3636
  %68 = or i64 %66, %67, !dbg !3636
    #dbg_value(i64 %68, !3541, !DIExpression(), !3483)
  %xor137 = xor i64 %Ako.0, %xor57, !dbg !3637
    #dbg_value(i64 %xor137, !3511, !DIExpression(), !3483)
  %69 = shl i64 %xor137, 25, !dbg !3638
  %70 = lshr i64 %xor137, 39, !dbg !3638
  %71 = or i64 %69, %70, !dbg !3638
    #dbg_value(i64 %71, !3543, !DIExpression(), !3483)
  %xor133 = xor i64 %Agi.0, %xor53, !dbg !3639
    #dbg_value(i64 %xor133, !3499, !DIExpression(), !3483)
  %72 = shl i64 %xor133, 6, !dbg !3640
  %73 = lshr i64 %xor133, 58, !dbg !3640
  %74 = or i64 %72, %73, !dbg !3640
    #dbg_value(i64 %74, !3542, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %74), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not149 = xor i64 %74, -1, !dbg !3641
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %not149), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and150 = and i64 %71, %not149, !dbg !3642
    #dbg_value(!DIArgList(i64 %68, i64 %and150), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor151 = xor i64 %68, %and150, !dbg !3643
    #dbg_value(i64 %xor151, !3561, !DIExpression(), !3483)
  %xor235 = xor i64 %xor234, %xor151, !dbg !3644
  %xor164 = xor i64 %Abu.0, %xor61, !dbg !3645
    #dbg_value(i64 %xor164, !3493, !DIExpression(), !3483)
  %75 = shl i64 %xor164, 27, !dbg !3646
  %76 = lshr i64 %xor164, 37, !dbg !3646
  %77 = or i64 %75, %76, !dbg !3646
    #dbg_value(i64 %77, !3541, !DIExpression(), !3483)
  %xor172 = xor i64 %Ake.0, %xor49, !dbg !3647
    #dbg_value(i64 %xor172, !3507, !DIExpression(), !3483)
  %78 = shl i64 %xor172, 10, !dbg !3648
  %79 = lshr i64 %xor172, 54, !dbg !3648
  %80 = or i64 %78, %79, !dbg !3648
    #dbg_value(i64 %80, !3543, !DIExpression(), !3483)
  %xor168 = xor i64 %Aga.0, %xor45, !dbg !3649
    #dbg_value(i64 %xor168, !3495, !DIExpression(), !3483)
  %81 = shl i64 %xor168, 36, !dbg !3650
  %82 = lshr i64 %xor168, 28, !dbg !3650
  %83 = or i64 %81, %82, !dbg !3650
    #dbg_value(i64 %83, !3542, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %83), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not184 = xor i64 %83, -1, !dbg !3651
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %not184), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and185 = and i64 %80, %not184, !dbg !3652
    #dbg_value(!DIArgList(i64 %77, i64 %and185), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor186 = xor i64 %77, %and185, !dbg !3653
    #dbg_value(i64 %xor186, !3566, !DIExpression(), !3483)
  %xor236 = xor i64 %xor235, %xor186, !dbg !3654
  %xor199 = xor i64 %Abi.0, %xor53, !dbg !3655
    #dbg_value(i64 %xor199, !3489, !DIExpression(), !3483)
  %84 = shl i64 %xor199, 62, !dbg !3656
  %85 = lshr i64 %xor199, 2, !dbg !3656
  %86 = or i64 %84, %85, !dbg !3656
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %30), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %30), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %not219 = xor i64 %30, -1, !dbg !3657
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %not219), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %not219), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %and220 = and i64 %42, %not219, !dbg !3658
    #dbg_value(!DIArgList(i64 %86, i64 %and220), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %and220), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor221 = xor i64 %86, %and220, !dbg !3659
    #dbg_value(i64 %xor221, !3571, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor221), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor237 = xor i64 %xor236, %xor221, !dbg !3660
    #dbg_value(i64 %xor237, !3541, !DIExpression(), !3483)
  %xor75 = xor i64 %Asu.0, %xor61, !dbg !3661
    #dbg_value(i64 %xor75, !3533, !DIExpression(), !3483)
  %87 = shl i64 %xor75, 14, !dbg !3662
  %88 = lshr i64 %xor75, 50, !dbg !3662
  %89 = or i64 %87, %88, !dbg !3662
    #dbg_value(i64 %89, !3545, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %xor62), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor71 = xor i64 %Amo.0, %xor57, !dbg !3663
    #dbg_value(i64 %xor71, !3521, !DIExpression(), !3483)
  %90 = shl i64 %xor71, 21, !dbg !3664
  %91 = lshr i64 %xor71, 43, !dbg !3664
  %92 = or i64 %90, %91, !dbg !3664
    #dbg_value(i64 %92, !3544, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %92), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %54, i64 %92, i64 %48), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %92, i64 %xor62, i64 %89), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not85 = xor i64 %92, -1, !dbg !3665
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %not85), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and86 = and i64 %89, %not85, !dbg !3666
    #dbg_value(!DIArgList(i64 %48, i64 %and86), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor87 = xor i64 %48, %and86, !dbg !3667
    #dbg_value(i64 %xor87, !3553, !DIExpression(), !3483)
  %xor110 = xor i64 %Asi.0, %xor53, !dbg !3668
    #dbg_value(i64 %xor110, !3529, !DIExpression(), !3483)
  %93 = shl i64 %xor110, 61, !dbg !3669
  %94 = lshr i64 %xor110, 3, !dbg !3669
  %95 = or i64 %93, %94, !dbg !3669
    #dbg_value(i64 %95, !3545, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %59), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor106 = xor i64 %Ame.0, %xor49, !dbg !3670
    #dbg_value(i64 %xor106, !3517, !DIExpression(), !3483)
  %96 = shl i64 %xor106, 45, !dbg !3671
  %97 = lshr i64 %xor106, 19, !dbg !3671
  %98 = or i64 %96, %97, !dbg !3671
    #dbg_value(i64 %98, !3544, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %98), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %95), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %65, i64 %98, i64 %62), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not120 = xor i64 %98, -1, !dbg !3672
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %not120), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and121 = and i64 %95, %not120, !dbg !3673
    #dbg_value(!DIArgList(i64 %62, i64 %and121), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor122 = xor i64 %62, %and121, !dbg !3674
    #dbg_value(i64 %xor122, !3558, !DIExpression(), !3483)
  %xor242 = xor i64 %xor87, %xor122, !dbg !3675
  %xor145 = xor i64 %Asa.0, %xor45, !dbg !3676
    #dbg_value(i64 %xor145, !3525, !DIExpression(), !3483)
  %99 = shl i64 %xor145, 18, !dbg !3677
  %100 = lshr i64 %xor145, 46, !dbg !3677
  %101 = or i64 %99, %100, !dbg !3677
    #dbg_value(i64 %101, !3545, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %68), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor141 = xor i64 %Amu.0, %xor61, !dbg !3678
    #dbg_value(i64 %xor141, !3523, !DIExpression(), !3483)
  %102 = shl i64 %xor141, 8, !dbg !3679
  %103 = lshr i64 %xor141, 56, !dbg !3679
  %104 = or i64 %102, %103, !dbg !3679
    #dbg_value(i64 %104, !3544, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %104), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %74, i64 %104, i64 %71), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %104, i64 %68, i64 %101), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not155 = xor i64 %104, -1, !dbg !3680
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %not155), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and156 = and i64 %101, %not155, !dbg !3681
    #dbg_value(!DIArgList(i64 %71, i64 %and156), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor157 = xor i64 %71, %and156, !dbg !3682
    #dbg_value(i64 %xor157, !3563, !DIExpression(), !3483)
  %xor243 = xor i64 %xor242, %xor157, !dbg !3683
  %xor180 = xor i64 %Aso.0, %xor57, !dbg !3684
    #dbg_value(i64 %xor180, !3531, !DIExpression(), !3483)
  %105 = shl i64 %xor180, 56, !dbg !3685
  %106 = lshr i64 %xor180, 8, !dbg !3685
  %107 = or i64 %105, %106, !dbg !3685
    #dbg_value(i64 %107, !3545, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %77), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor176 = xor i64 %Ami.0, %xor53, !dbg !3686
    #dbg_value(i64 %xor176, !3519, !DIExpression(), !3483)
  %108 = shl i64 %xor176, 15, !dbg !3687
  %109 = lshr i64 %xor176, 49, !dbg !3687
  %110 = or i64 %108, %109, !dbg !3687
    #dbg_value(i64 %110, !3544, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %110), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %83, i64 %110, i64 %80), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %110, i64 %77, i64 %107), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %48), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %not190 = xor i64 %110, -1, !dbg !3688
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %not190), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and191 = and i64 %107, %not190, !dbg !3689
    #dbg_value(!DIArgList(i64 %80, i64 %and191), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor192 = xor i64 %80, %and191, !dbg !3690
    #dbg_value(i64 %xor192, !3568, !DIExpression(), !3483)
  %xor244 = xor i64 %xor243, %xor192, !dbg !3691
  %xor215 = xor i64 %Ase.0, %xor49, !dbg !3692
    #dbg_value(i64 %xor215, !3527, !DIExpression(), !3483)
  %111 = shl i64 %xor215, 2, !dbg !3693
  %112 = lshr i64 %xor215, 62, !dbg !3693
  %113 = or i64 %111, %112, !dbg !3693
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %36), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %86), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %36, i64 %86, i64 %113), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %36), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %95), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %xor62), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %not225 = xor i64 %36, -1, !dbg !3694
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %not225), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %not225), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %and226 = and i64 %113, %not225, !dbg !3695
    #dbg_value(!DIArgList(i64 %42, i64 %and226), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %and226), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor227 = xor i64 %42, %and226, !dbg !3696
    #dbg_value(i64 %xor227, !3573, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor227), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor245 = xor i64 %xor244, %xor227, !dbg !3697
    #dbg_value(i64 %xor245, !3543, !DIExpression(), !3483)
  %114 = shl i64 %xor245, 1, !dbg !3698
  %115 = lshr i64 %xor245, 63, !dbg !3698
  %116 = or i64 %114, %115, !dbg !3698
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor237, i64 %116), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %54, i64 %xor237, i64 %92, i64 %48, i64 %116), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %65, i64 %xor237, i64 %98, i64 %62, i64 %116), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %74, i64 %xor237, i64 %104, i64 %71, i64 %116), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %83, i64 %xor237, i64 %110, i64 %80, i64 %116), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor237, i64 %116), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor261 = xor i64 %xor237, %116, !dbg !3699
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor261), !3572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %48), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %62), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %71), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %80), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 %xor261, !3547, !DIExpression(), !3483)
  %xor429 = xor i64 %xor224, %xor261, !dbg !3700
    #dbg_value(i64 %xor429, !3572, !DIExpression(), !3483)
  %117 = shl i64 %xor429, 2, !dbg !3701
  %118 = lshr i64 %xor429, 62, !dbg !3701
  %119 = or i64 %117, %118, !dbg !3701
    #dbg_value(i64 %119, !3545, !DIExpression(), !3483)
  %not123 = xor i64 %95, -1, !dbg !3702
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %not123), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %not123), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %and124 = and i64 %59, %not123, !dbg !3703
    #dbg_value(!DIArgList(i64 %98, i64 %and124), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %and124), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor125 = xor i64 %98, %and124, !dbg !3704
    #dbg_value(i64 %xor125, !3559, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %89), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %not91 = xor i64 %xor62, -1, !dbg !3705
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %not91), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %not91), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %and92 = and i64 %54, %not91, !dbg !3706
    #dbg_value(!DIArgList(i64 %89, i64 %and92), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %and92), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor93 = xor i64 %89, %and92, !dbg !3707
    #dbg_value(i64 %xor93, !3555, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %not126 = xor i64 %59, -1, !dbg !3708
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %not126), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %not126), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %and127 = and i64 %65, %not126, !dbg !3709
    #dbg_value(!DIArgList(i64 %95, i64 %and127), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %and127), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor128 = xor i64 %95, %and127, !dbg !3710
    #dbg_value(i64 %xor128, !3560, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %xor128), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor250 = xor i64 %xor93, %xor128, !dbg !3711
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %not161 = xor i64 %68, -1, !dbg !3712
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %not161), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %not161), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %and162 = and i64 %74, %not161, !dbg !3713
    #dbg_value(!DIArgList(i64 %101, i64 %and162), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %and162), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor163 = xor i64 %101, %and162, !dbg !3714
    #dbg_value(i64 %xor163, !3565, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %xor163), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor251 = xor i64 %xor250, %xor163, !dbg !3715
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %not196 = xor i64 %77, -1, !dbg !3716
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %not196), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %not196), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %and197 = and i64 %83, %not196, !dbg !3717
    #dbg_value(!DIArgList(i64 %107, i64 %and197), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %and197), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor198 = xor i64 %107, %and197, !dbg !3718
    #dbg_value(i64 %xor198, !3570, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %xor198), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor252 = xor i64 %xor251, %xor198, !dbg !3719
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %86), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %not231 = xor i64 %86, -1, !dbg !3720
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %not231), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %not231), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %and232 = and i64 %30, %not231, !dbg !3721
    #dbg_value(!DIArgList(i64 %113, i64 %and232), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %and232), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor233 = xor i64 %113, %and232, !dbg !3722
    #dbg_value(i64 %xor233, !3575, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor233), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor253 = xor i64 %xor252, %xor233, !dbg !3723
    #dbg_value(i64 %xor253, !3545, !DIExpression(), !3483)
  %120 = shl i64 %xor253, 1, !dbg !3724
  %121 = lshr i64 %xor253, 63, !dbg !3724
  %122 = or i64 %120, %121, !dbg !3724
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor245, i64 %122), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %92, i64 %xor245, i64 %xor62, i64 %89, i64 %122), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %104, i64 %xor245, i64 %68, i64 %101, i64 %122), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %110, i64 %xor245, i64 %77, i64 %107, i64 %122), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %36, i64 %xor245, i64 %86, i64 %113, i64 %122), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor245, i64 %122), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor269 = xor i64 %xor245, %122, !dbg !3725
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor269), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %89), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %101), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %107), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %113), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 %xor269, !3549, !DIExpression(), !3483)
  %xor417 = xor i64 %xor125, %xor269, !dbg !3726
    #dbg_value(i64 %xor417, !3559, !DIExpression(), !3483)
  %123 = shl i64 %xor417, 55, !dbg !3727
  %124 = lshr i64 %xor417, 9, !dbg !3727
  %125 = or i64 %123, %124, !dbg !3727
    #dbg_value(i64 %125, !3542, !DIExpression(), !3483)
  %not82 = xor i64 %48, -1, !dbg !3728
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %not82), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %not82), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %and83 = and i64 %92, %not82, !dbg !3729
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %and83), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %and83), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor84 = xor i64 %54, %and83, !dbg !3730
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor261), !3552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %not117 = xor i64 %62, -1, !dbg !3731
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %not117), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %not117), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %and118 = and i64 %98, %not117, !dbg !3732
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %and118), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %and118), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor119 = xor i64 %65, %and118, !dbg !3733
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %xor119), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor119, i64 %xor261), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor238 = xor i64 %xor84, %xor119, !dbg !3734
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %not152 = xor i64 %71, -1, !dbg !3735
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %not152), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %not152), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %and153 = and i64 %104, %not152, !dbg !3736
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %and153), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %and153), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor154 = xor i64 %74, %and153, !dbg !3737
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %xor154), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor154, i64 %xor261), !3562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor239 = xor i64 %xor238, %xor154, !dbg !3738
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %80), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %not187 = xor i64 %80, -1, !dbg !3739
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %not187), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %not187), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %and188 = and i64 %110, %not187, !dbg !3740
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %and188), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %and188), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor189 = xor i64 %83, %and188, !dbg !3741
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor189), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor189, i64 %xor261), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor240 = xor i64 %xor239, %xor189, !dbg !3742
    #dbg_value(!DIArgList(i64 %xor240, i64 %xor224), !3542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor241 = xor i64 %xor240, %xor224, !dbg !3743
    #dbg_value(i64 %xor241, !3542, !DIExpression(), !3483)
  %not88 = xor i64 %89, -1, !dbg !3744
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %not88), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %not88), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %and89 = and i64 %xor62, %not88, !dbg !3745
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %and89), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %and89), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor90 = xor i64 %92, %and89, !dbg !3746
    #dbg_value(!DIArgList(i64 %xor90, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor90, i64 %xor269), !3554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor246 = xor i64 %xor90, %xor125, !dbg !3747
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %not158 = xor i64 %101, -1, !dbg !3748
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %not158), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %not158), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %and159 = and i64 %68, %not158, !dbg !3749
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %and159), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %and159), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor160 = xor i64 %104, %and159, !dbg !3750
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %xor160), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor160, i64 %xor269), !3564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor247 = xor i64 %xor246, %xor160, !dbg !3751
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %not193 = xor i64 %107, -1, !dbg !3752
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %not193), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %not193), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %and194 = and i64 %77, %not193, !dbg !3753
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %and194), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %and194), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor195 = xor i64 %110, %and194, !dbg !3754
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %xor195), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor195, i64 %xor269), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor248 = xor i64 %xor247, %xor195, !dbg !3755
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %113), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %not228 = xor i64 %113, -1, !dbg !3756
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %not228), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %not228), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %and229 = and i64 %86, %not228, !dbg !3757
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %and229), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %and229), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor230 = xor i64 %36, %and229, !dbg !3758
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor230), !3544, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor230, i64 %xor269), !3574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor249 = xor i64 %xor248, %xor230, !dbg !3759
    #dbg_value(i64 %xor249, !3544, !DIExpression(), !3483)
  %126 = shl i64 %xor249, 1, !dbg !3760
  %127 = lshr i64 %xor249, 63, !dbg !3760
  %128 = or i64 %126, %127, !dbg !3760
    #dbg_value(!DIArgList(i64 %xor241, i64 %128), !3548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor241, i64 %128), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor241, i64 %128), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor241, i64 %128), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor241, i64 %128), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor241, i64 %128), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor265 = xor i64 %xor241, %128, !dbg !3761
    #dbg_value(i64 %xor265, !3548, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor265), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor265), !3568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor265), !3558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor265), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor265), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor413 = xor i64 %xor87, %xor265, !dbg !3762
    #dbg_value(i64 %xor413, !3553, !DIExpression(), !3483)
  %129 = shl i64 %xor413, 62, !dbg !3763
  %130 = lshr i64 %xor413, 2, !dbg !3763
  %131 = or i64 %129, %130, !dbg !3763
    #dbg_value(i64 %131, !3541, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %131), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not445 = xor i64 %131, -1, !dbg !3764
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %not445), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and446 = and i64 %125, %not445, !dbg !3765
    #dbg_value(!DIArgList(i64 %119, i64 %and446), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor447 = xor i64 %119, %and446, !dbg !3766
    #dbg_value(i64 %xor447, !3533, !DIExpression(), !3483)
  %132 = shl i64 %xor241, 1, !dbg !3767
  %133 = lshr i64 %xor241, 63, !dbg !3767
  %134 = or i64 %132, %133, !dbg !3767
    #dbg_value(!DIArgList(i64 %xor253, i64 %134), !3546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor253, i64 %134), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor253, i64 %134), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor253, i64 %134), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor253, i64 %134), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor257 = xor i64 %xor253, %134, !dbg !3768
    #dbg_value(i64 %xor257, !3546, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor257), !3556, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor257), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor257), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor257), !3566, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor425 = xor i64 %xor186, %xor257, !dbg !3769
    #dbg_value(i64 %xor425, !3566, !DIExpression(), !3483)
  %135 = shl i64 %xor425, 41, !dbg !3770
  %136 = lshr i64 %xor425, 23, !dbg !3770
  %137 = or i64 %135, %136, !dbg !3770
    #dbg_value(i64 %137, !3544, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %119), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not442 = xor i64 %119, -1, !dbg !3771
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %not442), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and443 = and i64 %131, %not442, !dbg !3772
    #dbg_value(!DIArgList(i64 %137, i64 %and443), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor444 = xor i64 %137, %and443, !dbg !3773
    #dbg_value(i64 %xor444, !3531, !DIExpression(), !3483)
  %138 = shl i64 %xor237, 1, !dbg !3774
  %139 = lshr i64 %xor237, 63, !dbg !3774
  %140 = or i64 %138, %139, !dbg !3774
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor249, i64 %140), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor249, i64 %140), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor249, i64 %140), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor249, i64 %140), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor249, i64 %140), !3550, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor249, i64 %140), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor273 = xor i64 %xor249, %140, !dbg !3775
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor273), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor273), !3570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor273), !3560, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor273), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(i64 %xor273, !3550, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor273), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor421 = xor i64 %xor163, %xor273, !dbg !3776
    #dbg_value(i64 %xor421, !3565, !DIExpression(), !3483)
  %141 = shl i64 %xor421, 39, !dbg !3777
  %142 = lshr i64 %xor421, 25, !dbg !3777
  %143 = or i64 %141, %142, !dbg !3777
    #dbg_value(i64 %143, !3543, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %137), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %143), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %125), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not439 = xor i64 %137, -1, !dbg !3778
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %not439), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and440 = and i64 %119, %not439, !dbg !3779
    #dbg_value(!DIArgList(i64 %143, i64 %and440), !3529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor441 = xor i64 %143, %and440, !dbg !3780
    #dbg_value(i64 %xor441, !3529, !DIExpression(), !3483)
  %not436 = xor i64 %143, -1, !dbg !3781
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %not436), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and437 = and i64 %137, %not436, !dbg !3782
    #dbg_value(!DIArgList(i64 %125, i64 %and437), !3527, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor438 = xor i64 %125, %and437, !dbg !3783
    #dbg_value(i64 %xor438, !3527, !DIExpression(), !3483)
  %not433 = xor i64 %125, -1, !dbg !3784
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %not433), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and434 = and i64 %143, %not433, !dbg !3785
    #dbg_value(!DIArgList(i64 %131, i64 %and434), !3525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor435 = xor i64 %131, %and434, !dbg !3786
    #dbg_value(i64 %xor435, !3525, !DIExpression(), !3483)
  %xor394 = xor i64 %xor230, %xor269, !dbg !3787
    #dbg_value(i64 %xor394, !3574, !DIExpression(), !3483)
  %144 = shl i64 %xor394, 56, !dbg !3788
  %145 = lshr i64 %xor394, 8, !dbg !3788
  %146 = or i64 %144, %145, !dbg !3788
    #dbg_value(i64 %146, !3545, !DIExpression(), !3483)
  %xor382 = xor i64 %xor116, %xor257, !dbg !3789
    #dbg_value(i64 %xor382, !3556, !DIExpression(), !3483)
  %147 = shl i64 %xor382, 36, !dbg !3790
  %148 = lshr i64 %xor382, 28, !dbg !3790
  %149 = or i64 %147, %148, !dbg !3790
    #dbg_value(i64 %149, !3542, !DIExpression(), !3483)
  %xor378 = xor i64 %xor93, %xor273, !dbg !3791
    #dbg_value(i64 %xor378, !3555, !DIExpression(), !3483)
  %150 = shl i64 %xor378, 27, !dbg !3792
  %151 = lshr i64 %xor378, 37, !dbg !3792
  %152 = or i64 %150, %151, !dbg !3792
    #dbg_value(i64 %152, !3541, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %152), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not410 = xor i64 %152, -1, !dbg !3793
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %not410), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and411 = and i64 %149, %not410, !dbg !3794
    #dbg_value(!DIArgList(i64 %146, i64 %and411), !3523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor412 = xor i64 %146, %and411, !dbg !3795
    #dbg_value(i64 %xor412, !3523, !DIExpression(), !3483)
  %xor390 = xor i64 %xor192, %xor265, !dbg !3796
    #dbg_value(i64 %xor390, !3568, !DIExpression(), !3483)
  %153 = shl i64 %xor390, 15, !dbg !3797
  %154 = lshr i64 %xor390, 49, !dbg !3797
  %155 = or i64 %153, %154, !dbg !3797
    #dbg_value(i64 %155, !3544, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %146), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not407 = xor i64 %146, -1, !dbg !3798
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %not407), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and408 = and i64 %152, %not407, !dbg !3799
    #dbg_value(!DIArgList(i64 %155, i64 %and408), !3521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor409 = xor i64 %155, %and408, !dbg !3800
    #dbg_value(i64 %xor409, !3521, !DIExpression(), !3483)
  %xor386 = xor i64 %xor154, %xor261, !dbg !3801
    #dbg_value(i64 %xor386, !3562, !DIExpression(), !3483)
  %156 = shl i64 %xor386, 10, !dbg !3802
  %157 = lshr i64 %xor386, 54, !dbg !3802
  %158 = or i64 %156, %157, !dbg !3802
    #dbg_value(i64 %158, !3543, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %155), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %158), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %149), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not404 = xor i64 %155, -1, !dbg !3803
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %not404), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and405 = and i64 %146, %not404, !dbg !3804
    #dbg_value(!DIArgList(i64 %158, i64 %and405), !3519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor406 = xor i64 %158, %and405, !dbg !3805
    #dbg_value(i64 %xor406, !3519, !DIExpression(), !3483)
  %not401 = xor i64 %158, -1, !dbg !3806
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %not401), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and402 = and i64 %155, %not401, !dbg !3807
    #dbg_value(!DIArgList(i64 %149, i64 %and402), !3517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor403 = xor i64 %149, %and402, !dbg !3808
    #dbg_value(i64 %xor403, !3517, !DIExpression(), !3483)
  %not398 = xor i64 %149, -1, !dbg !3809
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %not398), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and399 = and i64 %158, %not398, !dbg !3810
    #dbg_value(!DIArgList(i64 %152, i64 %and399), !3515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor400 = xor i64 %152, %and399, !dbg !3811
    #dbg_value(i64 %xor400, !3515, !DIExpression(), !3483)
  %xor359 = xor i64 %xor221, %xor257, !dbg !3812
    #dbg_value(i64 %xor359, !3571, !DIExpression(), !3483)
  %159 = shl i64 %xor359, 18, !dbg !3813
  %160 = lshr i64 %xor359, 46, !dbg !3813
  %161 = or i64 %159, %160, !dbg !3813
    #dbg_value(i64 %161, !3545, !DIExpression(), !3483)
  %xor347 = xor i64 %xor122, %xor265, !dbg !3814
    #dbg_value(i64 %xor347, !3558, !DIExpression(), !3483)
  %162 = shl i64 %xor347, 6, !dbg !3815
  %163 = lshr i64 %xor347, 58, !dbg !3815
  %164 = or i64 %162, %163, !dbg !3815
    #dbg_value(i64 %164, !3542, !DIExpression(), !3483)
  %xor343 = xor i64 %xor84, %xor261, !dbg !3816
    #dbg_value(i64 %xor343, !3552, !DIExpression(), !3483)
  %165 = shl i64 %xor343, 1, !dbg !3817
  %166 = lshr i64 %xor343, 63, !dbg !3817
  %167 = or i64 %165, %166, !dbg !3817
    #dbg_value(i64 %167, !3541, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %167), !3513, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not375 = xor i64 %167, -1, !dbg !3818
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %not375), !3513, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and376 = and i64 %164, %not375, !dbg !3819
    #dbg_value(!DIArgList(i64 %161, i64 %and376), !3513, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor377 = xor i64 %161, %and376, !dbg !3820
    #dbg_value(i64 %xor377, !3513, !DIExpression(), !3483)
  %xor355 = xor i64 %xor198, %xor273, !dbg !3821
    #dbg_value(i64 %xor355, !3570, !DIExpression(), !3483)
  %168 = shl i64 %xor355, 8, !dbg !3822
  %169 = lshr i64 %xor355, 56, !dbg !3822
  %170 = or i64 %168, %169, !dbg !3822
    #dbg_value(i64 %170, !3544, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %161), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not372 = xor i64 %161, -1, !dbg !3823
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %not372), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and373 = and i64 %167, %not372, !dbg !3824
    #dbg_value(!DIArgList(i64 %170, i64 %and373), !3511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor374 = xor i64 %170, %and373, !dbg !3825
    #dbg_value(i64 %xor374, !3511, !DIExpression(), !3483)
  %xor351 = xor i64 %xor160, %xor269, !dbg !3826
    #dbg_value(i64 %xor351, !3564, !DIExpression(), !3483)
  %171 = shl i64 %xor351, 25, !dbg !3827
  %172 = lshr i64 %xor351, 39, !dbg !3827
  %173 = or i64 %171, %172, !dbg !3827
    #dbg_value(i64 %173, !3543, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %170), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %173), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %164), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not369 = xor i64 %170, -1, !dbg !3828
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %not369), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and370 = and i64 %161, %not369, !dbg !3829
    #dbg_value(!DIArgList(i64 %173, i64 %and370), !3509, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor371 = xor i64 %173, %and370, !dbg !3830
    #dbg_value(i64 %xor371, !3509, !DIExpression(), !3483)
  %not366 = xor i64 %173, -1, !dbg !3831
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %not366), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and367 = and i64 %170, %not366, !dbg !3832
    #dbg_value(!DIArgList(i64 %164, i64 %and367), !3507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor368 = xor i64 %164, %and367, !dbg !3833
    #dbg_value(i64 %xor368, !3507, !DIExpression(), !3483)
  %not363 = xor i64 %164, -1, !dbg !3834
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %not363), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and364 = and i64 %173, %not363, !dbg !3835
    #dbg_value(!DIArgList(i64 %167, i64 %and364), !3505, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor365 = xor i64 %167, %and364, !dbg !3836
    #dbg_value(i64 %xor365, !3505, !DIExpression(), !3483)
  %xor324 = xor i64 %xor227, %xor265, !dbg !3837
    #dbg_value(i64 %xor324, !3573, !DIExpression(), !3483)
  %174 = shl i64 %xor324, 61, !dbg !3838
  %175 = lshr i64 %xor324, 3, !dbg !3838
  %176 = or i64 %174, %175, !dbg !3838
    #dbg_value(i64 %176, !3545, !DIExpression(), !3483)
  %xor312 = xor i64 %xor128, %xor273, !dbg !3839
    #dbg_value(i64 %xor312, !3560, !DIExpression(), !3483)
  %177 = shl i64 %xor312, 20, !dbg !3840
  %178 = lshr i64 %xor312, 44, !dbg !3840
  %179 = or i64 %177, %178, !dbg !3840
    #dbg_value(i64 %179, !3542, !DIExpression(), !3483)
  %xor308 = xor i64 %xor90, %xor269, !dbg !3841
    #dbg_value(i64 %xor308, !3554, !DIExpression(), !3483)
  %180 = shl i64 %xor308, 28, !dbg !3842
  %181 = lshr i64 %xor308, 36, !dbg !3842
  %182 = or i64 %180, %181, !dbg !3842
    #dbg_value(i64 %182, !3541, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %182), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not340 = xor i64 %182, -1, !dbg !3843
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %not340), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and341 = and i64 %179, %not340, !dbg !3844
    #dbg_value(!DIArgList(i64 %176, i64 %and341), !3503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor342 = xor i64 %176, %and341, !dbg !3845
    #dbg_value(i64 %xor342, !3503, !DIExpression(), !3483)
  %xor320 = xor i64 %xor189, %xor261, !dbg !3846
    #dbg_value(i64 %xor320, !3567, !DIExpression(), !3483)
  %183 = shl i64 %xor320, 45, !dbg !3847
  %184 = lshr i64 %xor320, 19, !dbg !3847
  %185 = or i64 %183, %184, !dbg !3847
    #dbg_value(i64 %185, !3544, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %176), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not337 = xor i64 %176, -1, !dbg !3848
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %not337), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and338 = and i64 %182, %not337, !dbg !3849
    #dbg_value(!DIArgList(i64 %185, i64 %and338), !3501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor339 = xor i64 %185, %and338, !dbg !3850
    #dbg_value(i64 %xor339, !3501, !DIExpression(), !3483)
  %xor316 = xor i64 %xor151, %xor257, !dbg !3851
    #dbg_value(i64 %xor316, !3561, !DIExpression(), !3483)
  %186 = shl i64 %xor316, 3, !dbg !3852
  %187 = lshr i64 %xor316, 61, !dbg !3852
  %188 = or i64 %186, %187, !dbg !3852
    #dbg_value(i64 %188, !3543, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %185), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %188), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %179), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not334 = xor i64 %185, -1, !dbg !3853
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %not334), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and335 = and i64 %176, %not334, !dbg !3854
    #dbg_value(!DIArgList(i64 %188, i64 %and335), !3499, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor336 = xor i64 %188, %and335, !dbg !3855
    #dbg_value(i64 %xor336, !3499, !DIExpression(), !3483)
  %not331 = xor i64 %188, -1, !dbg !3856
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %not331), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and332 = and i64 %185, %not331, !dbg !3857
    #dbg_value(!DIArgList(i64 %179, i64 %and332), !3497, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor333 = xor i64 %179, %and332, !dbg !3858
    #dbg_value(i64 %xor333, !3497, !DIExpression(), !3483)
  %not328 = xor i64 %179, -1, !dbg !3859
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %not328), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and329 = and i64 %188, %not328, !dbg !3860
    #dbg_value(!DIArgList(i64 %182, i64 %and329), !3495, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor330 = xor i64 %182, %and329, !dbg !3861
    #dbg_value(i64 %xor330, !3495, !DIExpression(), !3483)
  %xor287 = xor i64 %xor233, %xor273, !dbg !3862
    #dbg_value(i64 %xor287, !3575, !DIExpression(), !3483)
  %189 = shl i64 %xor287, 14, !dbg !3863
  %190 = lshr i64 %xor287, 50, !dbg !3863
  %191 = or i64 %189, %190, !dbg !3863
    #dbg_value(i64 %191, !3545, !DIExpression(), !3483)
  %xor275 = xor i64 %xor119, %xor261, !dbg !3864
    #dbg_value(i64 %xor275, !3557, !DIExpression(), !3483)
  %192 = shl i64 %xor275, 44, !dbg !3865
  %193 = lshr i64 %xor275, 20, !dbg !3865
  %194 = or i64 %192, %193, !dbg !3865
    #dbg_value(i64 %194, !3542, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor81, i64 %xor257), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor274 = xor i64 %xor81, %xor257, !dbg !3866
    #dbg_value(i64 %xor274, !3551, !DIExpression(), !3483)
    #dbg_value(i64 %xor274, !3541, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor274), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not305 = xor i64 %xor274, -1, !dbg !3867
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %not305), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and306 = and i64 %194, %not305, !dbg !3868
    #dbg_value(!DIArgList(i64 %191, i64 %and306), !3493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor307 = xor i64 %191, %and306, !dbg !3869
    #dbg_value(i64 %xor307, !3493, !DIExpression(), !3483)
  %xor283 = xor i64 %xor195, %xor269, !dbg !3870
    #dbg_value(i64 %xor283, !3569, !DIExpression(), !3483)
  %195 = shl i64 %xor283, 21, !dbg !3871
  %196 = lshr i64 %xor283, 43, !dbg !3871
  %197 = or i64 %195, %196, !dbg !3871
    #dbg_value(i64 %197, !3544, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %191), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not302 = xor i64 %191, -1, !dbg !3872
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %not302), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and303 = and i64 %xor274, %not302, !dbg !3873
    #dbg_value(!DIArgList(i64 %197, i64 %and303), !3491, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor304 = xor i64 %197, %and303, !dbg !3874
    #dbg_value(i64 %xor304, !3491, !DIExpression(), !3483)
  %xor279 = xor i64 %xor157, %xor265, !dbg !3875
    #dbg_value(i64 %xor279, !3563, !DIExpression(), !3483)
  %198 = shl i64 %xor279, 43, !dbg !3876
  %199 = lshr i64 %xor279, 21, !dbg !3876
  %200 = or i64 %198, %199, !dbg !3876
    #dbg_value(i64 %200, !3543, !DIExpression(), !3483)
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %197), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %200), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
    #dbg_value(!DIArgList(i64 %xor274, i64 %200, i64 %194), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %not299 = xor i64 %197, -1, !dbg !3877
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %not299), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and300 = and i64 %191, %not299, !dbg !3878
    #dbg_value(!DIArgList(i64 %200, i64 %and300), !3489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor301 = xor i64 %200, %and300, !dbg !3879
    #dbg_value(i64 %xor301, !3489, !DIExpression(), !3483)
  %not296 = xor i64 %200, -1, !dbg !3880
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %not296), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3483)
  %and297 = and i64 %197, %not296, !dbg !3881
    #dbg_value(!DIArgList(i64 %194, i64 %and297), !3487, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %xor298 = xor i64 %194, %and297, !dbg !3882
    #dbg_value(i64 %xor298, !3487, !DIExpression(), !3483)
  %add = or disjoint i32 %round.0, 1, !dbg !3883
  %arrayidx294 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %add, !dbg !3884
  %201 = load i64, ptr %arrayidx294, align 8, !dbg !3884
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %194), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %not291 = xor i64 %194, -1, !dbg !3885
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %not291), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %and292 = and i64 %200, %not291, !dbg !3886
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %and292), !3485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3483)
  %202 = xor i64 %and292, %201, !dbg !3887
  %xor295 = xor i64 %202, %xor274, !dbg !3887
    #dbg_value(i64 %xor295, !3485, !DIExpression(), !3483)
  %add448 = add nuw nsw i32 %round.0, 2, !dbg !3888
    #dbg_value(i32 %add448, !3534, !DIExpression(), !3483)
  br label %for.cond, !dbg !3889, !llvm.loop !3890

for.end:                                          ; preds = %for.cond
  %Aso.0.lcssa = phi i64 [ %Aso.0, %for.cond ], !dbg !3483
  %Asi.0.lcssa = phi i64 [ %Asi.0, %for.cond ], !dbg !3483
  %Ase.0.lcssa = phi i64 [ %Ase.0, %for.cond ], !dbg !3483
  %Asa.0.lcssa = phi i64 [ %Asa.0, %for.cond ], !dbg !3483
  %Amu.0.lcssa = phi i64 [ %Amu.0, %for.cond ], !dbg !3483
  %Amo.0.lcssa = phi i64 [ %Amo.0, %for.cond ], !dbg !3483
  %Ami.0.lcssa = phi i64 [ %Ami.0, %for.cond ], !dbg !3483
  %Ame.0.lcssa = phi i64 [ %Ame.0, %for.cond ], !dbg !3483
  %Ama.0.lcssa = phi i64 [ %Ama.0, %for.cond ], !dbg !3483
  %Aku.0.lcssa = phi i64 [ %Aku.0, %for.cond ], !dbg !3483
  %Ako.0.lcssa = phi i64 [ %Ako.0, %for.cond ], !dbg !3483
  %Aki.0.lcssa = phi i64 [ %Aki.0, %for.cond ], !dbg !3483
  %Ake.0.lcssa = phi i64 [ %Ake.0, %for.cond ], !dbg !3483
  %Aka.0.lcssa = phi i64 [ %Aka.0, %for.cond ], !dbg !3483
  %Agu.0.lcssa = phi i64 [ %Agu.0, %for.cond ], !dbg !3483
  %Ago.0.lcssa = phi i64 [ %Ago.0, %for.cond ], !dbg !3483
  %Agi.0.lcssa = phi i64 [ %Agi.0, %for.cond ], !dbg !3483
  %Age.0.lcssa = phi i64 [ %Age.0, %for.cond ], !dbg !3483
  %Aga.0.lcssa = phi i64 [ %Aga.0, %for.cond ], !dbg !3483
  %Abu.0.lcssa = phi i64 [ %Abu.0, %for.cond ], !dbg !3483
  %Abo.0.lcssa = phi i64 [ %Abo.0, %for.cond ], !dbg !3483
  %Abi.0.lcssa = phi i64 [ %Abi.0, %for.cond ], !dbg !3483
  %Abe.0.lcssa = phi i64 [ %Abe.0, %for.cond ], !dbg !3483
  %Aba.0.lcssa = phi i64 [ %Aba.0, %for.cond ], !dbg !3483
  %Asu.0.lcssa = phi i64 [ %Asu.0, %for.cond ], !dbg !3483
  store i64 %Aba.0.lcssa, ptr %state, align 8, !dbg !3892
  %arrayidx450 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3893
  store i64 %Abe.0.lcssa, ptr %arrayidx450, align 8, !dbg !3894
  %arrayidx451 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3895
  store i64 %Abi.0.lcssa, ptr %arrayidx451, align 8, !dbg !3896
  %arrayidx452 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3897
  store i64 %Abo.0.lcssa, ptr %arrayidx452, align 8, !dbg !3898
  %arrayidx453 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3899
  store i64 %Abu.0.lcssa, ptr %arrayidx453, align 8, !dbg !3900
  %arrayidx454 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3901
  store i64 %Aga.0.lcssa, ptr %arrayidx454, align 8, !dbg !3902
  %arrayidx455 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3903
  store i64 %Age.0.lcssa, ptr %arrayidx455, align 8, !dbg !3904
  %arrayidx456 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3905
  store i64 %Agi.0.lcssa, ptr %arrayidx456, align 8, !dbg !3906
  %arrayidx457 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3907
  store i64 %Ago.0.lcssa, ptr %arrayidx457, align 8, !dbg !3908
  %arrayidx458 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3909
  store i64 %Agu.0.lcssa, ptr %arrayidx458, align 8, !dbg !3910
  %arrayidx459 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3911
  store i64 %Aka.0.lcssa, ptr %arrayidx459, align 8, !dbg !3912
  %arrayidx460 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3913
  store i64 %Ake.0.lcssa, ptr %arrayidx460, align 8, !dbg !3914
  %arrayidx461 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3915
  store i64 %Aki.0.lcssa, ptr %arrayidx461, align 8, !dbg !3916
  %arrayidx462 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3917
  store i64 %Ako.0.lcssa, ptr %arrayidx462, align 8, !dbg !3918
  %arrayidx463 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3919
  store i64 %Aku.0.lcssa, ptr %arrayidx463, align 8, !dbg !3920
  %arrayidx464 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3921
  store i64 %Ama.0.lcssa, ptr %arrayidx464, align 8, !dbg !3922
  %arrayidx465 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3923
  store i64 %Ame.0.lcssa, ptr %arrayidx465, align 8, !dbg !3924
  %arrayidx466 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3925
  store i64 %Ami.0.lcssa, ptr %arrayidx466, align 8, !dbg !3926
  %arrayidx467 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3927
  store i64 %Amo.0.lcssa, ptr %arrayidx467, align 8, !dbg !3928
  %arrayidx468 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3929
  store i64 %Amu.0.lcssa, ptr %arrayidx468, align 8, !dbg !3930
  %arrayidx469 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3931
  store i64 %Asa.0.lcssa, ptr %arrayidx469, align 8, !dbg !3932
  %arrayidx470 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3933
  store i64 %Ase.0.lcssa, ptr %arrayidx470, align 8, !dbg !3934
  %arrayidx471 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3935
  store i64 %Asi.0.lcssa, ptr %arrayidx471, align 8, !dbg !3936
  %arrayidx472 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3937
  store i64 %Aso.0.lcssa, ptr %arrayidx472, align 8, !dbg !3938
  %arrayidx473 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3939
  store i64 %Asu.0.lcssa, ptr %arrayidx473, align 8, !dbg !3940
  ret void, !dbg !3941
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !3942 {
entry:
    #dbg_value(ptr %state, !3943, !DIExpression(), !3944)
  %0 = load ptr, ptr %state, align 4, !dbg !3945
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 168, i8 noundef zeroext 31) #4, !dbg !3946
  ret void, !dbg !3947
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_finalize(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !3948 {
entry:
    #dbg_value(ptr %s_inc, !3951, !DIExpression(), !3952)
    #dbg_value(i32 %r, !3953, !DIExpression(), !3952)
    #dbg_value(i8 %p, !3954, !DIExpression(), !3952)
  %conv = zext nneg i8 %p to i64, !dbg !3955
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3956
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3956
  %and = shl i64 %0, 3, !dbg !3957
  %mul = and i64 %and, 56, !dbg !3957
  %shl = shl nuw nsw i64 %conv, %mul, !dbg !3958
  %shr = lshr i64 %0, 3, !dbg !3959
  %idxprom = trunc i64 %shr to i32, !dbg !3960
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3960
  %1 = load i64, ptr %arrayidx2, align 8, !dbg !3961
  %xor = xor i64 %1, %shl, !dbg !3961
  store i64 %xor, ptr %arrayidx2, align 8, !dbg !3961
  %sub = shl nuw nsw i32 %r, 3, !dbg !3962
  %and3 = add nuw nsw i32 %sub, 56, !dbg !3962
  %mul4 = and i32 %and3, 56, !dbg !3962
  %sh_prom = zext nneg i32 %mul4 to i64, !dbg !3963
  %shl5 = shl nuw i64 128, %sh_prom, !dbg !3963
  %sub6 = add nsw i32 %r, -1, !dbg !3964
  %shr7 = lshr i32 %sub6, 3, !dbg !3965
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr7, !dbg !3966
  %2 = load i64, ptr %arrayidx8, align 8, !dbg !3967
  %xor9 = xor i64 %2, %shl5, !dbg !3967
  store i64 %xor9, ptr %arrayidx8, align 8, !dbg !3967
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3968
  store i64 0, ptr %arrayidx10, align 8, !dbg !3969
  ret void, !dbg !3970
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !3971 {
entry:
    #dbg_value(ptr %output, !3974, !DIExpression(), !3975)
    #dbg_value(i32 %outlen, !3976, !DIExpression(), !3975)
    #dbg_value(ptr %state, !3977, !DIExpression(), !3975)
  %0 = load ptr, ptr %state, align 4, !dbg !3978
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 168) #4, !dbg !3979
  ret void, !dbg !3980
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_squeeze(ptr noundef %h, i32 noundef %outlen, ptr noundef %s_inc, i32 noundef range(i32 136, 169) %r) unnamed_addr #0 !dbg !3981 {
entry:
    #dbg_value(ptr %h, !3984, !DIExpression(), !3985)
    #dbg_value(i32 %outlen, !3986, !DIExpression(), !3985)
    #dbg_value(ptr %s_inc, !3987, !DIExpression(), !3985)
    #dbg_value(i32 %r, !3988, !DIExpression(), !3985)
    #dbg_value(i32 0, !3989, !DIExpression(), !3985)
  br label %for.cond, !dbg !3990

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3992
    #dbg_value(i32 %i.0, !3989, !DIExpression(), !3985)
  %exitcond = icmp ne i32 %i.0, %outlen, !dbg !3993
  br i1 %exitcond, label %land.rhs, label %for.end, !dbg !3995

land.rhs:                                         ; preds = %for.cond
  %conv = zext i32 %i.0 to i64, !dbg !3996
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3997
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3997
  %cmp1 = icmp ugt i64 %0, %conv, !dbg !3998
  br i1 %cmp1, label %for.body, label %for.end, !dbg !3999

for.body:                                         ; preds = %land.rhs
  %conv3 = zext nneg i32 %r to i64, !dbg !4000
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4002
  %1 = load i64, ptr %arrayidx4, align 8, !dbg !4002
  %sub = sub i64 %conv3, %1, !dbg !4003
  %conv5 = zext i32 %i.0 to i64, !dbg !4004
  %add = add i64 %sub, %conv5, !dbg !4005
  %shr = lshr i64 %add, 3, !dbg !4006
  %idxprom = trunc i64 %shr to i32, !dbg !4007
  %arrayidx6 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !4007
  %2 = load i64, ptr %arrayidx6, align 8, !dbg !4007
  %conv7 = zext nneg i32 %r to i64, !dbg !4008
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4009
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !4009
  %sub9 = sub i64 %conv7, %3, !dbg !4010
  %conv10 = zext i32 %i.0 to i64, !dbg !4011
  %add11 = add i64 %sub9, %conv10, !dbg !4012
  %and = shl i64 %add11, 3, !dbg !4013
  %mul = and i64 %and, 56, !dbg !4013
  %shr12 = lshr i64 %2, %mul, !dbg !4014
  %conv13 = trunc i64 %shr12 to i8, !dbg !4015
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %h, i32 %i.0, !dbg !4016
  store i8 %conv13, ptr %arrayidx14, align 1, !dbg !4017
  %inc = add i32 %i.0, 1, !dbg !4018
    #dbg_value(i32 %inc, !3989, !DIExpression(), !3985)
  br label %for.cond, !dbg !4019, !llvm.loop !4020

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %outlen, %for.cond ], [ %i.0, %land.rhs ], !dbg !3992
  %add.ptr = getelementptr inbounds nuw i8, ptr %h, i32 %i.0.lcssa, !dbg !4022
    #dbg_value(ptr %add.ptr, !3984, !DIExpression(), !3985)
  %sub15 = sub i32 %outlen, %i.0.lcssa, !dbg !4023
    #dbg_value(i32 %sub15, !3986, !DIExpression(), !3985)
  %conv16 = zext i32 %i.0.lcssa to i64, !dbg !4024
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4025
  %4 = load i64, ptr %arrayidx17, align 8, !dbg !4026
  %sub18 = sub i64 %4, %conv16, !dbg !4026
  store i64 %sub18, ptr %arrayidx17, align 8, !dbg !4026
  br label %while.cond, !dbg !4027

while.cond:                                       ; preds = %for.end38, %for.end
  %outlen.addr.0 = phi i32 [ %sub15, %for.end ], [ %sub40, %for.end38 ], !dbg !3985
  %h.addr.0 = phi ptr [ %add.ptr, %for.end ], [ %add.ptr39, %for.end38 ], !dbg !3985
    #dbg_value(ptr %h.addr.0, !3984, !DIExpression(), !3985)
    #dbg_value(i32 %outlen.addr.0, !3986, !DIExpression(), !3985)
  %cmp19.not = icmp eq i32 %outlen.addr.0, 0, !dbg !4028
  br i1 %cmp19.not, label %while.end, label %while.body, !dbg !4027

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #4, !dbg !4029
    #dbg_value(i32 0, !3989, !DIExpression(), !3985)
  %5 = icmp ult i32 %outlen.addr.0, %r, !dbg !4031
  %6 = select i1 %5, i32 %outlen.addr.0, i32 %r, !dbg !4031
  br label %for.cond21, !dbg !4031

for.cond21:                                       ; preds = %for.body28, %while.body
  %i.1 = phi i32 [ 0, %while.body ], [ %inc37, %for.body28 ], !dbg !4033
    #dbg_value(i32 %i.1, !3989, !DIExpression(), !3985)
  %exitcond1 = icmp ne i32 %i.1, %6, !dbg !4034
  br i1 %exitcond1, label %for.body28, label %for.end38, !dbg !4036

for.body28:                                       ; preds = %for.cond21
  %shr29 = lshr i32 %i.1, 3, !dbg !4037
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr29, !dbg !4039
  %7 = load i64, ptr %arrayidx30, align 8, !dbg !4039
  %and31 = shl nuw nsw i32 %i.1, 3, !dbg !4040
  %mul32 = and i32 %and31, 56, !dbg !4040
  %sh_prom = zext nneg i32 %mul32 to i64, !dbg !4041
  %shr33 = lshr i64 %7, %sh_prom, !dbg !4041
  %conv34 = trunc i64 %shr33 to i8, !dbg !4042
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1, !dbg !4043
  store i8 %conv34, ptr %arrayidx35, align 1, !dbg !4044
  %inc37 = add nuw nsw i32 %i.1, 1, !dbg !4045
    #dbg_value(i32 %inc37, !3989, !DIExpression(), !3985)
  br label %for.cond21, !dbg !4046, !llvm.loop !4047

for.end38:                                        ; preds = %for.cond21
  %i.1.lcssa = phi i32 [ %i.1, %for.cond21 ], !dbg !4033
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1.lcssa, !dbg !4049
    #dbg_value(ptr %add.ptr39, !3984, !DIExpression(), !3985)
  %sub40 = sub i32 %outlen.addr.0, %i.1.lcssa, !dbg !4050
    #dbg_value(i32 %sub40, !3986, !DIExpression(), !3985)
  %sub41 = sub nsw i32 %r, %i.1.lcssa, !dbg !4051
  %conv42 = zext i32 %sub41 to i64, !dbg !4052
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4053
  store i64 %conv42, ptr %arrayidx43, align 8, !dbg !4054
  br label %while.cond, !dbg !4027, !llvm.loop !4055

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4057
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4058 {
entry:
    #dbg_value(ptr %dest, !4063, !DIExpression(), !4064)
    #dbg_value(ptr %src, !4065, !DIExpression(), !4064)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4066
  store ptr %call, ptr %dest, align 4, !dbg !4067
  %cmp = icmp eq ptr %call, null, !dbg !4068
  br i1 %cmp, label %if.then, label %if.end, !dbg !4068

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4070
  br label %if.end, !dbg !4072

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4073
  %1 = load ptr, ptr %src, align 4, !dbg !4074
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4075
  ret void, !dbg !4076
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4077 {
entry:
    #dbg_value(ptr %state, !4078, !DIExpression(), !4079)
  %0 = load ptr, ptr %state, align 4, !dbg !4080
  call void @free(ptr noundef %0) #6, !dbg !4081
  ret void, !dbg !4082
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4083 {
entry:
    #dbg_value(ptr %state, !4091, !DIExpression(), !4092)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4093
  store ptr %call, ptr %state, align 4, !dbg !4094
  %cmp = icmp eq ptr %call, null, !dbg !4095
  br i1 %cmp, label %if.then, label %if.end, !dbg !4095

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4097
  br label %if.end, !dbg !4099

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4100
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4101
  ret void, !dbg !4102
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4103 {
entry:
    #dbg_value(ptr %state, !4106, !DIExpression(), !4107)
    #dbg_value(ptr %input, !4108, !DIExpression(), !4107)
    #dbg_value(i32 %inlen, !4109, !DIExpression(), !4107)
  %0 = load ptr, ptr %state, align 4, !dbg !4110
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4111
  ret void, !dbg !4112
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !4113 {
entry:
    #dbg_value(ptr %state, !4114, !DIExpression(), !4115)
  %0 = load ptr, ptr %state, align 4, !dbg !4116
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 31) #4, !dbg !4117
  ret void, !dbg !4118
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !4119 {
entry:
    #dbg_value(ptr %output, !4122, !DIExpression(), !4123)
    #dbg_value(i32 %outlen, !4124, !DIExpression(), !4123)
    #dbg_value(ptr %state, !4125, !DIExpression(), !4123)
  %0 = load ptr, ptr %state, align 4, !dbg !4126
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 136) #4, !dbg !4127
  ret void, !dbg !4128
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4129 {
entry:
    #dbg_value(ptr %dest, !4134, !DIExpression(), !4135)
    #dbg_value(ptr %src, !4136, !DIExpression(), !4135)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4137
  store ptr %call, ptr %dest, align 4, !dbg !4138
  %cmp = icmp eq ptr %call, null, !dbg !4139
  br i1 %cmp, label %if.then, label %if.end, !dbg !4139

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4141
  br label %if.end, !dbg !4143

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4144
  %1 = load ptr, ptr %src, align 4, !dbg !4145
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4146
  ret void, !dbg !4147
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4148 {
entry:
    #dbg_value(ptr %state, !4149, !DIExpression(), !4150)
  %0 = load ptr, ptr %state, align 4, !dbg !4151
  call void @free(ptr noundef %0) #6, !dbg !4152
  ret void, !dbg !4153
}

; Function Attrs: nounwind
define dso_local void @shake128_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4154 {
entry:
    #dbg_value(ptr %state, !4162, !DIExpression(), !4163)
    #dbg_value(ptr %input, !4164, !DIExpression(), !4163)
    #dbg_value(i32 %inlen, !4165, !DIExpression(), !4163)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4166
  store ptr %call, ptr %state, align 4, !dbg !4167
  %cmp = icmp eq ptr %call, null, !dbg !4168
  br i1 %cmp, label %if.then, label %if.end, !dbg !4168

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4170
  br label %if.end, !dbg !4172

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4173
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !4174
  ret void, !dbg !4175
}

; Function Attrs: nounwind
define internal fastcc void @keccak_absorb(ptr noundef %s, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !4176 {
entry:
  %t = alloca [200 x i8], align 1
    #dbg_value(ptr %s, !4179, !DIExpression(), !4180)
    #dbg_value(i32 %r, !4181, !DIExpression(), !4180)
    #dbg_value(ptr %m, !4182, !DIExpression(), !4180)
    #dbg_value(i32 %mlen, !4183, !DIExpression(), !4180)
    #dbg_value(i8 %p, !4184, !DIExpression(), !4180)
    #dbg_declare(ptr %t, !4185, !DIExpression(), !4189)
    #dbg_value(i32 0, !4190, !DIExpression(), !4180)
  br label %for.cond, !dbg !4191

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4193
    #dbg_value(i32 %i.0, !4190, !DIExpression(), !4180)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !4194
  br i1 %exitcond, label %for.body, label %while.cond.preheader, !dbg !4196

while.cond.preheader:                             ; preds = %for.cond
  %0 = lshr i32 %r, 3, !dbg !4197
  br label %while.cond, !dbg !4197

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4198
  store i64 0, ptr %arrayidx, align 8, !dbg !4200
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4201
    #dbg_value(i32 %inc, !4190, !DIExpression(), !4180)
  br label %for.cond, !dbg !4202, !llvm.loop !4203

while.cond:                                       ; preds = %while.cond.preheader, %for.end8
  %m.addr.0 = phi ptr [ %add.ptr9, %for.end8 ], [ %m, %while.cond.preheader ]
  %mlen.addr.0 = phi i32 [ %sub, %for.end8 ], [ %mlen, %while.cond.preheader ]
    #dbg_value(i32 %mlen.addr.0, !4183, !DIExpression(), !4180)
    #dbg_value(ptr %m.addr.0, !4182, !DIExpression(), !4180)
  %cmp1.not = icmp ult i32 %mlen.addr.0, %r, !dbg !4205
  br i1 %cmp1.not, label %for.cond10.preheader, label %for.cond2.preheader, !dbg !4197

for.cond2.preheader:                              ; preds = %while.cond
  br label %for.cond2, !dbg !4206

for.cond10.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa5 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  br label %for.cond10, !dbg !4209

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %i.1 = phi i32 [ %inc7, %for.body4 ], [ 0, %for.cond2.preheader ], !dbg !4211
    #dbg_value(i32 %i.1, !4190, !DIExpression(), !4180)
  %exitcond3 = icmp ne i32 %i.1, %0, !dbg !4212
  br i1 %exitcond3, label %for.body4, label %for.end8, !dbg !4206

for.body4:                                        ; preds = %for.cond2
  %mul = shl nuw nsw i32 %i.1, 3, !dbg !4214
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %mul, !dbg !4216
  %call = call fastcc i64 @load64(ptr noundef %add.ptr) #4, !dbg !4217
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %s, i32 %i.1, !dbg !4218
  %1 = load i64, ptr %arrayidx5, align 8, !dbg !4219
  %xor = xor i64 %1, %call, !dbg !4219
  store i64 %xor, ptr %arrayidx5, align 8, !dbg !4219
  %inc7 = add nuw nsw i32 %i.1, 1, !dbg !4220
    #dbg_value(i32 %inc7, !4190, !DIExpression(), !4180)
  br label %for.cond2, !dbg !4221, !llvm.loop !4222

for.end8:                                         ; preds = %for.cond2
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !4224
  %sub = sub i32 %mlen.addr.0, %r, !dbg !4225
    #dbg_value(i32 %sub, !4183, !DIExpression(), !4180)
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %r, !dbg !4226
    #dbg_value(ptr %add.ptr9, !4182, !DIExpression(), !4180)
  br label %while.cond, !dbg !4197, !llvm.loop !4227

for.cond10:                                       ; preds = %for.cond10.preheader, %for.body12
  %i.2 = phi i32 [ %inc15, %for.body12 ], [ 0, %for.cond10.preheader ], !dbg !4229
    #dbg_value(i32 %i.2, !4190, !DIExpression(), !4180)
  %exitcond4 = icmp ne i32 %i.2, %r, !dbg !4230
  br i1 %exitcond4, label %for.body12, label %for.cond17.preheader, !dbg !4209

for.cond17.preheader:                             ; preds = %for.cond10
  br label %for.cond17, !dbg !4232

for.body12:                                       ; preds = %for.cond10
  %arrayidx13 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.2, !dbg !4234
  store i8 0, ptr %arrayidx13, align 1, !dbg !4236
  %inc15 = add nuw nsw i32 %i.2, 1, !dbg !4237
    #dbg_value(i32 %inc15, !4190, !DIExpression(), !4180)
  br label %for.cond10, !dbg !4238, !llvm.loop !4239

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body19
  %i.3 = phi i32 [ %inc23, %for.body19 ], [ 0, %for.cond17.preheader ], !dbg !4241
    #dbg_value(i32 %i.3, !4190, !DIExpression(), !4180)
  %exitcond6 = icmp ne i32 %i.3, %mlen.addr.0.lcssa5, !dbg !4242
  br i1 %exitcond6, label %for.body19, label %for.end24, !dbg !4232

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.3, !dbg !4244
  %2 = load i8, ptr %arrayidx20, align 1, !dbg !4244
  %arrayidx21 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3, !dbg !4246
  store i8 %2, ptr %arrayidx21, align 1, !dbg !4247
  %inc23 = add i32 %i.3, 1, !dbg !4248
    #dbg_value(i32 %inc23, !4190, !DIExpression(), !4180)
  br label %for.cond17, !dbg !4249, !llvm.loop !4250

for.end24:                                        ; preds = %for.cond17
  %i.3.lcssa = phi i32 [ %i.3, %for.cond17 ], !dbg !4241
  %arrayidx25 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3.lcssa, !dbg !4252
  store i8 %p, ptr %arrayidx25, align 1, !dbg !4253
  %sub26 = add nsw i32 %r, -1, !dbg !4254
  %arrayidx27 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %sub26, !dbg !4255
  %3 = load i8, ptr %arrayidx27, align 1, !dbg !4256
  %4 = or i8 %3, -128, !dbg !4256
  store i8 %4, ptr %arrayidx27, align 1, !dbg !4256
    #dbg_value(i32 0, !4190, !DIExpression(), !4180)
  br label %for.cond29, !dbg !4257

for.cond29:                                       ; preds = %for.body33, %for.end24
  %i.4 = phi i32 [ 0, %for.end24 ], [ %inc40, %for.body33 ], !dbg !4259
    #dbg_value(i32 %i.4, !4190, !DIExpression(), !4180)
  %exitcond7 = icmp ne i32 %i.4, %0, !dbg !4260
  br i1 %exitcond7, label %for.body33, label %for.end41, !dbg !4262

for.body33:                                       ; preds = %for.cond29
  %mul34 = shl nuw nsw i32 %i.4, 3, !dbg !4263
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %t, i32 %mul34, !dbg !4265
  %call36 = call fastcc i64 @load64(ptr noundef nonnull %add.ptr35) #4, !dbg !4266
  %arrayidx37 = getelementptr inbounds nuw i64, ptr %s, i32 %i.4, !dbg !4267
  %5 = load i64, ptr %arrayidx37, align 8, !dbg !4268
  %xor38 = xor i64 %5, %call36, !dbg !4268
  store i64 %xor38, ptr %arrayidx37, align 8, !dbg !4268
  %inc40 = add nuw nsw i32 %i.4, 1, !dbg !4269
    #dbg_value(i32 %inc40, !4190, !DIExpression(), !4180)
  br label %for.cond29, !dbg !4270, !llvm.loop !4271

for.end41:                                        ; preds = %for.cond29
  ret void, !dbg !4273
}

; Function Attrs: nounwind
define internal fastcc i64 @load64(ptr noundef %x) unnamed_addr #0 !dbg !4274 {
entry:
    #dbg_value(ptr %x, !4277, !DIExpression(), !4278)
    #dbg_value(i64 0, !4279, !DIExpression(), !4278)
    #dbg_value(i32 0, !4280, !DIExpression(), !4282)
  br label %for.cond, !dbg !4283

for.cond:                                         ; preds = %for.inc, %entry
  %r.0 = phi i64 [ 0, %entry ], [ %or, %for.inc ], !dbg !4278
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !4284
    #dbg_value(i32 %i.0, !4280, !DIExpression(), !4282)
    #dbg_value(i64 %r.0, !4279, !DIExpression(), !4278)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4285
  br i1 %exitcond, label %for.inc, label %for.end, !dbg !4287

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 poison, i8 poison, i32 poison), !4279, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4278)
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4288
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4288
    #dbg_value(!DIArgList(i64 %r.0, i8 %0, i32 %i.0), !4279, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4278)
  %conv = zext i8 %0 to i64, !dbg !4290
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %i.0), !4279, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4278)
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4291
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %mul), !4279, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4278)
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4292
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i64 %sh_prom), !4279, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4278)
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !4292
    #dbg_value(!DIArgList(i64 %r.0, i64 %shl), !4279, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !4278)
  %or = or i64 %r.0, %shl, !dbg !4293
    #dbg_value(i64 %or, !4279, !DIExpression(), !4278)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4294
    #dbg_value(i32 %inc, !4280, !DIExpression(), !4282)
  br label %for.cond, !dbg !4295, !llvm.loop !4296

for.end:                                          ; preds = %for.cond
  %r.0.lcssa = phi i64 [ %r.0, %for.cond ], !dbg !4278
  ret i64 %r.0.lcssa, !dbg !4298
}

; Function Attrs: nounwind
define dso_local void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4299 {
entry:
    #dbg_value(ptr %output, !4302, !DIExpression(), !4303)
    #dbg_value(i32 %nblocks, !4304, !DIExpression(), !4303)
    #dbg_value(ptr %state, !4305, !DIExpression(), !4303)
  %0 = load ptr, ptr %state, align 4, !dbg !4306
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 168) #4, !dbg !4307
  ret void, !dbg !4308
}

; Function Attrs: nounwind
define internal fastcc void @keccak_squeezeblocks(ptr noundef %h, i32 noundef %nblocks, ptr noundef %s, i32 noundef range(i32 72, 169) %r) unnamed_addr #0 !dbg !4309 {
entry:
    #dbg_value(ptr %h, !4310, !DIExpression(), !4311)
    #dbg_value(i32 %nblocks, !4312, !DIExpression(), !4311)
    #dbg_value(ptr %s, !4313, !DIExpression(), !4311)
    #dbg_value(i32 %r, !4314, !DIExpression(), !4311)
  %0 = lshr i32 %r, 3, !dbg !4315
  br label %while.cond, !dbg !4315

while.cond:                                       ; preds = %for.end, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %dec, %for.end ]
  %h.addr.0 = phi ptr [ %h, %entry ], [ %add.ptr2, %for.end ]
    #dbg_value(ptr %h.addr.0, !4310, !DIExpression(), !4311)
    #dbg_value(i32 %nblocks.addr.0, !4312, !DIExpression(), !4311)
  %cmp.not = icmp eq i32 %nblocks.addr.0, 0, !dbg !4316
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !4315

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !4317
    #dbg_value(i32 0, !4319, !DIExpression(), !4321)
  br label %for.cond, !dbg !4322

for.cond:                                         ; preds = %for.body, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc, %for.body ], !dbg !4323
    #dbg_value(i32 %i.0, !4319, !DIExpression(), !4321)
  %exitcond = icmp ne i32 %i.0, %0, !dbg !4324
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4326

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4327
  %add.ptr = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %mul, !dbg !4329
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4330
  %1 = load i64, ptr %arrayidx, align 8, !dbg !4330
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %1) #4, !dbg !4331
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4332
    #dbg_value(i32 %inc, !4319, !DIExpression(), !4321)
  br label %for.cond, !dbg !4333, !llvm.loop !4334

for.end:                                          ; preds = %for.cond
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %r, !dbg !4336
    #dbg_value(ptr %add.ptr2, !4310, !DIExpression(), !4311)
  %dec = add i32 %nblocks.addr.0, -1, !dbg !4337
    #dbg_value(i32 %dec, !4312, !DIExpression(), !4311)
  br label %while.cond, !dbg !4315, !llvm.loop !4338

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4340
}

; Function Attrs: nounwind
define internal fastcc void @store64(ptr noundef %x, i64 noundef %u) unnamed_addr #0 !dbg !4341 {
entry:
    #dbg_value(ptr %x, !4344, !DIExpression(), !4345)
    #dbg_value(i64 %u, !4346, !DIExpression(), !4345)
    #dbg_value(i32 0, !4347, !DIExpression(), !4349)
  br label %for.cond, !dbg !4350

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4351
    #dbg_value(i32 %i.0, !4347, !DIExpression(), !4349)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4352
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4354

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4355
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4357
  %shr = lshr i64 %u, %sh_prom, !dbg !4357
  %conv = trunc i64 %shr to i8, !dbg !4358
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4359
  store i8 %conv, ptr %arrayidx, align 1, !dbg !4360
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4361
    #dbg_value(i32 %inc, !4347, !DIExpression(), !4349)
  br label %for.cond, !dbg !4362, !llvm.loop !4363

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4365
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4366 {
entry:
    #dbg_value(ptr %dest, !4371, !DIExpression(), !4372)
    #dbg_value(ptr %src, !4373, !DIExpression(), !4372)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4374
  store ptr %call, ptr %dest, align 4, !dbg !4375
  %cmp = icmp eq ptr %call, null, !dbg !4376
  br i1 %cmp, label %if.then, label %if.end, !dbg !4376

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4378
  br label %if.end, !dbg !4380

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4381
  %1 = load ptr, ptr %src, align 4, !dbg !4382
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #6, !dbg !4383
  ret void, !dbg !4384
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4385 {
entry:
    #dbg_value(ptr %state, !4388, !DIExpression(), !4389)
  %0 = load ptr, ptr %state, align 4, !dbg !4390
  call void @free(ptr noundef %0) #6, !dbg !4391
  ret void, !dbg !4392
}

; Function Attrs: nounwind
define dso_local void @shake256_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4393 {
entry:
    #dbg_value(ptr %state, !4401, !DIExpression(), !4402)
    #dbg_value(ptr %input, !4403, !DIExpression(), !4402)
    #dbg_value(i32 %inlen, !4404, !DIExpression(), !4402)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4405
  store ptr %call, ptr %state, align 4, !dbg !4406
  %cmp = icmp eq ptr %call, null, !dbg !4407
  br i1 %cmp, label %if.then, label %if.end, !dbg !4407

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4409
  br label %if.end, !dbg !4411

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4412
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !4413
  ret void, !dbg !4414
}

; Function Attrs: nounwind
define dso_local void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4415 {
entry:
    #dbg_value(ptr %output, !4418, !DIExpression(), !4419)
    #dbg_value(i32 %nblocks, !4420, !DIExpression(), !4419)
    #dbg_value(ptr %state, !4421, !DIExpression(), !4419)
  %0 = load ptr, ptr %state, align 4, !dbg !4422
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 136) #4, !dbg !4423
  ret void, !dbg !4424
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4425 {
entry:
    #dbg_value(ptr %dest, !4430, !DIExpression(), !4431)
    #dbg_value(ptr %src, !4432, !DIExpression(), !4431)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4433
  store ptr %call, ptr %dest, align 4, !dbg !4434
  %cmp = icmp eq ptr %call, null, !dbg !4435
  br i1 %cmp, label %if.then, label %if.end, !dbg !4435

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4437
  br label %if.end, !dbg !4439

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4440
  %1 = load ptr, ptr %src, align 4, !dbg !4441
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #6, !dbg !4442
  ret void, !dbg !4443
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4444 {
entry:
    #dbg_value(ptr %state, !4447, !DIExpression(), !4448)
  %0 = load ptr, ptr %state, align 4, !dbg !4449
  call void @free(ptr noundef %0) #6, !dbg !4450
  ret void, !dbg !4451
}

; Function Attrs: nounwind
define dso_local void @shake128(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4452 {
entry:
  %t = alloca [168 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4455, !DIExpression(), !4456)
    #dbg_value(i32 %outlen, !4457, !DIExpression(), !4456)
    #dbg_value(ptr %input, !4458, !DIExpression(), !4456)
    #dbg_value(i32 %inlen, !4459, !DIExpression(), !4456)
  %div = udiv i32 %outlen, 168, !dbg !4460
    #dbg_value(i32 %div, !4461, !DIExpression(), !4456)
    #dbg_declare(ptr %t, !4462, !DIExpression(), !4466)
    #dbg_declare(ptr %s, !4467, !DIExpression(), !4468)
  call void @shake128_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4469
  call void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #4, !dbg !4470
  %mul = mul nuw i32 %div, 168, !dbg !4471
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4472
    #dbg_value(ptr %add.ptr, !4455, !DIExpression(), !4456)
  %mul1.neg = mul i32 %div, -168, !dbg !4473
  %sub = add i32 %mul1.neg, %outlen, !dbg !4474
    #dbg_value(i32 %sub, !4457, !DIExpression(), !4456)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4475
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4475

if.then:                                          ; preds = %entry
  call void @shake128_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #4, !dbg !4477
    #dbg_value(i32 0, !4479, !DIExpression(), !4481)
  br label %for.cond, !dbg !4482

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4483
    #dbg_value(i32 %i.0, !4479, !DIExpression(), !4481)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4484
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4486

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [168 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4487
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4487
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4489
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4490
  %inc = add i32 %i.0, 1, !dbg !4491
    #dbg_value(i32 %inc, !4479, !DIExpression(), !4481)
  br label %for.cond, !dbg !4492, !llvm.loop !4493

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4495

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake128_ctx_release(ptr noundef nonnull %s) #4, !dbg !4495
  ret void, !dbg !4496
}

; Function Attrs: nounwind
define dso_local void @shake256(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4497 {
entry:
  %t = alloca [136 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4498, !DIExpression(), !4499)
    #dbg_value(i32 %outlen, !4500, !DIExpression(), !4499)
    #dbg_value(ptr %input, !4501, !DIExpression(), !4499)
    #dbg_value(i32 %inlen, !4502, !DIExpression(), !4499)
  %div = udiv i32 %outlen, 136, !dbg !4503
    #dbg_value(i32 %div, !4504, !DIExpression(), !4499)
    #dbg_declare(ptr %t, !4505, !DIExpression(), !4509)
    #dbg_declare(ptr %s, !4510, !DIExpression(), !4511)
  call void @shake256_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4512
  call void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #4, !dbg !4513
  %mul = mul nuw i32 %div, 136, !dbg !4514
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4515
    #dbg_value(ptr %add.ptr, !4498, !DIExpression(), !4499)
  %mul1.neg = mul i32 %div, -136, !dbg !4516
  %sub = add i32 %mul1.neg, %outlen, !dbg !4517
    #dbg_value(i32 %sub, !4500, !DIExpression(), !4499)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4518
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4518

if.then:                                          ; preds = %entry
  call void @shake256_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #4, !dbg !4520
    #dbg_value(i32 0, !4522, !DIExpression(), !4524)
  br label %for.cond, !dbg !4525

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4526
    #dbg_value(i32 %i.0, !4522, !DIExpression(), !4524)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4527
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4529

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4530
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4530
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4532
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4533
  %inc = add i32 %i.0, 1, !dbg !4534
    #dbg_value(i32 %inc, !4522, !DIExpression(), !4524)
  br label %for.cond, !dbg !4535, !llvm.loop !4536

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4538

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake256_ctx_release(ptr noundef nonnull %s) #4, !dbg !4538
  ret void, !dbg !4539
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4540 {
entry:
    #dbg_value(ptr %state, !4548, !DIExpression(), !4549)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4550
  store ptr %call, ptr %state, align 4, !dbg !4551
  %cmp = icmp eq ptr %call, null, !dbg !4552
  br i1 %cmp, label %if.then, label %if.end, !dbg !4552

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4554
  br label %if.end, !dbg !4556

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4557
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4558
  ret void, !dbg !4559
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4560 {
entry:
    #dbg_value(ptr %dest, !4565, !DIExpression(), !4566)
    #dbg_value(ptr %src, !4567, !DIExpression(), !4566)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4568
  store ptr %call, ptr %dest, align 4, !dbg !4569
  %cmp = icmp eq ptr %call, null, !dbg !4570
  br i1 %cmp, label %if.then, label %if.end, !dbg !4570

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4572
  br label %if.end, !dbg !4574

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4575
  %1 = load ptr, ptr %src, align 4, !dbg !4576
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4577
  ret void, !dbg !4578
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4579 {
entry:
    #dbg_value(ptr %state, !4580, !DIExpression(), !4581)
  %0 = load ptr, ptr %state, align 4, !dbg !4582
  call void @free(ptr noundef %0) #6, !dbg !4583
  ret void, !dbg !4584
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4585 {
entry:
    #dbg_value(ptr %state, !4588, !DIExpression(), !4589)
    #dbg_value(ptr %input, !4590, !DIExpression(), !4589)
    #dbg_value(i32 %inlen, !4591, !DIExpression(), !4589)
  %0 = load ptr, ptr %state, align 4, !dbg !4592
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4593
  ret void, !dbg !4594
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4595 {
entry:
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4598, !DIExpression(), !4599)
    #dbg_value(ptr %state, !4600, !DIExpression(), !4599)
    #dbg_declare(ptr %t, !4601, !DIExpression(), !4602)
  %0 = load ptr, ptr %state, align 4, !dbg !4603
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 6) #4, !dbg !4604
  %1 = load ptr, ptr %state, align 4, !dbg !4605
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 136) #4, !dbg !4606
  call void @sha3_256_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4607
    #dbg_value(i32 0, !4608, !DIExpression(), !4610)
  br label %for.cond, !dbg !4611

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4612
    #dbg_value(i32 %i.0, !4608, !DIExpression(), !4610)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4613
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4615

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4616
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4616
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4618
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4619
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4620
    #dbg_value(i32 %inc, !4608, !DIExpression(), !4610)
  br label %for.cond, !dbg !4621, !llvm.loop !4622

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4624
}

; Function Attrs: nounwind
define dso_local void @sha3_256(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4625 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4628, !DIExpression(), !4629)
    #dbg_value(ptr %input, !4630, !DIExpression(), !4629)
    #dbg_value(i32 %inlen, !4631, !DIExpression(), !4629)
    #dbg_declare(ptr %s, !4632, !DIExpression(), !4636)
    #dbg_declare(ptr %t, !4637, !DIExpression(), !4638)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4639
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 136) #4, !dbg !4640
    #dbg_value(i32 0, !4641, !DIExpression(), !4643)
  br label %for.cond, !dbg !4644

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4645
    #dbg_value(i32 %i.0, !4641, !DIExpression(), !4643)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4646
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4648

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4649
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4649
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4651
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4652
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4653
    #dbg_value(i32 %inc, !4641, !DIExpression(), !4643)
  br label %for.cond, !dbg !4654, !llvm.loop !4655

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4657
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4658 {
entry:
    #dbg_value(ptr %state, !4666, !DIExpression(), !4667)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4668
  store ptr %call, ptr %state, align 4, !dbg !4669
  %cmp = icmp eq ptr %call, null, !dbg !4670
  br i1 %cmp, label %if.then, label %if.end, !dbg !4670

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4672
  br label %if.end, !dbg !4674

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4675
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4676
  ret void, !dbg !4677
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4678 {
entry:
    #dbg_value(ptr %dest, !4683, !DIExpression(), !4684)
    #dbg_value(ptr %src, !4685, !DIExpression(), !4684)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4686
  store ptr %call, ptr %dest, align 4, !dbg !4687
  %cmp = icmp eq ptr %call, null, !dbg !4688
  br i1 %cmp, label %if.then, label %if.end, !dbg !4688

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4690
  br label %if.end, !dbg !4692

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4693
  %1 = load ptr, ptr %src, align 4, !dbg !4694
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4695
  ret void, !dbg !4696
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4697 {
entry:
    #dbg_value(ptr %state, !4700, !DIExpression(), !4701)
    #dbg_value(ptr %input, !4702, !DIExpression(), !4701)
    #dbg_value(i32 %inlen, !4703, !DIExpression(), !4701)
  %0 = load ptr, ptr %state, align 4, !dbg !4704
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 104, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4705
  ret void, !dbg !4706
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4707 {
entry:
    #dbg_value(ptr %state, !4708, !DIExpression(), !4709)
  %0 = load ptr, ptr %state, align 4, !dbg !4710
  call void @free(ptr noundef %0) #6, !dbg !4711
  ret void, !dbg !4712
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4713 {
entry:
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4716, !DIExpression(), !4717)
    #dbg_value(ptr %state, !4718, !DIExpression(), !4717)
    #dbg_declare(ptr %t, !4719, !DIExpression(), !4723)
  %0 = load ptr, ptr %state, align 4, !dbg !4724
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 104, i8 noundef zeroext 6) #4, !dbg !4725
  %1 = load ptr, ptr %state, align 4, !dbg !4726
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 104) #4, !dbg !4727
  call void @sha3_384_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4728
    #dbg_value(i32 0, !4729, !DIExpression(), !4731)
  br label %for.cond, !dbg !4732

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4733
    #dbg_value(i32 %i.0, !4729, !DIExpression(), !4731)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4734
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4736

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4737
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4737
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4739
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4740
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4741
    #dbg_value(i32 %inc, !4729, !DIExpression(), !4731)
  br label %for.cond, !dbg !4742, !llvm.loop !4743

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4745
}

; Function Attrs: nounwind
define dso_local void @sha3_384(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4746 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4747, !DIExpression(), !4748)
    #dbg_value(ptr %input, !4749, !DIExpression(), !4748)
    #dbg_value(i32 %inlen, !4750, !DIExpression(), !4748)
    #dbg_declare(ptr %s, !4751, !DIExpression(), !4752)
    #dbg_declare(ptr %t, !4753, !DIExpression(), !4754)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 104, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4755
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 104) #4, !dbg !4756
    #dbg_value(i32 0, !4757, !DIExpression(), !4759)
  br label %for.cond, !dbg !4760

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4761
    #dbg_value(i32 %i.0, !4757, !DIExpression(), !4759)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4762
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4764

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4765
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4765
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4767
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4768
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4769
    #dbg_value(i32 %inc, !4757, !DIExpression(), !4759)
  br label %for.cond, !dbg !4770, !llvm.loop !4771

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4773
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4774 {
entry:
    #dbg_value(ptr %state, !4782, !DIExpression(), !4783)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4784
  store ptr %call, ptr %state, align 4, !dbg !4785
  %cmp = icmp eq ptr %call, null, !dbg !4786
  br i1 %cmp, label %if.then, label %if.end, !dbg !4786

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4788
  br label %if.end, !dbg !4790

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4791
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4792
  ret void, !dbg !4793
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4794 {
entry:
    #dbg_value(ptr %dest, !4799, !DIExpression(), !4800)
    #dbg_value(ptr %src, !4801, !DIExpression(), !4800)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4802
  store ptr %call, ptr %dest, align 4, !dbg !4803
  %cmp = icmp eq ptr %call, null, !dbg !4804
  br i1 %cmp, label %if.then, label %if.end, !dbg !4804

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4806
  br label %if.end, !dbg !4808

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4809
  %1 = load ptr, ptr %src, align 4, !dbg !4810
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4811
  ret void, !dbg !4812
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4813 {
entry:
    #dbg_value(ptr %state, !4816, !DIExpression(), !4817)
    #dbg_value(ptr %input, !4818, !DIExpression(), !4817)
    #dbg_value(i32 %inlen, !4819, !DIExpression(), !4817)
  %0 = load ptr, ptr %state, align 4, !dbg !4820
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 72, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4821
  ret void, !dbg !4822
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4823 {
entry:
    #dbg_value(ptr %state, !4824, !DIExpression(), !4825)
  %0 = load ptr, ptr %state, align 4, !dbg !4826
  call void @free(ptr noundef %0) #6, !dbg !4827
  ret void, !dbg !4828
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4829 {
entry:
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4832, !DIExpression(), !4833)
    #dbg_value(ptr %state, !4834, !DIExpression(), !4833)
    #dbg_declare(ptr %t, !4835, !DIExpression(), !4839)
  %0 = load ptr, ptr %state, align 4, !dbg !4840
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 72, i8 noundef zeroext 6) #4, !dbg !4841
  %1 = load ptr, ptr %state, align 4, !dbg !4842
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 72) #4, !dbg !4843
  call void @sha3_512_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4844
    #dbg_value(i32 0, !4845, !DIExpression(), !4847)
  br label %for.cond, !dbg !4848

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4849
    #dbg_value(i32 %i.0, !4845, !DIExpression(), !4847)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4850
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4852

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4853
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4853
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4855
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4856
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4857
    #dbg_value(i32 %inc, !4845, !DIExpression(), !4847)
  br label %for.cond, !dbg !4858, !llvm.loop !4859

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4861
}

; Function Attrs: nounwind
define dso_local void @sha3_512(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4862 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4863, !DIExpression(), !4864)
    #dbg_value(ptr %input, !4865, !DIExpression(), !4864)
    #dbg_value(i32 %inlen, !4866, !DIExpression(), !4864)
    #dbg_declare(ptr %s, !4867, !DIExpression(), !4868)
    #dbg_declare(ptr %t, !4869, !DIExpression(), !4870)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 72, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4871
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 72) #4, !dbg !4872
    #dbg_value(i32 0, !4873, !DIExpression(), !4875)
  br label %for.cond, !dbg !4876

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4877
    #dbg_value(i32 %i.0, !4873, !DIExpression(), !4875)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4878
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4880

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4881
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4881
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4883
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4884
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4885
    #dbg_value(i32 %inc, !4873, !DIExpression(), !4875)
  br label %for.cond, !dbg !4886, !llvm.loop !4887

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4889
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !4890 {
entry:
  %skey = alloca [22 x i64], align 8
    #dbg_value(ptr %r, !4898, !DIExpression(), !4899)
    #dbg_value(ptr %key, !4900, !DIExpression(), !4899)
    #dbg_declare(ptr %skey, !4901, !DIExpression(), !4905)
  %call = call dereferenceable_or_null(704) ptr @malloc(i32 noundef 704) #7, !dbg !4906
  store ptr %call, ptr %r, align 4, !dbg !4907
  %cmp = icmp eq ptr %call, null, !dbg !4908
  br i1 %cmp, label %if.then, label %if.end, !dbg !4908

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4910
  br label %if.end, !dbg !4912

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 16) #4, !dbg !4913
  %0 = load ptr, ptr %r, align 4, !dbg !4914
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 10) #4, !dbg !4915
  ret void, !dbg !4916
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %comp_skey, ptr noundef %key, i32 noundef range(i32 16, 33) %key_len) unnamed_addr #0 !dbg !4917 {
entry:
  %skey = alloca [60 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %comp_skey, !4920, !DIExpression(), !4921)
    #dbg_value(ptr %key, !4922, !DIExpression(), !4921)
    #dbg_value(i32 %key_len, !4923, !DIExpression(), !4921)
    #dbg_declare(ptr %skey, !4924, !DIExpression(), !4928)
  %0 = and i32 %key_len, 60, !dbg !4929
    #dbg_value(i32 %key_len, !4930, !DIExpression(DW_OP_constu, 16, DW_OP_minus, DW_OP_constu, 2, DW_OP_shr, DW_OP_plus_uconst, 10, DW_OP_stack_value), !4921)
  %shr1 = lshr i32 %key_len, 2, !dbg !4931
    #dbg_value(i32 %shr1, !4932, !DIExpression(), !4921)
  %shl = add nuw nsw i32 %0, 28, !dbg !4929
    #dbg_value(i32 %shl, !4933, !DIExpression(), !4921)
  %shr3 = lshr i32 %key_len, 2, !dbg !4934
  call fastcc void @br_range_dec32le(ptr noundef nonnull %skey, i32 noundef %shr3, ptr noundef %key) #4, !dbg !4935
  %shr4 = lshr i32 %key_len, 2, !dbg !4936
  %sub5 = add nsw i32 %shr4, -1, !dbg !4937
  %arrayidx = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub5, !dbg !4938
  %1 = load i32, ptr %arrayidx, align 4, !dbg !4938
    #dbg_value(i32 %1, !4939, !DIExpression(), !4921)
    #dbg_value(i32 %shr1, !4940, !DIExpression(), !4921)
    #dbg_value(i32 0, !4941, !DIExpression(), !4921)
    #dbg_value(i32 0, !4942, !DIExpression(), !4921)
  br label %for.cond, !dbg !4943

for.cond:                                         ; preds = %if.end16, %entry
  %i.0 = phi i32 [ %shr1, %entry ], [ %inc26, %if.end16 ], !dbg !4945
  %j.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end16 ], !dbg !4946
  %k.0 = phi i32 [ 0, %entry ], [ %spec.select1, %if.end16 ], !dbg !4946
  %tmp.0 = phi i32 [ %1, %entry ], [ %xor19, %if.end16 ], !dbg !4921
    #dbg_value(i32 %tmp.0, !4939, !DIExpression(), !4921)
    #dbg_value(i32 %k.0, !4942, !DIExpression(), !4921)
    #dbg_value(i32 %j.0, !4941, !DIExpression(), !4921)
    #dbg_value(i32 %i.0, !4940, !DIExpression(), !4921)
  %exitcond = icmp ne i32 %i.0, %shl, !dbg !4947
  br i1 %exitcond, label %for.body, label %for.cond27.preheader, !dbg !4949

for.cond27.preheader:                             ; preds = %for.cond
  br label %for.cond27, !dbg !4950

for.body:                                         ; preds = %for.cond
  %cmp6 = icmp eq i32 %j.0, 0, !dbg !4952
  br i1 %cmp6, label %if.then, label %if.else, !dbg !4952

if.then:                                          ; preds = %for.body
  %2 = shl i32 %tmp.0, 24, !dbg !4955
  %3 = lshr i32 %tmp.0, 8, !dbg !4955
  %4 = or i32 %2, %3, !dbg !4955
    #dbg_value(i32 %4, !4939, !DIExpression(), !4921)
  %call = call fastcc i32 @sub_word(i32 noundef %4) #4, !dbg !4957
  %arrayidx9 = getelementptr inbounds nuw [10 x i8], ptr @Rcon, i32 0, i32 %k.0, !dbg !4958
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !4958
  %conv = zext i8 %5 to i32, !dbg !4958
  %xor = xor i32 %call, %conv, !dbg !4959
    #dbg_value(i32 %xor, !4939, !DIExpression(), !4921)
  br label %if.end16, !dbg !4960

if.else:                                          ; preds = %for.body
  %cmp10 = icmp samesign ugt i32 %key_len, 27, !dbg !4961
  %cmp12 = icmp eq i32 %j.0, 4
  %or.cond = and i1 %cmp10, %cmp12, !dbg !4963
  br i1 %or.cond, label %if.then14, label %if.end16, !dbg !4963

if.then14:                                        ; preds = %if.else
  %call15 = call fastcc i32 @sub_word(i32 noundef %tmp.0) #4, !dbg !4964
    #dbg_value(i32 %call15, !4939, !DIExpression(), !4921)
  br label %if.end16, !dbg !4966

if.end16:                                         ; preds = %if.else, %if.then14, %if.then
  %tmp.2 = phi i32 [ %xor, %if.then ], [ %call15, %if.then14 ], [ %tmp.0, %if.else ], !dbg !4967
    #dbg_value(i32 %tmp.2, !4939, !DIExpression(), !4921)
  %sub17 = sub nuw nsw i32 %i.0, %shr1, !dbg !4968
  %arrayidx18 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub17, !dbg !4969
  %6 = load i32, ptr %arrayidx18, align 4, !dbg !4969
  %xor19 = xor i32 %tmp.2, %6, !dbg !4970
    #dbg_value(i32 %xor19, !4939, !DIExpression(), !4921)
  %arrayidx20 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %i.0, !dbg !4971
  store i32 %xor19, ptr %arrayidx20, align 4, !dbg !4972
  %inc = add i32 %j.0, 1, !dbg !4973
    #dbg_value(i32 %inc, !4941, !DIExpression(), !4921)
  %cmp21 = icmp eq i32 %inc, %shr1, !dbg !4975
  %spec.select = select i1 %cmp21, i32 0, i32 %inc, !dbg !4975
  %inc24 = zext i1 %cmp21 to i32, !dbg !4975
  %spec.select1 = add i32 %k.0, %inc24, !dbg !4975
    #dbg_value(i32 %spec.select1, !4942, !DIExpression(), !4921)
    #dbg_value(i32 %spec.select, !4941, !DIExpression(), !4921)
  %inc26 = add nuw nsw i32 %i.0, 1, !dbg !4976
    #dbg_value(i32 %inc26, !4940, !DIExpression(), !4921)
  br label %for.cond, !dbg !4977, !llvm.loop !4978

for.cond27:                                       ; preds = %for.cond27.preheader, %for.body30
  %i.1 = phi i32 [ %add73, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !4980
  %j.2 = phi i32 [ %add74, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !4980
    #dbg_value(i32 %j.2, !4941, !DIExpression(), !4921)
    #dbg_value(i32 %i.1, !4940, !DIExpression(), !4921)
  %cmp28 = icmp samesign ult i32 %i.1, %shl, !dbg !4981
  br i1 %cmp28, label %for.body30, label %for.end75, !dbg !4950

for.body30:                                       ; preds = %for.cond27
    #dbg_declare(ptr %q, !4983, !DIExpression(), !4988)
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !4989
  %add.ptr = getelementptr inbounds nuw i32, ptr %skey, i32 %i.1, !dbg !4990
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q, ptr noundef nonnull %arrayidx32, ptr noundef nonnull %add.ptr) #4, !dbg !4991
  %7 = load i64, ptr %q, align 8, !dbg !4992
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !4993
  store i64 %7, ptr %arrayidx35, align 8, !dbg !4994
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !4995
  store i64 %7, ptr %arrayidx37, align 8, !dbg !4996
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !4997
  store i64 %7, ptr %arrayidx39, align 8, !dbg !4998
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !4999
  %8 = load i64, ptr %arrayidx40, align 8, !dbg !4999
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5000
  store i64 %8, ptr %arrayidx41, align 8, !dbg !5001
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5002
  store i64 %8, ptr %arrayidx43, align 8, !dbg !5003
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5004
  store i64 %8, ptr %arrayidx45, align 8, !dbg !5005
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5006
  %9 = load i64, ptr %q, align 8, !dbg !5007
  %and = and i64 %9, 1229782938247303441, !dbg !5008
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5009
  %10 = load i64, ptr %arrayidx48, align 8, !dbg !5009
  %and49 = and i64 %10, 2459565876494606882, !dbg !5010
  %or50 = or disjoint i64 %and, %and49, !dbg !5011
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5012
  %11 = load i64, ptr %arrayidx51, align 8, !dbg !5012
  %and52 = and i64 %11, 4919131752989213764, !dbg !5013
  %or53 = or disjoint i64 %or50, %and52, !dbg !5014
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5015
  %12 = load i64, ptr %arrayidx54, align 8, !dbg !5015
  %and55 = and i64 %12, -8608480567731124088, !dbg !5016
  %or56 = or disjoint i64 %or53, %and55, !dbg !5017
  %arrayidx58 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %j.2, !dbg !5018
  store i64 %or56, ptr %arrayidx58, align 8, !dbg !5019
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5020
  %13 = load i64, ptr %arrayidx59, align 8, !dbg !5020
  %and60 = and i64 %13, 1229782938247303441, !dbg !5021
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5022
  %14 = load i64, ptr %arrayidx61, align 8, !dbg !5022
  %and62 = and i64 %14, 2459565876494606882, !dbg !5023
  %or63 = or disjoint i64 %and60, %and62, !dbg !5024
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5025
  %15 = load i64, ptr %arrayidx64, align 8, !dbg !5025
  %and65 = and i64 %15, 4919131752989213764, !dbg !5026
  %or66 = or disjoint i64 %or63, %and65, !dbg !5027
  %arrayidx67 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5028
  %16 = load i64, ptr %arrayidx67, align 8, !dbg !5028
  %and68 = and i64 %16, -8608480567731124088, !dbg !5029
  %or69 = or disjoint i64 %or66, %and68, !dbg !5030
  %add70 = or disjoint i32 %j.2, 1, !dbg !5031
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %add70, !dbg !5032
  store i64 %or69, ptr %arrayidx71, align 8, !dbg !5033
  %add73 = add nuw nsw i32 %i.1, 4, !dbg !5034
    #dbg_value(i32 %add73, !4940, !DIExpression(), !4921)
  %add74 = add nuw nsw i32 %j.2, 2, !dbg !5035
    #dbg_value(i32 %add74, !4941, !DIExpression(), !4921)
  br label %for.cond27, !dbg !5036, !llvm.loop !5037

for.end75:                                        ; preds = %for.cond27
  ret void, !dbg !5039
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_skey_expand(ptr noundef %skey, ptr noundef nonnull %comp_skey, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5040 {
entry:
    #dbg_value(ptr %skey, !5043, !DIExpression(), !5044)
    #dbg_value(ptr %comp_skey, !5045, !DIExpression(), !5044)
    #dbg_value(i32 %nrounds, !5046, !DIExpression(), !5044)
  %add = shl nuw nsw i32 %nrounds, 1, !dbg !5047
  %shl = add nuw nsw i32 %add, 2, !dbg !5047
    #dbg_value(i32 %shl, !5048, !DIExpression(), !5044)
    #dbg_value(i32 0, !5049, !DIExpression(), !5044)
    #dbg_value(i32 0, !5050, !DIExpression(), !5044)
  br label %for.cond, !dbg !5051

for.cond:                                         ; preds = %for.body, %entry
  %u.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5053
  %v.0 = phi i32 [ 0, %entry ], [ %add21, %for.body ], !dbg !5053
    #dbg_value(i32 %v.0, !5050, !DIExpression(), !5044)
    #dbg_value(i32 %u.0, !5049, !DIExpression(), !5044)
  %exitcond = icmp ne i32 %u.0, %shl, !dbg !5054
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5056

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %u.0, !dbg !5057
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5057
    #dbg_value(i64 %0, !5059, !DIExpression(), !5060)
    #dbg_value(i64 %0, !5061, !DIExpression(), !5060)
    #dbg_value(i64 %0, !5062, !DIExpression(), !5060)
    #dbg_value(i64 %0, !5063, !DIExpression(), !5060)
  %and = and i64 %0, 1229782938247303441, !dbg !5064
    #dbg_value(i64 %and, !5063, !DIExpression(), !5060)
    #dbg_value(i64 %0, !5062, !DIExpression(DW_OP_constu, 2459565876494606882, DW_OP_and, DW_OP_stack_value), !5060)
    #dbg_value(i64 %0, !5061, !DIExpression(DW_OP_constu, 4919131752989213764, DW_OP_and, DW_OP_stack_value), !5060)
    #dbg_value(i64 %0, !5059, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !5060)
  %and1 = lshr i64 %0, 1, !dbg !5065
  %shr = and i64 %and1, 1229782938247303441, !dbg !5065
    #dbg_value(i64 %shr, !5062, !DIExpression(), !5060)
  %and2 = lshr i64 %0, 2, !dbg !5066
  %shr4 = and i64 %and2, 1229782938247303441, !dbg !5066
    #dbg_value(i64 %shr4, !5061, !DIExpression(), !5060)
  %and3 = lshr i64 %0, 3, !dbg !5067
  %shr5 = and i64 %and3, 1229782938247303441, !dbg !5067
    #dbg_value(i64 %shr5, !5059, !DIExpression(), !5060)
  %sub = mul nuw i64 %and, 15, !dbg !5068
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %skey, i32 %v.0, !dbg !5069
  store i64 %sub, ptr %arrayidx8, align 8, !dbg !5070
  %sub10 = mul nuw i64 %shr, 15, !dbg !5071
  %add11 = or disjoint i32 %v.0, 1, !dbg !5072
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %skey, i32 %add11, !dbg !5073
  store i64 %sub10, ptr %arrayidx12, align 8, !dbg !5074
  %sub14 = mul nuw i64 %shr4, 15, !dbg !5075
  %add15 = or disjoint i32 %v.0, 2, !dbg !5076
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %skey, i32 %add15, !dbg !5077
  store i64 %sub14, ptr %arrayidx16, align 8, !dbg !5078
  %sub18 = mul nuw i64 %shr5, 15, !dbg !5079
  %add19 = or disjoint i32 %v.0, 3, !dbg !5080
  %arrayidx20 = getelementptr inbounds nuw i64, ptr %skey, i32 %add19, !dbg !5081
  store i64 %sub18, ptr %arrayidx20, align 8, !dbg !5082
  %inc = add nuw nsw i32 %u.0, 1, !dbg !5083
    #dbg_value(i32 %inc, !5049, !DIExpression(), !5044)
  %add21 = add nuw nsw i32 %v.0, 4, !dbg !5084
    #dbg_value(i32 %add21, !5050, !DIExpression(), !5044)
  br label %for.cond, !dbg !5085, !llvm.loop !5086

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5088
}

; Function Attrs: nounwind
define internal fastcc void @br_range_dec32le(ptr noundef nonnull %v, i32 noundef range(i32 3, 17) %num, ptr noundef %src) unnamed_addr #0 !dbg !5089 {
entry:
    #dbg_value(ptr %v, !5093, !DIExpression(), !5094)
    #dbg_value(i32 %num, !5095, !DIExpression(), !5094)
    #dbg_value(ptr %src, !5096, !DIExpression(), !5094)
  br label %while.cond, !dbg !5097

while.cond:                                       ; preds = %while.body, %entry
  %src.addr.0 = phi ptr [ %src, %entry ], [ %add.ptr, %while.body ]
  %num.addr.0 = phi i32 [ %num, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
    #dbg_value(ptr %v.addr.0, !5093, !DIExpression(), !5094)
    #dbg_value(i32 %num.addr.0, !5095, !DIExpression(), !5094)
    #dbg_value(ptr %src.addr.0, !5096, !DIExpression(), !5094)
    #dbg_value(i32 %num.addr.0, !5095, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5094)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5098
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5097

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5099
    #dbg_value(i32 %dec, !5095, !DIExpression(), !5094)
  %call = call fastcc i32 @br_dec32le(ptr noundef %src.addr.0) #4, !dbg !5100
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5102
    #dbg_value(ptr %incdec.ptr, !5093, !DIExpression(), !5094)
  store i32 %call, ptr %v.addr.0, align 4, !dbg !5103
  %add.ptr = getelementptr inbounds nuw i8, ptr %src.addr.0, i32 4, !dbg !5104
    #dbg_value(ptr %add.ptr, !5096, !DIExpression(), !5094)
  br label %while.cond, !dbg !5097, !llvm.loop !5105

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5107
}

; Function Attrs: nounwind
define internal fastcc i32 @sub_word(i32 noundef %x) unnamed_addr #0 !dbg !5108 {
entry:
  %q = alloca [8 x i64], align 8
    #dbg_value(i32 %x, !5111, !DIExpression(), !5112)
    #dbg_declare(ptr %q, !5113, !DIExpression(), !5114)
  %call = call ptr @memset(ptr noundef nonnull %q, i32 noundef 0, i32 noundef 64) #6, !dbg !5115
  %conv = zext i32 %x to i64, !dbg !5116
  store i64 %conv, ptr %q, align 8, !dbg !5117
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5118
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5119
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5120
  %0 = load i64, ptr %q, align 8, !dbg !5121
  %conv5 = trunc i64 %0 to i32, !dbg !5122
  ret i32 %conv5, !dbg !5123
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q0, ptr noundef nonnull %q1, ptr noundef nonnull %w) unnamed_addr #0 !dbg !5124 {
entry:
    #dbg_value(ptr %q0, !5129, !DIExpression(), !5130)
    #dbg_value(ptr %q1, !5131, !DIExpression(), !5130)
    #dbg_value(ptr %w, !5132, !DIExpression(), !5130)
  %0 = load i32, ptr %w, align 4, !dbg !5133
  %conv = zext i32 %0 to i64, !dbg !5133
    #dbg_value(i64 %conv, !5134, !DIExpression(), !5130)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5135
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !5135
  %conv2 = zext i32 %1 to i64, !dbg !5135
    #dbg_value(i64 %conv2, !5136, !DIExpression(), !5130)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5137
  %2 = load i32, ptr %arrayidx3, align 4, !dbg !5137
  %conv4 = zext i32 %2 to i64, !dbg !5137
    #dbg_value(i64 %conv4, !5138, !DIExpression(), !5130)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5139
  %3 = load i32, ptr %arrayidx5, align 4, !dbg !5139
  %conv6 = zext i32 %3 to i64, !dbg !5139
    #dbg_value(i64 %conv6, !5140, !DIExpression(), !5130)
  %shl = shl nuw nsw i64 %conv, 16, !dbg !5141
  %or = or i64 %shl, %conv, !dbg !5142
    #dbg_value(i64 %or, !5134, !DIExpression(), !5130)
  %shl7 = shl nuw nsw i64 %conv2, 16, !dbg !5143
  %or8 = or i64 %shl7, %conv2, !dbg !5144
    #dbg_value(i64 %or8, !5136, !DIExpression(), !5130)
  %shl9 = shl nuw nsw i64 %conv4, 16, !dbg !5145
  %or10 = or i64 %shl9, %conv4, !dbg !5146
    #dbg_value(i64 %or10, !5138, !DIExpression(), !5130)
  %shl11 = shl nuw nsw i64 %conv6, 16, !dbg !5147
  %or12 = or i64 %shl11, %conv6, !dbg !5148
    #dbg_value(i64 %or12, !5140, !DIExpression(), !5130)
  %and = and i64 %or, 281470681808895, !dbg !5149
    #dbg_value(i64 %and, !5134, !DIExpression(), !5130)
  %and13 = and i64 %or8, 281470681808895, !dbg !5150
    #dbg_value(i64 %and13, !5136, !DIExpression(), !5130)
  %and14 = and i64 %or10, 281470681808895, !dbg !5151
    #dbg_value(i64 %and14, !5138, !DIExpression(), !5130)
  %and15 = and i64 %or12, 281470681808895, !dbg !5152
    #dbg_value(i64 %and15, !5140, !DIExpression(), !5130)
  %shl16 = shl nuw nsw i64 %and, 8, !dbg !5153
  %or17 = or i64 %and, %shl16, !dbg !5154
    #dbg_value(i64 %or17, !5134, !DIExpression(), !5130)
  %shl18 = shl nuw nsw i64 %and13, 8, !dbg !5155
  %or19 = or i64 %and13, %shl18, !dbg !5156
    #dbg_value(i64 %or19, !5136, !DIExpression(), !5130)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5138, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5130)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5140, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5130)
  %and24 = and i64 %or17, 71777214294589695, !dbg !5157
    #dbg_value(i64 %and24, !5134, !DIExpression(), !5130)
  %and25 = and i64 %or19, 71777214294589695, !dbg !5158
    #dbg_value(i64 %and25, !5136, !DIExpression(), !5130)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5138, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5130)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5140, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5130)
  %4 = shl nuw i64 %and14, 16, !dbg !5159
  %5 = shl nuw nsw i64 %and14, 8, !dbg !5159
  %and26 = or i64 %4, %5, !dbg !5159
  %shl28 = and i64 %and26, -71777214294589696, !dbg !5159
  %or29 = or disjoint i64 %and24, %shl28, !dbg !5160
  store i64 %or29, ptr %q0, align 8, !dbg !5161
  %6 = shl nuw i64 %and15, 16, !dbg !5162
  %7 = shl nuw nsw i64 %and15, 8, !dbg !5162
  %and27 = or i64 %6, %7, !dbg !5162
  %shl30 = and i64 %and27, -71777214294589696, !dbg !5162
  %or31 = or disjoint i64 %and25, %shl30, !dbg !5163
  store i64 %or31, ptr %q1, align 8, !dbg !5164
  ret void, !dbg !5165
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5166 {
entry:
    #dbg_value(ptr %q, !5167, !DIExpression(), !5168)
  %0 = load i64, ptr %q, align 8, !dbg !5169
    #dbg_value(i64 %0, !5171, !DIExpression(), !5172)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5169
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5169
    #dbg_value(i64 %1, !5173, !DIExpression(), !5172)
  %and = and i64 %0, 6148914691236517205, !dbg !5169
  %and2 = shl i64 %1, 1, !dbg !5169
  %shl = and i64 %and2, -6148914691236517206, !dbg !5169
  %or = or disjoint i64 %and, %shl, !dbg !5169
  store i64 %or, ptr %q, align 8, !dbg !5169
  %and4 = lshr i64 %0, 1, !dbg !5169
  %shr = and i64 %and4, 6148914691236517205, !dbg !5169
  %and5 = and i64 %1, -6148914691236517206, !dbg !5169
  %or6 = or disjoint i64 %shr, %and5, !dbg !5169
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5169
  store i64 %or6, ptr %arrayidx7, align 8, !dbg !5169
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5174
  %2 = load i64, ptr %arrayidx11, align 8, !dbg !5174
    #dbg_value(i64 %2, !5176, !DIExpression(), !5177)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5174
  %3 = load i64, ptr %arrayidx12, align 8, !dbg !5174
    #dbg_value(i64 %3, !5178, !DIExpression(), !5177)
  %and13 = and i64 %2, 6148914691236517205, !dbg !5174
  %and14 = shl i64 %3, 1, !dbg !5174
  %shl15 = and i64 %and14, -6148914691236517206, !dbg !5174
  %or16 = or disjoint i64 %and13, %shl15, !dbg !5174
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5174
  store i64 %or16, ptr %arrayidx17, align 8, !dbg !5174
  %and18 = lshr i64 %2, 1, !dbg !5174
  %shr19 = and i64 %and18, 6148914691236517205, !dbg !5174
  %and20 = and i64 %3, -6148914691236517206, !dbg !5174
  %or21 = or disjoint i64 %shr19, %and20, !dbg !5174
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5174
  store i64 %or21, ptr %arrayidx22, align 8, !dbg !5174
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5179
  %4 = load i64, ptr %arrayidx27, align 8, !dbg !5179
    #dbg_value(i64 %4, !5181, !DIExpression(), !5182)
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5179
  %5 = load i64, ptr %arrayidx28, align 8, !dbg !5179
    #dbg_value(i64 %5, !5183, !DIExpression(), !5182)
  %and29 = and i64 %4, 6148914691236517205, !dbg !5179
  %and30 = shl i64 %5, 1, !dbg !5179
  %shl31 = and i64 %and30, -6148914691236517206, !dbg !5179
  %or32 = or disjoint i64 %and29, %shl31, !dbg !5179
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5179
  store i64 %or32, ptr %arrayidx33, align 8, !dbg !5179
  %and34 = lshr i64 %4, 1, !dbg !5179
  %shr35 = and i64 %and34, 6148914691236517205, !dbg !5179
  %and36 = and i64 %5, -6148914691236517206, !dbg !5179
  %or37 = or disjoint i64 %shr35, %and36, !dbg !5179
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5179
  store i64 %or37, ptr %arrayidx38, align 8, !dbg !5179
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5184
  %6 = load i64, ptr %arrayidx43, align 8, !dbg !5184
    #dbg_value(i64 %6, !5186, !DIExpression(), !5187)
  %arrayidx44 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5184
  %7 = load i64, ptr %arrayidx44, align 8, !dbg !5184
    #dbg_value(i64 %7, !5188, !DIExpression(), !5187)
  %and45 = and i64 %6, 6148914691236517205, !dbg !5184
  %and46 = shl i64 %7, 1, !dbg !5184
  %shl47 = and i64 %and46, -6148914691236517206, !dbg !5184
  %or48 = or disjoint i64 %and45, %shl47, !dbg !5184
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5184
  store i64 %or48, ptr %arrayidx49, align 8, !dbg !5184
  %and50 = lshr i64 %6, 1, !dbg !5184
  %shr51 = and i64 %and50, 6148914691236517205, !dbg !5184
  %and52 = and i64 %7, -6148914691236517206, !dbg !5184
  %or53 = or disjoint i64 %shr51, %and52, !dbg !5184
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5184
  store i64 %or53, ptr %arrayidx54, align 8, !dbg !5184
  %8 = load i64, ptr %q, align 8, !dbg !5189
    #dbg_value(i64 %8, !5191, !DIExpression(), !5192)
  %arrayidx60 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5189
  %9 = load i64, ptr %arrayidx60, align 8, !dbg !5189
    #dbg_value(i64 %9, !5193, !DIExpression(), !5192)
  %and61 = and i64 %8, 3689348814741910323, !dbg !5189
  %and62 = shl i64 %9, 2, !dbg !5189
  %shl63 = and i64 %and62, -3689348814741910324, !dbg !5189
  %or64 = or disjoint i64 %and61, %shl63, !dbg !5189
  store i64 %or64, ptr %q, align 8, !dbg !5189
  %and66 = lshr i64 %8, 2, !dbg !5189
  %shr67 = and i64 %and66, 3689348814741910323, !dbg !5189
  %and68 = and i64 %9, -3689348814741910324, !dbg !5189
  %or69 = or disjoint i64 %shr67, %and68, !dbg !5189
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5189
  store i64 %or69, ptr %arrayidx70, align 8, !dbg !5189
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5194
  %10 = load i64, ptr %arrayidx75, align 8, !dbg !5194
    #dbg_value(i64 %10, !5196, !DIExpression(), !5197)
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5194
  %11 = load i64, ptr %arrayidx76, align 8, !dbg !5194
    #dbg_value(i64 %11, !5198, !DIExpression(), !5197)
  %and77 = and i64 %10, 3689348814741910323, !dbg !5194
  %and78 = shl i64 %11, 2, !dbg !5194
  %shl79 = and i64 %and78, -3689348814741910324, !dbg !5194
  %or80 = or disjoint i64 %and77, %shl79, !dbg !5194
  %arrayidx81 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5194
  store i64 %or80, ptr %arrayidx81, align 8, !dbg !5194
  %and82 = lshr i64 %10, 2, !dbg !5194
  %shr83 = and i64 %and82, 3689348814741910323, !dbg !5194
  %and84 = and i64 %11, -3689348814741910324, !dbg !5194
  %or85 = or disjoint i64 %shr83, %and84, !dbg !5194
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5194
  store i64 %or85, ptr %arrayidx86, align 8, !dbg !5194
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5199
  %12 = load i64, ptr %arrayidx91, align 8, !dbg !5199
    #dbg_value(i64 %12, !5201, !DIExpression(), !5202)
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5199
  %13 = load i64, ptr %arrayidx92, align 8, !dbg !5199
    #dbg_value(i64 %13, !5203, !DIExpression(), !5202)
  %and93 = and i64 %12, 3689348814741910323, !dbg !5199
  %and94 = shl i64 %13, 2, !dbg !5199
  %shl95 = and i64 %and94, -3689348814741910324, !dbg !5199
  %or96 = or disjoint i64 %and93, %shl95, !dbg !5199
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5199
  store i64 %or96, ptr %arrayidx97, align 8, !dbg !5199
  %and98 = lshr i64 %12, 2, !dbg !5199
  %shr99 = and i64 %and98, 3689348814741910323, !dbg !5199
  %and100 = and i64 %13, -3689348814741910324, !dbg !5199
  %or101 = or disjoint i64 %shr99, %and100, !dbg !5199
  %arrayidx102 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5199
  store i64 %or101, ptr %arrayidx102, align 8, !dbg !5199
  %arrayidx107 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5204
  %14 = load i64, ptr %arrayidx107, align 8, !dbg !5204
    #dbg_value(i64 %14, !5206, !DIExpression(), !5207)
  %arrayidx108 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5204
  %15 = load i64, ptr %arrayidx108, align 8, !dbg !5204
    #dbg_value(i64 %15, !5208, !DIExpression(), !5207)
  %and109 = and i64 %14, 3689348814741910323, !dbg !5204
  %and110 = shl i64 %15, 2, !dbg !5204
  %shl111 = and i64 %and110, -3689348814741910324, !dbg !5204
  %or112 = or disjoint i64 %and109, %shl111, !dbg !5204
  %arrayidx113 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5204
  store i64 %or112, ptr %arrayidx113, align 8, !dbg !5204
  %and114 = lshr i64 %14, 2, !dbg !5204
  %shr115 = and i64 %and114, 3689348814741910323, !dbg !5204
  %and116 = and i64 %15, -3689348814741910324, !dbg !5204
  %or117 = or disjoint i64 %shr115, %and116, !dbg !5204
  %arrayidx118 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5204
  store i64 %or117, ptr %arrayidx118, align 8, !dbg !5204
  %16 = load i64, ptr %q, align 8, !dbg !5209
    #dbg_value(i64 %16, !5211, !DIExpression(), !5212)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5209
  %17 = load i64, ptr %arrayidx124, align 8, !dbg !5209
    #dbg_value(i64 %17, !5213, !DIExpression(), !5212)
  %and125 = and i64 %16, 1085102592571150095, !dbg !5209
  %and126 = shl i64 %17, 4, !dbg !5209
  %shl127 = and i64 %and126, -1085102592571150096, !dbg !5209
  %or128 = or disjoint i64 %and125, %shl127, !dbg !5209
  store i64 %or128, ptr %q, align 8, !dbg !5209
  %and130 = lshr i64 %16, 4, !dbg !5209
  %shr131 = and i64 %and130, 1085102592571150095, !dbg !5209
  %and132 = and i64 %17, -1085102592571150096, !dbg !5209
  %or133 = or disjoint i64 %shr131, %and132, !dbg !5209
  %arrayidx134 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5209
  store i64 %or133, ptr %arrayidx134, align 8, !dbg !5209
  %arrayidx139 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5214
  %18 = load i64, ptr %arrayidx139, align 8, !dbg !5214
    #dbg_value(i64 %18, !5216, !DIExpression(), !5217)
  %arrayidx140 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5214
  %19 = load i64, ptr %arrayidx140, align 8, !dbg !5214
    #dbg_value(i64 %19, !5218, !DIExpression(), !5217)
  %and141 = and i64 %18, 1085102592571150095, !dbg !5214
  %and142 = shl i64 %19, 4, !dbg !5214
  %shl143 = and i64 %and142, -1085102592571150096, !dbg !5214
  %or144 = or disjoint i64 %and141, %shl143, !dbg !5214
  %arrayidx145 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5214
  store i64 %or144, ptr %arrayidx145, align 8, !dbg !5214
  %and146 = lshr i64 %18, 4, !dbg !5214
  %shr147 = and i64 %and146, 1085102592571150095, !dbg !5214
  %and148 = and i64 %19, -1085102592571150096, !dbg !5214
  %or149 = or disjoint i64 %shr147, %and148, !dbg !5214
  %arrayidx150 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5214
  store i64 %or149, ptr %arrayidx150, align 8, !dbg !5214
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5219
  %20 = load i64, ptr %arrayidx155, align 8, !dbg !5219
    #dbg_value(i64 %20, !5221, !DIExpression(), !5222)
  %arrayidx156 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5219
  %21 = load i64, ptr %arrayidx156, align 8, !dbg !5219
    #dbg_value(i64 %21, !5223, !DIExpression(), !5222)
  %and157 = and i64 %20, 1085102592571150095, !dbg !5219
  %and158 = shl i64 %21, 4, !dbg !5219
  %shl159 = and i64 %and158, -1085102592571150096, !dbg !5219
  %or160 = or disjoint i64 %and157, %shl159, !dbg !5219
  %arrayidx161 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5219
  store i64 %or160, ptr %arrayidx161, align 8, !dbg !5219
  %and162 = lshr i64 %20, 4, !dbg !5219
  %shr163 = and i64 %and162, 1085102592571150095, !dbg !5219
  %and164 = and i64 %21, -1085102592571150096, !dbg !5219
  %or165 = or disjoint i64 %shr163, %and164, !dbg !5219
  %arrayidx166 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5219
  store i64 %or165, ptr %arrayidx166, align 8, !dbg !5219
  %arrayidx171 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5224
  %22 = load i64, ptr %arrayidx171, align 8, !dbg !5224
    #dbg_value(i64 %22, !5226, !DIExpression(), !5227)
  %arrayidx172 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5224
  %23 = load i64, ptr %arrayidx172, align 8, !dbg !5224
    #dbg_value(i64 %23, !5228, !DIExpression(), !5227)
  %and173 = and i64 %22, 1085102592571150095, !dbg !5224
  %and174 = shl i64 %23, 4, !dbg !5224
  %shl175 = and i64 %and174, -1085102592571150096, !dbg !5224
  %or176 = or disjoint i64 %and173, %shl175, !dbg !5224
  %arrayidx177 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5224
  store i64 %or176, ptr %arrayidx177, align 8, !dbg !5224
  %and178 = lshr i64 %22, 4, !dbg !5224
  %shr179 = and i64 %and178, 1085102592571150095, !dbg !5224
  %and180 = and i64 %23, -1085102592571150096, !dbg !5224
  %or181 = or disjoint i64 %shr179, %and180, !dbg !5224
  %arrayidx182 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5224
  store i64 %or181, ptr %arrayidx182, align 8, !dbg !5224
  ret void, !dbg !5229
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5230 {
entry:
    #dbg_value(ptr %q, !5231, !DIExpression(), !5232)
  %arrayidx = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5233
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5233
    #dbg_value(i64 %0, !5234, !DIExpression(), !5232)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5235
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5235
    #dbg_value(i64 %1, !5236, !DIExpression(), !5232)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5237
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5237
    #dbg_value(i64 %2, !5238, !DIExpression(), !5232)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5239
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5239
    #dbg_value(i64 %3, !5240, !DIExpression(), !5232)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5241
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5241
    #dbg_value(i64 %4, !5242, !DIExpression(), !5232)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5243
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5243
    #dbg_value(i64 %5, !5244, !DIExpression(), !5232)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5245
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5245
    #dbg_value(i64 %6, !5246, !DIExpression(), !5232)
  %7 = load i64, ptr %q, align 8, !dbg !5247
    #dbg_value(i64 %7, !5248, !DIExpression(), !5232)
  %xor = xor i64 %3, %5, !dbg !5249
    #dbg_value(i64 %xor, !5250, !DIExpression(), !5232)
  %xor8 = xor i64 %0, %6, !dbg !5251
    #dbg_value(i64 %xor8, !5252, !DIExpression(), !5232)
  %xor9 = xor i64 %0, %3, !dbg !5253
    #dbg_value(i64 %xor9, !5254, !DIExpression(), !5232)
  %xor10 = xor i64 %0, %5, !dbg !5255
    #dbg_value(i64 %xor10, !5256, !DIExpression(), !5232)
  %xor11 = xor i64 %1, %2, !dbg !5257
    #dbg_value(i64 %xor11, !5258, !DIExpression(), !5232)
  %xor12 = xor i64 %xor11, %7, !dbg !5259
    #dbg_value(i64 %xor12, !5260, !DIExpression(), !5232)
  %xor13 = xor i64 %xor12, %3, !dbg !5261
    #dbg_value(i64 %xor13, !5262, !DIExpression(), !5232)
  %xor14 = xor i64 %xor8, %xor, !dbg !5263
    #dbg_value(i64 %xor14, !5264, !DIExpression(), !5232)
  %xor15 = xor i64 %xor12, %0, !dbg !5265
    #dbg_value(i64 %xor15, !5266, !DIExpression(), !5232)
  %xor16 = xor i64 %xor12, %6, !dbg !5267
    #dbg_value(i64 %xor16, !5268, !DIExpression(), !5232)
  %xor17 = xor i64 %xor16, %xor10, !dbg !5269
    #dbg_value(i64 %xor17, !5270, !DIExpression(), !5232)
  %xor18 = xor i64 %4, %xor14, !dbg !5271
    #dbg_value(i64 %xor18, !5272, !DIExpression(), !5232)
  %xor19 = xor i64 %xor18, %5, !dbg !5273
    #dbg_value(i64 %xor19, !5274, !DIExpression(), !5232)
  %xor20 = xor i64 %xor18, %1, !dbg !5275
    #dbg_value(i64 %xor20, !5276, !DIExpression(), !5232)
  %xor21 = xor i64 %xor19, %7, !dbg !5277
    #dbg_value(i64 %xor21, !5278, !DIExpression(), !5232)
  %xor22 = xor i64 %xor19, %xor11, !dbg !5279
    #dbg_value(i64 %xor22, !5280, !DIExpression(), !5232)
  %xor23 = xor i64 %xor20, %xor9, !dbg !5281
    #dbg_value(i64 %xor23, !5282, !DIExpression(), !5232)
  %xor24 = xor i64 %7, %xor23, !dbg !5283
    #dbg_value(i64 %xor24, !5284, !DIExpression(), !5232)
  %xor25 = xor i64 %xor22, %xor23, !dbg !5285
    #dbg_value(i64 %xor25, !5286, !DIExpression(), !5232)
    #dbg_value(!DIArgList(i64 %xor22, i64 %xor10), !5287, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5232)
  %xor27 = xor i64 %xor11, %xor23, !dbg !5288
    #dbg_value(i64 %xor27, !5289, !DIExpression(), !5232)
    #dbg_value(!DIArgList(i64 %xor8, i64 %xor27), !5290, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5232)
    #dbg_value(!DIArgList(i64 %0, i64 %xor27), !5291, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5232)
  %and = and i64 %xor14, %xor19, !dbg !5292
    #dbg_value(i64 %and, !5293, !DIExpression(), !5232)
  %and30 = and i64 %xor17, %xor21, !dbg !5294
    #dbg_value(i64 %and30, !5295, !DIExpression(), !5232)
  %xor31 = xor i64 %and30, %and, !dbg !5296
    #dbg_value(i64 %xor31, !5297, !DIExpression(), !5232)
  %and32 = and i64 %xor13, %7, !dbg !5298
    #dbg_value(i64 %and32, !5299, !DIExpression(), !5232)
    #dbg_value(!DIArgList(i64 %and32, i64 %and), !5300, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5232)
  %and34 = and i64 %xor8, %xor27, !dbg !5301
    #dbg_value(i64 %and34, !5302, !DIExpression(), !5232)
  %and35 = and i64 %xor16, %xor12, !dbg !5303
    #dbg_value(i64 %and35, !5304, !DIExpression(), !5232)
    #dbg_value(!DIArgList(i64 %and35, i64 %and34), !5305, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5232)
  %and37 = and i64 %xor15, %xor24, !dbg !5306
    #dbg_value(i64 %and37, !5307, !DIExpression(), !5232)
    #dbg_value(!DIArgList(i64 %and37, i64 %and34), !5308, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5232)
  %and39 = and i64 %xor9, %xor23, !dbg !5309
    #dbg_value(i64 %and39, !5310, !DIExpression(), !5232)
  %and40 = and i64 %xor, %xor25, !dbg !5311
    #dbg_value(i64 %and40, !5312, !DIExpression(), !5232)
  %xor41 = xor i64 %and40, %and39, !dbg !5313
    #dbg_value(i64 %xor41, !5314, !DIExpression(), !5232)
  %and42 = and i64 %xor10, %xor22, !dbg !5315
    #dbg_value(i64 %and42, !5316, !DIExpression(), !5232)
  %xor43 = xor i64 %and42, %and39, !dbg !5317
    #dbg_value(i64 %xor43, !5318, !DIExpression(), !5232)
  %xor44 = xor i64 %xor31, %xor41, !dbg !5319
    #dbg_value(i64 %xor44, !5320, !DIExpression(), !5232)
    #dbg_value(!DIArgList(i64 %and32, i64 %xor43, i64 %and), !5321, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5232)
    #dbg_value(!DIArgList(i64 %and35, i64 %xor41, i64 %and34), !5322, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5232)
    #dbg_value(!DIArgList(i64 %and37, i64 %xor43, i64 %and34), !5323, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5232)
  %xor48 = xor i64 %xor44, %xor20, !dbg !5324
    #dbg_value(i64 %xor48, !5325, !DIExpression(), !5232)
  %8 = xor i64 %xor10, %and32, !dbg !5326
  %9 = xor i64 %8, %xor22, !dbg !5326
  %10 = xor i64 %9, %and, !dbg !5326
  %xor49 = xor i64 %10, %xor43, !dbg !5326
    #dbg_value(i64 %xor49, !5327, !DIExpression(), !5232)
  %11 = xor i64 %xor27, %and35, !dbg !5328
  %12 = xor i64 %11, %xor8, !dbg !5328
  %13 = xor i64 %12, %and34, !dbg !5328
  %xor50 = xor i64 %13, %xor41, !dbg !5328
    #dbg_value(i64 %xor50, !5329, !DIExpression(), !5232)
  %14 = xor i64 %xor27, %and37, !dbg !5330
  %15 = xor i64 %14, %0, !dbg !5330
  %16 = xor i64 %15, %and34, !dbg !5330
  %xor51 = xor i64 %16, %xor43, !dbg !5330
    #dbg_value(i64 %xor51, !5331, !DIExpression(), !5232)
  %xor52 = xor i64 %xor48, %xor49, !dbg !5332
    #dbg_value(i64 %xor52, !5333, !DIExpression(), !5232)
  %and53 = and i64 %xor48, %xor50, !dbg !5334
    #dbg_value(i64 %and53, !5335, !DIExpression(), !5232)
  %xor54 = xor i64 %xor51, %and53, !dbg !5336
    #dbg_value(i64 %xor54, !5337, !DIExpression(), !5232)
  %and55 = and i64 %xor52, %xor54, !dbg !5338
    #dbg_value(i64 %and55, !5339, !DIExpression(), !5232)
  %xor56 = xor i64 %and55, %xor49, !dbg !5340
    #dbg_value(i64 %xor56, !5341, !DIExpression(), !5232)
  %xor57 = xor i64 %xor50, %xor51, !dbg !5342
    #dbg_value(i64 %xor57, !5343, !DIExpression(), !5232)
  %xor58 = xor i64 %xor49, %and53, !dbg !5344
    #dbg_value(i64 %xor58, !5345, !DIExpression(), !5232)
  %and59 = and i64 %xor58, %xor57, !dbg !5346
    #dbg_value(i64 %and59, !5347, !DIExpression(), !5232)
  %xor60 = xor i64 %and59, %xor51, !dbg !5348
    #dbg_value(i64 %xor60, !5349, !DIExpression(), !5232)
  %xor61 = xor i64 %xor50, %xor60, !dbg !5350
    #dbg_value(i64 %xor61, !5351, !DIExpression(), !5232)
  %xor62 = xor i64 %and59, %and53, !dbg !5352
    #dbg_value(i64 %xor62, !5353, !DIExpression(), !5232)
  %and63 = and i64 %xor51, %xor62, !dbg !5354
    #dbg_value(i64 %and63, !5355, !DIExpression(), !5232)
  %xor64 = xor i64 %and63, %xor61, !dbg !5356
    #dbg_value(i64 %xor64, !5357, !DIExpression(), !5232)
  %xor65 = xor i64 %xor54, %and63, !dbg !5358
    #dbg_value(i64 %xor65, !5359, !DIExpression(), !5232)
  %and66 = and i64 %xor56, %xor65, !dbg !5360
    #dbg_value(i64 %and66, !5361, !DIExpression(), !5232)
  %xor67 = xor i64 %xor52, %and66, !dbg !5362
    #dbg_value(i64 %xor67, !5363, !DIExpression(), !5232)
  %xor68 = xor i64 %xor67, %xor64, !dbg !5364
    #dbg_value(i64 %xor68, !5365, !DIExpression(), !5232)
  %xor69 = xor i64 %xor56, %xor60, !dbg !5366
    #dbg_value(i64 %xor69, !5367, !DIExpression(), !5232)
  %xor70 = xor i64 %xor56, %xor67, !dbg !5368
    #dbg_value(i64 %xor70, !5369, !DIExpression(), !5232)
  %xor71 = xor i64 %and63, %xor50, !dbg !5370
    #dbg_value(i64 %xor71, !5371, !DIExpression(), !5232)
  %xor72 = xor i64 %xor69, %xor68, !dbg !5372
    #dbg_value(i64 %xor72, !5373, !DIExpression(), !5232)
  %and73 = and i64 %xor71, %xor19, !dbg !5374
    #dbg_value(i64 %and73, !5375, !DIExpression(), !5232)
  %and74 = and i64 %xor64, %xor21, !dbg !5376
    #dbg_value(i64 %and74, !5377, !DIExpression(), !5232)
  %and75 = and i64 %xor60, %7, !dbg !5378
    #dbg_value(i64 %and75, !5379, !DIExpression(), !5232)
  %and76 = and i64 %xor70, %xor27, !dbg !5380
    #dbg_value(i64 %and76, !5381, !DIExpression(), !5232)
  %and77 = and i64 %xor67, %xor12, !dbg !5382
    #dbg_value(i64 %and77, !5383, !DIExpression(), !5232)
  %and78 = and i64 %xor56, %xor24, !dbg !5384
    #dbg_value(i64 %and78, !5385, !DIExpression(), !5232)
  %and79 = and i64 %xor69, %xor23, !dbg !5386
    #dbg_value(i64 %and79, !5387, !DIExpression(), !5232)
  %and80 = and i64 %xor72, %xor25, !dbg !5388
    #dbg_value(i64 %and80, !5389, !DIExpression(), !5232)
  %and81 = and i64 %xor68, %xor22, !dbg !5390
    #dbg_value(i64 %and81, !5391, !DIExpression(), !5232)
  %and82 = and i64 %xor71, %xor14, !dbg !5392
    #dbg_value(i64 %and82, !5393, !DIExpression(), !5232)
  %and83 = and i64 %xor64, %xor17, !dbg !5394
    #dbg_value(i64 %and83, !5395, !DIExpression(), !5232)
  %and84 = and i64 %xor60, %xor13, !dbg !5396
    #dbg_value(i64 %and84, !5397, !DIExpression(), !5232)
  %and85 = and i64 %xor70, %xor8, !dbg !5398
    #dbg_value(i64 %and85, !5399, !DIExpression(), !5232)
  %and86 = and i64 %xor67, %xor16, !dbg !5400
    #dbg_value(i64 %and86, !5401, !DIExpression(), !5232)
  %and87 = and i64 %xor56, %xor15, !dbg !5402
    #dbg_value(i64 %and87, !5403, !DIExpression(), !5232)
  %and88 = and i64 %xor69, %xor9, !dbg !5404
    #dbg_value(i64 %and88, !5405, !DIExpression(), !5232)
  %and89 = and i64 %xor72, %xor, !dbg !5406
    #dbg_value(i64 %and89, !5407, !DIExpression(), !5232)
  %and90 = and i64 %xor68, %xor10, !dbg !5408
    #dbg_value(i64 %and90, !5409, !DIExpression(), !5232)
  %xor91 = xor i64 %and88, %and89, !dbg !5410
    #dbg_value(i64 %xor91, !5411, !DIExpression(), !5232)
  %xor92 = xor i64 %and83, %and84, !dbg !5412
    #dbg_value(i64 %xor92, !5413, !DIExpression(), !5232)
  %xor93 = xor i64 %and78, %and86, !dbg !5414
    #dbg_value(i64 %xor93, !5415, !DIExpression(), !5232)
  %xor94 = xor i64 %and82, %and83, !dbg !5416
    #dbg_value(i64 %xor94, !5417, !DIExpression(), !5232)
  %xor95 = xor i64 %and75, %and85, !dbg !5418
    #dbg_value(i64 %xor95, !5419, !DIExpression(), !5232)
  %xor96 = xor i64 %and75, %and78, !dbg !5420
    #dbg_value(i64 %xor96, !5421, !DIExpression(), !5232)
  %xor97 = xor i64 %and80, %and81, !dbg !5422
    #dbg_value(i64 %xor97, !5423, !DIExpression(), !5232)
  %xor98 = xor i64 %and73, %and76, !dbg !5424
    #dbg_value(i64 %xor98, !5425, !DIExpression(), !5232)
  %xor99 = xor i64 %and79, %and80, !dbg !5426
    #dbg_value(i64 %xor99, !5427, !DIExpression(), !5232)
  %xor100 = xor i64 %and89, %and90, !dbg !5428
    #dbg_value(i64 %xor100, !5429, !DIExpression(), !5232)
  %xor101 = xor i64 %and85, %xor93, !dbg !5430
    #dbg_value(i64 %xor101, !5431, !DIExpression(), !5232)
  %xor102 = xor i64 %xor95, %xor98, !dbg !5432
    #dbg_value(i64 %xor102, !5433, !DIExpression(), !5232)
  %xor103 = xor i64 %and77, %xor91, !dbg !5434
    #dbg_value(i64 %xor103, !5435, !DIExpression(), !5232)
  %xor104 = xor i64 %and76, %xor99, !dbg !5436
    #dbg_value(i64 %xor104, !5437, !DIExpression(), !5232)
  %xor105 = xor i64 %xor91, %xor102, !dbg !5438
    #dbg_value(i64 %xor105, !5439, !DIExpression(), !5232)
  %xor106 = xor i64 %and87, %xor102, !dbg !5440
    #dbg_value(i64 %xor106, !5441, !DIExpression(), !5232)
  %xor107 = xor i64 %xor97, %xor103, !dbg !5442
    #dbg_value(i64 %xor107, !5443, !DIExpression(), !5232)
  %xor108 = xor i64 %xor94, %xor103, !dbg !5444
    #dbg_value(i64 %xor108, !5445, !DIExpression(), !5232)
  %xor109 = xor i64 %and77, %xor104, !dbg !5446
    #dbg_value(i64 %xor109, !5447, !DIExpression(), !5232)
  %xor110 = xor i64 %xor106, %xor107, !dbg !5448
    #dbg_value(i64 %xor110, !5449, !DIExpression(), !5232)
  %xor111 = xor i64 %and74, %xor108, !dbg !5450
    #dbg_value(i64 %xor111, !5451, !DIExpression(), !5232)
  %xor112 = xor i64 %xor104, %xor108, !dbg !5452
    #dbg_value(i64 %xor112, !5453, !DIExpression(), !5232)
  %17 = xor i64 %xor107, %xor101, !dbg !5454
  %xor113 = xor i64 %17, -1, !dbg !5454
    #dbg_value(i64 %xor113, !5455, !DIExpression(), !5232)
  %18 = xor i64 %xor105, %xor93, !dbg !5456
  %xor115 = xor i64 %18, -1, !dbg !5456
    #dbg_value(i64 %xor115, !5457, !DIExpression(), !5232)
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor110), !5458, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5232)
  %xor117 = xor i64 %xor98, %xor111, !dbg !5459
    #dbg_value(i64 %xor117, !5460, !DIExpression(), !5232)
  %xor118 = xor i64 %xor96, %xor111, !dbg !5461
    #dbg_value(i64 %xor118, !5462, !DIExpression(), !5232)
  %xor119 = xor i64 %xor92, %xor110, !dbg !5463
    #dbg_value(i64 %xor119, !5464, !DIExpression(), !5232)
  %19 = xor i64 %xor117, %xor109, !dbg !5465
  %xor121 = xor i64 %19, -1, !dbg !5465
    #dbg_value(i64 %xor121, !5466, !DIExpression(), !5232)
  %20 = xor i64 %xor110, %xor100, !dbg !5467
  %21 = xor i64 %20, %xor109, !dbg !5467
  %xor123 = xor i64 %21, -1, !dbg !5467
    #dbg_value(i64 %xor123, !5468, !DIExpression(), !5232)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5469
  store i64 %xor112, ptr %arrayidx124, align 8, !dbg !5470
  %arrayidx125 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5471
  store i64 %xor121, ptr %arrayidx125, align 8, !dbg !5472
  %arrayidx126 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5473
  store i64 %xor123, ptr %arrayidx126, align 8, !dbg !5474
  %arrayidx127 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5475
  store i64 %xor117, ptr %arrayidx127, align 8, !dbg !5476
  %arrayidx128 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5477
  store i64 %xor118, ptr %arrayidx128, align 8, !dbg !5478
  %arrayidx129 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5479
  store i64 %xor119, ptr %arrayidx129, align 8, !dbg !5480
  %arrayidx130 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5481
  store i64 %xor113, ptr %arrayidx130, align 8, !dbg !5482
  store i64 %xor115, ptr %q, align 8, !dbg !5483
  ret void, !dbg !5484
}

; Function Attrs: nounwind
define internal fastcc i32 @br_dec32le(ptr noundef %src) unnamed_addr #0 !dbg !5485 {
entry:
    #dbg_value(ptr %src, !5488, !DIExpression(), !5489)
  %0 = load i8, ptr %src, align 1, !dbg !5490
  %conv = zext i8 %0 to i32, !dbg !5491
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %src, i32 1, !dbg !5492
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !5492
  %conv2 = zext i8 %1 to i32, !dbg !5493
  %shl = shl nuw nsw i32 %conv2, 8, !dbg !5494
  %or = or disjoint i32 %shl, %conv, !dbg !5495
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %src, i32 2, !dbg !5496
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !5496
  %conv4 = zext i8 %2 to i32, !dbg !5497
  %shl5 = shl nuw nsw i32 %conv4, 16, !dbg !5498
  %or6 = or disjoint i32 %or, %shl5, !dbg !5499
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %src, i32 3, !dbg !5500
  %3 = load i8, ptr %arrayidx7, align 1, !dbg !5500
  %conv8 = zext i8 %3 to i32, !dbg !5501
  %shl9 = shl nuw i32 %conv8, 24, !dbg !5502
  %or10 = or disjoint i32 %or6, %shl9, !dbg !5503
  ret i32 %or10, !dbg !5504
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5505 {
entry:
    #dbg_value(ptr %r, !5506, !DIExpression(), !5507)
    #dbg_value(ptr %key, !5508, !DIExpression(), !5507)
  call void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5509
  ret void, !dbg !5510
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5511 {
entry:
  %skey = alloca [26 x i64], align 8
    #dbg_value(ptr %r, !5519, !DIExpression(), !5520)
    #dbg_value(ptr %key, !5521, !DIExpression(), !5520)
    #dbg_declare(ptr %skey, !5522, !DIExpression(), !5526)
  %call = call dereferenceable_or_null(832) ptr @malloc(i32 noundef 832) #7, !dbg !5527
  store ptr %call, ptr %r, align 4, !dbg !5528
  %cmp = icmp eq ptr %call, null, !dbg !5529
  br i1 %cmp, label %if.then, label %if.end, !dbg !5529

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !5531
  br label %if.end, !dbg !5533

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 24) #4, !dbg !5534
  %0 = load ptr, ptr %r, align 4, !dbg !5535
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 12) #4, !dbg !5536
  ret void, !dbg !5537
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5538 {
entry:
    #dbg_value(ptr %r, !5539, !DIExpression(), !5540)
    #dbg_value(ptr %key, !5541, !DIExpression(), !5540)
  call void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5542
  ret void, !dbg !5543
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5544 {
entry:
  %skey = alloca [30 x i64], align 8
    #dbg_value(ptr %r, !5552, !DIExpression(), !5553)
    #dbg_value(ptr %key, !5554, !DIExpression(), !5553)
    #dbg_declare(ptr %skey, !5555, !DIExpression(), !5559)
  %call = call dereferenceable_or_null(960) ptr @malloc(i32 noundef 960) #7, !dbg !5560
  store ptr %call, ptr %r, align 4, !dbg !5561
  %cmp = icmp eq ptr %call, null, !dbg !5562
  br i1 %cmp, label %if.then, label %if.end, !dbg !5562

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !5564
  br label %if.end, !dbg !5566

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 32) #4, !dbg !5567
  %0 = load ptr, ptr %r, align 4, !dbg !5568
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 14) #4, !dbg !5569
  ret void, !dbg !5570
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5571 {
entry:
    #dbg_value(ptr %r, !5572, !DIExpression(), !5573)
    #dbg_value(ptr %key, !5574, !DIExpression(), !5573)
  call void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5575
  ret void, !dbg !5576
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5577 {
entry:
    #dbg_value(ptr %out, !5582, !DIExpression(), !5583)
    #dbg_value(ptr %in, !5584, !DIExpression(), !5583)
    #dbg_value(i32 %nblocks, !5585, !DIExpression(), !5583)
    #dbg_value(ptr %ctx, !5586, !DIExpression(), !5583)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5587
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 10) #4, !dbg !5588
  ret void, !dbg !5589
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5590 {
entry:
  %blocks = alloca [16 x i32], align 4
  %t = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5593, !DIExpression(), !5594)
    #dbg_value(ptr %in, !5595, !DIExpression(), !5594)
    #dbg_value(i32 %nblocks, !5596, !DIExpression(), !5594)
    #dbg_value(ptr %rkeys, !5597, !DIExpression(), !5594)
    #dbg_value(i32 %nrounds, !5598, !DIExpression(), !5594)
    #dbg_declare(ptr %blocks, !5599, !DIExpression(), !5601)
    #dbg_declare(ptr %t, !5602, !DIExpression(), !5603)
  br label %while.cond, !dbg !5604

while.cond:                                       ; preds = %while.body, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %sub, %while.body ]
  %in.addr.0 = phi ptr [ %in, %entry ], [ %add.ptr, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr2, %while.body ]
    #dbg_value(ptr %out.addr.0, !5593, !DIExpression(), !5594)
    #dbg_value(ptr %in.addr.0, !5595, !DIExpression(), !5594)
    #dbg_value(i32 %nblocks.addr.0, !5596, !DIExpression(), !5594)
  %cmp = icmp ugt i32 %nblocks.addr.0, 3, !dbg !5605
  br i1 %cmp, label %while.body, label %while.end, !dbg !5604

while.body:                                       ; preds = %while.cond
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef 16, ptr noundef %in.addr.0) #4, !dbg !5606
  call fastcc void @aes_ecb4x(ptr noundef %out.addr.0, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !5608
  %sub = add i32 %nblocks.addr.0, -4, !dbg !5609
    #dbg_value(i32 %sub, !5596, !DIExpression(), !5594)
  %add.ptr = getelementptr inbounds nuw i8, ptr %in.addr.0, i32 64, !dbg !5610
    #dbg_value(ptr %add.ptr, !5595, !DIExpression(), !5594)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !5611
    #dbg_value(ptr %add.ptr2, !5593, !DIExpression(), !5594)
  br label %while.cond, !dbg !5604, !llvm.loop !5612

while.end:                                        ; preds = %while.cond
  %nblocks.addr.0.lcssa = phi i32 [ %nblocks.addr.0, %while.cond ]
  %in.addr.0.lcssa = phi ptr [ %in.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %tobool.not = icmp eq i32 %nblocks.addr.0.lcssa, 0, !dbg !5614
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !5614

if.then:                                          ; preds = %while.end
  %mul = shl nuw nsw i32 %nblocks.addr.0.lcssa, 2, !dbg !5616
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef %mul, ptr noundef %in.addr.0.lcssa) #4, !dbg !5618
  call fastcc void @aes_ecb4x(ptr noundef nonnull %t, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !5619
  %mul7 = shl nuw nsw i32 %nblocks.addr.0.lcssa, 4, !dbg !5620
  %call = call ptr @memcpy(ptr noundef %out.addr.0.lcssa, ptr noundef nonnull %t, i32 noundef %mul7) #6, !dbg !5621
  br label %if.end, !dbg !5622

if.end:                                           ; preds = %if.then, %while.end
  ret void, !dbg !5623
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5624 {
entry:
  %w = alloca [16 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %out, !5627, !DIExpression(), !5628)
    #dbg_value(ptr %ivw, !5629, !DIExpression(), !5628)
    #dbg_value(ptr %sk_exp, !5630, !DIExpression(), !5628)
    #dbg_value(i32 %nrounds, !5631, !DIExpression(), !5628)
    #dbg_declare(ptr %w, !5632, !DIExpression(), !5633)
    #dbg_declare(ptr %q, !5634, !DIExpression(), !5635)
  %call = call ptr @memcpy(ptr noundef nonnull %w, ptr noundef nonnull %ivw, i32 noundef 64) #6, !dbg !5636
    #dbg_value(i32 0, !5637, !DIExpression(), !5628)
  br label %for.cond, !dbg !5638

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5640
    #dbg_value(i32 %i.0, !5637, !DIExpression(), !5628)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !5641
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5643

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.0, !dbg !5644
  %add = or disjoint i32 %i.0, 4, !dbg !5646
  %arrayidx1 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add, !dbg !5647
  %add.ptr.idx = shl nuw nsw i32 %i.0, 4, !dbg !5648
  %add.ptr = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr.idx, !dbg !5648
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx1, ptr noundef nonnull %add.ptr) #4, !dbg !5649
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5650
    #dbg_value(i32 %inc, !5637, !DIExpression(), !5628)
  br label %for.cond, !dbg !5651, !llvm.loop !5652

for.end:                                          ; preds = %for.cond
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5654
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk_exp) #4, !dbg !5655
    #dbg_value(i32 1, !5637, !DIExpression(), !5628)
  br label %for.cond5, !dbg !5656

for.cond5:                                        ; preds = %for.body7, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc15, %for.body7 ], !dbg !5658
    #dbg_value(i32 %i.1, !5637, !DIExpression(), !5628)
  %exitcond1 = icmp ne i32 %i.1, %nrounds, !dbg !5659
  br i1 %exitcond1, label %for.body7, label %for.end16, !dbg !5661

for.body7:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5662
  call fastcc void @shift_rows(ptr noundef nonnull %q) #4, !dbg !5664
  call fastcc void @mix_columns(ptr noundef nonnull %q) #4, !dbg !5665
  %add.ptr13.idx = shl nuw nsw i32 %i.1, 6, !dbg !5666
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr13.idx, !dbg !5666
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr13) #4, !dbg !5667
  %inc15 = add nuw nsw i32 %i.1, 1, !dbg !5668
    #dbg_value(i32 %inc15, !5637, !DIExpression(), !5628)
  br label %for.cond5, !dbg !5669, !llvm.loop !5670

for.end16:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5672
  call fastcc void @shift_rows(ptr noundef nonnull %q) #4, !dbg !5673
  %add.ptr20.idx = shl nuw nsw i32 %nrounds, 6, !dbg !5674
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr20.idx, !dbg !5674
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr20) #4, !dbg !5675
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5676
    #dbg_value(i32 0, !5637, !DIExpression(), !5628)
  br label %for.cond22, !dbg !5677

for.cond22:                                       ; preds = %for.body24, %for.end16
  %i.2 = phi i32 [ 0, %for.end16 ], [ %inc32, %for.body24 ], !dbg !5679
    #dbg_value(i32 %i.2, !5637, !DIExpression(), !5628)
  %exitcond2 = icmp ne i32 %i.2, 4, !dbg !5680
  br i1 %exitcond2, label %for.body24, label %for.end33, !dbg !5682

for.body24:                                       ; preds = %for.cond22
  %add.ptr27.idx = shl nuw nsw i32 %i.2, 4, !dbg !5683
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr27.idx, !dbg !5683
  %arrayidx28 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.2, !dbg !5685
  %0 = load i64, ptr %arrayidx28, align 8, !dbg !5685
  %add29 = or disjoint i32 %i.2, 4, !dbg !5686
  %arrayidx30 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add29, !dbg !5687
  %1 = load i64, ptr %arrayidx30, align 8, !dbg !5687
  call fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %add.ptr27, i64 noundef %0, i64 noundef %1) #4, !dbg !5688
  %inc32 = add nuw nsw i32 %i.2, 1, !dbg !5689
    #dbg_value(i32 %inc32, !5637, !DIExpression(), !5628)
  br label %for.cond22, !dbg !5690, !llvm.loop !5691

for.end33:                                        ; preds = %for.cond22
  call fastcc void @br_range_enc32le(ptr noundef %out, ptr noundef nonnull %w, i32 noundef 16) #4, !dbg !5693
  ret void, !dbg !5694
}

; Function Attrs: nounwind
define internal fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk) unnamed_addr #0 !dbg !5695 {
entry:
    #dbg_value(ptr %q, !5698, !DIExpression(), !5699)
    #dbg_value(ptr %sk, !5700, !DIExpression(), !5699)
  %0 = load i64, ptr %sk, align 8, !dbg !5701
  %1 = load i64, ptr %q, align 8, !dbg !5702
  %xor = xor i64 %1, %0, !dbg !5702
  store i64 %xor, ptr %q, align 8, !dbg !5702
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %sk, i32 8, !dbg !5703
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5703
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5704
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5705
  %xor4 = xor i64 %3, %2, !dbg !5705
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !5705
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %sk, i32 16, !dbg !5706
  %4 = load i64, ptr %arrayidx5, align 8, !dbg !5706
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5707
  %5 = load i64, ptr %arrayidx6, align 8, !dbg !5708
  %xor7 = xor i64 %5, %4, !dbg !5708
  store i64 %xor7, ptr %arrayidx6, align 8, !dbg !5708
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %sk, i32 24, !dbg !5709
  %6 = load i64, ptr %arrayidx8, align 8, !dbg !5709
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5710
  %7 = load i64, ptr %arrayidx9, align 8, !dbg !5711
  %xor10 = xor i64 %7, %6, !dbg !5711
  store i64 %xor10, ptr %arrayidx9, align 8, !dbg !5711
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %sk, i32 32, !dbg !5712
  %8 = load i64, ptr %arrayidx11, align 8, !dbg !5712
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5713
  %9 = load i64, ptr %arrayidx12, align 8, !dbg !5714
  %xor13 = xor i64 %9, %8, !dbg !5714
  store i64 %xor13, ptr %arrayidx12, align 8, !dbg !5714
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %sk, i32 40, !dbg !5715
  %10 = load i64, ptr %arrayidx14, align 8, !dbg !5715
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5716
  %11 = load i64, ptr %arrayidx15, align 8, !dbg !5717
  %xor16 = xor i64 %11, %10, !dbg !5717
  store i64 %xor16, ptr %arrayidx15, align 8, !dbg !5717
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %sk, i32 48, !dbg !5718
  %12 = load i64, ptr %arrayidx17, align 8, !dbg !5718
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5719
  %13 = load i64, ptr %arrayidx18, align 8, !dbg !5720
  %xor19 = xor i64 %13, %12, !dbg !5720
  store i64 %xor19, ptr %arrayidx18, align 8, !dbg !5720
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %sk, i32 56, !dbg !5721
  %14 = load i64, ptr %arrayidx20, align 8, !dbg !5721
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5722
  %15 = load i64, ptr %arrayidx21, align 8, !dbg !5723
  %xor22 = xor i64 %15, %14, !dbg !5723
  store i64 %xor22, ptr %arrayidx21, align 8, !dbg !5723
  ret void, !dbg !5724
}

; Function Attrs: nounwind
define internal fastcc void @shift_rows(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5725 {
entry:
    #dbg_value(ptr %q, !5726, !DIExpression(), !5727)
    #dbg_value(i32 0, !5728, !DIExpression(), !5727)
  br label %for.cond, !dbg !5729

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5731
    #dbg_value(i32 %i.0, !5728, !DIExpression(), !5727)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !5732
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5734

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5735
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5735
    #dbg_value(i64 %0, !5737, !DIExpression(), !5738)
  %and = and i64 %0, 65535, !dbg !5739
  %and1 = lshr i64 %0, 4, !dbg !5740
  %shr = and i64 %and1, 268369920, !dbg !5740
  %or = or disjoint i64 %and, %shr, !dbg !5741
  %and2 = shl i64 %0, 12, !dbg !5742
  %shl = and i64 %and2, 4026531840, !dbg !5742
  %or3 = or disjoint i64 %or, %shl, !dbg !5743
  %and4 = lshr i64 %0, 8, !dbg !5744
  %shr5 = and i64 %and4, 1095216660480, !dbg !5744
  %or6 = or disjoint i64 %or3, %shr5, !dbg !5745
  %and7 = shl i64 %0, 8, !dbg !5746
  %shl8 = and i64 %and7, 280375465082880, !dbg !5746
  %or9 = or disjoint i64 %or6, %shl8, !dbg !5747
  %and10 = lshr i64 %0, 12, !dbg !5748
  %shr11 = and i64 %and10, 4222124650659840, !dbg !5748
  %or12 = or disjoint i64 %or9, %shr11, !dbg !5749
  %and13 = shl i64 %0, 4, !dbg !5750
  %shl14 = and i64 %and13, -4503599627370496, !dbg !5750
  %or15 = or i64 %or12, %shl14, !dbg !5751
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5752
  store i64 %or15, ptr %arrayidx16, align 8, !dbg !5753
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5754
    #dbg_value(i32 %inc, !5728, !DIExpression(), !5727)
  br label %for.cond, !dbg !5755, !llvm.loop !5756

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5758
}

; Function Attrs: nounwind
define internal fastcc void @mix_columns(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5759 {
entry:
    #dbg_value(ptr %q, !5760, !DIExpression(), !5761)
  %0 = load i64, ptr %q, align 8, !dbg !5762
    #dbg_value(i64 %0, !5763, !DIExpression(), !5761)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5764
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5764
    #dbg_value(i64 %1, !5765, !DIExpression(), !5761)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5766
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5766
    #dbg_value(i64 %2, !5767, !DIExpression(), !5761)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5768
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5768
    #dbg_value(i64 %3, !5769, !DIExpression(), !5761)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5770
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5770
    #dbg_value(i64 %4, !5771, !DIExpression(), !5761)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5772
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5772
    #dbg_value(i64 %5, !5773, !DIExpression(), !5761)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5774
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5774
    #dbg_value(i64 %6, !5775, !DIExpression(), !5761)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5776
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !5776
    #dbg_value(i64 %7, !5777, !DIExpression(), !5761)
  %8 = shl i64 %0, 48, !dbg !5778
  %9 = lshr i64 %0, 16, !dbg !5778
  %10 = or i64 %8, %9, !dbg !5778
    #dbg_value(i64 %10, !5779, !DIExpression(), !5761)
  %11 = shl i64 %1, 48, !dbg !5780
  %12 = lshr i64 %1, 16, !dbg !5780
  %13 = or i64 %11, %12, !dbg !5780
    #dbg_value(i64 %13, !5781, !DIExpression(), !5761)
  %14 = shl i64 %2, 48, !dbg !5782
  %15 = lshr i64 %2, 16, !dbg !5782
  %16 = or i64 %14, %15, !dbg !5782
    #dbg_value(i64 %16, !5783, !DIExpression(), !5761)
  %17 = shl i64 %3, 48, !dbg !5784
  %18 = lshr i64 %3, 16, !dbg !5784
  %19 = or i64 %17, %18, !dbg !5784
    #dbg_value(i64 %19, !5785, !DIExpression(), !5761)
  %20 = shl i64 %4, 48, !dbg !5786
  %21 = lshr i64 %4, 16, !dbg !5786
  %22 = or i64 %20, %21, !dbg !5786
    #dbg_value(i64 %22, !5787, !DIExpression(), !5761)
  %23 = shl i64 %5, 48, !dbg !5788
  %24 = lshr i64 %5, 16, !dbg !5788
  %25 = or i64 %23, %24, !dbg !5788
    #dbg_value(i64 %25, !5789, !DIExpression(), !5761)
  %26 = shl i64 %6, 48, !dbg !5790
  %27 = lshr i64 %6, 16, !dbg !5790
  %28 = or i64 %26, %27, !dbg !5790
    #dbg_value(i64 %28, !5791, !DIExpression(), !5761)
  %29 = shl i64 %7, 48, !dbg !5792
  %30 = lshr i64 %7, 16, !dbg !5792
  %31 = or i64 %29, %30, !dbg !5792
    #dbg_value(i64 %31, !5793, !DIExpression(), !5761)
  %xor30 = xor i64 %0, %10, !dbg !5794
  %call = call fastcc i64 @rotr32(i64 noundef %xor30) #4, !dbg !5795
  %32 = xor i64 %31, %call, !dbg !5796
  %33 = xor i64 %32, %7, !dbg !5796
  %xor31 = xor i64 %33, %10, !dbg !5796
  store i64 %xor31, ptr %q, align 8, !dbg !5797
  %xor37 = xor i64 %1, %13, !dbg !5798
  %call38 = call fastcc i64 @rotr32(i64 noundef %xor37) #4, !dbg !5799
  %34 = xor i64 %10, %call38, !dbg !5800
  %35 = xor i64 %34, %0, !dbg !5800
  %36 = xor i64 %35, %7, !dbg !5800
  %37 = xor i64 %36, %31, !dbg !5800
  %xor39 = xor i64 %37, %13, !dbg !5800
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5801
  store i64 %xor39, ptr %arrayidx40, align 8, !dbg !5802
  %xor43 = xor i64 %2, %16, !dbg !5803
  %call44 = call fastcc i64 @rotr32(i64 noundef %xor43) #4, !dbg !5804
  %38 = xor i64 %13, %call44, !dbg !5805
  %39 = xor i64 %38, %1, !dbg !5805
  %xor45 = xor i64 %39, %16, !dbg !5805
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5806
  store i64 %xor45, ptr %arrayidx46, align 8, !dbg !5807
  %xor51 = xor i64 %3, %19, !dbg !5808
  %call52 = call fastcc i64 @rotr32(i64 noundef %xor51) #4, !dbg !5809
  %40 = xor i64 %16, %call52, !dbg !5810
  %41 = xor i64 %40, %2, !dbg !5810
  %42 = xor i64 %41, %7, !dbg !5810
  %43 = xor i64 %42, %31, !dbg !5810
  %xor53 = xor i64 %43, %19, !dbg !5810
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5811
  store i64 %xor53, ptr %arrayidx54, align 8, !dbg !5812
  %xor59 = xor i64 %4, %22, !dbg !5813
  %call60 = call fastcc i64 @rotr32(i64 noundef %xor59) #4, !dbg !5814
  %44 = xor i64 %19, %call60, !dbg !5815
  %45 = xor i64 %44, %3, !dbg !5815
  %46 = xor i64 %45, %7, !dbg !5815
  %47 = xor i64 %46, %31, !dbg !5815
  %xor61 = xor i64 %47, %22, !dbg !5815
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5816
  store i64 %xor61, ptr %arrayidx62, align 8, !dbg !5817
  %xor65 = xor i64 %5, %25, !dbg !5818
  %call66 = call fastcc i64 @rotr32(i64 noundef %xor65) #4, !dbg !5819
  %48 = xor i64 %22, %call66, !dbg !5820
  %49 = xor i64 %48, %4, !dbg !5820
  %xor67 = xor i64 %49, %25, !dbg !5820
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5821
  store i64 %xor67, ptr %arrayidx68, align 8, !dbg !5822
  %xor71 = xor i64 %6, %28, !dbg !5823
  %call72 = call fastcc i64 @rotr32(i64 noundef %xor71) #4, !dbg !5824
  %50 = xor i64 %25, %call72, !dbg !5825
  %51 = xor i64 %50, %5, !dbg !5825
  %xor73 = xor i64 %51, %28, !dbg !5825
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5826
  store i64 %xor73, ptr %arrayidx74, align 8, !dbg !5827
  %xor77 = xor i64 %7, %31, !dbg !5828
  %call78 = call fastcc i64 @rotr32(i64 noundef %xor77) #4, !dbg !5829
  %52 = xor i64 %28, %call78, !dbg !5830
  %53 = xor i64 %52, %6, !dbg !5830
  %xor79 = xor i64 %53, %31, !dbg !5830
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5831
  store i64 %xor79, ptr %arrayidx80, align 8, !dbg !5832
  ret void, !dbg !5833
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %w, i64 noundef %q0, i64 noundef %q1) unnamed_addr #0 !dbg !5834 {
entry:
    #dbg_value(ptr %w, !5837, !DIExpression(), !5838)
    #dbg_value(i64 %q0, !5839, !DIExpression(), !5838)
    #dbg_value(i64 %q1, !5840, !DIExpression(), !5838)
  %and = and i64 %q0, 71777214294589695, !dbg !5841
    #dbg_value(i64 %and, !5842, !DIExpression(), !5838)
  %and1 = and i64 %q1, 71777214294589695, !dbg !5843
    #dbg_value(i64 %and1, !5844, !DIExpression(), !5838)
  %shr = lshr i64 %q0, 8, !dbg !5845
  %and2 = and i64 %shr, 71776119077928960, !dbg !5846
    #dbg_value(i64 %shr, !5847, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5838)
  %shr3 = lshr i64 %q1, 8, !dbg !5848
  %and4 = and i64 %shr3, 71776119077928960, !dbg !5849
    #dbg_value(i64 %shr3, !5850, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5838)
  %shr5 = lshr i64 %and, 8, !dbg !5851
  %or = or disjoint i64 %and, %shr5, !dbg !5852
    #dbg_value(i64 %or, !5842, !DIExpression(), !5838)
  %shr6 = lshr i64 %and1, 8, !dbg !5853
  %or7 = or disjoint i64 %and1, %shr6, !dbg !5854
    #dbg_value(i64 %or7, !5844, !DIExpression(), !5838)
  %0 = and i64 %q0, 280375465148160, !dbg !5855
  %1 = or disjoint i64 %and2, %0, !dbg !5855
  %or9 = lshr exact i64 %1, 8, !dbg !5855
    #dbg_value(!DIArgList(i64 %and2, i64 %0), !5847, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5838)
  %2 = and i64 %q1, 280375465148160, !dbg !5856
  %3 = or disjoint i64 %and4, %2, !dbg !5856
  %or11 = lshr exact i64 %3, 8, !dbg !5856
    #dbg_value(!DIArgList(i64 %and4, i64 %2), !5850, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5838)
  %and12 = and i64 %or, 281470681808895, !dbg !5857
    #dbg_value(i64 %and12, !5842, !DIExpression(), !5838)
  %and13 = and i64 %or7, 281470681808895, !dbg !5858
    #dbg_value(i64 %and13, !5844, !DIExpression(), !5838)
    #dbg_value(i64 %or9, !5847, !DIExpression(), !5838)
    #dbg_value(i64 %or11, !5850, !DIExpression(), !5838)
  %shr16 = lshr i64 %and12, 16, !dbg !5859
  %or181 = or disjoint i64 %and12, %shr16, !dbg !5860
  %or18 = trunc i64 %or181 to i32, !dbg !5860
  store i32 %or18, ptr %w, align 4, !dbg !5861
  %shr20 = lshr i64 %and13, 16, !dbg !5862
  %or222 = or disjoint i64 %and13, %shr20, !dbg !5863
  %or22 = trunc i64 %or222 to i32, !dbg !5863
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5864
  store i32 %or22, ptr %arrayidx23, align 4, !dbg !5865
  %shr25 = lshr i64 %1, 24, !dbg !5866
  %or273 = or disjoint i64 %or9, %shr25, !dbg !5867
  %or27 = trunc i64 %or273 to i32, !dbg !5867
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5868
  store i32 %or27, ptr %arrayidx28, align 4, !dbg !5869
  %shr30 = lshr i64 %3, 24, !dbg !5870
  %or324 = or disjoint i64 %or11, %shr30, !dbg !5871
  %or32 = trunc i64 %or324 to i32, !dbg !5871
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5872
  store i32 %or32, ptr %arrayidx33, align 4, !dbg !5873
  ret void, !dbg !5874
}

; Function Attrs: nounwind
define internal fastcc void @br_range_enc32le(ptr noundef %dst, ptr noundef nonnull %v, i32 noundef %num) unnamed_addr #0 !dbg !5875 {
entry:
    #dbg_value(ptr %dst, !5878, !DIExpression(), !5879)
    #dbg_value(ptr %v, !5880, !DIExpression(), !5879)
    #dbg_value(i32 16, !5881, !DIExpression(), !5879)
  br label %while.cond, !dbg !5882

while.cond:                                       ; preds = %while.body, %entry
  %num.addr.0 = phi i32 [ 16, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
  %dst.addr.0 = phi ptr [ %dst, %entry ], [ %add.ptr, %while.body ]
    #dbg_value(ptr %dst.addr.0, !5878, !DIExpression(), !5879)
    #dbg_value(ptr %v.addr.0, !5880, !DIExpression(), !5879)
    #dbg_value(i32 %num.addr.0, !5881, !DIExpression(), !5879)
    #dbg_value(i32 %num.addr.0, !5881, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5879)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5883
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5882

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5884
    #dbg_value(i32 %dec, !5881, !DIExpression(), !5879)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5885
    #dbg_value(ptr %incdec.ptr, !5880, !DIExpression(), !5879)
  %0 = load i32, ptr %v.addr.0, align 4, !dbg !5887
  call fastcc void @br_enc32le(ptr noundef %dst.addr.0, i32 noundef %0) #4, !dbg !5888
  %add.ptr = getelementptr inbounds nuw i8, ptr %dst.addr.0, i32 4, !dbg !5889
    #dbg_value(ptr %add.ptr, !5878, !DIExpression(), !5879)
  br label %while.cond, !dbg !5882, !llvm.loop !5890

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5892
}

; Function Attrs: nounwind
define internal fastcc void @br_enc32le(ptr noundef %dst, i32 noundef %x) unnamed_addr #0 !dbg !5893 {
entry:
    #dbg_value(ptr %dst, !5896, !DIExpression(), !5897)
    #dbg_value(i32 %x, !5898, !DIExpression(), !5897)
  %conv = trunc i32 %x to i8, !dbg !5899
  store i8 %conv, ptr %dst, align 1, !dbg !5900
  %shr = lshr i32 %x, 8, !dbg !5901
  %conv1 = trunc i32 %shr to i8, !dbg !5902
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %dst, i32 1, !dbg !5903
  store i8 %conv1, ptr %arrayidx2, align 1, !dbg !5904
  %shr3 = lshr i32 %x, 16, !dbg !5905
  %conv4 = trunc i32 %shr3 to i8, !dbg !5906
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %dst, i32 2, !dbg !5907
  store i8 %conv4, ptr %arrayidx5, align 1, !dbg !5908
  %shr6 = lshr i32 %x, 24, !dbg !5909
  %conv7 = trunc nuw i32 %shr6 to i8, !dbg !5910
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %dst, i32 3, !dbg !5911
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !5912
  ret void, !dbg !5913
}

; Function Attrs: nounwind
define internal fastcc i64 @rotr32(i64 noundef %x) unnamed_addr #0 !dbg !5914 {
entry:
    #dbg_value(i64 %x, !5917, !DIExpression(), !5918)
  %0 = shl i64 %x, 32, !dbg !5919
  %1 = lshr i64 %x, 32, !dbg !5919
  %2 = or i64 %0, %1, !dbg !5919
  ret i64 %2, !dbg !5920
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5921 {
entry:
    #dbg_value(ptr %out, !5924, !DIExpression(), !5925)
    #dbg_value(i32 %outlen, !5926, !DIExpression(), !5925)
    #dbg_value(ptr %iv, !5927, !DIExpression(), !5925)
    #dbg_value(ptr %ctx, !5928, !DIExpression(), !5925)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5929
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 10) #4, !dbg !5930
  ret void, !dbg !5931
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5932 {
entry:
  %ivw = alloca [16 x i32], align 4
  %tmp = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5935, !DIExpression(), !5936)
    #dbg_value(i32 %outlen, !5937, !DIExpression(), !5936)
    #dbg_value(ptr %iv, !5938, !DIExpression(), !5936)
    #dbg_value(ptr %rkeys, !5939, !DIExpression(), !5936)
    #dbg_value(i32 %nrounds, !5940, !DIExpression(), !5936)
    #dbg_declare(ptr %ivw, !5941, !DIExpression(), !5942)
    #dbg_value(i32 0, !5943, !DIExpression(), !5936)
  call fastcc void @br_range_dec32le(ptr noundef nonnull %ivw, i32 noundef 3, ptr noundef %iv) #4, !dbg !5944
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 16, !dbg !5945
  %call = call ptr @memcpy(ptr noundef nonnull %add.ptr, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !5946
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %ivw, i32 32, !dbg !5947
  %call6 = call ptr @memcpy(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !5948
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %ivw, i32 48, !dbg !5949
  %call10 = call ptr @memcpy(ptr noundef nonnull %add.ptr8, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !5950
  %call11 = call fastcc i32 @br_swap32(i32 noundef 0) #4, !dbg !5951
  %arrayidx = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !5952
  store i32 %call11, ptr %arrayidx, align 4, !dbg !5953
  %call12 = call fastcc i32 @br_swap32(i32 noundef 1) #4, !dbg !5954
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !5955
  store i32 %call12, ptr %arrayidx13, align 4, !dbg !5956
  %call15 = call fastcc i32 @br_swap32(i32 noundef 2) #4, !dbg !5957
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !5958
  store i32 %call15, ptr %arrayidx16, align 4, !dbg !5959
  %call18 = call fastcc i32 @br_swap32(i32 noundef 3) #4, !dbg !5960
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !5961
  store i32 %call18, ptr %arrayidx19, align 4, !dbg !5962
  br label %while.cond, !dbg !5963

while.cond:                                       ; preds = %while.body, %entry
  %outlen.addr.0 = phi i32 [ %outlen, %entry ], [ %sub, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr21, %while.body ]
    #dbg_value(ptr %out.addr.0, !5935, !DIExpression(), !5936)
    #dbg_value(i32 %outlen.addr.0, !5937, !DIExpression(), !5936)
  %cmp = icmp ugt i32 %outlen.addr.0, 64, !dbg !5964
  br i1 %cmp, label %while.body, label %while.end, !dbg !5963

while.body:                                       ; preds = %while.cond
  call fastcc void @aes_ctr4x(ptr noundef %out.addr.0, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !5965
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !5967
    #dbg_value(ptr %add.ptr21, !5935, !DIExpression(), !5936)
  %sub = add i32 %outlen.addr.0, -64, !dbg !5968
    #dbg_value(i32 %sub, !5937, !DIExpression(), !5936)
  br label %while.cond, !dbg !5963, !llvm.loop !5969

while.end:                                        ; preds = %while.cond
  %outlen.addr.0.lcssa = phi i32 [ %outlen.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %cmp22.not = icmp eq i32 %outlen.addr.0.lcssa, 0, !dbg !5971
  br i1 %cmp22.not, label %if.end, label %if.then, !dbg !5971

if.then:                                          ; preds = %while.end
    #dbg_declare(ptr %tmp, !5973, !DIExpression(), !5975)
  call fastcc void @aes_ctr4x(ptr noundef nonnull %tmp, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !5976
    #dbg_value(i32 0, !5977, !DIExpression(), !5936)
  br label %for.cond, !dbg !5978

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !5980
    #dbg_value(i32 %i.0, !5977, !DIExpression(), !5936)
  %cmp25 = icmp ult i32 %i.0, %outlen.addr.0.lcssa, !dbg !5981
  br i1 %cmp25, label %for.body, label %if.end.loopexit, !dbg !5983

for.body:                                         ; preds = %for.cond
  %arrayidx26 = getelementptr inbounds nuw [64 x i8], ptr %tmp, i32 0, i32 %i.0, !dbg !5984
  %0 = load i8, ptr %arrayidx26, align 1, !dbg !5984
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out.addr.0.lcssa, i32 %i.0, !dbg !5986
  store i8 %0, ptr %arrayidx27, align 1, !dbg !5987
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5988
    #dbg_value(i32 %inc, !5977, !DIExpression(), !5936)
  br label %for.cond, !dbg !5989, !llvm.loop !5990

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !5992

if.end:                                           ; preds = %if.end.loopexit, %while.end
  ret void, !dbg !5992
}

; Function Attrs: nounwind
define internal fastcc i32 @br_swap32(i32 noundef %x) unnamed_addr #0 !dbg !5993 {
entry:
    #dbg_value(i32 %x, !5994, !DIExpression(), !5995)
    #dbg_value(!DIArgList(i32 %x, i32 %x), !5994, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 18446744073692839680, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shr, DW_OP_constu, 16711935, DW_OP_and, DW_OP_or, DW_OP_stack_value), !5995)
  %0 = and i32 %x, 255, !dbg !5996
  %1 = shl i32 %0, 24, !dbg !5996
  %2 = and i32 %x, 65280, !dbg !5996
  %3 = shl i32 %2, 8, !dbg !5996
  %4 = and i32 %x, 16711680, !dbg !5996
  %5 = lshr i32 %4, 8, !dbg !5996
  %6 = and i32 %x, -16777216, !dbg !5996
  %7 = lshr i32 %6, 24, !dbg !5996
  %8 = or i32 %1, %3, !dbg !5996
  %9 = or i32 %8, %5, !dbg !5996
  %10 = or i32 %9, %7, !dbg !5996
  ret i32 %10, !dbg !5997
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5998 {
entry:
    #dbg_value(ptr %out, !6001, !DIExpression(), !6002)
    #dbg_value(ptr %ivw, !6003, !DIExpression(), !6002)
    #dbg_value(ptr %sk_exp, !6004, !DIExpression(), !6002)
    #dbg_value(i32 %nrounds, !6005, !DIExpression(), !6002)
  call fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef %ivw, ptr noundef %sk_exp, i32 noundef %nrounds) #4, !dbg !6006
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !6007
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr) #4, !dbg !6008
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !6009
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr1) #4, !dbg !6010
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !6011
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr2) #4, !dbg !6012
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !6013
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr3) #4, !dbg !6014
  ret void, !dbg !6015
}

; Function Attrs: nounwind
define internal fastcc void @inc4_be(ptr noundef nonnull %x) unnamed_addr #0 !dbg !6016 {
entry:
    #dbg_value(ptr %x, !6019, !DIExpression(), !6020)
  %0 = load i32, ptr %x, align 4, !dbg !6021
  %call = call fastcc i32 @br_swap32(i32 noundef %0) #4, !dbg !6022
  %add = add i32 %call, 4, !dbg !6023
    #dbg_value(i32 %add, !6024, !DIExpression(), !6020)
  %call1 = call fastcc i32 @br_swap32(i32 noundef %add) #4, !dbg !6025
  store i32 %call1, ptr %x, align 4, !dbg !6026
  ret void, !dbg !6027
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6028 {
entry:
    #dbg_value(ptr %out, !6033, !DIExpression(), !6034)
    #dbg_value(ptr %in, !6035, !DIExpression(), !6034)
    #dbg_value(i32 %nblocks, !6036, !DIExpression(), !6034)
    #dbg_value(ptr %ctx, !6037, !DIExpression(), !6034)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6038
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 12) #4, !dbg !6039
  ret void, !dbg !6040
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6041 {
entry:
    #dbg_value(ptr %out, !6044, !DIExpression(), !6045)
    #dbg_value(i32 %outlen, !6046, !DIExpression(), !6045)
    #dbg_value(ptr %iv, !6047, !DIExpression(), !6045)
    #dbg_value(ptr %ctx, !6048, !DIExpression(), !6045)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6049
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 12) #4, !dbg !6050
  ret void, !dbg !6051
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6052 {
entry:
    #dbg_value(ptr %out, !6057, !DIExpression(), !6058)
    #dbg_value(ptr %in, !6059, !DIExpression(), !6058)
    #dbg_value(i32 %nblocks, !6060, !DIExpression(), !6058)
    #dbg_value(ptr %ctx, !6061, !DIExpression(), !6058)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6062
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 14) #4, !dbg !6063
  ret void, !dbg !6064
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6065 {
entry:
    #dbg_value(ptr %out, !6068, !DIExpression(), !6069)
    #dbg_value(i32 %outlen, !6070, !DIExpression(), !6069)
    #dbg_value(ptr %iv, !6071, !DIExpression(), !6069)
    #dbg_value(ptr %ctx, !6072, !DIExpression(), !6069)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6073
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 14) #4, !dbg !6074
  ret void, !dbg !6075
}

; Function Attrs: nounwind
define dso_local void @aes128_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6076 {
entry:
    #dbg_value(ptr %r, !6079, !DIExpression(), !6080)
  %0 = load ptr, ptr %r, align 4, !dbg !6081
  call void @free(ptr noundef %0) #6, !dbg !6082
  ret void, !dbg !6083
}

; Function Attrs: nounwind
define dso_local void @aes192_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6084 {
entry:
    #dbg_value(ptr %r, !6087, !DIExpression(), !6088)
  %0 = load ptr, ptr %r, align 4, !dbg !6089
  call void @free(ptr noundef %0) #6, !dbg !6090
  ret void, !dbg !6091
}

; Function Attrs: nounwind
define dso_local void @aes256_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6092 {
entry:
    #dbg_value(ptr %r, !6095, !DIExpression(), !6096)
  %0 = load ptr, ptr %r, align 4, !dbg !6097
  call void @free(ptr noundef %0) #6, !dbg !6098
  ret void, !dbg !6099
}

; Function Attrs: nounwind
define dso_local i32 @AES_128_CTR(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef %input, i32 noundef %inputByteLen) local_unnamed_addr #0 !dbg !6100 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
  %iv = alloca [16 x i8], align 1
    #dbg_value(ptr %output, !6103, !DIExpression(), !6104)
    #dbg_value(i32 %outputByteLen, !6105, !DIExpression(), !6104)
    #dbg_value(ptr %input, !6106, !DIExpression(), !6104)
    #dbg_value(i32 %inputByteLen, !6107, !DIExpression(), !6104)
    #dbg_declare(ptr %ctx, !6108, !DIExpression(), !6109)
    #dbg_declare(ptr %iv, !6110, !DIExpression(), !6111)
  call void @mayo_memset(ptr %iv, i8 0, i32 16), !dbg !6111
  call void @aes128_ctr_keyexp(ptr noundef nonnull %ctx, ptr noundef %input) #4, !dbg !6112
  call void @aes128_ctr(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef nonnull %iv, ptr noundef nonnull %ctx) #4, !dbg !6113
  call void @aes128_ctx_release(ptr noundef nonnull %ctx) #4, !dbg !6114
  ret i32 %outputByteLen, !dbg !6115
}

; Function Attrs: nounwind
define dso_local void @AES_256_ECB(ptr noundef %input, ptr noundef %key, ptr noundef %output) local_unnamed_addr #0 !dbg !6116 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %input, !6119, !DIExpression(), !6120)
    #dbg_value(ptr %key, !6121, !DIExpression(), !6120)
    #dbg_value(ptr %output, !6122, !DIExpression(), !6120)
    #dbg_declare(ptr %ctx, !6123, !DIExpression(), !6124)
  call void @aes256_ecb_keyexp(ptr noundef nonnull %ctx, ptr noundef %key) #4, !dbg !6125
  call void @aes256_ecb(ptr noundef %output, ptr noundef %input, i32 noundef 1, ptr noundef nonnull %ctx) #4, !dbg !6126
  call void @aes256_ctx_release(ptr noundef nonnull %ctx) #4, !dbg !6127
  ret void, !dbg !6128
}

; Function Attrs: nounwind
define dso_local void @mayo_secure_free(ptr noundef %mem, i32 noundef %size) local_unnamed_addr #0 !dbg !86 {
entry:
    #dbg_value(ptr %mem, !6129, !DIExpression(), !6130)
    #dbg_value(i32 %size, !6131, !DIExpression(), !6130)
  %tobool.not = icmp eq ptr %mem, null, !dbg !6132
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !6132

if.then:                                          ; preds = %entry
  %0 = load volatile ptr, ptr @mayo_secure_free.memset_func, align 4, !dbg !6134
  %call = call ptr %0(ptr noundef nonnull %mem, i32 noundef 0, i32 noundef %size) #6, !dbg !6134
  call void @free(ptr noundef nonnull %mem) #6, !dbg !6136
  br label %if.end, !dbg !6137

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6138
}

; Function Attrs: nounwind
define dso_local void @mayo_secure_clear(ptr noundef %mem, i32 noundef %size) local_unnamed_addr #0 !dbg !94 {
entry:
    #dbg_value(ptr %mem, !6139, !DIExpression(), !6140)
    #dbg_value(i32 %size, !6141, !DIExpression(), !6140)
  %0 = load volatile ptr, ptr @mayo_secure_clear.memset_func, align 4, !dbg !6142
  %call = call ptr %0(ptr noundef %mem, i32 noundef 0, i32 noundef %size) #6, !dbg !6142
  ret void, !dbg !6143
}

; Function Attrs: nounwind
define dso_local void @AES256_CTR_DRBG_Update(ptr noundef %provided_data, ptr noundef %Key, ptr noundef %V) local_unnamed_addr #0 !dbg !6144 {
entry:
  %temp = alloca [48 x i8], align 1
    #dbg_value(ptr %provided_data, !6147, !DIExpression(), !6148)
    #dbg_value(ptr %Key, !6149, !DIExpression(), !6148)
    #dbg_value(ptr %V, !6150, !DIExpression(), !6148)
    #dbg_declare(ptr %temp, !6151, !DIExpression(), !6155)
    #dbg_value(i32 0, !6156, !DIExpression(), !6158)
  br label %for.cond, !dbg !6159

for.cond:                                         ; preds = %for.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.end ], !dbg !6160
    #dbg_value(i32 %i.0, !6156, !DIExpression(), !6158)
  %exitcond = icmp ne i32 %i.0, 3, !dbg !6161
  br i1 %exitcond, label %for.cond1.preheader, label %for.end10, !dbg !6163

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !6164

for.cond1:                                        ; preds = %for.cond1.preheader, %if.then
  %j.0 = phi i32 [ %dec, %if.then ], [ 15, %for.cond1.preheader ], !dbg !6167
    #dbg_value(i32 %j.0, !6168, !DIExpression(), !6169)
  %cmp2 = icmp sgt i32 %j.0, -1, !dbg !6170
  br i1 %cmp2, label %for.body3, label %for.end.loopexit, !dbg !6164

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw i8, ptr %V, i32 %j.0, !dbg !6172
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6172
  %cmp4 = icmp eq i8 %0, -1, !dbg !6175
  br i1 %cmp4, label %if.then, label %if.else, !dbg !6175

if.then:                                          ; preds = %for.body3
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %V, i32 %j.0, !dbg !6176
  store i8 0, ptr %arrayidx6, align 1, !dbg !6178
  %dec = add nsw i32 %j.0, -1, !dbg !6179
    #dbg_value(i32 %dec, !6168, !DIExpression(), !6169)
  br label %for.cond1, !dbg !6180, !llvm.loop !6181

if.else:                                          ; preds = %for.body3
  %j.0.lcssa2 = phi i32 [ %j.0, %for.body3 ], !dbg !6167
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %V, i32 %j.0.lcssa2, !dbg !6183
  %1 = load i8, ptr %arrayidx7, align 1, !dbg !6185
  %inc = add i8 %1, 1, !dbg !6185
  store i8 %inc, ptr %arrayidx7, align 1, !dbg !6185
  br label %for.end, !dbg !6186

for.end.loopexit:                                 ; preds = %for.cond1
  br label %for.end, !dbg !6187

for.end:                                          ; preds = %for.end.loopexit, %if.else
  %mul = shl nuw nsw i32 %i.0, 4, !dbg !6187
  %add.ptr = getelementptr inbounds nuw i8, ptr %temp, i32 %mul, !dbg !6188
  call fastcc void @AES256_ECB(ptr noundef %Key, ptr noundef %V, ptr noundef nonnull %add.ptr) #4, !dbg !6189
  %inc9 = add nuw nsw i32 %i.0, 1, !dbg !6190
    #dbg_value(i32 %inc9, !6156, !DIExpression(), !6158)
  br label %for.cond, !dbg !6191, !llvm.loop !6192

for.end10:                                        ; preds = %for.cond
  %cmp11.not = icmp eq ptr %provided_data, null, !dbg !6194
  br i1 %cmp11.not, label %if.end27, label %for.cond15.preheader, !dbg !6194

for.cond15.preheader:                             ; preds = %for.end10
  br label %for.cond15, !dbg !6196

for.cond15:                                       ; preds = %for.cond15.preheader, %for.body18
  %i14.0 = phi i32 [ %inc25, %for.body18 ], [ 0, %for.cond15.preheader ], !dbg !6198
    #dbg_value(i32 %i14.0, !6199, !DIExpression(), !6200)
  %exitcond3 = icmp ne i32 %i14.0, 48, !dbg !6201
  br i1 %exitcond3, label %for.body18, label %if.end27.loopexit, !dbg !6196

for.body18:                                       ; preds = %for.cond15
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %provided_data, i32 %i14.0, !dbg !6203
  %2 = load i8, ptr %arrayidx19, align 1, !dbg !6203
  %arrayidx21 = getelementptr inbounds nuw [48 x i8], ptr %temp, i32 0, i32 %i14.0, !dbg !6205
  %3 = load i8, ptr %arrayidx21, align 1, !dbg !6206
  %xor1 = xor i8 %3, %2, !dbg !6206
  store i8 %xor1, ptr %arrayidx21, align 1, !dbg !6206
  %inc25 = add nuw nsw i32 %i14.0, 1, !dbg !6207
    #dbg_value(i32 %inc25, !6199, !DIExpression(), !6200)
  br label %for.cond15, !dbg !6208, !llvm.loop !6209

if.end27.loopexit:                                ; preds = %for.cond15
  br label %if.end27, !dbg !6211

if.end27:                                         ; preds = %if.end27.loopexit, %for.end10
  %call = call ptr @memcpy(ptr noundef %Key, ptr noundef nonnull %temp, i32 noundef 32) #6, !dbg !6211
  %add.ptr30 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !6212
  %call31 = call ptr @memcpy(ptr noundef %V, ptr noundef nonnull %add.ptr30, i32 noundef 16) #6, !dbg !6213
  ret void, !dbg !6214
}

; Function Attrs: nounwind
define internal fastcc void @AES256_ECB(ptr noundef %key, ptr noundef %ctr, ptr noundef nonnull %buffer) unnamed_addr #0 !dbg !6215 {
entry:
    #dbg_value(ptr %key, !6216, !DIExpression(), !6217)
    #dbg_value(ptr %ctr, !6218, !DIExpression(), !6217)
    #dbg_value(ptr %buffer, !6219, !DIExpression(), !6217)
  call void @AES_256_ECB(ptr noundef %ctr, ptr noundef %key, ptr noundef nonnull %buffer) #4, !dbg !6220
  ret void, !dbg !6221
}

; Function Attrs: nounwind
define dso_local i32 @randombytes(ptr noundef %random_array, i32 noundef %nbytes) local_unnamed_addr #0 !dbg !6222 {
entry:
    #dbg_value(ptr %random_array, !6225, !DIExpression(), !6226)
    #dbg_value(i32 %nbytes, !6227, !DIExpression(), !6226)
  %call = call fastcc i32 @randombytes_nist(ptr noundef %random_array, i32 noundef %nbytes) #4, !dbg !6228
    #dbg_value(i32 0, !6229, !DIExpression(), !6226)
  ret i32 0, !dbg !6230
}

; Function Attrs: nounwind
define internal fastcc i32 @randombytes_nist(ptr noundef %x, i32 noundef %xlen) unnamed_addr #0 !dbg !6231 {
entry:
  %block = alloca [16 x i8], align 1
    #dbg_value(ptr %x, !6232, !DIExpression(), !6233)
    #dbg_value(i32 %xlen, !6234, !DIExpression(), !6233)
    #dbg_declare(ptr %block, !6235, !DIExpression(), !6236)
    #dbg_value(i32 0, !6237, !DIExpression(), !6233)
  br label %while.cond, !dbg !6238

while.cond:                                       ; preds = %if.end15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %i.1, %if.end15 ], !dbg !6233
  %xlen.addr.0 = phi i32 [ %xlen, %entry ], [ %xlen.addr.1, %if.end15 ]
    #dbg_value(i32 %xlen.addr.0, !6234, !DIExpression(), !6233)
    #dbg_value(i32 %i.0, !6237, !DIExpression(), !6233)
  %cmp.not = icmp eq i32 %xlen.addr.0, 0, !dbg !6239
  br i1 %cmp.not, label %while.end, label %for.cond.preheader, !dbg !6238

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !6240

for.cond:                                         ; preds = %for.cond.preheader, %if.then
  %j.0 = phi i32 [ %dec, %if.then ], [ 15, %for.cond.preheader ], !dbg !6243
    #dbg_value(i32 %j.0, !6244, !DIExpression(), !6245)
  %cmp1 = icmp sgt i32 %j.0, -1, !dbg !6246
  br i1 %cmp1, label %for.body, label %for.end.loopexit, !dbg !6240

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0, !dbg !6248
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6248
  %cmp2 = icmp eq i8 %0, -1, !dbg !6251
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6251

if.then:                                          ; preds = %for.body
  %arrayidx4 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0, !dbg !6252
  store i8 0, ptr %arrayidx4, align 1, !dbg !6254
  %dec = add nsw i32 %j.0, -1, !dbg !6255
    #dbg_value(i32 %dec, !6244, !DIExpression(), !6245)
  br label %for.cond, !dbg !6256, !llvm.loop !6257

if.else:                                          ; preds = %for.body
  %j.0.lcssa1 = phi i32 [ %j.0, %for.body ], !dbg !6243
  %arrayidx5 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0.lcssa1, !dbg !6259
  %1 = load i8, ptr %arrayidx5, align 1, !dbg !6261
  %inc = add i8 %1, 1, !dbg !6261
  store i8 %inc, ptr %arrayidx5, align 1, !dbg !6261
  br label %for.end, !dbg !6262

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !6263

for.end:                                          ; preds = %for.end.loopexit, %if.else
  call fastcc void @AES256_ECB(ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), ptr noundef nonnull %block) #4, !dbg !6263
  %cmp6 = icmp ugt i32 %xlen.addr.0, 15, !dbg !6264
  br i1 %cmp6, label %if.then8, label %if.else10, !dbg !6264

if.then8:                                         ; preds = %for.end
  %add.ptr = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !6266
  %call = call ptr @memcpy(ptr noundef %add.ptr, ptr noundef nonnull %block, i32 noundef 16) #6, !dbg !6268
  %add = add i32 %i.0, 16, !dbg !6269
    #dbg_value(i32 %add, !6237, !DIExpression(), !6233)
  %sub = add i32 %xlen.addr.0, -16, !dbg !6270
    #dbg_value(i32 %sub, !6234, !DIExpression(), !6233)
  br label %if.end15, !dbg !6271

if.else10:                                        ; preds = %for.end
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !6272
  %call13 = call ptr @memcpy(ptr noundef %add.ptr11, ptr noundef nonnull %block, i32 noundef %xlen.addr.0) #6, !dbg !6274
  %add14 = add i32 %i.0, %xlen.addr.0, !dbg !6275
    #dbg_value(i32 %add14, !6237, !DIExpression(), !6233)
    #dbg_value(i32 0, !6234, !DIExpression(), !6233)
  br label %if.end15

if.end15:                                         ; preds = %if.else10, %if.then8
  %i.1 = phi i32 [ %add, %if.then8 ], [ %add14, %if.else10 ], !dbg !6276
  %xlen.addr.1 = phi i32 [ %sub, %if.then8 ], [ 0, %if.else10 ], !dbg !6276
    #dbg_value(i32 %xlen.addr.1, !6234, !DIExpression(), !6233)
    #dbg_value(i32 %i.1, !6237, !DIExpression(), !6233)
  br label %while.cond, !dbg !6238, !llvm.loop !6277

while.end:                                        ; preds = %while.cond
  call void @AES256_CTR_DRBG_Update(ptr noundef null, ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32)) #4, !dbg !6279
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6280
  %inc16 = add nsw i32 %2, 1, !dbg !6280
  store i32 %inc16, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6280
  ret i32 poison, !dbg !6281
}

; Function Attrs: nounwind
define dso_local void @randombytes_init(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) local_unnamed_addr #0 !dbg !6282 {
entry:
    #dbg_value(ptr %entropy_input, !6285, !DIExpression(), !6286)
    #dbg_value(ptr %personalization_string, !6287, !DIExpression(), !6286)
    #dbg_value(i32 %security_strength, !6288, !DIExpression(), !6286)
  call fastcc void @randombytes_init_nist(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) #4, !dbg !6289
  ret void, !dbg !6290
}

; Function Attrs: nounwind
define internal fastcc void @randombytes_init_nist(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) unnamed_addr #0 !dbg !6291 {
entry:
  %seed_material = alloca [48 x i8], align 1
    #dbg_value(ptr %entropy_input, !6292, !DIExpression(), !6293)
    #dbg_value(ptr %personalization_string, !6294, !DIExpression(), !6293)
    #dbg_value(i32 %security_strength, !6295, !DIExpression(), !6293)
    #dbg_declare(ptr %seed_material, !6296, !DIExpression(), !6297)
  %call = call ptr @memcpy(ptr noundef nonnull %seed_material, ptr noundef %entropy_input, i32 noundef 48) #6, !dbg !6298
  %tobool.not = icmp eq ptr %personalization_string, null, !dbg !6299
  br i1 %tobool.not, label %if.end, label %for.cond.preheader, !dbg !6299

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !6301

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !6303
    #dbg_value(i32 %i.0, !6304, !DIExpression(), !6305)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !6306
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !6301

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %personalization_string, i32 %i.0, !dbg !6308
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6308
  %arrayidx1 = getelementptr inbounds nuw [48 x i8], ptr %seed_material, i32 0, i32 %i.0, !dbg !6310
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !6311
  %xor1 = xor i8 %1, %0, !dbg !6311
  store i8 %xor1, ptr %arrayidx1, align 1, !dbg !6311
  %inc = add nuw nsw i32 %i.0, 1, !dbg !6312
    #dbg_value(i32 %inc, !6304, !DIExpression(), !6305)
  br label %for.cond, !dbg !6313, !llvm.loop !6314

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !6316

if.end:                                           ; preds = %if.end.loopexit, %entry
  %call4 = call ptr @memset(ptr noundef nonnull @DRBG_ctx, i32 noundef 0, i32 noundef 32) #6, !dbg !6316
  %call5 = call ptr @memset(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 noundef 0, i32 noundef 16) #6, !dbg !6317
  call void @AES256_CTR_DRBG_Update(ptr noundef nonnull %seed_material, ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32)) #4, !dbg !6318
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6319
  ret void, !dbg !6320
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
!42 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_2_ref_uint32_t_blocker", scope: !43, file: !58, line: 126, type: !63, isLocal: false, isDefinition: true)
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
!57 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_2_ref_uint64_t_blocker", scope: !43, file: !58, line: 127, type: !59, isLocal: false, isDefinition: true)
!58 = !DIFile(filename: "../../../src/arithmetic.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!59 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_2_ref_unsigned_char_blocker", scope: !43, file: !58, line: 128, type: !62, isLocal: false, isDefinition: true)
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
!275 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_keypair", scope: !25, file: !25, line: 312, type: !276, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!315 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_keypair_compact", scope: !25, file: !25, line: 549, type: !276, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!316 = !DILocalVariable(name: "p", arg: 1, scope: !315, file: !25, line: 549, type: !278)
!317 = !DILocation(line: 0, scope: !315)
!318 = !DILocalVariable(name: "cpk", arg: 2, scope: !315, file: !25, line: 549, type: !18)
!319 = !DILocalVariable(name: "csk", arg: 3, scope: !315, file: !25, line: 550, type: !18)
!320 = !DILocalVariable(name: "ret", scope: !315, file: !25, line: 551, type: !45)
!321 = !DILocalVariable(name: "seed_sk", scope: !315, file: !25, line: 552, type: !18)
!322 = !DILocalVariable(name: "S", scope: !315, file: !25, line: 553, type: !323)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4480, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 560)
!326 = !DILocation(line: 553, column: 17, scope: !315)
!327 = !DILocalVariable(name: "P", scope: !315, file: !25, line: 554, type: !328)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 811008, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 12672)
!331 = !DILocation(line: 554, column: 12, scope: !315)
!332 = !DILocalVariable(name: "P3", scope: !315, file: !25, line: 555, type: !333)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 73984, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 1156)
!336 = !DILocation(line: 555, column: 12, scope: !315)
!337 = !DILocalVariable(name: "O", scope: !315, file: !25, line: 558, type: !338)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8704, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 1088)
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
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 39168, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 612)
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
!462 = !DILocation(line: 284, column: 40, scope: !460)
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
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !39)
!682 = !DILocation(line: 272, column: 12, scope: !670)
!683 = !DILocalVariable(name: "i", scope: !684, file: !25, line: 273, type: !45)
!684 = distinct !DILexicalBlock(scope: !670, file: !25, line: 273, column: 3)
!685 = !DILocation(line: 0, scope: !684)
!686 = !DILocation(line: 273, column: 8, scope: !684)
!687 = !DILocation(line: 273, column: 28, scope: !688)
!688 = distinct !DILexicalBlock(scope: !684, file: !25, line: 273, column: 3)
!689 = !DILocation(line: 273, column: 3, scope: !684)
!690 = !DILocation(line: 273, scope: !684)
!691 = !DILocation(line: 274, column: 28, scope: !692)
!692 = distinct !DILexicalBlock(scope: !688, file: !25, line: 273, column: 39)
!693 = !DILocation(line: 274, column: 20, scope: !692)
!694 = !DILocation(line: 274, column: 5, scope: !692)
!695 = !DILocation(line: 275, column: 21, scope: !692)
!696 = !DILocation(line: 275, column: 17, scope: !692)
!697 = !DILocation(line: 275, column: 5, scope: !692)
!698 = !DILocation(line: 273, column: 3, scope: !688)
!699 = distinct !{!699, !689, !700, !244}
!700 = !DILocation(line: 277, column: 3, scope: !684)
!701 = !DILocation(line: 278, column: 1, scope: !670)
!702 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_expand_sk", scope: !25, file: !25, line: 324, type: !703, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!703 = !DISubroutineType(types: !704)
!704 = !{!45, !278, !49, !5}
!705 = !DILocalVariable(name: "p", arg: 1, scope: !702, file: !25, line: 324, type: !278)
!706 = !DILocation(line: 0, scope: !702)
!707 = !DILocalVariable(name: "csk", arg: 2, scope: !702, file: !25, line: 324, type: !49)
!708 = !DILocalVariable(name: "sk", arg: 3, scope: !702, file: !25, line: 324, type: !5)
!709 = !DILocalVariable(name: "ret", scope: !702, file: !25, line: 325, type: !45)
!710 = !DILocalVariable(name: "S", scope: !702, file: !25, line: 326, type: !323)
!711 = !DILocation(line: 326, column: 17, scope: !702)
!712 = !DILocalVariable(name: "P", scope: !702, file: !25, line: 327, type: !5)
!713 = !DILocation(line: 328, column: 22, scope: !702)
!714 = !DILocalVariable(name: "O", scope: !702, file: !25, line: 328, type: !18)
!715 = !DILocalVariable(name: "param_o", scope: !702, file: !25, line: 330, type: !343)
!716 = !DILocalVariable(name: "param_v", scope: !702, file: !25, line: 331, type: !343)
!717 = !DILocalVariable(name: "param_O_bytes", scope: !702, file: !25, line: 332, type: !343)
!718 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !702, file: !25, line: 333, type: !343)
!719 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !702, file: !25, line: 334, type: !343)
!720 = !DILocalVariable(name: "seed_sk", scope: !702, file: !25, line: 336, type: !49)
!721 = !DILocalVariable(name: "seed_pk", scope: !702, file: !25, line: 337, type: !18)
!722 = !DILocation(line: 339, column: 3, scope: !702)
!723 = !DILocation(line: 341, column: 12, scope: !702)
!724 = !DILocation(line: 341, column: 3, scope: !702)
!725 = !DILocation(line: 347, column: 3, scope: !702)
!726 = !DILocation(line: 354, column: 20, scope: !702)
!727 = !DILocalVariable(name: "P2", scope: !702, file: !25, line: 354, type: !5)
!728 = !DILocalVariable(name: "P1", scope: !702, file: !25, line: 356, type: !5)
!729 = !DILocalVariable(name: "L", scope: !702, file: !25, line: 359, type: !5)
!730 = !DILocation(line: 360, column: 3, scope: !702)
!731 = !DILocation(line: 368, column: 3, scope: !702)
!732 = !DILocation(line: 370, column: 3, scope: !702)
!733 = distinct !DISubprogram(name: "P1P1t_times_O", scope: !425, file: !425, line: 223, type: !471, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!734 = !DILocalVariable(name: "p", arg: 1, scope: !733, file: !425, line: 223, type: !278)
!735 = !DILocation(line: 0, scope: !733)
!736 = !DILocalVariable(name: "P1", arg: 2, scope: !733, file: !425, line: 223, type: !428)
!737 = !DILocalVariable(name: "O", arg: 3, scope: !733, file: !425, line: 223, type: !49)
!738 = !DILocalVariable(name: "acc", arg: 4, scope: !733, file: !425, line: 223, type: !5)
!739 = !DILocalVariable(name: "param_o", scope: !733, file: !425, line: 227, type: !343)
!740 = !DILocalVariable(name: "param_v", scope: !733, file: !425, line: 228, type: !343)
!741 = !DILocalVariable(name: "m_vec_limbs", scope: !733, file: !425, line: 229, type: !343)
!742 = !DILocalVariable(name: "bs_mat_entries_used", scope: !733, file: !425, line: 231, type: !45)
!743 = !DILocalVariable(name: "r", scope: !744, file: !425, line: 232, type: !45)
!744 = distinct !DILexicalBlock(scope: !733, file: !425, line: 232, column: 5)
!745 = !DILocation(line: 0, scope: !744)
!746 = !DILocation(line: 232, column: 10, scope: !744)
!747 = !DILocation(line: 231, column: 9, scope: !733)
!748 = !DILocation(line: 232, scope: !744)
!749 = !DILocation(line: 232, column: 23, scope: !750)
!750 = distinct !DILexicalBlock(scope: !744, file: !425, line: 232, column: 5)
!751 = !DILocation(line: 232, column: 5, scope: !744)
!752 = !DILocation(line: 233, column: 9, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !425, line: 233, column: 9)
!754 = distinct !DILexicalBlock(scope: !750, file: !425, line: 232, column: 39)
!755 = !DILocation(line: 233, scope: !753)
!756 = !DILocalVariable(name: "c", scope: !753, file: !425, line: 233, type: !45)
!757 = !DILocation(line: 0, scope: !753)
!758 = !DILocation(line: 233, column: 27, scope: !759)
!759 = distinct !DILexicalBlock(scope: !753, file: !425, line: 233, column: 9)
!760 = !DILocation(line: 234, column: 17, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !425, line: 234, column: 16)
!762 = distinct !DILexicalBlock(scope: !759, file: !425, line: 233, column: 43)
!763 = !DILocation(line: 238, column: 13, scope: !764)
!764 = distinct !DILexicalBlock(scope: !762, file: !425, line: 238, column: 13)
!765 = !DILocation(line: 238, scope: !764)
!766 = !DILocalVariable(name: "k", scope: !764, file: !425, line: 238, type: !45)
!767 = !DILocation(line: 0, scope: !764)
!768 = !DILocation(line: 238, column: 31, scope: !769)
!769 = distinct !DILexicalBlock(scope: !764, file: !425, line: 238, column: 13)
!770 = !DILocation(line: 239, column: 47, scope: !771)
!771 = distinct !DILexicalBlock(scope: !769, file: !425, line: 238, column: 50)
!772 = !DILocation(line: 239, column: 88, scope: !771)
!773 = !DILocation(line: 239, column: 84, scope: !771)
!774 = !DILocation(line: 239, column: 127, scope: !771)
!775 = !DILocation(line: 239, column: 137, scope: !771)
!776 = !DILocation(line: 239, column: 108, scope: !771)
!777 = !DILocation(line: 239, column: 17, scope: !771)
!778 = !DILocation(line: 240, column: 47, scope: !771)
!779 = !DILocation(line: 240, column: 88, scope: !771)
!780 = !DILocation(line: 240, column: 84, scope: !771)
!781 = !DILocation(line: 240, column: 127, scope: !771)
!782 = !DILocation(line: 240, column: 137, scope: !771)
!783 = !DILocation(line: 240, column: 108, scope: !771)
!784 = !DILocation(line: 240, column: 17, scope: !771)
!785 = !DILocation(line: 238, column: 44, scope: !769)
!786 = !DILocation(line: 238, column: 13, scope: !769)
!787 = distinct !{!787, !763, !788, !244}
!788 = !DILocation(line: 241, column: 13, scope: !764)
!789 = !DILocation(line: 0, scope: !762)
!790 = !DILocation(line: 233, column: 39, scope: !759)
!791 = !DILocation(line: 233, column: 9, scope: !759)
!792 = distinct !{!792, !752, !793, !244}
!793 = !DILocation(line: 243, column: 9, scope: !753)
!794 = !DILocation(line: 232, column: 35, scope: !750)
!795 = !DILocation(line: 232, column: 5, scope: !750)
!796 = distinct !{!796, !751, !797, !244}
!797 = !DILocation(line: 244, column: 5, scope: !744)
!798 = !DILocation(line: 247, column: 1, scope: !733)
!799 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_sign_signature", scope: !25, file: !25, line: 373, type: !800, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!800 = !DISubroutineType(types: !801)
!801 = !{!45, !278, !18, !802, !49, !15, !49}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!803 = !DILocalVariable(name: "p", arg: 1, scope: !799, file: !25, line: 373, type: !278)
!804 = !DILocation(line: 0, scope: !799)
!805 = !DILocalVariable(name: "sig", arg: 2, scope: !799, file: !25, line: 373, type: !18)
!806 = !DILocalVariable(name: "siglen", arg: 3, scope: !799, file: !25, line: 374, type: !802)
!807 = !DILocalVariable(name: "m", arg: 4, scope: !799, file: !25, line: 374, type: !49)
!808 = !DILocalVariable(name: "mlen", arg: 5, scope: !799, file: !25, line: 374, type: !15)
!809 = !DILocalVariable(name: "csk", arg: 6, scope: !799, file: !25, line: 375, type: !49)
!810 = !DILocalVariable(name: "ret", scope: !799, file: !25, line: 376, type: !45)
!811 = !DILocalVariable(name: "tenc", scope: !799, file: !25, line: 377, type: !112)
!812 = !DILocation(line: 377, column: 17, scope: !799)
!813 = !DILocalVariable(name: "t", scope: !799, file: !25, line: 377, type: !814)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 64)
!817 = !DILocation(line: 377, column: 36, scope: !799)
!818 = !DILocalVariable(name: "y", scope: !799, file: !25, line: 378, type: !814)
!819 = !DILocation(line: 378, column: 17, scope: !799)
!820 = !DILocalVariable(name: "salt", scope: !799, file: !25, line: 379, type: !821)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, elements: !73)
!822 = !DILocation(line: 379, column: 17, scope: !799)
!823 = !DILocalVariable(name: "V", scope: !799, file: !25, line: 380, type: !824)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1296, elements: !825)
!825 = !{!826}
!826 = !DISubrange(count: 162)
!827 = !DILocation(line: 380, column: 17, scope: !799)
!828 = !DILocalVariable(name: "Vdec", scope: !799, file: !25, line: 381, type: !829)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !830)
!830 = !{!831}
!831 = !DISubrange(count: 256)
!832 = !DILocation(line: 381, column: 7, scope: !799)
!833 = !DILocalVariable(name: "A", scope: !799, file: !25, line: 382, type: !834)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 35328, elements: !835)
!835 = !{!836}
!836 = !DISubrange(count: 4416)
!837 = !DILocation(line: 382, column: 17, scope: !799)
!838 = !DILocalVariable(name: "x", scope: !799, file: !25, line: 384, type: !839)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2592, elements: !840)
!840 = !{!841}
!841 = !DISubrange(count: 324)
!842 = !DILocation(line: 384, column: 17, scope: !799)
!843 = !DILocalVariable(name: "r", scope: !799, file: !25, line: 385, type: !844)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 552, elements: !845)
!845 = !{!846}
!846 = !DISubrange(count: 69)
!847 = !DILocation(line: 385, column: 17, scope: !799)
!848 = !DILocalVariable(name: "s", scope: !799, file: !25, line: 386, type: !839)
!849 = !DILocation(line: 386, column: 17, scope: !799)
!850 = !DILocalVariable(name: "sk", scope: !799, file: !25, line: 388, type: !185, align: 256)
!851 = !DILocation(line: 388, column: 20, scope: !799)
!852 = !DILocalVariable(name: "Ox", scope: !799, file: !25, line: 389, type: !814)
!853 = !DILocation(line: 389, column: 17, scope: !799)
!854 = !DILocalVariable(name: "tmp", scope: !799, file: !25, line: 390, type: !855)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 648, elements: !856)
!856 = !{!857}
!857 = !DISubrange(count: 81)
!858 = !DILocation(line: 390, column: 17, scope: !799)
!859 = !DILocalVariable(name: "param_m", scope: !799, file: !25, line: 394, type: !343)
!860 = !DILocalVariable(name: "param_n", scope: !799, file: !25, line: 395, type: !343)
!861 = !DILocalVariable(name: "param_o", scope: !799, file: !25, line: 396, type: !343)
!862 = !DILocalVariable(name: "param_k", scope: !799, file: !25, line: 397, type: !343)
!863 = !DILocalVariable(name: "param_v", scope: !799, file: !25, line: 398, type: !343)
!864 = !DILocalVariable(name: "param_m_bytes", scope: !799, file: !25, line: 399, type: !343)
!865 = !DILocalVariable(name: "param_v_bytes", scope: !799, file: !25, line: 400, type: !343)
!866 = !DILocalVariable(name: "param_r_bytes", scope: !799, file: !25, line: 401, type: !343)
!867 = !DILocalVariable(name: "param_sig_bytes", scope: !799, file: !25, line: 402, type: !343)
!868 = !DILocalVariable(name: "param_A_cols", scope: !799, file: !25, line: 403, type: !343)
!869 = !DILocalVariable(name: "param_digest_bytes", scope: !799, file: !25, line: 404, type: !343)
!870 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !799, file: !25, line: 405, type: !343)
!871 = !DILocalVariable(name: "param_salt_bytes", scope: !799, file: !25, line: 406, type: !343)
!872 = !DILocation(line: 408, column: 9, scope: !799)
!873 = !DILocalVariable(name: "seed_sk", scope: !799, file: !25, line: 387, type: !49)
!874 = !DILocation(line: 416, column: 3, scope: !799)
!875 = !DILocalVariable(name: "P1", scope: !799, file: !25, line: 418, type: !5)
!876 = !DILocalVariable(name: "L", scope: !799, file: !25, line: 419, type: !5)
!877 = !DILocalVariable(name: "Mtmp", scope: !799, file: !25, line: 420, type: !878)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 17408, elements: !879)
!879 = !{!880}
!880 = !DISubrange(count: 272)
!881 = !DILocation(line: 420, column: 12, scope: !799)
!882 = !DILocation(line: 435, column: 23, scope: !883)
!883 = distinct !DILexicalBlock(scope: !799, file: !25, line: 435, column: 7)
!884 = !DILocation(line: 435, column: 7, scope: !883)
!885 = !DILocation(line: 442, column: 35, scope: !799)
!886 = !DILocation(line: 442, column: 3, scope: !799)
!887 = !DILocation(line: 444, column: 3, scope: !799)
!888 = !DILocation(line: 452, column: 14, scope: !799)
!889 = !DILocation(line: 452, column: 3, scope: !799)
!890 = !DILocation(line: 453, column: 57, scope: !799)
!891 = !DILocalVariable(name: "ctrbyte", scope: !799, file: !25, line: 391, type: !18)
!892 = !DILocation(line: 455, column: 3, scope: !799)
!893 = !DILocation(line: 457, column: 3, scope: !799)
!894 = !DILocation(line: 460, column: 12, scope: !799)
!895 = !DILocation(line: 462, column: 3, scope: !799)
!896 = !DILocalVariable(name: "i", scope: !897, file: !25, line: 466, type: !45)
!897 = distinct !DILexicalBlock(scope: !799, file: !25, line: 466, column: 3)
!898 = !DILocation(line: 0, scope: !897)
!899 = !DILocation(line: 466, column: 8, scope: !897)
!900 = !DILocation(line: 466, scope: !897)
!901 = !DILocation(line: 466, column: 21, scope: !902)
!902 = distinct !DILexicalBlock(scope: !897, file: !25, line: 466, column: 3)
!903 = !DILocation(line: 466, column: 3, scope: !897)
!904 = !DILocation(line: 467, column: 18, scope: !905)
!905 = distinct !DILexicalBlock(scope: !902, file: !25, line: 466, column: 42)
!906 = !DILocation(line: 467, column: 14, scope: !905)
!907 = !DILocation(line: 467, column: 44, scope: !905)
!908 = !DILocation(line: 467, column: 40, scope: !905)
!909 = !DILocation(line: 467, column: 5, scope: !905)
!910 = !DILocation(line: 466, column: 37, scope: !902)
!911 = !DILocation(line: 466, column: 3, scope: !902)
!912 = distinct !{!912, !903, !913, !244}
!913 = !DILocation(line: 468, column: 3, scope: !897)
!914 = !DILocation(line: 419, column: 20, scope: !799)
!915 = !DILocation(line: 470, column: 3, scope: !799)
!916 = !DILocation(line: 472, column: 3, scope: !799)
!917 = !DILocation(line: 473, column: 3, scope: !799)
!918 = !DILocalVariable(name: "i", scope: !919, file: !25, line: 475, type: !45)
!919 = distinct !DILexicalBlock(scope: !799, file: !25, line: 475, column: 3)
!920 = !DILocation(line: 0, scope: !919)
!921 = !DILocation(line: 475, column: 8, scope: !919)
!922 = !DILocation(line: 475, scope: !919)
!923 = !DILocation(line: 475, column: 21, scope: !924)
!924 = distinct !DILexicalBlock(scope: !919, file: !25, line: 475, column: 3)
!925 = !DILocation(line: 475, column: 3, scope: !919)
!926 = !DILocation(line: 476, column: 15, scope: !927)
!927 = distinct !DILexicalBlock(scope: !924, file: !25, line: 475, column: 37)
!928 = !DILocation(line: 476, column: 41, scope: !927)
!929 = !DILocation(line: 476, column: 5, scope: !927)
!930 = !DILocation(line: 476, column: 46, scope: !927)
!931 = !DILocation(line: 475, column: 33, scope: !924)
!932 = !DILocation(line: 475, column: 3, scope: !924)
!933 = distinct !{!933, !925, !934, !244}
!934 = !DILocation(line: 477, column: 3, scope: !919)
!935 = !DILocation(line: 479, column: 12, scope: !799)
!936 = !DILocation(line: 479, column: 3, scope: !799)
!937 = !DILocation(line: 481, column: 7, scope: !938)
!938 = distinct !DILexicalBlock(scope: !799, file: !25, line: 481, column: 7)
!939 = !DILocation(line: 484, column: 5, scope: !940)
!940 = distinct !DILexicalBlock(scope: !938, file: !25, line: 483, column: 10)
!941 = !DILocation(line: 485, column: 5, scope: !940)
!942 = !DILocalVariable(name: "i", scope: !943, file: !25, line: 489, type: !45)
!943 = distinct !DILexicalBlock(scope: !799, file: !25, line: 489, column: 3)
!944 = !DILocation(line: 0, scope: !943)
!945 = !DILocation(line: 489, column: 8, scope: !943)
!946 = !DILocation(line: 489, scope: !943)
!947 = !DILocation(line: 489, column: 21, scope: !948)
!948 = distinct !DILexicalBlock(scope: !943, file: !25, line: 489, column: 3)
!949 = !DILocation(line: 489, column: 3, scope: !943)
!950 = !DILocation(line: 490, column: 19, scope: !951)
!951 = distinct !DILexicalBlock(scope: !948, file: !25, line: 489, column: 42)
!952 = !DILocation(line: 490, column: 15, scope: !951)
!953 = !DILocalVariable(name: "vi", scope: !799, file: !25, line: 392, type: !18)
!954 = !DILocation(line: 491, column: 13, scope: !951)
!955 = !DILocation(line: 491, column: 29, scope: !951)
!956 = !DILocation(line: 491, column: 25, scope: !951)
!957 = !DILocation(line: 491, column: 5, scope: !951)
!958 = !DILocation(line: 492, column: 27, scope: !951)
!959 = !DILocation(line: 492, column: 23, scope: !951)
!960 = !DILocation(line: 492, column: 5, scope: !951)
!961 = !DILocation(line: 493, column: 18, scope: !951)
!962 = !DILocation(line: 493, column: 14, scope: !951)
!963 = !DILocation(line: 493, column: 28, scope: !951)
!964 = !DILocation(line: 493, column: 57, scope: !951)
!965 = !DILocation(line: 493, column: 53, scope: !951)
!966 = !DILocation(line: 493, column: 5, scope: !951)
!967 = !DILocation(line: 489, column: 37, scope: !948)
!968 = !DILocation(line: 489, column: 3, scope: !948)
!969 = distinct !{!969, !949, !970, !244}
!970 = !DILocation(line: 494, column: 3, scope: !943)
!971 = !DILocation(line: 495, column: 3, scope: !799)
!972 = !DILocation(line: 497, column: 32, scope: !799)
!973 = !DILocation(line: 497, column: 3, scope: !799)
!974 = !DILocation(line: 498, column: 11, scope: !799)
!975 = !DILabel(scope: !799, name: "err", file: !25, line: 500)
!976 = !DILocation(line: 500, column: 1, scope: !799)
!977 = !DILocation(line: 501, column: 3, scope: !799)
!978 = !DILocation(line: 502, column: 3, scope: !799)
!979 = !DILocation(line: 503, column: 3, scope: !799)
!980 = !DILocation(line: 504, column: 3, scope: !799)
!981 = !DILocation(line: 505, column: 21, scope: !799)
!982 = !DILocation(line: 505, column: 3, scope: !799)
!983 = !DILocation(line: 506, column: 3, scope: !799)
!984 = !DILocation(line: 507, column: 3, scope: !799)
!985 = !DILocation(line: 508, column: 3, scope: !799)
!986 = !DILocation(line: 509, column: 3, scope: !799)
!987 = !DILocation(line: 512, column: 3, scope: !799)
!988 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !425, file: !425, line: 251, type: !989, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !278, !49, !428, !428, !5, !5}
!991 = !DILocalVariable(name: "p", arg: 1, scope: !988, file: !425, line: 251, type: !278)
!992 = !DILocation(line: 0, scope: !988)
!993 = !DILocalVariable(name: "Vdec", arg: 2, scope: !988, file: !425, line: 251, type: !49)
!994 = !DILocalVariable(name: "L", arg: 3, scope: !988, file: !425, line: 251, type: !428)
!995 = !DILocalVariable(name: "P1", arg: 4, scope: !988, file: !425, line: 251, type: !428)
!996 = !DILocalVariable(name: "VL", arg: 5, scope: !988, file: !425, line: 251, type: !5)
!997 = !DILocalVariable(name: "VP1V", arg: 6, scope: !988, file: !425, line: 251, type: !5)
!998 = !DILocalVariable(name: "param_k", scope: !988, file: !425, line: 253, type: !343)
!999 = !DILocalVariable(name: "param_v", scope: !988, file: !425, line: 254, type: !343)
!1000 = !DILocalVariable(name: "param_o", scope: !988, file: !425, line: 255, type: !343)
!1001 = !DILocation(line: 258, column: 5, scope: !988)
!1002 = !DILocalVariable(name: "Pv", scope: !988, file: !425, line: 261, type: !1003)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 65536, elements: !1004)
!1004 = !{!1005}
!1005 = !DISubrange(count: 1024)
!1006 = !DILocation(line: 261, column: 14, scope: !988)
!1007 = !DILocation(line: 262, column: 5, scope: !988)
!1008 = !DILocation(line: 263, column: 5, scope: !988)
!1009 = !DILocation(line: 265, column: 1, scope: !988)
!1010 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 46, type: !1011, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !278, !5, !49, !18}
!1013 = !DILocalVariable(name: "p", arg: 1, scope: !1010, file: !25, line: 46, type: !278)
!1014 = !DILocation(line: 0, scope: !1010)
!1015 = !DILocalVariable(name: "vPv", arg: 2, scope: !1010, file: !25, line: 46, type: !5)
!1016 = !DILocalVariable(name: "t", arg: 3, scope: !1010, file: !25, line: 47, type: !49)
!1017 = !DILocalVariable(name: "y", arg: 4, scope: !1010, file: !25, line: 47, type: !18)
!1018 = !DILocalVariable(name: "top_pos", scope: !1010, file: !25, line: 52, type: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!1020 = !DILocalVariable(name: "m_vec_limbs", scope: !1010, file: !25, line: 53, type: !1019)
!1021 = !DILocalVariable(name: "temp", scope: !1010, file: !25, line: 65, type: !681)
!1022 = !DILocation(line: 65, column: 12, scope: !1010)
!1023 = !DILocalVariable(name: "temp_bytes", scope: !1010, file: !25, line: 66, type: !18)
!1024 = !DILocalVariable(name: "i", scope: !1025, file: !25, line: 67, type: !45)
!1025 = distinct !DILexicalBlock(scope: !1010, file: !25, line: 67, column: 3)
!1026 = !DILocation(line: 0, scope: !1025)
!1027 = !DILocation(line: 67, column: 8, scope: !1025)
!1028 = !DILocation(line: 67, scope: !1025)
!1029 = !DILocation(line: 67, column: 34, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1025, file: !25, line: 67, column: 3)
!1031 = !DILocation(line: 67, column: 3, scope: !1025)
!1032 = !DILocation(line: 68, column: 5, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !25, line: 68, column: 5)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !25, line: 67, column: 45)
!1035 = !DILocation(line: 104, column: 3, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1010, file: !25, line: 104, column: 3)
!1037 = !DILocation(line: 68, scope: !1033)
!1038 = !DILocalVariable(name: "j", scope: !1033, file: !25, line: 68, type: !45)
!1039 = !DILocation(line: 0, scope: !1033)
!1040 = !DILocation(line: 68, column: 23, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1033, file: !25, line: 68, column: 5)
!1042 = !DILocation(line: 70, column: 28, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1041, file: !25, line: 68, column: 42)
!1044 = !DILocation(line: 70, column: 50, scope: !1043)
!1045 = !DILocalVariable(name: "top", scope: !1043, file: !25, line: 70, type: !14)
!1046 = !DILocation(line: 0, scope: !1043)
!1047 = !DILocation(line: 71, column: 7, scope: !1043)
!1048 = !DILocation(line: 71, column: 29, scope: !1043)
!1049 = !DILocalVariable(name: "k", scope: !1050, file: !25, line: 72, type: !45)
!1050 = distinct !DILexicalBlock(scope: !1043, file: !25, line: 72, column: 7)
!1051 = !DILocation(line: 0, scope: !1050)
!1052 = !DILocation(line: 72, column: 12, scope: !1050)
!1053 = !DILocation(line: 72, scope: !1050)
!1054 = !DILocation(line: 72, column: 39, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !25, line: 72, column: 7)
!1056 = !DILocation(line: 72, column: 7, scope: !1050)
!1057 = !DILocation(line: 70, column: 27, scope: !1043)
!1058 = !DILocation(line: 77, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1043, file: !25, line: 77, column: 7)
!1060 = !DILocation(line: 73, column: 24, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1055, file: !25, line: 72, column: 50)
!1062 = !DILocation(line: 73, column: 32, scope: !1061)
!1063 = !DILocation(line: 73, column: 16, scope: !1061)
!1064 = !DILocation(line: 73, column: 9, scope: !1061)
!1065 = !DILocation(line: 73, column: 21, scope: !1061)
!1066 = !DILocation(line: 74, column: 9, scope: !1061)
!1067 = !DILocation(line: 74, column: 17, scope: !1061)
!1068 = !DILocation(line: 72, column: 46, scope: !1055)
!1069 = !DILocation(line: 72, column: 7, scope: !1055)
!1070 = distinct !{!1070, !1056, !1071, !244}
!1071 = !DILocation(line: 75, column: 7, scope: !1050)
!1072 = !DILocation(line: 77, scope: !1059)
!1073 = !DILocalVariable(name: "jj", scope: !1059, file: !25, line: 77, type: !45)
!1074 = !DILocation(line: 0, scope: !1059)
!1075 = !DILocation(line: 77, column: 27, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1059, file: !25, line: 77, column: 7)
!1077 = !DILocation(line: 96, column: 7, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1043, file: !25, line: 96, column: 7)
!1079 = !DILocation(line: 78, column: 16, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !25, line: 78, column: 13)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !25, line: 77, column: 47)
!1082 = !DILocation(line: 78, column: 20, scope: !1080)
!1083 = !DILocation(line: 83, column: 44, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !25, line: 78, column: 26)
!1085 = !DILocation(line: 83, column: 33, scope: !1084)
!1086 = !DILocation(line: 83, column: 25, scope: !1084)
!1087 = !DILocation(line: 83, column: 11, scope: !1084)
!1088 = !DILocation(line: 83, column: 30, scope: !1084)
!1089 = !DILocation(line: 85, column: 9, scope: !1084)
!1090 = !DILocation(line: 90, column: 44, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1080, file: !25, line: 85, column: 16)
!1092 = !DILocation(line: 90, column: 33, scope: !1091)
!1093 = !DILocation(line: 90, column: 65, scope: !1091)
!1094 = !DILocation(line: 90, column: 25, scope: !1091)
!1095 = !DILocation(line: 90, column: 11, scope: !1091)
!1096 = !DILocation(line: 90, column: 30, scope: !1091)
!1097 = !DILocation(line: 77, column: 43, scope: !1076)
!1098 = !DILocation(line: 77, column: 7, scope: !1076)
!1099 = distinct !{!1099, !1058, !1100, !244}
!1100 = !DILocation(line: 93, column: 7, scope: !1059)
!1101 = !DILocation(line: 96, scope: !1078)
!1102 = !DILocalVariable(name: "k", scope: !1078, file: !25, line: 96, type: !15)
!1103 = !DILocation(line: 0, scope: !1078)
!1104 = !DILocation(line: 96, column: 28, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1078, file: !25, line: 96, column: 7)
!1106 = !DILocation(line: 97, column: 45, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1105, file: !25, line: 96, column: 48)
!1108 = !DILocation(line: 97, column: 59, scope: !1107)
!1109 = !DILocation(line: 97, column: 20, scope: !1107)
!1110 = !DILocation(line: 98, column: 24, scope: !1107)
!1111 = !DILocation(line: 98, column: 57, scope: !1107)
!1112 = !DILocation(line: 98, column: 71, scope: !1107)
!1113 = !DILocation(line: 98, column: 32, scope: !1107)
!1114 = !DILocation(line: 98, column: 30, scope: !1107)
!1115 = !DILocation(line: 97, column: 64, scope: !1107)
!1116 = !DILocation(line: 97, column: 9, scope: !1107)
!1117 = !DILocation(line: 97, column: 17, scope: !1107)
!1118 = !DILocation(line: 96, column: 44, scope: !1105)
!1119 = !DILocation(line: 96, column: 7, scope: !1105)
!1120 = distinct !{!1120, !1077, !1121, !244}
!1121 = !DILocation(line: 99, column: 7, scope: !1078)
!1122 = !DILocation(line: 68, column: 38, scope: !1041)
!1123 = !DILocation(line: 68, column: 5, scope: !1041)
!1124 = distinct !{!1124, !1032, !1125, !244}
!1125 = !DILocation(line: 100, column: 5, scope: !1033)
!1126 = !DILocation(line: 67, column: 41, scope: !1030)
!1127 = !DILocation(line: 67, column: 3, scope: !1030)
!1128 = distinct !{!1128, !1031, !1129, !244}
!1129 = !DILocation(line: 101, column: 3, scope: !1025)
!1130 = !DILocation(line: 104, scope: !1036)
!1131 = !DILocalVariable(name: "i", scope: !1036, file: !25, line: 104, type: !45)
!1132 = !DILocation(line: 0, scope: !1036)
!1133 = !DILocation(line: 104, column: 21, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1036, file: !25, line: 104, column: 3)
!1135 = !DILocation(line: 110, column: 12, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1134, file: !25, line: 104, column: 43)
!1137 = !DILocation(line: 110, column: 33, scope: !1136)
!1138 = !DILocation(line: 110, column: 20, scope: !1136)
!1139 = !DILocation(line: 110, column: 38, scope: !1136)
!1140 = !DILocation(line: 110, column: 17, scope: !1136)
!1141 = !DILocation(line: 110, column: 5, scope: !1136)
!1142 = !DILocation(line: 110, column: 10, scope: !1136)
!1143 = !DILocation(line: 111, column: 20, scope: !1136)
!1144 = !DILocation(line: 111, column: 16, scope: !1136)
!1145 = !DILocation(line: 111, column: 41, scope: !1136)
!1146 = !DILocation(line: 111, column: 28, scope: !1136)
!1147 = !DILocation(line: 111, column: 46, scope: !1136)
!1148 = !DILocation(line: 111, column: 25, scope: !1136)
!1149 = !DILocation(line: 111, column: 9, scope: !1136)
!1150 = !DILocation(line: 111, column: 5, scope: !1136)
!1151 = !DILocation(line: 111, column: 14, scope: !1136)
!1152 = !DILocation(line: 104, column: 37, scope: !1134)
!1153 = !DILocation(line: 104, column: 3, scope: !1134)
!1154 = distinct !{!1154, !1035, !1155, !244}
!1155 = !DILocation(line: 113, column: 3, scope: !1036)
!1156 = !DILocation(line: 115, column: 1, scope: !1010)
!1157 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 156, type: !1158, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null, !278, !5, !18}
!1160 = !DILocalVariable(name: "p", arg: 1, scope: !1157, file: !25, line: 156, type: !278)
!1161 = !DILocation(line: 0, scope: !1157)
!1162 = !DILocalVariable(name: "VtL", arg: 2, scope: !1157, file: !25, line: 156, type: !5)
!1163 = !DILocalVariable(name: "A_out", arg: 3, scope: !1157, file: !25, line: 157, type: !18)
!1164 = !DILocalVariable(name: "bits_to_shift", scope: !1157, file: !25, line: 162, type: !45)
!1165 = !DILocalVariable(name: "words_to_shift", scope: !1157, file: !25, line: 163, type: !45)
!1166 = !DILocalVariable(name: "m_vec_limbs", scope: !1157, file: !25, line: 164, type: !343)
!1167 = !DILocalVariable(name: "A", scope: !1157, file: !25, line: 165, type: !1168)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 40960, elements: !1169)
!1169 = !{!1170}
!1170 = !DISubrange(count: 640)
!1171 = !DILocation(line: 165, column: 12, scope: !1157)
!1172 = !DILocalVariable(name: "A_width", scope: !1157, file: !25, line: 166, type: !15)
!1173 = !DILocalVariable(name: "i", scope: !1174, file: !25, line: 179, type: !45)
!1174 = distinct !DILexicalBlock(scope: !1157, file: !25, line: 179, column: 3)
!1175 = !DILocation(line: 0, scope: !1174)
!1176 = !DILocation(line: 179, column: 8, scope: !1174)
!1177 = !DILocation(line: 179, scope: !1174)
!1178 = !DILocation(line: 163, column: 7, scope: !1157)
!1179 = !DILocation(line: 162, column: 7, scope: !1157)
!1180 = !DILocation(line: 179, column: 21, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1174, file: !25, line: 179, column: 3)
!1182 = !DILocation(line: 179, column: 3, scope: !1174)
!1183 = !DILocation(line: 180, column: 5, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !25, line: 180, column: 5)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !25, line: 179, column: 45)
!1186 = !DILocation(line: 216, column: 3, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1157, file: !25, line: 216, column: 3)
!1188 = !DILocation(line: 180, scope: !1184)
!1189 = !DILocalVariable(name: "j", scope: !1184, file: !25, line: 180, type: !45)
!1190 = !DILocation(line: 0, scope: !1184)
!1191 = !DILocation(line: 180, column: 36, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1184, file: !25, line: 180, column: 5)
!1193 = !DILocation(line: 182, column: 16, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1192, file: !25, line: 180, column: 47)
!1195 = !DILocalVariable(name: "Mj", scope: !1157, file: !25, line: 167, type: !428)
!1196 = !DILocalVariable(name: "c", scope: !1197, file: !25, line: 183, type: !45)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !25, line: 183, column: 7)
!1198 = !DILocation(line: 0, scope: !1197)
!1199 = !DILocation(line: 183, column: 12, scope: !1197)
!1200 = !DILocation(line: 183, scope: !1197)
!1201 = !DILocation(line: 183, column: 25, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !25, line: 183, column: 7)
!1203 = !DILocation(line: 183, column: 7, scope: !1197)
!1204 = !DILocation(line: 184, column: 9, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !25, line: 184, column: 9)
!1206 = distinct !DILexicalBlock(scope: !1202, file: !25, line: 183, column: 44)
!1207 = !DILocation(line: 184, scope: !1205)
!1208 = !DILocalVariable(name: "k", scope: !1205, file: !25, line: 184, type: !45)
!1209 = !DILocation(line: 0, scope: !1205)
!1210 = !DILocation(line: 184, column: 27, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1205, file: !25, line: 184, column: 9)
!1212 = !DILocation(line: 186, column: 24, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1211, file: !25, line: 184, column: 47)
!1214 = !DILocation(line: 186, column: 20, scope: !1213)
!1215 = !DILocation(line: 186, column: 15, scope: !1213)
!1216 = !DILocation(line: 186, column: 39, scope: !1213)
!1217 = !DILocation(line: 185, column: 24, scope: !1213)
!1218 = !DILocation(line: 185, column: 28, scope: !1213)
!1219 = !DILocation(line: 185, column: 37, scope: !1213)
!1220 = !DILocation(line: 185, column: 55, scope: !1213)
!1221 = !DILocation(line: 185, column: 32, scope: !1213)
!1222 = !DILocation(line: 185, column: 11, scope: !1213)
!1223 = !DILocation(line: 185, column: 66, scope: !1213)
!1224 = !DILocation(line: 187, column: 29, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1213, file: !25, line: 187, column: 15)
!1226 = !DILocation(line: 189, column: 26, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1225, file: !25, line: 187, column: 34)
!1228 = !DILocation(line: 189, column: 22, scope: !1227)
!1229 = !DILocation(line: 189, column: 17, scope: !1227)
!1230 = !DILocation(line: 189, column: 48, scope: !1227)
!1231 = !DILocation(line: 189, column: 41, scope: !1227)
!1232 = !DILocation(line: 188, column: 26, scope: !1227)
!1233 = !DILocation(line: 188, column: 30, scope: !1227)
!1234 = !DILocation(line: 188, column: 39, scope: !1227)
!1235 = !DILocation(line: 188, column: 61, scope: !1227)
!1236 = !DILocation(line: 188, column: 34, scope: !1227)
!1237 = !DILocation(line: 188, column: 13, scope: !1227)
!1238 = !DILocation(line: 188, column: 72, scope: !1227)
!1239 = !DILocation(line: 190, column: 11, scope: !1227)
!1240 = !DILocation(line: 184, column: 43, scope: !1211)
!1241 = !DILocation(line: 184, column: 9, scope: !1211)
!1242 = distinct !{!1242, !1204, !1243, !244}
!1243 = !DILocation(line: 191, column: 9, scope: !1205)
!1244 = !DILocation(line: 183, column: 40, scope: !1202)
!1245 = !DILocation(line: 183, column: 7, scope: !1202)
!1246 = distinct !{!1246, !1203, !1247, !244}
!1247 = !DILocation(line: 192, column: 7, scope: !1197)
!1248 = !DILocation(line: 194, column: 13, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1194, file: !25, line: 194, column: 11)
!1250 = !DILocation(line: 195, column: 18, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1249, file: !25, line: 194, column: 19)
!1252 = !DILocalVariable(name: "Mi", scope: !1157, file: !25, line: 167, type: !428)
!1253 = !DILocalVariable(name: "c", scope: !1254, file: !25, line: 196, type: !45)
!1254 = distinct !DILexicalBlock(scope: !1251, file: !25, line: 196, column: 9)
!1255 = !DILocation(line: 0, scope: !1254)
!1256 = !DILocation(line: 196, column: 14, scope: !1254)
!1257 = !DILocation(line: 196, scope: !1254)
!1258 = !DILocation(line: 196, column: 27, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1254, file: !25, line: 196, column: 9)
!1260 = !DILocation(line: 196, column: 9, scope: !1254)
!1261 = !DILocation(line: 197, column: 11, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !25, line: 197, column: 11)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !25, line: 196, column: 46)
!1264 = !DILocation(line: 197, scope: !1262)
!1265 = !DILocalVariable(name: "k", scope: !1262, file: !25, line: 197, type: !45)
!1266 = !DILocation(line: 0, scope: !1262)
!1267 = !DILocation(line: 197, column: 29, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1262, file: !25, line: 197, column: 11)
!1269 = !DILocation(line: 199, column: 26, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1268, file: !25, line: 197, column: 49)
!1271 = !DILocation(line: 199, column: 22, scope: !1270)
!1272 = !DILocation(line: 199, column: 17, scope: !1270)
!1273 = !DILocation(line: 199, column: 41, scope: !1270)
!1274 = !DILocation(line: 198, column: 26, scope: !1270)
!1275 = !DILocation(line: 198, column: 30, scope: !1270)
!1276 = !DILocation(line: 198, column: 39, scope: !1270)
!1277 = !DILocation(line: 198, column: 57, scope: !1270)
!1278 = !DILocation(line: 198, column: 34, scope: !1270)
!1279 = !DILocation(line: 198, column: 13, scope: !1270)
!1280 = !DILocation(line: 198, column: 68, scope: !1270)
!1281 = !DILocation(line: 200, column: 31, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1270, file: !25, line: 200, column: 17)
!1283 = !DILocation(line: 202, column: 28, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1282, file: !25, line: 200, column: 36)
!1285 = !DILocation(line: 202, column: 24, scope: !1284)
!1286 = !DILocation(line: 202, column: 19, scope: !1284)
!1287 = !DILocation(line: 202, column: 50, scope: !1284)
!1288 = !DILocation(line: 202, column: 43, scope: !1284)
!1289 = !DILocation(line: 201, column: 28, scope: !1284)
!1290 = !DILocation(line: 201, column: 32, scope: !1284)
!1291 = !DILocation(line: 201, column: 41, scope: !1284)
!1292 = !DILocation(line: 201, column: 63, scope: !1284)
!1293 = !DILocation(line: 201, column: 36, scope: !1284)
!1294 = !DILocation(line: 201, column: 15, scope: !1284)
!1295 = !DILocation(line: 201, column: 74, scope: !1284)
!1296 = !DILocation(line: 203, column: 13, scope: !1284)
!1297 = !DILocation(line: 197, column: 45, scope: !1268)
!1298 = !DILocation(line: 197, column: 11, scope: !1268)
!1299 = distinct !{!1299, !1261, !1300, !244}
!1300 = !DILocation(line: 204, column: 11, scope: !1262)
!1301 = !DILocation(line: 196, column: 42, scope: !1259)
!1302 = !DILocation(line: 196, column: 9, scope: !1259)
!1303 = distinct !{!1303, !1260, !1304, !244}
!1304 = !DILocation(line: 205, column: 9, scope: !1254)
!1305 = !DILocation(line: 208, column: 21, scope: !1194)
!1306 = !DILocation(line: 209, column: 25, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1194, file: !25, line: 209, column: 11)
!1308 = !DILocation(line: 180, column: 42, scope: !1192)
!1309 = !DILocation(line: 180, column: 5, scope: !1192)
!1310 = distinct !{!1310, !1183, !1311, !244}
!1311 = !DILocation(line: 213, column: 5, scope: !1184)
!1312 = !DILocation(line: 179, column: 40, scope: !1181)
!1313 = !DILocation(line: 179, column: 3, scope: !1181)
!1314 = distinct !{!1314, !1182, !1315, !244}
!1315 = !DILocation(line: 214, column: 3, scope: !1174)
!1316 = !DILocation(line: 0, scope: !1187)
!1317 = !DILocalVariable(name: "c", scope: !1187, file: !25, line: 216, type: !15)
!1318 = !DILocation(line: 217, column: 10, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1187, file: !25, line: 216, column: 3)
!1320 = !DILocation(line: 220, column: 31, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1319, file: !25, line: 219, column: 17)
!1322 = !DILocation(line: 220, column: 5, scope: !1321)
!1323 = !DILocation(line: 219, column: 10, scope: !1319)
!1324 = !DILocation(line: 216, column: 3, scope: !1319)
!1325 = distinct !{!1325, !1186, !1326, !244}
!1326 = !DILocation(line: 221, column: 3, scope: !1187)
!1327 = !DILocalVariable(name: "tab", scope: !1157, file: !25, line: 223, type: !116)
!1328 = !DILocation(line: 223, column: 17, scope: !1157)
!1329 = !DILocalVariable(name: "i", scope: !1330, file: !25, line: 224, type: !15)
!1330 = distinct !DILexicalBlock(scope: !1157, file: !25, line: 224, column: 3)
!1331 = !DILocation(line: 0, scope: !1330)
!1332 = !DILocation(line: 224, column: 8, scope: !1330)
!1333 = !DILocation(line: 224, scope: !1330)
!1334 = !DILocation(line: 224, column: 24, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1330, file: !25, line: 224, column: 3)
!1336 = !DILocation(line: 224, column: 3, scope: !1330)
!1337 = !DILocation(line: 233, column: 3, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1157, file: !25, line: 233, column: 3)
!1339 = !DILocation(line: 225, column: 24, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1335, file: !25, line: 224, column: 43)
!1341 = !DILocation(line: 225, column: 18, scope: !1340)
!1342 = !DILocation(line: 225, column: 11, scope: !1340)
!1343 = !DILocation(line: 225, column: 5, scope: !1340)
!1344 = !DILocation(line: 225, column: 16, scope: !1340)
!1345 = !DILocation(line: 226, column: 22, scope: !1340)
!1346 = !DILocation(line: 226, column: 11, scope: !1340)
!1347 = !DILocation(line: 226, column: 15, scope: !1340)
!1348 = !DILocation(line: 226, column: 5, scope: !1340)
!1349 = !DILocation(line: 226, column: 20, scope: !1340)
!1350 = !DILocation(line: 227, column: 28, scope: !1340)
!1351 = !DILocation(line: 227, column: 22, scope: !1340)
!1352 = !DILocation(line: 227, column: 11, scope: !1340)
!1353 = !DILocation(line: 227, column: 15, scope: !1340)
!1354 = !DILocation(line: 227, column: 5, scope: !1340)
!1355 = !DILocation(line: 227, column: 20, scope: !1340)
!1356 = !DILocation(line: 228, column: 28, scope: !1340)
!1357 = !DILocation(line: 228, column: 22, scope: !1340)
!1358 = !DILocation(line: 228, column: 11, scope: !1340)
!1359 = !DILocation(line: 228, column: 15, scope: !1340)
!1360 = !DILocation(line: 228, column: 5, scope: !1340)
!1361 = !DILocation(line: 228, column: 20, scope: !1340)
!1362 = !DILocation(line: 224, column: 39, scope: !1335)
!1363 = !DILocation(line: 224, column: 3, scope: !1335)
!1364 = distinct !{!1364, !1336, !1365, !244}
!1365 = !DILocation(line: 229, column: 3, scope: !1330)
!1366 = !DILocation(line: 233, scope: !1338)
!1367 = !DILocalVariable(name: "c", scope: !1338, file: !25, line: 233, type: !15)
!1368 = !DILocation(line: 0, scope: !1338)
!1369 = !DILocation(line: 233, column: 24, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1338, file: !25, line: 233, column: 3)
!1371 = !DILocation(line: 234, column: 5, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !25, line: 234, column: 5)
!1373 = distinct !DILexicalBlock(scope: !1370, file: !25, line: 233, column: 44)
!1374 = !DILocation(line: 256, column: 3, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1157, file: !25, line: 256, column: 3)
!1376 = !DILocation(line: 0, scope: !1372)
!1377 = !DILocalVariable(name: "r", scope: !1372, file: !25, line: 234, type: !45)
!1378 = !DILocation(line: 234, column: 32, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1372, file: !25, line: 234, column: 5)
!1380 = !DILocation(line: 236, column: 23, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1379, file: !25, line: 235, column: 15)
!1382 = !DILocation(line: 236, column: 29, scope: !1381)
!1383 = !DILocation(line: 236, column: 39, scope: !1381)
!1384 = !DILocation(line: 236, column: 48, scope: !1381)
!1385 = !DILocation(line: 236, column: 43, scope: !1381)
!1386 = !DILocalVariable(name: "pos", scope: !1381, file: !25, line: 236, type: !15)
!1387 = !DILocation(line: 0, scope: !1381)
!1388 = !DILocation(line: 237, column: 21, scope: !1381)
!1389 = !DILocation(line: 237, column: 28, scope: !1381)
!1390 = !DILocalVariable(name: "t0", scope: !1381, file: !25, line: 237, type: !6)
!1391 = !DILocation(line: 238, column: 29, scope: !1381)
!1392 = !DILocation(line: 238, column: 35, scope: !1381)
!1393 = !DILocalVariable(name: "t1", scope: !1381, file: !25, line: 238, type: !6)
!1394 = !DILocation(line: 239, column: 29, scope: !1381)
!1395 = !DILocation(line: 239, column: 35, scope: !1381)
!1396 = !DILocalVariable(name: "t2", scope: !1381, file: !25, line: 239, type: !6)
!1397 = !DILocation(line: 240, column: 22, scope: !1381)
!1398 = !DILocation(line: 240, column: 29, scope: !1381)
!1399 = !DILocation(line: 240, column: 35, scope: !1381)
!1400 = !DILocalVariable(name: "t3", scope: !1381, file: !25, line: 240, type: !6)
!1401 = !DILocalVariable(name: "t", scope: !1402, file: !25, line: 241, type: !15)
!1402 = distinct !DILexicalBlock(scope: !1381, file: !25, line: 241, column: 7)
!1403 = !DILocation(line: 0, scope: !1402)
!1404 = !DILocation(line: 241, column: 12, scope: !1402)
!1405 = !DILocation(line: 241, scope: !1402)
!1406 = !DILocation(line: 241, column: 28, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1402, file: !25, line: 241, column: 7)
!1408 = !DILocation(line: 241, column: 7, scope: !1402)
!1409 = !DILocation(line: 244, column: 24, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1407, file: !25, line: 241, column: 47)
!1411 = !DILocation(line: 244, column: 18, scope: !1410)
!1412 = !DILocation(line: 244, column: 16, scope: !1410)
!1413 = !DILocation(line: 244, column: 46, scope: !1410)
!1414 = !DILocation(line: 244, column: 50, scope: !1410)
!1415 = !DILocation(line: 244, column: 40, scope: !1410)
!1416 = !DILocation(line: 244, column: 38, scope: !1410)
!1417 = !DILocation(line: 244, column: 33, scope: !1410)
!1418 = !DILocation(line: 244, column: 68, scope: !1410)
!1419 = !DILocation(line: 244, column: 72, scope: !1410)
!1420 = !DILocation(line: 244, column: 62, scope: !1410)
!1421 = !DILocation(line: 244, column: 60, scope: !1410)
!1422 = !DILocation(line: 244, column: 55, scope: !1410)
!1423 = !DILocation(line: 245, column: 24, scope: !1410)
!1424 = !DILocation(line: 245, column: 28, scope: !1410)
!1425 = !DILocation(line: 245, column: 18, scope: !1410)
!1426 = !DILocation(line: 245, column: 16, scope: !1410)
!1427 = !DILocation(line: 244, column: 77, scope: !1410)
!1428 = !DILocation(line: 242, column: 15, scope: !1410)
!1429 = !DILocation(line: 242, column: 19, scope: !1410)
!1430 = !DILocation(line: 242, column: 33, scope: !1410)
!1431 = !DILocation(line: 242, column: 39, scope: !1410)
!1432 = !DILocation(line: 242, column: 49, scope: !1410)
!1433 = !DILocation(line: 243, column: 15, scope: !1410)
!1434 = !DILocation(line: 243, column: 33, scope: !1410)
!1435 = !DILocation(line: 242, column: 53, scope: !1410)
!1436 = !DILocation(line: 242, column: 9, scope: !1410)
!1437 = !DILocation(line: 243, column: 40, scope: !1410)
!1438 = !DILocation(line: 241, column: 43, scope: !1407)
!1439 = !DILocation(line: 241, column: 7, scope: !1407)
!1440 = distinct !{!1440, !1408, !1441, !244}
!1441 = !DILocation(line: 246, column: 7, scope: !1402)
!1442 = !DILocation(line: 235, column: 11, scope: !1379)
!1443 = !DILocation(line: 234, column: 5, scope: !1379)
!1444 = distinct !{!1444, !1371, !1445, !244}
!1445 = !DILocation(line: 247, column: 5, scope: !1372)
!1446 = !DILocation(line: 233, column: 37, scope: !1370)
!1447 = !DILocation(line: 233, column: 3, scope: !1370)
!1448 = distinct !{!1448, !1337, !1449, !244}
!1449 = !DILocation(line: 248, column: 3, scope: !1338)
!1450 = !DILocation(line: 256, scope: !1375)
!1451 = !DILocalVariable(name: "r", scope: !1375, file: !25, line: 256, type: !45)
!1452 = !DILocation(line: 0, scope: !1375)
!1453 = !DILocation(line: 256, column: 21, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1375, file: !25, line: 256, column: 3)
!1455 = !DILocation(line: 257, column: 5, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !25, line: 257, column: 5)
!1457 = distinct !DILexicalBlock(scope: !1454, file: !25, line: 256, column: 44)
!1458 = !DILocation(line: 257, scope: !1456)
!1459 = !DILocalVariable(name: "c", scope: !1456, file: !25, line: 257, type: !45)
!1460 = !DILocation(line: 0, scope: !1456)
!1461 = !DILocation(line: 257, column: 23, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1456, file: !25, line: 257, column: 5)
!1463 = !DILocation(line: 258, column: 7, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !25, line: 258, column: 7)
!1465 = distinct !DILexicalBlock(scope: !1462, file: !25, line: 257, column: 55)
!1466 = !DILocation(line: 258, scope: !1464)
!1467 = !DILocalVariable(name: "i", scope: !1464, file: !25, line: 258, type: !45)
!1468 = !DILocation(line: 0, scope: !1464)
!1469 = !DILocation(line: 258, column: 29, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1464, file: !25, line: 258, column: 7)
!1471 = !DILocation(line: 259, column: 48, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1470, file: !25, line: 258, column: 48)
!1473 = !DILocation(line: 259, column: 53, scope: !1472)
!1474 = !DILocation(line: 259, column: 57, scope: !1472)
!1475 = !DILocation(line: 259, column: 34, scope: !1472)
!1476 = !DILocation(line: 260, column: 45, scope: !1472)
!1477 = !DILocation(line: 260, column: 40, scope: !1472)
!1478 = !DILocation(line: 260, column: 22, scope: !1472)
!1479 = !DILocation(line: 260, column: 50, scope: !1472)
!1480 = !DILocation(line: 261, column: 16, scope: !1472)
!1481 = !DILocation(line: 259, column: 9, scope: !1472)
!1482 = !DILocation(line: 258, column: 44, scope: !1470)
!1483 = !DILocation(line: 258, column: 7, scope: !1470)
!1484 = distinct !{!1484, !1463, !1485, !244}
!1485 = !DILocation(line: 262, column: 7, scope: !1464)
!1486 = !DILocation(line: 257, column: 48, scope: !1462)
!1487 = !DILocation(line: 257, column: 5, scope: !1462)
!1488 = distinct !{!1488, !1455, !1489, !244}
!1489 = !DILocation(line: 263, column: 5, scope: !1456)
!1490 = !DILocation(line: 256, column: 37, scope: !1454)
!1491 = !DILocation(line: 256, column: 3, scope: !1454)
!1492 = distinct !{!1492, !1374, !1493, !244}
!1493 = !DILocation(line: 264, column: 3, scope: !1375)
!1494 = !DILocation(line: 266, column: 1, scope: !1157)
!1495 = distinct !DISubprogram(name: "mat_mul", scope: !595, file: !595, line: 82, type: !1496, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{null, !49, !49, !18, !45, !45, !45}
!1498 = !DILocalVariable(name: "a", arg: 1, scope: !1495, file: !595, line: 82, type: !49)
!1499 = !DILocation(line: 0, scope: !1495)
!1500 = !DILocalVariable(name: "b", arg: 2, scope: !1495, file: !595, line: 82, type: !49)
!1501 = !DILocalVariable(name: "c", arg: 3, scope: !1495, file: !595, line: 83, type: !18)
!1502 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1495, file: !595, line: 83, type: !45)
!1503 = !DILocalVariable(name: "row_a", arg: 5, scope: !1495, file: !595, line: 83, type: !45)
!1504 = !DILocalVariable(name: "col_b", arg: 6, scope: !1495, file: !595, line: 83, type: !45)
!1505 = !DILocalVariable(name: "i", scope: !1506, file: !595, line: 84, type: !45)
!1506 = distinct !DILexicalBlock(scope: !1495, file: !595, line: 84, column: 5)
!1507 = !DILocation(line: 0, scope: !1506)
!1508 = !DILocation(line: 84, column: 10, scope: !1506)
!1509 = !DILocation(line: 84, scope: !1506)
!1510 = !DILocation(line: 84, column: 23, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !595, line: 84, column: 5)
!1512 = !DILocation(line: 84, column: 5, scope: !1506)
!1513 = !DILocation(line: 85, column: 9, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !595, line: 85, column: 9)
!1515 = distinct !DILexicalBlock(scope: !1511, file: !595, line: 84, column: 53)
!1516 = !DILocation(line: 85, scope: !1514)
!1517 = !DILocalVariable(name: "j", scope: !1514, file: !595, line: 85, type: !45)
!1518 = !DILocation(line: 0, scope: !1514)
!1519 = !DILocation(line: 86, column: 18, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !595, line: 85, column: 46)
!1521 = distinct !DILexicalBlock(scope: !1514, file: !595, line: 85, column: 9)
!1522 = !DILocation(line: 86, column: 16, scope: !1520)
!1523 = !DILocation(line: 85, column: 41, scope: !1521)
!1524 = !DILocation(line: 85, column: 9, scope: !1521)
!1525 = distinct !{!1525, !1513, !1526, !244}
!1526 = !DILocation(line: 87, column: 9, scope: !1514)
!1527 = !DILocation(line: 84, column: 32, scope: !1511)
!1528 = !DILocation(line: 84, column: 39, scope: !1511)
!1529 = !DILocation(line: 84, column: 5, scope: !1511)
!1530 = distinct !{!1530, !1512, !1531, !244}
!1531 = !DILocation(line: 88, column: 5, scope: !1506)
!1532 = !DILocation(line: 91, column: 1, scope: !1495)
!1533 = distinct !DISubprogram(name: "mat_add", scope: !595, file: !595, line: 93, type: !1534, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !49, !49, !18, !45, !45}
!1536 = !DILocalVariable(name: "a", arg: 1, scope: !1533, file: !595, line: 93, type: !49)
!1537 = !DILocation(line: 0, scope: !1533)
!1538 = !DILocalVariable(name: "b", arg: 2, scope: !1533, file: !595, line: 93, type: !49)
!1539 = !DILocalVariable(name: "c", arg: 3, scope: !1533, file: !595, line: 94, type: !18)
!1540 = !DILocalVariable(name: "m", arg: 4, scope: !1533, file: !595, line: 94, type: !45)
!1541 = !DILocalVariable(name: "n", arg: 5, scope: !1533, file: !595, line: 94, type: !45)
!1542 = !DILocalVariable(name: "i", scope: !1543, file: !595, line: 95, type: !45)
!1543 = distinct !DILexicalBlock(scope: !1533, file: !595, line: 95, column: 5)
!1544 = !DILocation(line: 0, scope: !1543)
!1545 = !DILocation(line: 95, column: 10, scope: !1543)
!1546 = !DILocation(line: 95, scope: !1543)
!1547 = !DILocation(line: 95, column: 23, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1543, file: !595, line: 95, column: 5)
!1549 = !DILocation(line: 95, column: 5, scope: !1543)
!1550 = !DILocalVariable(name: "j", scope: !1551, file: !595, line: 96, type: !45)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !595, line: 96, column: 9)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !595, line: 95, column: 33)
!1553 = !DILocation(line: 0, scope: !1551)
!1554 = !DILocation(line: 97, column: 42, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !595, line: 96, column: 37)
!1556 = distinct !DILexicalBlock(scope: !1551, file: !595, line: 96, column: 9)
!1557 = !DILocation(line: 97, column: 38, scope: !1555)
!1558 = !DILocation(line: 97, column: 60, scope: !1555)
!1559 = !DILocation(line: 97, column: 56, scope: !1555)
!1560 = !DILocation(line: 97, column: 32, scope: !1555)
!1561 = !DILocation(line: 97, column: 17, scope: !1555)
!1562 = !DILocation(line: 97, column: 30, scope: !1555)
!1563 = !DILocation(line: 95, column: 28, scope: !1548)
!1564 = !DILocation(line: 95, column: 5, scope: !1548)
!1565 = distinct !{!1565, !1549, !1566, !244}
!1566 = !DILocation(line: 99, column: 5, scope: !1543)
!1567 = !DILocation(line: 102, column: 1, scope: !1533)
!1568 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 34, type: !379, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1569 = !DILocalVariable(name: "m", arg: 1, scope: !1568, file: !25, line: 34, type: !49)
!1570 = !DILocation(line: 0, scope: !1568)
!1571 = !DILocalVariable(name: "menc", arg: 2, scope: !1568, file: !25, line: 34, type: !18)
!1572 = !DILocalVariable(name: "mlen", arg: 3, scope: !1568, file: !25, line: 34, type: !45)
!1573 = !DILocalVariable(name: "i", scope: !1568, file: !25, line: 35, type: !45)
!1574 = !DILocation(line: 36, column: 8, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1568, file: !25, line: 36, column: 3)
!1576 = !DILocation(line: 36, scope: !1575)
!1577 = !DILocation(line: 36, column: 17, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1575, file: !25, line: 36, column: 3)
!1579 = !DILocation(line: 36, column: 3, scope: !1575)
!1580 = !DILocation(line: 37, column: 16, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1578, file: !25, line: 36, column: 42)
!1582 = !DILocation(line: 37, column: 27, scope: !1581)
!1583 = !DILocation(line: 37, column: 23, scope: !1581)
!1584 = !DILocation(line: 37, column: 32, scope: !1581)
!1585 = !DILocation(line: 37, column: 20, scope: !1581)
!1586 = !DILocation(line: 37, column: 5, scope: !1581)
!1587 = !DILocation(line: 37, column: 13, scope: !1581)
!1588 = !DILocation(line: 36, column: 29, scope: !1578)
!1589 = !DILocation(line: 36, column: 36, scope: !1578)
!1590 = !DILocation(line: 36, column: 3, scope: !1578)
!1591 = distinct !{!1591, !1579, !1592, !244}
!1592 = !DILocation(line: 38, column: 3, scope: !1575)
!1593 = !DILocation(line: 44, column: 1, scope: !1568)
!1594 = distinct !DISubprogram(name: "add_f", scope: !595, file: !595, line: 44, type: !1595, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!14, !14, !14}
!1597 = !DILocalVariable(name: "a", arg: 1, scope: !1594, file: !595, line: 44, type: !14)
!1598 = !DILocation(line: 0, scope: !1594)
!1599 = !DILocalVariable(name: "b", arg: 2, scope: !1594, file: !595, line: 44, type: !14)
!1600 = !DILocation(line: 45, column: 14, scope: !1594)
!1601 = !DILocation(line: 45, column: 5, scope: !1594)
!1602 = distinct !DISubprogram(name: "lincomb", scope: !595, file: !595, line: 71, type: !1603, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!14, !49, !49, !45, !45}
!1605 = !DILocalVariable(name: "a", arg: 1, scope: !1602, file: !595, line: 71, type: !49)
!1606 = !DILocation(line: 0, scope: !1602)
!1607 = !DILocalVariable(name: "b", arg: 2, scope: !1602, file: !595, line: 72, type: !49)
!1608 = !DILocalVariable(name: "n", arg: 3, scope: !1602, file: !595, line: 72, type: !45)
!1609 = !DILocalVariable(name: "m", arg: 4, scope: !1602, file: !595, line: 72, type: !45)
!1610 = !DILocalVariable(name: "ret", scope: !1602, file: !595, line: 73, type: !14)
!1611 = !DILocalVariable(name: "i", scope: !1612, file: !595, line: 74, type: !45)
!1612 = distinct !DILexicalBlock(scope: !1602, file: !595, line: 74, column: 5)
!1613 = !DILocation(line: 0, scope: !1612)
!1614 = !DILocation(line: 74, column: 10, scope: !1612)
!1615 = !DILocation(line: 74, scope: !1612)
!1616 = !DILocation(line: 74, column: 23, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1612, file: !595, line: 74, column: 5)
!1618 = !DILocation(line: 74, column: 5, scope: !1612)
!1619 = !DILocation(line: 75, column: 27, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !595, line: 74, column: 41)
!1621 = !DILocation(line: 75, column: 33, scope: !1620)
!1622 = !DILocation(line: 75, column: 21, scope: !1620)
!1623 = !DILocation(line: 75, column: 15, scope: !1620)
!1624 = !DILocation(line: 74, column: 28, scope: !1617)
!1625 = !DILocation(line: 74, column: 35, scope: !1617)
!1626 = !DILocation(line: 74, column: 5, scope: !1617)
!1627 = distinct !{!1627, !1618, !1628, !244}
!1628 = !DILocation(line: 76, column: 5, scope: !1612)
!1629 = !DILocation(line: 79, column: 5, scope: !1602)
!1630 = distinct !DISubprogram(name: "mul_f", scope: !595, file: !595, line: 10, type: !1595, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1631 = !DILocalVariable(name: "a", arg: 1, scope: !1630, file: !595, line: 10, type: !14)
!1632 = !DILocation(line: 0, scope: !1630)
!1633 = !DILocalVariable(name: "b", arg: 2, scope: !1630, file: !595, line: 10, type: !14)
!1634 = !DILocation(line: 15, column: 10, scope: !1630)
!1635 = !DILocation(line: 15, column: 7, scope: !1630)
!1636 = !DILocation(line: 18, column: 17, scope: !1630)
!1637 = !DILocalVariable(name: "p", scope: !1630, file: !595, line: 12, type: !14)
!1638 = !DILocation(line: 19, column: 13, scope: !1630)
!1639 = !DILocation(line: 19, column: 17, scope: !1630)
!1640 = !DILocation(line: 19, column: 7, scope: !1630)
!1641 = !DILocation(line: 20, column: 13, scope: !1630)
!1642 = !DILocation(line: 20, column: 17, scope: !1630)
!1643 = !DILocation(line: 20, column: 7, scope: !1630)
!1644 = !DILocation(line: 21, column: 13, scope: !1630)
!1645 = !DILocation(line: 21, column: 17, scope: !1630)
!1646 = !DILocation(line: 21, column: 7, scope: !1630)
!1647 = !DILocalVariable(name: "top_p", scope: !1630, file: !595, line: 24, type: !14)
!1648 = !DILocation(line: 25, column: 37, scope: !1630)
!1649 = !DILocation(line: 25, column: 52, scope: !1630)
!1650 = !DILocation(line: 25, column: 43, scope: !1630)
!1651 = !DILocation(line: 25, column: 59, scope: !1630)
!1652 = !DILocalVariable(name: "out", scope: !1630, file: !595, line: 25, type: !14)
!1653 = !DILocation(line: 26, column: 5, scope: !1630)
!1654 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 117, type: !5)
!1655 = !DILocation(line: 0, scope: !24)
!1656 = !DILocalVariable(name: "i", scope: !1657, file: !25, line: 123, type: !15)
!1657 = distinct !DILexicalBlock(scope: !24, file: !25, line: 123, column: 3)
!1658 = !DILocation(line: 0, scope: !1657)
!1659 = !DILocation(line: 123, column: 8, scope: !1657)
!1660 = !DILocation(line: 123, scope: !1657)
!1661 = !DILocation(line: 123, column: 24, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1657, file: !25, line: 123, column: 3)
!1663 = !DILocation(line: 123, column: 3, scope: !1657)
!1664 = !DILocation(line: 129, column: 3, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !24, file: !25, line: 129, column: 3)
!1666 = !DILocation(line: 124, column: 20, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1662, file: !25, line: 123, column: 38)
!1668 = !DILocation(line: 124, column: 25, scope: !1667)
!1669 = !DILocation(line: 124, column: 37, scope: !1667)
!1670 = !DILocation(line: 124, column: 33, scope: !1667)
!1671 = !DILocation(line: 124, column: 31, scope: !1667)
!1672 = !DILocation(line: 124, column: 43, scope: !1667)
!1673 = !DILocalVariable(name: "t", scope: !1667, file: !25, line: 124, type: !6)
!1674 = !DILocation(line: 0, scope: !1667)
!1675 = !DILocation(line: 125, column: 15, scope: !1667)
!1676 = !DILocation(line: 125, column: 5, scope: !1667)
!1677 = !DILocation(line: 125, column: 10, scope: !1667)
!1678 = !DILocation(line: 126, column: 9, scope: !1667)
!1679 = !DILocation(line: 126, column: 5, scope: !1667)
!1680 = !DILocation(line: 126, column: 14, scope: !1667)
!1681 = !DILocation(line: 123, column: 32, scope: !1662)
!1682 = !DILocation(line: 123, column: 3, scope: !1662)
!1683 = distinct !{!1683, !1663, !1684, !244}
!1684 = !DILocation(line: 127, column: 3, scope: !1657)
!1685 = !DILocation(line: 129, scope: !1665)
!1686 = !DILocalVariable(name: "i", scope: !1665, file: !25, line: 129, type: !15)
!1687 = !DILocation(line: 0, scope: !1665)
!1688 = !DILocation(line: 129, column: 24, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1665, file: !25, line: 129, column: 3)
!1690 = !DILocation(line: 138, column: 3, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !24, file: !25, line: 138, column: 3)
!1692 = !DILocation(line: 130, column: 21, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1689, file: !25, line: 129, column: 38)
!1694 = !DILocation(line: 130, column: 26, scope: !1693)
!1695 = !DILocation(line: 130, column: 38, scope: !1693)
!1696 = !DILocation(line: 130, column: 34, scope: !1693)
!1697 = !DILocation(line: 130, column: 32, scope: !1693)
!1698 = !DILocation(line: 130, column: 44, scope: !1693)
!1699 = !DILocalVariable(name: "t0", scope: !1693, file: !25, line: 130, type: !6)
!1700 = !DILocation(line: 0, scope: !1693)
!1701 = !DILocation(line: 131, column: 25, scope: !1693)
!1702 = !DILocation(line: 131, column: 21, scope: !1693)
!1703 = !DILocation(line: 131, column: 30, scope: !1693)
!1704 = !DILocation(line: 131, column: 42, scope: !1693)
!1705 = !DILocation(line: 131, column: 38, scope: !1693)
!1706 = !DILocation(line: 131, column: 36, scope: !1693)
!1707 = !DILocation(line: 131, column: 48, scope: !1693)
!1708 = !DILocalVariable(name: "t1", scope: !1693, file: !25, line: 131, type: !6)
!1709 = !DILocation(line: 132, column: 17, scope: !1693)
!1710 = !DILocation(line: 132, column: 5, scope: !1693)
!1711 = !DILocation(line: 132, column: 10, scope: !1693)
!1712 = !DILocation(line: 133, column: 21, scope: !1693)
!1713 = !DILocation(line: 133, column: 9, scope: !1693)
!1714 = !DILocation(line: 133, column: 5, scope: !1693)
!1715 = !DILocation(line: 133, column: 14, scope: !1693)
!1716 = !DILocation(line: 134, column: 9, scope: !1693)
!1717 = !DILocation(line: 134, column: 5, scope: !1693)
!1718 = !DILocation(line: 134, column: 14, scope: !1693)
!1719 = !DILocation(line: 135, column: 9, scope: !1693)
!1720 = !DILocation(line: 135, column: 5, scope: !1693)
!1721 = !DILocation(line: 135, column: 14, scope: !1693)
!1722 = !DILocation(line: 129, column: 32, scope: !1689)
!1723 = !DILocation(line: 129, column: 3, scope: !1689)
!1724 = distinct !{!1724, !1664, !1725, !244}
!1725 = !DILocation(line: 136, column: 3, scope: !1665)
!1726 = !DILocation(line: 138, scope: !1691)
!1727 = !DILocalVariable(name: "i", scope: !1691, file: !25, line: 138, type: !15)
!1728 = !DILocation(line: 0, scope: !1691)
!1729 = !DILocation(line: 138, column: 24, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1691, file: !25, line: 138, column: 3)
!1731 = !DILocation(line: 148, column: 3, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !24, file: !25, line: 148, column: 3)
!1733 = !DILocation(line: 139, column: 21, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1730, file: !25, line: 138, column: 34)
!1735 = !DILocation(line: 139, column: 26, scope: !1734)
!1736 = !DILocation(line: 139, column: 39, scope: !1734)
!1737 = !DILocation(line: 139, column: 35, scope: !1734)
!1738 = !DILocation(line: 139, column: 33, scope: !1734)
!1739 = !DILocation(line: 139, column: 45, scope: !1734)
!1740 = !DILocalVariable(name: "t0", scope: !1734, file: !25, line: 139, type: !6)
!1741 = !DILocation(line: 0, scope: !1734)
!1742 = !DILocation(line: 140, column: 25, scope: !1734)
!1743 = !DILocation(line: 140, column: 21, scope: !1734)
!1744 = !DILocation(line: 140, column: 30, scope: !1734)
!1745 = !DILocation(line: 140, column: 43, scope: !1734)
!1746 = !DILocation(line: 140, column: 39, scope: !1734)
!1747 = !DILocation(line: 140, column: 37, scope: !1734)
!1748 = !DILocation(line: 140, column: 50, scope: !1734)
!1749 = !DILocalVariable(name: "t1", scope: !1734, file: !25, line: 140, type: !6)
!1750 = !DILocation(line: 142, column: 16, scope: !1734)
!1751 = !DILocation(line: 142, column: 5, scope: !1734)
!1752 = !DILocation(line: 142, column: 10, scope: !1734)
!1753 = !DILocation(line: 143, column: 20, scope: !1734)
!1754 = !DILocation(line: 143, column: 9, scope: !1734)
!1755 = !DILocation(line: 143, column: 5, scope: !1734)
!1756 = !DILocation(line: 143, column: 14, scope: !1734)
!1757 = !DILocation(line: 144, column: 9, scope: !1734)
!1758 = !DILocation(line: 144, column: 5, scope: !1734)
!1759 = !DILocation(line: 144, column: 14, scope: !1734)
!1760 = !DILocation(line: 145, column: 9, scope: !1734)
!1761 = !DILocation(line: 145, column: 5, scope: !1734)
!1762 = !DILocation(line: 145, column: 15, scope: !1734)
!1763 = !DILocation(line: 138, column: 30, scope: !1730)
!1764 = !DILocation(line: 138, column: 3, scope: !1730)
!1765 = distinct !{!1765, !1690, !1766, !244}
!1766 = !DILocation(line: 146, column: 3, scope: !1691)
!1767 = !DILocation(line: 148, scope: !1732)
!1768 = !DILocalVariable(name: "i", scope: !1732, file: !25, line: 148, type: !15)
!1769 = !DILocation(line: 0, scope: !1732)
!1770 = !DILocation(line: 148, column: 24, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1732, file: !25, line: 148, column: 3)
!1772 = !DILocation(line: 149, column: 20, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1771, file: !25, line: 148, column: 34)
!1774 = !DILocation(line: 149, column: 25, scope: !1773)
!1775 = !DILocation(line: 149, column: 38, scope: !1773)
!1776 = !DILocation(line: 149, column: 34, scope: !1773)
!1777 = !DILocation(line: 149, column: 44, scope: !1773)
!1778 = !DILocalVariable(name: "t", scope: !1773, file: !25, line: 149, type: !6)
!1779 = !DILocation(line: 0, scope: !1773)
!1780 = !DILocation(line: 150, column: 15, scope: !1773)
!1781 = !DILocation(line: 150, column: 5, scope: !1773)
!1782 = !DILocation(line: 150, column: 10, scope: !1773)
!1783 = !DILocation(line: 151, column: 9, scope: !1773)
!1784 = !DILocation(line: 151, column: 5, scope: !1773)
!1785 = !DILocation(line: 151, column: 14, scope: !1773)
!1786 = !DILocation(line: 148, column: 30, scope: !1771)
!1787 = !DILocation(line: 148, column: 3, scope: !1771)
!1788 = distinct !{!1788, !1731, !1789, !244}
!1789 = !DILocation(line: 152, column: 3, scope: !1732)
!1790 = !DILocation(line: 153, column: 1, scope: !24)
!1791 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !425, file: !425, line: 63, type: !481, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1792 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1791, file: !425, line: 63, type: !343)
!1793 = !DILocation(line: 0, scope: !1791)
!1794 = !DILocalVariable(name: "mat", arg: 2, scope: !1791, file: !425, line: 63, type: !49)
!1795 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1791, file: !425, line: 63, type: !428)
!1796 = !DILocalVariable(name: "acc", arg: 4, scope: !1791, file: !425, line: 63, type: !5)
!1797 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1791, file: !425, line: 64, type: !343)
!1798 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1791, file: !425, line: 64, type: !343)
!1799 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1791, file: !425, line: 64, type: !343)
!1800 = !DILocalVariable(name: "r", scope: !1801, file: !425, line: 66, type: !45)
!1801 = distinct !DILexicalBlock(scope: !1791, file: !425, line: 66, column: 5)
!1802 = !DILocation(line: 0, scope: !1801)
!1803 = !DILocation(line: 66, column: 10, scope: !1801)
!1804 = !DILocation(line: 66, scope: !1801)
!1805 = !DILocation(line: 66, column: 23, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1801, file: !425, line: 66, column: 5)
!1807 = !DILocation(line: 66, column: 5, scope: !1801)
!1808 = !DILocation(line: 67, column: 9, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !425, line: 67, column: 9)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !425, line: 66, column: 40)
!1811 = !DILocation(line: 67, scope: !1809)
!1812 = !DILocalVariable(name: "c", scope: !1809, file: !425, line: 67, type: !45)
!1813 = !DILocation(line: 0, scope: !1809)
!1814 = !DILocation(line: 67, column: 27, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1809, file: !425, line: 67, column: 9)
!1816 = !DILocation(line: 68, column: 13, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !425, line: 68, column: 13)
!1818 = distinct !DILexicalBlock(scope: !1815, file: !425, line: 67, column: 44)
!1819 = !DILocation(line: 68, scope: !1817)
!1820 = !DILocalVariable(name: "k", scope: !1817, file: !425, line: 68, type: !45)
!1821 = !DILocation(line: 0, scope: !1817)
!1822 = !DILocation(line: 68, column: 31, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1817, file: !425, line: 68, column: 13)
!1824 = !DILocation(line: 69, column: 70, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1823, file: !425, line: 68, column: 54)
!1826 = !DILocation(line: 69, column: 84, scope: !1825)
!1827 = !DILocation(line: 69, column: 51, scope: !1825)
!1828 = !DILocation(line: 69, column: 96, scope: !1825)
!1829 = !DILocation(line: 69, column: 90, scope: !1825)
!1830 = !DILocation(line: 69, column: 136, scope: !1825)
!1831 = !DILocation(line: 69, column: 150, scope: !1825)
!1832 = !DILocation(line: 69, column: 117, scope: !1825)
!1833 = !DILocation(line: 69, column: 17, scope: !1825)
!1834 = !DILocation(line: 68, column: 48, scope: !1823)
!1835 = !DILocation(line: 68, column: 13, scope: !1823)
!1836 = distinct !{!1836, !1816, !1837, !244}
!1837 = !DILocation(line: 70, column: 13, scope: !1817)
!1838 = !DILocation(line: 67, column: 40, scope: !1815)
!1839 = !DILocation(line: 67, column: 9, scope: !1815)
!1840 = distinct !{!1840, !1808, !1841, !244}
!1841 = !DILocation(line: 71, column: 9, scope: !1809)
!1842 = !DILocation(line: 66, column: 36, scope: !1806)
!1843 = !DILocation(line: 66, column: 5, scope: !1806)
!1844 = distinct !{!1844, !1807, !1845, !244}
!1845 = !DILocation(line: 72, column: 5, scope: !1801)
!1846 = !DILocation(line: 73, column: 1, scope: !1791)
!1847 = distinct !DISubprogram(name: "P1_times_Vt", scope: !425, file: !425, line: 86, type: !471, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1848 = !DILocalVariable(name: "p", arg: 1, scope: !1847, file: !425, line: 86, type: !278)
!1849 = !DILocation(line: 0, scope: !1847)
!1850 = !DILocalVariable(name: "P1", arg: 2, scope: !1847, file: !425, line: 86, type: !428)
!1851 = !DILocalVariable(name: "V", arg: 3, scope: !1847, file: !425, line: 86, type: !49)
!1852 = !DILocalVariable(name: "acc", arg: 4, scope: !1847, file: !425, line: 86, type: !5)
!1853 = !DILocation(line: 90, column: 5, scope: !1847)
!1854 = !DILocation(line: 92, column: 1, scope: !1847)
!1855 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !425, file: !425, line: 32, type: !611, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1856 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1855, file: !425, line: 32, type: !343)
!1857 = !DILocation(line: 0, scope: !1855)
!1858 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1855, file: !425, line: 32, type: !428)
!1859 = !DILocalVariable(name: "mat", arg: 3, scope: !1855, file: !425, line: 32, type: !49)
!1860 = !DILocalVariable(name: "acc", arg: 4, scope: !1855, file: !425, line: 32, type: !5)
!1861 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1855, file: !425, line: 33, type: !343)
!1862 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1855, file: !425, line: 33, type: !343)
!1863 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1855, file: !425, line: 33, type: !343)
!1864 = !DILocalVariable(name: "triangular", arg: 8, scope: !1855, file: !425, line: 33, type: !343)
!1865 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1855, file: !425, line: 34, type: !45)
!1866 = !DILocalVariable(name: "r", scope: !1867, file: !425, line: 35, type: !45)
!1867 = distinct !DILexicalBlock(scope: !1855, file: !425, line: 35, column: 5)
!1868 = !DILocation(line: 0, scope: !1867)
!1869 = !DILocation(line: 35, column: 10, scope: !1867)
!1870 = !DILocation(line: 34, column: 9, scope: !1855)
!1871 = !DILocation(line: 35, scope: !1867)
!1872 = !DILocation(line: 35, column: 23, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1867, file: !425, line: 35, column: 5)
!1874 = !DILocation(line: 35, column: 5, scope: !1867)
!1875 = !DILocation(line: 36, column: 9, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !425, line: 36, column: 9)
!1877 = distinct !DILexicalBlock(scope: !1873, file: !425, line: 35, column: 43)
!1878 = !DILocation(line: 36, scope: !1876)
!1879 = !DILocalVariable(name: "c", scope: !1876, file: !425, line: 36, type: !45)
!1880 = !DILocation(line: 0, scope: !1876)
!1881 = !DILocation(line: 36, column: 40, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1876, file: !425, line: 36, column: 9)
!1883 = !DILocation(line: 37, column: 13, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !425, line: 37, column: 13)
!1885 = distinct !DILexicalBlock(scope: !1882, file: !425, line: 36, column: 60)
!1886 = !DILocation(line: 37, scope: !1884)
!1887 = !DILocalVariable(name: "k", scope: !1884, file: !425, line: 37, type: !45)
!1888 = !DILocation(line: 0, scope: !1884)
!1889 = !DILocation(line: 37, column: 31, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1884, file: !425, line: 37, column: 13)
!1891 = !DILocation(line: 38, column: 51, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1890, file: !425, line: 37, column: 51)
!1893 = !DILocation(line: 38, column: 94, scope: !1892)
!1894 = !DILocation(line: 38, column: 88, scope: !1892)
!1895 = !DILocation(line: 38, column: 132, scope: !1892)
!1896 = !DILocation(line: 38, column: 118, scope: !1892)
!1897 = !DILocation(line: 38, column: 17, scope: !1892)
!1898 = !DILocation(line: 37, column: 45, scope: !1890)
!1899 = !DILocation(line: 37, column: 13, scope: !1890)
!1900 = distinct !{!1900, !1883, !1901, !244}
!1901 = !DILocation(line: 39, column: 13, scope: !1884)
!1902 = !DILocation(line: 40, column: 33, scope: !1885)
!1903 = !DILocation(line: 36, column: 56, scope: !1882)
!1904 = !DILocation(line: 36, column: 9, scope: !1882)
!1905 = distinct !{!1905, !1875, !1906, !244}
!1906 = !DILocation(line: 41, column: 9, scope: !1876)
!1907 = !DILocation(line: 35, column: 39, scope: !1873)
!1908 = !DILocation(line: 35, column: 5, scope: !1873)
!1909 = distinct !{!1909, !1874, !1910, !244}
!1910 = !DILocation(line: 42, column: 5, scope: !1867)
!1911 = !DILocation(line: 43, column: 1, scope: !1855)
!1912 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_sign", scope: !25, file: !25, line: 515, type: !800, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1913 = !DILocalVariable(name: "p", arg: 1, scope: !1912, file: !25, line: 515, type: !278)
!1914 = !DILocation(line: 0, scope: !1912)
!1915 = !DILocalVariable(name: "sm", arg: 2, scope: !1912, file: !25, line: 515, type: !18)
!1916 = !DILocalVariable(name: "smlen", arg: 3, scope: !1912, file: !25, line: 515, type: !802)
!1917 = !DILocalVariable(name: "m", arg: 4, scope: !1912, file: !25, line: 516, type: !49)
!1918 = !DILocalVariable(name: "mlen", arg: 5, scope: !1912, file: !25, line: 516, type: !15)
!1919 = !DILocalVariable(name: "csk", arg: 6, scope: !1912, file: !25, line: 516, type: !49)
!1920 = !DILocalVariable(name: "ret", scope: !1912, file: !25, line: 517, type: !45)
!1921 = !DILocalVariable(name: "param_sig_bytes", scope: !1912, file: !25, line: 518, type: !343)
!1922 = !DILocation(line: 520, column: 14, scope: !1912)
!1923 = !DILocation(line: 520, column: 3, scope: !1912)
!1924 = !DILocation(line: 521, column: 48, scope: !1912)
!1925 = !DILocalVariable(name: "siglen", scope: !1912, file: !25, line: 519, type: !15)
!1926 = !DILocation(line: 521, column: 9, scope: !1912)
!1927 = !DILocation(line: 522, column: 22, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1912, file: !25, line: 522, column: 7)
!1929 = !DILocation(line: 523, column: 19, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1928, file: !25, line: 522, column: 60)
!1931 = !DILocation(line: 523, column: 26, scope: !1930)
!1932 = !DILocation(line: 523, column: 5, scope: !1930)
!1933 = !DILocation(line: 524, column: 5, scope: !1930)
!1934 = !DILocation(line: 527, column: 12, scope: !1912)
!1935 = !DILocation(line: 527, column: 19, scope: !1912)
!1936 = !DILocation(line: 527, column: 10, scope: !1912)
!1937 = !DILocation(line: 527, column: 3, scope: !1912)
!1938 = !DILabel(scope: !1912, name: "err", file: !25, line: 528)
!1939 = !DILocation(line: 528, column: 1, scope: !1912)
!1940 = !DILocation(line: 529, column: 3, scope: !1912)
!1941 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_open", scope: !25, file: !25, line: 532, type: !800, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1942 = !DILocalVariable(name: "p", arg: 1, scope: !1941, file: !25, line: 532, type: !278)
!1943 = !DILocation(line: 0, scope: !1941)
!1944 = !DILocalVariable(name: "m", arg: 2, scope: !1941, file: !25, line: 532, type: !18)
!1945 = !DILocalVariable(name: "mlen", arg: 3, scope: !1941, file: !25, line: 532, type: !802)
!1946 = !DILocalVariable(name: "sm", arg: 4, scope: !1941, file: !25, line: 533, type: !49)
!1947 = !DILocalVariable(name: "smlen", arg: 5, scope: !1941, file: !25, line: 533, type: !15)
!1948 = !DILocalVariable(name: "pk", arg: 6, scope: !1941, file: !25, line: 533, type: !49)
!1949 = !DILocalVariable(name: "param_sig_bytes", scope: !1941, file: !25, line: 534, type: !343)
!1950 = !DILocation(line: 535, column: 13, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1941, file: !25, line: 535, column: 7)
!1952 = !DILocation(line: 539, column: 25, scope: !1941)
!1953 = !DILocation(line: 539, column: 50, scope: !1941)
!1954 = !DILocation(line: 539, column: 7, scope: !1941)
!1955 = !DILocalVariable(name: "result", scope: !1941, file: !25, line: 538, type: !45)
!1956 = !DILocation(line: 541, column: 14, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1941, file: !25, line: 541, column: 7)
!1958 = !DILocation(line: 542, column: 19, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1957, file: !25, line: 541, column: 26)
!1960 = !DILocation(line: 542, column: 11, scope: !1959)
!1961 = !DILocation(line: 543, column: 19, scope: !1959)
!1962 = !DILocation(line: 543, column: 5, scope: !1959)
!1963 = !DILocation(line: 544, column: 3, scope: !1959)
!1964 = !DILocation(line: 547, column: 1, scope: !1941)
!1965 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_verify", scope: !25, file: !25, line: 631, type: !1966, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!45, !278, !49, !15, !49, !49}
!1968 = !DILocalVariable(name: "p", arg: 1, scope: !1965, file: !25, line: 631, type: !278)
!1969 = !DILocation(line: 0, scope: !1965)
!1970 = !DILocalVariable(name: "m", arg: 2, scope: !1965, file: !25, line: 631, type: !49)
!1971 = !DILocalVariable(name: "mlen", arg: 3, scope: !1965, file: !25, line: 631, type: !15)
!1972 = !DILocalVariable(name: "sig", arg: 4, scope: !1965, file: !25, line: 632, type: !49)
!1973 = !DILocalVariable(name: "cpk", arg: 5, scope: !1965, file: !25, line: 632, type: !49)
!1974 = !DILocalVariable(name: "tEnc", scope: !1965, file: !25, line: 633, type: !112)
!1975 = !DILocation(line: 633, column: 17, scope: !1965)
!1976 = !DILocalVariable(name: "t", scope: !1965, file: !25, line: 634, type: !814)
!1977 = !DILocation(line: 634, column: 17, scope: !1965)
!1978 = !DILocalVariable(name: "y", scope: !1965, file: !25, line: 635, type: !1979)
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1024, elements: !1980)
!1980 = !{!1981}
!1981 = !DISubrange(count: 128)
!1982 = !DILocation(line: 635, column: 17, scope: !1965)
!1983 = !DILocalVariable(name: "s", scope: !1965, file: !25, line: 636, type: !839)
!1984 = !DILocation(line: 636, column: 17, scope: !1965)
!1985 = !DILocalVariable(name: "pk", scope: !1965, file: !25, line: 637, type: !180)
!1986 = !DILocation(line: 637, column: 12, scope: !1965)
!1987 = !DILocalVariable(name: "tmp", scope: !1965, file: !25, line: 638, type: !1988)
!1988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 448, elements: !1989)
!1989 = !{!1990}
!1990 = !DISubrange(count: 56)
!1991 = !DILocation(line: 638, column: 17, scope: !1965)
!1992 = !DILocalVariable(name: "param_m", scope: !1965, file: !25, line: 640, type: !343)
!1993 = !DILocalVariable(name: "param_n", scope: !1965, file: !25, line: 641, type: !343)
!1994 = !DILocalVariable(name: "param_k", scope: !1965, file: !25, line: 642, type: !343)
!1995 = !DILocalVariable(name: "param_m_bytes", scope: !1965, file: !25, line: 643, type: !343)
!1996 = !DILocalVariable(name: "param_sig_bytes", scope: !1965, file: !25, line: 644, type: !343)
!1997 = !DILocalVariable(name: "param_digest_bytes", scope: !1965, file: !25, line: 645, type: !343)
!1998 = !DILocalVariable(name: "param_salt_bytes", scope: !1965, file: !25, line: 646, type: !343)
!1999 = !DILocation(line: 648, column: 13, scope: !1965)
!2000 = !DILocalVariable(name: "ret", scope: !1965, file: !25, line: 648, type: !45)
!2001 = !DILocalVariable(name: "P1", scope: !1965, file: !25, line: 653, type: !5)
!2002 = !DILocation(line: 654, column: 21, scope: !1965)
!2003 = !DILocalVariable(name: "P2", scope: !1965, file: !25, line: 654, type: !5)
!2004 = !DILocation(line: 655, column: 21, scope: !1965)
!2005 = !DILocalVariable(name: "P3", scope: !1965, file: !25, line: 655, type: !5)
!2006 = !DILocation(line: 670, column: 3, scope: !1965)
!2007 = !DILocation(line: 673, column: 14, scope: !1965)
!2008 = !DILocation(line: 673, column: 58, scope: !1965)
!2009 = !DILocation(line: 673, column: 3, scope: !1965)
!2010 = !DILocation(line: 675, column: 3, scope: !1965)
!2011 = !DILocation(line: 676, column: 3, scope: !1965)
!2012 = !DILocation(line: 679, column: 3, scope: !1965)
!2013 = !DILocation(line: 681, column: 3, scope: !1965)
!2014 = !DILocation(line: 683, column: 7, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1965, file: !25, line: 683, column: 7)
!2016 = !DILocation(line: 683, column: 29, scope: !2015)
!2017 = !DILocation(line: 687, column: 1, scope: !1965)
!2018 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_expand_pk", scope: !25, file: !25, line: 620, type: !703, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2019 = !DILocalVariable(name: "p", arg: 1, scope: !2018, file: !25, line: 620, type: !278)
!2020 = !DILocation(line: 0, scope: !2018)
!2021 = !DILocalVariable(name: "cpk", arg: 2, scope: !2018, file: !25, line: 620, type: !49)
!2022 = !DILocalVariable(name: "pk", arg: 3, scope: !2018, file: !25, line: 621, type: !5)
!2023 = !DILocation(line: 622, column: 3, scope: !2018)
!2024 = !DILocation(line: 624, column: 21, scope: !2018)
!2025 = !DILocation(line: 625, column: 40, scope: !2018)
!2026 = !DILocation(line: 624, column: 3, scope: !2018)
!2027 = !DILocation(line: 628, column: 3, scope: !2018)
!2028 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 300, type: !2029, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{null, !278, !49, !428, !428, !428, !18}
!2031 = !DILocalVariable(name: "p", arg: 1, scope: !2028, file: !25, line: 300, type: !278)
!2032 = !DILocation(line: 0, scope: !2028)
!2033 = !DILocalVariable(name: "s", arg: 2, scope: !2028, file: !25, line: 300, type: !49)
!2034 = !DILocalVariable(name: "P1", arg: 3, scope: !2028, file: !25, line: 301, type: !428)
!2035 = !DILocalVariable(name: "P2", arg: 4, scope: !2028, file: !25, line: 301, type: !428)
!2036 = !DILocalVariable(name: "P3", arg: 5, scope: !2028, file: !25, line: 302, type: !428)
!2037 = !DILocalVariable(name: "eval", arg: 6, scope: !2028, file: !25, line: 302, type: !18)
!2038 = !DILocalVariable(name: "SPS", scope: !2028, file: !25, line: 303, type: !2039)
!2039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 4096, elements: !815)
!2040 = !DILocation(line: 303, column: 12, scope: !2028)
!2041 = !DILocation(line: 305, column: 3, scope: !2028)
!2042 = !DILocalVariable(name: "zero", scope: !2028, file: !25, line: 306, type: !814)
!2043 = !DILocation(line: 306, column: 17, scope: !2028)
!2044 = !DILocation(line: 307, column: 3, scope: !2028)
!2045 = !DILocation(line: 308, column: 1, scope: !2028)
!2046 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !425, file: !425, line: 287, type: !2047, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{null, !278, !428, !428, !428, !49, !5}
!2049 = !DILocalVariable(name: "p", arg: 1, scope: !2046, file: !425, line: 287, type: !278)
!2050 = !DILocation(line: 0, scope: !2046)
!2051 = !DILocalVariable(name: "P1", arg: 2, scope: !2046, file: !425, line: 287, type: !428)
!2052 = !DILocalVariable(name: "P2", arg: 3, scope: !2046, file: !425, line: 287, type: !428)
!2053 = !DILocalVariable(name: "P3", arg: 4, scope: !2046, file: !425, line: 287, type: !428)
!2054 = !DILocalVariable(name: "s", arg: 5, scope: !2046, file: !425, line: 287, type: !49)
!2055 = !DILocalVariable(name: "SPS", arg: 6, scope: !2046, file: !425, line: 288, type: !5)
!2056 = !DILocalVariable(name: "PS", scope: !2046, file: !425, line: 296, type: !2057)
!2057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 82944, elements: !2058)
!2058 = !{!2059}
!2059 = !DISubrange(count: 1296)
!2060 = !DILocation(line: 296, column: 14, scope: !2046)
!2061 = !DILocation(line: 297, column: 5, scope: !2046)
!2062 = !DILocation(line: 300, column: 5, scope: !2046)
!2063 = !DILocation(line: 302, column: 1, scope: !2046)
!2064 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !425, file: !425, line: 156, type: !2065, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{null, !428, !428, !428, !49, !343, !343, !343, !343, !5}
!2067 = !DILocalVariable(name: "P1", arg: 1, scope: !2064, file: !425, line: 156, type: !428)
!2068 = !DILocation(line: 0, scope: !2064)
!2069 = !DILocalVariable(name: "P2", arg: 2, scope: !2064, file: !425, line: 156, type: !428)
!2070 = !DILocalVariable(name: "P3", arg: 3, scope: !2064, file: !425, line: 156, type: !428)
!2071 = !DILocalVariable(name: "S", arg: 4, scope: !2064, file: !425, line: 156, type: !49)
!2072 = !DILocalVariable(name: "m", arg: 5, scope: !2064, file: !425, line: 157, type: !343)
!2073 = !DILocalVariable(name: "v", arg: 6, scope: !2064, file: !425, line: 157, type: !343)
!2074 = !DILocalVariable(name: "o", arg: 7, scope: !2064, file: !425, line: 157, type: !343)
!2075 = !DILocalVariable(name: "k", arg: 8, scope: !2064, file: !425, line: 157, type: !343)
!2076 = !DILocalVariable(name: "PS", arg: 9, scope: !2064, file: !425, line: 157, type: !5)
!2077 = !DILocalVariable(name: "n", scope: !2064, file: !425, line: 159, type: !343)
!2078 = !DILocalVariable(name: "m_vec_limbs", scope: !2064, file: !425, line: 160, type: !343)
!2079 = !DILocalVariable(name: "accumulator", scope: !2064, file: !425, line: 162, type: !2080)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1327104, elements: !2081)
!2081 = !{!2082}
!2082 = !DISubrange(count: 20736)
!2083 = !DILocation(line: 162, column: 14, scope: !2064)
!2084 = !DILocalVariable(name: "P1_used", scope: !2064, file: !425, line: 163, type: !45)
!2085 = !DILocalVariable(name: "row", scope: !2086, file: !425, line: 164, type: !45)
!2086 = distinct !DILexicalBlock(scope: !2064, file: !425, line: 164, column: 5)
!2087 = !DILocation(line: 0, scope: !2086)
!2088 = !DILocation(line: 164, column: 10, scope: !2086)
!2089 = !DILocation(line: 163, column: 9, scope: !2064)
!2090 = !DILocation(line: 164, scope: !2086)
!2091 = !DILocation(line: 164, column: 27, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2086, file: !425, line: 164, column: 5)
!2093 = !DILocation(line: 164, column: 5, scope: !2086)
!2094 = !DILocation(line: 165, column: 9, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !425, line: 165, column: 9)
!2096 = distinct !DILexicalBlock(scope: !2092, file: !425, line: 164, column: 39)
!2097 = !DILocation(line: 180, column: 5, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2064, file: !425, line: 180, column: 5)
!2099 = !DILocation(line: 165, scope: !2095)
!2100 = !DILocalVariable(name: "j", scope: !2095, file: !425, line: 165, type: !45)
!2101 = !DILocation(line: 0, scope: !2095)
!2102 = !DILocation(line: 165, column: 29, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2095, file: !425, line: 165, column: 9)
!2104 = !DILocation(line: 172, column: 9, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2096, file: !425, line: 172, column: 9)
!2106 = !DILocation(line: 166, column: 13, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !425, line: 166, column: 13)
!2108 = distinct !DILexicalBlock(scope: !2103, file: !425, line: 165, column: 39)
!2109 = !DILocation(line: 166, scope: !2107)
!2110 = !DILocalVariable(name: "col", scope: !2107, file: !425, line: 166, type: !45)
!2111 = !DILocation(line: 0, scope: !2107)
!2112 = !DILocation(line: 166, column: 35, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2107, file: !425, line: 166, column: 13)
!2114 = !DILocation(line: 167, column: 43, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2113, file: !425, line: 166, column: 47)
!2116 = !DILocation(line: 167, column: 102, scope: !2115)
!2117 = !DILocation(line: 167, column: 115, scope: !2115)
!2118 = !DILocation(line: 167, column: 109, scope: !2115)
!2119 = !DILocation(line: 167, column: 107, scope: !2115)
!2120 = !DILocation(line: 167, column: 82, scope: !2115)
!2121 = !DILocation(line: 167, column: 17, scope: !2115)
!2122 = !DILocation(line: 166, column: 43, scope: !2113)
!2123 = !DILocation(line: 166, column: 13, scope: !2113)
!2124 = distinct !{!2124, !2106, !2125, !244}
!2125 = !DILocation(line: 168, column: 13, scope: !2107)
!2126 = !DILocation(line: 169, column: 21, scope: !2108)
!2127 = !DILocation(line: 165, column: 35, scope: !2103)
!2128 = !DILocation(line: 165, column: 9, scope: !2103)
!2129 = distinct !{!2129, !2094, !2130, !244}
!2130 = !DILocation(line: 170, column: 9, scope: !2095)
!2131 = !DILocation(line: 172, scope: !2105)
!2132 = !DILocalVariable(name: "j", scope: !2105, file: !425, line: 172, type: !45)
!2133 = !DILocation(line: 0, scope: !2105)
!2134 = !DILocation(line: 172, column: 27, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2105, file: !425, line: 172, column: 9)
!2136 = !DILocation(line: 173, column: 13, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !425, line: 173, column: 13)
!2138 = distinct !DILexicalBlock(scope: !2135, file: !425, line: 172, column: 37)
!2139 = !DILocation(line: 173, scope: !2137)
!2140 = !DILocalVariable(name: "col", scope: !2137, file: !425, line: 173, type: !45)
!2141 = !DILocation(line: 0, scope: !2137)
!2142 = !DILocation(line: 173, column: 35, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2137, file: !425, line: 173, column: 13)
!2144 = !DILocation(line: 174, column: 50, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2143, file: !425, line: 173, column: 47)
!2146 = !DILocation(line: 174, column: 54, scope: !2145)
!2147 = !DILocation(line: 174, column: 43, scope: !2145)
!2148 = !DILocation(line: 174, column: 104, scope: !2145)
!2149 = !DILocation(line: 174, column: 118, scope: !2145)
!2150 = !DILocation(line: 174, column: 111, scope: !2145)
!2151 = !DILocation(line: 174, column: 109, scope: !2145)
!2152 = !DILocation(line: 174, column: 84, scope: !2145)
!2153 = !DILocation(line: 174, column: 17, scope: !2145)
!2154 = !DILocation(line: 173, column: 43, scope: !2143)
!2155 = !DILocation(line: 173, column: 13, scope: !2143)
!2156 = distinct !{!2156, !2136, !2157, !244}
!2157 = !DILocation(line: 175, column: 13, scope: !2137)
!2158 = !DILocation(line: 172, column: 33, scope: !2135)
!2159 = !DILocation(line: 172, column: 9, scope: !2135)
!2160 = distinct !{!2160, !2104, !2161, !244}
!2161 = !DILocation(line: 176, column: 9, scope: !2105)
!2162 = !DILocation(line: 164, column: 35, scope: !2092)
!2163 = !DILocation(line: 164, column: 5, scope: !2092)
!2164 = distinct !{!2164, !2093, !2165, !244}
!2165 = !DILocation(line: 177, column: 5, scope: !2086)
!2166 = !DILocation(line: 179, column: 9, scope: !2064)
!2167 = !DILocation(line: 180, scope: !2098)
!2168 = !DILocalVariable(name: "row", scope: !2098, file: !425, line: 180, type: !45)
!2169 = !DILocation(line: 0, scope: !2098)
!2170 = !DILocalVariable(name: "P3_used", scope: !2064, file: !425, line: 179, type: !45)
!2171 = !DILocation(line: 180, column: 27, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2098, file: !425, line: 180, column: 5)
!2173 = !DILocation(line: 181, column: 9, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !425, line: 181, column: 9)
!2175 = distinct !DILexicalBlock(scope: !2172, file: !425, line: 180, column: 39)
!2176 = !DILocation(line: 191, column: 5, scope: !2064)
!2177 = !DILocation(line: 181, scope: !2174)
!2178 = !DILocalVariable(name: "j", scope: !2174, file: !425, line: 181, type: !45)
!2179 = !DILocation(line: 0, scope: !2174)
!2180 = !DILocation(line: 181, column: 29, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2174, file: !425, line: 181, column: 9)
!2182 = !DILocation(line: 182, column: 13, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !425, line: 182, column: 13)
!2184 = distinct !DILexicalBlock(scope: !2181, file: !425, line: 181, column: 39)
!2185 = !DILocation(line: 182, scope: !2183)
!2186 = !DILocalVariable(name: "col", scope: !2183, file: !425, line: 182, type: !45)
!2187 = !DILocation(line: 0, scope: !2183)
!2188 = !DILocation(line: 182, column: 35, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2183, file: !425, line: 182, column: 13)
!2190 = !DILocation(line: 183, column: 43, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2189, file: !425, line: 182, column: 47)
!2192 = !DILocation(line: 183, column: 100, scope: !2191)
!2193 = !DILocation(line: 183, column: 113, scope: !2191)
!2194 = !DILocation(line: 183, column: 107, scope: !2191)
!2195 = !DILocation(line: 183, column: 105, scope: !2191)
!2196 = !DILocation(line: 183, column: 80, scope: !2191)
!2197 = !DILocation(line: 183, column: 17, scope: !2191)
!2198 = !DILocation(line: 182, column: 43, scope: !2189)
!2199 = !DILocation(line: 182, column: 13, scope: !2189)
!2200 = distinct !{!2200, !2182, !2201, !244}
!2201 = !DILocation(line: 184, column: 13, scope: !2183)
!2202 = !DILocation(line: 185, column: 21, scope: !2184)
!2203 = !DILocation(line: 181, column: 35, scope: !2181)
!2204 = !DILocation(line: 181, column: 9, scope: !2181)
!2205 = distinct !{!2205, !2173, !2206, !244}
!2206 = !DILocation(line: 186, column: 9, scope: !2174)
!2207 = !DILocation(line: 180, column: 35, scope: !2172)
!2208 = !DILocation(line: 180, column: 5, scope: !2172)
!2209 = distinct !{!2209, !2097, !2210, !244}
!2210 = !DILocation(line: 187, column: 5, scope: !2098)
!2211 = !DILocalVariable(name: "i", scope: !2064, file: !425, line: 190, type: !45)
!2212 = !DILocation(line: 191, column: 14, scope: !2064)
!2213 = !DILocation(line: 192, column: 54, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2064, file: !425, line: 191, column: 23)
!2215 = !DILocation(line: 192, column: 81, scope: !2214)
!2216 = !DILocation(line: 192, column: 9, scope: !2214)
!2217 = !DILocation(line: 193, column: 10, scope: !2214)
!2218 = distinct !{!2218, !2176, !2219, !244}
!2219 = !DILocation(line: 194, column: 5, scope: !2064)
!2220 = !DILocation(line: 196, column: 1, scope: !2064)
!2221 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !425, file: !425, line: 200, type: !2222, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{null, !428, !49, !45, !45, !45, !5}
!2224 = !DILocalVariable(name: "PS", arg: 1, scope: !2221, file: !425, line: 200, type: !428)
!2225 = !DILocation(line: 0, scope: !2221)
!2226 = !DILocalVariable(name: "S", arg: 2, scope: !2221, file: !425, line: 200, type: !49)
!2227 = !DILocalVariable(name: "m", arg: 3, scope: !2221, file: !425, line: 200, type: !45)
!2228 = !DILocalVariable(name: "k", arg: 4, scope: !2221, file: !425, line: 200, type: !45)
!2229 = !DILocalVariable(name: "n", arg: 5, scope: !2221, file: !425, line: 200, type: !45)
!2230 = !DILocalVariable(name: "SPS", arg: 6, scope: !2221, file: !425, line: 200, type: !5)
!2231 = !DILocalVariable(name: "accumulator", scope: !2221, file: !425, line: 201, type: !1003)
!2232 = !DILocation(line: 201, column: 14, scope: !2221)
!2233 = !DILocalVariable(name: "m_vec_limbs", scope: !2221, file: !425, line: 202, type: !343)
!2234 = !DILocalVariable(name: "row", scope: !2235, file: !425, line: 203, type: !45)
!2235 = distinct !DILexicalBlock(scope: !2221, file: !425, line: 203, column: 5)
!2236 = !DILocation(line: 0, scope: !2235)
!2237 = !DILocation(line: 203, column: 10, scope: !2235)
!2238 = !DILocation(line: 203, scope: !2235)
!2239 = !DILocation(line: 203, column: 27, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2235, file: !425, line: 203, column: 5)
!2241 = !DILocation(line: 203, column: 5, scope: !2235)
!2242 = !DILocation(line: 204, column: 9, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !425, line: 204, column: 9)
!2244 = distinct !DILexicalBlock(scope: !2240, file: !425, line: 203, column: 39)
!2245 = !DILocation(line: 213, column: 5, scope: !2221)
!2246 = !DILocation(line: 204, scope: !2243)
!2247 = !DILocalVariable(name: "j", scope: !2243, file: !425, line: 204, type: !45)
!2248 = !DILocation(line: 0, scope: !2243)
!2249 = !DILocation(line: 204, column: 27, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2243, file: !425, line: 204, column: 9)
!2251 = !DILocation(line: 205, column: 13, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !425, line: 205, column: 13)
!2253 = distinct !DILexicalBlock(scope: !2250, file: !425, line: 204, column: 37)
!2254 = !DILocation(line: 205, scope: !2252)
!2255 = !DILocalVariable(name: "col", scope: !2252, file: !425, line: 205, type: !45)
!2256 = !DILocation(line: 0, scope: !2252)
!2257 = !DILocation(line: 205, column: 35, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2252, file: !425, line: 205, column: 13)
!2259 = !DILocation(line: 206, column: 63, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2258, file: !425, line: 205, column: 50)
!2261 = !DILocation(line: 206, column: 47, scope: !2260)
!2262 = !DILocation(line: 206, column: 110, scope: !2260)
!2263 = !DILocation(line: 206, column: 123, scope: !2260)
!2264 = !DILocation(line: 206, column: 117, scope: !2260)
!2265 = !DILocation(line: 206, column: 115, scope: !2260)
!2266 = !DILocation(line: 206, column: 90, scope: !2260)
!2267 = !DILocation(line: 206, column: 21, scope: !2260)
!2268 = !DILocation(line: 205, column: 44, scope: !2258)
!2269 = !DILocation(line: 205, column: 13, scope: !2258)
!2270 = distinct !{!2270, !2251, !2271, !244}
!2271 = !DILocation(line: 207, column: 13, scope: !2252)
!2272 = !DILocation(line: 204, column: 33, scope: !2250)
!2273 = !DILocation(line: 204, column: 9, scope: !2250)
!2274 = distinct !{!2274, !2242, !2275, !244}
!2275 = !DILocation(line: 208, column: 9, scope: !2243)
!2276 = !DILocation(line: 203, column: 35, scope: !2240)
!2277 = !DILocation(line: 203, column: 5, scope: !2240)
!2278 = distinct !{!2278, !2241, !2279, !244}
!2279 = !DILocation(line: 209, column: 5, scope: !2235)
!2280 = !DILocalVariable(name: "i", scope: !2221, file: !425, line: 212, type: !45)
!2281 = !DILocation(line: 213, column: 14, scope: !2221)
!2282 = !DILocation(line: 214, column: 54, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2221, file: !425, line: 213, column: 21)
!2284 = !DILocation(line: 214, column: 82, scope: !2283)
!2285 = !DILocation(line: 214, column: 9, scope: !2283)
!2286 = !DILocation(line: 215, column: 10, scope: !2283)
!2287 = distinct !{!2287, !2245, !2288, !244}
!2288 = !DILocation(line: 216, column: 5, scope: !2221)
!2289 = !DILocation(line: 217, column: 1, scope: !2221)
!2290 = distinct !DISubprogram(name: "m_vec_add", scope: !539, file: !539, line: 22, type: !2291, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{null, !45, !428, !5}
!2293 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2290, file: !539, line: 22, type: !45)
!2294 = !DILocation(line: 0, scope: !2290)
!2295 = !DILocalVariable(name: "in", arg: 2, scope: !2290, file: !539, line: 22, type: !428)
!2296 = !DILocalVariable(name: "acc", arg: 3, scope: !2290, file: !539, line: 22, type: !5)
!2297 = !DILocalVariable(name: "i", scope: !2298, file: !539, line: 24, type: !15)
!2298 = distinct !DILexicalBlock(scope: !2290, file: !539, line: 24, column: 5)
!2299 = !DILocation(line: 0, scope: !2298)
!2300 = !DILocation(line: 24, column: 10, scope: !2298)
!2301 = !DILocation(line: 24, scope: !2298)
!2302 = !DILocation(line: 24, column: 26, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2298, file: !539, line: 24, column: 5)
!2304 = !DILocation(line: 24, column: 5, scope: !2298)
!2305 = !DILocation(line: 26, column: 19, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2303, file: !539, line: 25, column: 5)
!2307 = !DILocation(line: 26, column: 9, scope: !2306)
!2308 = !DILocation(line: 26, column: 16, scope: !2306)
!2309 = !DILocation(line: 24, column: 46, scope: !2303)
!2310 = !DILocation(line: 24, column: 5, scope: !2303)
!2311 = distinct !{!2311, !2304, !2312, !244}
!2312 = !DILocation(line: 27, column: 5, scope: !2298)
!2313 = !DILocation(line: 28, column: 1, scope: !2290)
!2314 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !539, file: !539, line: 67, type: !2315, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{null, !45, !5, !5}
!2317 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2314, file: !539, line: 67, type: !45)
!2318 = !DILocation(line: 0, scope: !2314)
!2319 = !DILocalVariable(name: "bins", arg: 2, scope: !2314, file: !539, line: 67, type: !5)
!2320 = !DILocalVariable(name: "out", arg: 3, scope: !2314, file: !539, line: 67, type: !5)
!2321 = !DILocation(line: 68, column: 44, scope: !2314)
!2322 = !DILocation(line: 68, column: 73, scope: !2314)
!2323 = !DILocation(line: 68, column: 5, scope: !2314)
!2324 = !DILocation(line: 69, column: 40, scope: !2314)
!2325 = !DILocation(line: 69, column: 69, scope: !2314)
!2326 = !DILocation(line: 69, column: 5, scope: !2314)
!2327 = !DILocation(line: 70, column: 44, scope: !2314)
!2328 = !DILocation(line: 70, column: 74, scope: !2314)
!2329 = !DILocation(line: 70, column: 5, scope: !2314)
!2330 = !DILocation(line: 71, column: 40, scope: !2314)
!2331 = !DILocation(line: 71, column: 69, scope: !2314)
!2332 = !DILocation(line: 71, column: 5, scope: !2314)
!2333 = !DILocation(line: 72, column: 44, scope: !2314)
!2334 = !DILocation(line: 72, column: 73, scope: !2314)
!2335 = !DILocation(line: 72, column: 5, scope: !2314)
!2336 = !DILocation(line: 73, column: 40, scope: !2314)
!2337 = !DILocation(line: 73, column: 69, scope: !2314)
!2338 = !DILocation(line: 73, column: 5, scope: !2314)
!2339 = !DILocation(line: 74, column: 44, scope: !2314)
!2340 = !DILocation(line: 74, column: 74, scope: !2314)
!2341 = !DILocation(line: 74, column: 5, scope: !2314)
!2342 = !DILocation(line: 75, column: 40, scope: !2314)
!2343 = !DILocation(line: 75, column: 69, scope: !2314)
!2344 = !DILocation(line: 75, column: 5, scope: !2314)
!2345 = !DILocation(line: 76, column: 44, scope: !2314)
!2346 = !DILocation(line: 76, column: 74, scope: !2314)
!2347 = !DILocation(line: 76, column: 5, scope: !2314)
!2348 = !DILocation(line: 77, column: 40, scope: !2314)
!2349 = !DILocation(line: 77, column: 69, scope: !2314)
!2350 = !DILocation(line: 77, column: 5, scope: !2314)
!2351 = !DILocation(line: 78, column: 44, scope: !2314)
!2352 = !DILocation(line: 78, column: 74, scope: !2314)
!2353 = !DILocation(line: 78, column: 5, scope: !2314)
!2354 = !DILocation(line: 79, column: 40, scope: !2314)
!2355 = !DILocation(line: 79, column: 69, scope: !2314)
!2356 = !DILocation(line: 79, column: 5, scope: !2314)
!2357 = !DILocation(line: 80, column: 44, scope: !2314)
!2358 = !DILocation(line: 80, column: 74, scope: !2314)
!2359 = !DILocation(line: 80, column: 5, scope: !2314)
!2360 = !DILocation(line: 81, column: 40, scope: !2314)
!2361 = !DILocation(line: 81, column: 69, scope: !2314)
!2362 = !DILocation(line: 81, column: 5, scope: !2314)
!2363 = !DILocation(line: 82, column: 35, scope: !2314)
!2364 = !DILocation(line: 82, column: 5, scope: !2314)
!2365 = !DILocation(line: 83, column: 1, scope: !2314)
!2366 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !539, file: !539, line: 57, type: !2291, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2367 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2366, file: !539, line: 57, type: !45)
!2368 = !DILocation(line: 0, scope: !2366)
!2369 = !DILocalVariable(name: "in", arg: 2, scope: !2366, file: !539, line: 57, type: !428)
!2370 = !DILocalVariable(name: "acc", arg: 3, scope: !2366, file: !539, line: 57, type: !5)
!2371 = !DILocalVariable(name: "mask_lsb", scope: !2366, file: !539, line: 59, type: !6)
!2372 = !DILocalVariable(name: "i", scope: !2373, file: !539, line: 60, type: !45)
!2373 = distinct !DILexicalBlock(scope: !2366, file: !539, line: 60, column: 5)
!2374 = !DILocation(line: 0, scope: !2373)
!2375 = !DILocation(line: 60, column: 9, scope: !2373)
!2376 = !DILocation(line: 60, scope: !2373)
!2377 = !DILocation(line: 60, column: 20, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2373, file: !539, line: 60, column: 5)
!2379 = !DILocation(line: 60, column: 5, scope: !2373)
!2380 = !DILocation(line: 61, column: 22, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2378, file: !539, line: 60, column: 43)
!2382 = !DILocation(line: 61, column: 28, scope: !2381)
!2383 = !DILocalVariable(name: "t", scope: !2381, file: !539, line: 61, type: !6)
!2384 = !DILocation(line: 0, scope: !2381)
!2385 = !DILocation(line: 62, column: 32, scope: !2381)
!2386 = !DILocation(line: 62, column: 43, scope: !2381)
!2387 = !DILocation(line: 62, column: 38, scope: !2381)
!2388 = !DILocation(line: 62, column: 9, scope: !2381)
!2389 = !DILocation(line: 62, column: 16, scope: !2381)
!2390 = !DILocation(line: 60, column: 40, scope: !2378)
!2391 = !DILocation(line: 60, column: 5, scope: !2378)
!2392 = distinct !{!2392, !2379, !2393, !244}
!2393 = !DILocation(line: 63, column: 5, scope: !2373)
!2394 = !DILocation(line: 64, column: 1, scope: !2366)
!2395 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !539, file: !539, line: 47, type: !2291, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2396 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2395, file: !539, line: 47, type: !45)
!2397 = !DILocation(line: 0, scope: !2395)
!2398 = !DILocalVariable(name: "in", arg: 2, scope: !2395, file: !539, line: 47, type: !428)
!2399 = !DILocalVariable(name: "acc", arg: 3, scope: !2395, file: !539, line: 47, type: !5)
!2400 = !DILocalVariable(name: "mask_msb", scope: !2395, file: !539, line: 49, type: !6)
!2401 = !DILocalVariable(name: "i", scope: !2402, file: !539, line: 50, type: !45)
!2402 = distinct !DILexicalBlock(scope: !2395, file: !539, line: 50, column: 5)
!2403 = !DILocation(line: 0, scope: !2402)
!2404 = !DILocation(line: 50, column: 9, scope: !2402)
!2405 = !DILocation(line: 50, scope: !2402)
!2406 = !DILocation(line: 50, column: 20, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2402, file: !539, line: 50, column: 5)
!2408 = !DILocation(line: 50, column: 5, scope: !2402)
!2409 = !DILocation(line: 51, column: 22, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2407, file: !539, line: 50, column: 43)
!2411 = !DILocalVariable(name: "t", scope: !2410, file: !539, line: 51, type: !6)
!2412 = !DILocation(line: 0, scope: !2410)
!2413 = !DILocation(line: 52, column: 32, scope: !2410)
!2414 = !DILocation(line: 52, column: 44, scope: !2410)
!2415 = !DILocation(line: 52, column: 50, scope: !2410)
!2416 = !DILocation(line: 52, column: 38, scope: !2410)
!2417 = !DILocation(line: 52, column: 9, scope: !2410)
!2418 = !DILocation(line: 52, column: 16, scope: !2410)
!2419 = !DILocation(line: 50, column: 40, scope: !2407)
!2420 = !DILocation(line: 50, column: 5, scope: !2407)
!2421 = distinct !{!2421, !2408, !2422, !244}
!2422 = !DILocation(line: 53, column: 5, scope: !2402)
!2423 = !DILocation(line: 54, column: 1, scope: !2395)
!2424 = distinct !DISubprogram(name: "m_vec_copy", scope: !539, file: !539, line: 13, type: !2291, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2425 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2424, file: !539, line: 13, type: !45)
!2426 = !DILocation(line: 0, scope: !2424)
!2427 = !DILocalVariable(name: "in", arg: 2, scope: !2424, file: !539, line: 13, type: !428)
!2428 = !DILocalVariable(name: "out", arg: 3, scope: !2424, file: !539, line: 13, type: !5)
!2429 = !DILocalVariable(name: "i", scope: !2430, file: !539, line: 15, type: !15)
!2430 = distinct !DILexicalBlock(scope: !2424, file: !539, line: 15, column: 5)
!2431 = !DILocation(line: 0, scope: !2430)
!2432 = !DILocation(line: 15, column: 10, scope: !2430)
!2433 = !DILocation(line: 15, scope: !2430)
!2434 = !DILocation(line: 15, column: 26, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2430, file: !539, line: 15, column: 5)
!2436 = !DILocation(line: 15, column: 5, scope: !2430)
!2437 = !DILocation(line: 17, column: 18, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2435, file: !539, line: 16, column: 5)
!2439 = !DILocation(line: 17, column: 9, scope: !2438)
!2440 = !DILocation(line: 17, column: 16, scope: !2438)
!2441 = !DILocation(line: 15, column: 46, scope: !2435)
!2442 = !DILocation(line: 15, column: 5, scope: !2435)
!2443 = distinct !{!2443, !2436, !2444, !244}
!2444 = !DILocation(line: 18, column: 5, scope: !2430)
!2445 = !DILocation(line: 19, column: 1, scope: !2424)
!2446 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_m_upper", scope: !58, file: !58, line: 14, type: !2447, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{null, !2449, !428, !5, !45}
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2451)
!2451 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2452)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2453)
!2453 = !{!2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2452, file: !36, line: 266, baseType: !45, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2452, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2452, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2452, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2452, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2452, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2452, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2452, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2452, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2452, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2452, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2452, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2452, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2452, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2452, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2452, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2452, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2452, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2452, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2452, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2452, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2452, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2452, file: !36, line: 288, baseType: !165, size: 32, offset: 704)
!2477 = !DILocalVariable(name: "p", arg: 1, scope: !2446, file: !58, line: 14, type: !2449)
!2478 = !DILocation(line: 0, scope: !2446)
!2479 = !DILocalVariable(name: "in", arg: 2, scope: !2446, file: !58, line: 14, type: !428)
!2480 = !DILocalVariable(name: "out", arg: 3, scope: !2446, file: !58, line: 14, type: !5)
!2481 = !DILocalVariable(name: "size", arg: 4, scope: !2446, file: !58, line: 14, type: !45)
!2482 = !DILocalVariable(name: "m_vec_limbs", scope: !2446, file: !58, line: 19, type: !343)
!2483 = !DILocalVariable(name: "m_vecs_stored", scope: !2446, file: !58, line: 20, type: !45)
!2484 = !DILocalVariable(name: "r", scope: !2485, file: !58, line: 21, type: !45)
!2485 = distinct !DILexicalBlock(scope: !2446, file: !58, line: 21, column: 5)
!2486 = !DILocation(line: 0, scope: !2485)
!2487 = !DILocation(line: 21, column: 10, scope: !2485)
!2488 = !DILocation(line: 20, column: 9, scope: !2446)
!2489 = !DILocation(line: 21, scope: !2485)
!2490 = !DILocation(line: 21, column: 23, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2485, file: !58, line: 21, column: 5)
!2492 = !DILocation(line: 21, column: 5, scope: !2485)
!2493 = !DILocation(line: 22, column: 9, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !58, line: 22, column: 9)
!2495 = distinct !DILexicalBlock(scope: !2491, file: !58, line: 21, column: 36)
!2496 = !DILocation(line: 22, scope: !2494)
!2497 = !DILocalVariable(name: "c", scope: !2494, file: !58, line: 22, type: !45)
!2498 = !DILocation(line: 0, scope: !2494)
!2499 = !DILocation(line: 22, column: 27, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2494, file: !58, line: 22, column: 9)
!2501 = !DILocation(line: 23, column: 59, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2500, file: !58, line: 22, column: 40)
!2503 = !DILocation(line: 23, column: 66, scope: !2502)
!2504 = !DILocation(line: 23, column: 40, scope: !2502)
!2505 = !DILocation(line: 23, column: 76, scope: !2502)
!2506 = !DILocation(line: 23, column: 13, scope: !2502)
!2507 = !DILocation(line: 24, column: 19, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2502, file: !58, line: 24, column: 17)
!2509 = !DILocation(line: 25, column: 62, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2508, file: !58, line: 24, column: 25)
!2511 = !DILocation(line: 25, column: 69, scope: !2510)
!2512 = !DILocation(line: 25, column: 43, scope: !2510)
!2513 = !DILocation(line: 25, column: 79, scope: !2510)
!2514 = !DILocation(line: 25, column: 17, scope: !2510)
!2515 = !DILocation(line: 26, column: 13, scope: !2510)
!2516 = !DILocation(line: 27, column: 27, scope: !2502)
!2517 = !DILocation(line: 22, column: 36, scope: !2500)
!2518 = !DILocation(line: 22, column: 9, scope: !2500)
!2519 = distinct !{!2519, !2493, !2520, !244}
!2520 = !DILocation(line: 28, column: 9, scope: !2494)
!2521 = !DILocation(line: 21, column: 32, scope: !2491)
!2522 = !DILocation(line: 21, column: 5, scope: !2491)
!2523 = distinct !{!2523, !2492, !2524, !244}
!2524 = !DILocation(line: 29, column: 5, scope: !2485)
!2525 = !DILocation(line: 30, column: 1, scope: !2446)
!2526 = distinct !DISubprogram(name: "m_vec_copy", scope: !539, file: !539, line: 13, type: !2291, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2527 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2526, file: !539, line: 13, type: !45)
!2528 = !DILocation(line: 0, scope: !2526)
!2529 = !DILocalVariable(name: "in", arg: 2, scope: !2526, file: !539, line: 13, type: !428)
!2530 = !DILocalVariable(name: "out", arg: 3, scope: !2526, file: !539, line: 13, type: !5)
!2531 = !DILocalVariable(name: "i", scope: !2532, file: !539, line: 15, type: !15)
!2532 = distinct !DILexicalBlock(scope: !2526, file: !539, line: 15, column: 5)
!2533 = !DILocation(line: 0, scope: !2532)
!2534 = !DILocation(line: 15, column: 10, scope: !2532)
!2535 = !DILocation(line: 15, scope: !2532)
!2536 = !DILocation(line: 15, column: 26, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2532, file: !539, line: 15, column: 5)
!2538 = !DILocation(line: 15, column: 5, scope: !2532)
!2539 = !DILocation(line: 17, column: 18, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2537, file: !539, line: 16, column: 5)
!2541 = !DILocation(line: 17, column: 9, scope: !2540)
!2542 = !DILocation(line: 17, column: 16, scope: !2540)
!2543 = !DILocation(line: 15, column: 46, scope: !2537)
!2544 = !DILocation(line: 15, column: 5, scope: !2537)
!2545 = distinct !{!2545, !2538, !2546, !244}
!2546 = !DILocation(line: 18, column: 5, scope: !2532)
!2547 = !DILocation(line: 19, column: 1, scope: !2526)
!2548 = distinct !DISubprogram(name: "m_vec_add", scope: !539, file: !539, line: 22, type: !2291, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2549 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2548, file: !539, line: 22, type: !45)
!2550 = !DILocation(line: 0, scope: !2548)
!2551 = !DILocalVariable(name: "in", arg: 2, scope: !2548, file: !539, line: 22, type: !428)
!2552 = !DILocalVariable(name: "acc", arg: 3, scope: !2548, file: !539, line: 22, type: !5)
!2553 = !DILocalVariable(name: "i", scope: !2554, file: !539, line: 24, type: !15)
!2554 = distinct !DILexicalBlock(scope: !2548, file: !539, line: 24, column: 5)
!2555 = !DILocation(line: 0, scope: !2554)
!2556 = !DILocation(line: 24, column: 10, scope: !2554)
!2557 = !DILocation(line: 24, scope: !2554)
!2558 = !DILocation(line: 24, column: 26, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2554, file: !539, line: 24, column: 5)
!2560 = !DILocation(line: 24, column: 5, scope: !2554)
!2561 = !DILocation(line: 26, column: 19, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2559, file: !539, line: 25, column: 5)
!2563 = !DILocation(line: 26, column: 9, scope: !2562)
!2564 = !DILocation(line: 26, column: 16, scope: !2562)
!2565 = !DILocation(line: 24, column: 46, scope: !2559)
!2566 = !DILocation(line: 24, column: 5, scope: !2559)
!2567 = distinct !{!2567, !2560, !2568, !244}
!2568 = !DILocation(line: 27, column: 5, scope: !2554)
!2569 = !DILocation(line: 28, column: 1, scope: !2548)
!2570 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2571, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!45, !2449, !18, !49, !49, !18, !45, !45, !45, !45}
!2573 = !DILocalVariable(name: "p", arg: 1, scope: !2570, file: !58, line: 40, type: !2449)
!2574 = !DILocation(line: 0, scope: !2570)
!2575 = !DILocalVariable(name: "A", arg: 2, scope: !2570, file: !58, line: 40, type: !18)
!2576 = !DILocalVariable(name: "y", arg: 3, scope: !2570, file: !58, line: 41, type: !49)
!2577 = !DILocalVariable(name: "r", arg: 4, scope: !2570, file: !58, line: 41, type: !49)
!2578 = !DILocalVariable(name: "x", arg: 5, scope: !2570, file: !58, line: 42, type: !18)
!2579 = !DILocalVariable(name: "k", arg: 6, scope: !2570, file: !58, line: 42, type: !45)
!2580 = !DILocalVariable(name: "o", arg: 7, scope: !2570, file: !58, line: 42, type: !45)
!2581 = !DILocalVariable(name: "m", arg: 8, scope: !2570, file: !58, line: 42, type: !45)
!2582 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2570, file: !58, line: 42, type: !45)
!2583 = !DILocalVariable(name: "i", scope: !2584, file: !58, line: 51, type: !45)
!2584 = distinct !DILexicalBlock(scope: !2570, file: !58, line: 51, column: 5)
!2585 = !DILocation(line: 0, scope: !2584)
!2586 = !DILocation(line: 51, column: 10, scope: !2584)
!2587 = !DILocation(line: 51, scope: !2584)
!2588 = !DILocation(line: 51, column: 23, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2584, file: !58, line: 51, column: 5)
!2590 = !DILocation(line: 51, column: 5, scope: !2584)
!2591 = !DILocation(line: 57, column: 5, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2570, file: !58, line: 57, column: 5)
!2593 = !DILocation(line: 52, column: 16, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2589, file: !58, line: 51, column: 37)
!2595 = !DILocation(line: 52, column: 9, scope: !2594)
!2596 = !DILocation(line: 52, column: 14, scope: !2594)
!2597 = !DILocation(line: 51, column: 33, scope: !2589)
!2598 = !DILocation(line: 51, column: 5, scope: !2589)
!2599 = distinct !{!2599, !2590, !2600, !244}
!2600 = !DILocation(line: 53, column: 5, scope: !2584)
!2601 = !DILocation(line: 57, scope: !2592)
!2602 = !DILocalVariable(name: "i", scope: !2592, file: !58, line: 57, type: !45)
!2603 = !DILocation(line: 0, scope: !2592)
!2604 = !DILocation(line: 57, column: 23, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2592, file: !58, line: 57, column: 5)
!2606 = !DILocation(line: 58, column: 13, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2605, file: !58, line: 57, column: 33)
!2608 = !DILocation(line: 58, column: 26, scope: !2607)
!2609 = !DILocation(line: 58, column: 30, scope: !2607)
!2610 = !DILocation(line: 58, column: 21, scope: !2607)
!2611 = !DILocation(line: 58, column: 9, scope: !2607)
!2612 = !DILocation(line: 58, column: 36, scope: !2607)
!2613 = !DILocation(line: 57, column: 29, scope: !2605)
!2614 = !DILocation(line: 57, column: 5, scope: !2605)
!2615 = distinct !{!2615, !2591, !2616, !244}
!2616 = !DILocation(line: 59, column: 5, scope: !2592)
!2617 = !DILocation(line: 60, column: 25, scope: !2570)
!2618 = !DILocation(line: 60, column: 29, scope: !2570)
!2619 = !DILocation(line: 60, column: 5, scope: !2570)
!2620 = !DILocalVariable(name: "i", scope: !2621, file: !58, line: 63, type: !45)
!2621 = distinct !DILexicalBlock(scope: !2570, file: !58, line: 63, column: 5)
!2622 = !DILocation(line: 0, scope: !2621)
!2623 = !DILocation(line: 63, column: 10, scope: !2621)
!2624 = !DILocation(line: 63, scope: !2621)
!2625 = !DILocation(line: 63, column: 23, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2621, file: !58, line: 63, column: 5)
!2627 = !DILocation(line: 63, column: 5, scope: !2621)
!2628 = !DILocation(line: 64, column: 44, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !58, line: 63, column: 33)
!2630 = !DILocation(line: 64, column: 50, scope: !2629)
!2631 = !DILocation(line: 64, column: 38, scope: !2629)
!2632 = !DILocation(line: 64, column: 13, scope: !2629)
!2633 = !DILocation(line: 64, column: 26, scope: !2629)
!2634 = !DILocation(line: 64, column: 30, scope: !2629)
!2635 = !DILocation(line: 64, column: 21, scope: !2629)
!2636 = !DILocation(line: 64, column: 9, scope: !2629)
!2637 = !DILocation(line: 64, column: 36, scope: !2629)
!2638 = !DILocation(line: 63, column: 29, scope: !2626)
!2639 = !DILocation(line: 63, column: 5, scope: !2626)
!2640 = distinct !{!2640, !2627, !2641, !244}
!2641 = !DILocation(line: 65, column: 5, scope: !2621)
!2642 = !DILocation(line: 67, column: 16, scope: !2570)
!2643 = !DILocation(line: 67, column: 20, scope: !2570)
!2644 = !DILocation(line: 67, column: 5, scope: !2570)
!2645 = !DILocalVariable(name: "full_rank", scope: !2570, file: !58, line: 70, type: !14)
!2646 = !DILocalVariable(name: "i", scope: !2647, file: !58, line: 71, type: !45)
!2647 = distinct !DILexicalBlock(scope: !2570, file: !58, line: 71, column: 5)
!2648 = !DILocation(line: 0, scope: !2647)
!2649 = !DILocation(line: 71, column: 10, scope: !2647)
!2650 = !DILocation(line: 71, scope: !2647)
!2651 = !DILocation(line: 71, column: 23, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2647, file: !58, line: 71, column: 5)
!2653 = !DILocation(line: 71, column: 5, scope: !2647)
!2654 = !DILocation(line: 72, column: 27, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2652, file: !58, line: 71, column: 42)
!2656 = !DILocation(line: 72, column: 32, scope: !2655)
!2657 = !DILocation(line: 72, column: 22, scope: !2655)
!2658 = !DILocation(line: 72, column: 19, scope: !2655)
!2659 = !DILocation(line: 71, column: 38, scope: !2652)
!2660 = !DILocation(line: 71, column: 5, scope: !2652)
!2661 = distinct !{!2661, !2653, !2662, !244}
!2662 = !DILocation(line: 73, column: 5, scope: !2647)
!2663 = !DILocation(line: 80, column: 19, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2570, file: !58, line: 80, column: 9)
!2665 = !DILocation(line: 88, column: 5, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2570, file: !58, line: 88, column: 5)
!2667 = distinct !{!2667, !2665, !2668, !244}
!2668 = !DILocation(line: 122, column: 5, scope: !2666)
!2669 = !DILocation(line: 88, scope: !2666)
!2670 = !DILocalVariable(name: "row", scope: !2666, file: !58, line: 88, type: !45)
!2671 = !DILocation(line: 0, scope: !2666)
!2672 = !DILocation(line: 88, column: 31, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2666, file: !58, line: 88, column: 5)
!2674 = !DILocalVariable(name: "finished", scope: !2570, file: !58, line: 46, type: !14)
!2675 = !DILocation(line: 90, column: 27, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2673, file: !58, line: 88, column: 44)
!2677 = !DILocalVariable(name: "col_upper_bound", scope: !2570, file: !58, line: 47, type: !45)
!2678 = !DILocalVariable(name: "col", scope: !2679, file: !58, line: 93, type: !45)
!2679 = distinct !DILexicalBlock(scope: !2676, file: !58, line: 93, column: 9)
!2680 = !DILocation(line: 0, scope: !2679)
!2681 = !DILocation(line: 93, column: 14, scope: !2679)
!2682 = !DILocation(line: 0, scope: !2676)
!2683 = !DILocation(line: 93, scope: !2679)
!2684 = !DILocation(line: 93, column: 33, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2679, file: !58, line: 93, column: 9)
!2686 = !DILocation(line: 93, column: 9, scope: !2679)
!2687 = !DILocation(line: 97, column: 50, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2685, file: !58, line: 93, column: 60)
!2689 = !DILocation(line: 97, column: 44, scope: !2688)
!2690 = !DILocation(line: 97, column: 30, scope: !2688)
!2691 = !DILocation(line: 97, column: 73, scope: !2688)
!2692 = !DILocalVariable(name: "correct_column", scope: !2570, file: !58, line: 48, type: !14)
!2693 = !DILocation(line: 99, column: 63, scope: !2688)
!2694 = !DILocation(line: 99, column: 48, scope: !2688)
!2695 = !DILocation(line: 99, column: 46, scope: !2688)
!2696 = !DILocalVariable(name: "u", scope: !2688, file: !58, line: 99, type: !14)
!2697 = !DILocation(line: 0, scope: !2688)
!2698 = !DILocation(line: 100, column: 13, scope: !2688)
!2699 = !DILocation(line: 100, column: 20, scope: !2688)
!2700 = !DILocalVariable(name: "i", scope: !2701, file: !58, line: 102, type: !45)
!2701 = distinct !DILexicalBlock(scope: !2688, file: !58, line: 102, column: 13)
!2702 = !DILocation(line: 0, scope: !2701)
!2703 = !DILocation(line: 102, column: 18, scope: !2701)
!2704 = !DILocation(line: 102, scope: !2701)
!2705 = !DILocation(line: 102, column: 31, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2701, file: !58, line: 102, column: 13)
!2707 = !DILocation(line: 102, column: 13, scope: !2701)
!2708 = !DILocation(line: 103, column: 53, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2706, file: !58, line: 102, column: 46)
!2710 = !DILocation(line: 103, column: 45, scope: !2709)
!2711 = !DILocation(line: 103, column: 34, scope: !2709)
!2712 = !DILocation(line: 103, column: 95, scope: !2709)
!2713 = !DILocation(line: 103, column: 99, scope: !2709)
!2714 = !DILocation(line: 103, column: 91, scope: !2709)
!2715 = !DILocation(line: 103, column: 80, scope: !2709)
!2716 = !DILocation(line: 103, column: 115, scope: !2709)
!2717 = !DILocation(line: 103, column: 76, scope: !2709)
!2718 = !DILocation(line: 104, column: 49, scope: !2709)
!2719 = !DILocation(line: 104, column: 53, scope: !2709)
!2720 = !DILocation(line: 104, column: 45, scope: !2709)
!2721 = !DILocation(line: 104, column: 34, scope: !2709)
!2722 = !DILocation(line: 104, column: 69, scope: !2709)
!2723 = !DILocation(line: 104, column: 30, scope: !2709)
!2724 = !DILocation(line: 104, column: 95, scope: !2709)
!2725 = !DILocation(line: 104, column: 99, scope: !2709)
!2726 = !DILocation(line: 104, column: 91, scope: !2709)
!2727 = !DILocation(line: 104, column: 80, scope: !2709)
!2728 = !DILocation(line: 104, column: 115, scope: !2709)
!2729 = !DILocation(line: 104, column: 76, scope: !2709)
!2730 = !DILocation(line: 105, column: 49, scope: !2709)
!2731 = !DILocation(line: 105, column: 53, scope: !2709)
!2732 = !DILocation(line: 105, column: 45, scope: !2709)
!2733 = !DILocation(line: 105, column: 34, scope: !2709)
!2734 = !DILocation(line: 105, column: 69, scope: !2709)
!2735 = !DILocation(line: 105, column: 30, scope: !2709)
!2736 = !DILocation(line: 105, column: 95, scope: !2709)
!2737 = !DILocation(line: 105, column: 99, scope: !2709)
!2738 = !DILocation(line: 105, column: 91, scope: !2709)
!2739 = !DILocation(line: 105, column: 80, scope: !2709)
!2740 = !DILocation(line: 105, column: 115, scope: !2709)
!2741 = !DILocation(line: 105, column: 76, scope: !2709)
!2742 = !DILocation(line: 106, column: 49, scope: !2709)
!2743 = !DILocation(line: 106, column: 53, scope: !2709)
!2744 = !DILocation(line: 106, column: 45, scope: !2709)
!2745 = !DILocation(line: 106, column: 34, scope: !2709)
!2746 = !DILocation(line: 106, column: 69, scope: !2709)
!2747 = !DILocation(line: 106, column: 30, scope: !2709)
!2748 = !DILocation(line: 106, column: 95, scope: !2709)
!2749 = !DILocation(line: 106, column: 99, scope: !2709)
!2750 = !DILocation(line: 106, column: 91, scope: !2709)
!2751 = !DILocation(line: 106, column: 80, scope: !2709)
!2752 = !DILocation(line: 106, column: 115, scope: !2709)
!2753 = !DILocation(line: 106, column: 76, scope: !2709)
!2754 = !DILocalVariable(name: "tmp", scope: !2709, file: !58, line: 103, type: !6)
!2755 = !DILocation(line: 0, scope: !2709)
!2756 = !DILocation(line: 108, column: 23, scope: !2709)
!2757 = !DILocation(line: 110, column: 34, scope: !2709)
!2758 = !DILocation(line: 110, column: 17, scope: !2709)
!2759 = !DILocation(line: 110, column: 48, scope: !2709)
!2760 = !DILocation(line: 111, column: 56, scope: !2709)
!2761 = !DILocation(line: 111, column: 34, scope: !2709)
!2762 = !DILocation(line: 111, column: 17, scope: !2709)
!2763 = !DILocation(line: 111, column: 48, scope: !2709)
!2764 = !DILocation(line: 112, column: 56, scope: !2709)
!2765 = !DILocation(line: 112, column: 34, scope: !2709)
!2766 = !DILocation(line: 112, column: 17, scope: !2709)
!2767 = !DILocation(line: 112, column: 48, scope: !2709)
!2768 = !DILocation(line: 113, column: 56, scope: !2709)
!2769 = !DILocation(line: 113, column: 34, scope: !2709)
!2770 = !DILocation(line: 113, column: 17, scope: !2709)
!2771 = !DILocation(line: 113, column: 48, scope: !2709)
!2772 = !DILocation(line: 114, column: 56, scope: !2709)
!2773 = !DILocation(line: 114, column: 34, scope: !2709)
!2774 = !DILocation(line: 114, column: 17, scope: !2709)
!2775 = !DILocation(line: 114, column: 48, scope: !2709)
!2776 = !DILocation(line: 115, column: 56, scope: !2709)
!2777 = !DILocation(line: 115, column: 34, scope: !2709)
!2778 = !DILocation(line: 115, column: 17, scope: !2709)
!2779 = !DILocation(line: 115, column: 48, scope: !2709)
!2780 = !DILocation(line: 116, column: 56, scope: !2709)
!2781 = !DILocation(line: 116, column: 34, scope: !2709)
!2782 = !DILocation(line: 116, column: 17, scope: !2709)
!2783 = !DILocation(line: 116, column: 48, scope: !2709)
!2784 = !DILocation(line: 117, column: 56, scope: !2709)
!2785 = !DILocation(line: 117, column: 34, scope: !2709)
!2786 = !DILocation(line: 117, column: 17, scope: !2709)
!2787 = !DILocation(line: 117, column: 48, scope: !2709)
!2788 = !DILocation(line: 102, column: 40, scope: !2706)
!2789 = !DILocation(line: 102, column: 13, scope: !2706)
!2790 = distinct !{!2790, !2707, !2791, !244}
!2791 = !DILocation(line: 118, column: 13, scope: !2701)
!2792 = !DILocation(line: 120, column: 33, scope: !2688)
!2793 = !DILocation(line: 93, column: 56, scope: !2685)
!2794 = !DILocation(line: 93, column: 9, scope: !2685)
!2795 = distinct !{!2795, !2686, !2796, !244}
!2796 = !DILocation(line: 121, column: 9, scope: !2679)
!2797 = !DILocation(line: 124, column: 1, scope: !2570)
!2798 = distinct !DISubprogram(name: "mat_mul", scope: !595, file: !595, line: 82, type: !1496, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2799 = !DILocalVariable(name: "a", arg: 1, scope: !2798, file: !595, line: 82, type: !49)
!2800 = !DILocation(line: 0, scope: !2798)
!2801 = !DILocalVariable(name: "b", arg: 2, scope: !2798, file: !595, line: 82, type: !49)
!2802 = !DILocalVariable(name: "c", arg: 3, scope: !2798, file: !595, line: 83, type: !18)
!2803 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2798, file: !595, line: 83, type: !45)
!2804 = !DILocalVariable(name: "row_a", arg: 5, scope: !2798, file: !595, line: 83, type: !45)
!2805 = !DILocalVariable(name: "col_b", arg: 6, scope: !2798, file: !595, line: 83, type: !45)
!2806 = !DILocalVariable(name: "i", scope: !2807, file: !595, line: 84, type: !45)
!2807 = distinct !DILexicalBlock(scope: !2798, file: !595, line: 84, column: 5)
!2808 = !DILocation(line: 0, scope: !2807)
!2809 = !DILocation(line: 84, column: 10, scope: !2807)
!2810 = !DILocation(line: 84, scope: !2807)
!2811 = !DILocation(line: 84, column: 23, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2807, file: !595, line: 84, column: 5)
!2813 = !DILocation(line: 84, column: 5, scope: !2807)
!2814 = !DILocation(line: 85, column: 9, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !595, line: 85, column: 9)
!2816 = distinct !DILexicalBlock(scope: !2812, file: !595, line: 84, column: 53)
!2817 = !DILocation(line: 85, scope: !2815)
!2818 = !DILocalVariable(name: "j", scope: !2815, file: !595, line: 85, type: !45)
!2819 = !DILocation(line: 0, scope: !2815)
!2820 = !DILocation(line: 86, column: 18, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !595, line: 85, column: 46)
!2822 = distinct !DILexicalBlock(scope: !2815, file: !595, line: 85, column: 9)
!2823 = !DILocation(line: 86, column: 16, scope: !2821)
!2824 = !DILocation(line: 85, column: 41, scope: !2822)
!2825 = !DILocation(line: 85, column: 9, scope: !2822)
!2826 = distinct !{!2826, !2814, !2827, !244}
!2827 = !DILocation(line: 87, column: 9, scope: !2815)
!2828 = !DILocation(line: 84, column: 32, scope: !2812)
!2829 = !DILocation(line: 84, column: 39, scope: !2812)
!2830 = !DILocation(line: 84, column: 5, scope: !2812)
!2831 = distinct !{!2831, !2813, !2832, !244}
!2832 = !DILocation(line: 88, column: 5, scope: !2807)
!2833 = !DILocation(line: 91, column: 1, scope: !2798)
!2834 = distinct !DISubprogram(name: "sub_f", scope: !595, file: !595, line: 49, type: !1595, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2835 = !DILocalVariable(name: "a", arg: 1, scope: !2834, file: !595, line: 49, type: !14)
!2836 = !DILocation(line: 0, scope: !2834)
!2837 = !DILocalVariable(name: "b", arg: 2, scope: !2834, file: !595, line: 49, type: !14)
!2838 = !DILocation(line: 50, column: 14, scope: !2834)
!2839 = !DILocation(line: 50, column: 5, scope: !2834)
!2840 = distinct !DISubprogram(name: "EF", scope: !2841, file: !2841, line: 60, type: !2842, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2841 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2842 = !DISubroutineType(types: !2843)
!2843 = !{null, !18, !45, !45}
!2844 = !DILocalVariable(name: "A", arg: 1, scope: !2840, file: !2841, line: 60, type: !18)
!2845 = !DILocation(line: 0, scope: !2840)
!2846 = !DILocalVariable(name: "nrows", arg: 2, scope: !2840, file: !2841, line: 60, type: !45)
!2847 = !DILocalVariable(name: "ncols", arg: 3, scope: !2840, file: !2841, line: 60, type: !45)
!2848 = !DILocalVariable(name: "_pivot_row", scope: !2840, file: !2841, line: 62, type: !2849, align: 256)
!2849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 320, elements: !2850)
!2850 = !{!2851}
!2851 = !DISubrange(count: 5)
!2852 = !DILocation(line: 62, column: 27, scope: !2840)
!2853 = !DILocalVariable(name: "_pivot_row2", scope: !2840, file: !2841, line: 63, type: !2849, align: 256)
!2854 = !DILocation(line: 63, column: 27, scope: !2840)
!2855 = !DILocalVariable(name: "packed_A", scope: !2840, file: !2841, line: 64, type: !2856, align: 256)
!2856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 20480, elements: !2857)
!2857 = !{!2858}
!2858 = !DISubrange(count: 320)
!2859 = !DILocation(line: 64, column: 27, scope: !2840)
!2860 = !DILocation(line: 66, column: 26, scope: !2840)
!2861 = !DILocation(line: 66, column: 32, scope: !2840)
!2862 = !DILocalVariable(name: "row_len", scope: !2840, file: !2841, line: 66, type: !45)
!2863 = !DILocalVariable(name: "i", scope: !2864, file: !2841, line: 69, type: !45)
!2864 = distinct !DILexicalBlock(scope: !2840, file: !2841, line: 69, column: 5)
!2865 = !DILocation(line: 0, scope: !2864)
!2866 = !DILocation(line: 69, column: 10, scope: !2864)
!2867 = !DILocation(line: 69, scope: !2864)
!2868 = !DILocation(line: 69, column: 23, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2864, file: !2841, line: 69, column: 5)
!2870 = !DILocation(line: 69, column: 5, scope: !2864)
!2871 = !DILocation(line: 77, column: 5, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2840, file: !2841, line: 77, column: 5)
!2873 = !DILocation(line: 70, column: 29, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2869, file: !2841, line: 69, column: 37)
!2875 = !DILocation(line: 70, column: 25, scope: !2874)
!2876 = !DILocation(line: 70, column: 51, scope: !2874)
!2877 = !DILocation(line: 70, column: 47, scope: !2874)
!2878 = !DILocation(line: 70, column: 9, scope: !2874)
!2879 = !DILocation(line: 69, column: 33, scope: !2869)
!2880 = !DILocation(line: 69, column: 5, scope: !2869)
!2881 = distinct !{!2881, !2870, !2882, !244}
!2882 = !DILocation(line: 71, column: 5, scope: !2864)
!2883 = !DILocation(line: 77, scope: !2872)
!2884 = !DILocalVariable(name: "pivot_row", scope: !2840, file: !2841, line: 76, type: !45)
!2885 = !DILocalVariable(name: "pivot_col", scope: !2872, file: !2841, line: 77, type: !45)
!2886 = !DILocation(line: 0, scope: !2872)
!2887 = !DILocation(line: 77, column: 39, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2872, file: !2841, line: 77, column: 5)
!2889 = !DILocation(line: 138, column: 5, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2840, file: !2841, line: 138, column: 5)
!2891 = !DILocation(line: 79, column: 37, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2888, file: !2841, line: 77, column: 61)
!2893 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2892, file: !2841, line: 79, type: !45)
!2894 = !DILocation(line: 0, scope: !2892)
!2895 = !DILocation(line: 80, column: 37, scope: !2892)
!2896 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2892, file: !2841, line: 80, type: !45)
!2897 = !DILocalVariable(name: "i", scope: !2898, file: !2841, line: 85, type: !45)
!2898 = distinct !DILexicalBlock(scope: !2892, file: !2841, line: 85, column: 9)
!2899 = !DILocation(line: 0, scope: !2898)
!2900 = !DILocation(line: 85, column: 14, scope: !2898)
!2901 = !DILocation(line: 85, scope: !2898)
!2902 = !DILocation(line: 85, column: 27, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2898, file: !2841, line: 85, column: 9)
!2904 = !DILocation(line: 85, column: 9, scope: !2898)
!2905 = !DILocation(line: 93, column: 9, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2892, file: !2841, line: 93, column: 9)
!2907 = !DILocation(line: 86, column: 13, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2903, file: !2841, line: 85, column: 43)
!2909 = !DILocation(line: 86, column: 27, scope: !2908)
!2910 = !DILocation(line: 87, column: 13, scope: !2908)
!2911 = !DILocation(line: 87, column: 28, scope: !2908)
!2912 = !DILocation(line: 85, column: 39, scope: !2903)
!2913 = !DILocation(line: 85, column: 9, scope: !2903)
!2914 = distinct !{!2914, !2904, !2915, !244}
!2915 = !DILocation(line: 88, column: 9, scope: !2898)
!2916 = !DILocation(line: 0, scope: !2906)
!2917 = !DILocalVariable(name: "row", scope: !2906, file: !2841, line: 93, type: !45)
!2918 = !DILocalVariable(name: "pivot", scope: !2892, file: !2841, line: 91, type: !14)
!2919 = !DILocalVariable(name: "pivot_is_zero", scope: !2892, file: !2841, line: 92, type: !6)
!2920 = !DILocation(line: 94, column: 24, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2906, file: !2841, line: 93, column: 9)
!2922 = !DILocation(line: 94, column: 21, scope: !2921)
!2923 = !DILocation(line: 96, column: 38, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2921, file: !2841, line: 94, column: 80)
!2925 = !DILocation(line: 96, column: 37, scope: !2924)
!2926 = !DILocalVariable(name: "is_pivot_row", scope: !2924, file: !2841, line: 96, type: !6)
!2927 = !DILocation(line: 0, scope: !2924)
!2928 = !DILocation(line: 97, column: 40, scope: !2924)
!2929 = !DILocalVariable(name: "below_pivot_row", scope: !2924, file: !2841, line: 97, type: !6)
!2930 = !DILocalVariable(name: "j", scope: !2931, file: !2841, line: 99, type: !45)
!2931 = distinct !DILexicalBlock(scope: !2924, file: !2841, line: 99, column: 13)
!2932 = !DILocation(line: 0, scope: !2931)
!2933 = !DILocation(line: 99, column: 18, scope: !2931)
!2934 = !DILocation(line: 99, scope: !2931)
!2935 = !DILocation(line: 99, column: 31, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2931, file: !2841, line: 99, column: 13)
!2937 = !DILocation(line: 99, column: 13, scope: !2931)
!2938 = !DILocation(line: 100, column: 67, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2936, file: !2841, line: 99, column: 47)
!2940 = !DILocation(line: 100, column: 48, scope: !2939)
!2941 = !DILocation(line: 101, column: 47, scope: !2939)
!2942 = !DILocation(line: 101, column: 57, scope: !2939)
!2943 = !DILocation(line: 101, column: 34, scope: !2939)
!2944 = !DILocation(line: 100, column: 85, scope: !2939)
!2945 = !DILocation(line: 100, column: 17, scope: !2939)
!2946 = !DILocation(line: 100, column: 31, scope: !2939)
!2947 = !DILocation(line: 99, column: 43, scope: !2936)
!2948 = !DILocation(line: 99, column: 13, scope: !2936)
!2949 = distinct !{!2949, !2937, !2950, !244}
!2950 = !DILocation(line: 102, column: 13, scope: !2931)
!2951 = !DILocation(line: 103, column: 21, scope: !2924)
!2952 = !DILocation(line: 104, column: 44, scope: !2924)
!2953 = !DILocation(line: 104, column: 30, scope: !2924)
!2954 = !DILocation(line: 104, column: 29, scope: !2924)
!2955 = !DILocation(line: 94, column: 76, scope: !2921)
!2956 = !DILocation(line: 93, column: 9, scope: !2921)
!2957 = distinct !{!2957, !2905, !2958, !244}
!2958 = !DILocation(line: 105, column: 9, scope: !2906)
!2959 = !DILocation(line: 108, column: 19, scope: !2892)
!2960 = !DILocalVariable(name: "inverse", scope: !2840, file: !2841, line: 75, type: !14)
!2961 = !DILocation(line: 109, column: 9, scope: !2892)
!2962 = !DILocalVariable(name: "row", scope: !2963, file: !2841, line: 113, type: !45)
!2963 = distinct !DILexicalBlock(scope: !2892, file: !2841, line: 113, column: 9)
!2964 = !DILocation(line: 0, scope: !2963)
!2965 = !DILocation(line: 113, column: 14, scope: !2963)
!2966 = !DILocation(line: 113, scope: !2963)
!2967 = !DILocation(line: 113, column: 51, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2963, file: !2841, line: 113, column: 9)
!2969 = !DILocation(line: 113, column: 9, scope: !2963)
!2970 = !DILocation(line: 124, column: 9, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2892, file: !2841, line: 124, column: 9)
!2972 = !DILocation(line: 114, column: 33, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2968, file: !2841, line: 113, column: 84)
!2974 = !DILocation(line: 114, column: 63, scope: !2973)
!2975 = !DILocalVariable(name: "do_copy", scope: !2973, file: !2841, line: 114, type: !6)
!2976 = !DILocation(line: 0, scope: !2973)
!2977 = !DILocalVariable(name: "do_not_copy", scope: !2973, file: !2841, line: 115, type: !6)
!2978 = !DILocalVariable(name: "col", scope: !2979, file: !2841, line: 116, type: !45)
!2979 = distinct !DILexicalBlock(scope: !2973, file: !2841, line: 116, column: 13)
!2980 = !DILocation(line: 0, scope: !2979)
!2981 = !DILocation(line: 116, column: 18, scope: !2979)
!2982 = !DILocation(line: 116, scope: !2979)
!2983 = !DILocation(line: 116, column: 35, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2979, file: !2841, line: 116, column: 13)
!2985 = !DILocation(line: 116, column: 13, scope: !2979)
!2986 = !DILocation(line: 118, column: 49, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2984, file: !2841, line: 116, column: 53)
!2988 = !DILocation(line: 118, column: 59, scope: !2987)
!2989 = !DILocation(line: 118, column: 36, scope: !2987)
!2990 = !DILocation(line: 118, column: 34, scope: !2987)
!2991 = !DILocation(line: 119, column: 32, scope: !2987)
!2992 = !DILocation(line: 119, column: 30, scope: !2987)
!2993 = !DILocation(line: 118, column: 67, scope: !2987)
!2994 = !DILocation(line: 117, column: 30, scope: !2987)
!2995 = !DILocation(line: 117, column: 40, scope: !2987)
!2996 = !DILocation(line: 117, column: 17, scope: !2987)
!2997 = !DILocation(line: 117, column: 47, scope: !2987)
!2998 = !DILocation(line: 116, column: 49, scope: !2984)
!2999 = !DILocation(line: 116, column: 13, scope: !2984)
!3000 = distinct !{!3000, !2985, !3001, !244}
!3001 = !DILocation(line: 120, column: 13, scope: !2979)
!3002 = !DILocation(line: 113, column: 80, scope: !2968)
!3003 = !DILocation(line: 113, column: 9, scope: !2968)
!3004 = distinct !{!3004, !2969, !3005, !244}
!3005 = !DILocation(line: 121, column: 9, scope: !2963)
!3006 = !DILocation(line: 124, scope: !2971)
!3007 = !DILocalVariable(name: "row", scope: !2971, file: !2841, line: 124, type: !45)
!3008 = !DILocation(line: 0, scope: !2971)
!3009 = !DILocation(line: 124, column: 51, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2971, file: !2841, line: 124, column: 9)
!3011 = !DILocation(line: 125, column: 46, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3010, file: !2841, line: 124, column: 67)
!3013 = !DILocalVariable(name: "below_pivot", scope: !3012, file: !2841, line: 125, type: !14)
!3014 = !DILocation(line: 0, scope: !3012)
!3015 = !DILocation(line: 126, column: 74, scope: !3012)
!3016 = !DILocation(line: 126, column: 68, scope: !3012)
!3017 = !DILocation(line: 126, column: 41, scope: !3012)
!3018 = !DILocalVariable(name: "elt_to_elim", scope: !3012, file: !2841, line: 126, type: !14)
!3019 = !DILocation(line: 128, column: 63, scope: !3012)
!3020 = !DILocation(line: 129, column: 52, scope: !3012)
!3021 = !DILocation(line: 129, column: 46, scope: !3012)
!3022 = !DILocation(line: 128, column: 13, scope: !3012)
!3023 = !DILocation(line: 124, column: 63, scope: !3010)
!3024 = !DILocation(line: 124, column: 9, scope: !3010)
!3025 = distinct !{!3025, !2970, !3026, !244}
!3026 = !DILocation(line: 130, column: 9, scope: !2971)
!3027 = !DILocation(line: 132, column: 19, scope: !2892)
!3028 = !DILocation(line: 77, column: 57, scope: !2888)
!3029 = !DILocation(line: 77, column: 5, scope: !2888)
!3030 = distinct !{!3030, !2871, !3031, !244}
!3031 = !DILocation(line: 133, column: 5, scope: !2872)
!3032 = !DILocation(line: 138, scope: !2890)
!3033 = !DILocalVariable(name: "i", scope: !2890, file: !2841, line: 138, type: !45)
!3034 = !DILocation(line: 0, scope: !2890)
!3035 = !DILocation(line: 138, column: 23, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !2890, file: !2841, line: 138, column: 5)
!3037 = !DILocation(line: 139, column: 47, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3036, file: !2841, line: 138, column: 37)
!3039 = !DILocation(line: 139, column: 43, scope: !3038)
!3040 = !DILocation(line: 139, column: 9, scope: !3038)
!3041 = !DILocalVariable(name: "j", scope: !3042, file: !2841, line: 140, type: !45)
!3042 = distinct !DILexicalBlock(scope: !3038, file: !2841, line: 140, column: 9)
!3043 = !DILocation(line: 0, scope: !3042)
!3044 = !DILocation(line: 140, column: 14, scope: !3042)
!3045 = !DILocation(line: 140, scope: !3042)
!3046 = !DILocation(line: 140, column: 27, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3042, file: !2841, line: 140, column: 9)
!3048 = !DILocation(line: 140, column: 9, scope: !3042)
!3049 = !DILocation(line: 141, column: 32, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3047, file: !2841, line: 140, column: 41)
!3051 = !DILocation(line: 141, column: 17, scope: !3050)
!3052 = !DILocation(line: 141, column: 13, scope: !3050)
!3053 = !DILocation(line: 141, column: 30, scope: !3050)
!3054 = !DILocation(line: 140, column: 37, scope: !3047)
!3055 = !DILocation(line: 140, column: 9, scope: !3047)
!3056 = distinct !{!3056, !3048, !3057, !244}
!3057 = !DILocation(line: 142, column: 9, scope: !3042)
!3058 = !DILocation(line: 138, column: 33, scope: !3036)
!3059 = !DILocation(line: 138, column: 5, scope: !3036)
!3060 = distinct !{!3060, !2889, !3061, !244}
!3061 = !DILocation(line: 143, column: 5, scope: !2890)
!3062 = !DILocation(line: 145, column: 5, scope: !2840)
!3063 = !DILocation(line: 146, column: 5, scope: !2840)
!3064 = !DILocation(line: 147, column: 5, scope: !2840)
!3065 = !DILocation(line: 148, column: 5, scope: !2840)
!3066 = !DILocation(line: 149, column: 1, scope: !2840)
!3067 = distinct !DISubprogram(name: "ct_compare_8", scope: !3068, file: !3068, line: 51, type: !1595, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3068 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3069 = !DILocalVariable(name: "a", arg: 1, scope: !3067, file: !3068, line: 51, type: !14)
!3070 = !DILocation(line: 0, scope: !3067)
!3071 = !DILocalVariable(name: "b", arg: 2, scope: !3067, file: !3068, line: 51, type: !14)
!3072 = !DILocation(line: 52, column: 42, scope: !3067)
!3073 = !DILocation(line: 52, column: 13, scope: !3067)
!3074 = !DILocation(line: 52, column: 71, scope: !3067)
!3075 = !DILocation(line: 52, column: 69, scope: !3067)
!3076 = !DILocation(line: 52, column: 5, scope: !3067)
!3077 = distinct !DISubprogram(name: "mul_fx8", scope: !595, file: !595, line: 29, type: !3078, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!6, !14, !6}
!3080 = !DILocalVariable(name: "a", arg: 1, scope: !3077, file: !595, line: 29, type: !14)
!3081 = !DILocation(line: 0, scope: !3077)
!3082 = !DILocalVariable(name: "b", arg: 2, scope: !3077, file: !595, line: 29, type: !6)
!3083 = !DILocation(line: 32, column: 13, scope: !3077)
!3084 = !DILocation(line: 32, column: 10, scope: !3077)
!3085 = !DILocation(line: 32, column: 17, scope: !3077)
!3086 = !DILocalVariable(name: "p", scope: !3077, file: !595, line: 31, type: !6)
!3087 = !DILocation(line: 33, column: 13, scope: !3077)
!3088 = !DILocation(line: 33, column: 10, scope: !3077)
!3089 = !DILocation(line: 33, column: 17, scope: !3077)
!3090 = !DILocation(line: 33, column: 7, scope: !3077)
!3091 = !DILocation(line: 34, column: 13, scope: !3077)
!3092 = !DILocation(line: 34, column: 10, scope: !3077)
!3093 = !DILocation(line: 34, column: 17, scope: !3077)
!3094 = !DILocation(line: 34, column: 7, scope: !3077)
!3095 = !DILocation(line: 35, column: 13, scope: !3077)
!3096 = !DILocation(line: 35, column: 10, scope: !3077)
!3097 = !DILocation(line: 35, column: 17, scope: !3077)
!3098 = !DILocation(line: 35, column: 7, scope: !3077)
!3099 = !DILocalVariable(name: "top_p", scope: !3077, file: !595, line: 38, type: !6)
!3100 = !DILocation(line: 39, column: 32, scope: !3077)
!3101 = !DILocation(line: 39, column: 47, scope: !3077)
!3102 = !DILocation(line: 39, column: 38, scope: !3077)
!3103 = !DILocation(line: 39, column: 54, scope: !3077)
!3104 = !DILocalVariable(name: "out", scope: !3077, file: !595, line: 39, type: !6)
!3105 = !DILocation(line: 40, column: 5, scope: !3077)
!3106 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2841, file: !2841, line: 24, type: !3107, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{null, !49, !5, !45}
!3109 = !DILocalVariable(name: "in", arg: 1, scope: !3106, file: !2841, line: 24, type: !49)
!3110 = !DILocation(line: 0, scope: !3106)
!3111 = !DILocalVariable(name: "out", arg: 2, scope: !3106, file: !2841, line: 24, type: !5)
!3112 = !DILocalVariable(name: "ncols", arg: 3, scope: !3106, file: !2841, line: 24, type: !45)
!3113 = !DILocalVariable(name: "out8", scope: !3106, file: !2841, line: 26, type: !18)
!3114 = !DILocalVariable(name: "i", scope: !3106, file: !2841, line: 25, type: !45)
!3115 = !DILocation(line: 27, column: 9, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3106, file: !2841, line: 27, column: 5)
!3117 = !DILocation(line: 27, scope: !3116)
!3118 = !DILocation(line: 27, column: 17, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3116, file: !2841, line: 27, column: 5)
!3120 = !DILocation(line: 27, column: 20, scope: !3119)
!3121 = !DILocation(line: 27, column: 5, scope: !3116)
!3122 = !DILocation(line: 31, column: 23, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3119, file: !2841, line: 27, column: 36)
!3124 = !DILocation(line: 31, column: 44, scope: !3123)
!3125 = !DILocation(line: 31, column: 40, scope: !3123)
!3126 = !DILocation(line: 31, column: 48, scope: !3123)
!3127 = !DILocation(line: 31, column: 37, scope: !3123)
!3128 = !DILocation(line: 31, column: 15, scope: !3123)
!3129 = !DILocation(line: 31, column: 9, scope: !3123)
!3130 = !DILocation(line: 31, column: 20, scope: !3123)
!3131 = !DILocation(line: 27, column: 31, scope: !3119)
!3132 = !DILocation(line: 27, column: 5, scope: !3119)
!3133 = distinct !{!3133, !3121, !3134, !244}
!3134 = !DILocation(line: 33, column: 5, scope: !3116)
!3135 = !DILocation(line: 34, column: 19, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3106, file: !2841, line: 34, column: 9)
!3137 = !DILocation(line: 38, column: 23, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3136, file: !2841, line: 34, column: 24)
!3139 = !DILocation(line: 38, column: 15, scope: !3138)
!3140 = !DILocation(line: 38, column: 9, scope: !3138)
!3141 = !DILocation(line: 38, column: 20, scope: !3138)
!3142 = !DILocation(line: 40, column: 5, scope: !3138)
!3143 = !DILocation(line: 41, column: 1, scope: !3106)
!3144 = distinct !DISubprogram(name: "ct_compare_64", scope: !3068, file: !3068, line: 46, type: !3145, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!6, !45, !45}
!3147 = !DILocalVariable(name: "a", arg: 1, scope: !3144, file: !3068, line: 46, type: !45)
!3148 = !DILocation(line: 0, scope: !3144)
!3149 = !DILocalVariable(name: "b", arg: 2, scope: !3144, file: !3068, line: 46, type: !45)
!3150 = !DILocation(line: 47, column: 38, scope: !3144)
!3151 = !DILocation(line: 47, column: 44, scope: !3144)
!3152 = !DILocation(line: 47, column: 73, scope: !3144)
!3153 = !DILocation(line: 47, column: 71, scope: !3144)
!3154 = !DILocation(line: 47, column: 5, scope: !3144)
!3155 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3068, file: !3068, line: 35, type: !3145, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3156 = !DILocalVariable(name: "a", arg: 1, scope: !3155, file: !3068, line: 35, type: !45)
!3157 = !DILocation(line: 0, scope: !3155)
!3158 = !DILocalVariable(name: "b", arg: 2, scope: !3155, file: !3068, line: 35, type: !45)
!3159 = !DILocalVariable(name: "diff", scope: !3155, file: !3068, line: 36, type: !46)
!3160 = !DILocation(line: 37, column: 30, scope: !3155)
!3161 = !DILocation(line: 37, column: 59, scope: !3155)
!3162 = !DILocation(line: 37, column: 57, scope: !3155)
!3163 = !DILocation(line: 37, column: 5, scope: !3155)
!3164 = distinct !DISubprogram(name: "m_extract_element", scope: !2841, file: !2841, line: 16, type: !3165, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!14, !428, !45}
!3167 = !DILocalVariable(name: "in", arg: 1, scope: !3164, file: !2841, line: 16, type: !428)
!3168 = !DILocation(line: 0, scope: !3164)
!3169 = !DILocalVariable(name: "index", arg: 2, scope: !3164, file: !2841, line: 16, type: !45)
!3170 = !DILocation(line: 17, column: 27, scope: !3164)
!3171 = !DILocalVariable(name: "leg", scope: !3164, file: !2841, line: 17, type: !343)
!3172 = !DILocation(line: 18, column: 30, scope: !3164)
!3173 = !DILocalVariable(name: "offset", scope: !3164, file: !2841, line: 18, type: !343)
!3174 = !DILocation(line: 20, column: 13, scope: !3164)
!3175 = !DILocation(line: 20, column: 31, scope: !3164)
!3176 = !DILocation(line: 20, column: 21, scope: !3164)
!3177 = !DILocation(line: 20, column: 12, scope: !3164)
!3178 = !DILocation(line: 20, column: 5, scope: !3164)
!3179 = distinct !DISubprogram(name: "inverse_f", scope: !595, file: !595, line: 58, type: !3180, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!14, !14}
!3182 = !DILocalVariable(name: "a", arg: 1, scope: !3179, file: !595, line: 58, type: !14)
!3183 = !DILocation(line: 0, scope: !3179)
!3184 = !DILocation(line: 62, column: 24, scope: !3179)
!3185 = !DILocalVariable(name: "a2", scope: !3179, file: !595, line: 62, type: !14)
!3186 = !DILocation(line: 63, column: 24, scope: !3179)
!3187 = !DILocalVariable(name: "a4", scope: !3179, file: !595, line: 63, type: !14)
!3188 = !DILocation(line: 64, column: 24, scope: !3179)
!3189 = !DILocalVariable(name: "a8", scope: !3179, file: !595, line: 64, type: !14)
!3190 = !DILocation(line: 65, column: 24, scope: !3179)
!3191 = !DILocalVariable(name: "a6", scope: !3179, file: !595, line: 65, type: !14)
!3192 = !DILocation(line: 66, column: 25, scope: !3179)
!3193 = !DILocalVariable(name: "a14", scope: !3179, file: !595, line: 66, type: !14)
!3194 = !DILocation(line: 68, column: 5, scope: !3179)
!3195 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3068, file: !3068, line: 94, type: !3196, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{null, !343, !428, !14, !5}
!3198 = !DILocalVariable(name: "legs", arg: 1, scope: !3195, file: !3068, line: 94, type: !343)
!3199 = !DILocation(line: 0, scope: !3195)
!3200 = !DILocalVariable(name: "in", arg: 2, scope: !3195, file: !3068, line: 94, type: !428)
!3201 = !DILocalVariable(name: "a", arg: 3, scope: !3195, file: !3068, line: 94, type: !14)
!3202 = !DILocalVariable(name: "acc", arg: 4, scope: !3195, file: !3068, line: 94, type: !5)
!3203 = !DILocation(line: 95, column: 20, scope: !3195)
!3204 = !DILocalVariable(name: "tab", scope: !3195, file: !3068, line: 95, type: !19)
!3205 = !DILocalVariable(name: "lsb_ask", scope: !3195, file: !3068, line: 97, type: !6)
!3206 = !DILocalVariable(name: "i", scope: !3207, file: !3068, line: 99, type: !45)
!3207 = distinct !DILexicalBlock(scope: !3195, file: !3068, line: 99, column: 5)
!3208 = !DILocation(line: 0, scope: !3207)
!3209 = !DILocation(line: 99, column: 9, scope: !3207)
!3210 = !DILocation(line: 99, scope: !3207)
!3211 = !DILocation(line: 99, column: 20, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3207, file: !3068, line: 99, column: 5)
!3213 = !DILocation(line: 99, column: 5, scope: !3207)
!3214 = !DILocation(line: 100, column: 21, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3212, file: !3068, line: 99, column: 32)
!3216 = !DILocation(line: 100, column: 33, scope: !3215)
!3217 = !DILocation(line: 100, column: 51, scope: !3215)
!3218 = !DILocation(line: 100, column: 46, scope: !3215)
!3219 = !DILocation(line: 100, column: 44, scope: !3215)
!3220 = !DILocation(line: 101, column: 27, scope: !3215)
!3221 = !DILocation(line: 101, column: 33, scope: !3215)
!3222 = !DILocation(line: 101, column: 52, scope: !3215)
!3223 = !DILocation(line: 101, column: 59, scope: !3215)
!3224 = !DILocation(line: 101, column: 46, scope: !3215)
!3225 = !DILocation(line: 101, column: 44, scope: !3215)
!3226 = !DILocation(line: 101, column: 17, scope: !3215)
!3227 = !DILocation(line: 102, column: 21, scope: !3215)
!3228 = !DILocation(line: 102, column: 27, scope: !3215)
!3229 = !DILocation(line: 102, column: 33, scope: !3215)
!3230 = !DILocation(line: 102, column: 52, scope: !3215)
!3231 = !DILocation(line: 102, column: 59, scope: !3215)
!3232 = !DILocation(line: 102, column: 46, scope: !3215)
!3233 = !DILocation(line: 102, column: 44, scope: !3215)
!3234 = !DILocation(line: 102, column: 17, scope: !3215)
!3235 = !DILocation(line: 103, column: 21, scope: !3215)
!3236 = !DILocation(line: 103, column: 27, scope: !3215)
!3237 = !DILocation(line: 103, column: 33, scope: !3215)
!3238 = !DILocation(line: 103, column: 52, scope: !3215)
!3239 = !DILocation(line: 103, column: 59, scope: !3215)
!3240 = !DILocation(line: 103, column: 46, scope: !3215)
!3241 = !DILocation(line: 103, column: 44, scope: !3215)
!3242 = !DILocation(line: 103, column: 17, scope: !3215)
!3243 = !DILocation(line: 100, column: 9, scope: !3215)
!3244 = !DILocation(line: 100, column: 16, scope: !3215)
!3245 = !DILocation(line: 99, column: 29, scope: !3212)
!3246 = !DILocation(line: 99, column: 5, scope: !3212)
!3247 = distinct !{!3247, !3213, !3248, !244}
!3248 = !DILocation(line: 104, column: 5, scope: !3207)
!3249 = !DILocation(line: 105, column: 1, scope: !3195)
!3250 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2841, file: !2841, line: 44, type: !3251, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{null, !45, !428, !18}
!3253 = !DILocalVariable(name: "legs", arg: 1, scope: !3250, file: !2841, line: 44, type: !45)
!3254 = !DILocation(line: 0, scope: !3250)
!3255 = !DILocalVariable(name: "in", arg: 2, scope: !3250, file: !2841, line: 44, type: !428)
!3256 = !DILocalVariable(name: "out", arg: 3, scope: !3250, file: !2841, line: 44, type: !18)
!3257 = !DILocalVariable(name: "in8", scope: !3250, file: !2841, line: 45, type: !49)
!3258 = !DILocalVariable(name: "i", scope: !3259, file: !2841, line: 46, type: !45)
!3259 = distinct !DILexicalBlock(scope: !3250, file: !2841, line: 46, column: 5)
!3260 = !DILocation(line: 0, scope: !3259)
!3261 = !DILocation(line: 46, column: 9, scope: !3259)
!3262 = !DILocation(line: 46, scope: !3259)
!3263 = !DILocation(line: 46, column: 29, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3259, file: !2841, line: 46, column: 5)
!3265 = !DILocation(line: 46, column: 22, scope: !3264)
!3266 = !DILocation(line: 46, column: 5, scope: !3259)
!3267 = !DILocation(line: 51, column: 26, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3264, file: !2841, line: 46, column: 42)
!3269 = !DILocation(line: 51, column: 21, scope: !3268)
!3270 = !DILocation(line: 51, column: 31, scope: !3268)
!3271 = !DILocation(line: 51, column: 9, scope: !3268)
!3272 = !DILocation(line: 51, column: 18, scope: !3268)
!3273 = !DILocation(line: 52, column: 26, scope: !3268)
!3274 = !DILocation(line: 52, column: 21, scope: !3268)
!3275 = !DILocation(line: 52, column: 30, scope: !3268)
!3276 = !DILocation(line: 52, column: 14, scope: !3268)
!3277 = !DILocation(line: 52, column: 9, scope: !3268)
!3278 = !DILocation(line: 52, column: 18, scope: !3268)
!3279 = !DILocation(line: 46, column: 37, scope: !3264)
!3280 = !DILocation(line: 46, column: 5, scope: !3264)
!3281 = distinct !{!3281, !3266, !3282, !244}
!3282 = !DILocation(line: 54, column: 5, scope: !3259)
!3283 = !DILocation(line: 55, column: 1, scope: !3250)
!3284 = distinct !DISubprogram(name: "mul_table", scope: !595, file: !595, line: 136, type: !596, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3285 = !DILocalVariable(name: "b", arg: 1, scope: !3284, file: !595, line: 136, type: !12)
!3286 = !DILocation(line: 0, scope: !3284)
!3287 = !DILocation(line: 137, column: 19, scope: !3284)
!3288 = !DILocation(line: 137, column: 33, scope: !3284)
!3289 = !DILocalVariable(name: "x", scope: !3284, file: !595, line: 137, type: !19)
!3290 = !DILocalVariable(name: "high_nibble_mask", scope: !3284, file: !595, line: 139, type: !19)
!3291 = !DILocation(line: 141, column: 28, scope: !3284)
!3292 = !DILocalVariable(name: "high_half", scope: !3284, file: !595, line: 141, type: !19)
!3293 = !DILocation(line: 142, column: 28, scope: !3284)
!3294 = !DILocation(line: 142, column: 47, scope: !3284)
!3295 = !DILocation(line: 142, column: 34, scope: !3284)
!3296 = !DILocation(line: 142, column: 5, scope: !3284)
!3297 = distinct !DISubprogram(name: "mul_f", scope: !595, file: !595, line: 10, type: !1595, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3298 = !DILocalVariable(name: "a", arg: 1, scope: !3297, file: !595, line: 10, type: !14)
!3299 = !DILocation(line: 0, scope: !3297)
!3300 = !DILocalVariable(name: "b", arg: 2, scope: !3297, file: !595, line: 10, type: !14)
!3301 = !DILocation(line: 15, column: 10, scope: !3297)
!3302 = !DILocation(line: 15, column: 7, scope: !3297)
!3303 = !DILocation(line: 18, column: 17, scope: !3297)
!3304 = !DILocalVariable(name: "p", scope: !3297, file: !595, line: 12, type: !14)
!3305 = !DILocation(line: 19, column: 13, scope: !3297)
!3306 = !DILocation(line: 19, column: 17, scope: !3297)
!3307 = !DILocation(line: 19, column: 7, scope: !3297)
!3308 = !DILocation(line: 20, column: 13, scope: !3297)
!3309 = !DILocation(line: 20, column: 17, scope: !3297)
!3310 = !DILocation(line: 20, column: 7, scope: !3297)
!3311 = !DILocation(line: 21, column: 13, scope: !3297)
!3312 = !DILocation(line: 21, column: 17, scope: !3297)
!3313 = !DILocation(line: 21, column: 7, scope: !3297)
!3314 = !DILocalVariable(name: "top_p", scope: !3297, file: !595, line: 24, type: !14)
!3315 = !DILocation(line: 25, column: 37, scope: !3297)
!3316 = !DILocation(line: 25, column: 52, scope: !3297)
!3317 = !DILocation(line: 25, column: 43, scope: !3297)
!3318 = !DILocation(line: 25, column: 59, scope: !3297)
!3319 = !DILocalVariable(name: "out", scope: !3297, file: !595, line: 25, type: !14)
!3320 = !DILocation(line: 26, column: 5, scope: !3297)
!3321 = distinct !DISubprogram(name: "lincomb", scope: !595, file: !595, line: 71, type: !1603, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3322 = !DILocalVariable(name: "a", arg: 1, scope: !3321, file: !595, line: 71, type: !49)
!3323 = !DILocation(line: 0, scope: !3321)
!3324 = !DILocalVariable(name: "b", arg: 2, scope: !3321, file: !595, line: 72, type: !49)
!3325 = !DILocalVariable(name: "n", arg: 3, scope: !3321, file: !595, line: 72, type: !45)
!3326 = !DILocalVariable(name: "m", arg: 4, scope: !3321, file: !595, line: 72, type: !45)
!3327 = !DILocalVariable(name: "ret", scope: !3321, file: !595, line: 73, type: !14)
!3328 = !DILocalVariable(name: "i", scope: !3329, file: !595, line: 74, type: !45)
!3329 = distinct !DILexicalBlock(scope: !3321, file: !595, line: 74, column: 5)
!3330 = !DILocation(line: 0, scope: !3329)
!3331 = !DILocation(line: 74, column: 10, scope: !3329)
!3332 = !DILocation(line: 74, scope: !3329)
!3333 = !DILocation(line: 74, column: 23, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3329, file: !595, line: 74, column: 5)
!3335 = !DILocation(line: 74, column: 5, scope: !3329)
!3336 = !DILocation(line: 75, column: 27, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3334, file: !595, line: 74, column: 41)
!3338 = !DILocation(line: 75, column: 33, scope: !3337)
!3339 = !DILocation(line: 75, column: 21, scope: !3337)
!3340 = !DILocation(line: 75, column: 15, scope: !3337)
!3341 = !DILocation(line: 74, column: 28, scope: !3334)
!3342 = !DILocation(line: 74, column: 35, scope: !3334)
!3343 = !DILocation(line: 74, column: 5, scope: !3334)
!3344 = distinct !{!3344, !3335, !3345, !244}
!3345 = !DILocation(line: 76, column: 5, scope: !3329)
!3346 = !DILocation(line: 79, column: 5, scope: !3321)
!3347 = distinct !DISubprogram(name: "add_f", scope: !595, file: !595, line: 44, type: !1595, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3348 = !DILocalVariable(name: "a", arg: 1, scope: !3347, file: !595, line: 44, type: !14)
!3349 = !DILocation(line: 0, scope: !3347)
!3350 = !DILocalVariable(name: "b", arg: 2, scope: !3347, file: !595, line: 44, type: !14)
!3351 = !DILocation(line: 45, column: 14, scope: !3347)
!3352 = !DILocation(line: 45, column: 5, scope: !3347)
!3353 = distinct !DISubprogram(name: "shake128_inc_init", scope: !71, file: !71, line: 688, type: !3354, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{null, !3356}
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 32)
!3357 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128incctx", file: !71, line: 31, baseType: !3358)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 29, size: 32, elements: !3359)
!3359 = !{!3360}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3358, file: !71, line: 30, baseType: !5, size: 32)
!3361 = !DILocalVariable(name: "state", arg: 1, scope: !3353, file: !71, line: 688, type: !3356)
!3362 = !DILocation(line: 0, scope: !3353)
!3363 = !DILocation(line: 689, column: 18, scope: !3353)
!3364 = !DILocation(line: 689, column: 16, scope: !3353)
!3365 = !DILocation(line: 690, column: 20, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3353, file: !71, line: 690, column: 9)
!3367 = !DILocation(line: 691, column: 9, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3366, file: !71, line: 690, column: 29)
!3369 = !DILocation(line: 692, column: 5, scope: !3368)
!3370 = !DILocation(line: 693, column: 28, scope: !3353)
!3371 = !DILocation(line: 693, column: 5, scope: !3353)
!3372 = !DILocation(line: 694, column: 1, scope: !3353)
!3373 = distinct !DISubprogram(name: "keccak_inc_init", scope: !71, file: !71, line: 580, type: !26, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3374 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3373, file: !71, line: 580, type: !5)
!3375 = !DILocation(line: 0, scope: !3373)
!3376 = !DILocalVariable(name: "i", scope: !3373, file: !71, line: 581, type: !15)
!3377 = !DILocation(line: 583, column: 10, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3373, file: !71, line: 583, column: 5)
!3379 = !DILocation(line: 583, scope: !3378)
!3380 = !DILocation(line: 583, column: 19, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3378, file: !71, line: 583, column: 5)
!3382 = !DILocation(line: 583, column: 5, scope: !3378)
!3383 = !DILocation(line: 584, column: 9, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3381, file: !71, line: 583, column: 30)
!3385 = !DILocation(line: 584, column: 18, scope: !3384)
!3386 = !DILocation(line: 583, column: 25, scope: !3381)
!3387 = !DILocation(line: 583, column: 5, scope: !3381)
!3388 = distinct !{!3388, !3382, !3389, !244}
!3389 = !DILocation(line: 585, column: 5, scope: !3378)
!3390 = !DILocation(line: 586, column: 5, scope: !3373)
!3391 = !DILocation(line: 586, column: 15, scope: !3373)
!3392 = !DILocation(line: 587, column: 1, scope: !3373)
!3393 = distinct !DISubprogram(name: "shake128_inc_absorb", scope: !71, file: !71, line: 696, type: !3394, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{null, !3356, !257, !15}
!3396 = !DILocalVariable(name: "state", arg: 1, scope: !3393, file: !71, line: 696, type: !3356)
!3397 = !DILocation(line: 0, scope: !3393)
!3398 = !DILocalVariable(name: "input", arg: 2, scope: !3393, file: !71, line: 696, type: !257)
!3399 = !DILocalVariable(name: "inlen", arg: 3, scope: !3393, file: !71, line: 696, type: !15)
!3400 = !DILocation(line: 697, column: 30, scope: !3393)
!3401 = !DILocation(line: 697, column: 5, scope: !3393)
!3402 = !DILocation(line: 698, column: 1, scope: !3393)
!3403 = distinct !DISubprogram(name: "keccak_inc_absorb", scope: !71, file: !71, line: 603, type: !3404, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{null, !5, !19, !257, !15}
!3406 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3403, file: !71, line: 603, type: !5)
!3407 = !DILocation(line: 0, scope: !3403)
!3408 = !DILocalVariable(name: "r", arg: 2, scope: !3403, file: !71, line: 603, type: !19)
!3409 = !DILocalVariable(name: "m", arg: 3, scope: !3403, file: !71, line: 603, type: !257)
!3410 = !DILocalVariable(name: "mlen", arg: 4, scope: !3403, file: !71, line: 604, type: !15)
!3411 = !DILocation(line: 608, column: 5, scope: !3403)
!3412 = !DILocation(line: 608, column: 12, scope: !3403)
!3413 = !DILocation(line: 608, column: 19, scope: !3403)
!3414 = !DILocation(line: 608, column: 17, scope: !3403)
!3415 = !DILocation(line: 608, column: 32, scope: !3403)
!3416 = !DILocation(line: 608, column: 29, scope: !3403)
!3417 = !DILocation(line: 609, column: 9, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !71, line: 609, column: 9)
!3419 = distinct !DILexicalBlock(scope: !3403, file: !71, line: 608, column: 35)
!3420 = !DILocation(line: 621, column: 5, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3403, file: !71, line: 621, column: 5)
!3422 = !DILocation(line: 609, scope: !3418)
!3423 = !DILocalVariable(name: "i", scope: !3403, file: !71, line: 605, type: !15)
!3424 = !DILocation(line: 609, column: 39, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3418, file: !71, line: 609, column: 9)
!3426 = !DILocation(line: 609, column: 29, scope: !3425)
!3427 = !DILocation(line: 609, column: 27, scope: !3425)
!3428 = !DILocation(line: 609, column: 23, scope: !3425)
!3429 = !DILocation(line: 612, column: 54, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3425, file: !71, line: 609, column: 55)
!3431 = !DILocation(line: 612, column: 44, scope: !3430)
!3432 = !DILocation(line: 612, column: 69, scope: !3430)
!3433 = !DILocation(line: 612, column: 81, scope: !3430)
!3434 = !DILocation(line: 612, column: 79, scope: !3430)
!3435 = !DILocation(line: 612, column: 65, scope: !3430)
!3436 = !DILocation(line: 612, column: 59, scope: !3430)
!3437 = !DILocation(line: 612, column: 20, scope: !3430)
!3438 = !DILocation(line: 612, column: 32, scope: !3430)
!3439 = !DILocation(line: 612, column: 30, scope: !3430)
!3440 = !DILocation(line: 612, column: 35, scope: !3430)
!3441 = !DILocation(line: 612, column: 13, scope: !3430)
!3442 = !DILocation(line: 612, column: 41, scope: !3430)
!3443 = !DILocation(line: 609, column: 51, scope: !3425)
!3444 = !DILocation(line: 609, column: 9, scope: !3425)
!3445 = distinct !{!3445, !3417, !3446, !244}
!3446 = !DILocation(line: 613, column: 9, scope: !3418)
!3447 = !DILocation(line: 614, column: 30, scope: !3419)
!3448 = !DILocation(line: 614, column: 17, scope: !3419)
!3449 = !DILocation(line: 614, column: 14, scope: !3419)
!3450 = !DILocation(line: 615, column: 11, scope: !3419)
!3451 = !DILocation(line: 616, column: 9, scope: !3419)
!3452 = !DILocation(line: 616, column: 19, scope: !3419)
!3453 = !DILocation(line: 618, column: 9, scope: !3419)
!3454 = distinct !{!3454, !3411, !3455, !244}
!3455 = !DILocation(line: 619, column: 5, scope: !3403)
!3456 = !DILocation(line: 621, scope: !3421)
!3457 = !DILocation(line: 621, column: 19, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3421, file: !71, line: 621, column: 5)
!3459 = !DILocation(line: 622, column: 50, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3458, file: !71, line: 621, column: 32)
!3461 = !DILocation(line: 622, column: 40, scope: !3460)
!3462 = !DILocation(line: 622, column: 65, scope: !3460)
!3463 = !DILocation(line: 622, column: 77, scope: !3460)
!3464 = !DILocation(line: 622, column: 75, scope: !3460)
!3465 = !DILocation(line: 622, column: 61, scope: !3460)
!3466 = !DILocation(line: 622, column: 55, scope: !3460)
!3467 = !DILocation(line: 622, column: 16, scope: !3460)
!3468 = !DILocation(line: 622, column: 28, scope: !3460)
!3469 = !DILocation(line: 622, column: 26, scope: !3460)
!3470 = !DILocation(line: 622, column: 31, scope: !3460)
!3471 = !DILocation(line: 622, column: 9, scope: !3460)
!3472 = !DILocation(line: 622, column: 37, scope: !3460)
!3473 = !DILocation(line: 621, column: 28, scope: !3458)
!3474 = !DILocation(line: 621, column: 5, scope: !3458)
!3475 = distinct !{!3475, !3420, !3476, !244}
!3476 = !DILocation(line: 623, column: 5, scope: !3421)
!3477 = !DILocation(line: 624, column: 18, scope: !3403)
!3478 = !DILocation(line: 624, column: 5, scope: !3403)
!3479 = !DILocation(line: 624, column: 15, scope: !3403)
!3480 = !DILocation(line: 625, column: 1, scope: !3403)
!3481 = distinct !DISubprogram(name: "KeccakF1600_StatePermute", scope: !71, file: !71, line: 236, type: !26, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3482 = !DILocalVariable(name: "state", arg: 1, scope: !3481, file: !71, line: 236, type: !5)
!3483 = !DILocation(line: 0, scope: !3481)
!3484 = !DILocation(line: 253, column: 11, scope: !3481)
!3485 = !DILocalVariable(name: "Aba", scope: !3481, file: !71, line: 239, type: !6)
!3486 = !DILocation(line: 254, column: 11, scope: !3481)
!3487 = !DILocalVariable(name: "Abe", scope: !3481, file: !71, line: 239, type: !6)
!3488 = !DILocation(line: 255, column: 11, scope: !3481)
!3489 = !DILocalVariable(name: "Abi", scope: !3481, file: !71, line: 239, type: !6)
!3490 = !DILocation(line: 256, column: 11, scope: !3481)
!3491 = !DILocalVariable(name: "Abo", scope: !3481, file: !71, line: 239, type: !6)
!3492 = !DILocation(line: 257, column: 11, scope: !3481)
!3493 = !DILocalVariable(name: "Abu", scope: !3481, file: !71, line: 239, type: !6)
!3494 = !DILocation(line: 258, column: 11, scope: !3481)
!3495 = !DILocalVariable(name: "Aga", scope: !3481, file: !71, line: 240, type: !6)
!3496 = !DILocation(line: 259, column: 11, scope: !3481)
!3497 = !DILocalVariable(name: "Age", scope: !3481, file: !71, line: 240, type: !6)
!3498 = !DILocation(line: 260, column: 11, scope: !3481)
!3499 = !DILocalVariable(name: "Agi", scope: !3481, file: !71, line: 240, type: !6)
!3500 = !DILocation(line: 261, column: 11, scope: !3481)
!3501 = !DILocalVariable(name: "Ago", scope: !3481, file: !71, line: 240, type: !6)
!3502 = !DILocation(line: 262, column: 11, scope: !3481)
!3503 = !DILocalVariable(name: "Agu", scope: !3481, file: !71, line: 240, type: !6)
!3504 = !DILocation(line: 263, column: 11, scope: !3481)
!3505 = !DILocalVariable(name: "Aka", scope: !3481, file: !71, line: 241, type: !6)
!3506 = !DILocation(line: 264, column: 11, scope: !3481)
!3507 = !DILocalVariable(name: "Ake", scope: !3481, file: !71, line: 241, type: !6)
!3508 = !DILocation(line: 265, column: 11, scope: !3481)
!3509 = !DILocalVariable(name: "Aki", scope: !3481, file: !71, line: 241, type: !6)
!3510 = !DILocation(line: 266, column: 11, scope: !3481)
!3511 = !DILocalVariable(name: "Ako", scope: !3481, file: !71, line: 241, type: !6)
!3512 = !DILocation(line: 267, column: 11, scope: !3481)
!3513 = !DILocalVariable(name: "Aku", scope: !3481, file: !71, line: 241, type: !6)
!3514 = !DILocation(line: 268, column: 11, scope: !3481)
!3515 = !DILocalVariable(name: "Ama", scope: !3481, file: !71, line: 242, type: !6)
!3516 = !DILocation(line: 269, column: 11, scope: !3481)
!3517 = !DILocalVariable(name: "Ame", scope: !3481, file: !71, line: 242, type: !6)
!3518 = !DILocation(line: 270, column: 11, scope: !3481)
!3519 = !DILocalVariable(name: "Ami", scope: !3481, file: !71, line: 242, type: !6)
!3520 = !DILocation(line: 271, column: 11, scope: !3481)
!3521 = !DILocalVariable(name: "Amo", scope: !3481, file: !71, line: 242, type: !6)
!3522 = !DILocation(line: 272, column: 11, scope: !3481)
!3523 = !DILocalVariable(name: "Amu", scope: !3481, file: !71, line: 242, type: !6)
!3524 = !DILocation(line: 273, column: 11, scope: !3481)
!3525 = !DILocalVariable(name: "Asa", scope: !3481, file: !71, line: 243, type: !6)
!3526 = !DILocation(line: 274, column: 11, scope: !3481)
!3527 = !DILocalVariable(name: "Ase", scope: !3481, file: !71, line: 243, type: !6)
!3528 = !DILocation(line: 275, column: 11, scope: !3481)
!3529 = !DILocalVariable(name: "Asi", scope: !3481, file: !71, line: 243, type: !6)
!3530 = !DILocation(line: 276, column: 11, scope: !3481)
!3531 = !DILocalVariable(name: "Aso", scope: !3481, file: !71, line: 243, type: !6)
!3532 = !DILocation(line: 277, column: 11, scope: !3481)
!3533 = !DILocalVariable(name: "Asu", scope: !3481, file: !71, line: 243, type: !6)
!3534 = !DILocalVariable(name: "round", scope: !3481, file: !71, line: 237, type: !45)
!3535 = !DILocation(line: 279, column: 10, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3481, file: !71, line: 279, column: 5)
!3537 = !DILocation(line: 279, scope: !3536)
!3538 = !DILocation(line: 279, column: 27, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3536, file: !71, line: 279, column: 5)
!3540 = !DILocation(line: 279, column: 5, scope: !3536)
!3541 = !DILocalVariable(name: "BCa", scope: !3481, file: !71, line: 244, type: !6)
!3542 = !DILocalVariable(name: "BCe", scope: !3481, file: !71, line: 244, type: !6)
!3543 = !DILocalVariable(name: "BCi", scope: !3481, file: !71, line: 244, type: !6)
!3544 = !DILocalVariable(name: "BCo", scope: !3481, file: !71, line: 244, type: !6)
!3545 = !DILocalVariable(name: "BCu", scope: !3481, file: !71, line: 244, type: !6)
!3546 = !DILocalVariable(name: "Da", scope: !3481, file: !71, line: 245, type: !6)
!3547 = !DILocalVariable(name: "De", scope: !3481, file: !71, line: 245, type: !6)
!3548 = !DILocalVariable(name: "Di", scope: !3481, file: !71, line: 245, type: !6)
!3549 = !DILocalVariable(name: "Do", scope: !3481, file: !71, line: 245, type: !6)
!3550 = !DILocalVariable(name: "Du", scope: !3481, file: !71, line: 245, type: !6)
!3551 = !DILocalVariable(name: "Eba", scope: !3481, file: !71, line: 246, type: !6)
!3552 = !DILocalVariable(name: "Ebe", scope: !3481, file: !71, line: 246, type: !6)
!3553 = !DILocalVariable(name: "Ebi", scope: !3481, file: !71, line: 246, type: !6)
!3554 = !DILocalVariable(name: "Ebo", scope: !3481, file: !71, line: 246, type: !6)
!3555 = !DILocalVariable(name: "Ebu", scope: !3481, file: !71, line: 246, type: !6)
!3556 = !DILocalVariable(name: "Ega", scope: !3481, file: !71, line: 247, type: !6)
!3557 = !DILocalVariable(name: "Ege", scope: !3481, file: !71, line: 247, type: !6)
!3558 = !DILocalVariable(name: "Egi", scope: !3481, file: !71, line: 247, type: !6)
!3559 = !DILocalVariable(name: "Ego", scope: !3481, file: !71, line: 247, type: !6)
!3560 = !DILocalVariable(name: "Egu", scope: !3481, file: !71, line: 247, type: !6)
!3561 = !DILocalVariable(name: "Eka", scope: !3481, file: !71, line: 248, type: !6)
!3562 = !DILocalVariable(name: "Eke", scope: !3481, file: !71, line: 248, type: !6)
!3563 = !DILocalVariable(name: "Eki", scope: !3481, file: !71, line: 248, type: !6)
!3564 = !DILocalVariable(name: "Eko", scope: !3481, file: !71, line: 248, type: !6)
!3565 = !DILocalVariable(name: "Eku", scope: !3481, file: !71, line: 248, type: !6)
!3566 = !DILocalVariable(name: "Ema", scope: !3481, file: !71, line: 249, type: !6)
!3567 = !DILocalVariable(name: "Eme", scope: !3481, file: !71, line: 249, type: !6)
!3568 = !DILocalVariable(name: "Emi", scope: !3481, file: !71, line: 249, type: !6)
!3569 = !DILocalVariable(name: "Emo", scope: !3481, file: !71, line: 249, type: !6)
!3570 = !DILocalVariable(name: "Emu", scope: !3481, file: !71, line: 249, type: !6)
!3571 = !DILocalVariable(name: "Esa", scope: !3481, file: !71, line: 250, type: !6)
!3572 = !DILocalVariable(name: "Ese", scope: !3481, file: !71, line: 250, type: !6)
!3573 = !DILocalVariable(name: "Esi", scope: !3481, file: !71, line: 250, type: !6)
!3574 = !DILocalVariable(name: "Eso", scope: !3481, file: !71, line: 250, type: !6)
!3575 = !DILocalVariable(name: "Esu", scope: !3481, file: !71, line: 250, type: !6)
!3576 = !DILocation(line: 283, column: 19, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3539, file: !71, line: 279, column: 50)
!3578 = !DILocation(line: 283, column: 25, scope: !3577)
!3579 = !DILocation(line: 283, column: 31, scope: !3577)
!3580 = !DILocation(line: 283, column: 37, scope: !3577)
!3581 = !DILocation(line: 285, column: 19, scope: !3577)
!3582 = !DILocation(line: 285, column: 25, scope: !3577)
!3583 = !DILocation(line: 285, column: 31, scope: !3577)
!3584 = !DILocation(line: 285, column: 37, scope: !3577)
!3585 = !DILocation(line: 291, column: 20, scope: !3577)
!3586 = !DILocation(line: 291, column: 18, scope: !3577)
!3587 = !DILocation(line: 361, column: 13, scope: !3577)
!3588 = !DILocation(line: 362, column: 15, scope: !3577)
!3589 = !DILocation(line: 282, column: 19, scope: !3577)
!3590 = !DILocation(line: 282, column: 25, scope: !3577)
!3591 = !DILocation(line: 282, column: 31, scope: !3577)
!3592 = !DILocation(line: 282, column: 37, scope: !3577)
!3593 = !DILocation(line: 288, column: 20, scope: !3577)
!3594 = !DILocation(line: 288, column: 18, scope: !3577)
!3595 = !DILocation(line: 365, column: 13, scope: !3577)
!3596 = !DILocation(line: 366, column: 15, scope: !3577)
!3597 = !DILocation(line: 284, column: 19, scope: !3577)
!3598 = !DILocation(line: 284, column: 25, scope: !3577)
!3599 = !DILocation(line: 284, column: 31, scope: !3577)
!3600 = !DILocation(line: 284, column: 37, scope: !3577)
!3601 = !DILocation(line: 281, column: 19, scope: !3577)
!3602 = !DILocation(line: 281, column: 25, scope: !3577)
!3603 = !DILocation(line: 281, column: 31, scope: !3577)
!3604 = !DILocation(line: 281, column: 37, scope: !3577)
!3605 = !DILocation(line: 292, column: 20, scope: !3577)
!3606 = !DILocation(line: 292, column: 18, scope: !3577)
!3607 = !DILocation(line: 363, column: 13, scope: !3577)
!3608 = !DILocation(line: 364, column: 15, scope: !3577)
!3609 = !DILocation(line: 370, column: 23, scope: !3577)
!3610 = !DILocation(line: 370, column: 29, scope: !3577)
!3611 = !DILocation(line: 370, column: 19, scope: !3577)
!3612 = !DILocation(line: 290, column: 20, scope: !3577)
!3613 = !DILocation(line: 290, column: 18, scope: !3577)
!3614 = !DILocation(line: 298, column: 13, scope: !3577)
!3615 = !DILocation(line: 299, column: 15, scope: !3577)
!3616 = !DILocation(line: 289, column: 20, scope: !3577)
!3617 = !DILocation(line: 289, column: 18, scope: !3577)
!3618 = !DILocation(line: 296, column: 13, scope: !3577)
!3619 = !DILocation(line: 297, column: 15, scope: !3577)
!3620 = !DILocation(line: 304, column: 23, scope: !3577)
!3621 = !DILocation(line: 304, column: 29, scope: !3577)
!3622 = !DILocation(line: 305, column: 16, scope: !3577)
!3623 = !DILocation(line: 305, column: 13, scope: !3577)
!3624 = !DILocation(line: 294, column: 13, scope: !3577)
!3625 = !DILocation(line: 311, column: 13, scope: !3577)
!3626 = !DILocation(line: 312, column: 15, scope: !3577)
!3627 = !DILocation(line: 315, column: 13, scope: !3577)
!3628 = !DILocation(line: 316, column: 15, scope: !3577)
!3629 = !DILocation(line: 313, column: 13, scope: !3577)
!3630 = !DILocation(line: 314, column: 15, scope: !3577)
!3631 = !DILocation(line: 321, column: 23, scope: !3577)
!3632 = !DILocation(line: 321, column: 29, scope: !3577)
!3633 = !DILocation(line: 321, column: 19, scope: !3577)
!3634 = !DILocation(line: 376, column: 19, scope: !3577)
!3635 = !DILocation(line: 327, column: 13, scope: !3577)
!3636 = !DILocation(line: 328, column: 15, scope: !3577)
!3637 = !DILocation(line: 331, column: 13, scope: !3577)
!3638 = !DILocation(line: 332, column: 15, scope: !3577)
!3639 = !DILocation(line: 329, column: 13, scope: !3577)
!3640 = !DILocation(line: 330, column: 15, scope: !3577)
!3641 = !DILocation(line: 337, column: 23, scope: !3577)
!3642 = !DILocation(line: 337, column: 29, scope: !3577)
!3643 = !DILocation(line: 337, column: 19, scope: !3577)
!3644 = !DILocation(line: 376, column: 25, scope: !3577)
!3645 = !DILocation(line: 343, column: 13, scope: !3577)
!3646 = !DILocation(line: 344, column: 15, scope: !3577)
!3647 = !DILocation(line: 347, column: 13, scope: !3577)
!3648 = !DILocation(line: 348, column: 15, scope: !3577)
!3649 = !DILocation(line: 345, column: 13, scope: !3577)
!3650 = !DILocation(line: 346, column: 15, scope: !3577)
!3651 = !DILocation(line: 353, column: 23, scope: !3577)
!3652 = !DILocation(line: 353, column: 29, scope: !3577)
!3653 = !DILocation(line: 353, column: 19, scope: !3577)
!3654 = !DILocation(line: 376, column: 31, scope: !3577)
!3655 = !DILocation(line: 359, column: 13, scope: !3577)
!3656 = !DILocation(line: 360, column: 15, scope: !3577)
!3657 = !DILocation(line: 369, column: 23, scope: !3577)
!3658 = !DILocation(line: 369, column: 29, scope: !3577)
!3659 = !DILocation(line: 369, column: 19, scope: !3577)
!3660 = !DILocation(line: 376, column: 37, scope: !3577)
!3661 = !DILocation(line: 302, column: 13, scope: !3577)
!3662 = !DILocation(line: 303, column: 15, scope: !3577)
!3663 = !DILocation(line: 300, column: 13, scope: !3577)
!3664 = !DILocation(line: 301, column: 15, scope: !3577)
!3665 = !DILocation(line: 307, column: 23, scope: !3577)
!3666 = !DILocation(line: 307, column: 29, scope: !3577)
!3667 = !DILocation(line: 307, column: 19, scope: !3577)
!3668 = !DILocation(line: 319, column: 13, scope: !3577)
!3669 = !DILocation(line: 320, column: 15, scope: !3577)
!3670 = !DILocation(line: 317, column: 13, scope: !3577)
!3671 = !DILocation(line: 318, column: 15, scope: !3577)
!3672 = !DILocation(line: 323, column: 23, scope: !3577)
!3673 = !DILocation(line: 323, column: 29, scope: !3577)
!3674 = !DILocation(line: 323, column: 19, scope: !3577)
!3675 = !DILocation(line: 378, column: 19, scope: !3577)
!3676 = !DILocation(line: 335, column: 13, scope: !3577)
!3677 = !DILocation(line: 336, column: 15, scope: !3577)
!3678 = !DILocation(line: 333, column: 13, scope: !3577)
!3679 = !DILocation(line: 334, column: 15, scope: !3577)
!3680 = !DILocation(line: 339, column: 23, scope: !3577)
!3681 = !DILocation(line: 339, column: 29, scope: !3577)
!3682 = !DILocation(line: 339, column: 19, scope: !3577)
!3683 = !DILocation(line: 378, column: 25, scope: !3577)
!3684 = !DILocation(line: 351, column: 13, scope: !3577)
!3685 = !DILocation(line: 352, column: 15, scope: !3577)
!3686 = !DILocation(line: 349, column: 13, scope: !3577)
!3687 = !DILocation(line: 350, column: 15, scope: !3577)
!3688 = !DILocation(line: 355, column: 23, scope: !3577)
!3689 = !DILocation(line: 355, column: 29, scope: !3577)
!3690 = !DILocation(line: 355, column: 19, scope: !3577)
!3691 = !DILocation(line: 378, column: 31, scope: !3577)
!3692 = !DILocation(line: 367, column: 13, scope: !3577)
!3693 = !DILocation(line: 368, column: 15, scope: !3577)
!3694 = !DILocation(line: 371, column: 23, scope: !3577)
!3695 = !DILocation(line: 371, column: 29, scope: !3577)
!3696 = !DILocation(line: 371, column: 19, scope: !3577)
!3697 = !DILocation(line: 378, column: 37, scope: !3577)
!3698 = !DILocation(line: 384, column: 20, scope: !3577)
!3699 = !DILocation(line: 384, column: 18, scope: !3577)
!3700 = !DILocation(line: 462, column: 13, scope: !3577)
!3701 = !DILocation(line: 463, column: 15, scope: !3577)
!3702 = !DILocation(line: 324, column: 23, scope: !3577)
!3703 = !DILocation(line: 324, column: 29, scope: !3577)
!3704 = !DILocation(line: 324, column: 19, scope: !3577)
!3705 = !DILocation(line: 309, column: 23, scope: !3577)
!3706 = !DILocation(line: 309, column: 29, scope: !3577)
!3707 = !DILocation(line: 309, column: 19, scope: !3577)
!3708 = !DILocation(line: 325, column: 23, scope: !3577)
!3709 = !DILocation(line: 325, column: 29, scope: !3577)
!3710 = !DILocation(line: 325, column: 19, scope: !3577)
!3711 = !DILocation(line: 380, column: 19, scope: !3577)
!3712 = !DILocation(line: 341, column: 23, scope: !3577)
!3713 = !DILocation(line: 341, column: 29, scope: !3577)
!3714 = !DILocation(line: 341, column: 19, scope: !3577)
!3715 = !DILocation(line: 380, column: 25, scope: !3577)
!3716 = !DILocation(line: 357, column: 23, scope: !3577)
!3717 = !DILocation(line: 357, column: 29, scope: !3577)
!3718 = !DILocation(line: 357, column: 19, scope: !3577)
!3719 = !DILocation(line: 380, column: 31, scope: !3577)
!3720 = !DILocation(line: 373, column: 23, scope: !3577)
!3721 = !DILocation(line: 373, column: 29, scope: !3577)
!3722 = !DILocation(line: 373, column: 19, scope: !3577)
!3723 = !DILocation(line: 380, column: 37, scope: !3577)
!3724 = !DILocation(line: 386, column: 20, scope: !3577)
!3725 = !DILocation(line: 386, column: 18, scope: !3577)
!3726 = !DILocation(line: 456, column: 13, scope: !3577)
!3727 = !DILocation(line: 457, column: 15, scope: !3577)
!3728 = !DILocation(line: 306, column: 23, scope: !3577)
!3729 = !DILocation(line: 306, column: 29, scope: !3577)
!3730 = !DILocation(line: 306, column: 19, scope: !3577)
!3731 = !DILocation(line: 322, column: 23, scope: !3577)
!3732 = !DILocation(line: 322, column: 29, scope: !3577)
!3733 = !DILocation(line: 322, column: 19, scope: !3577)
!3734 = !DILocation(line: 377, column: 19, scope: !3577)
!3735 = !DILocation(line: 338, column: 23, scope: !3577)
!3736 = !DILocation(line: 338, column: 29, scope: !3577)
!3737 = !DILocation(line: 338, column: 19, scope: !3577)
!3738 = !DILocation(line: 377, column: 25, scope: !3577)
!3739 = !DILocation(line: 354, column: 23, scope: !3577)
!3740 = !DILocation(line: 354, column: 29, scope: !3577)
!3741 = !DILocation(line: 354, column: 19, scope: !3577)
!3742 = !DILocation(line: 377, column: 31, scope: !3577)
!3743 = !DILocation(line: 377, column: 37, scope: !3577)
!3744 = !DILocation(line: 308, column: 23, scope: !3577)
!3745 = !DILocation(line: 308, column: 29, scope: !3577)
!3746 = !DILocation(line: 308, column: 19, scope: !3577)
!3747 = !DILocation(line: 379, column: 19, scope: !3577)
!3748 = !DILocation(line: 340, column: 23, scope: !3577)
!3749 = !DILocation(line: 340, column: 29, scope: !3577)
!3750 = !DILocation(line: 340, column: 19, scope: !3577)
!3751 = !DILocation(line: 379, column: 25, scope: !3577)
!3752 = !DILocation(line: 356, column: 23, scope: !3577)
!3753 = !DILocation(line: 356, column: 29, scope: !3577)
!3754 = !DILocation(line: 356, column: 19, scope: !3577)
!3755 = !DILocation(line: 379, column: 31, scope: !3577)
!3756 = !DILocation(line: 372, column: 23, scope: !3577)
!3757 = !DILocation(line: 372, column: 29, scope: !3577)
!3758 = !DILocation(line: 372, column: 19, scope: !3577)
!3759 = !DILocation(line: 379, column: 37, scope: !3577)
!3760 = !DILocation(line: 385, column: 20, scope: !3577)
!3761 = !DILocation(line: 385, column: 18, scope: !3577)
!3762 = !DILocation(line: 454, column: 13, scope: !3577)
!3763 = !DILocation(line: 455, column: 15, scope: !3577)
!3764 = !DILocation(line: 468, column: 23, scope: !3577)
!3765 = !DILocation(line: 468, column: 29, scope: !3577)
!3766 = !DILocation(line: 468, column: 19, scope: !3577)
!3767 = !DILocation(line: 383, column: 20, scope: !3577)
!3768 = !DILocation(line: 383, column: 18, scope: !3577)
!3769 = !DILocation(line: 460, column: 13, scope: !3577)
!3770 = !DILocation(line: 461, column: 15, scope: !3577)
!3771 = !DILocation(line: 467, column: 23, scope: !3577)
!3772 = !DILocation(line: 467, column: 29, scope: !3577)
!3773 = !DILocation(line: 467, column: 19, scope: !3577)
!3774 = !DILocation(line: 387, column: 20, scope: !3577)
!3775 = !DILocation(line: 387, column: 18, scope: !3577)
!3776 = !DILocation(line: 458, column: 13, scope: !3577)
!3777 = !DILocation(line: 459, column: 15, scope: !3577)
!3778 = !DILocation(line: 466, column: 23, scope: !3577)
!3779 = !DILocation(line: 466, column: 29, scope: !3577)
!3780 = !DILocation(line: 466, column: 19, scope: !3577)
!3781 = !DILocation(line: 465, column: 23, scope: !3577)
!3782 = !DILocation(line: 465, column: 29, scope: !3577)
!3783 = !DILocation(line: 465, column: 19, scope: !3577)
!3784 = !DILocation(line: 464, column: 23, scope: !3577)
!3785 = !DILocation(line: 464, column: 29, scope: !3577)
!3786 = !DILocation(line: 464, column: 19, scope: !3577)
!3787 = !DILocation(line: 446, column: 13, scope: !3577)
!3788 = !DILocation(line: 447, column: 15, scope: !3577)
!3789 = !DILocation(line: 440, column: 13, scope: !3577)
!3790 = !DILocation(line: 441, column: 15, scope: !3577)
!3791 = !DILocation(line: 438, column: 13, scope: !3577)
!3792 = !DILocation(line: 439, column: 15, scope: !3577)
!3793 = !DILocation(line: 452, column: 23, scope: !3577)
!3794 = !DILocation(line: 452, column: 29, scope: !3577)
!3795 = !DILocation(line: 452, column: 19, scope: !3577)
!3796 = !DILocation(line: 444, column: 13, scope: !3577)
!3797 = !DILocation(line: 445, column: 15, scope: !3577)
!3798 = !DILocation(line: 451, column: 23, scope: !3577)
!3799 = !DILocation(line: 451, column: 29, scope: !3577)
!3800 = !DILocation(line: 451, column: 19, scope: !3577)
!3801 = !DILocation(line: 442, column: 13, scope: !3577)
!3802 = !DILocation(line: 443, column: 15, scope: !3577)
!3803 = !DILocation(line: 450, column: 23, scope: !3577)
!3804 = !DILocation(line: 450, column: 29, scope: !3577)
!3805 = !DILocation(line: 450, column: 19, scope: !3577)
!3806 = !DILocation(line: 449, column: 23, scope: !3577)
!3807 = !DILocation(line: 449, column: 29, scope: !3577)
!3808 = !DILocation(line: 449, column: 19, scope: !3577)
!3809 = !DILocation(line: 448, column: 23, scope: !3577)
!3810 = !DILocation(line: 448, column: 29, scope: !3577)
!3811 = !DILocation(line: 448, column: 19, scope: !3577)
!3812 = !DILocation(line: 430, column: 13, scope: !3577)
!3813 = !DILocation(line: 431, column: 15, scope: !3577)
!3814 = !DILocation(line: 424, column: 13, scope: !3577)
!3815 = !DILocation(line: 425, column: 15, scope: !3577)
!3816 = !DILocation(line: 422, column: 13, scope: !3577)
!3817 = !DILocation(line: 423, column: 15, scope: !3577)
!3818 = !DILocation(line: 436, column: 23, scope: !3577)
!3819 = !DILocation(line: 436, column: 29, scope: !3577)
!3820 = !DILocation(line: 436, column: 19, scope: !3577)
!3821 = !DILocation(line: 428, column: 13, scope: !3577)
!3822 = !DILocation(line: 429, column: 15, scope: !3577)
!3823 = !DILocation(line: 435, column: 23, scope: !3577)
!3824 = !DILocation(line: 435, column: 29, scope: !3577)
!3825 = !DILocation(line: 435, column: 19, scope: !3577)
!3826 = !DILocation(line: 426, column: 13, scope: !3577)
!3827 = !DILocation(line: 427, column: 15, scope: !3577)
!3828 = !DILocation(line: 434, column: 23, scope: !3577)
!3829 = !DILocation(line: 434, column: 29, scope: !3577)
!3830 = !DILocation(line: 434, column: 19, scope: !3577)
!3831 = !DILocation(line: 433, column: 23, scope: !3577)
!3832 = !DILocation(line: 433, column: 29, scope: !3577)
!3833 = !DILocation(line: 433, column: 19, scope: !3577)
!3834 = !DILocation(line: 432, column: 23, scope: !3577)
!3835 = !DILocation(line: 432, column: 29, scope: !3577)
!3836 = !DILocation(line: 432, column: 19, scope: !3577)
!3837 = !DILocation(line: 414, column: 13, scope: !3577)
!3838 = !DILocation(line: 415, column: 15, scope: !3577)
!3839 = !DILocation(line: 408, column: 13, scope: !3577)
!3840 = !DILocation(line: 409, column: 15, scope: !3577)
!3841 = !DILocation(line: 406, column: 13, scope: !3577)
!3842 = !DILocation(line: 407, column: 15, scope: !3577)
!3843 = !DILocation(line: 420, column: 23, scope: !3577)
!3844 = !DILocation(line: 420, column: 29, scope: !3577)
!3845 = !DILocation(line: 420, column: 19, scope: !3577)
!3846 = !DILocation(line: 412, column: 13, scope: !3577)
!3847 = !DILocation(line: 413, column: 15, scope: !3577)
!3848 = !DILocation(line: 419, column: 23, scope: !3577)
!3849 = !DILocation(line: 419, column: 29, scope: !3577)
!3850 = !DILocation(line: 419, column: 19, scope: !3577)
!3851 = !DILocation(line: 410, column: 13, scope: !3577)
!3852 = !DILocation(line: 411, column: 15, scope: !3577)
!3853 = !DILocation(line: 418, column: 23, scope: !3577)
!3854 = !DILocation(line: 418, column: 29, scope: !3577)
!3855 = !DILocation(line: 418, column: 19, scope: !3577)
!3856 = !DILocation(line: 417, column: 23, scope: !3577)
!3857 = !DILocation(line: 417, column: 29, scope: !3577)
!3858 = !DILocation(line: 417, column: 19, scope: !3577)
!3859 = !DILocation(line: 416, column: 23, scope: !3577)
!3860 = !DILocation(line: 416, column: 29, scope: !3577)
!3861 = !DILocation(line: 416, column: 19, scope: !3577)
!3862 = !DILocation(line: 397, column: 13, scope: !3577)
!3863 = !DILocation(line: 398, column: 15, scope: !3577)
!3864 = !DILocation(line: 391, column: 13, scope: !3577)
!3865 = !DILocation(line: 392, column: 15, scope: !3577)
!3866 = !DILocation(line: 389, column: 13, scope: !3577)
!3867 = !DILocation(line: 404, column: 23, scope: !3577)
!3868 = !DILocation(line: 404, column: 29, scope: !3577)
!3869 = !DILocation(line: 404, column: 19, scope: !3577)
!3870 = !DILocation(line: 395, column: 13, scope: !3577)
!3871 = !DILocation(line: 396, column: 15, scope: !3577)
!3872 = !DILocation(line: 403, column: 23, scope: !3577)
!3873 = !DILocation(line: 403, column: 29, scope: !3577)
!3874 = !DILocation(line: 403, column: 19, scope: !3577)
!3875 = !DILocation(line: 393, column: 13, scope: !3577)
!3876 = !DILocation(line: 394, column: 15, scope: !3577)
!3877 = !DILocation(line: 402, column: 23, scope: !3577)
!3878 = !DILocation(line: 402, column: 29, scope: !3577)
!3879 = !DILocation(line: 402, column: 19, scope: !3577)
!3880 = !DILocation(line: 401, column: 23, scope: !3577)
!3881 = !DILocation(line: 401, column: 29, scope: !3577)
!3882 = !DILocation(line: 401, column: 19, scope: !3577)
!3883 = !DILocation(line: 400, column: 45, scope: !3577)
!3884 = !DILocation(line: 400, column: 16, scope: !3577)
!3885 = !DILocation(line: 399, column: 23, scope: !3577)
!3886 = !DILocation(line: 399, column: 29, scope: !3577)
!3887 = !DILocation(line: 400, column: 13, scope: !3577)
!3888 = !DILocation(line: 279, column: 44, scope: !3539)
!3889 = !DILocation(line: 279, column: 5, scope: !3539)
!3890 = distinct !{!3890, !3540, !3891, !244}
!3891 = !DILocation(line: 469, column: 5, scope: !3536)
!3892 = !DILocation(line: 472, column: 14, scope: !3481)
!3893 = !DILocation(line: 473, column: 5, scope: !3481)
!3894 = !DILocation(line: 473, column: 14, scope: !3481)
!3895 = !DILocation(line: 474, column: 5, scope: !3481)
!3896 = !DILocation(line: 474, column: 14, scope: !3481)
!3897 = !DILocation(line: 475, column: 5, scope: !3481)
!3898 = !DILocation(line: 475, column: 14, scope: !3481)
!3899 = !DILocation(line: 476, column: 5, scope: !3481)
!3900 = !DILocation(line: 476, column: 14, scope: !3481)
!3901 = !DILocation(line: 477, column: 5, scope: !3481)
!3902 = !DILocation(line: 477, column: 14, scope: !3481)
!3903 = !DILocation(line: 478, column: 5, scope: !3481)
!3904 = !DILocation(line: 478, column: 14, scope: !3481)
!3905 = !DILocation(line: 479, column: 5, scope: !3481)
!3906 = !DILocation(line: 479, column: 14, scope: !3481)
!3907 = !DILocation(line: 480, column: 5, scope: !3481)
!3908 = !DILocation(line: 480, column: 14, scope: !3481)
!3909 = !DILocation(line: 481, column: 5, scope: !3481)
!3910 = !DILocation(line: 481, column: 14, scope: !3481)
!3911 = !DILocation(line: 482, column: 5, scope: !3481)
!3912 = !DILocation(line: 482, column: 15, scope: !3481)
!3913 = !DILocation(line: 483, column: 5, scope: !3481)
!3914 = !DILocation(line: 483, column: 15, scope: !3481)
!3915 = !DILocation(line: 484, column: 5, scope: !3481)
!3916 = !DILocation(line: 484, column: 15, scope: !3481)
!3917 = !DILocation(line: 485, column: 5, scope: !3481)
!3918 = !DILocation(line: 485, column: 15, scope: !3481)
!3919 = !DILocation(line: 486, column: 5, scope: !3481)
!3920 = !DILocation(line: 486, column: 15, scope: !3481)
!3921 = !DILocation(line: 487, column: 5, scope: !3481)
!3922 = !DILocation(line: 487, column: 15, scope: !3481)
!3923 = !DILocation(line: 488, column: 5, scope: !3481)
!3924 = !DILocation(line: 488, column: 15, scope: !3481)
!3925 = !DILocation(line: 489, column: 5, scope: !3481)
!3926 = !DILocation(line: 489, column: 15, scope: !3481)
!3927 = !DILocation(line: 490, column: 5, scope: !3481)
!3928 = !DILocation(line: 490, column: 15, scope: !3481)
!3929 = !DILocation(line: 491, column: 5, scope: !3481)
!3930 = !DILocation(line: 491, column: 15, scope: !3481)
!3931 = !DILocation(line: 492, column: 5, scope: !3481)
!3932 = !DILocation(line: 492, column: 15, scope: !3481)
!3933 = !DILocation(line: 493, column: 5, scope: !3481)
!3934 = !DILocation(line: 493, column: 15, scope: !3481)
!3935 = !DILocation(line: 494, column: 5, scope: !3481)
!3936 = !DILocation(line: 494, column: 15, scope: !3481)
!3937 = !DILocation(line: 495, column: 5, scope: !3481)
!3938 = !DILocation(line: 495, column: 15, scope: !3481)
!3939 = !DILocation(line: 496, column: 5, scope: !3481)
!3940 = !DILocation(line: 496, column: 15, scope: !3481)
!3941 = !DILocation(line: 497, column: 1, scope: !3481)
!3942 = distinct !DISubprogram(name: "shake128_inc_finalize", scope: !71, file: !71, line: 700, type: !3354, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3943 = !DILocalVariable(name: "state", arg: 1, scope: !3942, file: !71, line: 700, type: !3356)
!3944 = !DILocation(line: 0, scope: !3942)
!3945 = !DILocation(line: 701, column: 32, scope: !3942)
!3946 = !DILocation(line: 701, column: 5, scope: !3942)
!3947 = !DILocation(line: 702, column: 1, scope: !3942)
!3948 = distinct !DISubprogram(name: "keccak_inc_finalize", scope: !71, file: !71, line: 640, type: !3949, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{null, !5, !19, !12}
!3951 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3948, file: !71, line: 640, type: !5)
!3952 = !DILocation(line: 0, scope: !3948)
!3953 = !DILocalVariable(name: "r", arg: 2, scope: !3948, file: !71, line: 640, type: !19)
!3954 = !DILocalVariable(name: "p", arg: 3, scope: !3948, file: !71, line: 640, type: !12)
!3955 = !DILocation(line: 643, column: 30, scope: !3948)
!3956 = !DILocation(line: 643, column: 51, scope: !3948)
!3957 = !DILocation(line: 643, column: 48, scope: !3948)
!3958 = !DILocation(line: 643, column: 42, scope: !3948)
!3959 = !DILocation(line: 643, column: 21, scope: !3948)
!3960 = !DILocation(line: 643, column: 5, scope: !3948)
!3961 = !DILocation(line: 643, column: 27, scope: !3948)
!3962 = !DILocation(line: 644, column: 48, scope: !3948)
!3963 = !DILocation(line: 644, column: 42, scope: !3948)
!3964 = !DILocation(line: 644, column: 14, scope: !3948)
!3965 = !DILocation(line: 644, column: 19, scope: !3948)
!3966 = !DILocation(line: 644, column: 5, scope: !3948)
!3967 = !DILocation(line: 644, column: 25, scope: !3948)
!3968 = !DILocation(line: 645, column: 5, scope: !3948)
!3969 = !DILocation(line: 645, column: 15, scope: !3948)
!3970 = !DILocation(line: 646, column: 1, scope: !3948)
!3971 = distinct !DISubprogram(name: "shake128_inc_squeeze", scope: !71, file: !71, line: 704, type: !3972, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{null, !11, !15, !3356}
!3974 = !DILocalVariable(name: "output", arg: 1, scope: !3971, file: !71, line: 704, type: !11)
!3975 = !DILocation(line: 0, scope: !3971)
!3976 = !DILocalVariable(name: "outlen", arg: 2, scope: !3971, file: !71, line: 704, type: !15)
!3977 = !DILocalVariable(name: "state", arg: 3, scope: !3971, file: !71, line: 704, type: !3356)
!3978 = !DILocation(line: 705, column: 47, scope: !3971)
!3979 = !DILocation(line: 705, column: 5, scope: !3971)
!3980 = !DILocation(line: 706, column: 1, scope: !3971)
!3981 = distinct !DISubprogram(name: "keccak_inc_squeeze", scope: !71, file: !71, line: 661, type: !3982, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{null, !11, !15, !5, !19}
!3984 = !DILocalVariable(name: "h", arg: 1, scope: !3981, file: !71, line: 661, type: !11)
!3985 = !DILocation(line: 0, scope: !3981)
!3986 = !DILocalVariable(name: "outlen", arg: 2, scope: !3981, file: !71, line: 661, type: !15)
!3987 = !DILocalVariable(name: "s_inc", arg: 3, scope: !3981, file: !71, line: 662, type: !5)
!3988 = !DILocalVariable(name: "r", arg: 4, scope: !3981, file: !71, line: 662, type: !19)
!3989 = !DILocalVariable(name: "i", scope: !3981, file: !71, line: 663, type: !15)
!3990 = !DILocation(line: 666, column: 10, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3981, file: !71, line: 666, column: 5)
!3992 = !DILocation(line: 666, scope: !3991)
!3993 = !DILocation(line: 666, column: 19, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3991, file: !71, line: 666, column: 5)
!3995 = !DILocation(line: 666, column: 28, scope: !3994)
!3996 = !DILocation(line: 666, column: 31, scope: !3994)
!3997 = !DILocation(line: 666, column: 35, scope: !3994)
!3998 = !DILocation(line: 666, column: 33, scope: !3994)
!3999 = !DILocation(line: 666, column: 5, scope: !3991)
!4000 = !DILocation(line: 669, column: 33, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3994, file: !71, line: 666, column: 51)
!4002 = !DILocation(line: 669, column: 37, scope: !4001)
!4003 = !DILocation(line: 669, column: 35, scope: !4001)
!4004 = !DILocation(line: 669, column: 49, scope: !4001)
!4005 = !DILocation(line: 669, column: 47, scope: !4001)
!4006 = !DILocation(line: 669, column: 52, scope: !4001)
!4007 = !DILocation(line: 669, column: 26, scope: !4001)
!4008 = !DILocation(line: 669, column: 68, scope: !4001)
!4009 = !DILocation(line: 669, column: 72, scope: !4001)
!4010 = !DILocation(line: 669, column: 70, scope: !4001)
!4011 = !DILocation(line: 669, column: 84, scope: !4001)
!4012 = !DILocation(line: 669, column: 82, scope: !4001)
!4013 = !DILocation(line: 669, column: 64, scope: !4001)
!4014 = !DILocation(line: 669, column: 58, scope: !4001)
!4015 = !DILocation(line: 669, column: 16, scope: !4001)
!4016 = !DILocation(line: 669, column: 9, scope: !4001)
!4017 = !DILocation(line: 669, column: 14, scope: !4001)
!4018 = !DILocation(line: 666, column: 47, scope: !3994)
!4019 = !DILocation(line: 666, column: 5, scope: !3994)
!4020 = distinct !{!4020, !3999, !4021, !244}
!4021 = !DILocation(line: 670, column: 5, scope: !3991)
!4022 = !DILocation(line: 671, column: 7, scope: !3981)
!4023 = !DILocation(line: 672, column: 12, scope: !3981)
!4024 = !DILocation(line: 673, column: 18, scope: !3981)
!4025 = !DILocation(line: 673, column: 5, scope: !3981)
!4026 = !DILocation(line: 673, column: 15, scope: !3981)
!4027 = !DILocation(line: 676, column: 5, scope: !3981)
!4028 = !DILocation(line: 676, column: 19, scope: !3981)
!4029 = !DILocation(line: 677, column: 9, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !3981, file: !71, line: 676, column: 24)
!4031 = !DILocation(line: 679, column: 14, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4030, file: !71, line: 679, column: 9)
!4033 = !DILocation(line: 679, scope: !4032)
!4034 = !DILocation(line: 679, column: 32, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4032, file: !71, line: 679, column: 9)
!4036 = !DILocation(line: 679, column: 9, scope: !4032)
!4037 = !DILocation(line: 680, column: 38, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4035, file: !71, line: 679, column: 47)
!4039 = !DILocation(line: 680, column: 30, scope: !4038)
!4040 = !DILocation(line: 680, column: 50, scope: !4038)
!4041 = !DILocation(line: 680, column: 44, scope: !4038)
!4042 = !DILocation(line: 680, column: 20, scope: !4038)
!4043 = !DILocation(line: 680, column: 13, scope: !4038)
!4044 = !DILocation(line: 680, column: 18, scope: !4038)
!4045 = !DILocation(line: 679, column: 43, scope: !4035)
!4046 = !DILocation(line: 679, column: 9, scope: !4035)
!4047 = distinct !{!4047, !4036, !4048, !244}
!4048 = !DILocation(line: 681, column: 9, scope: !4032)
!4049 = !DILocation(line: 682, column: 11, scope: !4030)
!4050 = !DILocation(line: 683, column: 16, scope: !4030)
!4051 = !DILocation(line: 684, column: 23, scope: !4030)
!4052 = !DILocation(line: 684, column: 21, scope: !4030)
!4053 = !DILocation(line: 684, column: 9, scope: !4030)
!4054 = !DILocation(line: 684, column: 19, scope: !4030)
!4055 = distinct !{!4055, !4027, !4056, !244}
!4056 = !DILocation(line: 685, column: 5, scope: !3981)
!4057 = !DILocation(line: 686, column: 1, scope: !3981)
!4058 = distinct !DISubprogram(name: "shake128_inc_ctx_clone", scope: !71, file: !71, line: 708, type: !4059, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{null, !3356, !4061}
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 32)
!4062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3357)
!4063 = !DILocalVariable(name: "dest", arg: 1, scope: !4058, file: !71, line: 708, type: !3356)
!4064 = !DILocation(line: 0, scope: !4058)
!4065 = !DILocalVariable(name: "src", arg: 2, scope: !4058, file: !71, line: 708, type: !4061)
!4066 = !DILocation(line: 709, column: 17, scope: !4058)
!4067 = !DILocation(line: 709, column: 15, scope: !4058)
!4068 = !DILocation(line: 710, column: 19, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4058, file: !71, line: 710, column: 9)
!4070 = !DILocation(line: 711, column: 9, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4069, file: !71, line: 710, column: 28)
!4072 = !DILocation(line: 712, column: 5, scope: !4071)
!4073 = !DILocation(line: 713, column: 18, scope: !4058)
!4074 = !DILocation(line: 713, column: 28, scope: !4058)
!4075 = !DILocation(line: 713, column: 5, scope: !4058)
!4076 = !DILocation(line: 714, column: 1, scope: !4058)
!4077 = distinct !DISubprogram(name: "shake128_inc_ctx_release", scope: !71, file: !71, line: 716, type: !3354, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4078 = !DILocalVariable(name: "state", arg: 1, scope: !4077, file: !71, line: 716, type: !3356)
!4079 = !DILocation(line: 0, scope: !4077)
!4080 = !DILocation(line: 717, column: 17, scope: !4077)
!4081 = !DILocation(line: 717, column: 5, scope: !4077)
!4082 = !DILocation(line: 718, column: 1, scope: !4077)
!4083 = distinct !DISubprogram(name: "shake256_inc_init", scope: !71, file: !71, line: 720, type: !4084, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{null, !4086}
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 32)
!4087 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256incctx", file: !71, line: 41, baseType: !4088)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 39, size: 32, elements: !4089)
!4089 = !{!4090}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4088, file: !71, line: 40, baseType: !5, size: 32)
!4091 = !DILocalVariable(name: "state", arg: 1, scope: !4083, file: !71, line: 720, type: !4086)
!4092 = !DILocation(line: 0, scope: !4083)
!4093 = !DILocation(line: 721, column: 18, scope: !4083)
!4094 = !DILocation(line: 721, column: 16, scope: !4083)
!4095 = !DILocation(line: 722, column: 20, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4083, file: !71, line: 722, column: 9)
!4097 = !DILocation(line: 723, column: 9, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4096, file: !71, line: 722, column: 29)
!4099 = !DILocation(line: 724, column: 5, scope: !4098)
!4100 = !DILocation(line: 725, column: 28, scope: !4083)
!4101 = !DILocation(line: 725, column: 5, scope: !4083)
!4102 = !DILocation(line: 726, column: 1, scope: !4083)
!4103 = distinct !DISubprogram(name: "shake256_inc_absorb", scope: !71, file: !71, line: 728, type: !4104, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{null, !4086, !257, !15}
!4106 = !DILocalVariable(name: "state", arg: 1, scope: !4103, file: !71, line: 728, type: !4086)
!4107 = !DILocation(line: 0, scope: !4103)
!4108 = !DILocalVariable(name: "input", arg: 2, scope: !4103, file: !71, line: 728, type: !257)
!4109 = !DILocalVariable(name: "inlen", arg: 3, scope: !4103, file: !71, line: 728, type: !15)
!4110 = !DILocation(line: 729, column: 30, scope: !4103)
!4111 = !DILocation(line: 729, column: 5, scope: !4103)
!4112 = !DILocation(line: 730, column: 1, scope: !4103)
!4113 = distinct !DISubprogram(name: "shake256_inc_finalize", scope: !71, file: !71, line: 732, type: !4084, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4114 = !DILocalVariable(name: "state", arg: 1, scope: !4113, file: !71, line: 732, type: !4086)
!4115 = !DILocation(line: 0, scope: !4113)
!4116 = !DILocation(line: 733, column: 32, scope: !4113)
!4117 = !DILocation(line: 733, column: 5, scope: !4113)
!4118 = !DILocation(line: 734, column: 1, scope: !4113)
!4119 = distinct !DISubprogram(name: "shake256_inc_squeeze", scope: !71, file: !71, line: 736, type: !4120, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{null, !11, !15, !4086}
!4122 = !DILocalVariable(name: "output", arg: 1, scope: !4119, file: !71, line: 736, type: !11)
!4123 = !DILocation(line: 0, scope: !4119)
!4124 = !DILocalVariable(name: "outlen", arg: 2, scope: !4119, file: !71, line: 736, type: !15)
!4125 = !DILocalVariable(name: "state", arg: 3, scope: !4119, file: !71, line: 736, type: !4086)
!4126 = !DILocation(line: 737, column: 47, scope: !4119)
!4127 = !DILocation(line: 737, column: 5, scope: !4119)
!4128 = !DILocation(line: 738, column: 1, scope: !4119)
!4129 = distinct !DISubprogram(name: "shake256_inc_ctx_clone", scope: !71, file: !71, line: 740, type: !4130, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{null, !4086, !4132}
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 32)
!4133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4087)
!4134 = !DILocalVariable(name: "dest", arg: 1, scope: !4129, file: !71, line: 740, type: !4086)
!4135 = !DILocation(line: 0, scope: !4129)
!4136 = !DILocalVariable(name: "src", arg: 2, scope: !4129, file: !71, line: 740, type: !4132)
!4137 = !DILocation(line: 741, column: 17, scope: !4129)
!4138 = !DILocation(line: 741, column: 15, scope: !4129)
!4139 = !DILocation(line: 742, column: 19, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4129, file: !71, line: 742, column: 9)
!4141 = !DILocation(line: 743, column: 9, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4140, file: !71, line: 742, column: 28)
!4143 = !DILocation(line: 744, column: 5, scope: !4142)
!4144 = !DILocation(line: 745, column: 18, scope: !4129)
!4145 = !DILocation(line: 745, column: 28, scope: !4129)
!4146 = !DILocation(line: 745, column: 5, scope: !4129)
!4147 = !DILocation(line: 746, column: 1, scope: !4129)
!4148 = distinct !DISubprogram(name: "shake256_inc_ctx_release", scope: !71, file: !71, line: 748, type: !4084, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4149 = !DILocalVariable(name: "state", arg: 1, scope: !4148, file: !71, line: 748, type: !4086)
!4150 = !DILocation(line: 0, scope: !4148)
!4151 = !DILocation(line: 749, column: 17, scope: !4148)
!4152 = !DILocation(line: 749, column: 5, scope: !4148)
!4153 = !DILocation(line: 750, column: 1, scope: !4148)
!4154 = distinct !DISubprogram(name: "shake128_absorb", scope: !71, file: !71, line: 764, type: !4155, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{null, !4157, !257, !15}
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 32)
!4158 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128ctx", file: !71, line: 36, baseType: !4159)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 34, size: 32, elements: !4160)
!4160 = !{!4161}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4159, file: !71, line: 35, baseType: !5, size: 32)
!4162 = !DILocalVariable(name: "state", arg: 1, scope: !4154, file: !71, line: 764, type: !4157)
!4163 = !DILocation(line: 0, scope: !4154)
!4164 = !DILocalVariable(name: "input", arg: 2, scope: !4154, file: !71, line: 764, type: !257)
!4165 = !DILocalVariable(name: "inlen", arg: 3, scope: !4154, file: !71, line: 764, type: !15)
!4166 = !DILocation(line: 765, column: 18, scope: !4154)
!4167 = !DILocation(line: 765, column: 16, scope: !4154)
!4168 = !DILocation(line: 766, column: 20, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4154, file: !71, line: 766, column: 9)
!4170 = !DILocation(line: 767, column: 9, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4169, file: !71, line: 766, column: 29)
!4172 = !DILocation(line: 768, column: 5, scope: !4171)
!4173 = !DILocation(line: 769, column: 26, scope: !4154)
!4174 = !DILocation(line: 769, column: 5, scope: !4154)
!4175 = !DILocation(line: 770, column: 1, scope: !4154)
!4176 = distinct !DISubprogram(name: "keccak_absorb", scope: !71, file: !71, line: 512, type: !4177, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{null, !5, !19, !257, !15, !12}
!4179 = !DILocalVariable(name: "s", arg: 1, scope: !4176, file: !71, line: 512, type: !5)
!4180 = !DILocation(line: 0, scope: !4176)
!4181 = !DILocalVariable(name: "r", arg: 2, scope: !4176, file: !71, line: 512, type: !19)
!4182 = !DILocalVariable(name: "m", arg: 3, scope: !4176, file: !71, line: 512, type: !257)
!4183 = !DILocalVariable(name: "mlen", arg: 4, scope: !4176, file: !71, line: 513, type: !15)
!4184 = !DILocalVariable(name: "p", arg: 5, scope: !4176, file: !71, line: 513, type: !12)
!4185 = !DILocalVariable(name: "t", scope: !4176, file: !71, line: 515, type: !4186)
!4186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1600, elements: !4187)
!4187 = !{!4188}
!4188 = !DISubrange(count: 200)
!4189 = !DILocation(line: 515, column: 13, scope: !4176)
!4190 = !DILocalVariable(name: "i", scope: !4176, file: !71, line: 514, type: !15)
!4191 = !DILocation(line: 518, column: 10, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4176, file: !71, line: 518, column: 5)
!4193 = !DILocation(line: 518, scope: !4192)
!4194 = !DILocation(line: 518, column: 19, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4192, file: !71, line: 518, column: 5)
!4196 = !DILocation(line: 518, column: 5, scope: !4192)
!4197 = !DILocation(line: 522, column: 5, scope: !4176)
!4198 = !DILocation(line: 519, column: 9, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4195, file: !71, line: 518, column: 30)
!4200 = !DILocation(line: 519, column: 14, scope: !4199)
!4201 = !DILocation(line: 518, column: 25, scope: !4195)
!4202 = !DILocation(line: 518, column: 5, scope: !4195)
!4203 = distinct !{!4203, !4196, !4204, !244}
!4204 = !DILocation(line: 520, column: 5, scope: !4192)
!4205 = !DILocation(line: 522, column: 17, scope: !4176)
!4206 = !DILocation(line: 523, column: 9, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4208, file: !71, line: 523, column: 9)
!4208 = distinct !DILexicalBlock(scope: !4176, file: !71, line: 522, column: 23)
!4209 = !DILocation(line: 532, column: 5, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4176, file: !71, line: 532, column: 5)
!4211 = !DILocation(line: 523, scope: !4207)
!4212 = !DILocation(line: 523, column: 23, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4207, file: !71, line: 523, column: 9)
!4214 = !DILocation(line: 524, column: 34, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4213, file: !71, line: 523, column: 37)
!4216 = !DILocation(line: 524, column: 30, scope: !4215)
!4217 = !DILocation(line: 524, column: 21, scope: !4215)
!4218 = !DILocation(line: 524, column: 13, scope: !4215)
!4219 = !DILocation(line: 524, column: 18, scope: !4215)
!4220 = !DILocation(line: 523, column: 32, scope: !4213)
!4221 = !DILocation(line: 523, column: 9, scope: !4213)
!4222 = distinct !{!4222, !4206, !4223, !244}
!4223 = !DILocation(line: 525, column: 9, scope: !4207)
!4224 = !DILocation(line: 527, column: 9, scope: !4208)
!4225 = !DILocation(line: 528, column: 14, scope: !4208)
!4226 = !DILocation(line: 529, column: 11, scope: !4208)
!4227 = distinct !{!4227, !4197, !4228, !244}
!4228 = !DILocation(line: 530, column: 5, scope: !4176)
!4229 = !DILocation(line: 532, scope: !4210)
!4230 = !DILocation(line: 532, column: 19, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4210, file: !71, line: 532, column: 5)
!4232 = !DILocation(line: 535, column: 5, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4176, file: !71, line: 535, column: 5)
!4234 = !DILocation(line: 533, column: 9, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4231, file: !71, line: 532, column: 29)
!4236 = !DILocation(line: 533, column: 14, scope: !4235)
!4237 = !DILocation(line: 532, column: 24, scope: !4231)
!4238 = !DILocation(line: 532, column: 5, scope: !4231)
!4239 = distinct !{!4239, !4209, !4240, !244}
!4240 = !DILocation(line: 534, column: 5, scope: !4210)
!4241 = !DILocation(line: 535, scope: !4233)
!4242 = !DILocation(line: 535, column: 19, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4233, file: !71, line: 535, column: 5)
!4244 = !DILocation(line: 536, column: 16, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4243, file: !71, line: 535, column: 32)
!4246 = !DILocation(line: 536, column: 9, scope: !4245)
!4247 = !DILocation(line: 536, column: 14, scope: !4245)
!4248 = !DILocation(line: 535, column: 27, scope: !4243)
!4249 = !DILocation(line: 535, column: 5, scope: !4243)
!4250 = distinct !{!4250, !4232, !4251, !244}
!4251 = !DILocation(line: 537, column: 5, scope: !4233)
!4252 = !DILocation(line: 538, column: 5, scope: !4176)
!4253 = !DILocation(line: 538, column: 10, scope: !4176)
!4254 = !DILocation(line: 539, column: 9, scope: !4176)
!4255 = !DILocation(line: 539, column: 5, scope: !4176)
!4256 = !DILocation(line: 539, column: 14, scope: !4176)
!4257 = !DILocation(line: 540, column: 10, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4176, file: !71, line: 540, column: 5)
!4259 = !DILocation(line: 540, scope: !4258)
!4260 = !DILocation(line: 540, column: 19, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4258, file: !71, line: 540, column: 5)
!4262 = !DILocation(line: 540, column: 5, scope: !4258)
!4263 = !DILocation(line: 541, column: 30, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4261, file: !71, line: 540, column: 33)
!4265 = !DILocation(line: 541, column: 26, scope: !4264)
!4266 = !DILocation(line: 541, column: 17, scope: !4264)
!4267 = !DILocation(line: 541, column: 9, scope: !4264)
!4268 = !DILocation(line: 541, column: 14, scope: !4264)
!4269 = !DILocation(line: 540, column: 28, scope: !4261)
!4270 = !DILocation(line: 540, column: 5, scope: !4261)
!4271 = distinct !{!4271, !4262, !4272, !244}
!4272 = !DILocation(line: 542, column: 5, scope: !4258)
!4273 = !DILocation(line: 543, column: 1, scope: !4176)
!4274 = distinct !DISubprogram(name: "load64", scope: !71, file: !71, line: 190, type: !4275, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!6, !257}
!4277 = !DILocalVariable(name: "x", arg: 1, scope: !4274, file: !71, line: 190, type: !257)
!4278 = !DILocation(line: 0, scope: !4274)
!4279 = !DILocalVariable(name: "r", scope: !4274, file: !71, line: 191, type: !6)
!4280 = !DILocalVariable(name: "i", scope: !4281, file: !71, line: 192, type: !15)
!4281 = distinct !DILexicalBlock(scope: !4274, file: !71, line: 192, column: 5)
!4282 = !DILocation(line: 0, scope: !4281)
!4283 = !DILocation(line: 192, column: 10, scope: !4281)
!4284 = !DILocation(line: 192, scope: !4281)
!4285 = !DILocation(line: 192, column: 26, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4281, file: !71, line: 192, column: 5)
!4287 = !DILocation(line: 192, column: 5, scope: !4281)
!4288 = !DILocation(line: 193, column: 24, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4286, file: !71, line: 192, column: 36)
!4290 = !DILocation(line: 193, column: 14, scope: !4289)
!4291 = !DILocation(line: 193, column: 34, scope: !4289)
!4292 = !DILocation(line: 193, column: 29, scope: !4289)
!4293 = !DILocation(line: 193, column: 11, scope: !4289)
!4294 = !DILocation(line: 192, column: 31, scope: !4286)
!4295 = !DILocation(line: 192, column: 5, scope: !4286)
!4296 = distinct !{!4296, !4287, !4297, !244}
!4297 = !DILocation(line: 194, column: 5, scope: !4281)
!4298 = !DILocation(line: 196, column: 5, scope: !4274)
!4299 = distinct !DISubprogram(name: "shake128_squeezeblocks", scope: !71, file: !71, line: 784, type: !4300, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{null, !11, !15, !4157}
!4302 = !DILocalVariable(name: "output", arg: 1, scope: !4299, file: !71, line: 784, type: !11)
!4303 = !DILocation(line: 0, scope: !4299)
!4304 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4299, file: !71, line: 784, type: !15)
!4305 = !DILocalVariable(name: "state", arg: 3, scope: !4299, file: !71, line: 784, type: !4157)
!4306 = !DILocation(line: 785, column: 50, scope: !4299)
!4307 = !DILocation(line: 785, column: 5, scope: !4299)
!4308 = !DILocation(line: 786, column: 1, scope: !4299)
!4309 = distinct !DISubprogram(name: "keccak_squeezeblocks", scope: !71, file: !71, line: 558, type: !3982, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4310 = !DILocalVariable(name: "h", arg: 1, scope: !4309, file: !71, line: 558, type: !11)
!4311 = !DILocation(line: 0, scope: !4309)
!4312 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4309, file: !71, line: 558, type: !15)
!4313 = !DILocalVariable(name: "s", arg: 3, scope: !4309, file: !71, line: 559, type: !5)
!4314 = !DILocalVariable(name: "r", arg: 4, scope: !4309, file: !71, line: 559, type: !19)
!4315 = !DILocation(line: 560, column: 5, scope: !4309)
!4316 = !DILocation(line: 560, column: 20, scope: !4309)
!4317 = !DILocation(line: 561, column: 9, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4309, file: !71, line: 560, column: 25)
!4319 = !DILocalVariable(name: "i", scope: !4320, file: !71, line: 562, type: !15)
!4320 = distinct !DILexicalBlock(scope: !4318, file: !71, line: 562, column: 9)
!4321 = !DILocation(line: 0, scope: !4320)
!4322 = !DILocation(line: 562, column: 14, scope: !4320)
!4323 = !DILocation(line: 562, scope: !4320)
!4324 = !DILocation(line: 562, column: 30, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4320, file: !71, line: 562, column: 9)
!4326 = !DILocation(line: 562, column: 9, scope: !4320)
!4327 = !DILocation(line: 563, column: 27, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4325, file: !71, line: 562, column: 47)
!4329 = !DILocation(line: 563, column: 23, scope: !4328)
!4330 = !DILocation(line: 563, column: 32, scope: !4328)
!4331 = !DILocation(line: 563, column: 13, scope: !4328)
!4332 = !DILocation(line: 562, column: 43, scope: !4325)
!4333 = !DILocation(line: 562, column: 9, scope: !4325)
!4334 = distinct !{!4334, !4326, !4335, !244}
!4335 = !DILocation(line: 564, column: 9, scope: !4320)
!4336 = !DILocation(line: 565, column: 11, scope: !4318)
!4337 = !DILocation(line: 566, column: 16, scope: !4318)
!4338 = distinct !{!4338, !4315, !4339, !244}
!4339 = !DILocation(line: 567, column: 5, scope: !4309)
!4340 = !DILocation(line: 568, column: 1, scope: !4309)
!4341 = distinct !DISubprogram(name: "store64", scope: !71, file: !71, line: 207, type: !4342, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{null, !11, !6}
!4344 = !DILocalVariable(name: "x", arg: 1, scope: !4341, file: !71, line: 207, type: !11)
!4345 = !DILocation(line: 0, scope: !4341)
!4346 = !DILocalVariable(name: "u", arg: 2, scope: !4341, file: !71, line: 207, type: !6)
!4347 = !DILocalVariable(name: "i", scope: !4348, file: !71, line: 208, type: !15)
!4348 = distinct !DILexicalBlock(scope: !4341, file: !71, line: 208, column: 5)
!4349 = !DILocation(line: 0, scope: !4348)
!4350 = !DILocation(line: 208, column: 10, scope: !4348)
!4351 = !DILocation(line: 208, scope: !4348)
!4352 = !DILocation(line: 208, column: 26, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4348, file: !71, line: 208, column: 5)
!4354 = !DILocation(line: 208, column: 5, scope: !4348)
!4355 = !DILocation(line: 209, column: 34, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4353, file: !71, line: 208, column: 36)
!4357 = !DILocation(line: 209, column: 29, scope: !4356)
!4358 = !DILocation(line: 209, column: 16, scope: !4356)
!4359 = !DILocation(line: 209, column: 9, scope: !4356)
!4360 = !DILocation(line: 209, column: 14, scope: !4356)
!4361 = !DILocation(line: 208, column: 31, scope: !4353)
!4362 = !DILocation(line: 208, column: 5, scope: !4353)
!4363 = distinct !{!4363, !4354, !4364, !244}
!4364 = !DILocation(line: 210, column: 5, scope: !4348)
!4365 = !DILocation(line: 211, column: 1, scope: !4341)
!4366 = distinct !DISubprogram(name: "shake128_ctx_clone", scope: !71, file: !71, line: 788, type: !4367, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{null, !4157, !4369}
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 32)
!4370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4158)
!4371 = !DILocalVariable(name: "dest", arg: 1, scope: !4366, file: !71, line: 788, type: !4157)
!4372 = !DILocation(line: 0, scope: !4366)
!4373 = !DILocalVariable(name: "src", arg: 2, scope: !4366, file: !71, line: 788, type: !4369)
!4374 = !DILocation(line: 789, column: 17, scope: !4366)
!4375 = !DILocation(line: 789, column: 15, scope: !4366)
!4376 = !DILocation(line: 790, column: 19, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4366, file: !71, line: 790, column: 9)
!4378 = !DILocation(line: 791, column: 9, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4377, file: !71, line: 790, column: 28)
!4380 = !DILocation(line: 792, column: 5, scope: !4379)
!4381 = !DILocation(line: 793, column: 18, scope: !4366)
!4382 = !DILocation(line: 793, column: 28, scope: !4366)
!4383 = !DILocation(line: 793, column: 5, scope: !4366)
!4384 = !DILocation(line: 794, column: 1, scope: !4366)
!4385 = distinct !DISubprogram(name: "shake128_ctx_release", scope: !71, file: !71, line: 797, type: !4386, scopeLine: 797, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{null, !4157}
!4388 = !DILocalVariable(name: "state", arg: 1, scope: !4385, file: !71, line: 797, type: !4157)
!4389 = !DILocation(line: 0, scope: !4385)
!4390 = !DILocation(line: 798, column: 17, scope: !4385)
!4391 = !DILocation(line: 798, column: 5, scope: !4385)
!4392 = !DILocation(line: 799, column: 1, scope: !4385)
!4393 = distinct !DISubprogram(name: "shake256_absorb", scope: !71, file: !71, line: 812, type: !4394, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{null, !4396, !257, !15}
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 32)
!4397 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256ctx", file: !71, line: 46, baseType: !4398)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 44, size: 32, elements: !4399)
!4399 = !{!4400}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4398, file: !71, line: 45, baseType: !5, size: 32)
!4401 = !DILocalVariable(name: "state", arg: 1, scope: !4393, file: !71, line: 812, type: !4396)
!4402 = !DILocation(line: 0, scope: !4393)
!4403 = !DILocalVariable(name: "input", arg: 2, scope: !4393, file: !71, line: 812, type: !257)
!4404 = !DILocalVariable(name: "inlen", arg: 3, scope: !4393, file: !71, line: 812, type: !15)
!4405 = !DILocation(line: 813, column: 18, scope: !4393)
!4406 = !DILocation(line: 813, column: 16, scope: !4393)
!4407 = !DILocation(line: 814, column: 20, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4393, file: !71, line: 814, column: 9)
!4409 = !DILocation(line: 815, column: 9, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4408, file: !71, line: 814, column: 29)
!4411 = !DILocation(line: 816, column: 5, scope: !4410)
!4412 = !DILocation(line: 817, column: 26, scope: !4393)
!4413 = !DILocation(line: 817, column: 5, scope: !4393)
!4414 = !DILocation(line: 818, column: 1, scope: !4393)
!4415 = distinct !DISubprogram(name: "shake256_squeezeblocks", scope: !71, file: !71, line: 832, type: !4416, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{null, !11, !15, !4396}
!4418 = !DILocalVariable(name: "output", arg: 1, scope: !4415, file: !71, line: 832, type: !11)
!4419 = !DILocation(line: 0, scope: !4415)
!4420 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4415, file: !71, line: 832, type: !15)
!4421 = !DILocalVariable(name: "state", arg: 3, scope: !4415, file: !71, line: 832, type: !4396)
!4422 = !DILocation(line: 833, column: 50, scope: !4415)
!4423 = !DILocation(line: 833, column: 5, scope: !4415)
!4424 = !DILocation(line: 834, column: 1, scope: !4415)
!4425 = distinct !DISubprogram(name: "shake256_ctx_clone", scope: !71, file: !71, line: 836, type: !4426, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{null, !4396, !4428}
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 32)
!4429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4397)
!4430 = !DILocalVariable(name: "dest", arg: 1, scope: !4425, file: !71, line: 836, type: !4396)
!4431 = !DILocation(line: 0, scope: !4425)
!4432 = !DILocalVariable(name: "src", arg: 2, scope: !4425, file: !71, line: 836, type: !4428)
!4433 = !DILocation(line: 837, column: 17, scope: !4425)
!4434 = !DILocation(line: 837, column: 15, scope: !4425)
!4435 = !DILocation(line: 838, column: 19, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4425, file: !71, line: 838, column: 9)
!4437 = !DILocation(line: 839, column: 9, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4436, file: !71, line: 838, column: 28)
!4439 = !DILocation(line: 840, column: 5, scope: !4438)
!4440 = !DILocation(line: 841, column: 18, scope: !4425)
!4441 = !DILocation(line: 841, column: 28, scope: !4425)
!4442 = !DILocation(line: 841, column: 5, scope: !4425)
!4443 = !DILocation(line: 842, column: 1, scope: !4425)
!4444 = distinct !DISubprogram(name: "shake256_ctx_release", scope: !71, file: !71, line: 845, type: !4445, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{null, !4396}
!4447 = !DILocalVariable(name: "state", arg: 1, scope: !4444, file: !71, line: 845, type: !4396)
!4448 = !DILocation(line: 0, scope: !4444)
!4449 = !DILocation(line: 846, column: 17, scope: !4444)
!4450 = !DILocation(line: 846, column: 5, scope: !4444)
!4451 = !DILocation(line: 847, column: 1, scope: !4444)
!4452 = distinct !DISubprogram(name: "shake128", scope: !71, file: !71, line: 859, type: !4453, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{null, !11, !15, !257, !15}
!4455 = !DILocalVariable(name: "output", arg: 1, scope: !4452, file: !71, line: 859, type: !11)
!4456 = !DILocation(line: 0, scope: !4452)
!4457 = !DILocalVariable(name: "outlen", arg: 2, scope: !4452, file: !71, line: 859, type: !15)
!4458 = !DILocalVariable(name: "input", arg: 3, scope: !4452, file: !71, line: 860, type: !257)
!4459 = !DILocalVariable(name: "inlen", arg: 4, scope: !4452, file: !71, line: 860, type: !15)
!4460 = !DILocation(line: 861, column: 29, scope: !4452)
!4461 = !DILocalVariable(name: "nblocks", scope: !4452, file: !71, line: 861, type: !15)
!4462 = !DILocalVariable(name: "t", scope: !4452, file: !71, line: 862, type: !4463)
!4463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1344, elements: !4464)
!4464 = !{!4465}
!4465 = !DISubrange(count: 168)
!4466 = !DILocation(line: 862, column: 13, scope: !4452)
!4467 = !DILocalVariable(name: "s", scope: !4452, file: !71, line: 863, type: !4158)
!4468 = !DILocation(line: 863, column: 17, scope: !4452)
!4469 = !DILocation(line: 865, column: 5, scope: !4452)
!4470 = !DILocation(line: 866, column: 5, scope: !4452)
!4471 = !DILocation(line: 868, column: 23, scope: !4452)
!4472 = !DILocation(line: 868, column: 12, scope: !4452)
!4473 = !DILocation(line: 869, column: 23, scope: !4452)
!4474 = !DILocation(line: 869, column: 12, scope: !4452)
!4475 = !DILocation(line: 871, column: 9, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4452, file: !71, line: 871, column: 9)
!4477 = !DILocation(line: 872, column: 9, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4476, file: !71, line: 871, column: 17)
!4479 = !DILocalVariable(name: "i", scope: !4480, file: !71, line: 873, type: !15)
!4480 = distinct !DILexicalBlock(scope: !4478, file: !71, line: 873, column: 9)
!4481 = !DILocation(line: 0, scope: !4480)
!4482 = !DILocation(line: 873, column: 14, scope: !4480)
!4483 = !DILocation(line: 873, scope: !4480)
!4484 = !DILocation(line: 873, column: 30, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4480, file: !71, line: 873, column: 9)
!4486 = !DILocation(line: 873, column: 9, scope: !4480)
!4487 = !DILocation(line: 874, column: 25, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4485, file: !71, line: 873, column: 45)
!4489 = !DILocation(line: 874, column: 13, scope: !4488)
!4490 = !DILocation(line: 874, column: 23, scope: !4488)
!4491 = !DILocation(line: 873, column: 40, scope: !4485)
!4492 = !DILocation(line: 873, column: 9, scope: !4485)
!4493 = distinct !{!4493, !4486, !4494, !244}
!4494 = !DILocation(line: 875, column: 9, scope: !4480)
!4495 = !DILocation(line: 877, column: 5, scope: !4452)
!4496 = !DILocation(line: 878, column: 1, scope: !4452)
!4497 = distinct !DISubprogram(name: "shake256", scope: !71, file: !71, line: 890, type: !4453, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4498 = !DILocalVariable(name: "output", arg: 1, scope: !4497, file: !71, line: 890, type: !11)
!4499 = !DILocation(line: 0, scope: !4497)
!4500 = !DILocalVariable(name: "outlen", arg: 2, scope: !4497, file: !71, line: 890, type: !15)
!4501 = !DILocalVariable(name: "input", arg: 3, scope: !4497, file: !71, line: 891, type: !257)
!4502 = !DILocalVariable(name: "inlen", arg: 4, scope: !4497, file: !71, line: 891, type: !15)
!4503 = !DILocation(line: 892, column: 29, scope: !4497)
!4504 = !DILocalVariable(name: "nblocks", scope: !4497, file: !71, line: 892, type: !15)
!4505 = !DILocalVariable(name: "t", scope: !4497, file: !71, line: 893, type: !4506)
!4506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1088, elements: !4507)
!4507 = !{!4508}
!4508 = !DISubrange(count: 136)
!4509 = !DILocation(line: 893, column: 13, scope: !4497)
!4510 = !DILocalVariable(name: "s", scope: !4497, file: !71, line: 894, type: !4397)
!4511 = !DILocation(line: 894, column: 17, scope: !4497)
!4512 = !DILocation(line: 896, column: 5, scope: !4497)
!4513 = !DILocation(line: 897, column: 5, scope: !4497)
!4514 = !DILocation(line: 899, column: 23, scope: !4497)
!4515 = !DILocation(line: 899, column: 12, scope: !4497)
!4516 = !DILocation(line: 900, column: 23, scope: !4497)
!4517 = !DILocation(line: 900, column: 12, scope: !4497)
!4518 = !DILocation(line: 902, column: 9, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4497, file: !71, line: 902, column: 9)
!4520 = !DILocation(line: 903, column: 9, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4519, file: !71, line: 902, column: 17)
!4522 = !DILocalVariable(name: "i", scope: !4523, file: !71, line: 904, type: !15)
!4523 = distinct !DILexicalBlock(scope: !4521, file: !71, line: 904, column: 9)
!4524 = !DILocation(line: 0, scope: !4523)
!4525 = !DILocation(line: 904, column: 14, scope: !4523)
!4526 = !DILocation(line: 904, scope: !4523)
!4527 = !DILocation(line: 904, column: 30, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4523, file: !71, line: 904, column: 9)
!4529 = !DILocation(line: 904, column: 9, scope: !4523)
!4530 = !DILocation(line: 905, column: 25, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4528, file: !71, line: 904, column: 45)
!4532 = !DILocation(line: 905, column: 13, scope: !4531)
!4533 = !DILocation(line: 905, column: 23, scope: !4531)
!4534 = !DILocation(line: 904, column: 40, scope: !4528)
!4535 = !DILocation(line: 904, column: 9, scope: !4528)
!4536 = distinct !{!4536, !4529, !4537, !244}
!4537 = !DILocation(line: 906, column: 9, scope: !4523)
!4538 = !DILocation(line: 908, column: 5, scope: !4497)
!4539 = !DILocation(line: 909, column: 1, scope: !4497)
!4540 = distinct !DISubprogram(name: "sha3_256_inc_init", scope: !71, file: !71, line: 911, type: !4541, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{null, !4543}
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 32)
!4544 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_256incctx", file: !71, line: 51, baseType: !4545)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 49, size: 32, elements: !4546)
!4546 = !{!4547}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4545, file: !71, line: 50, baseType: !5, size: 32)
!4548 = !DILocalVariable(name: "state", arg: 1, scope: !4540, file: !71, line: 911, type: !4543)
!4549 = !DILocation(line: 0, scope: !4540)
!4550 = !DILocation(line: 912, column: 18, scope: !4540)
!4551 = !DILocation(line: 912, column: 16, scope: !4540)
!4552 = !DILocation(line: 913, column: 20, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4540, file: !71, line: 913, column: 9)
!4554 = !DILocation(line: 914, column: 9, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4553, file: !71, line: 913, column: 29)
!4556 = !DILocation(line: 915, column: 5, scope: !4555)
!4557 = !DILocation(line: 916, column: 28, scope: !4540)
!4558 = !DILocation(line: 916, column: 5, scope: !4540)
!4559 = !DILocation(line: 917, column: 1, scope: !4540)
!4560 = distinct !DISubprogram(name: "sha3_256_inc_ctx_clone", scope: !71, file: !71, line: 919, type: !4561, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{null, !4543, !4563}
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 32)
!4564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4544)
!4565 = !DILocalVariable(name: "dest", arg: 1, scope: !4560, file: !71, line: 919, type: !4543)
!4566 = !DILocation(line: 0, scope: !4560)
!4567 = !DILocalVariable(name: "src", arg: 2, scope: !4560, file: !71, line: 919, type: !4563)
!4568 = !DILocation(line: 920, column: 17, scope: !4560)
!4569 = !DILocation(line: 920, column: 15, scope: !4560)
!4570 = !DILocation(line: 921, column: 19, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4560, file: !71, line: 921, column: 9)
!4572 = !DILocation(line: 922, column: 9, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4571, file: !71, line: 921, column: 28)
!4574 = !DILocation(line: 923, column: 5, scope: !4573)
!4575 = !DILocation(line: 924, column: 18, scope: !4560)
!4576 = !DILocation(line: 924, column: 28, scope: !4560)
!4577 = !DILocation(line: 924, column: 5, scope: !4560)
!4578 = !DILocation(line: 925, column: 1, scope: !4560)
!4579 = distinct !DISubprogram(name: "sha3_256_inc_ctx_release", scope: !71, file: !71, line: 927, type: !4541, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4580 = !DILocalVariable(name: "state", arg: 1, scope: !4579, file: !71, line: 927, type: !4543)
!4581 = !DILocation(line: 0, scope: !4579)
!4582 = !DILocation(line: 928, column: 17, scope: !4579)
!4583 = !DILocation(line: 928, column: 5, scope: !4579)
!4584 = !DILocation(line: 929, column: 1, scope: !4579)
!4585 = distinct !DISubprogram(name: "sha3_256_inc_absorb", scope: !71, file: !71, line: 931, type: !4586, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{null, !4543, !257, !15}
!4588 = !DILocalVariable(name: "state", arg: 1, scope: !4585, file: !71, line: 931, type: !4543)
!4589 = !DILocation(line: 0, scope: !4585)
!4590 = !DILocalVariable(name: "input", arg: 2, scope: !4585, file: !71, line: 931, type: !257)
!4591 = !DILocalVariable(name: "inlen", arg: 3, scope: !4585, file: !71, line: 931, type: !15)
!4592 = !DILocation(line: 932, column: 30, scope: !4585)
!4593 = !DILocation(line: 932, column: 5, scope: !4585)
!4594 = !DILocation(line: 933, column: 1, scope: !4585)
!4595 = distinct !DISubprogram(name: "sha3_256_inc_finalize", scope: !71, file: !71, line: 935, type: !4596, scopeLine: 935, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{null, !11, !4543}
!4598 = !DILocalVariable(name: "output", arg: 1, scope: !4595, file: !71, line: 935, type: !11)
!4599 = !DILocation(line: 0, scope: !4595)
!4600 = !DILocalVariable(name: "state", arg: 2, scope: !4595, file: !71, line: 935, type: !4543)
!4601 = !DILocalVariable(name: "t", scope: !4595, file: !71, line: 936, type: !4506)
!4602 = !DILocation(line: 936, column: 13, scope: !4595)
!4603 = !DILocation(line: 937, column: 32, scope: !4595)
!4604 = !DILocation(line: 937, column: 5, scope: !4595)
!4605 = !DILocation(line: 939, column: 39, scope: !4595)
!4606 = !DILocation(line: 939, column: 5, scope: !4595)
!4607 = !DILocation(line: 941, column: 5, scope: !4595)
!4608 = !DILocalVariable(name: "i", scope: !4609, file: !71, line: 943, type: !15)
!4609 = distinct !DILexicalBlock(scope: !4595, file: !71, line: 943, column: 5)
!4610 = !DILocation(line: 0, scope: !4609)
!4611 = !DILocation(line: 943, column: 10, scope: !4609)
!4612 = !DILocation(line: 943, scope: !4609)
!4613 = !DILocation(line: 943, column: 26, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4609, file: !71, line: 943, column: 5)
!4615 = !DILocation(line: 943, column: 5, scope: !4609)
!4616 = !DILocation(line: 944, column: 21, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4614, file: !71, line: 943, column: 37)
!4618 = !DILocation(line: 944, column: 9, scope: !4617)
!4619 = !DILocation(line: 944, column: 19, scope: !4617)
!4620 = !DILocation(line: 943, column: 33, scope: !4614)
!4621 = !DILocation(line: 943, column: 5, scope: !4614)
!4622 = distinct !{!4622, !4615, !4623, !244}
!4623 = !DILocation(line: 945, column: 5, scope: !4609)
!4624 = !DILocation(line: 946, column: 1, scope: !4595)
!4625 = distinct !DISubprogram(name: "sha3_256", scope: !71, file: !71, line: 957, type: !4626, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{null, !11, !257, !15}
!4628 = !DILocalVariable(name: "output", arg: 1, scope: !4625, file: !71, line: 957, type: !11)
!4629 = !DILocation(line: 0, scope: !4625)
!4630 = !DILocalVariable(name: "input", arg: 2, scope: !4625, file: !71, line: 957, type: !257)
!4631 = !DILocalVariable(name: "inlen", arg: 3, scope: !4625, file: !71, line: 957, type: !15)
!4632 = !DILocalVariable(name: "s", scope: !4625, file: !71, line: 958, type: !4633)
!4633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1600, elements: !4634)
!4634 = !{!4635}
!4635 = !DISubrange(count: 25)
!4636 = !DILocation(line: 958, column: 14, scope: !4625)
!4637 = !DILocalVariable(name: "t", scope: !4625, file: !71, line: 959, type: !4506)
!4638 = !DILocation(line: 959, column: 13, scope: !4625)
!4639 = !DILocation(line: 962, column: 5, scope: !4625)
!4640 = !DILocation(line: 965, column: 5, scope: !4625)
!4641 = !DILocalVariable(name: "i", scope: !4642, file: !71, line: 967, type: !15)
!4642 = distinct !DILexicalBlock(scope: !4625, file: !71, line: 967, column: 5)
!4643 = !DILocation(line: 0, scope: !4642)
!4644 = !DILocation(line: 967, column: 10, scope: !4642)
!4645 = !DILocation(line: 967, scope: !4642)
!4646 = !DILocation(line: 967, column: 26, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4642, file: !71, line: 967, column: 5)
!4648 = !DILocation(line: 967, column: 5, scope: !4642)
!4649 = !DILocation(line: 968, column: 21, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4647, file: !71, line: 967, column: 37)
!4651 = !DILocation(line: 968, column: 9, scope: !4650)
!4652 = !DILocation(line: 968, column: 19, scope: !4650)
!4653 = !DILocation(line: 967, column: 33, scope: !4647)
!4654 = !DILocation(line: 967, column: 5, scope: !4647)
!4655 = distinct !{!4655, !4648, !4656, !244}
!4656 = !DILocation(line: 969, column: 5, scope: !4642)
!4657 = !DILocation(line: 970, column: 1, scope: !4625)
!4658 = distinct !DISubprogram(name: "sha3_384_inc_init", scope: !71, file: !71, line: 972, type: !4659, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{null, !4661}
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 32)
!4662 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_384incctx", file: !71, line: 56, baseType: !4663)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 54, size: 32, elements: !4664)
!4664 = !{!4665}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4663, file: !71, line: 55, baseType: !5, size: 32)
!4666 = !DILocalVariable(name: "state", arg: 1, scope: !4658, file: !71, line: 972, type: !4661)
!4667 = !DILocation(line: 0, scope: !4658)
!4668 = !DILocation(line: 973, column: 18, scope: !4658)
!4669 = !DILocation(line: 973, column: 16, scope: !4658)
!4670 = !DILocation(line: 974, column: 20, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4658, file: !71, line: 974, column: 9)
!4672 = !DILocation(line: 975, column: 9, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4671, file: !71, line: 974, column: 29)
!4674 = !DILocation(line: 976, column: 5, scope: !4673)
!4675 = !DILocation(line: 977, column: 28, scope: !4658)
!4676 = !DILocation(line: 977, column: 5, scope: !4658)
!4677 = !DILocation(line: 978, column: 1, scope: !4658)
!4678 = distinct !DISubprogram(name: "sha3_384_inc_ctx_clone", scope: !71, file: !71, line: 980, type: !4679, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{null, !4661, !4681}
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 32)
!4682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4662)
!4683 = !DILocalVariable(name: "dest", arg: 1, scope: !4678, file: !71, line: 980, type: !4661)
!4684 = !DILocation(line: 0, scope: !4678)
!4685 = !DILocalVariable(name: "src", arg: 2, scope: !4678, file: !71, line: 980, type: !4681)
!4686 = !DILocation(line: 981, column: 17, scope: !4678)
!4687 = !DILocation(line: 981, column: 15, scope: !4678)
!4688 = !DILocation(line: 982, column: 19, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4678, file: !71, line: 982, column: 9)
!4690 = !DILocation(line: 983, column: 9, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4689, file: !71, line: 982, column: 28)
!4692 = !DILocation(line: 984, column: 5, scope: !4691)
!4693 = !DILocation(line: 985, column: 18, scope: !4678)
!4694 = !DILocation(line: 985, column: 28, scope: !4678)
!4695 = !DILocation(line: 985, column: 5, scope: !4678)
!4696 = !DILocation(line: 986, column: 1, scope: !4678)
!4697 = distinct !DISubprogram(name: "sha3_384_inc_absorb", scope: !71, file: !71, line: 988, type: !4698, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{null, !4661, !257, !15}
!4700 = !DILocalVariable(name: "state", arg: 1, scope: !4697, file: !71, line: 988, type: !4661)
!4701 = !DILocation(line: 0, scope: !4697)
!4702 = !DILocalVariable(name: "input", arg: 2, scope: !4697, file: !71, line: 988, type: !257)
!4703 = !DILocalVariable(name: "inlen", arg: 3, scope: !4697, file: !71, line: 988, type: !15)
!4704 = !DILocation(line: 989, column: 30, scope: !4697)
!4705 = !DILocation(line: 989, column: 5, scope: !4697)
!4706 = !DILocation(line: 990, column: 1, scope: !4697)
!4707 = distinct !DISubprogram(name: "sha3_384_inc_ctx_release", scope: !71, file: !71, line: 992, type: !4659, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4708 = !DILocalVariable(name: "state", arg: 1, scope: !4707, file: !71, line: 992, type: !4661)
!4709 = !DILocation(line: 0, scope: !4707)
!4710 = !DILocation(line: 993, column: 17, scope: !4707)
!4711 = !DILocation(line: 993, column: 5, scope: !4707)
!4712 = !DILocation(line: 994, column: 1, scope: !4707)
!4713 = distinct !DISubprogram(name: "sha3_384_inc_finalize", scope: !71, file: !71, line: 996, type: !4714, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{null, !11, !4661}
!4716 = !DILocalVariable(name: "output", arg: 1, scope: !4713, file: !71, line: 996, type: !11)
!4717 = !DILocation(line: 0, scope: !4713)
!4718 = !DILocalVariable(name: "state", arg: 2, scope: !4713, file: !71, line: 996, type: !4661)
!4719 = !DILocalVariable(name: "t", scope: !4713, file: !71, line: 997, type: !4720)
!4720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 832, elements: !4721)
!4721 = !{!4722}
!4722 = !DISubrange(count: 104)
!4723 = !DILocation(line: 997, column: 13, scope: !4713)
!4724 = !DILocation(line: 998, column: 32, scope: !4713)
!4725 = !DILocation(line: 998, column: 5, scope: !4713)
!4726 = !DILocation(line: 1000, column: 39, scope: !4713)
!4727 = !DILocation(line: 1000, column: 5, scope: !4713)
!4728 = !DILocation(line: 1002, column: 5, scope: !4713)
!4729 = !DILocalVariable(name: "i", scope: !4730, file: !71, line: 1004, type: !15)
!4730 = distinct !DILexicalBlock(scope: !4713, file: !71, line: 1004, column: 5)
!4731 = !DILocation(line: 0, scope: !4730)
!4732 = !DILocation(line: 1004, column: 10, scope: !4730)
!4733 = !DILocation(line: 1004, scope: !4730)
!4734 = !DILocation(line: 1004, column: 26, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4730, file: !71, line: 1004, column: 5)
!4736 = !DILocation(line: 1004, column: 5, scope: !4730)
!4737 = !DILocation(line: 1005, column: 21, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4735, file: !71, line: 1004, column: 37)
!4739 = !DILocation(line: 1005, column: 9, scope: !4738)
!4740 = !DILocation(line: 1005, column: 19, scope: !4738)
!4741 = !DILocation(line: 1004, column: 33, scope: !4735)
!4742 = !DILocation(line: 1004, column: 5, scope: !4735)
!4743 = distinct !{!4743, !4736, !4744, !244}
!4744 = !DILocation(line: 1006, column: 5, scope: !4730)
!4745 = !DILocation(line: 1007, column: 1, scope: !4713)
!4746 = distinct !DISubprogram(name: "sha3_384", scope: !71, file: !71, line: 1018, type: !4626, scopeLine: 1018, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4747 = !DILocalVariable(name: "output", arg: 1, scope: !4746, file: !71, line: 1018, type: !11)
!4748 = !DILocation(line: 0, scope: !4746)
!4749 = !DILocalVariable(name: "input", arg: 2, scope: !4746, file: !71, line: 1018, type: !257)
!4750 = !DILocalVariable(name: "inlen", arg: 3, scope: !4746, file: !71, line: 1018, type: !15)
!4751 = !DILocalVariable(name: "s", scope: !4746, file: !71, line: 1019, type: !4633)
!4752 = !DILocation(line: 1019, column: 14, scope: !4746)
!4753 = !DILocalVariable(name: "t", scope: !4746, file: !71, line: 1020, type: !4720)
!4754 = !DILocation(line: 1020, column: 13, scope: !4746)
!4755 = !DILocation(line: 1023, column: 5, scope: !4746)
!4756 = !DILocation(line: 1026, column: 5, scope: !4746)
!4757 = !DILocalVariable(name: "i", scope: !4758, file: !71, line: 1028, type: !15)
!4758 = distinct !DILexicalBlock(scope: !4746, file: !71, line: 1028, column: 5)
!4759 = !DILocation(line: 0, scope: !4758)
!4760 = !DILocation(line: 1028, column: 10, scope: !4758)
!4761 = !DILocation(line: 1028, scope: !4758)
!4762 = !DILocation(line: 1028, column: 26, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4758, file: !71, line: 1028, column: 5)
!4764 = !DILocation(line: 1028, column: 5, scope: !4758)
!4765 = !DILocation(line: 1029, column: 21, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4763, file: !71, line: 1028, column: 37)
!4767 = !DILocation(line: 1029, column: 9, scope: !4766)
!4768 = !DILocation(line: 1029, column: 19, scope: !4766)
!4769 = !DILocation(line: 1028, column: 33, scope: !4763)
!4770 = !DILocation(line: 1028, column: 5, scope: !4763)
!4771 = distinct !{!4771, !4764, !4772, !244}
!4772 = !DILocation(line: 1030, column: 5, scope: !4758)
!4773 = !DILocation(line: 1031, column: 1, scope: !4746)
!4774 = distinct !DISubprogram(name: "sha3_512_inc_init", scope: !71, file: !71, line: 1033, type: !4775, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4775 = !DISubroutineType(types: !4776)
!4776 = !{null, !4777}
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 32)
!4778 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_512incctx", file: !71, line: 61, baseType: !4779)
!4779 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 59, size: 32, elements: !4780)
!4780 = !{!4781}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4779, file: !71, line: 60, baseType: !5, size: 32)
!4782 = !DILocalVariable(name: "state", arg: 1, scope: !4774, file: !71, line: 1033, type: !4777)
!4783 = !DILocation(line: 0, scope: !4774)
!4784 = !DILocation(line: 1034, column: 18, scope: !4774)
!4785 = !DILocation(line: 1034, column: 16, scope: !4774)
!4786 = !DILocation(line: 1035, column: 20, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4774, file: !71, line: 1035, column: 9)
!4788 = !DILocation(line: 1036, column: 9, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4787, file: !71, line: 1035, column: 29)
!4790 = !DILocation(line: 1037, column: 5, scope: !4789)
!4791 = !DILocation(line: 1038, column: 28, scope: !4774)
!4792 = !DILocation(line: 1038, column: 5, scope: !4774)
!4793 = !DILocation(line: 1039, column: 1, scope: !4774)
!4794 = distinct !DISubprogram(name: "sha3_512_inc_ctx_clone", scope: !71, file: !71, line: 1041, type: !4795, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{null, !4777, !4797}
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 32)
!4798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4778)
!4799 = !DILocalVariable(name: "dest", arg: 1, scope: !4794, file: !71, line: 1041, type: !4777)
!4800 = !DILocation(line: 0, scope: !4794)
!4801 = !DILocalVariable(name: "src", arg: 2, scope: !4794, file: !71, line: 1041, type: !4797)
!4802 = !DILocation(line: 1042, column: 17, scope: !4794)
!4803 = !DILocation(line: 1042, column: 15, scope: !4794)
!4804 = !DILocation(line: 1043, column: 19, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4794, file: !71, line: 1043, column: 9)
!4806 = !DILocation(line: 1044, column: 9, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4805, file: !71, line: 1043, column: 28)
!4808 = !DILocation(line: 1045, column: 5, scope: !4807)
!4809 = !DILocation(line: 1046, column: 18, scope: !4794)
!4810 = !DILocation(line: 1046, column: 28, scope: !4794)
!4811 = !DILocation(line: 1046, column: 5, scope: !4794)
!4812 = !DILocation(line: 1047, column: 1, scope: !4794)
!4813 = distinct !DISubprogram(name: "sha3_512_inc_absorb", scope: !71, file: !71, line: 1049, type: !4814, scopeLine: 1049, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{null, !4777, !257, !15}
!4816 = !DILocalVariable(name: "state", arg: 1, scope: !4813, file: !71, line: 1049, type: !4777)
!4817 = !DILocation(line: 0, scope: !4813)
!4818 = !DILocalVariable(name: "input", arg: 2, scope: !4813, file: !71, line: 1049, type: !257)
!4819 = !DILocalVariable(name: "inlen", arg: 3, scope: !4813, file: !71, line: 1049, type: !15)
!4820 = !DILocation(line: 1050, column: 30, scope: !4813)
!4821 = !DILocation(line: 1050, column: 5, scope: !4813)
!4822 = !DILocation(line: 1051, column: 1, scope: !4813)
!4823 = distinct !DISubprogram(name: "sha3_512_inc_ctx_release", scope: !71, file: !71, line: 1053, type: !4775, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4824 = !DILocalVariable(name: "state", arg: 1, scope: !4823, file: !71, line: 1053, type: !4777)
!4825 = !DILocation(line: 0, scope: !4823)
!4826 = !DILocation(line: 1054, column: 17, scope: !4823)
!4827 = !DILocation(line: 1054, column: 5, scope: !4823)
!4828 = !DILocation(line: 1055, column: 1, scope: !4823)
!4829 = distinct !DISubprogram(name: "sha3_512_inc_finalize", scope: !71, file: !71, line: 1057, type: !4830, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{null, !11, !4777}
!4832 = !DILocalVariable(name: "output", arg: 1, scope: !4829, file: !71, line: 1057, type: !11)
!4833 = !DILocation(line: 0, scope: !4829)
!4834 = !DILocalVariable(name: "state", arg: 2, scope: !4829, file: !71, line: 1057, type: !4777)
!4835 = !DILocalVariable(name: "t", scope: !4829, file: !71, line: 1058, type: !4836)
!4836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 576, elements: !4837)
!4837 = !{!4838}
!4838 = !DISubrange(count: 72)
!4839 = !DILocation(line: 1058, column: 13, scope: !4829)
!4840 = !DILocation(line: 1059, column: 32, scope: !4829)
!4841 = !DILocation(line: 1059, column: 5, scope: !4829)
!4842 = !DILocation(line: 1061, column: 39, scope: !4829)
!4843 = !DILocation(line: 1061, column: 5, scope: !4829)
!4844 = !DILocation(line: 1063, column: 5, scope: !4829)
!4845 = !DILocalVariable(name: "i", scope: !4846, file: !71, line: 1065, type: !15)
!4846 = distinct !DILexicalBlock(scope: !4829, file: !71, line: 1065, column: 5)
!4847 = !DILocation(line: 0, scope: !4846)
!4848 = !DILocation(line: 1065, column: 10, scope: !4846)
!4849 = !DILocation(line: 1065, scope: !4846)
!4850 = !DILocation(line: 1065, column: 26, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4846, file: !71, line: 1065, column: 5)
!4852 = !DILocation(line: 1065, column: 5, scope: !4846)
!4853 = !DILocation(line: 1066, column: 21, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4851, file: !71, line: 1065, column: 37)
!4855 = !DILocation(line: 1066, column: 9, scope: !4854)
!4856 = !DILocation(line: 1066, column: 19, scope: !4854)
!4857 = !DILocation(line: 1065, column: 33, scope: !4851)
!4858 = !DILocation(line: 1065, column: 5, scope: !4851)
!4859 = distinct !{!4859, !4852, !4860, !244}
!4860 = !DILocation(line: 1067, column: 5, scope: !4846)
!4861 = !DILocation(line: 1068, column: 1, scope: !4829)
!4862 = distinct !DISubprogram(name: "sha3_512", scope: !71, file: !71, line: 1079, type: !4626, scopeLine: 1079, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4863 = !DILocalVariable(name: "output", arg: 1, scope: !4862, file: !71, line: 1079, type: !11)
!4864 = !DILocation(line: 0, scope: !4862)
!4865 = !DILocalVariable(name: "input", arg: 2, scope: !4862, file: !71, line: 1079, type: !257)
!4866 = !DILocalVariable(name: "inlen", arg: 3, scope: !4862, file: !71, line: 1079, type: !15)
!4867 = !DILocalVariable(name: "s", scope: !4862, file: !71, line: 1080, type: !4633)
!4868 = !DILocation(line: 1080, column: 14, scope: !4862)
!4869 = !DILocalVariable(name: "t", scope: !4862, file: !71, line: 1081, type: !4836)
!4870 = !DILocation(line: 1081, column: 13, scope: !4862)
!4871 = !DILocation(line: 1084, column: 5, scope: !4862)
!4872 = !DILocation(line: 1087, column: 5, scope: !4862)
!4873 = !DILocalVariable(name: "i", scope: !4874, file: !71, line: 1089, type: !15)
!4874 = distinct !DILexicalBlock(scope: !4862, file: !71, line: 1089, column: 5)
!4875 = !DILocation(line: 0, scope: !4874)
!4876 = !DILocation(line: 1089, column: 10, scope: !4874)
!4877 = !DILocation(line: 1089, scope: !4874)
!4878 = !DILocation(line: 1089, column: 26, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4874, file: !71, line: 1089, column: 5)
!4880 = !DILocation(line: 1089, column: 5, scope: !4874)
!4881 = !DILocation(line: 1090, column: 21, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4879, file: !71, line: 1089, column: 37)
!4883 = !DILocation(line: 1090, column: 9, scope: !4882)
!4884 = !DILocation(line: 1090, column: 19, scope: !4882)
!4885 = !DILocation(line: 1089, column: 33, scope: !4879)
!4886 = !DILocation(line: 1089, column: 5, scope: !4879)
!4887 = distinct !{!4887, !4880, !4888, !244}
!4888 = !DILocation(line: 1091, column: 5, scope: !4874)
!4889 = !DILocation(line: 1092, column: 1, scope: !4862)
!4890 = distinct !DISubprogram(name: "aes128_ecb_keyexp", scope: !80, file: !80, line: 635, type: !4891, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{null, !4893, !49}
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 32)
!4894 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes128ctx", file: !80, line: 46, baseType: !4895)
!4895 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 44, size: 32, elements: !4896)
!4896 = !{!4897}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !4895, file: !80, line: 45, baseType: !5, size: 32)
!4898 = !DILocalVariable(name: "r", arg: 1, scope: !4890, file: !80, line: 635, type: !4893)
!4899 = !DILocation(line: 0, scope: !4890)
!4900 = !DILocalVariable(name: "key", arg: 2, scope: !4890, file: !80, line: 635, type: !49)
!4901 = !DILocalVariable(name: "skey", scope: !4890, file: !80, line: 636, type: !4902)
!4902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1408, elements: !4903)
!4903 = !{!4904}
!4904 = !DISubrange(count: 22)
!4905 = !DILocation(line: 636, column: 14, scope: !4890)
!4906 = !DILocation(line: 638, column: 17, scope: !4890)
!4907 = !DILocation(line: 638, column: 15, scope: !4890)
!4908 = !DILocation(line: 639, column: 19, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4890, file: !80, line: 639, column: 9)
!4910 = !DILocation(line: 640, column: 9, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4909, file: !80, line: 639, column: 28)
!4912 = !DILocation(line: 641, column: 5, scope: !4911)
!4913 = !DILocation(line: 643, column: 5, scope: !4890)
!4914 = !DILocation(line: 644, column: 32, scope: !4890)
!4915 = !DILocation(line: 644, column: 5, scope: !4890)
!4916 = !DILocation(line: 645, column: 1, scope: !4890)
!4917 = distinct !DISubprogram(name: "br_aes_ct64_keysched", scope: !80, file: !80, line: 403, type: !4918, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4918 = !DISubroutineType(types: !4919)
!4919 = !{null, !5, !49, !17}
!4920 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !4917, file: !80, line: 403, type: !5)
!4921 = !DILocation(line: 0, scope: !4917)
!4922 = !DILocalVariable(name: "key", arg: 2, scope: !4917, file: !80, line: 403, type: !49)
!4923 = !DILocalVariable(name: "key_len", arg: 3, scope: !4917, file: !80, line: 403, type: !17)
!4924 = !DILocalVariable(name: "skey", scope: !4917, file: !80, line: 406, type: !4925)
!4925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1920, elements: !4926)
!4926 = !{!4927}
!4927 = !DISubrange(count: 60)
!4928 = !DILocation(line: 406, column: 14, scope: !4917)
!4929 = !DILocation(line: 410, column: 26, scope: !4917)
!4930 = !DILocalVariable(name: "nrounds", scope: !4917, file: !80, line: 407, type: !17)
!4931 = !DILocation(line: 409, column: 19, scope: !4917)
!4932 = !DILocalVariable(name: "nk", scope: !4917, file: !80, line: 404, type: !17)
!4933 = !DILocalVariable(name: "nkf", scope: !4917, file: !80, line: 404, type: !17)
!4934 = !DILocation(line: 411, column: 37, scope: !4917)
!4935 = !DILocation(line: 411, column: 5, scope: !4917)
!4936 = !DILocation(line: 412, column: 25, scope: !4917)
!4937 = !DILocation(line: 412, column: 31, scope: !4917)
!4938 = !DILocation(line: 412, column: 11, scope: !4917)
!4939 = !DILocalVariable(name: "tmp", scope: !4917, file: !80, line: 405, type: !19)
!4940 = !DILocalVariable(name: "i", scope: !4917, file: !80, line: 404, type: !17)
!4941 = !DILocalVariable(name: "j", scope: !4917, file: !80, line: 404, type: !17)
!4942 = !DILocalVariable(name: "k", scope: !4917, file: !80, line: 404, type: !17)
!4943 = !DILocation(line: 413, column: 10, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4917, file: !80, line: 413, column: 5)
!4945 = !DILocation(line: 413, scope: !4944)
!4946 = !DILocation(line: 0, scope: !4944)
!4947 = !DILocation(line: 413, column: 34, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4944, file: !80, line: 413, column: 5)
!4949 = !DILocation(line: 413, column: 5, scope: !4944)
!4950 = !DILocation(line: 428, column: 5, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4917, file: !80, line: 428, column: 5)
!4952 = !DILocation(line: 414, column: 15, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4954, file: !80, line: 414, column: 13)
!4954 = distinct !DILexicalBlock(scope: !4948, file: !80, line: 413, column: 47)
!4955 = !DILocation(line: 415, column: 31, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4953, file: !80, line: 414, column: 21)
!4957 = !DILocation(line: 416, column: 19, scope: !4956)
!4958 = !DILocation(line: 416, column: 35, scope: !4956)
!4959 = !DILocation(line: 416, column: 33, scope: !4956)
!4960 = !DILocation(line: 417, column: 9, scope: !4956)
!4961 = !DILocation(line: 417, column: 23, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4953, file: !80, line: 417, column: 20)
!4963 = !DILocation(line: 417, column: 27, scope: !4962)
!4964 = !DILocation(line: 418, column: 19, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4962, file: !80, line: 417, column: 38)
!4966 = !DILocation(line: 419, column: 9, scope: !4965)
!4967 = !DILocation(line: 0, scope: !4953)
!4968 = !DILocation(line: 420, column: 23, scope: !4954)
!4969 = !DILocation(line: 420, column: 16, scope: !4954)
!4970 = !DILocation(line: 420, column: 13, scope: !4954)
!4971 = !DILocation(line: 421, column: 9, scope: !4954)
!4972 = !DILocation(line: 421, column: 17, scope: !4954)
!4973 = !DILocation(line: 422, column: 13, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4954, file: !80, line: 422, column: 13)
!4975 = !DILocation(line: 422, column: 18, scope: !4974)
!4976 = !DILocation(line: 413, column: 43, scope: !4948)
!4977 = !DILocation(line: 413, column: 5, scope: !4948)
!4978 = distinct !{!4978, !4949, !4979, !244}
!4979 = !DILocation(line: 426, column: 5, scope: !4944)
!4980 = !DILocation(line: 428, scope: !4951)
!4981 = !DILocation(line: 428, column: 26, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4951, file: !80, line: 428, column: 5)
!4983 = !DILocalVariable(name: "q", scope: !4984, file: !80, line: 429, type: !4985)
!4984 = distinct !DILexicalBlock(scope: !4982, file: !80, line: 428, column: 49)
!4985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !4986)
!4986 = !{!4987}
!4987 = !DISubrange(count: 8)
!4988 = !DILocation(line: 429, column: 18, scope: !4984)
!4989 = !DILocation(line: 431, column: 43, scope: !4984)
!4990 = !DILocation(line: 431, column: 54, scope: !4984)
!4991 = !DILocation(line: 431, column: 9, scope: !4984)
!4992 = !DILocation(line: 432, column: 16, scope: !4984)
!4993 = !DILocation(line: 432, column: 9, scope: !4984)
!4994 = !DILocation(line: 432, column: 14, scope: !4984)
!4995 = !DILocation(line: 433, column: 9, scope: !4984)
!4996 = !DILocation(line: 433, column: 14, scope: !4984)
!4997 = !DILocation(line: 434, column: 9, scope: !4984)
!4998 = !DILocation(line: 434, column: 14, scope: !4984)
!4999 = !DILocation(line: 435, column: 16, scope: !4984)
!5000 = !DILocation(line: 435, column: 9, scope: !4984)
!5001 = !DILocation(line: 435, column: 14, scope: !4984)
!5002 = !DILocation(line: 436, column: 9, scope: !4984)
!5003 = !DILocation(line: 436, column: 14, scope: !4984)
!5004 = !DILocation(line: 437, column: 9, scope: !4984)
!5005 = !DILocation(line: 437, column: 14, scope: !4984)
!5006 = !DILocation(line: 438, column: 9, scope: !4984)
!5007 = !DILocation(line: 440, column: 14, scope: !4984)
!5008 = !DILocation(line: 440, column: 19, scope: !4984)
!5009 = !DILocation(line: 441, column: 16, scope: !4984)
!5010 = !DILocation(line: 441, column: 21, scope: !4984)
!5011 = !DILocation(line: 441, column: 13, scope: !4984)
!5012 = !DILocation(line: 442, column: 16, scope: !4984)
!5013 = !DILocation(line: 442, column: 21, scope: !4984)
!5014 = !DILocation(line: 442, column: 13, scope: !4984)
!5015 = !DILocation(line: 443, column: 16, scope: !4984)
!5016 = !DILocation(line: 443, column: 21, scope: !4984)
!5017 = !DILocation(line: 443, column: 13, scope: !4984)
!5018 = !DILocation(line: 439, column: 9, scope: !4984)
!5019 = !DILocation(line: 439, column: 26, scope: !4984)
!5020 = !DILocation(line: 445, column: 14, scope: !4984)
!5021 = !DILocation(line: 445, column: 19, scope: !4984)
!5022 = !DILocation(line: 446, column: 16, scope: !4984)
!5023 = !DILocation(line: 446, column: 21, scope: !4984)
!5024 = !DILocation(line: 446, column: 13, scope: !4984)
!5025 = !DILocation(line: 447, column: 16, scope: !4984)
!5026 = !DILocation(line: 447, column: 21, scope: !4984)
!5027 = !DILocation(line: 447, column: 13, scope: !4984)
!5028 = !DILocation(line: 448, column: 16, scope: !4984)
!5029 = !DILocation(line: 448, column: 21, scope: !4984)
!5030 = !DILocation(line: 448, column: 13, scope: !4984)
!5031 = !DILocation(line: 444, column: 21, scope: !4984)
!5032 = !DILocation(line: 444, column: 9, scope: !4984)
!5033 = !DILocation(line: 444, column: 26, scope: !4984)
!5034 = !DILocation(line: 428, column: 35, scope: !4982)
!5035 = !DILocation(line: 428, column: 43, scope: !4982)
!5036 = !DILocation(line: 428, column: 5, scope: !4982)
!5037 = distinct !{!5037, !4950, !5038, !244}
!5038 = !DILocation(line: 449, column: 5, scope: !4951)
!5039 = !DILocation(line: 450, column: 1, scope: !4917)
!5040 = distinct !DISubprogram(name: "br_aes_ct64_skey_expand", scope: !80, file: !80, line: 452, type: !5041, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{null, !5, !428, !17}
!5043 = !DILocalVariable(name: "skey", arg: 1, scope: !5040, file: !80, line: 452, type: !5)
!5044 = !DILocation(line: 0, scope: !5040)
!5045 = !DILocalVariable(name: "comp_skey", arg: 2, scope: !5040, file: !80, line: 452, type: !428)
!5046 = !DILocalVariable(name: "nrounds", arg: 3, scope: !5040, file: !80, line: 452, type: !17)
!5047 = !DILocation(line: 455, column: 23, scope: !5040)
!5048 = !DILocalVariable(name: "n", scope: !5040, file: !80, line: 453, type: !17)
!5049 = !DILocalVariable(name: "u", scope: !5040, file: !80, line: 453, type: !17)
!5050 = !DILocalVariable(name: "v", scope: !5040, file: !80, line: 453, type: !17)
!5051 = !DILocation(line: 456, column: 10, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5040, file: !80, line: 456, column: 5)
!5053 = !DILocation(line: 456, scope: !5052)
!5054 = !DILocation(line: 456, column: 26, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5052, file: !80, line: 456, column: 5)
!5056 = !DILocation(line: 456, column: 5, scope: !5052)
!5057 = !DILocation(line: 459, column: 29, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5055, file: !80, line: 456, column: 45)
!5059 = !DILocalVariable(name: "x3", scope: !5058, file: !80, line: 457, type: !6)
!5060 = !DILocation(line: 0, scope: !5058)
!5061 = !DILocalVariable(name: "x2", scope: !5058, file: !80, line: 457, type: !6)
!5062 = !DILocalVariable(name: "x1", scope: !5058, file: !80, line: 457, type: !6)
!5063 = !DILocalVariable(name: "x0", scope: !5058, file: !80, line: 457, type: !6)
!5064 = !DILocation(line: 460, column: 12, scope: !5058)
!5065 = !DILocation(line: 464, column: 12, scope: !5058)
!5066 = !DILocation(line: 465, column: 12, scope: !5058)
!5067 = !DILocation(line: 466, column: 12, scope: !5058)
!5068 = !DILocation(line: 467, column: 33, scope: !5058)
!5069 = !DILocation(line: 467, column: 9, scope: !5058)
!5070 = !DILocation(line: 467, column: 21, scope: !5058)
!5071 = !DILocation(line: 468, column: 33, scope: !5058)
!5072 = !DILocation(line: 468, column: 16, scope: !5058)
!5073 = !DILocation(line: 468, column: 9, scope: !5058)
!5074 = !DILocation(line: 468, column: 21, scope: !5058)
!5075 = !DILocation(line: 469, column: 33, scope: !5058)
!5076 = !DILocation(line: 469, column: 16, scope: !5058)
!5077 = !DILocation(line: 469, column: 9, scope: !5058)
!5078 = !DILocation(line: 469, column: 21, scope: !5058)
!5079 = !DILocation(line: 470, column: 33, scope: !5058)
!5080 = !DILocation(line: 470, column: 16, scope: !5058)
!5081 = !DILocation(line: 470, column: 9, scope: !5058)
!5082 = !DILocation(line: 470, column: 21, scope: !5058)
!5083 = !DILocation(line: 456, column: 33, scope: !5055)
!5084 = !DILocation(line: 456, column: 39, scope: !5055)
!5085 = !DILocation(line: 456, column: 5, scope: !5055)
!5086 = distinct !{!5086, !5056, !5087, !244}
!5087 = !DILocation(line: 471, column: 5, scope: !5052)
!5088 = !DILocation(line: 472, column: 1, scope: !5040)
!5089 = distinct !DISubprogram(name: "br_range_dec32le", scope: !80, file: !80, line: 104, type: !5090, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{null, !5092, !15, !49}
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!5093 = !DILocalVariable(name: "v", arg: 1, scope: !5089, file: !80, line: 104, type: !5092)
!5094 = !DILocation(line: 0, scope: !5089)
!5095 = !DILocalVariable(name: "num", arg: 2, scope: !5089, file: !80, line: 104, type: !15)
!5096 = !DILocalVariable(name: "src", arg: 3, scope: !5089, file: !80, line: 104, type: !49)
!5097 = !DILocation(line: 105, column: 5, scope: !5089)
!5098 = !DILocation(line: 105, column: 18, scope: !5089)
!5099 = !DILocation(line: 105, column: 15, scope: !5089)
!5100 = !DILocation(line: 106, column: 17, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5089, file: !80, line: 105, column: 23)
!5102 = !DILocation(line: 106, column: 12, scope: !5101)
!5103 = !DILocation(line: 106, column: 15, scope: !5101)
!5104 = !DILocation(line: 107, column: 13, scope: !5101)
!5105 = distinct !{!5105, !5097, !5106, !244}
!5106 = !DILocation(line: 108, column: 5, scope: !5089)
!5107 = !DILocation(line: 109, column: 1, scope: !5089)
!5108 = distinct !DISubprogram(name: "sub_word", scope: !80, file: !80, line: 392, type: !5109, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{!19, !19}
!5111 = !DILocalVariable(name: "x", arg: 1, scope: !5108, file: !80, line: 392, type: !19)
!5112 = !DILocation(line: 0, scope: !5108)
!5113 = !DILocalVariable(name: "q", scope: !5108, file: !80, line: 393, type: !4985)
!5114 = !DILocation(line: 393, column: 14, scope: !5108)
!5115 = !DILocation(line: 395, column: 5, scope: !5108)
!5116 = !DILocation(line: 396, column: 12, scope: !5108)
!5117 = !DILocation(line: 396, column: 10, scope: !5108)
!5118 = !DILocation(line: 397, column: 5, scope: !5108)
!5119 = !DILocation(line: 398, column: 5, scope: !5108)
!5120 = !DILocation(line: 399, column: 5, scope: !5108)
!5121 = !DILocation(line: 400, column: 22, scope: !5108)
!5122 = !DILocation(line: 400, column: 12, scope: !5108)
!5123 = !DILocation(line: 400, column: 5, scope: !5108)
!5124 = distinct !DISubprogram(name: "br_aes_ct64_interleave_in", scope: !80, file: !80, line: 339, type: !5125, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{null, !5, !5, !5127}
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 32)
!5128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!5129 = !DILocalVariable(name: "q0", arg: 1, scope: !5124, file: !80, line: 339, type: !5)
!5130 = !DILocation(line: 0, scope: !5124)
!5131 = !DILocalVariable(name: "q1", arg: 2, scope: !5124, file: !80, line: 339, type: !5)
!5132 = !DILocalVariable(name: "w", arg: 3, scope: !5124, file: !80, line: 339, type: !5127)
!5133 = !DILocation(line: 342, column: 10, scope: !5124)
!5134 = !DILocalVariable(name: "x0", scope: !5124, file: !80, line: 340, type: !6)
!5135 = !DILocation(line: 343, column: 10, scope: !5124)
!5136 = !DILocalVariable(name: "x1", scope: !5124, file: !80, line: 340, type: !6)
!5137 = !DILocation(line: 344, column: 10, scope: !5124)
!5138 = !DILocalVariable(name: "x2", scope: !5124, file: !80, line: 340, type: !6)
!5139 = !DILocation(line: 345, column: 10, scope: !5124)
!5140 = !DILocalVariable(name: "x3", scope: !5124, file: !80, line: 340, type: !6)
!5141 = !DILocation(line: 346, column: 15, scope: !5124)
!5142 = !DILocation(line: 346, column: 8, scope: !5124)
!5143 = !DILocation(line: 347, column: 15, scope: !5124)
!5144 = !DILocation(line: 347, column: 8, scope: !5124)
!5145 = !DILocation(line: 348, column: 15, scope: !5124)
!5146 = !DILocation(line: 348, column: 8, scope: !5124)
!5147 = !DILocation(line: 349, column: 15, scope: !5124)
!5148 = !DILocation(line: 349, column: 8, scope: !5124)
!5149 = !DILocation(line: 350, column: 8, scope: !5124)
!5150 = !DILocation(line: 351, column: 8, scope: !5124)
!5151 = !DILocation(line: 352, column: 8, scope: !5124)
!5152 = !DILocation(line: 353, column: 8, scope: !5124)
!5153 = !DILocation(line: 354, column: 15, scope: !5124)
!5154 = !DILocation(line: 354, column: 8, scope: !5124)
!5155 = !DILocation(line: 355, column: 15, scope: !5124)
!5156 = !DILocation(line: 355, column: 8, scope: !5124)
!5157 = !DILocation(line: 358, column: 8, scope: !5124)
!5158 = !DILocation(line: 359, column: 8, scope: !5124)
!5159 = !DILocation(line: 362, column: 20, scope: !5124)
!5160 = !DILocation(line: 362, column: 14, scope: !5124)
!5161 = !DILocation(line: 362, column: 9, scope: !5124)
!5162 = !DILocation(line: 363, column: 20, scope: !5124)
!5163 = !DILocation(line: 363, column: 14, scope: !5124)
!5164 = !DILocation(line: 363, column: 9, scope: !5124)
!5165 = !DILocation(line: 364, column: 1, scope: !5124)
!5166 = distinct !DISubprogram(name: "br_aes_ct64_ortho", scope: !80, file: !80, line: 309, type: !26, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5167 = !DILocalVariable(name: "q", arg: 1, scope: !5166, file: !80, line: 309, type: !5)
!5168 = !DILocation(line: 0, scope: !5166)
!5169 = !DILocation(line: 322, column: 5, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5166, file: !80, line: 322, column: 5)
!5171 = !DILocalVariable(name: "a", scope: !5170, file: !80, line: 322, type: !6)
!5172 = !DILocation(line: 0, scope: !5170)
!5173 = !DILocalVariable(name: "b", scope: !5170, file: !80, line: 322, type: !6)
!5174 = !DILocation(line: 323, column: 5, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5166, file: !80, line: 323, column: 5)
!5176 = !DILocalVariable(name: "a", scope: !5175, file: !80, line: 323, type: !6)
!5177 = !DILocation(line: 0, scope: !5175)
!5178 = !DILocalVariable(name: "b", scope: !5175, file: !80, line: 323, type: !6)
!5179 = !DILocation(line: 324, column: 5, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5166, file: !80, line: 324, column: 5)
!5181 = !DILocalVariable(name: "a", scope: !5180, file: !80, line: 324, type: !6)
!5182 = !DILocation(line: 0, scope: !5180)
!5183 = !DILocalVariable(name: "b", scope: !5180, file: !80, line: 324, type: !6)
!5184 = !DILocation(line: 325, column: 5, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5166, file: !80, line: 325, column: 5)
!5186 = !DILocalVariable(name: "a", scope: !5185, file: !80, line: 325, type: !6)
!5187 = !DILocation(line: 0, scope: !5185)
!5188 = !DILocalVariable(name: "b", scope: !5185, file: !80, line: 325, type: !6)
!5189 = !DILocation(line: 327, column: 5, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5166, file: !80, line: 327, column: 5)
!5191 = !DILocalVariable(name: "a", scope: !5190, file: !80, line: 327, type: !6)
!5192 = !DILocation(line: 0, scope: !5190)
!5193 = !DILocalVariable(name: "b", scope: !5190, file: !80, line: 327, type: !6)
!5194 = !DILocation(line: 328, column: 5, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5166, file: !80, line: 328, column: 5)
!5196 = !DILocalVariable(name: "a", scope: !5195, file: !80, line: 328, type: !6)
!5197 = !DILocation(line: 0, scope: !5195)
!5198 = !DILocalVariable(name: "b", scope: !5195, file: !80, line: 328, type: !6)
!5199 = !DILocation(line: 329, column: 5, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5166, file: !80, line: 329, column: 5)
!5201 = !DILocalVariable(name: "a", scope: !5200, file: !80, line: 329, type: !6)
!5202 = !DILocation(line: 0, scope: !5200)
!5203 = !DILocalVariable(name: "b", scope: !5200, file: !80, line: 329, type: !6)
!5204 = !DILocation(line: 330, column: 5, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5166, file: !80, line: 330, column: 5)
!5206 = !DILocalVariable(name: "a", scope: !5205, file: !80, line: 330, type: !6)
!5207 = !DILocation(line: 0, scope: !5205)
!5208 = !DILocalVariable(name: "b", scope: !5205, file: !80, line: 330, type: !6)
!5209 = !DILocation(line: 332, column: 5, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5166, file: !80, line: 332, column: 5)
!5211 = !DILocalVariable(name: "a", scope: !5210, file: !80, line: 332, type: !6)
!5212 = !DILocation(line: 0, scope: !5210)
!5213 = !DILocalVariable(name: "b", scope: !5210, file: !80, line: 332, type: !6)
!5214 = !DILocation(line: 333, column: 5, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5166, file: !80, line: 333, column: 5)
!5216 = !DILocalVariable(name: "a", scope: !5215, file: !80, line: 333, type: !6)
!5217 = !DILocation(line: 0, scope: !5215)
!5218 = !DILocalVariable(name: "b", scope: !5215, file: !80, line: 333, type: !6)
!5219 = !DILocation(line: 334, column: 5, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5166, file: !80, line: 334, column: 5)
!5221 = !DILocalVariable(name: "a", scope: !5220, file: !80, line: 334, type: !6)
!5222 = !DILocation(line: 0, scope: !5220)
!5223 = !DILocalVariable(name: "b", scope: !5220, file: !80, line: 334, type: !6)
!5224 = !DILocation(line: 335, column: 5, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5166, file: !80, line: 335, column: 5)
!5226 = !DILocalVariable(name: "a", scope: !5225, file: !80, line: 335, type: !6)
!5227 = !DILocation(line: 0, scope: !5225)
!5228 = !DILocalVariable(name: "b", scope: !5225, file: !80, line: 335, type: !6)
!5229 = !DILocation(line: 336, column: 1, scope: !5166)
!5230 = distinct !DISubprogram(name: "br_aes_ct64_bitslice_Sbox", scope: !80, file: !80, line: 135, type: !26, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5231 = !DILocalVariable(name: "q", arg: 1, scope: !5230, file: !80, line: 135, type: !5)
!5232 = !DILocation(line: 0, scope: !5230)
!5233 = !DILocation(line: 161, column: 10, scope: !5230)
!5234 = !DILocalVariable(name: "x0", scope: !5230, file: !80, line: 146, type: !6)
!5235 = !DILocation(line: 162, column: 10, scope: !5230)
!5236 = !DILocalVariable(name: "x1", scope: !5230, file: !80, line: 146, type: !6)
!5237 = !DILocation(line: 163, column: 10, scope: !5230)
!5238 = !DILocalVariable(name: "x2", scope: !5230, file: !80, line: 146, type: !6)
!5239 = !DILocation(line: 164, column: 10, scope: !5230)
!5240 = !DILocalVariable(name: "x3", scope: !5230, file: !80, line: 146, type: !6)
!5241 = !DILocation(line: 165, column: 10, scope: !5230)
!5242 = !DILocalVariable(name: "x4", scope: !5230, file: !80, line: 146, type: !6)
!5243 = !DILocation(line: 166, column: 10, scope: !5230)
!5244 = !DILocalVariable(name: "x5", scope: !5230, file: !80, line: 146, type: !6)
!5245 = !DILocation(line: 167, column: 10, scope: !5230)
!5246 = !DILocalVariable(name: "x6", scope: !5230, file: !80, line: 146, type: !6)
!5247 = !DILocation(line: 168, column: 10, scope: !5230)
!5248 = !DILocalVariable(name: "x7", scope: !5230, file: !80, line: 146, type: !6)
!5249 = !DILocation(line: 173, column: 14, scope: !5230)
!5250 = !DILocalVariable(name: "y14", scope: !5230, file: !80, line: 148, type: !6)
!5251 = !DILocation(line: 174, column: 14, scope: !5230)
!5252 = !DILocalVariable(name: "y13", scope: !5230, file: !80, line: 148, type: !6)
!5253 = !DILocation(line: 175, column: 13, scope: !5230)
!5254 = !DILocalVariable(name: "y9", scope: !5230, file: !80, line: 147, type: !6)
!5255 = !DILocation(line: 176, column: 13, scope: !5230)
!5256 = !DILocalVariable(name: "y8", scope: !5230, file: !80, line: 147, type: !6)
!5257 = !DILocation(line: 177, column: 13, scope: !5230)
!5258 = !DILocalVariable(name: "t0", scope: !5230, file: !80, line: 152, type: !6)
!5259 = !DILocation(line: 178, column: 13, scope: !5230)
!5260 = !DILocalVariable(name: "y1", scope: !5230, file: !80, line: 147, type: !6)
!5261 = !DILocation(line: 179, column: 13, scope: !5230)
!5262 = !DILocalVariable(name: "y4", scope: !5230, file: !80, line: 147, type: !6)
!5263 = !DILocation(line: 180, column: 15, scope: !5230)
!5264 = !DILocalVariable(name: "y12", scope: !5230, file: !80, line: 148, type: !6)
!5265 = !DILocation(line: 181, column: 13, scope: !5230)
!5266 = !DILocalVariable(name: "y2", scope: !5230, file: !80, line: 147, type: !6)
!5267 = !DILocation(line: 182, column: 13, scope: !5230)
!5268 = !DILocalVariable(name: "y5", scope: !5230, file: !80, line: 147, type: !6)
!5269 = !DILocation(line: 183, column: 13, scope: !5230)
!5270 = !DILocalVariable(name: "y3", scope: !5230, file: !80, line: 147, type: !6)
!5271 = !DILocation(line: 184, column: 13, scope: !5230)
!5272 = !DILocalVariable(name: "t1", scope: !5230, file: !80, line: 152, type: !6)
!5273 = !DILocation(line: 185, column: 14, scope: !5230)
!5274 = !DILocalVariable(name: "y15", scope: !5230, file: !80, line: 148, type: !6)
!5275 = !DILocation(line: 186, column: 14, scope: !5230)
!5276 = !DILocalVariable(name: "y20", scope: !5230, file: !80, line: 149, type: !6)
!5277 = !DILocation(line: 187, column: 14, scope: !5230)
!5278 = !DILocalVariable(name: "y6", scope: !5230, file: !80, line: 147, type: !6)
!5279 = !DILocation(line: 188, column: 15, scope: !5230)
!5280 = !DILocalVariable(name: "y10", scope: !5230, file: !80, line: 148, type: !6)
!5281 = !DILocation(line: 189, column: 15, scope: !5230)
!5282 = !DILocalVariable(name: "y11", scope: !5230, file: !80, line: 148, type: !6)
!5283 = !DILocation(line: 190, column: 13, scope: !5230)
!5284 = !DILocalVariable(name: "y7", scope: !5230, file: !80, line: 147, type: !6)
!5285 = !DILocation(line: 191, column: 15, scope: !5230)
!5286 = !DILocalVariable(name: "y17", scope: !5230, file: !80, line: 148, type: !6)
!5287 = !DILocalVariable(name: "y19", scope: !5230, file: !80, line: 148, type: !6)
!5288 = !DILocation(line: 193, column: 14, scope: !5230)
!5289 = !DILocalVariable(name: "y16", scope: !5230, file: !80, line: 148, type: !6)
!5290 = !DILocalVariable(name: "y21", scope: !5230, file: !80, line: 149, type: !6)
!5291 = !DILocalVariable(name: "y18", scope: !5230, file: !80, line: 148, type: !6)
!5292 = !DILocation(line: 200, column: 14, scope: !5230)
!5293 = !DILocalVariable(name: "t2", scope: !5230, file: !80, line: 152, type: !6)
!5294 = !DILocation(line: 201, column: 13, scope: !5230)
!5295 = !DILocalVariable(name: "t3", scope: !5230, file: !80, line: 152, type: !6)
!5296 = !DILocation(line: 202, column: 13, scope: !5230)
!5297 = !DILocalVariable(name: "t4", scope: !5230, file: !80, line: 152, type: !6)
!5298 = !DILocation(line: 203, column: 13, scope: !5230)
!5299 = !DILocalVariable(name: "t5", scope: !5230, file: !80, line: 152, type: !6)
!5300 = !DILocalVariable(name: "t6", scope: !5230, file: !80, line: 152, type: !6)
!5301 = !DILocation(line: 205, column: 14, scope: !5230)
!5302 = !DILocalVariable(name: "t7", scope: !5230, file: !80, line: 152, type: !6)
!5303 = !DILocation(line: 206, column: 13, scope: !5230)
!5304 = !DILocalVariable(name: "t8", scope: !5230, file: !80, line: 152, type: !6)
!5305 = !DILocalVariable(name: "t9", scope: !5230, file: !80, line: 152, type: !6)
!5306 = !DILocation(line: 208, column: 14, scope: !5230)
!5307 = !DILocalVariable(name: "t10", scope: !5230, file: !80, line: 153, type: !6)
!5308 = !DILocalVariable(name: "t11", scope: !5230, file: !80, line: 153, type: !6)
!5309 = !DILocation(line: 210, column: 14, scope: !5230)
!5310 = !DILocalVariable(name: "t12", scope: !5230, file: !80, line: 153, type: !6)
!5311 = !DILocation(line: 211, column: 15, scope: !5230)
!5312 = !DILocalVariable(name: "t13", scope: !5230, file: !80, line: 153, type: !6)
!5313 = !DILocation(line: 212, column: 15, scope: !5230)
!5314 = !DILocalVariable(name: "t14", scope: !5230, file: !80, line: 153, type: !6)
!5315 = !DILocation(line: 213, column: 14, scope: !5230)
!5316 = !DILocalVariable(name: "t15", scope: !5230, file: !80, line: 153, type: !6)
!5317 = !DILocation(line: 214, column: 15, scope: !5230)
!5318 = !DILocalVariable(name: "t16", scope: !5230, file: !80, line: 153, type: !6)
!5319 = !DILocation(line: 215, column: 14, scope: !5230)
!5320 = !DILocalVariable(name: "t17", scope: !5230, file: !80, line: 153, type: !6)
!5321 = !DILocalVariable(name: "t18", scope: !5230, file: !80, line: 153, type: !6)
!5322 = !DILocalVariable(name: "t19", scope: !5230, file: !80, line: 153, type: !6)
!5323 = !DILocalVariable(name: "t20", scope: !5230, file: !80, line: 154, type: !6)
!5324 = !DILocation(line: 219, column: 15, scope: !5230)
!5325 = !DILocalVariable(name: "t21", scope: !5230, file: !80, line: 154, type: !6)
!5326 = !DILocation(line: 220, column: 15, scope: !5230)
!5327 = !DILocalVariable(name: "t22", scope: !5230, file: !80, line: 154, type: !6)
!5328 = !DILocation(line: 221, column: 15, scope: !5230)
!5329 = !DILocalVariable(name: "t23", scope: !5230, file: !80, line: 154, type: !6)
!5330 = !DILocation(line: 222, column: 15, scope: !5230)
!5331 = !DILocalVariable(name: "t24", scope: !5230, file: !80, line: 154, type: !6)
!5332 = !DILocation(line: 224, column: 15, scope: !5230)
!5333 = !DILocalVariable(name: "t25", scope: !5230, file: !80, line: 154, type: !6)
!5334 = !DILocation(line: 225, column: 15, scope: !5230)
!5335 = !DILocalVariable(name: "t26", scope: !5230, file: !80, line: 154, type: !6)
!5336 = !DILocation(line: 226, column: 15, scope: !5230)
!5337 = !DILocalVariable(name: "t27", scope: !5230, file: !80, line: 154, type: !6)
!5338 = !DILocation(line: 227, column: 15, scope: !5230)
!5339 = !DILocalVariable(name: "t28", scope: !5230, file: !80, line: 154, type: !6)
!5340 = !DILocation(line: 228, column: 15, scope: !5230)
!5341 = !DILocalVariable(name: "t29", scope: !5230, file: !80, line: 154, type: !6)
!5342 = !DILocation(line: 229, column: 15, scope: !5230)
!5343 = !DILocalVariable(name: "t30", scope: !5230, file: !80, line: 155, type: !6)
!5344 = !DILocation(line: 230, column: 15, scope: !5230)
!5345 = !DILocalVariable(name: "t31", scope: !5230, file: !80, line: 155, type: !6)
!5346 = !DILocation(line: 231, column: 15, scope: !5230)
!5347 = !DILocalVariable(name: "t32", scope: !5230, file: !80, line: 155, type: !6)
!5348 = !DILocation(line: 232, column: 15, scope: !5230)
!5349 = !DILocalVariable(name: "t33", scope: !5230, file: !80, line: 155, type: !6)
!5350 = !DILocation(line: 233, column: 15, scope: !5230)
!5351 = !DILocalVariable(name: "t34", scope: !5230, file: !80, line: 155, type: !6)
!5352 = !DILocation(line: 234, column: 15, scope: !5230)
!5353 = !DILocalVariable(name: "t35", scope: !5230, file: !80, line: 155, type: !6)
!5354 = !DILocation(line: 235, column: 15, scope: !5230)
!5355 = !DILocalVariable(name: "t36", scope: !5230, file: !80, line: 155, type: !6)
!5356 = !DILocation(line: 236, column: 15, scope: !5230)
!5357 = !DILocalVariable(name: "t37", scope: !5230, file: !80, line: 155, type: !6)
!5358 = !DILocation(line: 237, column: 15, scope: !5230)
!5359 = !DILocalVariable(name: "t38", scope: !5230, file: !80, line: 155, type: !6)
!5360 = !DILocation(line: 238, column: 15, scope: !5230)
!5361 = !DILocalVariable(name: "t39", scope: !5230, file: !80, line: 155, type: !6)
!5362 = !DILocation(line: 239, column: 15, scope: !5230)
!5363 = !DILocalVariable(name: "t40", scope: !5230, file: !80, line: 156, type: !6)
!5364 = !DILocation(line: 241, column: 15, scope: !5230)
!5365 = !DILocalVariable(name: "t41", scope: !5230, file: !80, line: 156, type: !6)
!5366 = !DILocation(line: 242, column: 15, scope: !5230)
!5367 = !DILocalVariable(name: "t42", scope: !5230, file: !80, line: 156, type: !6)
!5368 = !DILocation(line: 243, column: 15, scope: !5230)
!5369 = !DILocalVariable(name: "t43", scope: !5230, file: !80, line: 156, type: !6)
!5370 = !DILocation(line: 244, column: 15, scope: !5230)
!5371 = !DILocalVariable(name: "t44", scope: !5230, file: !80, line: 156, type: !6)
!5372 = !DILocation(line: 245, column: 15, scope: !5230)
!5373 = !DILocalVariable(name: "t45", scope: !5230, file: !80, line: 156, type: !6)
!5374 = !DILocation(line: 246, column: 14, scope: !5230)
!5375 = !DILocalVariable(name: "z0", scope: !5230, file: !80, line: 150, type: !6)
!5376 = !DILocation(line: 247, column: 14, scope: !5230)
!5377 = !DILocalVariable(name: "z1", scope: !5230, file: !80, line: 150, type: !6)
!5378 = !DILocation(line: 248, column: 14, scope: !5230)
!5379 = !DILocalVariable(name: "z2", scope: !5230, file: !80, line: 150, type: !6)
!5380 = !DILocation(line: 249, column: 14, scope: !5230)
!5381 = !DILocalVariable(name: "z3", scope: !5230, file: !80, line: 150, type: !6)
!5382 = !DILocation(line: 250, column: 14, scope: !5230)
!5383 = !DILocalVariable(name: "z4", scope: !5230, file: !80, line: 150, type: !6)
!5384 = !DILocation(line: 251, column: 14, scope: !5230)
!5385 = !DILocalVariable(name: "z5", scope: !5230, file: !80, line: 150, type: !6)
!5386 = !DILocation(line: 252, column: 14, scope: !5230)
!5387 = !DILocalVariable(name: "z6", scope: !5230, file: !80, line: 150, type: !6)
!5388 = !DILocation(line: 253, column: 14, scope: !5230)
!5389 = !DILocalVariable(name: "z7", scope: !5230, file: !80, line: 150, type: !6)
!5390 = !DILocation(line: 254, column: 14, scope: !5230)
!5391 = !DILocalVariable(name: "z8", scope: !5230, file: !80, line: 150, type: !6)
!5392 = !DILocation(line: 255, column: 14, scope: !5230)
!5393 = !DILocalVariable(name: "z9", scope: !5230, file: !80, line: 150, type: !6)
!5394 = !DILocation(line: 256, column: 15, scope: !5230)
!5395 = !DILocalVariable(name: "z10", scope: !5230, file: !80, line: 151, type: !6)
!5396 = !DILocation(line: 257, column: 15, scope: !5230)
!5397 = !DILocalVariable(name: "z11", scope: !5230, file: !80, line: 151, type: !6)
!5398 = !DILocation(line: 258, column: 15, scope: !5230)
!5399 = !DILocalVariable(name: "z12", scope: !5230, file: !80, line: 151, type: !6)
!5400 = !DILocation(line: 259, column: 15, scope: !5230)
!5401 = !DILocalVariable(name: "z13", scope: !5230, file: !80, line: 151, type: !6)
!5402 = !DILocation(line: 260, column: 15, scope: !5230)
!5403 = !DILocalVariable(name: "z14", scope: !5230, file: !80, line: 151, type: !6)
!5404 = !DILocation(line: 261, column: 15, scope: !5230)
!5405 = !DILocalVariable(name: "z15", scope: !5230, file: !80, line: 151, type: !6)
!5406 = !DILocation(line: 262, column: 15, scope: !5230)
!5407 = !DILocalVariable(name: "z16", scope: !5230, file: !80, line: 151, type: !6)
!5408 = !DILocation(line: 263, column: 15, scope: !5230)
!5409 = !DILocalVariable(name: "z17", scope: !5230, file: !80, line: 151, type: !6)
!5410 = !DILocation(line: 268, column: 15, scope: !5230)
!5411 = !DILocalVariable(name: "t46", scope: !5230, file: !80, line: 156, type: !6)
!5412 = !DILocation(line: 269, column: 15, scope: !5230)
!5413 = !DILocalVariable(name: "t47", scope: !5230, file: !80, line: 156, type: !6)
!5414 = !DILocation(line: 270, column: 14, scope: !5230)
!5415 = !DILocalVariable(name: "t48", scope: !5230, file: !80, line: 156, type: !6)
!5416 = !DILocation(line: 271, column: 14, scope: !5230)
!5417 = !DILocalVariable(name: "t49", scope: !5230, file: !80, line: 156, type: !6)
!5418 = !DILocation(line: 272, column: 14, scope: !5230)
!5419 = !DILocalVariable(name: "t50", scope: !5230, file: !80, line: 157, type: !6)
!5420 = !DILocation(line: 273, column: 14, scope: !5230)
!5421 = !DILocalVariable(name: "t51", scope: !5230, file: !80, line: 157, type: !6)
!5422 = !DILocation(line: 274, column: 14, scope: !5230)
!5423 = !DILocalVariable(name: "t52", scope: !5230, file: !80, line: 157, type: !6)
!5424 = !DILocation(line: 275, column: 14, scope: !5230)
!5425 = !DILocalVariable(name: "t53", scope: !5230, file: !80, line: 157, type: !6)
!5426 = !DILocation(line: 276, column: 14, scope: !5230)
!5427 = !DILocalVariable(name: "t54", scope: !5230, file: !80, line: 157, type: !6)
!5428 = !DILocation(line: 277, column: 15, scope: !5230)
!5429 = !DILocalVariable(name: "t55", scope: !5230, file: !80, line: 157, type: !6)
!5430 = !DILocation(line: 278, column: 15, scope: !5230)
!5431 = !DILocalVariable(name: "t56", scope: !5230, file: !80, line: 157, type: !6)
!5432 = !DILocation(line: 279, column: 15, scope: !5230)
!5433 = !DILocalVariable(name: "t57", scope: !5230, file: !80, line: 157, type: !6)
!5434 = !DILocation(line: 280, column: 14, scope: !5230)
!5435 = !DILocalVariable(name: "t58", scope: !5230, file: !80, line: 157, type: !6)
!5436 = !DILocation(line: 281, column: 14, scope: !5230)
!5437 = !DILocalVariable(name: "t59", scope: !5230, file: !80, line: 157, type: !6)
!5438 = !DILocation(line: 282, column: 15, scope: !5230)
!5439 = !DILocalVariable(name: "t60", scope: !5230, file: !80, line: 158, type: !6)
!5440 = !DILocation(line: 283, column: 15, scope: !5230)
!5441 = !DILocalVariable(name: "t61", scope: !5230, file: !80, line: 158, type: !6)
!5442 = !DILocation(line: 284, column: 15, scope: !5230)
!5443 = !DILocalVariable(name: "t62", scope: !5230, file: !80, line: 158, type: !6)
!5444 = !DILocation(line: 285, column: 15, scope: !5230)
!5445 = !DILocalVariable(name: "t63", scope: !5230, file: !80, line: 158, type: !6)
!5446 = !DILocation(line: 286, column: 14, scope: !5230)
!5447 = !DILocalVariable(name: "t64", scope: !5230, file: !80, line: 158, type: !6)
!5448 = !DILocation(line: 287, column: 15, scope: !5230)
!5449 = !DILocalVariable(name: "t65", scope: !5230, file: !80, line: 158, type: !6)
!5450 = !DILocation(line: 288, column: 14, scope: !5230)
!5451 = !DILocalVariable(name: "t66", scope: !5230, file: !80, line: 158, type: !6)
!5452 = !DILocation(line: 289, column: 14, scope: !5230)
!5453 = !DILocalVariable(name: "s0", scope: !5230, file: !80, line: 159, type: !6)
!5454 = !DILocation(line: 290, column: 14, scope: !5230)
!5455 = !DILocalVariable(name: "s6", scope: !5230, file: !80, line: 159, type: !6)
!5456 = !DILocation(line: 291, column: 14, scope: !5230)
!5457 = !DILocalVariable(name: "s7", scope: !5230, file: !80, line: 159, type: !6)
!5458 = !DILocalVariable(name: "t67", scope: !5230, file: !80, line: 158, type: !6)
!5459 = !DILocation(line: 293, column: 14, scope: !5230)
!5460 = !DILocalVariable(name: "s3", scope: !5230, file: !80, line: 159, type: !6)
!5461 = !DILocation(line: 294, column: 14, scope: !5230)
!5462 = !DILocalVariable(name: "s4", scope: !5230, file: !80, line: 159, type: !6)
!5463 = !DILocation(line: 295, column: 14, scope: !5230)
!5464 = !DILocalVariable(name: "s5", scope: !5230, file: !80, line: 159, type: !6)
!5465 = !DILocation(line: 296, column: 14, scope: !5230)
!5466 = !DILocalVariable(name: "s1", scope: !5230, file: !80, line: 159, type: !6)
!5467 = !DILocation(line: 297, column: 14, scope: !5230)
!5468 = !DILocalVariable(name: "s2", scope: !5230, file: !80, line: 159, type: !6)
!5469 = !DILocation(line: 299, column: 5, scope: !5230)
!5470 = !DILocation(line: 299, column: 10, scope: !5230)
!5471 = !DILocation(line: 300, column: 5, scope: !5230)
!5472 = !DILocation(line: 300, column: 10, scope: !5230)
!5473 = !DILocation(line: 301, column: 5, scope: !5230)
!5474 = !DILocation(line: 301, column: 10, scope: !5230)
!5475 = !DILocation(line: 302, column: 5, scope: !5230)
!5476 = !DILocation(line: 302, column: 10, scope: !5230)
!5477 = !DILocation(line: 303, column: 5, scope: !5230)
!5478 = !DILocation(line: 303, column: 10, scope: !5230)
!5479 = !DILocation(line: 304, column: 5, scope: !5230)
!5480 = !DILocation(line: 304, column: 10, scope: !5230)
!5481 = !DILocation(line: 305, column: 5, scope: !5230)
!5482 = !DILocation(line: 305, column: 10, scope: !5230)
!5483 = !DILocation(line: 306, column: 10, scope: !5230)
!5484 = !DILocation(line: 307, column: 1, scope: !5230)
!5485 = distinct !DISubprogram(name: "br_dec32le", scope: !80, file: !80, line: 96, type: !5486, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5486 = !DISubroutineType(types: !5487)
!5487 = !{!19, !49}
!5488 = !DILocalVariable(name: "src", arg: 1, scope: !5485, file: !80, line: 96, type: !49)
!5489 = !DILocation(line: 0, scope: !5485)
!5490 = !DILocation(line: 97, column: 22, scope: !5485)
!5491 = !DILocation(line: 97, column: 12, scope: !5485)
!5492 = !DILocation(line: 98, column: 25, scope: !5485)
!5493 = !DILocation(line: 98, column: 15, scope: !5485)
!5494 = !DILocation(line: 98, column: 32, scope: !5485)
!5495 = !DILocation(line: 98, column: 12, scope: !5485)
!5496 = !DILocation(line: 99, column: 25, scope: !5485)
!5497 = !DILocation(line: 99, column: 15, scope: !5485)
!5498 = !DILocation(line: 99, column: 32, scope: !5485)
!5499 = !DILocation(line: 99, column: 12, scope: !5485)
!5500 = !DILocation(line: 100, column: 25, scope: !5485)
!5501 = !DILocation(line: 100, column: 15, scope: !5485)
!5502 = !DILocation(line: 100, column: 32, scope: !5485)
!5503 = !DILocation(line: 100, column: 12, scope: !5485)
!5504 = !DILocation(line: 97, column: 5, scope: !5485)
!5505 = distinct !DISubprogram(name: "aes128_ctr_keyexp", scope: !80, file: !80, line: 647, type: !4891, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5506 = !DILocalVariable(name: "r", arg: 1, scope: !5505, file: !80, line: 647, type: !4893)
!5507 = !DILocation(line: 0, scope: !5505)
!5508 = !DILocalVariable(name: "key", arg: 2, scope: !5505, file: !80, line: 647, type: !49)
!5509 = !DILocation(line: 648, column: 5, scope: !5505)
!5510 = !DILocation(line: 649, column: 1, scope: !5505)
!5511 = distinct !DISubprogram(name: "aes192_ecb_keyexp", scope: !80, file: !80, line: 652, type: !5512, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5512 = !DISubroutineType(types: !5513)
!5513 = !{null, !5514, !49}
!5514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5515, size: 32)
!5515 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes192ctx", file: !80, line: 51, baseType: !5516)
!5516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 49, size: 32, elements: !5517)
!5517 = !{!5518}
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5516, file: !80, line: 50, baseType: !5, size: 32)
!5519 = !DILocalVariable(name: "r", arg: 1, scope: !5511, file: !80, line: 652, type: !5514)
!5520 = !DILocation(line: 0, scope: !5511)
!5521 = !DILocalVariable(name: "key", arg: 2, scope: !5511, file: !80, line: 652, type: !49)
!5522 = !DILocalVariable(name: "skey", scope: !5511, file: !80, line: 653, type: !5523)
!5523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1664, elements: !5524)
!5524 = !{!5525}
!5525 = !DISubrange(count: 26)
!5526 = !DILocation(line: 653, column: 14, scope: !5511)
!5527 = !DILocation(line: 654, column: 17, scope: !5511)
!5528 = !DILocation(line: 654, column: 15, scope: !5511)
!5529 = !DILocation(line: 655, column: 19, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5511, file: !80, line: 655, column: 9)
!5531 = !DILocation(line: 656, column: 9, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5530, file: !80, line: 655, column: 28)
!5533 = !DILocation(line: 657, column: 5, scope: !5532)
!5534 = !DILocation(line: 659, column: 5, scope: !5511)
!5535 = !DILocation(line: 660, column: 32, scope: !5511)
!5536 = !DILocation(line: 660, column: 5, scope: !5511)
!5537 = !DILocation(line: 661, column: 1, scope: !5511)
!5538 = distinct !DISubprogram(name: "aes192_ctr_keyexp", scope: !80, file: !80, line: 664, type: !5512, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5539 = !DILocalVariable(name: "r", arg: 1, scope: !5538, file: !80, line: 664, type: !5514)
!5540 = !DILocation(line: 0, scope: !5538)
!5541 = !DILocalVariable(name: "key", arg: 2, scope: !5538, file: !80, line: 664, type: !49)
!5542 = !DILocation(line: 665, column: 5, scope: !5538)
!5543 = !DILocation(line: 666, column: 1, scope: !5538)
!5544 = distinct !DISubprogram(name: "aes256_ecb_keyexp", scope: !80, file: !80, line: 669, type: !5545, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5545 = !DISubroutineType(types: !5546)
!5546 = !{null, !5547, !49}
!5547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5548, size: 32)
!5548 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes256ctx", file: !80, line: 56, baseType: !5549)
!5549 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 54, size: 32, elements: !5550)
!5550 = !{!5551}
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5549, file: !80, line: 55, baseType: !5, size: 32)
!5552 = !DILocalVariable(name: "r", arg: 1, scope: !5544, file: !80, line: 669, type: !5547)
!5553 = !DILocation(line: 0, scope: !5544)
!5554 = !DILocalVariable(name: "key", arg: 2, scope: !5544, file: !80, line: 669, type: !49)
!5555 = !DILocalVariable(name: "skey", scope: !5544, file: !80, line: 670, type: !5556)
!5556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1920, elements: !5557)
!5557 = !{!5558}
!5558 = !DISubrange(count: 30)
!5559 = !DILocation(line: 670, column: 14, scope: !5544)
!5560 = !DILocation(line: 671, column: 17, scope: !5544)
!5561 = !DILocation(line: 671, column: 15, scope: !5544)
!5562 = !DILocation(line: 672, column: 19, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5544, file: !80, line: 672, column: 9)
!5564 = !DILocation(line: 673, column: 9, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5563, file: !80, line: 672, column: 28)
!5566 = !DILocation(line: 674, column: 5, scope: !5565)
!5567 = !DILocation(line: 676, column: 5, scope: !5544)
!5568 = !DILocation(line: 677, column: 32, scope: !5544)
!5569 = !DILocation(line: 677, column: 5, scope: !5544)
!5570 = !DILocation(line: 678, column: 1, scope: !5544)
!5571 = distinct !DISubprogram(name: "aes256_ctr_keyexp", scope: !80, file: !80, line: 681, type: !5545, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5572 = !DILocalVariable(name: "r", arg: 1, scope: !5571, file: !80, line: 681, type: !5547)
!5573 = !DILocation(line: 0, scope: !5571)
!5574 = !DILocalVariable(name: "key", arg: 2, scope: !5571, file: !80, line: 681, type: !49)
!5575 = !DILocation(line: 682, column: 5, scope: !5571)
!5576 = !DILocation(line: 683, column: 1, scope: !5571)
!5577 = distinct !DISubprogram(name: "aes128_ecb", scope: !80, file: !80, line: 686, type: !5578, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5578 = !DISubroutineType(types: !5579)
!5579 = !{null, !18, !49, !15, !5580}
!5580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5581, size: 32)
!5581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4894)
!5582 = !DILocalVariable(name: "out", arg: 1, scope: !5577, file: !80, line: 686, type: !18)
!5583 = !DILocation(line: 0, scope: !5577)
!5584 = !DILocalVariable(name: "in", arg: 2, scope: !5577, file: !80, line: 686, type: !49)
!5585 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5577, file: !80, line: 686, type: !15)
!5586 = !DILocalVariable(name: "ctx", arg: 4, scope: !5577, file: !80, line: 686, type: !5580)
!5587 = !DILocation(line: 687, column: 36, scope: !5577)
!5588 = !DILocation(line: 687, column: 5, scope: !5577)
!5589 = !DILocation(line: 688, column: 1, scope: !5577)
!5590 = distinct !DISubprogram(name: "aes_ecb", scope: !80, file: !80, line: 587, type: !5591, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5591 = !DISubroutineType(types: !5592)
!5592 = !{null, !18, !49, !15, !428, !17}
!5593 = !DILocalVariable(name: "out", arg: 1, scope: !5590, file: !80, line: 587, type: !18)
!5594 = !DILocation(line: 0, scope: !5590)
!5595 = !DILocalVariable(name: "in", arg: 2, scope: !5590, file: !80, line: 587, type: !49)
!5596 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5590, file: !80, line: 587, type: !15)
!5597 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5590, file: !80, line: 587, type: !428)
!5598 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5590, file: !80, line: 587, type: !17)
!5599 = !DILocalVariable(name: "blocks", scope: !5590, file: !80, line: 588, type: !5600)
!5600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !117)
!5601 = !DILocation(line: 588, column: 14, scope: !5590)
!5602 = !DILocalVariable(name: "t", scope: !5590, file: !80, line: 589, type: !814)
!5603 = !DILocation(line: 589, column: 19, scope: !5590)
!5604 = !DILocation(line: 591, column: 5, scope: !5590)
!5605 = !DILocation(line: 591, column: 20, scope: !5590)
!5606 = !DILocation(line: 592, column: 9, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5590, file: !80, line: 591, column: 26)
!5608 = !DILocation(line: 593, column: 9, scope: !5607)
!5609 = !DILocation(line: 594, column: 17, scope: !5607)
!5610 = !DILocation(line: 595, column: 12, scope: !5607)
!5611 = !DILocation(line: 596, column: 13, scope: !5607)
!5612 = distinct !{!5612, !5604, !5613, !244}
!5613 = !DILocation(line: 597, column: 5, scope: !5590)
!5614 = !DILocation(line: 599, column: 9, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5590, file: !80, line: 599, column: 9)
!5616 = !DILocation(line: 600, column: 42, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5615, file: !80, line: 599, column: 18)
!5618 = !DILocation(line: 600, column: 9, scope: !5617)
!5619 = !DILocation(line: 601, column: 9, scope: !5617)
!5620 = !DILocation(line: 602, column: 32, scope: !5617)
!5621 = !DILocation(line: 602, column: 9, scope: !5617)
!5622 = !DILocation(line: 603, column: 5, scope: !5617)
!5623 = !DILocation(line: 604, column: 1, scope: !5590)
!5624 = distinct !DISubprogram(name: "aes_ecb4x", scope: !80, file: !80, line: 545, type: !5625, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5625 = !DISubroutineType(types: !5626)
!5626 = !{null, !18, !5127, !428, !17}
!5627 = !DILocalVariable(name: "out", arg: 1, scope: !5624, file: !80, line: 545, type: !18)
!5628 = !DILocation(line: 0, scope: !5624)
!5629 = !DILocalVariable(name: "ivw", arg: 2, scope: !5624, file: !80, line: 545, type: !5127)
!5630 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !5624, file: !80, line: 545, type: !428)
!5631 = !DILocalVariable(name: "nrounds", arg: 4, scope: !5624, file: !80, line: 545, type: !17)
!5632 = !DILocalVariable(name: "w", scope: !5624, file: !80, line: 546, type: !5600)
!5633 = !DILocation(line: 546, column: 14, scope: !5624)
!5634 = !DILocalVariable(name: "q", scope: !5624, file: !80, line: 547, type: !4985)
!5635 = !DILocation(line: 547, column: 14, scope: !5624)
!5636 = !DILocation(line: 550, column: 5, scope: !5624)
!5637 = !DILocalVariable(name: "i", scope: !5624, file: !80, line: 548, type: !17)
!5638 = !DILocation(line: 551, column: 10, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5624, file: !80, line: 551, column: 5)
!5640 = !DILocation(line: 551, scope: !5639)
!5641 = !DILocation(line: 551, column: 19, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5639, file: !80, line: 551, column: 5)
!5643 = !DILocation(line: 551, column: 5, scope: !5639)
!5644 = !DILocation(line: 552, column: 36, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5642, file: !80, line: 551, column: 29)
!5646 = !DILocation(line: 552, column: 47, scope: !5645)
!5647 = !DILocation(line: 552, column: 43, scope: !5645)
!5648 = !DILocation(line: 552, column: 55, scope: !5645)
!5649 = !DILocation(line: 552, column: 9, scope: !5645)
!5650 = !DILocation(line: 551, column: 25, scope: !5642)
!5651 = !DILocation(line: 551, column: 5, scope: !5642)
!5652 = distinct !{!5652, !5643, !5653, !244}
!5653 = !DILocation(line: 553, column: 5, scope: !5639)
!5654 = !DILocation(line: 554, column: 5, scope: !5624)
!5655 = !DILocation(line: 557, column: 5, scope: !5624)
!5656 = !DILocation(line: 558, column: 10, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5624, file: !80, line: 558, column: 5)
!5658 = !DILocation(line: 558, scope: !5657)
!5659 = !DILocation(line: 558, column: 19, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5657, file: !80, line: 558, column: 5)
!5661 = !DILocation(line: 558, column: 5, scope: !5657)
!5662 = !DILocation(line: 559, column: 9, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5660, file: !80, line: 558, column: 35)
!5664 = !DILocation(line: 560, column: 9, scope: !5663)
!5665 = !DILocation(line: 561, column: 9, scope: !5663)
!5666 = !DILocation(line: 562, column: 33, scope: !5663)
!5667 = !DILocation(line: 562, column: 9, scope: !5663)
!5668 = !DILocation(line: 558, column: 31, scope: !5660)
!5669 = !DILocation(line: 558, column: 5, scope: !5660)
!5670 = distinct !{!5670, !5661, !5671, !244}
!5671 = !DILocation(line: 563, column: 5, scope: !5657)
!5672 = !DILocation(line: 564, column: 5, scope: !5624)
!5673 = !DILocation(line: 565, column: 5, scope: !5624)
!5674 = !DILocation(line: 566, column: 29, scope: !5624)
!5675 = !DILocation(line: 566, column: 5, scope: !5624)
!5676 = !DILocation(line: 568, column: 5, scope: !5624)
!5677 = !DILocation(line: 569, column: 10, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5624, file: !80, line: 569, column: 5)
!5679 = !DILocation(line: 569, scope: !5678)
!5680 = !DILocation(line: 569, column: 19, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5678, file: !80, line: 569, column: 5)
!5682 = !DILocation(line: 569, column: 5, scope: !5678)
!5683 = !DILocation(line: 570, column: 38, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5681, file: !80, line: 569, column: 30)
!5685 = !DILocation(line: 570, column: 50, scope: !5684)
!5686 = !DILocation(line: 570, column: 60, scope: !5684)
!5687 = !DILocation(line: 570, column: 56, scope: !5684)
!5688 = !DILocation(line: 570, column: 9, scope: !5684)
!5689 = !DILocation(line: 569, column: 26, scope: !5681)
!5690 = !DILocation(line: 569, column: 5, scope: !5681)
!5691 = distinct !{!5691, !5682, !5692, !244}
!5692 = !DILocation(line: 571, column: 5, scope: !5678)
!5693 = !DILocation(line: 572, column: 5, scope: !5624)
!5694 = !DILocation(line: 573, column: 1, scope: !5624)
!5695 = distinct !DISubprogram(name: "add_round_key", scope: !80, file: !80, line: 475, type: !5696, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5696 = !DISubroutineType(types: !5697)
!5697 = !{null, !5, !428}
!5698 = !DILocalVariable(name: "q", arg: 1, scope: !5695, file: !80, line: 475, type: !5)
!5699 = !DILocation(line: 0, scope: !5695)
!5700 = !DILocalVariable(name: "sk", arg: 2, scope: !5695, file: !80, line: 475, type: !428)
!5701 = !DILocation(line: 476, column: 13, scope: !5695)
!5702 = !DILocation(line: 476, column: 10, scope: !5695)
!5703 = !DILocation(line: 477, column: 13, scope: !5695)
!5704 = !DILocation(line: 477, column: 5, scope: !5695)
!5705 = !DILocation(line: 477, column: 10, scope: !5695)
!5706 = !DILocation(line: 478, column: 13, scope: !5695)
!5707 = !DILocation(line: 478, column: 5, scope: !5695)
!5708 = !DILocation(line: 478, column: 10, scope: !5695)
!5709 = !DILocation(line: 479, column: 13, scope: !5695)
!5710 = !DILocation(line: 479, column: 5, scope: !5695)
!5711 = !DILocation(line: 479, column: 10, scope: !5695)
!5712 = !DILocation(line: 480, column: 13, scope: !5695)
!5713 = !DILocation(line: 480, column: 5, scope: !5695)
!5714 = !DILocation(line: 480, column: 10, scope: !5695)
!5715 = !DILocation(line: 481, column: 13, scope: !5695)
!5716 = !DILocation(line: 481, column: 5, scope: !5695)
!5717 = !DILocation(line: 481, column: 10, scope: !5695)
!5718 = !DILocation(line: 482, column: 13, scope: !5695)
!5719 = !DILocation(line: 482, column: 5, scope: !5695)
!5720 = !DILocation(line: 482, column: 10, scope: !5695)
!5721 = !DILocation(line: 483, column: 13, scope: !5695)
!5722 = !DILocation(line: 483, column: 5, scope: !5695)
!5723 = !DILocation(line: 483, column: 10, scope: !5695)
!5724 = !DILocation(line: 484, column: 1, scope: !5695)
!5725 = distinct !DISubprogram(name: "shift_rows", scope: !80, file: !80, line: 486, type: !26, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5726 = !DILocalVariable(name: "q", arg: 1, scope: !5725, file: !80, line: 486, type: !5)
!5727 = !DILocation(line: 0, scope: !5725)
!5728 = !DILocalVariable(name: "i", scope: !5725, file: !80, line: 487, type: !45)
!5729 = !DILocation(line: 489, column: 10, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5725, file: !80, line: 489, column: 5)
!5731 = !DILocation(line: 489, scope: !5730)
!5732 = !DILocation(line: 489, column: 19, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5730, file: !80, line: 489, column: 5)
!5734 = !DILocation(line: 489, column: 5, scope: !5730)
!5735 = !DILocation(line: 492, column: 13, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5733, file: !80, line: 489, column: 30)
!5737 = !DILocalVariable(name: "x", scope: !5736, file: !80, line: 490, type: !6)
!5738 = !DILocation(line: 0, scope: !5736)
!5739 = !DILocation(line: 493, column: 19, scope: !5736)
!5740 = !DILocation(line: 494, column: 54, scope: !5736)
!5741 = !DILocation(line: 494, column: 16, scope: !5736)
!5742 = !DILocation(line: 495, column: 54, scope: !5736)
!5743 = !DILocation(line: 495, column: 16, scope: !5736)
!5744 = !DILocation(line: 496, column: 54, scope: !5736)
!5745 = !DILocation(line: 496, column: 16, scope: !5736)
!5746 = !DILocation(line: 497, column: 54, scope: !5736)
!5747 = !DILocation(line: 497, column: 16, scope: !5736)
!5748 = !DILocation(line: 498, column: 54, scope: !5736)
!5749 = !DILocation(line: 498, column: 16, scope: !5736)
!5750 = !DILocation(line: 499, column: 54, scope: !5736)
!5751 = !DILocation(line: 499, column: 16, scope: !5736)
!5752 = !DILocation(line: 493, column: 9, scope: !5736)
!5753 = !DILocation(line: 493, column: 14, scope: !5736)
!5754 = !DILocation(line: 489, column: 26, scope: !5733)
!5755 = !DILocation(line: 489, column: 5, scope: !5733)
!5756 = distinct !{!5756, !5734, !5757, !244}
!5757 = !DILocation(line: 500, column: 5, scope: !5730)
!5758 = !DILocation(line: 501, column: 1, scope: !5725)
!5759 = distinct !DISubprogram(name: "mix_columns", scope: !80, file: !80, line: 507, type: !26, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5760 = !DILocalVariable(name: "q", arg: 1, scope: !5759, file: !80, line: 507, type: !5)
!5761 = !DILocation(line: 0, scope: !5759)
!5762 = !DILocation(line: 511, column: 10, scope: !5759)
!5763 = !DILocalVariable(name: "q0", scope: !5759, file: !80, line: 508, type: !6)
!5764 = !DILocation(line: 512, column: 10, scope: !5759)
!5765 = !DILocalVariable(name: "q1", scope: !5759, file: !80, line: 508, type: !6)
!5766 = !DILocation(line: 513, column: 10, scope: !5759)
!5767 = !DILocalVariable(name: "q2", scope: !5759, file: !80, line: 508, type: !6)
!5768 = !DILocation(line: 514, column: 10, scope: !5759)
!5769 = !DILocalVariable(name: "q3", scope: !5759, file: !80, line: 508, type: !6)
!5770 = !DILocation(line: 515, column: 10, scope: !5759)
!5771 = !DILocalVariable(name: "q4", scope: !5759, file: !80, line: 508, type: !6)
!5772 = !DILocation(line: 516, column: 10, scope: !5759)
!5773 = !DILocalVariable(name: "q5", scope: !5759, file: !80, line: 508, type: !6)
!5774 = !DILocation(line: 517, column: 10, scope: !5759)
!5775 = !DILocalVariable(name: "q6", scope: !5759, file: !80, line: 508, type: !6)
!5776 = !DILocation(line: 518, column: 10, scope: !5759)
!5777 = !DILocalVariable(name: "q7", scope: !5759, file: !80, line: 508, type: !6)
!5778 = !DILocation(line: 519, column: 21, scope: !5759)
!5779 = !DILocalVariable(name: "r0", scope: !5759, file: !80, line: 509, type: !6)
!5780 = !DILocation(line: 520, column: 21, scope: !5759)
!5781 = !DILocalVariable(name: "r1", scope: !5759, file: !80, line: 509, type: !6)
!5782 = !DILocation(line: 521, column: 21, scope: !5759)
!5783 = !DILocalVariable(name: "r2", scope: !5759, file: !80, line: 509, type: !6)
!5784 = !DILocation(line: 522, column: 21, scope: !5759)
!5785 = !DILocalVariable(name: "r3", scope: !5759, file: !80, line: 509, type: !6)
!5786 = !DILocation(line: 523, column: 21, scope: !5759)
!5787 = !DILocalVariable(name: "r4", scope: !5759, file: !80, line: 509, type: !6)
!5788 = !DILocation(line: 524, column: 21, scope: !5759)
!5789 = !DILocalVariable(name: "r5", scope: !5759, file: !80, line: 509, type: !6)
!5790 = !DILocation(line: 525, column: 21, scope: !5759)
!5791 = !DILocalVariable(name: "r6", scope: !5759, file: !80, line: 509, type: !6)
!5792 = !DILocation(line: 526, column: 21, scope: !5759)
!5793 = !DILocalVariable(name: "r7", scope: !5759, file: !80, line: 509, type: !6)
!5794 = !DILocation(line: 528, column: 37, scope: !5759)
!5795 = !DILocation(line: 528, column: 27, scope: !5759)
!5796 = !DILocation(line: 528, column: 25, scope: !5759)
!5797 = !DILocation(line: 528, column: 10, scope: !5759)
!5798 = !DILocation(line: 529, column: 47, scope: !5759)
!5799 = !DILocation(line: 529, column: 37, scope: !5759)
!5800 = !DILocation(line: 529, column: 35, scope: !5759)
!5801 = !DILocation(line: 529, column: 5, scope: !5759)
!5802 = !DILocation(line: 529, column: 10, scope: !5759)
!5803 = !DILocation(line: 530, column: 37, scope: !5759)
!5804 = !DILocation(line: 530, column: 27, scope: !5759)
!5805 = !DILocation(line: 530, column: 25, scope: !5759)
!5806 = !DILocation(line: 530, column: 5, scope: !5759)
!5807 = !DILocation(line: 530, column: 10, scope: !5759)
!5808 = !DILocation(line: 531, column: 47, scope: !5759)
!5809 = !DILocation(line: 531, column: 37, scope: !5759)
!5810 = !DILocation(line: 531, column: 35, scope: !5759)
!5811 = !DILocation(line: 531, column: 5, scope: !5759)
!5812 = !DILocation(line: 531, column: 10, scope: !5759)
!5813 = !DILocation(line: 532, column: 47, scope: !5759)
!5814 = !DILocation(line: 532, column: 37, scope: !5759)
!5815 = !DILocation(line: 532, column: 35, scope: !5759)
!5816 = !DILocation(line: 532, column: 5, scope: !5759)
!5817 = !DILocation(line: 532, column: 10, scope: !5759)
!5818 = !DILocation(line: 533, column: 37, scope: !5759)
!5819 = !DILocation(line: 533, column: 27, scope: !5759)
!5820 = !DILocation(line: 533, column: 25, scope: !5759)
!5821 = !DILocation(line: 533, column: 5, scope: !5759)
!5822 = !DILocation(line: 533, column: 10, scope: !5759)
!5823 = !DILocation(line: 534, column: 37, scope: !5759)
!5824 = !DILocation(line: 534, column: 27, scope: !5759)
!5825 = !DILocation(line: 534, column: 25, scope: !5759)
!5826 = !DILocation(line: 534, column: 5, scope: !5759)
!5827 = !DILocation(line: 534, column: 10, scope: !5759)
!5828 = !DILocation(line: 535, column: 37, scope: !5759)
!5829 = !DILocation(line: 535, column: 27, scope: !5759)
!5830 = !DILocation(line: 535, column: 25, scope: !5759)
!5831 = !DILocation(line: 535, column: 5, scope: !5759)
!5832 = !DILocation(line: 535, column: 10, scope: !5759)
!5833 = !DILocation(line: 536, column: 1, scope: !5759)
!5834 = distinct !DISubprogram(name: "br_aes_ct64_interleave_out", scope: !80, file: !80, line: 367, type: !5835, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5835 = !DISubroutineType(types: !5836)
!5836 = !{null, !5092, !6, !6}
!5837 = !DILocalVariable(name: "w", arg: 1, scope: !5834, file: !80, line: 367, type: !5092)
!5838 = !DILocation(line: 0, scope: !5834)
!5839 = !DILocalVariable(name: "q0", arg: 2, scope: !5834, file: !80, line: 367, type: !6)
!5840 = !DILocalVariable(name: "q1", arg: 3, scope: !5834, file: !80, line: 367, type: !6)
!5841 = !DILocation(line: 370, column: 13, scope: !5834)
!5842 = !DILocalVariable(name: "x0", scope: !5834, file: !80, line: 368, type: !6)
!5843 = !DILocation(line: 371, column: 13, scope: !5834)
!5844 = !DILocalVariable(name: "x1", scope: !5834, file: !80, line: 368, type: !6)
!5845 = !DILocation(line: 372, column: 14, scope: !5834)
!5846 = !DILocation(line: 372, column: 20, scope: !5834)
!5847 = !DILocalVariable(name: "x2", scope: !5834, file: !80, line: 368, type: !6)
!5848 = !DILocation(line: 373, column: 14, scope: !5834)
!5849 = !DILocation(line: 373, column: 20, scope: !5834)
!5850 = !DILocalVariable(name: "x3", scope: !5834, file: !80, line: 368, type: !6)
!5851 = !DILocation(line: 374, column: 15, scope: !5834)
!5852 = !DILocation(line: 374, column: 8, scope: !5834)
!5853 = !DILocation(line: 375, column: 15, scope: !5834)
!5854 = !DILocation(line: 375, column: 8, scope: !5834)
!5855 = !DILocation(line: 376, column: 8, scope: !5834)
!5856 = !DILocation(line: 377, column: 8, scope: !5834)
!5857 = !DILocation(line: 378, column: 8, scope: !5834)
!5858 = !DILocation(line: 379, column: 8, scope: !5834)
!5859 = !DILocation(line: 382, column: 41, scope: !5834)
!5860 = !DILocation(line: 382, column: 25, scope: !5834)
!5861 = !DILocation(line: 382, column: 10, scope: !5834)
!5862 = !DILocation(line: 383, column: 41, scope: !5834)
!5863 = !DILocation(line: 383, column: 25, scope: !5834)
!5864 = !DILocation(line: 383, column: 5, scope: !5834)
!5865 = !DILocation(line: 383, column: 10, scope: !5834)
!5866 = !DILocation(line: 384, column: 41, scope: !5834)
!5867 = !DILocation(line: 384, column: 25, scope: !5834)
!5868 = !DILocation(line: 384, column: 5, scope: !5834)
!5869 = !DILocation(line: 384, column: 10, scope: !5834)
!5870 = !DILocation(line: 385, column: 41, scope: !5834)
!5871 = !DILocation(line: 385, column: 25, scope: !5834)
!5872 = !DILocation(line: 385, column: 5, scope: !5834)
!5873 = !DILocation(line: 385, column: 10, scope: !5834)
!5874 = !DILocation(line: 386, column: 1, scope: !5834)
!5875 = distinct !DISubprogram(name: "br_range_enc32le", scope: !80, file: !80, line: 127, type: !5876, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5876 = !DISubroutineType(types: !5877)
!5877 = !{null, !18, !5127, !15}
!5878 = !DILocalVariable(name: "dst", arg: 1, scope: !5875, file: !80, line: 127, type: !18)
!5879 = !DILocation(line: 0, scope: !5875)
!5880 = !DILocalVariable(name: "v", arg: 2, scope: !5875, file: !80, line: 127, type: !5127)
!5881 = !DILocalVariable(name: "num", arg: 3, scope: !5875, file: !80, line: 127, type: !15)
!5882 = !DILocation(line: 128, column: 5, scope: !5875)
!5883 = !DILocation(line: 128, column: 18, scope: !5875)
!5884 = !DILocation(line: 128, column: 15, scope: !5875)
!5885 = !DILocation(line: 129, column: 28, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5875, file: !80, line: 128, column: 23)
!5887 = !DILocation(line: 129, column: 25, scope: !5886)
!5888 = !DILocation(line: 129, column: 9, scope: !5886)
!5889 = !DILocation(line: 130, column: 13, scope: !5886)
!5890 = distinct !{!5890, !5882, !5891, !244}
!5891 = !DILocation(line: 131, column: 5, scope: !5875)
!5892 = !DILocation(line: 132, column: 1, scope: !5875)
!5893 = distinct !DISubprogram(name: "br_enc32le", scope: !80, file: !80, line: 119, type: !5894, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5894 = !DISubroutineType(types: !5895)
!5895 = !{null, !18, !19}
!5896 = !DILocalVariable(name: "dst", arg: 1, scope: !5893, file: !80, line: 119, type: !18)
!5897 = !DILocation(line: 0, scope: !5893)
!5898 = !DILocalVariable(name: "x", arg: 2, scope: !5893, file: !80, line: 119, type: !19)
!5899 = !DILocation(line: 120, column: 14, scope: !5893)
!5900 = !DILocation(line: 120, column: 12, scope: !5893)
!5901 = !DILocation(line: 121, column: 32, scope: !5893)
!5902 = !DILocation(line: 121, column: 14, scope: !5893)
!5903 = !DILocation(line: 121, column: 5, scope: !5893)
!5904 = !DILocation(line: 121, column: 12, scope: !5893)
!5905 = !DILocation(line: 122, column: 32, scope: !5893)
!5906 = !DILocation(line: 122, column: 14, scope: !5893)
!5907 = !DILocation(line: 122, column: 5, scope: !5893)
!5908 = !DILocation(line: 122, column: 12, scope: !5893)
!5909 = !DILocation(line: 123, column: 32, scope: !5893)
!5910 = !DILocation(line: 123, column: 14, scope: !5893)
!5911 = !DILocation(line: 123, column: 5, scope: !5893)
!5912 = !DILocation(line: 123, column: 12, scope: !5893)
!5913 = !DILocation(line: 124, column: 1, scope: !5893)
!5914 = distinct !DISubprogram(name: "rotr32", scope: !80, file: !80, line: 503, type: !5915, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5915 = !DISubroutineType(types: !5916)
!5916 = !{!6, !6}
!5917 = !DILocalVariable(name: "x", arg: 1, scope: !5914, file: !80, line: 503, type: !6)
!5918 = !DILocation(line: 0, scope: !5914)
!5919 = !DILocation(line: 504, column: 22, scope: !5914)
!5920 = !DILocation(line: 504, column: 5, scope: !5914)
!5921 = distinct !DISubprogram(name: "aes128_ctr", scope: !80, file: !80, line: 690, type: !5922, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5922 = !DISubroutineType(types: !5923)
!5923 = !{null, !18, !15, !49, !5580}
!5924 = !DILocalVariable(name: "out", arg: 1, scope: !5921, file: !80, line: 690, type: !18)
!5925 = !DILocation(line: 0, scope: !5921)
!5926 = !DILocalVariable(name: "outlen", arg: 2, scope: !5921, file: !80, line: 690, type: !15)
!5927 = !DILocalVariable(name: "iv", arg: 3, scope: !5921, file: !80, line: 690, type: !49)
!5928 = !DILocalVariable(name: "ctx", arg: 4, scope: !5921, file: !80, line: 690, type: !5580)
!5929 = !DILocation(line: 691, column: 35, scope: !5921)
!5930 = !DILocation(line: 691, column: 5, scope: !5921)
!5931 = !DILocation(line: 692, column: 1, scope: !5921)
!5932 = distinct !DISubprogram(name: "aes_ctr", scope: !80, file: !80, line: 607, type: !5933, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5933 = !DISubroutineType(types: !5934)
!5934 = !{null, !18, !15, !49, !428, !17}
!5935 = !DILocalVariable(name: "out", arg: 1, scope: !5932, file: !80, line: 607, type: !18)
!5936 = !DILocation(line: 0, scope: !5932)
!5937 = !DILocalVariable(name: "outlen", arg: 2, scope: !5932, file: !80, line: 607, type: !15)
!5938 = !DILocalVariable(name: "iv", arg: 3, scope: !5932, file: !80, line: 607, type: !49)
!5939 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5932, file: !80, line: 607, type: !428)
!5940 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5932, file: !80, line: 607, type: !17)
!5941 = !DILocalVariable(name: "ivw", scope: !5932, file: !80, line: 608, type: !5600)
!5942 = !DILocation(line: 608, column: 14, scope: !5932)
!5943 = !DILocalVariable(name: "cc", scope: !5932, file: !80, line: 610, type: !19)
!5944 = !DILocation(line: 612, column: 5, scope: !5932)
!5945 = !DILocation(line: 613, column: 16, scope: !5932)
!5946 = !DILocation(line: 613, column: 5, scope: !5932)
!5947 = !DILocation(line: 614, column: 16, scope: !5932)
!5948 = !DILocation(line: 614, column: 5, scope: !5932)
!5949 = !DILocation(line: 615, column: 16, scope: !5932)
!5950 = !DILocation(line: 615, column: 5, scope: !5932)
!5951 = !DILocation(line: 616, column: 15, scope: !5932)
!5952 = !DILocation(line: 616, column: 5, scope: !5932)
!5953 = !DILocation(line: 616, column: 13, scope: !5932)
!5954 = !DILocation(line: 617, column: 15, scope: !5932)
!5955 = !DILocation(line: 617, column: 5, scope: !5932)
!5956 = !DILocation(line: 617, column: 13, scope: !5932)
!5957 = !DILocation(line: 618, column: 15, scope: !5932)
!5958 = !DILocation(line: 618, column: 5, scope: !5932)
!5959 = !DILocation(line: 618, column: 13, scope: !5932)
!5960 = !DILocation(line: 619, column: 15, scope: !5932)
!5961 = !DILocation(line: 619, column: 5, scope: !5932)
!5962 = !DILocation(line: 619, column: 13, scope: !5932)
!5963 = !DILocation(line: 621, column: 5, scope: !5932)
!5964 = !DILocation(line: 621, column: 19, scope: !5932)
!5965 = !DILocation(line: 622, column: 9, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5932, file: !80, line: 621, column: 25)
!5967 = !DILocation(line: 623, column: 13, scope: !5966)
!5968 = !DILocation(line: 624, column: 16, scope: !5966)
!5969 = distinct !{!5969, !5963, !5970, !244}
!5970 = !DILocation(line: 625, column: 5, scope: !5932)
!5971 = !DILocation(line: 626, column: 16, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5932, file: !80, line: 626, column: 9)
!5973 = !DILocalVariable(name: "tmp", scope: !5974, file: !80, line: 627, type: !814)
!5974 = distinct !DILexicalBlock(scope: !5972, file: !80, line: 626, column: 21)
!5975 = !DILocation(line: 627, column: 23, scope: !5974)
!5976 = !DILocation(line: 628, column: 9, scope: !5974)
!5977 = !DILocalVariable(name: "i", scope: !5932, file: !80, line: 609, type: !15)
!5978 = !DILocation(line: 629, column: 14, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5974, file: !80, line: 629, column: 9)
!5980 = !DILocation(line: 629, scope: !5979)
!5981 = !DILocation(line: 629, column: 23, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5979, file: !80, line: 629, column: 9)
!5983 = !DILocation(line: 629, column: 9, scope: !5979)
!5984 = !DILocation(line: 630, column: 22, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5982, file: !80, line: 629, column: 38)
!5986 = !DILocation(line: 630, column: 13, scope: !5985)
!5987 = !DILocation(line: 630, column: 20, scope: !5985)
!5988 = !DILocation(line: 629, column: 34, scope: !5982)
!5989 = !DILocation(line: 629, column: 9, scope: !5982)
!5990 = distinct !{!5990, !5983, !5991, !244}
!5991 = !DILocation(line: 631, column: 9, scope: !5979)
!5992 = !DILocation(line: 633, column: 1, scope: !5932)
!5993 = distinct !DISubprogram(name: "br_swap32", scope: !80, file: !80, line: 112, type: !5109, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5994 = !DILocalVariable(name: "x", arg: 1, scope: !5993, file: !80, line: 112, type: !19)
!5995 = !DILocation(line: 0, scope: !5993)
!5996 = !DILocation(line: 115, column: 22, scope: !5993)
!5997 = !DILocation(line: 115, column: 5, scope: !5993)
!5998 = distinct !DISubprogram(name: "aes_ctr4x", scope: !80, file: !80, line: 576, type: !5999, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5999 = !DISubroutineType(types: !6000)
!6000 = !{null, !18, !5092, !428, !17}
!6001 = !DILocalVariable(name: "out", arg: 1, scope: !5998, file: !80, line: 576, type: !18)
!6002 = !DILocation(line: 0, scope: !5998)
!6003 = !DILocalVariable(name: "ivw", arg: 2, scope: !5998, file: !80, line: 576, type: !5092)
!6004 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !5998, file: !80, line: 576, type: !428)
!6005 = !DILocalVariable(name: "nrounds", arg: 4, scope: !5998, file: !80, line: 576, type: !17)
!6006 = !DILocation(line: 577, column: 5, scope: !5998)
!6007 = !DILocation(line: 580, column: 17, scope: !5998)
!6008 = !DILocation(line: 580, column: 5, scope: !5998)
!6009 = !DILocation(line: 581, column: 17, scope: !5998)
!6010 = !DILocation(line: 581, column: 5, scope: !5998)
!6011 = !DILocation(line: 582, column: 17, scope: !5998)
!6012 = !DILocation(line: 582, column: 5, scope: !5998)
!6013 = !DILocation(line: 583, column: 17, scope: !5998)
!6014 = !DILocation(line: 583, column: 5, scope: !5998)
!6015 = !DILocation(line: 584, column: 1, scope: !5998)
!6016 = distinct !DISubprogram(name: "inc4_be", scope: !80, file: !80, line: 539, type: !6017, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6017 = !DISubroutineType(types: !6018)
!6018 = !{null, !5092}
!6019 = !DILocalVariable(name: "x", arg: 1, scope: !6016, file: !80, line: 539, type: !5092)
!6020 = !DILocation(line: 0, scope: !6016)
!6021 = !DILocation(line: 540, column: 28, scope: !6016)
!6022 = !DILocation(line: 540, column: 18, scope: !6016)
!6023 = !DILocation(line: 540, column: 32, scope: !6016)
!6024 = !DILocalVariable(name: "t", scope: !6016, file: !80, line: 540, type: !19)
!6025 = !DILocation(line: 541, column: 10, scope: !6016)
!6026 = !DILocation(line: 541, column: 8, scope: !6016)
!6027 = !DILocation(line: 542, column: 1, scope: !6016)
!6028 = distinct !DISubprogram(name: "aes192_ecb", scope: !80, file: !80, line: 694, type: !6029, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6029 = !DISubroutineType(types: !6030)
!6030 = !{null, !18, !49, !15, !6031}
!6031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6032, size: 32)
!6032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5515)
!6033 = !DILocalVariable(name: "out", arg: 1, scope: !6028, file: !80, line: 694, type: !18)
!6034 = !DILocation(line: 0, scope: !6028)
!6035 = !DILocalVariable(name: "in", arg: 2, scope: !6028, file: !80, line: 694, type: !49)
!6036 = !DILocalVariable(name: "nblocks", arg: 3, scope: !6028, file: !80, line: 694, type: !15)
!6037 = !DILocalVariable(name: "ctx", arg: 4, scope: !6028, file: !80, line: 694, type: !6031)
!6038 = !DILocation(line: 695, column: 36, scope: !6028)
!6039 = !DILocation(line: 695, column: 5, scope: !6028)
!6040 = !DILocation(line: 696, column: 1, scope: !6028)
!6041 = distinct !DISubprogram(name: "aes192_ctr", scope: !80, file: !80, line: 698, type: !6042, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6042 = !DISubroutineType(types: !6043)
!6043 = !{null, !18, !15, !49, !6031}
!6044 = !DILocalVariable(name: "out", arg: 1, scope: !6041, file: !80, line: 698, type: !18)
!6045 = !DILocation(line: 0, scope: !6041)
!6046 = !DILocalVariable(name: "outlen", arg: 2, scope: !6041, file: !80, line: 698, type: !15)
!6047 = !DILocalVariable(name: "iv", arg: 3, scope: !6041, file: !80, line: 698, type: !49)
!6048 = !DILocalVariable(name: "ctx", arg: 4, scope: !6041, file: !80, line: 698, type: !6031)
!6049 = !DILocation(line: 699, column: 35, scope: !6041)
!6050 = !DILocation(line: 699, column: 5, scope: !6041)
!6051 = !DILocation(line: 700, column: 1, scope: !6041)
!6052 = distinct !DISubprogram(name: "aes256_ecb", scope: !80, file: !80, line: 702, type: !6053, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6053 = !DISubroutineType(types: !6054)
!6054 = !{null, !18, !49, !15, !6055}
!6055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6056, size: 32)
!6056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5548)
!6057 = !DILocalVariable(name: "out", arg: 1, scope: !6052, file: !80, line: 702, type: !18)
!6058 = !DILocation(line: 0, scope: !6052)
!6059 = !DILocalVariable(name: "in", arg: 2, scope: !6052, file: !80, line: 702, type: !49)
!6060 = !DILocalVariable(name: "nblocks", arg: 3, scope: !6052, file: !80, line: 702, type: !15)
!6061 = !DILocalVariable(name: "ctx", arg: 4, scope: !6052, file: !80, line: 702, type: !6055)
!6062 = !DILocation(line: 703, column: 36, scope: !6052)
!6063 = !DILocation(line: 703, column: 5, scope: !6052)
!6064 = !DILocation(line: 704, column: 1, scope: !6052)
!6065 = distinct !DISubprogram(name: "aes256_ctr", scope: !80, file: !80, line: 706, type: !6066, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6066 = !DISubroutineType(types: !6067)
!6067 = !{null, !18, !15, !49, !6055}
!6068 = !DILocalVariable(name: "out", arg: 1, scope: !6065, file: !80, line: 706, type: !18)
!6069 = !DILocation(line: 0, scope: !6065)
!6070 = !DILocalVariable(name: "outlen", arg: 2, scope: !6065, file: !80, line: 706, type: !15)
!6071 = !DILocalVariable(name: "iv", arg: 3, scope: !6065, file: !80, line: 706, type: !49)
!6072 = !DILocalVariable(name: "ctx", arg: 4, scope: !6065, file: !80, line: 706, type: !6055)
!6073 = !DILocation(line: 707, column: 35, scope: !6065)
!6074 = !DILocation(line: 707, column: 5, scope: !6065)
!6075 = !DILocation(line: 708, column: 1, scope: !6065)
!6076 = distinct !DISubprogram(name: "aes128_ctx_release", scope: !80, file: !80, line: 710, type: !6077, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6077 = !DISubroutineType(types: !6078)
!6078 = !{null, !4893}
!6079 = !DILocalVariable(name: "r", arg: 1, scope: !6076, file: !80, line: 710, type: !4893)
!6080 = !DILocation(line: 0, scope: !6076)
!6081 = !DILocation(line: 711, column: 13, scope: !6076)
!6082 = !DILocation(line: 711, column: 5, scope: !6076)
!6083 = !DILocation(line: 712, column: 1, scope: !6076)
!6084 = distinct !DISubprogram(name: "aes192_ctx_release", scope: !80, file: !80, line: 714, type: !6085, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6085 = !DISubroutineType(types: !6086)
!6086 = !{null, !5514}
!6087 = !DILocalVariable(name: "r", arg: 1, scope: !6084, file: !80, line: 714, type: !5514)
!6088 = !DILocation(line: 0, scope: !6084)
!6089 = !DILocation(line: 715, column: 13, scope: !6084)
!6090 = !DILocation(line: 715, column: 5, scope: !6084)
!6091 = !DILocation(line: 716, column: 1, scope: !6084)
!6092 = distinct !DISubprogram(name: "aes256_ctx_release", scope: !80, file: !80, line: 718, type: !6093, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6093 = !DISubroutineType(types: !6094)
!6094 = !{null, !5547}
!6095 = !DILocalVariable(name: "r", arg: 1, scope: !6092, file: !80, line: 718, type: !5547)
!6096 = !DILocation(line: 0, scope: !6092)
!6097 = !DILocation(line: 719, column: 13, scope: !6092)
!6098 = !DILocation(line: 719, column: 5, scope: !6092)
!6099 = !DILocation(line: 720, column: 1, scope: !6092)
!6100 = distinct !DISubprogram(name: "AES_128_CTR", scope: !80, file: !80, line: 722, type: !6101, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6101 = !DISubroutineType(types: !6102)
!6102 = !{!45, !18, !15, !49, !15}
!6103 = !DILocalVariable(name: "output", arg: 1, scope: !6100, file: !80, line: 722, type: !18)
!6104 = !DILocation(line: 0, scope: !6100)
!6105 = !DILocalVariable(name: "outputByteLen", arg: 2, scope: !6100, file: !80, line: 722, type: !15)
!6106 = !DILocalVariable(name: "input", arg: 3, scope: !6100, file: !80, line: 723, type: !49)
!6107 = !DILocalVariable(name: "inputByteLen", arg: 4, scope: !6100, file: !80, line: 723, type: !15)
!6108 = !DILocalVariable(name: "ctx", scope: !6100, file: !80, line: 724, type: !4894)
!6109 = !DILocation(line: 724, column: 15, scope: !6100)
!6110 = !DILocalVariable(name: "iv", scope: !6100, file: !80, line: 725, type: !116)
!6111 = !DILocation(line: 725, column: 19, scope: !6100)
!6112 = !DILocation(line: 727, column: 5, scope: !6100)
!6113 = !DILocation(line: 728, column: 5, scope: !6100)
!6114 = !DILocation(line: 729, column: 5, scope: !6100)
!6115 = !DILocation(line: 731, column: 5, scope: !6100)
!6116 = distinct !DISubprogram(name: "AES_256_ECB", scope: !80, file: !80, line: 734, type: !6117, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6117 = !DISubroutineType(types: !6118)
!6118 = !{null, !257, !49, !18}
!6119 = !DILocalVariable(name: "input", arg: 1, scope: !6116, file: !80, line: 734, type: !257)
!6120 = !DILocation(line: 0, scope: !6116)
!6121 = !DILocalVariable(name: "key", arg: 2, scope: !6116, file: !80, line: 734, type: !49)
!6122 = !DILocalVariable(name: "output", arg: 3, scope: !6116, file: !80, line: 734, type: !18)
!6123 = !DILocalVariable(name: "ctx", scope: !6116, file: !80, line: 735, type: !5548)
!6124 = !DILocation(line: 735, column: 15, scope: !6116)
!6125 = !DILocation(line: 737, column: 5, scope: !6116)
!6126 = !DILocation(line: 738, column: 5, scope: !6116)
!6127 = !DILocation(line: 739, column: 5, scope: !6116)
!6128 = !DILocation(line: 740, column: 1, scope: !6116)
!6129 = !DILocalVariable(name: "mem", arg: 1, scope: !86, file: !87, line: 7, type: !69)
!6130 = !DILocation(line: 0, scope: !86)
!6131 = !DILocalVariable(name: "size", arg: 2, scope: !86, file: !87, line: 7, type: !15)
!6132 = !DILocation(line: 8, column: 9, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !86, file: !87, line: 8, column: 9)
!6134 = !DILocation(line: 11, column: 9, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6133, file: !87, line: 8, column: 14)
!6136 = !DILocation(line: 12, column: 9, scope: !6135)
!6137 = !DILocation(line: 13, column: 5, scope: !6135)
!6138 = !DILocation(line: 14, column: 1, scope: !86)
!6139 = !DILocalVariable(name: "mem", arg: 1, scope: !94, file: !87, line: 15, type: !69)
!6140 = !DILocation(line: 0, scope: !94)
!6141 = !DILocalVariable(name: "size", arg: 2, scope: !94, file: !87, line: 15, type: !15)
!6142 = !DILocation(line: 18, column: 5, scope: !94)
!6143 = !DILocation(line: 19, column: 1, scope: !94)
!6144 = distinct !DISubprogram(name: "AES256_CTR_DRBG_Update", scope: !107, file: !107, line: 101, type: !6145, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6145 = !DISubroutineType(types: !6146)
!6146 = !{null, !18, !18, !18}
!6147 = !DILocalVariable(name: "provided_data", arg: 1, scope: !6144, file: !107, line: 101, type: !18)
!6148 = !DILocation(line: 0, scope: !6144)
!6149 = !DILocalVariable(name: "Key", arg: 2, scope: !6144, file: !107, line: 102, type: !18)
!6150 = !DILocalVariable(name: "V", arg: 3, scope: !6144, file: !107, line: 103, type: !18)
!6151 = !DILocalVariable(name: "temp", scope: !6144, file: !107, line: 104, type: !6152)
!6152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 384, elements: !6153)
!6153 = !{!6154}
!6154 = !DISubrange(count: 48)
!6155 = !DILocation(line: 104, column: 21, scope: !6144)
!6156 = !DILocalVariable(name: "i", scope: !6157, file: !107, line: 106, type: !45)
!6157 = distinct !DILexicalBlock(scope: !6144, file: !107, line: 106, column: 5)
!6158 = !DILocation(line: 0, scope: !6157)
!6159 = !DILocation(line: 106, column: 10, scope: !6157)
!6160 = !DILocation(line: 106, scope: !6157)
!6161 = !DILocation(line: 106, column: 23, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6157, file: !107, line: 106, column: 5)
!6163 = !DILocation(line: 106, column: 5, scope: !6157)
!6164 = !DILocation(line: 108, column: 9, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !6166, file: !107, line: 108, column: 9)
!6166 = distinct !DILexicalBlock(scope: !6162, file: !107, line: 106, column: 33)
!6167 = !DILocation(line: 108, scope: !6165)
!6168 = !DILocalVariable(name: "j", scope: !6165, file: !107, line: 108, type: !45)
!6169 = !DILocation(line: 0, scope: !6165)
!6170 = !DILocation(line: 108, column: 28, scope: !6171)
!6171 = distinct !DILexicalBlock(scope: !6165, file: !107, line: 108, column: 9)
!6172 = !DILocation(line: 109, column: 18, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6174, file: !107, line: 109, column: 18)
!6174 = distinct !DILexicalBlock(scope: !6171, file: !107, line: 108, column: 39)
!6175 = !DILocation(line: 109, column: 23, scope: !6173)
!6176 = !DILocation(line: 110, column: 17, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !6173, file: !107, line: 109, column: 33)
!6178 = !DILocation(line: 110, column: 22, scope: !6177)
!6179 = !DILocation(line: 108, column: 35, scope: !6171)
!6180 = !DILocation(line: 108, column: 9, scope: !6171)
!6181 = distinct !{!6181, !6164, !6182, !244}
!6182 = !DILocation(line: 115, column: 9, scope: !6165)
!6183 = !DILocation(line: 112, column: 17, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6173, file: !107, line: 111, column: 20)
!6185 = !DILocation(line: 112, column: 21, scope: !6184)
!6186 = !DILocation(line: 113, column: 17, scope: !6184)
!6187 = !DILocation(line: 117, column: 38, scope: !6166)
!6188 = !DILocation(line: 117, column: 33, scope: !6166)
!6189 = !DILocation(line: 117, column: 9, scope: !6166)
!6190 = !DILocation(line: 106, column: 29, scope: !6162)
!6191 = !DILocation(line: 106, column: 5, scope: !6162)
!6192 = distinct !{!6192, !6163, !6193, !244}
!6193 = !DILocation(line: 118, column: 5, scope: !6157)
!6194 = !DILocation(line: 119, column: 24, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6144, file: !107, line: 119, column: 10)
!6196 = !DILocation(line: 120, column: 9, scope: !6197)
!6197 = distinct !DILexicalBlock(scope: !6195, file: !107, line: 120, column: 9)
!6198 = !DILocation(line: 120, scope: !6197)
!6199 = !DILocalVariable(name: "i", scope: !6197, file: !107, line: 120, type: !45)
!6200 = !DILocation(line: 0, scope: !6197)
!6201 = !DILocation(line: 120, column: 27, scope: !6202)
!6202 = distinct !DILexicalBlock(scope: !6197, file: !107, line: 120, column: 9)
!6203 = !DILocation(line: 121, column: 24, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6202, file: !107, line: 120, column: 38)
!6205 = !DILocation(line: 121, column: 13, scope: !6204)
!6206 = !DILocation(line: 121, column: 21, scope: !6204)
!6207 = !DILocation(line: 120, column: 34, scope: !6202)
!6208 = !DILocation(line: 120, column: 9, scope: !6202)
!6209 = distinct !{!6209, !6196, !6210, !244}
!6210 = !DILocation(line: 122, column: 9, scope: !6197)
!6211 = !DILocation(line: 123, column: 5, scope: !6144)
!6212 = !DILocation(line: 124, column: 20, scope: !6144)
!6213 = !DILocation(line: 124, column: 5, scope: !6144)
!6214 = !DILocation(line: 125, column: 1, scope: !6144)
!6215 = distinct !DISubprogram(name: "AES256_ECB", scope: !107, file: !107, line: 24, type: !6145, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6216 = !DILocalVariable(name: "key", arg: 1, scope: !6215, file: !107, line: 24, type: !18)
!6217 = !DILocation(line: 0, scope: !6215)
!6218 = !DILocalVariable(name: "ctr", arg: 2, scope: !6215, file: !107, line: 24, type: !18)
!6219 = !DILocalVariable(name: "buffer", arg: 3, scope: !6215, file: !107, line: 24, type: !18)
!6220 = !DILocation(line: 25, column: 5, scope: !6215)
!6221 = !DILocation(line: 26, column: 1, scope: !6215)
!6222 = distinct !DISubprogram(name: "randombytes", scope: !107, file: !107, line: 127, type: !6223, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6223 = !DISubroutineType(types: !6224)
!6224 = !{!45, !18, !15}
!6225 = !DILocalVariable(name: "random_array", arg: 1, scope: !6222, file: !107, line: 127, type: !18)
!6226 = !DILocation(line: 0, scope: !6222)
!6227 = !DILocalVariable(name: "nbytes", arg: 2, scope: !6222, file: !107, line: 127, type: !15)
!6228 = !DILocation(line: 128, column: 15, scope: !6222)
!6229 = !DILocalVariable(name: "ret", scope: !6222, file: !107, line: 128, type: !45)
!6230 = !DILocation(line: 132, column: 5, scope: !6222)
!6231 = distinct !DISubprogram(name: "randombytes_nist", scope: !107, file: !107, line: 69, type: !6223, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6232 = !DILocalVariable(name: "x", arg: 1, scope: !6231, file: !107, line: 69, type: !18)
!6233 = !DILocation(line: 0, scope: !6231)
!6234 = !DILocalVariable(name: "xlen", arg: 2, scope: !6231, file: !107, line: 69, type: !15)
!6235 = !DILocalVariable(name: "block", scope: !6231, file: !107, line: 70, type: !116)
!6236 = !DILocation(line: 70, column: 21, scope: !6231)
!6237 = !DILocalVariable(name: "i", scope: !6231, file: !107, line: 71, type: !15)
!6238 = !DILocation(line: 73, column: 5, scope: !6231)
!6239 = !DILocation(line: 73, column: 18, scope: !6231)
!6240 = !DILocation(line: 75, column: 9, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6242, file: !107, line: 75, column: 9)
!6242 = distinct !DILexicalBlock(scope: !6231, file: !107, line: 73, column: 24)
!6243 = !DILocation(line: 75, scope: !6241)
!6244 = !DILocalVariable(name: "j", scope: !6241, file: !107, line: 75, type: !45)
!6245 = !DILocation(line: 0, scope: !6241)
!6246 = !DILocation(line: 75, column: 28, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6241, file: !107, line: 75, column: 9)
!6248 = !DILocation(line: 76, column: 18, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6250, file: !107, line: 76, column: 18)
!6250 = distinct !DILexicalBlock(scope: !6247, file: !107, line: 75, column: 39)
!6251 = !DILocation(line: 76, column: 32, scope: !6249)
!6252 = !DILocation(line: 77, column: 17, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6249, file: !107, line: 76, column: 42)
!6254 = !DILocation(line: 77, column: 31, scope: !6253)
!6255 = !DILocation(line: 75, column: 35, scope: !6247)
!6256 = !DILocation(line: 75, column: 9, scope: !6247)
!6257 = distinct !{!6257, !6240, !6258, !244}
!6258 = !DILocation(line: 82, column: 9, scope: !6241)
!6259 = !DILocation(line: 79, column: 17, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6249, file: !107, line: 78, column: 20)
!6261 = !DILocation(line: 79, column: 30, scope: !6260)
!6262 = !DILocation(line: 80, column: 17, scope: !6260)
!6263 = !DILocation(line: 83, column: 9, scope: !6242)
!6264 = !DILocation(line: 84, column: 19, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6242, file: !107, line: 84, column: 14)
!6266 = !DILocation(line: 85, column: 22, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6265, file: !107, line: 84, column: 26)
!6268 = !DILocation(line: 85, column: 13, scope: !6267)
!6269 = !DILocation(line: 86, column: 15, scope: !6267)
!6270 = !DILocation(line: 87, column: 18, scope: !6267)
!6271 = !DILocation(line: 88, column: 9, scope: !6267)
!6272 = !DILocation(line: 89, column: 22, scope: !6273)
!6273 = distinct !DILexicalBlock(scope: !6265, file: !107, line: 88, column: 16)
!6274 = !DILocation(line: 89, column: 13, scope: !6273)
!6275 = !DILocation(line: 90, column: 15, scope: !6273)
!6276 = !DILocation(line: 0, scope: !6265)
!6277 = distinct !{!6277, !6238, !6278, !244}
!6278 = !DILocation(line: 93, column: 5, scope: !6231)
!6279 = !DILocation(line: 94, column: 5, scope: !6231)
!6280 = !DILocation(line: 95, column: 28, scope: !6231)
!6281 = !DILocation(line: 97, column: 5, scope: !6231)
!6282 = distinct !DISubprogram(name: "randombytes_init", scope: !107, file: !107, line: 136, type: !6283, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6283 = !DISubroutineType(types: !6284)
!6284 = !{null, !18, !18, !45}
!6285 = !DILocalVariable(name: "entropy_input", arg: 1, scope: !6282, file: !107, line: 136, type: !18)
!6286 = !DILocation(line: 0, scope: !6282)
!6287 = !DILocalVariable(name: "personalization_string", arg: 2, scope: !6282, file: !107, line: 137, type: !18)
!6288 = !DILocalVariable(name: "security_strength", arg: 3, scope: !6282, file: !107, line: 138, type: !45)
!6289 = !DILocation(line: 139, column: 12, scope: !6282)
!6290 = !DILocation(line: 139, column: 5, scope: !6282)
!6291 = distinct !DISubprogram(name: "randombytes_init_nist", scope: !107, file: !107, line: 51, type: !6283, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6292 = !DILocalVariable(name: "entropy_input", arg: 1, scope: !6291, file: !107, line: 51, type: !18)
!6293 = !DILocation(line: 0, scope: !6291)
!6294 = !DILocalVariable(name: "personalization_string", arg: 2, scope: !6291, file: !107, line: 52, type: !18)
!6295 = !DILocalVariable(name: "security_strength", arg: 3, scope: !6291, file: !107, line: 53, type: !45)
!6296 = !DILocalVariable(name: "seed_material", scope: !6291, file: !107, line: 54, type: !6152)
!6297 = !DILocation(line: 54, column: 21, scope: !6291)
!6298 = !DILocation(line: 57, column: 5, scope: !6291)
!6299 = !DILocation(line: 58, column: 9, scope: !6300)
!6300 = distinct !DILexicalBlock(scope: !6291, file: !107, line: 58, column: 9)
!6301 = !DILocation(line: 59, column: 9, scope: !6302)
!6302 = distinct !DILexicalBlock(scope: !6300, file: !107, line: 59, column: 9)
!6303 = !DILocation(line: 59, scope: !6302)
!6304 = !DILocalVariable(name: "i", scope: !6302, file: !107, line: 59, type: !45)
!6305 = !DILocation(line: 0, scope: !6302)
!6306 = !DILocation(line: 59, column: 27, scope: !6307)
!6307 = distinct !DILexicalBlock(scope: !6302, file: !107, line: 59, column: 9)
!6308 = !DILocation(line: 60, column: 33, scope: !6309)
!6309 = distinct !DILexicalBlock(scope: !6307, file: !107, line: 59, column: 38)
!6310 = !DILocation(line: 60, column: 13, scope: !6309)
!6311 = !DILocation(line: 60, column: 30, scope: !6309)
!6312 = !DILocation(line: 59, column: 34, scope: !6307)
!6313 = !DILocation(line: 59, column: 9, scope: !6307)
!6314 = distinct !{!6314, !6301, !6315, !244}
!6315 = !DILocation(line: 61, column: 9, scope: !6302)
!6316 = !DILocation(line: 62, column: 5, scope: !6291)
!6317 = !DILocation(line: 63, column: 5, scope: !6291)
!6318 = !DILocation(line: 64, column: 5, scope: !6291)
!6319 = !DILocation(line: 65, column: 29, scope: !6291)
!6320 = !DILocation(line: 66, column: 1, scope: !6291)
