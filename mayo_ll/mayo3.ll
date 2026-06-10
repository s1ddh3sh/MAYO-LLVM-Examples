; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

%struct.AES256_CTR_DRBG_struct = type { [32 x i8], [16 x i8], i32 }
%struct.shake128incctx = type { ptr }

@__const.example_mayo.msg = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 14, [31 x i8] zeroinitializer }>, align 1
@f_tail = internal unnamed_addr constant [4 x i8] c"\08\00\01\07", align 1, !dbg !0
@pqmayo_MAYO_3_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41
@pqmayo_MAYO_3_ref_uint64_t_blocker = dso_local global i64 0, align 8, !dbg !56
@pqmayo_MAYO_3_ref_unsigned_char_blocker = dso_local global i8 0, align 1, !dbg !60
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
  %epk = alloca [49147 x i64], align 8
  %esk = alloca [48897 x i64], align 8
  %msg = alloca [32 x i8], align 1
  %msg2 = alloca [32 x i8], align 1
    #dbg_value(ptr null, !168, !DIExpression(), !169)
    #dbg_value(i32 32, !170, !DIExpression(), !169)
  store i32 32, ptr %msglen, align 4, !dbg !171
    #dbg_value(i32 32, !170, !DIExpression(), !169)
    #dbg_value(i32 713, !172, !DIExpression(), !169)
  store i32 713, ptr %smlen, align 4, !dbg !173
  %call = call dereferenceable_or_null(2986) ptr @calloc(i32 noundef 2986, i32 noundef 1) #5, !dbg !174
    #dbg_value(ptr %call, !175, !DIExpression(), !169)
  %call1 = call dereferenceable_or_null(32) ptr @calloc(i32 noundef 32, i32 noundef 1) #5, !dbg !176
    #dbg_value(ptr %call1, !177, !DIExpression(), !169)
    #dbg_declare(ptr %epk, !178, !DIExpression(), !183)
    #dbg_declare(ptr %esk, !184, !DIExpression(), !189)
  %0 = load i32, ptr %msglen, align 4, !dbg !190
    #dbg_value(i32 %0, !170, !DIExpression(), !169)
  %add2 = add i32 %0, 681, !dbg !191
  %call3 = call ptr @calloc(i32 noundef %add2, i32 noundef 1) #5, !dbg !192
    #dbg_value(ptr %call3, !193, !DIExpression(), !169)
    #dbg_declare(ptr %msg, !194, !DIExpression(), !195)
  call void @mayo_memcpy(ptr %msg, ptr @__const.example_mayo.msg, i32 32), !dbg !195
    #dbg_declare(ptr %msg2, !196, !DIExpression(), !197)
  call void @mayo_memset(ptr %msg2, i8 0, i32 32), !dbg !197
  %call4 = call i32 @pqmayo_MAYO_3_ref_mayo_keypair(ptr noundef null, ptr noundef %call, ptr noundef %call1) #4, !dbg !198
    #dbg_value(i32 0, !199, !DIExpression(), !169)
  %call5 = call i32 @pqmayo_MAYO_3_ref_mayo_expand_sk(ptr noundef null, ptr noundef %call1, ptr noundef nonnull %esk) #4, !dbg !200
    #dbg_value(i32 0, !199, !DIExpression(), !169)
  %call11 = call i32 @pqmayo_MAYO_3_ref_mayo_expand_pk(ptr noundef null, ptr noundef %call, ptr noundef nonnull %epk) #4, !dbg !201
    #dbg_value(i32 0, !199, !DIExpression(), !169)
  %1 = load i32, ptr %msglen, align 4, !dbg !202
    #dbg_value(i32 %1, !170, !DIExpression(), !169)
    #dbg_value(ptr %smlen, !172, !DIExpression(DW_OP_deref), !169)
  %call17 = call i32 @pqmayo_MAYO_3_ref_mayo_sign(ptr noundef null, ptr noundef %call3, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #4, !dbg !203
    #dbg_value(i32 0, !199, !DIExpression(), !169)
  %2 = load i32, ptr %smlen, align 4, !dbg !204
    #dbg_value(i32 %2, !172, !DIExpression(), !169)
    #dbg_value(ptr %msglen, !170, !DIExpression(DW_OP_deref), !169)
  %call23 = call i32 @pqmayo_MAYO_3_ref_mayo_open(ptr noundef null, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call3, i32 noundef %2, ptr noundef %call) #4, !dbg !205
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
  %call32 = call i32 @pqmayo_MAYO_3_ref_mayo_verify(ptr noundef null, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call3, ptr noundef %call) #4, !dbg !212
    #dbg_value(i32 %call32, !199, !DIExpression(), !169)
  %sext = sub nsw i32 0, %call32, !dbg !213
  br label %err, !dbg !213

err:                                              ; preds = %if.end30, %entry, %lor.lhs.false
  %res.0 = phi i32 [ -1, %lor.lhs.false ], [ -1, %entry ], [ %sext, %if.end30 ], !dbg !169
    #dbg_value(i32 %res.0, !199, !DIExpression(), !169)
    #dbg_label(!215, !216)
  call void @free(ptr noundef %call) #6, !dbg !217
  call void @mayo_secure_free(ptr noundef %call1, i32 noundef 32) #4, !dbg !218
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
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !275 {
entry:
    #dbg_value(ptr %p, !306, !DIExpression(), !307)
    #dbg_value(ptr %pk, !308, !DIExpression(), !307)
    #dbg_value(ptr %sk, !309, !DIExpression(), !307)
    #dbg_value(i32 0, !310, !DIExpression(), !307)
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #4, !dbg !311
    #dbg_value(i32 0, !310, !DIExpression(), !307)
    #dbg_label(!312, !313)
  ret i32 0, !dbg !314
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !315 {
entry:
  %S = alloca [556 x i8], align 1
  %P = alloca [48762 x i64], align 8
  %P3 = alloca [700 x i64], align 8
  %O = alloca [1080 x i8], align 1
  %P3_upper = alloca [385 x i64], align 8
    #dbg_value(ptr %p, !316, !DIExpression(), !317)
    #dbg_value(ptr %cpk, !318, !DIExpression(), !317)
    #dbg_value(ptr %csk, !319, !DIExpression(), !317)
    #dbg_value(i32 0, !320, !DIExpression(), !317)
    #dbg_value(ptr %csk, !321, !DIExpression(), !317)
    #dbg_declare(ptr %S, !322, !DIExpression(), !326)
    #dbg_declare(ptr %P, !327, !DIExpression(), !331)
    #dbg_declare(ptr %P3, !332, !DIExpression(), !336)
  call void @mayo_memset(ptr %P3, i8 0, i32 5600), !dbg !336
    #dbg_declare(ptr %O, !337, !DIExpression(), !341)
    #dbg_value(i32 7, !342, !DIExpression(), !317)
    #dbg_value(i32 108, !344, !DIExpression(), !317)
    #dbg_value(i32 108, !345, !DIExpression(), !317)
    #dbg_value(i32 10, !346, !DIExpression(), !317)
    #dbg_value(i32 540, !347, !DIExpression(), !317)
    #dbg_value(i32 41202, !348, !DIExpression(), !317)
    #dbg_value(i32 385, !349, !DIExpression(), !317)
    #dbg_value(i32 16, !350, !DIExpression(), !317)
    #dbg_value(i32 32, !351, !DIExpression(), !317)
    #dbg_value(ptr %P, !352, !DIExpression(), !317)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 329616, !dbg !353
    #dbg_value(ptr %add.ptr, !354, !DIExpression(), !317)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 32) #4, !dbg !355
    #dbg_value(ptr %P, !352, !DIExpression(), !317)
  call void @shake256(ptr noundef nonnull %S, i32 noundef 556, ptr noundef %csk, i32 noundef 32) #4, !dbg !357
    #dbg_value(ptr %S, !358, !DIExpression(), !317)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !359
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 1080) #4, !dbg !360
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #4, !dbg !361
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #4, !dbg !362
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #6, !dbg !363
    #dbg_declare(ptr %P3_upper, !364, !DIExpression(), !368)
  call void @pqmayo_MAYO_3_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 10) #4, !dbg !369
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !370
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 55, i32 noundef 108) #4, !dbg !371
    #dbg_value(i32 0, !320, !DIExpression(), !317)
    #dbg_label(!372, !373)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 1080) #4, !dbg !374
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 60480) #4, !dbg !375
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 5600) #4, !dbg !376
  ret i32 0, !dbg !377
}

; Function Attrs: nounwind
define internal fastcc void @decode(ptr noundef %m, ptr noundef %mdec, i32 noundef range(i32 -2147483537, -2147483648) %mdeclen) unnamed_addr #0 !dbg !378 {
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
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 376164, ptr noundef %seed_pk, i32 noundef 16) #4, !dbg !421
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 6966, i32 noundef 108) #4, !dbg !422
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
    #dbg_value(i32 7, !435, !DIExpression(), !430)
    #dbg_value(i32 108, !436, !DIExpression(), !430)
    #dbg_value(i32 10, !437, !DIExpression(), !430)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #4, !dbg !438
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 7, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 108, i32 noundef 10, i32 noundef 10) #4, !dbg !439
  ret void, !dbg !440
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @pack_m_vecs(ptr noundef nonnull %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) unnamed_addr #0 !dbg !441 {
entry:
    #dbg_value(ptr %in, !444, !DIExpression(), !445)
    #dbg_value(ptr %out, !446, !DIExpression(), !445)
    #dbg_value(i32 55, !447, !DIExpression(), !445)
    #dbg_value(i32 108, !448, !DIExpression(), !445)
    #dbg_value(i32 7, !449, !DIExpression(), !445)
    #dbg_value(ptr %in, !450, !DIExpression(), !445)
    #dbg_value(i32 0, !451, !DIExpression(), !453)
  br label %for.cond, !dbg !454

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !455
    #dbg_value(i32 %i.0, !451, !DIExpression(), !453)
  %exitcond = icmp ne i32 %i.0, 55, !dbg !456
  br i1 %exitcond, label %for.body, label %for.end, !dbg !458

for.body:                                         ; preds = %for.cond
  %div1 = mul nuw nsw i32 %i.0, 54, !dbg !459
  %add.ptr = getelementptr inbounds nuw i8, ptr %out, i32 %div1, !dbg !461
  %mul3 = mul nuw nsw i32 %i.0, 56, !dbg !462
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %in, i32 %mul3, !dbg !463
  %call = call ptr @memmove(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr4, i32 noundef 54) #6, !dbg !464
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
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 7, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 108, i32 noundef 108, i32 noundef 10, i32 noundef 1) #4, !dbg !478
  ret void, !dbg !479
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !480 {
entry:
    #dbg_value(i32 7, !483, !DIExpression(), !484)
    #dbg_value(ptr %mat, !485, !DIExpression(), !484)
    #dbg_value(ptr %bs_mat, !486, !DIExpression(), !484)
    #dbg_value(ptr %acc, !487, !DIExpression(), !484)
    #dbg_value(i32 108, !488, !DIExpression(), !484)
    #dbg_value(i32 10, !489, !DIExpression(), !484)
    #dbg_value(i32 10, !490, !DIExpression(), !484)
    #dbg_value(i32 0, !491, !DIExpression(), !493)
  br label %for.cond, !dbg !494

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !495
    #dbg_value(i32 %r.0, !491, !DIExpression(), !493)
  %exitcond2 = icmp ne i32 %r.0, 10, !dbg !496
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !498

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !499

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !502
    #dbg_value(i32 %c.0, !503, !DIExpression(), !504)
  %exitcond1 = icmp ne i32 %c.0, 108, !dbg !505
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !499

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !507

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !510
    #dbg_value(i32 %k.0, !511, !DIExpression(), !512)
  %exitcond = icmp ne i32 %k.0, 10, !dbg !513
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !507

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, 10, !dbg !515
  %add = add nuw nsw i32 %mul, %k.0, !dbg !517
  %add.ptr.idx = mul nuw nsw i32 %add, 56, !dbg !518
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !518
  %mul8 = mul nuw nsw i32 %c.0, 10, !dbg !519
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !520
  %arrayidx = getelementptr i8, ptr %0, i32 %r.0, !dbg !520
  %1 = load i8, ptr %arrayidx, align 1, !dbg !520
  %mul10 = mul nuw nsw i32 %r.0, 10, !dbg !521
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !522
  %add.ptr13.idx = mul nuw nsw i32 %add11, 56, !dbg !523
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !523
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #4, !dbg !524
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
  %exitcond = icmp ne i32 %i.0, 7, !dbg !555
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
    #dbg_value(i32 7, !613, !DIExpression(), !614)
    #dbg_value(ptr %bs_mat, !615, !DIExpression(), !614)
    #dbg_value(ptr %mat, !616, !DIExpression(), !614)
    #dbg_value(ptr %acc, !617, !DIExpression(), !614)
    #dbg_value(i32 108, !618, !DIExpression(), !614)
    #dbg_value(i32 108, !619, !DIExpression(), !614)
    #dbg_value(i32 10, !620, !DIExpression(), !614)
    #dbg_value(i32 1, !621, !DIExpression(), !614)
    #dbg_value(i32 0, !622, !DIExpression(), !614)
    #dbg_value(i32 0, !623, !DIExpression(), !625)
  br label %for.cond, !dbg !626

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 108, %entry ], !dbg !627
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !627
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !628
    #dbg_value(i32 %r.0, !623, !DIExpression(), !625)
    #dbg_value(i32 %bs_mat_entries_used.0, !622, !DIExpression(), !614)
  %exitcond2 = icmp ne i32 %r.0, 108, !dbg !629
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
  %exitcond = icmp ne i32 %k.0, 10, !dbg !646
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !640

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !648
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !648
  %mul8 = mul nuw nsw i32 %c.0, 10, !dbg !650
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !651
  %arrayidx = getelementptr i8, ptr %1, i32 %k.0, !dbg !651
  %2 = load i8, ptr %arrayidx, align 1, !dbg !651
  %mul9 = mul nuw nsw i32 %r.0, 10, !dbg !652
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !653
  %add.ptr12.idx = mul nuw nsw i32 %add10, 56, !dbg !654
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !654
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #4, !dbg !655
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
define internal fastcc void @unpack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef range(i32 55, 6967) %vecs, i32 noundef %m) unnamed_addr #0 !dbg !670 {
entry:
  %tmp = alloca [7 x i64], align 8
    #dbg_value(ptr %in, !673, !DIExpression(), !674)
    #dbg_value(ptr %out, !675, !DIExpression(), !674)
    #dbg_value(i32 %vecs, !676, !DIExpression(), !674)
    #dbg_value(i32 108, !677, !DIExpression(), !674)
    #dbg_value(i32 7, !678, !DIExpression(), !674)
    #dbg_value(ptr %out, !679, !DIExpression(), !674)
    #dbg_declare(ptr %tmp, !680, !DIExpression(), !684)
  call void @mayo_memset(ptr %tmp, i8 0, i32 56), !dbg !684
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
  %div1 = mul nsw i32 %i.0, 54, !dbg !693
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %div1, !dbg !695
  %call = call ptr @memcpy(ptr noundef nonnull %tmp, ptr noundef %add.ptr, i32 noundef 54) #6, !dbg !696
  %mul4 = mul nsw i32 %i.0, 56, !dbg !697
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %out, i32 %mul4, !dbg !698
  %call8 = call ptr @memcpy(ptr noundef %add.ptr5, ptr noundef nonnull %tmp, i32 noundef 56) #6, !dbg !699
    #dbg_value(i32 %i.0, !685, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !687)
  br label %for.cond, !dbg !700, !llvm.loop !701

for.end:                                          ; preds = %for.cond
  ret void, !dbg !703
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !704 {
entry:
  %S = alloca [556 x i8], align 1
    #dbg_value(ptr %p, !707, !DIExpression(), !708)
    #dbg_value(ptr %csk, !709, !DIExpression(), !708)
    #dbg_value(ptr %sk, !710, !DIExpression(), !708)
    #dbg_value(i32 0, !711, !DIExpression(), !708)
    #dbg_declare(ptr %S, !712, !DIExpression(), !713)
    #dbg_value(ptr %sk, !714, !DIExpression(), !708)
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sk, i32 390096, !dbg !715
    #dbg_value(ptr %add.ptr1, !716, !DIExpression(), !708)
    #dbg_value(i32 10, !717, !DIExpression(), !708)
    #dbg_value(i32 108, !718, !DIExpression(), !708)
    #dbg_value(i32 540, !719, !DIExpression(), !708)
    #dbg_value(i32 16, !720, !DIExpression(), !708)
    #dbg_value(i32 32, !721, !DIExpression(), !708)
    #dbg_value(ptr %csk, !722, !DIExpression(), !708)
    #dbg_value(ptr %S, !723, !DIExpression(), !708)
  call void @shake256(ptr noundef nonnull %S, i32 noundef 556, ptr noundef %csk, i32 noundef 32) #4, !dbg !724
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !725
  call fastcc void @decode(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr1, i32 noundef 1080) #4, !dbg !726
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #4, !dbg !727
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %sk, i32 329616, !dbg !728
    #dbg_value(ptr %add.ptr5, !729, !DIExpression(), !708)
    #dbg_value(ptr %sk, !730, !DIExpression(), !708)
    #dbg_value(ptr %add.ptr5, !731, !DIExpression(), !708)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %add.ptr1, ptr noundef nonnull %add.ptr5) #4, !dbg !732
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 556) #4, !dbg !733
  ret i32 0, !dbg !734
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !735 {
entry:
    #dbg_value(ptr %p, !736, !DIExpression(), !737)
    #dbg_value(ptr %P1, !738, !DIExpression(), !737)
    #dbg_value(ptr %O, !739, !DIExpression(), !737)
    #dbg_value(ptr %acc, !740, !DIExpression(), !737)
    #dbg_value(i32 10, !741, !DIExpression(), !737)
    #dbg_value(i32 108, !742, !DIExpression(), !737)
    #dbg_value(i32 7, !743, !DIExpression(), !737)
    #dbg_value(i32 0, !744, !DIExpression(), !737)
    #dbg_value(i32 0, !745, !DIExpression(), !747)
  br label %for.cond, !dbg !748

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 108, %entry ], !dbg !749
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc27 ], !dbg !749
  %r.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !dbg !750
    #dbg_value(i32 %r.0, !745, !DIExpression(), !747)
    #dbg_value(i32 %bs_mat_entries_used.0, !744, !DIExpression(), !737)
  %exitcond2 = icmp ne i32 %r.0, 108, !dbg !751
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
  %exitcond = icmp ne i32 %k.0, 10, !dbg !770
  br i1 %exitcond, label %for.body7, label %for.inc25.loopexit, !dbg !765

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !772
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !772
  %mul8 = mul nuw nsw i32 %c.0, 10, !dbg !774
  %1 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8, !dbg !775
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i32 %k.0, !dbg !775
  %2 = load i8, ptr %arrayidx, align 1, !dbg !775
  %mul10 = mul nuw nsw i32 %r.0, 10, !dbg !776
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !777
  %add.ptr13.idx = mul nuw nsw i32 %add11, 56, !dbg !778
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !778
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef %add.ptr, i8 noundef zeroext %2, ptr noundef %add.ptr13) #4, !dbg !779
  %add.ptr15.idx = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !780
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !780
  %mul16 = mul nuw nsw i32 %r.0, 10, !dbg !781
  %3 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16, !dbg !782
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %3, i32 %k.0, !dbg !782
  %4 = load i8, ptr %arrayidx18, align 1, !dbg !782
  %mul19 = mul nuw nsw i32 %c.0, 10, !dbg !783
  %add20 = add nuw nsw i32 %mul19, %k.0, !dbg !784
  %add.ptr22.idx = mul nuw nsw i32 %add20, 56, !dbg !785
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !785
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef %add.ptr15, i8 noundef zeroext %4, ptr noundef %add.ptr22) #4, !dbg !786
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
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !801 {
entry:
  %tenc = alloca [54 x i8], align 1
  %t = alloca [108 x i8], align 1
  %y = alloca [108 x i8], align 1
  %salt = alloca [32 x i8], align 1
  %V = alloca [649 x i8], align 1
  %Vdec = alloca [1188 x i8], align 1
  %A = alloca [12432 x i8], align 1
  %x = alloca [1298 x i8], align 1
  %r = alloca [111 x i8], align 1
  %s = alloca [1298 x i8], align 1
  %sk = alloca [48897 x i64], align 32
  %Ox = alloca [108 x i8], align 1
  %tmp = alloca [113 x i8], align 1
  %Mtmp = alloca [770 x i64], align 8
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
    #dbg_declare(ptr %salt, !825, !DIExpression(), !826)
    #dbg_declare(ptr %V, !827, !DIExpression(), !831)
    #dbg_declare(ptr %Vdec, !832, !DIExpression(), !836)
    #dbg_declare(ptr %A, !837, !DIExpression(), !841)
  call void @mayo_memset(ptr %A, i8 0, i32 12432), !dbg !841
    #dbg_declare(ptr %x, !842, !DIExpression(), !846)
    #dbg_declare(ptr %r, !847, !DIExpression(), !851)
  call void @mayo_memset(ptr %r, i8 0, i32 111), !dbg !851
    #dbg_declare(ptr %s, !852, !DIExpression(), !853)
    #dbg_declare(ptr %sk, !854, !DIExpression(), !855)
    #dbg_declare(ptr %Ox, !856, !DIExpression(), !857)
    #dbg_declare(ptr %tmp, !858, !DIExpression(), !862)
    #dbg_value(i32 108, !863, !DIExpression(), !806)
    #dbg_value(i32 118, !864, !DIExpression(), !806)
    #dbg_value(i32 10, !865, !DIExpression(), !806)
    #dbg_value(i32 11, !866, !DIExpression(), !806)
    #dbg_value(i32 108, !867, !DIExpression(), !806)
    #dbg_value(i32 54, !868, !DIExpression(), !806)
    #dbg_value(i32 54, !869, !DIExpression(), !806)
    #dbg_value(i32 55, !870, !DIExpression(), !806)
    #dbg_value(i32 681, !871, !DIExpression(), !806)
    #dbg_value(i32 111, !872, !DIExpression(), !806)
    #dbg_value(i32 48, !873, !DIExpression(), !806)
    #dbg_value(i32 32, !874, !DIExpression(), !806)
    #dbg_value(i32 32, !875, !DIExpression(), !806)
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #4, !dbg !876
    #dbg_value(i32 0, !812, !DIExpression(), !806)
    #dbg_value(ptr %csk, !877, !DIExpression(), !806)
  call void @shake256(ptr noundef nonnull %tmp, i32 noundef 48, ptr noundef %m, i32 noundef %mlen) #4, !dbg !878
    #dbg_value(ptr %sk, !879, !DIExpression(), !806)
    #dbg_value(ptr %add.ptr, !880, !DIExpression(), !806)
    #dbg_declare(ptr %Mtmp, !881, !DIExpression(), !885)
  call void @mayo_memset(ptr %Mtmp, i8 0, i32 6160), !dbg !885
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 48, !dbg !886
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 32) #4, !dbg !888
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 80, !dbg !889
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 32) #6, !dbg !890
  call void @shake256(ptr noundef nonnull %salt, i32 noundef 32, ptr noundef nonnull %tmp, i32 noundef 112) #4, !dbg !891
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 48, !dbg !892
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 32) #6, !dbg !893
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 112, !dbg !894
    #dbg_value(ptr %add.ptr24, !895, !DIExpression(), !806)
  call void @shake256(ptr noundef nonnull %tenc, i32 noundef 54, ptr noundef nonnull %tmp, i32 noundef 80) #4, !dbg !896
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 108) #4, !dbg !897
  store i8 0, ptr %add.ptr24, align 1, !dbg !898
  call void @shake256(ptr noundef nonnull %V, i32 noundef 649, ptr noundef nonnull %tmp, i32 noundef 113) #4, !dbg !899
    #dbg_value(i32 0, !900, !DIExpression(), !902)
  br label %for.cond, !dbg !903

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !904
    #dbg_value(i32 %i.0, !900, !DIExpression(), !902)
  %exitcond = icmp ne i32 %i.0, 11, !dbg !905
  br i1 %exitcond, label %for.body, label %for.end, !dbg !907

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 54, !dbg !908
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !910
  %mul37 = mul nuw nsw i32 %i.0, 108, !dbg !911
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul37, !dbg !912
  call fastcc void @decode(ptr noundef nonnull %add.ptr35, ptr noundef nonnull %add.ptr38, i32 noundef 108) #4, !dbg !913
  %inc = add nuw nsw i32 %i.0, 1, !dbg !914
    #dbg_value(i32 %inc, !900, !DIExpression(), !902)
  br label %for.cond, !dbg !915, !llvm.loop !916

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 329616, !dbg !918
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #4, !dbg !919
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #4, !dbg !920
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #4, !dbg !921
    #dbg_value(i32 0, !922, !DIExpression(), !924)
  br label %for.cond48, !dbg !925

for.cond48:                                       ; preds = %for.body50, %for.end
  %i47.0 = phi i32 [ 0, %for.end ], [ %inc53, %for.body50 ], !dbg !926
    #dbg_value(i32 %i47.0, !922, !DIExpression(), !924)
  %exitcond1 = icmp ne i32 %i47.0, 108, !dbg !927
  br i1 %exitcond1, label %for.body50, label %for.end54, !dbg !929

for.body50:                                       ; preds = %for.cond48
  %0 = mul nuw nsw i32 %i47.0, 111, !dbg !930
  %sub = add nuw nsw i32 %0, 110, !dbg !932
  %arrayidx = getelementptr inbounds nuw [12432 x i8], ptr %A, i32 0, i32 %sub, !dbg !933
  store i8 0, ptr %arrayidx, align 1, !dbg !934
  %inc53 = add nuw nsw i32 %i47.0, 1, !dbg !935
    #dbg_value(i32 %inc53, !922, !DIExpression(), !924)
  br label %for.cond48, !dbg !936, !llvm.loop !937

for.end54:                                        ; preds = %for.cond48
  %add.ptr56 = getelementptr inbounds nuw i8, ptr %V, i32 594, !dbg !939
  call fastcc void @decode(ptr noundef nonnull %add.ptr56, ptr noundef nonnull %r, i32 noundef 110) #4, !dbg !940
  %call62 = call i32 @pqmayo_MAYO_3_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 11, i32 noundef 10, i32 noundef 108, i32 noundef 111) #4, !dbg !941
  %tobool.not = icmp eq i32 %call62, 0, !dbg !941
  br i1 %tobool.not, label %if.else, label %if.end68, !dbg !941

if.else:                                          ; preds = %for.end54
  %call65 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 6160) #6, !dbg !943
  %call67 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 12432) #6, !dbg !945
  br label %if.end68

if.end68:                                         ; preds = %for.end54, %if.else
    #dbg_value(i32 0, !946, !DIExpression(), !948)
  br label %for.cond70, !dbg !949

for.cond70:                                       ; preds = %for.body72, %if.end68
  %i69.0 = phi i32 [ 0, %if.end68 ], [ %inc96, %for.body72 ], !dbg !950
    #dbg_value(i32 %i69.0, !946, !DIExpression(), !948)
  %exitcond2 = icmp ne i32 %i69.0, 11, !dbg !951
  br i1 %exitcond2, label %for.body72, label %for.end97, !dbg !953

for.body72:                                       ; preds = %for.cond70
  %mul74 = mul nuw nsw i32 %i69.0, 108, !dbg !954
  %add.ptr75 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul74, !dbg !956
    #dbg_value(ptr %add.ptr75, !957, !DIExpression(), !806)
  %add.ptr78 = getelementptr inbounds nuw i8, ptr %sk, i32 390096, !dbg !958
  %mul80 = mul nuw nsw i32 %i69.0, 10, !dbg !959
  %add.ptr81 = getelementptr inbounds nuw i8, ptr %x, i32 %mul80, !dbg !960
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr78, ptr noundef nonnull %add.ptr81, ptr noundef nonnull %Ox, i32 noundef 10, i32 noundef 108, i32 noundef 1) #4, !dbg !961
  %mul85 = mul nuw nsw i32 %i69.0, 118, !dbg !962
  %add.ptr86 = getelementptr inbounds nuw i8, ptr %s, i32 %mul85, !dbg !963
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr75, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr86, i32 noundef 108, i32 noundef 1) #4, !dbg !964
  %mul88 = mul nuw nsw i32 %i69.0, 118, !dbg !965
  %add.ptr89 = getelementptr inbounds nuw i8, ptr %s, i32 %mul88, !dbg !966
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %add.ptr89, i32 108, !dbg !967
  %mul92 = mul nuw nsw i32 %i69.0, 10, !dbg !968
  %add.ptr93 = getelementptr inbounds nuw i8, ptr %x, i32 %mul92, !dbg !969
  %call94 = call ptr @memcpy(ptr noundef nonnull %add.ptr90, ptr noundef nonnull %add.ptr93, i32 noundef 10) #6, !dbg !970
  %inc96 = add nuw nsw i32 %i69.0, 1, !dbg !971
    #dbg_value(i32 %inc96, !946, !DIExpression(), !948)
  br label %for.cond70, !dbg !972, !llvm.loop !973

for.end97:                                        ; preds = %for.cond70
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 1298) #4, !dbg !975
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %sig, i32 649, !dbg !976
  %call102 = call ptr @memcpy(ptr noundef nonnull %add.ptr100, ptr noundef nonnull %salt, i32 noundef 32) #6, !dbg !977
  store i32 681, ptr %siglen, align 4, !dbg !978
    #dbg_value(i32 0, !812, !DIExpression(), !806)
    #dbg_label(!979, !980)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 649) #4, !dbg !981
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 1188) #4, !dbg !982
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 12432) #4, !dbg !983
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 111) #4, !dbg !984
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sk, i32 390096, !dbg !985
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr109, i32 noundef 1080) #4, !dbg !986
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 391176) #4, !dbg !987
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 108) #4, !dbg !988
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 113) #4, !dbg !989
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 6160) #4, !dbg !990
  ret i32 0, !dbg !991
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %L, ptr noundef nonnull %P1, ptr noundef nonnull %VL, ptr noundef nonnull %VP1V) unnamed_addr #0 !dbg !992 {
entry:
  %Pv = alloca [8316 x i64], align 8
    #dbg_value(ptr %p, !995, !DIExpression(), !996)
    #dbg_value(ptr %Vdec, !997, !DIExpression(), !996)
    #dbg_value(ptr %L, !998, !DIExpression(), !996)
    #dbg_value(ptr %P1, !999, !DIExpression(), !996)
    #dbg_value(ptr %VL, !1000, !DIExpression(), !996)
    #dbg_value(ptr %VP1V, !1001, !DIExpression(), !996)
    #dbg_value(i32 11, !1002, !DIExpression(), !996)
    #dbg_value(i32 108, !1003, !DIExpression(), !996)
    #dbg_value(i32 10, !1004, !DIExpression(), !996)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 7, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 11, i32 noundef 108, i32 noundef 10) #4, !dbg !1005
    #dbg_declare(ptr %Pv, !1006, !DIExpression(), !1010)
  call void @mayo_memset(ptr %Pv, i8 0, i32 66528), !dbg !1010
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #4, !dbg !1011
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 7, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 11, i32 noundef 108, i32 noundef 11) #4, !dbg !1012
  ret void, !dbg !1013
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %vPv, ptr noundef nonnull %t, ptr noundef nonnull %y) unnamed_addr #0 !dbg !1014 {
entry:
  %temp = alloca [7 x i64], align 8
    #dbg_value(ptr %p, !1017, !DIExpression(), !1018)
    #dbg_value(ptr %vPv, !1019, !DIExpression(), !1018)
    #dbg_value(ptr %t, !1020, !DIExpression(), !1018)
    #dbg_value(ptr %y, !1021, !DIExpression(), !1018)
    #dbg_value(i32 44, !1022, !DIExpression(), !1018)
    #dbg_value(i32 7, !1024, !DIExpression(), !1018)
    #dbg_value(i64 1, !1025, !DIExpression(), !1028)
    #dbg_value(i64 281474976710656, !1025, !DIExpression(), !1028)
    #dbg_value(i64 281474976710655, !1025, !DIExpression(), !1028)
    #dbg_value(i32 0, !1029, !DIExpression(), !1031)
  br label %for.cond, !dbg !1032

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1033
    #dbg_value(i32 %i.0, !1029, !DIExpression(), !1031)
  %exitcond = icmp ne i32 %i.0, 121, !dbg !1034
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1036

for.body:                                         ; preds = %for.cond
  %.idx7 = mul nuw nsw i32 %i.0, 56, !dbg !1037
  %0 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx7, !dbg !1037
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 48, !dbg !1037
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1039
  %and = and i64 %1, 281474976710655, !dbg !1039
  store i64 %and, ptr %arrayidx, align 8, !dbg !1039
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1040
    #dbg_value(i32 %inc, !1029, !DIExpression(), !1031)
  br label %for.cond, !dbg !1041, !llvm.loop !1042

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %temp, !1044, !DIExpression(), !1045)
  call void @mayo_memset(ptr %temp, i8 0, i32 56), !dbg !1045
    #dbg_value(ptr %temp, !1046, !DIExpression(), !1018)
    #dbg_value(i32 10, !1047, !DIExpression(), !1049)
  br label %for.cond3, !dbg !1050

for.cond3:                                        ; preds = %for.inc77, %for.end
  %i2.0 = phi i32 [ 10, %for.end ], [ %dec78, %for.inc77 ], !dbg !1051
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
  %exitcond10 = icmp ne i32 %j.0, 11, !dbg !1063
  br i1 %exitcond10, label %for.body8, label %for.inc77, !dbg !1055

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %temp, i32 48, !dbg !1065
  %2 = load i64, ptr %arrayidx9, align 8, !dbg !1065
  %shr = lshr i64 %2, 44, !dbg !1067
  %rem.lhs.trunc = trunc i64 %shr to i8, !dbg !1068
    #dbg_value(i8 %rem1, !1069, !DIExpression(), !1070)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %temp, i32 48, !dbg !1071
  %shl11 = shl i64 %2, 4, !dbg !1072
  store i64 %shl11, ptr %arrayidx10, align 8, !dbg !1072
    #dbg_value(i32 5, !1073, !DIExpression(), !1075)
  br label %for.cond12, !dbg !1076

for.cond12:                                       ; preds = %for.body15, %for.body8
  %k.0 = phi i32 [ 5, %for.body8 ], [ %dec, %for.body15 ], !dbg !1077
    #dbg_value(i32 %k.0, !1073, !DIExpression(), !1075)
  %cmp13 = icmp sgt i32 %k.0, -1, !dbg !1078
  br i1 %cmp13, label %for.body15, label %for.cond24.preheader, !dbg !1080

for.cond24.preheader:                             ; preds = %for.cond12
  %rem1 = and i8 %rem.lhs.trunc, 15, !dbg !1068
  br label %for.cond24, !dbg !1081

for.body15:                                       ; preds = %for.cond12
  %arrayidx16 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1083
  %3 = load i64, ptr %arrayidx16, align 8, !dbg !1083
  %shr17 = lshr i64 %3, 60, !dbg !1085
  %add18 = add nuw nsw i32 %k.0, 1, !dbg !1086
  %arrayidx19 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %add18, !dbg !1087
  %4 = load i64, ptr %arrayidx19, align 8, !dbg !1088
  %xor = xor i64 %4, %shr17, !dbg !1088
  store i64 %xor, ptr %arrayidx19, align 8, !dbg !1088
  %arrayidx20 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1089
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
  %exitcond9 = icmp ne i32 %k49.0, 7, !dbg !1127
  br i1 %exitcond9, label %for.body53, label %for.inc74, !dbg !1100

for.body53:                                       ; preds = %for.cond50
  %mul54 = mul nuw nsw i32 %i2.0, 11, !dbg !1129
  %add55 = add nuw nsw i32 %mul54, %j.0, !dbg !1131
  %.idx = mul nsw i32 %add55, 56, !dbg !1132
  %10 = getelementptr i8, ptr %vPv, i32 %.idx, !dbg !1132
  %arrayidx58 = getelementptr i64, ptr %10, i32 %k49.0, !dbg !1132
  %11 = load i64, ptr %arrayidx58, align 8, !dbg !1132
  %cmp59.not = icmp eq i32 %i2.0, %j.0, !dbg !1133
  %mul62 = mul nuw nsw i32 %j.0, 11, !dbg !1134
  %add63 = add nuw nsw i32 %mul62, %i2.0, !dbg !1135
  %.idx4 = mul nsw i32 %add63, 56, !dbg !1136
  %12 = getelementptr i8, ptr %vPv, i32 %.idx4, !dbg !1136
  %arrayidx66 = getelementptr i64, ptr %12, i32 %k49.0, !dbg !1136
  %13 = load i64, ptr %arrayidx66, align 8, !dbg !1136
  %mul67 = select i1 %cmp59.not, i64 0, i64 %13, !dbg !1137
  %xor68 = xor i64 %11, %mul67, !dbg !1138
  %arrayidx69 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %k49.0, !dbg !1139
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
  %cmp82 = icmp samesign ult i32 %i80.0, 108, !dbg !1156
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
  %A = alloca [1568 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1183, !DIExpression(), !1184)
    #dbg_value(ptr %VtL, !1185, !DIExpression(), !1184)
    #dbg_value(ptr %A_out, !1186, !DIExpression(), !1184)
    #dbg_value(i32 0, !1187, !DIExpression(), !1184)
    #dbg_value(i32 0, !1188, !DIExpression(), !1184)
    #dbg_value(i32 7, !1189, !DIExpression(), !1184)
    #dbg_declare(ptr %A, !1190, !DIExpression(), !1194)
  call void @mayo_memset(ptr %A, i8 0, i32 12544), !dbg !1194
    #dbg_value(i32 112, !1195, !DIExpression(), !1184)
    #dbg_value(i64 1, !1196, !DIExpression(), !1199)
    #dbg_value(i64 281474976710656, !1196, !DIExpression(), !1199)
    #dbg_value(i64 281474976710655, !1196, !DIExpression(), !1199)
    #dbg_value(i32 0, !1200, !DIExpression(), !1202)
  br label %for.cond, !dbg !1203

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1204
    #dbg_value(i32 %i.0, !1200, !DIExpression(), !1202)
  %exitcond = icmp ne i32 %i.0, 110, !dbg !1205
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !1207

for.cond3.preheader:                              ; preds = %for.cond
  br label %for.cond3, !dbg !1208

for.body:                                         ; preds = %for.cond
  %.idx = mul nuw nsw i32 %i.0, 56, !dbg !1210
  %0 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx, !dbg !1210
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 48, !dbg !1210
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1212
  %and = and i64 %1, 281474976710655, !dbg !1212
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
  %exitcond8 = icmp ne i32 %i2.0, 11, !dbg !1222
  br i1 %exitcond8, label %for.cond6.preheader, label %for.cond107.preheader, !dbg !1208

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1224

for.cond107.preheader:                            ; preds = %for.cond3
  br label %for.cond107, !dbg !1227

for.cond6:                                        ; preds = %for.cond6.preheader, %if.end95
  %j.0 = phi i32 [ %dec, %if.end95 ], [ 10, %for.cond6.preheader ], !dbg !1229
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end95 ], [ %words_to_shift.0, %for.cond6.preheader ], !dbg !1184
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end95 ], [ %bits_to_shift.0, %for.cond6.preheader ], !dbg !1184
    #dbg_value(i32 %bits_to_shift.1, !1187, !DIExpression(), !1184)
    #dbg_value(i32 %words_to_shift.1, !1188, !DIExpression(), !1184)
    #dbg_value(i32 %j.0, !1230, !DIExpression(), !1231)
  %cmp7.not = icmp slt i32 %j.0, %i2.0, !dbg !1232
  br i1 %cmp7.not, label %for.inc103, label %for.body8, !dbg !1224

for.body8:                                        ; preds = %for.cond6
  %add.ptr.idx = mul nsw i32 %j.0, 560, !dbg !1234
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1234
    #dbg_value(ptr %add.ptr, !1236, !DIExpression(), !1184)
    #dbg_value(i32 0, !1237, !DIExpression(), !1239)
  br label %for.cond11, !dbg !1240

for.cond11:                                       ; preds = %for.inc44, %for.body8
  %c.0 = phi i32 [ 0, %for.body8 ], [ %inc45, %for.inc44 ], !dbg !1241
    #dbg_value(i32 %c.0, !1237, !DIExpression(), !1239)
  %exitcond5 = icmp ne i32 %c.0, 10, !dbg !1242
  br i1 %exitcond5, label %for.cond14.preheader, label %for.end46, !dbg !1244

for.cond14.preheader:                             ; preds = %for.cond11
  br label %for.cond14, !dbg !1245

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc41
  %k.0 = phi i32 [ %inc42, %for.inc41 ], [ 0, %for.cond14.preheader ], !dbg !1248
    #dbg_value(i32 %k.0, !1249, !DIExpression(), !1250)
  %exitcond4 = icmp ne i32 %k.0, 7, !dbg !1251
  br i1 %exitcond4, label %for.body16, label %for.inc44, !dbg !1245

for.body16:                                       ; preds = %for.cond14
  %2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1253
  %arrayidx19.idx = mul nuw nsw i32 %c.0, 56, !dbg !1253
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %2, i32 %arrayidx19.idx, !dbg !1253
  %3 = load i64, ptr %arrayidx19, align 8, !dbg !1253
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1255
  %shl20 = shl i64 %3, %sh_prom, !dbg !1255
  %mul21 = mul nuw nsw i32 %i2.0, 10, !dbg !1256
  %add22 = add nuw nsw i32 %mul21, %c.0, !dbg !1257
  %add23 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1258
  %mul24 = mul i32 %add23, 112, !dbg !1259
  %add25 = add i32 %add22, %mul24, !dbg !1260
  %arrayidx26 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add25, !dbg !1261
  %4 = load i64, ptr %arrayidx26, align 8, !dbg !1262
  %xor = xor i64 %4, %shl20, !dbg !1262
  store i64 %xor, ptr %arrayidx26, align 8, !dbg !1262
  %cmp27 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1263
  br i1 %cmp27, label %if.then, label %for.inc41, !dbg !1263

if.then:                                          ; preds = %for.body16
  %5 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1265
  %arrayidx30.idx = mul nuw nsw i32 %c.0, 56, !dbg !1265
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %5, i32 %arrayidx30.idx, !dbg !1265
  %6 = load i64, ptr %arrayidx30, align 8, !dbg !1265
  %sub31 = sub nsw i32 64, %bits_to_shift.1, !dbg !1267
  %sh_prom32 = zext nneg i32 %sub31 to i64, !dbg !1268
  %shr = lshr i64 %6, %sh_prom32, !dbg !1268
  %mul33 = mul nuw nsw i32 %i2.0, 10, !dbg !1269
  %add34 = add nuw nsw i32 %mul33, %c.0, !dbg !1270
  %add35 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1271
  %7 = mul i32 %add35, 112, !dbg !1272
  %mul37 = add i32 %7, 112, !dbg !1272
  %add38 = add i32 %add34, %mul37, !dbg !1273
  %arrayidx39 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add38, !dbg !1274
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
  %add.ptr51.idx = mul nuw nsw i32 %i2.0, 560, !dbg !1287
  %add.ptr51 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr51.idx, !dbg !1287
    #dbg_value(ptr %add.ptr51, !1289, !DIExpression(), !1184)
    #dbg_value(i32 0, !1290, !DIExpression(), !1292)
  br label %for.cond53, !dbg !1293

for.cond53:                                       ; preds = %for.inc92, %if.then48
  %c52.0 = phi i32 [ 0, %if.then48 ], [ %inc93, %for.inc92 ], !dbg !1294
    #dbg_value(i32 %c52.0, !1290, !DIExpression(), !1292)
  %exitcond7 = icmp ne i32 %c52.0, 10, !dbg !1295
  br i1 %exitcond7, label %for.cond57.preheader, label %if.end95.loopexit, !dbg !1297

for.cond57.preheader:                             ; preds = %for.cond53
  br label %for.cond57, !dbg !1298

for.cond57:                                       ; preds = %for.cond57.preheader, %for.inc89
  %k56.0 = phi i32 [ %inc90, %for.inc89 ], [ 0, %for.cond57.preheader ], !dbg !1301
    #dbg_value(i32 %k56.0, !1302, !DIExpression(), !1303)
  %exitcond6 = icmp ne i32 %k56.0, 7, !dbg !1304
  br i1 %exitcond6, label %for.body59, label %for.inc92, !dbg !1298

for.body59:                                       ; preds = %for.cond57
  %9 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1306
  %arrayidx62.idx = mul nuw nsw i32 %c52.0, 56, !dbg !1306
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %9, i32 %arrayidx62.idx, !dbg !1306
  %10 = load i64, ptr %arrayidx62, align 8, !dbg !1306
  %sh_prom63 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1308
  %shl64 = shl i64 %10, %sh_prom63, !dbg !1308
  %mul65 = mul nsw i32 %j.0, 10, !dbg !1309
  %add66 = add nsw i32 %mul65, %c52.0, !dbg !1310
  %add67 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1311
  %mul68 = mul i32 %add67, 112, !dbg !1312
  %add69 = add i32 %add66, %mul68, !dbg !1313
  %arrayidx70 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add69, !dbg !1314
  %11 = load i64, ptr %arrayidx70, align 8, !dbg !1315
  %xor71 = xor i64 %11, %shl64, !dbg !1315
  store i64 %xor71, ptr %arrayidx70, align 8, !dbg !1315
  %cmp72 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1316
  br i1 %cmp72, label %if.then73, label %for.inc89, !dbg !1316

if.then73:                                        ; preds = %for.body59
  %12 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1318
  %arrayidx76.idx = mul nuw nsw i32 %c52.0, 56, !dbg !1318
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %12, i32 %arrayidx76.idx, !dbg !1318
  %13 = load i64, ptr %arrayidx76, align 8, !dbg !1318
  %sub77 = sub nsw i32 64, %bits_to_shift.1, !dbg !1320
  %sh_prom78 = zext nneg i32 %sub77 to i64, !dbg !1321
  %shr79 = lshr i64 %13, %sh_prom78, !dbg !1321
  %mul80 = mul nsw i32 %j.0, 10, !dbg !1322
  %add81 = add nsw i32 %mul80, %c52.0, !dbg !1323
  %add82 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1324
  %14 = mul i32 %add82, 112, !dbg !1325
  %mul84 = add i32 %14, 112, !dbg !1325
  %add85 = add i32 %add81, %mul84, !dbg !1326
  %arrayidx86 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add85, !dbg !1327
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
  %cmp109 = icmp samesign ult i32 %c106.0, 1232, !dbg !1352
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
  %cmp142 = icmp samesign ult i32 %c140.0, 112, !dbg !1403
  br i1 %cmp142, label %for.cond144.preheader, label %for.cond207.preheader, !dbg !1371

for.cond144.preheader:                            ; preds = %for.cond141
  br label %for.cond144, !dbg !1405

for.cond207.preheader:                            ; preds = %for.cond141
  br label %for.cond207, !dbg !1408

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc200
  %r.0 = phi i32 [ %inc201, %for.inc200 ], [ 108, %for.cond144.preheader ], !dbg !1410
    #dbg_value(i32 %r.0, !1411, !DIExpression(), !1412)
  %exitcond11 = icmp ne i32 %r.0, 174, !dbg !1413
  br i1 %exitcond11, label %for.body146, label %for.inc203, !dbg !1405

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1415
  %mul147 = mul nuw nsw i32 %div1, 112, !dbg !1417
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1418
  %rem = and i32 %r.0, 15, !dbg !1419
  %add149 = or disjoint i32 %add148, %rem, !dbg !1420
    #dbg_value(i32 %add149, !1421, !DIExpression(), !1422)
  %arrayidx150 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add149, !dbg !1423
  %19 = load i64, ptr %arrayidx150, align 8, !dbg !1423
  %and151 = and i64 %19, 1229782938247303441, !dbg !1424
    #dbg_value(i64 %and151, !1425, !DIExpression(), !1422)
  %shr153 = lshr i64 %19, 1, !dbg !1426
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1427
    #dbg_value(i64 %and154, !1428, !DIExpression(), !1422)
  %shr156 = lshr i64 %19, 2, !dbg !1429
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1430
    #dbg_value(i64 %and157, !1431, !DIExpression(), !1422)
  %arrayidx158 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add149, !dbg !1432
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
  %sub187 = add nsw i32 %add186, -108, !dbg !1464
  %div1882 = lshr i32 %sub187, 4, !dbg !1465
  %mul189 = mul i32 %div1882, 112, !dbg !1466
  %add190 = add i32 %mul189, %c140.0, !dbg !1467
  %add191 = add nuw nsw i32 %r.0, %t.0, !dbg !1468
  %sub192 = add nuw nsw i32 %add191, 4, !dbg !1469
  %rem193 = and i32 %sub192, 15, !dbg !1470
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1471
  %arrayidx195 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add194, !dbg !1472
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
  %indvars.iv = phi i32 [ 108, %for.cond207.preheader ], [ %indvars.iv.next, %for.inc241 ], !dbg !1486
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond207.preheader ], !dbg !1486
    #dbg_value(i32 %r206.0, !1487, !DIExpression(), !1488)
  %cmp208 = icmp samesign ult i32 %r206.0, 108, !dbg !1489
  br i1 %cmp208, label %for.cond212.preheader, label %for.end243, !dbg !1408

for.cond212.preheader:                            ; preds = %for.cond207
  br label %for.cond212, !dbg !1491

for.cond212:                                      ; preds = %for.cond212.preheader, %for.inc238
  %c211.0 = phi i32 [ %add239, %for.inc238 ], [ 0, %for.cond212.preheader ], !dbg !1494
    #dbg_value(i32 %c211.0, !1495, !DIExpression(), !1496)
  %cmp213 = icmp samesign ult i32 %c211.0, 110, !dbg !1497
  br i1 %cmp213, label %for.cond217.preheader, label %for.inc241, !dbg !1491

for.cond217.preheader:                            ; preds = %for.cond212
  br label %for.cond217, !dbg !1499

for.cond217:                                      ; preds = %for.cond217.preheader, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond217.preheader ], !dbg !1502
    #dbg_value(i32 %i216.0, !1503, !DIExpression(), !1504)
  %exitcond12 = icmp ne i32 %i216.0, %indvars.iv, !dbg !1505
  br i1 %exitcond12, label %for.body221, label %for.inc238, !dbg !1499

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 7, !dbg !1507
  %add224 = add nuw nsw i32 %div223, %c211.0, !dbg !1509
  %add225 = add nuw nsw i32 %add224, %i216.0, !dbg !1510
  %arrayidx226 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add225, !dbg !1511
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1512
  %mul228 = mul nuw nsw i32 %add227, 111, !dbg !1513
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1514
  %add.ptr230 = getelementptr inbounds nuw i8, ptr %add.ptr229, i32 %c211.0, !dbg !1515
  %cmp232 = icmp samesign ult i32 %c211.0, 94, !dbg !1516
  %sub234 = sub nsw i32 110, %c211.0, !dbg !1516
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
    #dbg_value(i32 10, !1538, !DIExpression(), !1535)
    #dbg_value(i32 108, !1539, !DIExpression(), !1535)
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
  %exitcond = icmp ne i32 %i.0, 108, !dbg !1546
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
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef 10, i32 noundef 1) #4, !dbg !1555
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1558
    #dbg_value(i32 1, !1553, !DIExpression(), !1554)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1559
    #dbg_value(ptr %incdec.ptr, !1537, !DIExpression(), !1535)
  br label %for.cond1, !dbg !1560, !llvm.loop !1561

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw nsw i32 %i.0, 1, !dbg !1563
    #dbg_value(i32 %inc5, !1541, !DIExpression(), !1543)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %a.addr.0, i32 10, !dbg !1564
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
    #dbg_value(i32 108, !1576, !DIExpression(), !1573)
    #dbg_value(i32 1, !1577, !DIExpression(), !1573)
    #dbg_value(i32 0, !1578, !DIExpression(), !1580)
  br label %for.cond, !dbg !1581

for.cond:                                         ; preds = %for.body3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ], !dbg !1582
    #dbg_value(i32 %i.0, !1578, !DIExpression(), !1580)
  %exitcond = icmp ne i32 %i.0, 108, !dbg !1583
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
    #dbg_value(i32 1298, !1608, !DIExpression(), !1606)
    #dbg_value(i32 0, !1609, !DIExpression(), !1606)
  br label %for.cond, !dbg !1610

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1612
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1605, !DIExpression(), !1606)
    #dbg_value(i32 %i.0, !1609, !DIExpression(), !1606)
  %exitcond = icmp ne i32 %i.0, 649, !dbg !1613
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
    #dbg_value(i32 10, !1644, !DIExpression(), !1642)
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
  %exitcond = icmp ne i32 %i.0, 10, !dbg !1652
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
  %0 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !1670
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
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef range(i32 10, 12) %bs_mat_cols) unnamed_addr #0 !dbg !1827 {
entry:
    #dbg_value(i32 7, !1828, !DIExpression(), !1829)
    #dbg_value(ptr %mat, !1830, !DIExpression(), !1829)
    #dbg_value(ptr %bs_mat, !1831, !DIExpression(), !1829)
    #dbg_value(ptr %acc, !1832, !DIExpression(), !1829)
    #dbg_value(i32 11, !1833, !DIExpression(), !1829)
    #dbg_value(i32 108, !1834, !DIExpression(), !1829)
    #dbg_value(i32 %bs_mat_cols, !1835, !DIExpression(), !1829)
    #dbg_value(i32 0, !1836, !DIExpression(), !1838)
  br label %for.cond, !dbg !1839

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1840
    #dbg_value(i32 %r.0, !1836, !DIExpression(), !1838)
  %exitcond2 = icmp ne i32 %r.0, 11, !dbg !1841
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1843

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1844

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1847
    #dbg_value(i32 %c.0, !1848, !DIExpression(), !1849)
  %exitcond1 = icmp ne i32 %c.0, 108, !dbg !1850
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
  %add.ptr.idx = mul nuw nsw i32 %add, 56, !dbg !1863
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1863
  %mul8 = mul nuw nsw i32 %r.0, 108, !dbg !1864
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1865
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1865
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1865
  %mul10 = mul nuw nsw i32 %r.0, %bs_mat_cols, !dbg !1866
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !1867
  %add.ptr13.idx = mul nuw nsw i32 %add11, 56, !dbg !1868
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !1868
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #4, !dbg !1869
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
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 7, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 108, i32 noundef 108, i32 noundef 11, i32 noundef 1) #4, !dbg !1889
  ret void, !dbg !1890
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1891 {
entry:
    #dbg_value(i32 7, !1892, !DIExpression(), !1893)
    #dbg_value(ptr %bs_mat, !1894, !DIExpression(), !1893)
    #dbg_value(ptr %mat, !1895, !DIExpression(), !1893)
    #dbg_value(ptr %acc, !1896, !DIExpression(), !1893)
    #dbg_value(i32 108, !1897, !DIExpression(), !1893)
    #dbg_value(i32 108, !1898, !DIExpression(), !1893)
    #dbg_value(i32 11, !1899, !DIExpression(), !1893)
    #dbg_value(i32 1, !1900, !DIExpression(), !1893)
    #dbg_value(i32 0, !1901, !DIExpression(), !1893)
    #dbg_value(i32 0, !1902, !DIExpression(), !1904)
  br label %for.cond, !dbg !1905

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 108, %entry ], !dbg !1906
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1906
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1907
    #dbg_value(i32 %r.0, !1902, !DIExpression(), !1904)
    #dbg_value(i32 %bs_mat_entries_used.0, !1901, !DIExpression(), !1893)
  %exitcond2 = icmp ne i32 %r.0, 108, !dbg !1908
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
  %exitcond = icmp ne i32 %k.0, 11, !dbg !1925
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1919

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !1927
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1927
  %mul8 = mul nuw nsw i32 %k.0, 108, !dbg !1929
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1930
  %arrayidx = getelementptr i8, ptr %1, i32 %c.0, !dbg !1930
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1930
  %mul9 = mul nuw nsw i32 %r.0, 11, !dbg !1931
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !1932
  %add.ptr12.idx = mul nuw nsw i32 %add10, 56, !dbg !1933
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !1933
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #4, !dbg !1934
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
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1949 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1950, !DIExpression(), !1951)
    #dbg_value(ptr %sm, !1952, !DIExpression(), !1951)
    #dbg_value(ptr %smlen, !1953, !DIExpression(), !1951)
    #dbg_value(ptr %m, !1954, !DIExpression(), !1951)
    #dbg_value(i32 %mlen, !1955, !DIExpression(), !1951)
    #dbg_value(ptr %csk, !1956, !DIExpression(), !1951)
    #dbg_value(i32 0, !1957, !DIExpression(), !1951)
    #dbg_value(i32 681, !1958, !DIExpression(), !1951)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1959
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #6, !dbg !1960
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1961
    #dbg_value(ptr %siglen, !1962, !DIExpression(DW_OP_deref), !1951)
  %call2 = call i32 @pqmayo_MAYO_3_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #4, !dbg !1963
    #dbg_value(i32 0, !1957, !DIExpression(), !1951)
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1962, !DIExpression(), !1951)
  %cmp3.not = icmp eq i32 %0, 681
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
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1978 {
entry:
    #dbg_value(ptr %p, !1979, !DIExpression(), !1980)
    #dbg_value(ptr %m, !1981, !DIExpression(), !1980)
    #dbg_value(ptr %mlen, !1982, !DIExpression(), !1980)
    #dbg_value(ptr %sm, !1983, !DIExpression(), !1980)
    #dbg_value(i32 %smlen, !1984, !DIExpression(), !1980)
    #dbg_value(ptr %pk, !1985, !DIExpression(), !1980)
    #dbg_value(i32 681, !1986, !DIExpression(), !1980)
  %cmp = icmp ult i32 %smlen, 681, !dbg !1987
  br i1 %cmp, label %return, label %if.end, !dbg !1987

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1989
  %sub = add i32 %smlen, -681, !dbg !1990
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #4, !dbg !1991
    #dbg_value(i32 %call, !1992, !DIExpression(), !1980)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1993
  br i1 %cmp1, label %if.then2, label %return, !dbg !1993

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -681, !dbg !1995
  store i32 %sub3, ptr %mlen, align 4, !dbg !1997
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1998
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #6, !dbg !1999
  br label %return, !dbg !2000

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ %call, %if.end ], !dbg !1980
  ret i32 %retval.0, !dbg !2001
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !2002 {
entry:
  %tEnc = alloca [54 x i8], align 1
  %t = alloca [108 x i8], align 1
  %y = alloca [216 x i8], align 1
  %s = alloca [1298 x i8], align 1
  %pk = alloca [49147 x i64], align 8
  %tmp = alloca [80 x i8], align 1
    #dbg_value(ptr %p, !2005, !DIExpression(), !2006)
    #dbg_value(ptr %m, !2007, !DIExpression(), !2006)
    #dbg_value(i32 %mlen, !2008, !DIExpression(), !2006)
    #dbg_value(ptr %sig, !2009, !DIExpression(), !2006)
    #dbg_value(ptr %cpk, !2010, !DIExpression(), !2006)
    #dbg_declare(ptr %tEnc, !2011, !DIExpression(), !2012)
    #dbg_declare(ptr %t, !2013, !DIExpression(), !2014)
    #dbg_declare(ptr %y, !2015, !DIExpression(), !2019)
  call void @mayo_memset(ptr %y, i8 0, i32 216), !dbg !2019
    #dbg_declare(ptr %s, !2020, !DIExpression(), !2021)
    #dbg_declare(ptr %pk, !2022, !DIExpression(), !2023)
  call void @mayo_memset(ptr %pk, i8 0, i32 393176), !dbg !2023
    #dbg_declare(ptr %tmp, !2024, !DIExpression(), !2028)
    #dbg_value(i32 108, !2029, !DIExpression(), !2006)
    #dbg_value(i32 118, !2030, !DIExpression(), !2006)
    #dbg_value(i32 11, !2031, !DIExpression(), !2006)
    #dbg_value(i32 54, !2032, !DIExpression(), !2006)
    #dbg_value(i32 681, !2033, !DIExpression(), !2006)
    #dbg_value(i32 48, !2034, !DIExpression(), !2006)
    #dbg_value(i32 32, !2035, !DIExpression(), !2006)
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #4, !dbg !2036
    #dbg_value(i32 0, !2037, !DIExpression(), !2006)
    #dbg_value(ptr %pk, !2038, !DIExpression(), !2006)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 329616, !dbg !2039
    #dbg_value(ptr %add.ptr, !2040, !DIExpression(), !2006)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 390096, !dbg !2041
    #dbg_value(ptr %add.ptr2, !2042, !DIExpression(), !2006)
  call void @shake256(ptr noundef nonnull %tmp, i32 noundef 48, ptr noundef %m, i32 noundef %mlen) #4, !dbg !2043
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 48, !dbg !2044
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 649, !dbg !2045
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 32) #6, !dbg !2046
  call void @shake256(ptr noundef nonnull %tEnc, i32 noundef 54, ptr noundef nonnull %tmp, i32 noundef 80) #4, !dbg !2047
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 108) #4, !dbg !2048
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 1298) #4, !dbg !2049
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #4, !dbg !2050
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 108) #6, !dbg !2051
  %cmp21 = icmp ne i32 %call20, 0, !dbg !2053
  %. = zext i1 %cmp21 to i32, !dbg !2006
  ret i32 %., !dbg !2054
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !2055 {
entry:
    #dbg_value(ptr %p, !2056, !DIExpression(), !2057)
    #dbg_value(ptr %cpk, !2058, !DIExpression(), !2057)
    #dbg_value(ptr %pk, !2059, !DIExpression(), !2057)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #4, !dbg !2060
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !2061
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 390096, !dbg !2062
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 55, i32 noundef 108) #4, !dbg !2063
  ret i32 0, !dbg !2064
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %eval) unnamed_addr #0 !dbg !2065 {
entry:
  %SPS = alloca [847 x i64], align 8
  %zero = alloca [108 x i8], align 1
    #dbg_value(ptr %p, !2068, !DIExpression(), !2069)
    #dbg_value(ptr %s, !2070, !DIExpression(), !2069)
    #dbg_value(ptr %P1, !2071, !DIExpression(), !2069)
    #dbg_value(ptr %P2, !2072, !DIExpression(), !2069)
    #dbg_value(ptr %P3, !2073, !DIExpression(), !2069)
    #dbg_value(ptr %eval, !2074, !DIExpression(), !2069)
    #dbg_declare(ptr %SPS, !2075, !DIExpression(), !2079)
  call void @mayo_memset(ptr %SPS, i8 0, i32 6776), !dbg !2079
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #4, !dbg !2080
    #dbg_declare(ptr %zero, !2081, !DIExpression(), !2082)
  call void @mayo_memset(ptr %zero, i8 0, i32 108), !dbg !2082
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #4, !dbg !2083
  ret void, !dbg !2084
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %s, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2085 {
entry:
  %PS = alloca [9086 x i64], align 8
    #dbg_value(ptr %p, !2088, !DIExpression(), !2089)
    #dbg_value(ptr %P1, !2090, !DIExpression(), !2089)
    #dbg_value(ptr %P2, !2091, !DIExpression(), !2089)
    #dbg_value(ptr %P3, !2092, !DIExpression(), !2089)
    #dbg_value(ptr %s, !2093, !DIExpression(), !2089)
    #dbg_value(ptr %SPS, !2094, !DIExpression(), !2089)
    #dbg_declare(ptr %PS, !2095, !DIExpression(), !2099)
  call void @mayo_memset(ptr %PS, i8 0, i32 72688), !dbg !2099
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 108, i32 noundef 108, i32 noundef 10, i32 noundef 11, ptr noundef nonnull %PS) #4, !dbg !2100
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 108, i32 noundef 11, i32 noundef 118, ptr noundef %SPS) #4, !dbg !2101
  ret void, !dbg !2102
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef nonnull %PS) unnamed_addr #0 !dbg !2103 {
entry:
  %accumulator = alloca [145376 x i64], align 8
    #dbg_value(ptr %P1, !2106, !DIExpression(), !2107)
    #dbg_value(ptr %P2, !2108, !DIExpression(), !2107)
    #dbg_value(ptr %P3, !2109, !DIExpression(), !2107)
    #dbg_value(ptr %S, !2110, !DIExpression(), !2107)
    #dbg_value(i32 108, !2111, !DIExpression(), !2107)
    #dbg_value(i32 108, !2112, !DIExpression(), !2107)
    #dbg_value(i32 10, !2113, !DIExpression(), !2107)
    #dbg_value(i32 11, !2114, !DIExpression(), !2107)
    #dbg_value(ptr %PS, !2115, !DIExpression(), !2107)
    #dbg_value(i32 118, !2116, !DIExpression(), !2107)
    #dbg_value(i32 7, !2117, !DIExpression(), !2107)
    #dbg_declare(ptr %accumulator, !2118, !DIExpression(), !2122)
  call void @mayo_memset(ptr %accumulator, i8 0, i32 1163008), !dbg !2122
    #dbg_value(i32 0, !2123, !DIExpression(), !2107)
    #dbg_value(i32 0, !2124, !DIExpression(), !2126)
  br label %for.cond, !dbg !2127

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ 108, %entry ], !dbg !2128
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2128
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2129
    #dbg_value(i32 %row.0, !2124, !DIExpression(), !2126)
    #dbg_value(i32 %P1_used.0, !2123, !DIExpression(), !2107)
  %exitcond4 = icmp ne i32 %row.0, 108, !dbg !2130
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
  %exitcond = icmp ne i32 %col.0, 11, !dbg !2151
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2145

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %P1_used.1, 56, !dbg !2153
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !2153
  %mul8 = mul nuw nsw i32 %row.0, 11, !dbg !2155
  %add9 = add nuw nsw i32 %mul8, %col.0, !dbg !2156
  %mul10 = shl nuw nsw i32 %add9, 4, !dbg !2157
  %mul11 = mul nuw nsw i32 %col.0, 118, !dbg !2158
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2159
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2159
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2159
  %conv = zext i8 %2 to i32, !dbg !2159
  %add13 = add nuw nsw i32 %mul10, %conv, !dbg !2160
  %add.ptr15.idx = mul nuw nsw i32 %add13, 56, !dbg !2161
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr15.idx, !dbg !2161
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #4, !dbg !2162
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
  %exitcond3 = icmp ne i32 %j20.0, 10, !dbg !2175
  br i1 %exitcond3, label %for.cond26.preheader, label %for.inc52, !dbg !2143

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2177

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2180
    #dbg_value(i32 %col25.0, !2181, !DIExpression(), !2182)
  %exitcond2 = icmp ne i32 %col25.0, 11, !dbg !2183
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2177

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nuw nsw i32 %row.0, 10, !dbg !2185
  %add31 = add nuw nsw i32 %mul30, %j20.0, !dbg !2187
  %add.ptr33.idx = mul nuw nsw i32 %add31, 56, !dbg !2188
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr33.idx, !dbg !2188
  %mul35 = mul nuw nsw i32 %row.0, 11, !dbg !2189
  %add36 = add nuw nsw i32 %mul35, %col25.0, !dbg !2190
  %mul37 = shl nuw nsw i32 %add36, 4, !dbg !2191
  %mul38 = mul nuw nsw i32 %col25.0, 118, !dbg !2192
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2193
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2193
  %arrayidx41 = getelementptr i8, ptr %4, i32 108, !dbg !2193
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2193
  %conv42 = zext i8 %5 to i32, !dbg !2193
  %add43 = add nuw nsw i32 %mul37, %conv42, !dbg !2194
  %add.ptr45.idx = mul nuw nsw i32 %add43, 56, !dbg !2195
  %add.ptr45 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr45.idx, !dbg !2195
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #4, !dbg !2196
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
  %indvars.iv6 = phi i32 [ 10, %for.cond56.preheader ], [ %indvars.iv.next7, %for.inc90 ], !dbg !2209
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2209
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ 108, %for.cond56.preheader ], !dbg !2210
    #dbg_value(i32 %row55.0, !2211, !DIExpression(), !2212)
    #dbg_value(i32 %P3_used.0, !2213, !DIExpression(), !2107)
  %exitcond9 = icmp ne i32 %row55.0, 118, !dbg !2214
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
  %exitcond5 = icmp ne i32 %col65.0, 11, !dbg !2231
  br i1 %exitcond5, label %for.body69, label %for.inc87, !dbg !2225

for.body69:                                       ; preds = %for.cond66
  %add.ptr71.idx = mul nsw i32 %P3_used.1, 56, !dbg !2233
  %add.ptr71 = getelementptr inbounds i8, ptr %P3, i32 %add.ptr71.idx, !dbg !2233
  %mul73 = mul nuw nsw i32 %row55.0, 11, !dbg !2235
  %add74 = add nuw nsw i32 %mul73, %col65.0, !dbg !2236
  %mul75 = shl nuw nsw i32 %add74, 4, !dbg !2237
  %mul76 = mul nuw nsw i32 %col65.0, 118, !dbg !2238
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2239
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2239
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2239
  %conv79 = zext i8 %8 to i32, !dbg !2239
  %add80 = add nuw nsw i32 %mul75, %conv79, !dbg !2240
  %add.ptr82.idx = mul nuw nsw i32 %add80, 56, !dbg !2241
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr82.idx, !dbg !2241
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #4, !dbg !2242
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
  %exitcond10 = icmp ne i32 %i.0, 1298, !dbg !2257
  br i1 %exitcond10, label %while.body, label %while.end, !dbg !2219

while.body:                                       ; preds = %while.cond
  %add.ptr99.idx = mul nuw nsw i32 %i.0, 896, !dbg !2258
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr99.idx, !dbg !2258
  %add.ptr101.idx = mul nuw nsw i32 %i.0, 56, !dbg !2260
  %add.ptr101 = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr101.idx, !dbg !2260
  call fastcc void @m_vec_multiply_bins(i32 noundef 7, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #4, !dbg !2261
  %inc102 = add nuw nsw i32 %i.0, 1, !dbg !2262
    #dbg_value(i32 %inc102, !2256, !DIExpression(), !2107)
  br label %while.cond, !dbg !2219, !llvm.loop !2263

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2265
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2266 {
entry:
  %accumulator = alloca [13552 x i64], align 8
    #dbg_value(ptr %PS, !2269, !DIExpression(), !2270)
    #dbg_value(ptr %S, !2271, !DIExpression(), !2270)
    #dbg_value(i32 108, !2272, !DIExpression(), !2270)
    #dbg_value(i32 11, !2273, !DIExpression(), !2270)
    #dbg_value(i32 118, !2274, !DIExpression(), !2270)
    #dbg_value(ptr %SPS, !2275, !DIExpression(), !2270)
    #dbg_declare(ptr %accumulator, !2276, !DIExpression(), !2280)
  call void @mayo_memset(ptr %accumulator, i8 0, i32 108416), !dbg !2280
    #dbg_value(i32 7, !2281, !DIExpression(), !2270)
    #dbg_value(i32 0, !2282, !DIExpression(), !2284)
  br label %for.cond, !dbg !2285

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2286
    #dbg_value(i32 %row.0, !2282, !DIExpression(), !2284)
  %exitcond2 = icmp ne i32 %row.0, 11, !dbg !2287
  br i1 %exitcond2, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2289

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2290

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !2293

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2294
    #dbg_value(i32 %j.0, !2295, !DIExpression(), !2296)
  %exitcond1 = icmp ne i32 %j.0, 118, !dbg !2297
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2290

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2299

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2302
    #dbg_value(i32 %col.0, !2303, !DIExpression(), !2304)
  %exitcond = icmp ne i32 %col.0, 11, !dbg !2305
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2299

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %j.0, 11, !dbg !2307
  %add7 = add nuw nsw i32 %mul, %col.0, !dbg !2309
  %add.ptr.idx = mul nuw nsw i32 %add7, 56, !dbg !2310
  %add.ptr = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr.idx, !dbg !2310
  %mul9 = mul nuw nsw i32 %row.0, 11, !dbg !2311
  %add10 = add nuw nsw i32 %mul9, %col.0, !dbg !2312
  %mul11 = shl nuw nsw i32 %add10, 4, !dbg !2313
  %mul12 = mul nuw nsw i32 %row.0, 118, !dbg !2314
  %0 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2315
  %arrayidx = getelementptr i8, ptr %0, i32 %j.0, !dbg !2315
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2315
  %conv = zext i8 %1 to i32, !dbg !2315
  %add14 = add nuw nsw i32 %mul11, %conv, !dbg !2316
  %add.ptr16.idx = mul nuw nsw i32 %add14, 56, !dbg !2317
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr16.idx, !dbg !2317
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #4, !dbg !2318
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
  %exitcond3 = icmp ne i32 %i.0, 121, !dbg !2332
  br i1 %exitcond3, label %while.body, label %while.end, !dbg !2293

while.body:                                       ; preds = %while.cond
  %add.ptr29.idx = mul nuw nsw i32 %i.0, 896, !dbg !2333
  %add.ptr29 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr29.idx, !dbg !2333
  %add.ptr31.idx = mul nuw nsw i32 %i.0, 56, !dbg !2335
  %add.ptr31 = getelementptr inbounds nuw i8, ptr %SPS, i32 %add.ptr31.idx, !dbg !2335
  call fastcc void @m_vec_multiply_bins(i32 noundef 7, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #4, !dbg !2336
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
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2353
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
    #dbg_value(i32 7, !2368, !DIExpression(), !2369)
    #dbg_value(ptr %bins, !2370, !DIExpression(), !2369)
    #dbg_value(ptr %out, !2371, !DIExpression(), !2369)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 280, !dbg !2372
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2373
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #4, !dbg !2374
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 616, !dbg !2375
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 672, !dbg !2376
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #4, !dbg !2377
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2378
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 392, !dbg !2379
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #4, !dbg !2380
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 672, !dbg !2381
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 336, !dbg !2382
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #4, !dbg !2383
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 392, !dbg !2384
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 784, !dbg !2385
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #4, !dbg !2386
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 336, !dbg !2387
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 168, !dbg !2388
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #4, !dbg !2389
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 784, !dbg !2390
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 840, !dbg !2391
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #4, !dbg !2392
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 168, !dbg !2393
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2394
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #4, !dbg !2395
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 840, !dbg !2396
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 728, !dbg !2397
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #4, !dbg !2398
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2399
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2400
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #4, !dbg !2401
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 728, !dbg !2402
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2403
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #4, !dbg !2404
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2405
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 112, !dbg !2406
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #4, !dbg !2407
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2408
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2409
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #4, !dbg !2410
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 112, !dbg !2411
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2412
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #4, !dbg !2413
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2414
  call fastcc void @m_vec_copy(i32 noundef 7, ptr noundef nonnull %add.ptr28, ptr noundef %out) #4, !dbg !2415
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
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2428
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
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2457
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
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2485
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
define dso_local void @pqmayo_MAYO_3_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2497 {
entry:
    #dbg_value(ptr %p, !2528, !DIExpression(), !2529)
    #dbg_value(ptr %in, !2530, !DIExpression(), !2529)
    #dbg_value(ptr %out, !2531, !DIExpression(), !2529)
    #dbg_value(i32 %size, !2532, !DIExpression(), !2529)
    #dbg_value(i32 7, !2533, !DIExpression(), !2529)
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
  %add.ptr.idx = mul nsw i32 %add, 56, !dbg !2555
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2555
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 56, !dbg !2556
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2556
  call fastcc void @m_vec_copy.17(i32 noundef 7, ptr noundef %add.ptr, ptr noundef %add.ptr6) #4, !dbg !2557
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2558
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2558

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2560
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2562
  %add.ptr11.idx = mul nsw i32 %add9, 56, !dbg !2563
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2563
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 56, !dbg !2564
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2564
  call fastcc void @m_vec_add.18(i32 noundef 7, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #4, !dbg !2565
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
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2587
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
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2609
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2621 {
entry:
  %Ar = alloca [108 x i8], align 1
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
  %arrayidx21 = getelementptr inbounds nuw [108 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2681
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
  %_pivot_row = alloca [7 x i64], align 32
  %_pivot_row2 = alloca [7 x i64], align 32
  %packed_A = alloca [756 x i64], align 32
  %temp = alloca [126 x i8], align 1
    #dbg_value(ptr %A, !2895, !DIExpression(), !2896)
    #dbg_value(i32 %nrows, !2897, !DIExpression(), !2896)
    #dbg_value(i32 %ncols, !2898, !DIExpression(), !2896)
    #dbg_declare(ptr %_pivot_row, !2899, !DIExpression(), !2900)
    #dbg_declare(ptr %_pivot_row2, !2901, !DIExpression(), !2902)
    #dbg_declare(ptr %packed_A, !2903, !DIExpression(), !2907)
  call void @mayo_memset(ptr %packed_A, i8 0, i32 6048), !dbg !2907
  %add = add nsw i32 %ncols, 15, !dbg !2908
  %div = sdiv i32 %add, 16, !dbg !2909
    #dbg_value(i32 %div, !2910, !DIExpression(), !2896)
    #dbg_value(i32 0, !2911, !DIExpression(), !2913)
  %0 = icmp sgt i32 %nrows, 0, !dbg !2914
  %1 = select i1 %0, i32 %nrows, i32 0, !dbg !2914
  br label %for.cond, !dbg !2914

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2915
    #dbg_value(i32 %i.0, !2911, !DIExpression(), !2913)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !2916
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2918

for.cond3.preheader:                              ; preds = %for.cond
  %2 = icmp sgt i32 %div, 0, !dbg !2919
  %3 = select i1 %2, i32 %div, i32 0, !dbg !2919
  %4 = icmp sgt i32 %ncols, 0, !dbg !2919
  %5 = select i1 %4, i32 %ncols, i32 0, !dbg !2919
  br label %for.cond3, !dbg !2919

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2921
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2923
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2924
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2925
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #4, !dbg !2926
  %inc = add nuw i32 %i.0, 1, !dbg !2927
    #dbg_value(i32 %inc, !2911, !DIExpression(), !2913)
  br label %for.cond, !dbg !2928, !llvm.loop !2929

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2931
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2896
    #dbg_value(i32 %pivot_row.0, !2932, !DIExpression(), !2896)
    #dbg_value(i32 %pivot_col.0, !2933, !DIExpression(), !2934)
  %exitcond6 = icmp ne i32 %pivot_col.0, %5, !dbg !2935
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2919

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2937

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2939
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2939
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2939
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2939
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2939
    #dbg_value(i32 %cond, !2941, !DIExpression(), !2942)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2943
    #dbg_value(i32 %cond16, !2944, !DIExpression(), !2942)
    #dbg_value(i32 0, !2945, !DIExpression(), !2947)
  br label %for.cond18, !dbg !2948

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2949
    #dbg_value(i32 %i17.0, !2945, !DIExpression(), !2947)
  %exitcond2 = icmp ne i32 %i17.0, %3, !dbg !2950
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !2952

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2943
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2943
  br label %for.cond25, !dbg !2953

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2955
  store i64 0, ptr %arrayidx, align 8, !dbg !2957
  %arrayidx21 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2958
  store i64 0, ptr %arrayidx21, align 8, !dbg !2959
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2960
    #dbg_value(i32 %inc23, !2945, !DIExpression(), !2947)
  br label %for.cond18, !dbg !2961, !llvm.loop !2962

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2942
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2942
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2964
    #dbg_value(i32 %row.0, !2965, !DIExpression(), !2964)
    #dbg_value(i8 %pivot.0, !2966, !DIExpression(), !2942)
    #dbg_value(i64 %pivot_is_zero.0, !2967, !DIExpression(), !2942)
  %add27 = add nsw i32 %cond16, 32, !dbg !2968
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2968
  %sub30 = add nsw i32 %nrows, -1, !dbg !2968
  %add32 = add nsw i32 %cond16, 32, !dbg !2968
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2968
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2970
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2953

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #4, !dbg !2971
  %not = xor i64 %call, -1, !dbg !2973
    #dbg_value(i64 %not, !2974, !DIExpression(), !2975)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #4, !dbg !2976
    #dbg_value(i64 %call37, !2977, !DIExpression(), !2975)
    #dbg_value(i32 0, !2978, !DIExpression(), !2980)
  br label %for.cond38, !dbg !2981

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2982
    #dbg_value(i32 %j.0, !2978, !DIExpression(), !2980)
  %exitcond3 = icmp ne i32 %j.0, %3, !dbg !2983
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !2985

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2986
  %or = or i64 %and, %not, !dbg !2988
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2989
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2990
  %arrayidx43 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2991
  %6 = load i64, ptr %arrayidx43, align 8, !dbg !2991
  %and44 = and i64 %or, %6, !dbg !2992
  %arrayidx45 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2993
  %7 = load i64, ptr %arrayidx45, align 8, !dbg !2994
  %xor = xor i64 %7, %and44, !dbg !2994
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2994
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2995
    #dbg_value(i32 %inc47, !2978, !DIExpression(), !2980)
  br label %for.cond38, !dbg !2996, !llvm.loop !2997

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #4, !dbg !2999
    #dbg_value(i8 %call50, !2966, !DIExpression(), !2942)
  %conv = zext nneg i8 %call50 to i32, !dbg !3000
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #4, !dbg !3001
    #dbg_value(i64 %call51, !2967, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2942)
  %not52 = xor i64 %call51, -1, !dbg !3002
    #dbg_value(i64 %not52, !2967, !DIExpression(), !2942)
  %inc54 = add nsw i32 %row.0, 1, !dbg !3003
    #dbg_value(i32 %inc54, !2965, !DIExpression(), !2964)
  br label %for.cond25, !dbg !3004, !llvm.loop !3005

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2942
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2942
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #4, !dbg !3007
    #dbg_value(i8 %call56, !3008, !DIExpression(), !2896)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #4, !dbg !3009
    #dbg_value(i32 %cond, !3010, !DIExpression(), !3012)
  br label %for.cond60, !dbg !3013

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !3014
    #dbg_value(i32 %row59.0, !3010, !DIExpression(), !3012)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !3015
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !3017

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !3018

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #4, !dbg !3020
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !3022
  %and67 = xor i64 %and67.demorgan, -1, !dbg !3022
    #dbg_value(i64 %and67, !3023, !DIExpression(), !3024)
    #dbg_value(i64 %and67.demorgan, !3025, !DIExpression(), !3024)
    #dbg_value(i32 0, !3026, !DIExpression(), !3028)
  br label %for.cond69, !dbg !3029

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !3030
    #dbg_value(i32 %col.0, !3026, !DIExpression(), !3028)
  %exitcond4 = icmp ne i32 %col.0, %3, !dbg !3031
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !3033

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !3034
  %add74 = add nsw i32 %mul73, %col.0, !dbg !3036
  %arrayidx75 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !3037
  %8 = load i64, ptr %arrayidx75, align 8, !dbg !3037
  %and76 = and i64 %and67.demorgan, %8, !dbg !3038
  %arrayidx77 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !3039
  %9 = load i64, ptr %arrayidx77, align 8, !dbg !3039
  %and78 = and i64 %9, %and67, !dbg !3040
  %add79 = add i64 %and76, %and78, !dbg !3041
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !3042
  %add81 = add nsw i32 %mul80, %col.0, !dbg !3043
  %arrayidx82 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !3044
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !3045
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !3046
    #dbg_value(i32 %inc84, !3026, !DIExpression(), !3028)
  br label %for.cond69, !dbg !3047, !llvm.loop !3048

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !3050
    #dbg_value(i32 %inc87, !3010, !DIExpression(), !3012)
  br label %for.cond60, !dbg !3051, !llvm.loop !3052

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !3054
    #dbg_value(i32 %row89.0, !3055, !DIExpression(), !3056)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !3057
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !3018

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !3059
    #dbg_value(i1 %cmp94, !3061, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3062)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !3063
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !3064
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #4, !dbg !3065
    #dbg_value(i8 %call100, !3066, !DIExpression(), !3062)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !3067
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !3068
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !3069
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #4, !dbg !3070
  %inc110 = add nsw i32 %row89.0, 1, !dbg !3071
    #dbg_value(i32 %inc110, !3055, !DIExpression(), !3056)
  br label %for.cond90, !dbg !3072, !llvm.loop !3073

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2932, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2896)
  %10 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !3075
  %11 = add i32 %10, 1, !dbg !3075
  %conv116 = add i32 %11, %pivot_row.0, !dbg !3075
    #dbg_value(i32 %conv116, !2932, !DIExpression(), !2896)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !3076
    #dbg_value(i32 %inc118, !2933, !DIExpression(), !2934)
  br label %for.cond3, !dbg !3077, !llvm.loop !3078

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !3080
    #dbg_value(i32 %i120.0, !3081, !DIExpression(), !3082)
  %exitcond8 = icmp ne i32 %i120.0, %1, !dbg !3083
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2937

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !3085
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !3087
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #4, !dbg !3088
    #dbg_value(i32 0, !3089, !DIExpression(), !3091)
  br label %for.cond130, !dbg !3092

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !3093
    #dbg_value(i32 %j129.0, !3089, !DIExpression(), !3091)
  %exitcond7 = icmp ne i32 %j129.0, %5, !dbg !3094
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !3096

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [126 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !3097
  %12 = load i8, ptr %arrayidx134, align 1, !dbg !3097
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !3099
  %13 = getelementptr i8, ptr %A, i32 %mul135, !dbg !3100
  %arrayidx137 = getelementptr i8, ptr %13, i32 %j129.0, !dbg !3100
  store i8 %12, ptr %arrayidx137, align 1, !dbg !3101
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3102
    #dbg_value(i32 %inc139, !3089, !DIExpression(), !3091)
  br label %for.cond130, !dbg !3103, !llvm.loop !3104

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3106
    #dbg_value(i32 %inc142, !3081, !DIExpression(), !3082)
  br label %for.cond121, !dbg !3107, !llvm.loop !3108

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 126) #4, !dbg !3110
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 56) #4, !dbg !3111
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 56) #4, !dbg !3112
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 6048) #4, !dbg !3113
  ret void, !dbg !3114
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3115 {
entry:
    #dbg_value(i8 %a, !3117, !DIExpression(), !3118)
    #dbg_value(i8 0, !3119, !DIExpression(), !3118)
  %0 = icmp ne i8 %a, 0, !dbg !3120
  %conv3 = sext i1 %0 to i8, !dbg !3121
  %1 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !3122
  %xor5 = xor i8 %1, %conv3, !dbg !3123
  ret i8 %xor5, !dbg !3124
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3125 {
entry:
    #dbg_value(i8 %a, !3128, !DIExpression(), !3129)
    #dbg_value(i64 %b, !3130, !DIExpression(), !3129)
  %0 = and i8 %a, 1, !dbg !3131
  %conv1 = zext nneg i8 %0 to i64, !dbg !3132
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3133
    #dbg_value(i64 %mul, !3134, !DIExpression(), !3129)
  %1 = and i8 %a, 2, !dbg !3135
  %conv4 = zext nneg i8 %1 to i64, !dbg !3136
  %mul5 = mul i64 %b, %conv4, !dbg !3137
  %xor = xor i64 %mul, %mul5, !dbg !3138
    #dbg_value(i64 %xor, !3134, !DIExpression(), !3129)
  %2 = and i8 %a, 4, !dbg !3139
  %conv8 = zext nneg i8 %2 to i64, !dbg !3140
  %mul9 = mul i64 %b, %conv8, !dbg !3141
  %xor10 = xor i64 %xor, %mul9, !dbg !3142
    #dbg_value(i64 %xor10, !3134, !DIExpression(), !3129)
  %3 = and i8 %a, 8, !dbg !3143
  %conv13 = zext nneg i8 %3 to i64, !dbg !3144
  %mul14 = mul i64 %b, %conv13, !dbg !3145
  %xor15 = xor i64 %xor10, %mul14, !dbg !3146
    #dbg_value(i64 %xor15, !3134, !DIExpression(), !3129)
    #dbg_value(i64 %xor15, !3147, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3129)
  %shr = lshr i64 %xor15, 4, !dbg !3148
  %and16 = lshr i64 %xor15, 3, !dbg !3149
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3149
  %4 = xor i64 %shr, %shr18, !dbg !3150
  %xor19 = xor i64 %4, %xor15, !dbg !3150
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3151
    #dbg_value(i64 %and20, !3152, !DIExpression(), !3129)
  ret i64 %and20, !dbg !3153
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef nonnull %out, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !3154 {
entry:
    #dbg_value(ptr %in, !3157, !DIExpression(), !3158)
    #dbg_value(ptr %out, !3159, !DIExpression(), !3158)
    #dbg_value(i32 %ncols, !3160, !DIExpression(), !3158)
    #dbg_value(ptr %out, !3161, !DIExpression(), !3158)
    #dbg_value(i32 0, !3162, !DIExpression(), !3158)
  br label %for.cond, !dbg !3163

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3165
    #dbg_value(i32 %i.0, !3162, !DIExpression(), !3158)
  %add = or disjoint i32 %i.0, 1, !dbg !3166
  %cmp = icmp slt i32 %add, %ncols, !dbg !3168
  br i1 %cmp, label %for.body, label %for.end, !dbg !3169

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3170
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3170
  %add2 = or disjoint i32 %i.0, 1, !dbg !3172
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3173
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3173
  %shl5 = shl i8 %1, 4, !dbg !3174
  %or = or i8 %shl5, %0, !dbg !3175
  %div = lshr exact i32 %i.0, 1, !dbg !3176
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3177
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3178
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3179
    #dbg_value(i32 %add8, !3162, !DIExpression(), !3158)
  br label %for.cond, !dbg !3180, !llvm.loop !3181

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3165
  %2 = and i32 %ncols, -2147483647, !dbg !3183
  %cmp9 = icmp eq i32 %2, 1, !dbg !3183
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3183

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3185
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3185
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3187
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3188
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3189
  br label %if.end, !dbg !3190

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3191
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3192 {
entry:
    #dbg_value(i32 %a, !3195, !DIExpression(), !3196)
    #dbg_value(i32 %b, !3197, !DIExpression(), !3196)
  %xor = xor i32 %a, %b, !dbg !3198
  %0 = icmp sgt i32 %xor, 0, !dbg !3199
  %shr = sext i1 %0 to i64, !dbg !3199
  %1 = load volatile i64, ptr @pqmayo_MAYO_3_ref_uint64_t_blocker, align 8, !dbg !3200
  %xor1 = xor i64 %1, %shr, !dbg !3201
  ret i64 %xor1, !dbg !3202
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3203 {
entry:
    #dbg_value(i32 %a, !3204, !DIExpression(), !3205)
    #dbg_value(i32 %b, !3206, !DIExpression(), !3205)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3205)
  %0 = icmp slt i32 %b, %a, !dbg !3208
  %shr = sext i1 %0 to i64, !dbg !3208
  %1 = load volatile i64, ptr @pqmayo_MAYO_3_ref_uint64_t_blocker, align 8, !dbg !3209
  %xor = xor i64 %1, %shr, !dbg !3210
  ret i64 %xor, !dbg !3211
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef nonnull %in, i32 noundef range(i32 -2147483648, 2147483647) %index) unnamed_addr #0 !dbg !3212 {
entry:
    #dbg_value(ptr %in, !3215, !DIExpression(), !3216)
    #dbg_value(i32 %index, !3217, !DIExpression(), !3216)
  %div = sdiv i32 %index, 16, !dbg !3218
    #dbg_value(i32 %div, !3219, !DIExpression(), !3216)
  %rem = srem i32 %index, 16, !dbg !3220
    #dbg_value(i32 %rem, !3221, !DIExpression(), !3216)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3222
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3222
  %mul = shl nsw i32 %rem, 2, !dbg !3223
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3224
  %shr = lshr i64 %0, %sh_prom, !dbg !3224
  %1 = trunc i64 %shr to i8, !dbg !3225
  %conv = and i8 %1, 15, !dbg !3225
  ret i8 %conv, !dbg !3226
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext range(i8 0, 16) %a) unnamed_addr #0 !dbg !3227 {
entry:
    #dbg_value(i8 %a, !3230, !DIExpression(), !3231)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #4, !dbg !3232
    #dbg_value(i8 %call, !3233, !DIExpression(), !3231)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #4, !dbg !3234
    #dbg_value(i8 %call1, !3235, !DIExpression(), !3231)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #4, !dbg !3236
    #dbg_value(i8 %call2, !3237, !DIExpression(), !3231)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #4, !dbg !3238
    #dbg_value(i8 %call3, !3239, !DIExpression(), !3231)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #4, !dbg !3240
    #dbg_value(i8 %call4, !3241, !DIExpression(), !3231)
  ret i8 %call4, !dbg !3242
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, i8 noundef zeroext range(i8 0, 16) %a, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !3243 {
entry:
    #dbg_value(i32 %legs, !3246, !DIExpression(), !3247)
    #dbg_value(ptr %in, !3248, !DIExpression(), !3247)
    #dbg_value(i8 %a, !3249, !DIExpression(), !3247)
    #dbg_value(ptr %acc, !3250, !DIExpression(), !3247)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #4, !dbg !3251
    #dbg_value(i32 %call, !3252, !DIExpression(), !3247)
    #dbg_value(i64 1229782938247303441, !3253, !DIExpression(), !3247)
    #dbg_value(i32 0, !3254, !DIExpression(), !3256)
  %0 = icmp sgt i32 %legs, 0, !dbg !3257
  %1 = select i1 %0, i32 %legs, i32 0, !dbg !3257
  br label %for.cond, !dbg !3257

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3258
    #dbg_value(i32 %i.0, !3254, !DIExpression(), !3256)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !3259
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3261

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3262
  %2 = load i64, ptr %arrayidx, align 8, !dbg !3262
  %and = and i64 %2, 1229782938247303441, !dbg !3264
  %and1 = and i32 %call, 255, !dbg !3265
  %conv = zext nneg i32 %and1 to i64, !dbg !3266
  %mul = mul i64 %and, %conv, !dbg !3267
  %shr = lshr i64 %2, 1, !dbg !3268
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3269
  %shr4 = lshr i32 %call, 8, !dbg !3270
  %and5 = and i32 %shr4, 15, !dbg !3271
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3272
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3273
  %xor = xor i64 %mul, %mul7, !dbg !3274
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3275
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !3275
  %shr9 = lshr i64 %3, 2, !dbg !3276
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3277
  %shr11 = lshr i32 %call, 16, !dbg !3278
  %and12 = and i32 %shr11, 15, !dbg !3279
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3280
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3281
  %xor15 = xor i64 %xor, %mul14, !dbg !3282
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3283
  %4 = load i64, ptr %arrayidx16, align 8, !dbg !3283
  %shr17 = lshr i64 %4, 3, !dbg !3284
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3285
  %shr19 = lshr i32 %call, 24, !dbg !3286
  %and20 = and i32 %shr19, 15, !dbg !3287
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3288
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3289
  %xor23 = xor i64 %xor15, %mul22, !dbg !3290
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3291
  %5 = load i64, ptr %arrayidx24, align 8, !dbg !3292
  %xor25 = xor i64 %5, %xor23, !dbg !3292
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3292
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3293
    #dbg_value(i32 %inc, !3254, !DIExpression(), !3256)
  br label %for.cond, !dbg !3294, !llvm.loop !3295

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3297
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !3298 {
entry:
    #dbg_value(i32 %legs, !3301, !DIExpression(), !3302)
    #dbg_value(ptr %in, !3303, !DIExpression(), !3302)
    #dbg_value(ptr %out, !3304, !DIExpression(), !3302)
    #dbg_value(ptr %in, !3305, !DIExpression(), !3302)
    #dbg_value(i32 0, !3306, !DIExpression(), !3308)
  br label %for.cond, !dbg !3309

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3310
    #dbg_value(i32 %i.0, !3306, !DIExpression(), !3308)
  %mul = shl nsw i32 %legs, 4, !dbg !3311
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3313
  br i1 %cmp, label %for.body, label %for.end, !dbg !3314

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3315
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3317
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3317
  %1 = and i8 %0, 15, !dbg !3318
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3319
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3320
  %div3 = lshr exact i32 %i.0, 1, !dbg !3321
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3322
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3322
  %3 = lshr i8 %2, 4, !dbg !3323
  %add = or disjoint i32 %i.0, 1, !dbg !3324
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3325
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3326
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3327
    #dbg_value(i32 %add8, !3306, !DIExpression(), !3308)
  br label %for.cond, !dbg !3328, !llvm.loop !3329

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3331
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, -2147483648) i32 @mul_table.22(i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3332 {
entry:
    #dbg_value(i8 %b, !3333, !DIExpression(), !3334)
  %conv = zext nneg i8 %b to i32, !dbg !3335
  %mul = mul nuw nsw i32 %conv, 134480385, !dbg !3336
    #dbg_value(i32 %mul, !3337, !DIExpression(), !3334)
    #dbg_value(i32 -252645136, !3338, !DIExpression(), !3334)
  %and = and i32 %mul, 1894838512, !dbg !3339
    #dbg_value(i32 %and, !3340, !DIExpression(), !3334)
  %shr = lshr exact i32 %and, 4, !dbg !3341
  %shr1 = lshr exact i32 %and, 3, !dbg !3342
  %0 = xor i32 %shr, %shr1, !dbg !3343
  %xor2 = xor i32 %0, %mul, !dbg !3343
  ret i32 %xor2, !dbg !3344
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3345 {
entry:
    #dbg_value(i8 %a, !3346, !DIExpression(), !3347)
    #dbg_value(i8 %b, !3348, !DIExpression(), !3347)
  %0 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !3349
  %xor1 = xor i8 %a, %0, !dbg !3350
    #dbg_value(i8 %xor1, !3346, !DIExpression(), !3347)
  %1 = trunc i8 %xor1 to i1, !dbg !3351
    #dbg_value(i8 poison, !3352, !DIExpression(), !3347)
  %2 = and i8 %xor1, 2, !dbg !3353
  %mul9 = mul i8 %2, %b, !dbg !3354
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3351
  %xor11 = xor i8 %conv10, %mul9, !dbg !3355
    #dbg_value(i8 %xor11, !3352, !DIExpression(), !3347)
  %3 = and i8 %xor1, 4, !dbg !3356
  %mul16 = mul i8 %3, %b, !dbg !3357
  %xor18 = xor i8 %mul16, %xor11, !dbg !3358
    #dbg_value(i8 %xor18, !3352, !DIExpression(), !3347)
  %4 = and i8 %xor1, 8, !dbg !3359
  %mul23 = mul i8 %4, %b, !dbg !3360
  %xor25 = xor i8 %mul23, %xor18, !dbg !3361
    #dbg_value(i8 %xor25, !3352, !DIExpression(), !3347)
    #dbg_value(i8 %xor25, !3362, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3347)
  %5 = lshr i8 %xor25, 4, !dbg !3363
  %6 = lshr i8 %xor25, 3, !dbg !3364
  %7 = and i8 %6, 14, !dbg !3364
  %8 = xor i8 %5, %7, !dbg !3365
  %xor25.masked = and i8 %xor25, 15, !dbg !3366
  %9 = xor i8 %8, %xor25.masked, !dbg !3366
    #dbg_value(i8 %9, !3367, !DIExpression(), !3347)
  ret i8 %9, !dbg !3368
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef range(i32 -2147483647, -2147483648) %n, i32 noundef %m) unnamed_addr #0 !dbg !3369 {
entry:
    #dbg_value(ptr %a, !3370, !DIExpression(), !3371)
    #dbg_value(ptr %b, !3372, !DIExpression(), !3371)
    #dbg_value(i32 %n, !3373, !DIExpression(), !3371)
    #dbg_value(i32 1, !3374, !DIExpression(), !3371)
    #dbg_value(i8 0, !3375, !DIExpression(), !3371)
    #dbg_value(i32 0, !3376, !DIExpression(), !3378)
  %0 = icmp sgt i32 %n, 0, !dbg !3379
  %1 = select i1 %0, i32 %n, i32 0, !dbg !3379
  br label %for.cond, !dbg !3379

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3371
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3380
    #dbg_value(i32 %i.0, !3376, !DIExpression(), !3378)
    #dbg_value(ptr %b.addr.0, !3372, !DIExpression(), !3371)
    #dbg_value(i8 %ret.0, !3375, !DIExpression(), !3371)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !3381
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3383

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3384
  %2 = load i8, ptr %arrayidx, align 1, !dbg !3384
  %3 = load i8, ptr %b.addr.0, align 1, !dbg !3386
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %2, i8 noundef zeroext %3) #4, !dbg !3387
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #4, !dbg !3388
    #dbg_value(i8 %call1, !3375, !DIExpression(), !3371)
  %inc = add nuw i32 %i.0, 1, !dbg !3389
    #dbg_value(i32 %inc, !3376, !DIExpression(), !3378)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !3390
    #dbg_value(ptr %add.ptr, !3372, !DIExpression(), !3371)
  br label %for.cond, !dbg !3391, !llvm.loop !3392

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3371
  ret i8 %ret.0.lcssa, !dbg !3394
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @add_f.25(i8 noundef zeroext range(i8 0, 16) %a, i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3395 {
entry:
    #dbg_value(i8 %a, !3396, !DIExpression(), !3397)
    #dbg_value(i8 %b, !3398, !DIExpression(), !3397)
  %xor1 = xor i8 %a, %b, !dbg !3399
  ret i8 %xor1, !dbg !3400
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !3401 {
entry:
    #dbg_value(ptr %state, !3409, !DIExpression(), !3410)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !3411
  store ptr %call, ptr %state, align 4, !dbg !3412
  %cmp = icmp eq ptr %call, null, !dbg !3413
  br i1 %cmp, label %if.then, label %if.end, !dbg !3413

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !3415
  br label %if.end, !dbg !3417

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !3418
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !3419
  ret void, !dbg !3420
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i32 noundef) local_unnamed_addr #3

declare dso_local void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_init(ptr noundef %s_inc) unnamed_addr #0 !dbg !3421 {
entry:
    #dbg_value(ptr %s_inc, !3422, !DIExpression(), !3423)
    #dbg_value(i32 0, !3424, !DIExpression(), !3423)
  br label %for.cond, !dbg !3425

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3427
    #dbg_value(i32 %i.0, !3424, !DIExpression(), !3423)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !3428
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3430

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s_inc, i32 %i.0, !dbg !3431
  store i64 0, ptr %arrayidx, align 8, !dbg !3433
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3434
    #dbg_value(i32 %inc, !3424, !DIExpression(), !3423)
  br label %for.cond, !dbg !3435, !llvm.loop !3436

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3438
  store i64 0, ptr %arrayidx1, align 8, !dbg !3439
  ret void, !dbg !3440
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3441 {
entry:
    #dbg_value(ptr %state, !3444, !DIExpression(), !3445)
    #dbg_value(ptr %input, !3446, !DIExpression(), !3445)
    #dbg_value(i32 %inlen, !3447, !DIExpression(), !3445)
  %0 = load ptr, ptr %state, align 4, !dbg !3448
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen) #4, !dbg !3449
  ret void, !dbg !3450
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_absorb(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen) unnamed_addr #0 !dbg !3451 {
entry:
    #dbg_value(ptr %s_inc, !3454, !DIExpression(), !3455)
    #dbg_value(i32 %r, !3456, !DIExpression(), !3455)
    #dbg_value(ptr %m, !3457, !DIExpression(), !3455)
    #dbg_value(i32 %mlen, !3458, !DIExpression(), !3455)
  br label %while.cond, !dbg !3459

while.cond:                                       ; preds = %for.end, %entry
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr, %for.end ]
  %mlen.addr.0 = phi i32 [ %mlen, %entry ], [ %sub20, %for.end ]
    #dbg_value(i32 %mlen.addr.0, !3458, !DIExpression(), !3455)
    #dbg_value(ptr %m.addr.0, !3457, !DIExpression(), !3455)
  %conv = zext i32 %mlen.addr.0 to i64, !dbg !3460
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3461
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3461
  %add = add i64 %0, %conv, !dbg !3462
  %conv1 = zext nneg i32 %r to i64, !dbg !3463
  %cmp.not = icmp ult i64 %add, %conv1, !dbg !3464
  br i1 %cmp.not, label %for.cond25.preheader, label %for.cond.preheader, !dbg !3459

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !3465

for.cond25.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa1 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  %mlen.addr.0.lcssa = phi i32 [ %mlen.addr.0, %while.cond ]
  br label %for.cond25, !dbg !3468

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !3470
    #dbg_value(i32 %i.0, !3471, !DIExpression(), !3455)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3472
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !3472
  %conv4 = trunc i64 %1 to i32, !dbg !3474
  %sub = sub i32 %r, %conv4, !dbg !3475
  %cmp5 = icmp ult i32 %i.0, %sub, !dbg !3476
  br i1 %cmp5, label %for.body, label %for.end, !dbg !3465

for.body:                                         ; preds = %for.cond
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %i.0, !dbg !3477
  %2 = load i8, ptr %arrayidx7, align 1, !dbg !3477
  %conv8 = zext i8 %2 to i64, !dbg !3479
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3480
  %3 = load i64, ptr %arrayidx9, align 8, !dbg !3480
  %conv10 = zext i32 %i.0 to i64, !dbg !3481
  %add11 = add i64 %3, %conv10, !dbg !3482
  %and = shl i64 %add11, 3, !dbg !3483
  %mul = and i64 %and, 56, !dbg !3483
  %shl = shl nuw i64 %conv8, %mul, !dbg !3484
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3485
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !3485
  %conv13 = zext i32 %i.0 to i64, !dbg !3486
  %add14 = add i64 %4, %conv13, !dbg !3487
  %shr = lshr i64 %add14, 3, !dbg !3488
  %idxprom = trunc i64 %shr to i32, !dbg !3489
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3489
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !3490
  %xor = xor i64 %5, %shl, !dbg !3490
  store i64 %xor, ptr %arrayidx15, align 8, !dbg !3490
  %inc = add nuw i32 %i.0, 1, !dbg !3491
    #dbg_value(i32 %inc, !3471, !DIExpression(), !3455)
  br label %for.cond, !dbg !3492, !llvm.loop !3493

for.end:                                          ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3495
  %6 = load i64, ptr %arrayidx17, align 8, !dbg !3495
  %7 = trunc i64 %6 to i32, !dbg !3496
  %conv19.neg = sub i32 %7, %r, !dbg !3496
  %sub20 = add i32 %conv19.neg, %mlen.addr.0, !dbg !3497
    #dbg_value(i32 %sub20, !3458, !DIExpression(), !3455)
  %8 = trunc i64 %6 to i32, !dbg !3498
  %idx.ext = sub i32 %r, %8, !dbg !3498
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %idx.ext, !dbg !3498
    #dbg_value(ptr %add.ptr, !3457, !DIExpression(), !3455)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3499
  store i64 0, ptr %arrayidx24, align 8, !dbg !3500
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #4, !dbg !3501
  br label %while.cond, !dbg !3459, !llvm.loop !3502

for.cond25:                                       ; preds = %for.cond25.preheader, %for.body28
  %i.1 = phi i32 [ %inc45, %for.body28 ], [ 0, %for.cond25.preheader ], !dbg !3504
    #dbg_value(i32 %i.1, !3471, !DIExpression(), !3455)
  %exitcond = icmp ne i32 %i.1, %mlen.addr.0.lcssa1, !dbg !3505
  br i1 %exitcond, label %for.body28, label %for.end46, !dbg !3468

for.body28:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.1, !dbg !3507
  %9 = load i8, ptr %arrayidx29, align 1, !dbg !3507
  %conv30 = zext i8 %9 to i64, !dbg !3509
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3510
  %10 = load i64, ptr %arrayidx31, align 8, !dbg !3510
  %conv32 = zext i32 %i.1 to i64, !dbg !3511
  %add33 = add i64 %10, %conv32, !dbg !3512
  %and34 = shl i64 %add33, 3, !dbg !3513
  %mul35 = and i64 %and34, 56, !dbg !3513
  %shl36 = shl nuw i64 %conv30, %mul35, !dbg !3514
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3515
  %11 = load i64, ptr %arrayidx37, align 8, !dbg !3515
  %conv38 = zext i32 %i.1 to i64, !dbg !3516
  %add39 = add i64 %11, %conv38, !dbg !3517
  %shr40 = lshr i64 %add39, 3, !dbg !3518
  %idxprom41 = trunc i64 %shr40 to i32, !dbg !3519
  %arrayidx42 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom41, !dbg !3519
  %12 = load i64, ptr %arrayidx42, align 8, !dbg !3520
  %xor43 = xor i64 %12, %shl36, !dbg !3520
  store i64 %xor43, ptr %arrayidx42, align 8, !dbg !3520
  %inc45 = add i32 %i.1, 1, !dbg !3521
    #dbg_value(i32 %inc45, !3471, !DIExpression(), !3455)
  br label %for.cond25, !dbg !3522, !llvm.loop !3523

for.end46:                                        ; preds = %for.cond25
  %conv47 = zext i32 %mlen.addr.0.lcssa to i64, !dbg !3525
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3526
  %13 = load i64, ptr %arrayidx48, align 8, !dbg !3527
  %add49 = add i64 %13, %conv47, !dbg !3527
  store i64 %add49, ptr %arrayidx48, align 8, !dbg !3527
  ret void, !dbg !3528
}

; Function Attrs: nounwind
define internal fastcc void @KeccakF1600_StatePermute(ptr noundef %state) unnamed_addr #0 !dbg !3529 {
entry:
    #dbg_value(ptr %state, !3530, !DIExpression(), !3531)
  %0 = load i64, ptr %state, align 8, !dbg !3532
    #dbg_value(i64 %0, !3533, !DIExpression(), !3531)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3534
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !3534
    #dbg_value(i64 %1, !3535, !DIExpression(), !3531)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3536
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !3536
    #dbg_value(i64 %2, !3537, !DIExpression(), !3531)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3538
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !3538
    #dbg_value(i64 %3, !3539, !DIExpression(), !3531)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3540
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !3540
    #dbg_value(i64 %4, !3541, !DIExpression(), !3531)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3542
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !3542
    #dbg_value(i64 %5, !3543, !DIExpression(), !3531)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3544
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !3544
    #dbg_value(i64 %6, !3545, !DIExpression(), !3531)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3546
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !3546
    #dbg_value(i64 %7, !3547, !DIExpression(), !3531)
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3548
  %8 = load i64, ptr %arrayidx8, align 8, !dbg !3548
    #dbg_value(i64 %8, !3549, !DIExpression(), !3531)
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3550
  %9 = load i64, ptr %arrayidx9, align 8, !dbg !3550
    #dbg_value(i64 %9, !3551, !DIExpression(), !3531)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3552
  %10 = load i64, ptr %arrayidx10, align 8, !dbg !3552
    #dbg_value(i64 %10, !3553, !DIExpression(), !3531)
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3554
  %11 = load i64, ptr %arrayidx11, align 8, !dbg !3554
    #dbg_value(i64 %11, !3555, !DIExpression(), !3531)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3556
  %12 = load i64, ptr %arrayidx12, align 8, !dbg !3556
    #dbg_value(i64 %12, !3557, !DIExpression(), !3531)
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3558
  %13 = load i64, ptr %arrayidx13, align 8, !dbg !3558
    #dbg_value(i64 %13, !3559, !DIExpression(), !3531)
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3560
  %14 = load i64, ptr %arrayidx14, align 8, !dbg !3560
    #dbg_value(i64 %14, !3561, !DIExpression(), !3531)
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3562
  %15 = load i64, ptr %arrayidx15, align 8, !dbg !3562
    #dbg_value(i64 %15, !3563, !DIExpression(), !3531)
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3564
  %16 = load i64, ptr %arrayidx16, align 8, !dbg !3564
    #dbg_value(i64 %16, !3565, !DIExpression(), !3531)
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3566
  %17 = load i64, ptr %arrayidx17, align 8, !dbg !3566
    #dbg_value(i64 %17, !3567, !DIExpression(), !3531)
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3568
  %18 = load i64, ptr %arrayidx18, align 8, !dbg !3568
    #dbg_value(i64 %18, !3569, !DIExpression(), !3531)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3570
  %19 = load i64, ptr %arrayidx19, align 8, !dbg !3570
    #dbg_value(i64 %19, !3571, !DIExpression(), !3531)
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3572
  %20 = load i64, ptr %arrayidx20, align 8, !dbg !3572
    #dbg_value(i64 %20, !3573, !DIExpression(), !3531)
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3574
  %21 = load i64, ptr %arrayidx21, align 8, !dbg !3574
    #dbg_value(i64 %21, !3575, !DIExpression(), !3531)
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3576
  %22 = load i64, ptr %arrayidx22, align 8, !dbg !3576
    #dbg_value(i64 %22, !3577, !DIExpression(), !3531)
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3578
  %23 = load i64, ptr %arrayidx23, align 8, !dbg !3578
    #dbg_value(i64 %23, !3579, !DIExpression(), !3531)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3580
  %24 = load i64, ptr %arrayidx24, align 8, !dbg !3580
    #dbg_value(i64 %24, !3581, !DIExpression(), !3531)
    #dbg_value(i32 0, !3582, !DIExpression(), !3531)
  br label %for.cond, !dbg !3583

for.cond:                                         ; preds = %for.inc, %entry
  %Aso.0 = phi i64 [ %23, %entry ], [ %xor444, %for.inc ], !dbg !3531
  %Asi.0 = phi i64 [ %22, %entry ], [ %xor441, %for.inc ], !dbg !3531
  %Ase.0 = phi i64 [ %21, %entry ], [ %xor438, %for.inc ], !dbg !3531
  %Asa.0 = phi i64 [ %20, %entry ], [ %xor435, %for.inc ], !dbg !3531
  %Amu.0 = phi i64 [ %19, %entry ], [ %xor412, %for.inc ], !dbg !3531
  %Amo.0 = phi i64 [ %18, %entry ], [ %xor409, %for.inc ], !dbg !3531
  %Ami.0 = phi i64 [ %17, %entry ], [ %xor406, %for.inc ], !dbg !3531
  %Ame.0 = phi i64 [ %16, %entry ], [ %xor403, %for.inc ], !dbg !3531
  %Ama.0 = phi i64 [ %15, %entry ], [ %xor400, %for.inc ], !dbg !3531
  %Aku.0 = phi i64 [ %14, %entry ], [ %xor377, %for.inc ], !dbg !3531
  %Ako.0 = phi i64 [ %13, %entry ], [ %xor374, %for.inc ], !dbg !3531
  %Aki.0 = phi i64 [ %12, %entry ], [ %xor371, %for.inc ], !dbg !3531
  %Ake.0 = phi i64 [ %11, %entry ], [ %xor368, %for.inc ], !dbg !3531
  %Aka.0 = phi i64 [ %10, %entry ], [ %xor365, %for.inc ], !dbg !3531
  %Agu.0 = phi i64 [ %9, %entry ], [ %xor342, %for.inc ], !dbg !3531
  %Ago.0 = phi i64 [ %8, %entry ], [ %xor339, %for.inc ], !dbg !3531
  %Agi.0 = phi i64 [ %7, %entry ], [ %xor336, %for.inc ], !dbg !3531
  %Age.0 = phi i64 [ %6, %entry ], [ %xor333, %for.inc ], !dbg !3531
  %Aga.0 = phi i64 [ %5, %entry ], [ %xor330, %for.inc ], !dbg !3531
  %Abu.0 = phi i64 [ %4, %entry ], [ %xor307, %for.inc ], !dbg !3531
  %Abo.0 = phi i64 [ %3, %entry ], [ %xor304, %for.inc ], !dbg !3531
  %Abi.0 = phi i64 [ %2, %entry ], [ %xor301, %for.inc ], !dbg !3531
  %Abe.0 = phi i64 [ %1, %entry ], [ %xor298, %for.inc ], !dbg !3531
  %Aba.0 = phi i64 [ %0, %entry ], [ %xor295, %for.inc ], !dbg !3531
  %round.0 = phi i32 [ 0, %entry ], [ %add448, %for.inc ], !dbg !3585
  %Asu.0 = phi i64 [ %24, %entry ], [ %xor447, %for.inc ], !dbg !3531
    #dbg_value(i64 %Asu.0, !3581, !DIExpression(), !3531)
    #dbg_value(i32 %round.0, !3582, !DIExpression(), !3531)
    #dbg_value(i64 %Aba.0, !3533, !DIExpression(), !3531)
    #dbg_value(i64 %Abe.0, !3535, !DIExpression(), !3531)
    #dbg_value(i64 %Abi.0, !3537, !DIExpression(), !3531)
    #dbg_value(i64 %Abo.0, !3539, !DIExpression(), !3531)
    #dbg_value(i64 %Abu.0, !3541, !DIExpression(), !3531)
    #dbg_value(i64 %Aga.0, !3543, !DIExpression(), !3531)
    #dbg_value(i64 %Age.0, !3545, !DIExpression(), !3531)
    #dbg_value(i64 %Agi.0, !3547, !DIExpression(), !3531)
    #dbg_value(i64 %Ago.0, !3549, !DIExpression(), !3531)
    #dbg_value(i64 %Agu.0, !3551, !DIExpression(), !3531)
    #dbg_value(i64 %Aka.0, !3553, !DIExpression(), !3531)
    #dbg_value(i64 %Ake.0, !3555, !DIExpression(), !3531)
    #dbg_value(i64 %Aki.0, !3557, !DIExpression(), !3531)
    #dbg_value(i64 %Ako.0, !3559, !DIExpression(), !3531)
    #dbg_value(i64 %Aku.0, !3561, !DIExpression(), !3531)
    #dbg_value(i64 %Ama.0, !3563, !DIExpression(), !3531)
    #dbg_value(i64 %Ame.0, !3565, !DIExpression(), !3531)
    #dbg_value(i64 %Ami.0, !3567, !DIExpression(), !3531)
    #dbg_value(i64 %Amo.0, !3569, !DIExpression(), !3531)
    #dbg_value(i64 %Amu.0, !3571, !DIExpression(), !3531)
    #dbg_value(i64 %Asa.0, !3573, !DIExpression(), !3531)
    #dbg_value(i64 %Ase.0, !3575, !DIExpression(), !3531)
    #dbg_value(i64 %Asi.0, !3577, !DIExpression(), !3531)
    #dbg_value(i64 %Aso.0, !3579, !DIExpression(), !3531)
  %cmp = icmp samesign ult i32 %round.0, 24, !dbg !3586
  br i1 %cmp, label %for.inc, label %for.end, !dbg !3588

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0, i64 %Aga.0), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0, i64 %Age.0), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0, i64 %Agi.0), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0, i64 %Ago.0), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0, i64 %Agu.0), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3592, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3589, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3592, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3589, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3592, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3589, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3592, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3589, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3592, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3622, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3623, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3592, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3623, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3589, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3592, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3589, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3592, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3589, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3592, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3622, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3589, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3592, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 poison, !3593, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor32 = xor i64 %Abi.0, %Agi.0, !dbg !3624
    #dbg_value(!DIArgList(i64 %xor32, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor33 = xor i64 %xor32, %Aki.0, !dbg !3626
    #dbg_value(!DIArgList(i64 %xor33, i64 %Asi.0, i64 %Ami.0), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor34 = xor i64 %xor33, %Ami.0, !dbg !3627
    #dbg_value(!DIArgList(i64 %xor34, i64 %Asi.0), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor35 = xor i64 %xor34, %Asi.0, !dbg !3628
    #dbg_value(i64 %xor35, !3591, !DIExpression(), !3531)
  %xor40 = xor i64 %Abu.0, %Agu.0, !dbg !3629
    #dbg_value(!DIArgList(i64 %xor40, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor41 = xor i64 %xor40, %Aku.0, !dbg !3630
    #dbg_value(!DIArgList(i64 %xor41, i64 %Asu.0, i64 %Amu.0), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor42 = xor i64 %xor41, %Amu.0, !dbg !3631
    #dbg_value(!DIArgList(i64 %xor42, i64 %Asu.0), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor43 = xor i64 %xor42, %Asu.0, !dbg !3632
    #dbg_value(i64 %xor43, !3593, !DIExpression(), !3531)
  %25 = shl i64 %xor43, 1, !dbg !3633
  %26 = lshr i64 %xor43, 63, !dbg !3633
  %27 = or i64 %25, %26, !dbg !3633
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor35, i64 %27), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor35, i64 %27), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor35, i64 %27), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor35, i64 %27), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor35, i64 %27), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor35, i64 %27), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor57 = xor i64 %xor35, %27, !dbg !3634
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor57), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor57), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor57), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor57), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor57), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 %xor57, !3597, !DIExpression(), !3531)
  %xor203 = xor i64 %Ago.0, %xor57, !dbg !3635
    #dbg_value(i64 %xor203, !3549, !DIExpression(), !3531)
  %28 = shl i64 %xor203, 55, !dbg !3636
  %29 = lshr i64 %xor203, 9, !dbg !3636
  %30 = or i64 %28, %29, !dbg !3636
    #dbg_value(i64 %30, !3590, !DIExpression(), !3531)
  %xor28 = xor i64 %Abe.0, %Age.0, !dbg !3637
    #dbg_value(!DIArgList(i64 %xor28, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor29 = xor i64 %xor28, %Ake.0, !dbg !3638
    #dbg_value(!DIArgList(i64 %xor29, i64 %Ase.0, i64 %Ame.0), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor30 = xor i64 %xor29, %Ame.0, !dbg !3639
    #dbg_value(!DIArgList(i64 %xor30, i64 %Ase.0), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor31 = xor i64 %xor30, %Ase.0, !dbg !3640
    #dbg_value(i64 %xor31, !3590, !DIExpression(), !3531)
  %31 = shl i64 %xor31, 1, !dbg !3641
  %32 = lshr i64 %xor31, 63, !dbg !3641
  %33 = or i64 %31, %32, !dbg !3641
    #dbg_value(!DIArgList(i64 %xor43, i64 %33), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor43, i64 %33), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor43, i64 %33), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor43, i64 %33), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor43, i64 %33), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor45 = xor i64 %xor43, %33, !dbg !3642
    #dbg_value(i64 %xor45, !3594, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor45), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor45), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor45), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor45), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor211 = xor i64 %Ama.0, %xor45, !dbg !3643
    #dbg_value(i64 %xor211, !3563, !DIExpression(), !3531)
  %34 = shl i64 %xor211, 41, !dbg !3644
  %35 = lshr i64 %xor211, 23, !dbg !3644
  %36 = or i64 %34, %35, !dbg !3644
    #dbg_value(i64 %36, !3592, !DIExpression(), !3531)
  %xor36 = xor i64 %Abo.0, %Ago.0, !dbg !3645
    #dbg_value(!DIArgList(i64 %xor36, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor37 = xor i64 %xor36, %Ako.0, !dbg !3646
    #dbg_value(!DIArgList(i64 %xor37, i64 %Aso.0, i64 %Amo.0), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor38 = xor i64 %xor37, %Amo.0, !dbg !3647
    #dbg_value(!DIArgList(i64 %xor38, i64 %Aso.0), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor39 = xor i64 %xor38, %Aso.0, !dbg !3648
    #dbg_value(i64 %xor39, !3592, !DIExpression(), !3531)
  %xor = xor i64 %Aba.0, %Aga.0, !dbg !3649
    #dbg_value(!DIArgList(i64 %xor, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor25 = xor i64 %xor, %Aka.0, !dbg !3650
    #dbg_value(!DIArgList(i64 %xor25, i64 %Asa.0, i64 %Ama.0), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor26 = xor i64 %xor25, %Ama.0, !dbg !3651
    #dbg_value(!DIArgList(i64 %xor26, i64 %Asa.0), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor27 = xor i64 %xor26, %Asa.0, !dbg !3652
    #dbg_value(i64 %xor27, !3589, !DIExpression(), !3531)
  %37 = shl i64 %xor27, 1, !dbg !3653
  %38 = lshr i64 %xor27, 63, !dbg !3653
  %39 = or i64 %37, %38, !dbg !3653
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor39, i64 %39), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor39, i64 %39), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor39, i64 %39), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor39, i64 %39), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor39, i64 %39), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor39, i64 %39), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor61 = xor i64 %xor39, %39, !dbg !3654
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor61), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor61), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor61), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor61), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 %xor61, !3598, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor61), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor207 = xor i64 %Aku.0, %xor61, !dbg !3655
    #dbg_value(i64 %xor207, !3561, !DIExpression(), !3531)
  %40 = shl i64 %xor207, 39, !dbg !3656
  %41 = lshr i64 %xor207, 25, !dbg !3656
  %42 = or i64 %40, %41, !dbg !3656
    #dbg_value(i64 %42, !3591, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %42), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not222 = xor i64 %42, -1, !dbg !3657
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %not222), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and223 = and i64 %36, %not222, !dbg !3658
    #dbg_value(!DIArgList(i64 %30, i64 %and223), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor224 = xor i64 %30, %and223, !dbg !3659
    #dbg_value(i64 %xor224, !3620, !DIExpression(), !3531)
  %43 = shl i64 %xor39, 1, !dbg !3660
  %44 = lshr i64 %xor39, 63, !dbg !3660
  %45 = or i64 %43, %44, !dbg !3660
    #dbg_value(!DIArgList(i64 %xor31, i64 %45), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor31, i64 %45), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor31, i64 %45), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor31, i64 %45), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor31, i64 %45), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor31, i64 %45), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor53 = xor i64 %xor31, %45, !dbg !3661
    #dbg_value(i64 %xor53, !3596, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor53), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor53), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor53), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor53), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor53), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor67 = xor i64 %Aki.0, %xor53, !dbg !3662
    #dbg_value(i64 %xor67, !3557, !DIExpression(), !3531)
  %46 = shl i64 %xor67, 43, !dbg !3663
  %47 = lshr i64 %xor67, 21, !dbg !3663
  %48 = or i64 %46, %47, !dbg !3663
    #dbg_value(i64 %48, !3591, !DIExpression(), !3531)
  %49 = shl i64 %xor35, 1, !dbg !3664
  %50 = lshr i64 %xor35, 63, !dbg !3664
  %51 = or i64 %49, %50, !dbg !3664
    #dbg_value(!DIArgList(i64 %xor27, i64 %51), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor27, i64 %51), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor27, i64 %51), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor27, i64 %51), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor27, i64 %51), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor27, i64 %51), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor49 = xor i64 %xor27, %51, !dbg !3665
    #dbg_value(i64 %xor49, !3595, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor49), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor49), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor49), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor49), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor49), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor63 = xor i64 %Age.0, %xor49, !dbg !3666
    #dbg_value(i64 %xor63, !3545, !DIExpression(), !3531)
  %52 = shl i64 %xor63, 44, !dbg !3667
  %53 = lshr i64 %xor63, 20, !dbg !3667
  %54 = or i64 %52, %53, !dbg !3667
    #dbg_value(i64 %54, !3590, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %54), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not = xor i64 %54, -1, !dbg !3668
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %not), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and = and i64 %48, %not, !dbg !3669
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %and, i64 %xor45), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %arrayidx80 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %round.0, !dbg !3670
  %55 = load i64, ptr %arrayidx80, align 8, !dbg !3670
    #dbg_value(!DIArgList(i64 %and, i64 %Aba.0, i64 %xor45, i64 %55), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %56 = xor i64 %and, %55, !dbg !3671
    #dbg_value(!DIArgList(i64 %56, i64 %Aba.0, i64 %xor45), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor62 = xor i64 %Aba.0, %xor45, !dbg !3672
    #dbg_value(i64 %xor62, !3533, !DIExpression(), !3531)
    #dbg_value(i64 %xor62, !3589, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %56, i64 %xor62), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor81 = xor i64 %56, %xor62, !dbg !3671
    #dbg_value(i64 %xor81, !3599, !DIExpression(), !3531)
  %xor94 = xor i64 %Abo.0, %xor57, !dbg !3673
    #dbg_value(i64 %xor94, !3539, !DIExpression(), !3531)
  %57 = shl i64 %xor94, 28, !dbg !3674
  %58 = lshr i64 %xor94, 36, !dbg !3674
  %59 = or i64 %57, %58, !dbg !3674
    #dbg_value(i64 %59, !3589, !DIExpression(), !3531)
  %xor102 = xor i64 %Aka.0, %xor45, !dbg !3675
    #dbg_value(i64 %xor102, !3553, !DIExpression(), !3531)
  %60 = shl i64 %xor102, 3, !dbg !3676
  %61 = lshr i64 %xor102, 61, !dbg !3676
  %62 = or i64 %60, %61, !dbg !3676
    #dbg_value(i64 %62, !3591, !DIExpression(), !3531)
  %xor98 = xor i64 %Agu.0, %xor61, !dbg !3677
    #dbg_value(i64 %xor98, !3551, !DIExpression(), !3531)
  %63 = shl i64 %xor98, 20, !dbg !3678
  %64 = lshr i64 %xor98, 44, !dbg !3678
  %65 = or i64 %63, %64, !dbg !3678
    #dbg_value(i64 %65, !3590, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %65), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not114 = xor i64 %65, -1, !dbg !3679
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %not114), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and115 = and i64 %62, %not114, !dbg !3680
    #dbg_value(!DIArgList(i64 %59, i64 %and115), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor116 = xor i64 %59, %and115, !dbg !3681
    #dbg_value(i64 %xor116, !3604, !DIExpression(), !3531)
  %xor234 = xor i64 %xor81, %xor116, !dbg !3682
  %xor129 = xor i64 %Abe.0, %xor49, !dbg !3683
    #dbg_value(i64 %xor129, !3535, !DIExpression(), !3531)
  %66 = shl i64 %xor129, 1, !dbg !3684
  %67 = lshr i64 %xor129, 63, !dbg !3684
  %68 = or i64 %66, %67, !dbg !3684
    #dbg_value(i64 %68, !3589, !DIExpression(), !3531)
  %xor137 = xor i64 %Ako.0, %xor57, !dbg !3685
    #dbg_value(i64 %xor137, !3559, !DIExpression(), !3531)
  %69 = shl i64 %xor137, 25, !dbg !3686
  %70 = lshr i64 %xor137, 39, !dbg !3686
  %71 = or i64 %69, %70, !dbg !3686
    #dbg_value(i64 %71, !3591, !DIExpression(), !3531)
  %xor133 = xor i64 %Agi.0, %xor53, !dbg !3687
    #dbg_value(i64 %xor133, !3547, !DIExpression(), !3531)
  %72 = shl i64 %xor133, 6, !dbg !3688
  %73 = lshr i64 %xor133, 58, !dbg !3688
  %74 = or i64 %72, %73, !dbg !3688
    #dbg_value(i64 %74, !3590, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %74), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not149 = xor i64 %74, -1, !dbg !3689
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %not149), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and150 = and i64 %71, %not149, !dbg !3690
    #dbg_value(!DIArgList(i64 %68, i64 %and150), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor151 = xor i64 %68, %and150, !dbg !3691
    #dbg_value(i64 %xor151, !3609, !DIExpression(), !3531)
  %xor235 = xor i64 %xor234, %xor151, !dbg !3692
  %xor164 = xor i64 %Abu.0, %xor61, !dbg !3693
    #dbg_value(i64 %xor164, !3541, !DIExpression(), !3531)
  %75 = shl i64 %xor164, 27, !dbg !3694
  %76 = lshr i64 %xor164, 37, !dbg !3694
  %77 = or i64 %75, %76, !dbg !3694
    #dbg_value(i64 %77, !3589, !DIExpression(), !3531)
  %xor172 = xor i64 %Ake.0, %xor49, !dbg !3695
    #dbg_value(i64 %xor172, !3555, !DIExpression(), !3531)
  %78 = shl i64 %xor172, 10, !dbg !3696
  %79 = lshr i64 %xor172, 54, !dbg !3696
  %80 = or i64 %78, %79, !dbg !3696
    #dbg_value(i64 %80, !3591, !DIExpression(), !3531)
  %xor168 = xor i64 %Aga.0, %xor45, !dbg !3697
    #dbg_value(i64 %xor168, !3543, !DIExpression(), !3531)
  %81 = shl i64 %xor168, 36, !dbg !3698
  %82 = lshr i64 %xor168, 28, !dbg !3698
  %83 = or i64 %81, %82, !dbg !3698
    #dbg_value(i64 %83, !3590, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %83), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not184 = xor i64 %83, -1, !dbg !3699
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %not184), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and185 = and i64 %80, %not184, !dbg !3700
    #dbg_value(!DIArgList(i64 %77, i64 %and185), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor186 = xor i64 %77, %and185, !dbg !3701
    #dbg_value(i64 %xor186, !3614, !DIExpression(), !3531)
  %xor236 = xor i64 %xor235, %xor186, !dbg !3702
  %xor199 = xor i64 %Abi.0, %xor53, !dbg !3703
    #dbg_value(i64 %xor199, !3537, !DIExpression(), !3531)
  %84 = shl i64 %xor199, 62, !dbg !3704
  %85 = lshr i64 %xor199, 2, !dbg !3704
  %86 = or i64 %84, %85, !dbg !3704
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %30), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %30), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %not219 = xor i64 %30, -1, !dbg !3705
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %not219), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %not219), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %and220 = and i64 %42, %not219, !dbg !3706
    #dbg_value(!DIArgList(i64 %86, i64 %and220), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %and220), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor221 = xor i64 %86, %and220, !dbg !3707
    #dbg_value(i64 %xor221, !3619, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor221), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor237 = xor i64 %xor236, %xor221, !dbg !3708
    #dbg_value(i64 %xor237, !3589, !DIExpression(), !3531)
  %xor75 = xor i64 %Asu.0, %xor61, !dbg !3709
    #dbg_value(i64 %xor75, !3581, !DIExpression(), !3531)
  %87 = shl i64 %xor75, 14, !dbg !3710
  %88 = lshr i64 %xor75, 50, !dbg !3710
  %89 = or i64 %87, %88, !dbg !3710
    #dbg_value(i64 %89, !3593, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %xor62), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor71 = xor i64 %Amo.0, %xor57, !dbg !3711
    #dbg_value(i64 %xor71, !3569, !DIExpression(), !3531)
  %90 = shl i64 %xor71, 21, !dbg !3712
  %91 = lshr i64 %xor71, 43, !dbg !3712
  %92 = or i64 %90, %91, !dbg !3712
    #dbg_value(i64 %92, !3592, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %92), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %54, i64 %92, i64 %48), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %92, i64 %xor62, i64 %89), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not85 = xor i64 %92, -1, !dbg !3713
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %not85), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and86 = and i64 %89, %not85, !dbg !3714
    #dbg_value(!DIArgList(i64 %48, i64 %and86), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor87 = xor i64 %48, %and86, !dbg !3715
    #dbg_value(i64 %xor87, !3601, !DIExpression(), !3531)
  %xor110 = xor i64 %Asi.0, %xor53, !dbg !3716
    #dbg_value(i64 %xor110, !3577, !DIExpression(), !3531)
  %93 = shl i64 %xor110, 61, !dbg !3717
  %94 = lshr i64 %xor110, 3, !dbg !3717
  %95 = or i64 %93, %94, !dbg !3717
    #dbg_value(i64 %95, !3593, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %59), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor106 = xor i64 %Ame.0, %xor49, !dbg !3718
    #dbg_value(i64 %xor106, !3565, !DIExpression(), !3531)
  %96 = shl i64 %xor106, 45, !dbg !3719
  %97 = lshr i64 %xor106, 19, !dbg !3719
  %98 = or i64 %96, %97, !dbg !3719
    #dbg_value(i64 %98, !3592, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %98), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %95), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %65, i64 %98, i64 %62), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not120 = xor i64 %98, -1, !dbg !3720
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %not120), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and121 = and i64 %95, %not120, !dbg !3721
    #dbg_value(!DIArgList(i64 %62, i64 %and121), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor122 = xor i64 %62, %and121, !dbg !3722
    #dbg_value(i64 %xor122, !3606, !DIExpression(), !3531)
  %xor242 = xor i64 %xor87, %xor122, !dbg !3723
  %xor145 = xor i64 %Asa.0, %xor45, !dbg !3724
    #dbg_value(i64 %xor145, !3573, !DIExpression(), !3531)
  %99 = shl i64 %xor145, 18, !dbg !3725
  %100 = lshr i64 %xor145, 46, !dbg !3725
  %101 = or i64 %99, %100, !dbg !3725
    #dbg_value(i64 %101, !3593, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %68), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor141 = xor i64 %Amu.0, %xor61, !dbg !3726
    #dbg_value(i64 %xor141, !3571, !DIExpression(), !3531)
  %102 = shl i64 %xor141, 8, !dbg !3727
  %103 = lshr i64 %xor141, 56, !dbg !3727
  %104 = or i64 %102, %103, !dbg !3727
    #dbg_value(i64 %104, !3592, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %104), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %74, i64 %104, i64 %71), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %104, i64 %68, i64 %101), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not155 = xor i64 %104, -1, !dbg !3728
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %not155), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and156 = and i64 %101, %not155, !dbg !3729
    #dbg_value(!DIArgList(i64 %71, i64 %and156), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor157 = xor i64 %71, %and156, !dbg !3730
    #dbg_value(i64 %xor157, !3611, !DIExpression(), !3531)
  %xor243 = xor i64 %xor242, %xor157, !dbg !3731
  %xor180 = xor i64 %Aso.0, %xor57, !dbg !3732
    #dbg_value(i64 %xor180, !3579, !DIExpression(), !3531)
  %105 = shl i64 %xor180, 56, !dbg !3733
  %106 = lshr i64 %xor180, 8, !dbg !3733
  %107 = or i64 %105, %106, !dbg !3733
    #dbg_value(i64 %107, !3593, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %77), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor176 = xor i64 %Ami.0, %xor53, !dbg !3734
    #dbg_value(i64 %xor176, !3567, !DIExpression(), !3531)
  %108 = shl i64 %xor176, 15, !dbg !3735
  %109 = lshr i64 %xor176, 49, !dbg !3735
  %110 = or i64 %108, %109, !dbg !3735
    #dbg_value(i64 %110, !3592, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %110), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %83, i64 %110, i64 %80), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %110, i64 %77, i64 %107), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %48), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %not190 = xor i64 %110, -1, !dbg !3736
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %not190), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and191 = and i64 %107, %not190, !dbg !3737
    #dbg_value(!DIArgList(i64 %80, i64 %and191), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor192 = xor i64 %80, %and191, !dbg !3738
    #dbg_value(i64 %xor192, !3616, !DIExpression(), !3531)
  %xor244 = xor i64 %xor243, %xor192, !dbg !3739
  %xor215 = xor i64 %Ase.0, %xor49, !dbg !3740
    #dbg_value(i64 %xor215, !3575, !DIExpression(), !3531)
  %111 = shl i64 %xor215, 2, !dbg !3741
  %112 = lshr i64 %xor215, 62, !dbg !3741
  %113 = or i64 %111, %112, !dbg !3741
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %36), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %86), !3623, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %36, i64 %86, i64 %113), !3622, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %36), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %95), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %xor62), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %not225 = xor i64 %36, -1, !dbg !3742
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %not225), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %not225), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %and226 = and i64 %113, %not225, !dbg !3743
    #dbg_value(!DIArgList(i64 %42, i64 %and226), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %and226), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor227 = xor i64 %42, %and226, !dbg !3744
    #dbg_value(i64 %xor227, !3621, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor227), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor245 = xor i64 %xor244, %xor227, !dbg !3745
    #dbg_value(i64 %xor245, !3591, !DIExpression(), !3531)
  %114 = shl i64 %xor245, 1, !dbg !3746
  %115 = lshr i64 %xor245, 63, !dbg !3746
  %116 = or i64 %114, %115, !dbg !3746
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor237, i64 %116), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %54, i64 %xor237, i64 %92, i64 %48, i64 %116), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %65, i64 %xor237, i64 %98, i64 %62, i64 %116), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %74, i64 %xor237, i64 %104, i64 %71, i64 %116), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %83, i64 %xor237, i64 %110, i64 %80, i64 %116), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor237, i64 %116), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor261 = xor i64 %xor237, %116, !dbg !3747
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor261), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %48), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %62), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %71), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %80), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 %xor261, !3595, !DIExpression(), !3531)
  %xor429 = xor i64 %xor224, %xor261, !dbg !3748
    #dbg_value(i64 %xor429, !3620, !DIExpression(), !3531)
  %117 = shl i64 %xor429, 2, !dbg !3749
  %118 = lshr i64 %xor429, 62, !dbg !3749
  %119 = or i64 %117, %118, !dbg !3749
    #dbg_value(i64 %119, !3593, !DIExpression(), !3531)
  %not123 = xor i64 %95, -1, !dbg !3750
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %not123), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %not123), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %and124 = and i64 %59, %not123, !dbg !3751
    #dbg_value(!DIArgList(i64 %98, i64 %and124), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %and124), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor125 = xor i64 %98, %and124, !dbg !3752
    #dbg_value(i64 %xor125, !3607, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %89), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %not91 = xor i64 %xor62, -1, !dbg !3753
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %not91), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %not91), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %and92 = and i64 %54, %not91, !dbg !3754
    #dbg_value(!DIArgList(i64 %89, i64 %and92), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %and92), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor93 = xor i64 %89, %and92, !dbg !3755
    #dbg_value(i64 %xor93, !3603, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %not126 = xor i64 %59, -1, !dbg !3756
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %not126), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %not126), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %and127 = and i64 %65, %not126, !dbg !3757
    #dbg_value(!DIArgList(i64 %95, i64 %and127), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %and127), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor128 = xor i64 %95, %and127, !dbg !3758
    #dbg_value(i64 %xor128, !3608, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %xor128), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor250 = xor i64 %xor93, %xor128, !dbg !3759
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %not161 = xor i64 %68, -1, !dbg !3760
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %not161), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %not161), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %and162 = and i64 %74, %not161, !dbg !3761
    #dbg_value(!DIArgList(i64 %101, i64 %and162), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %and162), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor163 = xor i64 %101, %and162, !dbg !3762
    #dbg_value(i64 %xor163, !3613, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %xor163), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor251 = xor i64 %xor250, %xor163, !dbg !3763
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %not196 = xor i64 %77, -1, !dbg !3764
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %not196), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %not196), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %and197 = and i64 %83, %not196, !dbg !3765
    #dbg_value(!DIArgList(i64 %107, i64 %and197), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %and197), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor198 = xor i64 %107, %and197, !dbg !3766
    #dbg_value(i64 %xor198, !3618, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %xor198), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor252 = xor i64 %xor251, %xor198, !dbg !3767
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %86), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %not231 = xor i64 %86, -1, !dbg !3768
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %not231), !3623, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %not231), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %and232 = and i64 %30, %not231, !dbg !3769
    #dbg_value(!DIArgList(i64 %113, i64 %and232), !3623, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %and232), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor233 = xor i64 %113, %and232, !dbg !3770
    #dbg_value(i64 %xor233, !3623, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor233), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor253 = xor i64 %xor252, %xor233, !dbg !3771
    #dbg_value(i64 %xor253, !3593, !DIExpression(), !3531)
  %120 = shl i64 %xor253, 1, !dbg !3772
  %121 = lshr i64 %xor253, 63, !dbg !3772
  %122 = or i64 %120, %121, !dbg !3772
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor245, i64 %122), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %92, i64 %xor245, i64 %xor62, i64 %89, i64 %122), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %104, i64 %xor245, i64 %68, i64 %101, i64 %122), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %110, i64 %xor245, i64 %77, i64 %107, i64 %122), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %36, i64 %xor245, i64 %86, i64 %113, i64 %122), !3622, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor245, i64 %122), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor269 = xor i64 %xor245, %122, !dbg !3773
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor269), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %89), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %101), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %107), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %113), !3622, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 %xor269, !3597, !DIExpression(), !3531)
  %xor417 = xor i64 %xor125, %xor269, !dbg !3774
    #dbg_value(i64 %xor417, !3607, !DIExpression(), !3531)
  %123 = shl i64 %xor417, 55, !dbg !3775
  %124 = lshr i64 %xor417, 9, !dbg !3775
  %125 = or i64 %123, %124, !dbg !3775
    #dbg_value(i64 %125, !3590, !DIExpression(), !3531)
  %not82 = xor i64 %48, -1, !dbg !3776
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %not82), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %not82), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %and83 = and i64 %92, %not82, !dbg !3777
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %and83), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %and83), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor84 = xor i64 %54, %and83, !dbg !3778
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor261), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %not117 = xor i64 %62, -1, !dbg !3779
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %not117), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %not117), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %and118 = and i64 %98, %not117, !dbg !3780
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %and118), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %and118), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor119 = xor i64 %65, %and118, !dbg !3781
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %xor119), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor119, i64 %xor261), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor238 = xor i64 %xor84, %xor119, !dbg !3782
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %not152 = xor i64 %71, -1, !dbg !3783
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %not152), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %not152), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %and153 = and i64 %104, %not152, !dbg !3784
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %and153), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %and153), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor154 = xor i64 %74, %and153, !dbg !3785
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %xor154), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor154, i64 %xor261), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor239 = xor i64 %xor238, %xor154, !dbg !3786
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %80), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %not187 = xor i64 %80, -1, !dbg !3787
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %not187), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %not187), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %and188 = and i64 %110, %not187, !dbg !3788
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %and188), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %and188), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor189 = xor i64 %83, %and188, !dbg !3789
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor189), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor189, i64 %xor261), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor240 = xor i64 %xor239, %xor189, !dbg !3790
    #dbg_value(!DIArgList(i64 %xor240, i64 %xor224), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor241 = xor i64 %xor240, %xor224, !dbg !3791
    #dbg_value(i64 %xor241, !3590, !DIExpression(), !3531)
  %not88 = xor i64 %89, -1, !dbg !3792
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %not88), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %not88), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %and89 = and i64 %xor62, %not88, !dbg !3793
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %and89), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %and89), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor90 = xor i64 %92, %and89, !dbg !3794
    #dbg_value(!DIArgList(i64 %xor90, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor90, i64 %xor269), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor246 = xor i64 %xor90, %xor125, !dbg !3795
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %not158 = xor i64 %101, -1, !dbg !3796
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %not158), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %not158), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %and159 = and i64 %68, %not158, !dbg !3797
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %and159), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %and159), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor160 = xor i64 %104, %and159, !dbg !3798
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %xor160), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor160, i64 %xor269), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor247 = xor i64 %xor246, %xor160, !dbg !3799
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %not193 = xor i64 %107, -1, !dbg !3800
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %not193), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %not193), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %and194 = and i64 %77, %not193, !dbg !3801
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %and194), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %and194), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor195 = xor i64 %110, %and194, !dbg !3802
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %xor195), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor195, i64 %xor269), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor248 = xor i64 %xor247, %xor195, !dbg !3803
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %113), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %not228 = xor i64 %113, -1, !dbg !3804
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %not228), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %not228), !3622, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %and229 = and i64 %86, %not228, !dbg !3805
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %and229), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %and229), !3622, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor230 = xor i64 %36, %and229, !dbg !3806
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor230), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor230, i64 %xor269), !3622, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor249 = xor i64 %xor248, %xor230, !dbg !3807
    #dbg_value(i64 %xor249, !3592, !DIExpression(), !3531)
  %126 = shl i64 %xor249, 1, !dbg !3808
  %127 = lshr i64 %xor249, 63, !dbg !3808
  %128 = or i64 %126, %127, !dbg !3808
    #dbg_value(!DIArgList(i64 %xor241, i64 %128), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor241, i64 %128), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor241, i64 %128), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor241, i64 %128), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor241, i64 %128), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor241, i64 %128), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor265 = xor i64 %xor241, %128, !dbg !3809
    #dbg_value(i64 %xor265, !3596, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor265), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor265), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor265), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor265), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor265), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor413 = xor i64 %xor87, %xor265, !dbg !3810
    #dbg_value(i64 %xor413, !3601, !DIExpression(), !3531)
  %129 = shl i64 %xor413, 62, !dbg !3811
  %130 = lshr i64 %xor413, 2, !dbg !3811
  %131 = or i64 %129, %130, !dbg !3811
    #dbg_value(i64 %131, !3589, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %131), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not445 = xor i64 %131, -1, !dbg !3812
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %not445), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and446 = and i64 %125, %not445, !dbg !3813
    #dbg_value(!DIArgList(i64 %119, i64 %and446), !3581, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor447 = xor i64 %119, %and446, !dbg !3814
    #dbg_value(i64 %xor447, !3581, !DIExpression(), !3531)
  %132 = shl i64 %xor241, 1, !dbg !3815
  %133 = lshr i64 %xor241, 63, !dbg !3815
  %134 = or i64 %132, %133, !dbg !3815
    #dbg_value(!DIArgList(i64 %xor253, i64 %134), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor253, i64 %134), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor253, i64 %134), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor253, i64 %134), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor253, i64 %134), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor257 = xor i64 %xor253, %134, !dbg !3816
    #dbg_value(i64 %xor257, !3594, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor257), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor257), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor257), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor257), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor425 = xor i64 %xor186, %xor257, !dbg !3817
    #dbg_value(i64 %xor425, !3614, !DIExpression(), !3531)
  %135 = shl i64 %xor425, 41, !dbg !3818
  %136 = lshr i64 %xor425, 23, !dbg !3818
  %137 = or i64 %135, %136, !dbg !3818
    #dbg_value(i64 %137, !3592, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %119), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not442 = xor i64 %119, -1, !dbg !3819
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %not442), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and443 = and i64 %131, %not442, !dbg !3820
    #dbg_value(!DIArgList(i64 %137, i64 %and443), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor444 = xor i64 %137, %and443, !dbg !3821
    #dbg_value(i64 %xor444, !3579, !DIExpression(), !3531)
  %138 = shl i64 %xor237, 1, !dbg !3822
  %139 = lshr i64 %xor237, 63, !dbg !3822
  %140 = or i64 %138, %139, !dbg !3822
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor249, i64 %140), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor249, i64 %140), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor249, i64 %140), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor249, i64 %140), !3623, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor249, i64 %140), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor249, i64 %140), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor273 = xor i64 %xor249, %140, !dbg !3823
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor273), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor273), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor273), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor273), !3623, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(i64 %xor273, !3598, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor273), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor421 = xor i64 %xor163, %xor273, !dbg !3824
    #dbg_value(i64 %xor421, !3613, !DIExpression(), !3531)
  %141 = shl i64 %xor421, 39, !dbg !3825
  %142 = lshr i64 %xor421, 25, !dbg !3825
  %143 = or i64 %141, %142, !dbg !3825
    #dbg_value(i64 %143, !3591, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %137), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %143), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %125), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not439 = xor i64 %137, -1, !dbg !3826
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %not439), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and440 = and i64 %119, %not439, !dbg !3827
    #dbg_value(!DIArgList(i64 %143, i64 %and440), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor441 = xor i64 %143, %and440, !dbg !3828
    #dbg_value(i64 %xor441, !3577, !DIExpression(), !3531)
  %not436 = xor i64 %143, -1, !dbg !3829
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %not436), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and437 = and i64 %137, %not436, !dbg !3830
    #dbg_value(!DIArgList(i64 %125, i64 %and437), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor438 = xor i64 %125, %and437, !dbg !3831
    #dbg_value(i64 %xor438, !3575, !DIExpression(), !3531)
  %not433 = xor i64 %125, -1, !dbg !3832
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %not433), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and434 = and i64 %143, %not433, !dbg !3833
    #dbg_value(!DIArgList(i64 %131, i64 %and434), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor435 = xor i64 %131, %and434, !dbg !3834
    #dbg_value(i64 %xor435, !3573, !DIExpression(), !3531)
  %xor394 = xor i64 %xor230, %xor269, !dbg !3835
    #dbg_value(i64 %xor394, !3622, !DIExpression(), !3531)
  %144 = shl i64 %xor394, 56, !dbg !3836
  %145 = lshr i64 %xor394, 8, !dbg !3836
  %146 = or i64 %144, %145, !dbg !3836
    #dbg_value(i64 %146, !3593, !DIExpression(), !3531)
  %xor382 = xor i64 %xor116, %xor257, !dbg !3837
    #dbg_value(i64 %xor382, !3604, !DIExpression(), !3531)
  %147 = shl i64 %xor382, 36, !dbg !3838
  %148 = lshr i64 %xor382, 28, !dbg !3838
  %149 = or i64 %147, %148, !dbg !3838
    #dbg_value(i64 %149, !3590, !DIExpression(), !3531)
  %xor378 = xor i64 %xor93, %xor273, !dbg !3839
    #dbg_value(i64 %xor378, !3603, !DIExpression(), !3531)
  %150 = shl i64 %xor378, 27, !dbg !3840
  %151 = lshr i64 %xor378, 37, !dbg !3840
  %152 = or i64 %150, %151, !dbg !3840
    #dbg_value(i64 %152, !3589, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %152), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not410 = xor i64 %152, -1, !dbg !3841
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %not410), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and411 = and i64 %149, %not410, !dbg !3842
    #dbg_value(!DIArgList(i64 %146, i64 %and411), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor412 = xor i64 %146, %and411, !dbg !3843
    #dbg_value(i64 %xor412, !3571, !DIExpression(), !3531)
  %xor390 = xor i64 %xor192, %xor265, !dbg !3844
    #dbg_value(i64 %xor390, !3616, !DIExpression(), !3531)
  %153 = shl i64 %xor390, 15, !dbg !3845
  %154 = lshr i64 %xor390, 49, !dbg !3845
  %155 = or i64 %153, %154, !dbg !3845
    #dbg_value(i64 %155, !3592, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %146), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not407 = xor i64 %146, -1, !dbg !3846
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %not407), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and408 = and i64 %152, %not407, !dbg !3847
    #dbg_value(!DIArgList(i64 %155, i64 %and408), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor409 = xor i64 %155, %and408, !dbg !3848
    #dbg_value(i64 %xor409, !3569, !DIExpression(), !3531)
  %xor386 = xor i64 %xor154, %xor261, !dbg !3849
    #dbg_value(i64 %xor386, !3610, !DIExpression(), !3531)
  %156 = shl i64 %xor386, 10, !dbg !3850
  %157 = lshr i64 %xor386, 54, !dbg !3850
  %158 = or i64 %156, %157, !dbg !3850
    #dbg_value(i64 %158, !3591, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %155), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %158), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %149), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not404 = xor i64 %155, -1, !dbg !3851
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %not404), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and405 = and i64 %146, %not404, !dbg !3852
    #dbg_value(!DIArgList(i64 %158, i64 %and405), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor406 = xor i64 %158, %and405, !dbg !3853
    #dbg_value(i64 %xor406, !3567, !DIExpression(), !3531)
  %not401 = xor i64 %158, -1, !dbg !3854
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %not401), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and402 = and i64 %155, %not401, !dbg !3855
    #dbg_value(!DIArgList(i64 %149, i64 %and402), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor403 = xor i64 %149, %and402, !dbg !3856
    #dbg_value(i64 %xor403, !3565, !DIExpression(), !3531)
  %not398 = xor i64 %149, -1, !dbg !3857
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %not398), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and399 = and i64 %158, %not398, !dbg !3858
    #dbg_value(!DIArgList(i64 %152, i64 %and399), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor400 = xor i64 %152, %and399, !dbg !3859
    #dbg_value(i64 %xor400, !3563, !DIExpression(), !3531)
  %xor359 = xor i64 %xor221, %xor257, !dbg !3860
    #dbg_value(i64 %xor359, !3619, !DIExpression(), !3531)
  %159 = shl i64 %xor359, 18, !dbg !3861
  %160 = lshr i64 %xor359, 46, !dbg !3861
  %161 = or i64 %159, %160, !dbg !3861
    #dbg_value(i64 %161, !3593, !DIExpression(), !3531)
  %xor347 = xor i64 %xor122, %xor265, !dbg !3862
    #dbg_value(i64 %xor347, !3606, !DIExpression(), !3531)
  %162 = shl i64 %xor347, 6, !dbg !3863
  %163 = lshr i64 %xor347, 58, !dbg !3863
  %164 = or i64 %162, %163, !dbg !3863
    #dbg_value(i64 %164, !3590, !DIExpression(), !3531)
  %xor343 = xor i64 %xor84, %xor261, !dbg !3864
    #dbg_value(i64 %xor343, !3600, !DIExpression(), !3531)
  %165 = shl i64 %xor343, 1, !dbg !3865
  %166 = lshr i64 %xor343, 63, !dbg !3865
  %167 = or i64 %165, %166, !dbg !3865
    #dbg_value(i64 %167, !3589, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %167), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not375 = xor i64 %167, -1, !dbg !3866
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %not375), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and376 = and i64 %164, %not375, !dbg !3867
    #dbg_value(!DIArgList(i64 %161, i64 %and376), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor377 = xor i64 %161, %and376, !dbg !3868
    #dbg_value(i64 %xor377, !3561, !DIExpression(), !3531)
  %xor355 = xor i64 %xor198, %xor273, !dbg !3869
    #dbg_value(i64 %xor355, !3618, !DIExpression(), !3531)
  %168 = shl i64 %xor355, 8, !dbg !3870
  %169 = lshr i64 %xor355, 56, !dbg !3870
  %170 = or i64 %168, %169, !dbg !3870
    #dbg_value(i64 %170, !3592, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %161), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not372 = xor i64 %161, -1, !dbg !3871
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %not372), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and373 = and i64 %167, %not372, !dbg !3872
    #dbg_value(!DIArgList(i64 %170, i64 %and373), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor374 = xor i64 %170, %and373, !dbg !3873
    #dbg_value(i64 %xor374, !3559, !DIExpression(), !3531)
  %xor351 = xor i64 %xor160, %xor269, !dbg !3874
    #dbg_value(i64 %xor351, !3612, !DIExpression(), !3531)
  %171 = shl i64 %xor351, 25, !dbg !3875
  %172 = lshr i64 %xor351, 39, !dbg !3875
  %173 = or i64 %171, %172, !dbg !3875
    #dbg_value(i64 %173, !3591, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %170), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %173), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %164), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not369 = xor i64 %170, -1, !dbg !3876
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %not369), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and370 = and i64 %161, %not369, !dbg !3877
    #dbg_value(!DIArgList(i64 %173, i64 %and370), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor371 = xor i64 %173, %and370, !dbg !3878
    #dbg_value(i64 %xor371, !3557, !DIExpression(), !3531)
  %not366 = xor i64 %173, -1, !dbg !3879
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %not366), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and367 = and i64 %170, %not366, !dbg !3880
    #dbg_value(!DIArgList(i64 %164, i64 %and367), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor368 = xor i64 %164, %and367, !dbg !3881
    #dbg_value(i64 %xor368, !3555, !DIExpression(), !3531)
  %not363 = xor i64 %164, -1, !dbg !3882
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %not363), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and364 = and i64 %173, %not363, !dbg !3883
    #dbg_value(!DIArgList(i64 %167, i64 %and364), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor365 = xor i64 %167, %and364, !dbg !3884
    #dbg_value(i64 %xor365, !3553, !DIExpression(), !3531)
  %xor324 = xor i64 %xor227, %xor265, !dbg !3885
    #dbg_value(i64 %xor324, !3621, !DIExpression(), !3531)
  %174 = shl i64 %xor324, 61, !dbg !3886
  %175 = lshr i64 %xor324, 3, !dbg !3886
  %176 = or i64 %174, %175, !dbg !3886
    #dbg_value(i64 %176, !3593, !DIExpression(), !3531)
  %xor312 = xor i64 %xor128, %xor273, !dbg !3887
    #dbg_value(i64 %xor312, !3608, !DIExpression(), !3531)
  %177 = shl i64 %xor312, 20, !dbg !3888
  %178 = lshr i64 %xor312, 44, !dbg !3888
  %179 = or i64 %177, %178, !dbg !3888
    #dbg_value(i64 %179, !3590, !DIExpression(), !3531)
  %xor308 = xor i64 %xor90, %xor269, !dbg !3889
    #dbg_value(i64 %xor308, !3602, !DIExpression(), !3531)
  %180 = shl i64 %xor308, 28, !dbg !3890
  %181 = lshr i64 %xor308, 36, !dbg !3890
  %182 = or i64 %180, %181, !dbg !3890
    #dbg_value(i64 %182, !3589, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %182), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not340 = xor i64 %182, -1, !dbg !3891
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %not340), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and341 = and i64 %179, %not340, !dbg !3892
    #dbg_value(!DIArgList(i64 %176, i64 %and341), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor342 = xor i64 %176, %and341, !dbg !3893
    #dbg_value(i64 %xor342, !3551, !DIExpression(), !3531)
  %xor320 = xor i64 %xor189, %xor261, !dbg !3894
    #dbg_value(i64 %xor320, !3615, !DIExpression(), !3531)
  %183 = shl i64 %xor320, 45, !dbg !3895
  %184 = lshr i64 %xor320, 19, !dbg !3895
  %185 = or i64 %183, %184, !dbg !3895
    #dbg_value(i64 %185, !3592, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %176), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not337 = xor i64 %176, -1, !dbg !3896
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %not337), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and338 = and i64 %182, %not337, !dbg !3897
    #dbg_value(!DIArgList(i64 %185, i64 %and338), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor339 = xor i64 %185, %and338, !dbg !3898
    #dbg_value(i64 %xor339, !3549, !DIExpression(), !3531)
  %xor316 = xor i64 %xor151, %xor257, !dbg !3899
    #dbg_value(i64 %xor316, !3609, !DIExpression(), !3531)
  %186 = shl i64 %xor316, 3, !dbg !3900
  %187 = lshr i64 %xor316, 61, !dbg !3900
  %188 = or i64 %186, %187, !dbg !3900
    #dbg_value(i64 %188, !3591, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %185), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %188), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %179), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not334 = xor i64 %185, -1, !dbg !3901
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %not334), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and335 = and i64 %176, %not334, !dbg !3902
    #dbg_value(!DIArgList(i64 %188, i64 %and335), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor336 = xor i64 %188, %and335, !dbg !3903
    #dbg_value(i64 %xor336, !3547, !DIExpression(), !3531)
  %not331 = xor i64 %188, -1, !dbg !3904
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %not331), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and332 = and i64 %185, %not331, !dbg !3905
    #dbg_value(!DIArgList(i64 %179, i64 %and332), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor333 = xor i64 %179, %and332, !dbg !3906
    #dbg_value(i64 %xor333, !3545, !DIExpression(), !3531)
  %not328 = xor i64 %179, -1, !dbg !3907
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %not328), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and329 = and i64 %188, %not328, !dbg !3908
    #dbg_value(!DIArgList(i64 %182, i64 %and329), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor330 = xor i64 %182, %and329, !dbg !3909
    #dbg_value(i64 %xor330, !3543, !DIExpression(), !3531)
  %xor287 = xor i64 %xor233, %xor273, !dbg !3910
    #dbg_value(i64 %xor287, !3623, !DIExpression(), !3531)
  %189 = shl i64 %xor287, 14, !dbg !3911
  %190 = lshr i64 %xor287, 50, !dbg !3911
  %191 = or i64 %189, %190, !dbg !3911
    #dbg_value(i64 %191, !3593, !DIExpression(), !3531)
  %xor275 = xor i64 %xor119, %xor261, !dbg !3912
    #dbg_value(i64 %xor275, !3605, !DIExpression(), !3531)
  %192 = shl i64 %xor275, 44, !dbg !3913
  %193 = lshr i64 %xor275, 20, !dbg !3913
  %194 = or i64 %192, %193, !dbg !3913
    #dbg_value(i64 %194, !3590, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor81, i64 %xor257), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor274 = xor i64 %xor81, %xor257, !dbg !3914
    #dbg_value(i64 %xor274, !3599, !DIExpression(), !3531)
    #dbg_value(i64 %xor274, !3589, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor274), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not305 = xor i64 %xor274, -1, !dbg !3915
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %not305), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and306 = and i64 %194, %not305, !dbg !3916
    #dbg_value(!DIArgList(i64 %191, i64 %and306), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor307 = xor i64 %191, %and306, !dbg !3917
    #dbg_value(i64 %xor307, !3541, !DIExpression(), !3531)
  %xor283 = xor i64 %xor195, %xor269, !dbg !3918
    #dbg_value(i64 %xor283, !3617, !DIExpression(), !3531)
  %195 = shl i64 %xor283, 21, !dbg !3919
  %196 = lshr i64 %xor283, 43, !dbg !3919
  %197 = or i64 %195, %196, !dbg !3919
    #dbg_value(i64 %197, !3592, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %191), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not302 = xor i64 %191, -1, !dbg !3920
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %not302), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and303 = and i64 %xor274, %not302, !dbg !3921
    #dbg_value(!DIArgList(i64 %197, i64 %and303), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor304 = xor i64 %197, %and303, !dbg !3922
    #dbg_value(i64 %xor304, !3539, !DIExpression(), !3531)
  %xor279 = xor i64 %xor157, %xor265, !dbg !3923
    #dbg_value(i64 %xor279, !3611, !DIExpression(), !3531)
  %198 = shl i64 %xor279, 43, !dbg !3924
  %199 = lshr i64 %xor279, 21, !dbg !3924
  %200 = or i64 %198, %199, !dbg !3924
    #dbg_value(i64 %200, !3591, !DIExpression(), !3531)
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %197), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %200), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
    #dbg_value(!DIArgList(i64 %xor274, i64 %200, i64 %194), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %not299 = xor i64 %197, -1, !dbg !3925
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %not299), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and300 = and i64 %191, %not299, !dbg !3926
    #dbg_value(!DIArgList(i64 %200, i64 %and300), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor301 = xor i64 %200, %and300, !dbg !3927
    #dbg_value(i64 %xor301, !3537, !DIExpression(), !3531)
  %not296 = xor i64 %200, -1, !dbg !3928
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %not296), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3531)
  %and297 = and i64 %197, %not296, !dbg !3929
    #dbg_value(!DIArgList(i64 %194, i64 %and297), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %xor298 = xor i64 %194, %and297, !dbg !3930
    #dbg_value(i64 %xor298, !3535, !DIExpression(), !3531)
  %add = or disjoint i32 %round.0, 1, !dbg !3931
  %arrayidx294 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %add, !dbg !3932
  %201 = load i64, ptr %arrayidx294, align 8, !dbg !3932
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %194), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %not291 = xor i64 %194, -1, !dbg !3933
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %not291), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %and292 = and i64 %200, %not291, !dbg !3934
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %and292), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3531)
  %202 = xor i64 %and292, %201, !dbg !3935
  %xor295 = xor i64 %202, %xor274, !dbg !3935
    #dbg_value(i64 %xor295, !3533, !DIExpression(), !3531)
  %add448 = add nuw nsw i32 %round.0, 2, !dbg !3936
    #dbg_value(i32 %add448, !3582, !DIExpression(), !3531)
  br label %for.cond, !dbg !3937, !llvm.loop !3938

for.end:                                          ; preds = %for.cond
  %Aso.0.lcssa = phi i64 [ %Aso.0, %for.cond ], !dbg !3531
  %Asi.0.lcssa = phi i64 [ %Asi.0, %for.cond ], !dbg !3531
  %Ase.0.lcssa = phi i64 [ %Ase.0, %for.cond ], !dbg !3531
  %Asa.0.lcssa = phi i64 [ %Asa.0, %for.cond ], !dbg !3531
  %Amu.0.lcssa = phi i64 [ %Amu.0, %for.cond ], !dbg !3531
  %Amo.0.lcssa = phi i64 [ %Amo.0, %for.cond ], !dbg !3531
  %Ami.0.lcssa = phi i64 [ %Ami.0, %for.cond ], !dbg !3531
  %Ame.0.lcssa = phi i64 [ %Ame.0, %for.cond ], !dbg !3531
  %Ama.0.lcssa = phi i64 [ %Ama.0, %for.cond ], !dbg !3531
  %Aku.0.lcssa = phi i64 [ %Aku.0, %for.cond ], !dbg !3531
  %Ako.0.lcssa = phi i64 [ %Ako.0, %for.cond ], !dbg !3531
  %Aki.0.lcssa = phi i64 [ %Aki.0, %for.cond ], !dbg !3531
  %Ake.0.lcssa = phi i64 [ %Ake.0, %for.cond ], !dbg !3531
  %Aka.0.lcssa = phi i64 [ %Aka.0, %for.cond ], !dbg !3531
  %Agu.0.lcssa = phi i64 [ %Agu.0, %for.cond ], !dbg !3531
  %Ago.0.lcssa = phi i64 [ %Ago.0, %for.cond ], !dbg !3531
  %Agi.0.lcssa = phi i64 [ %Agi.0, %for.cond ], !dbg !3531
  %Age.0.lcssa = phi i64 [ %Age.0, %for.cond ], !dbg !3531
  %Aga.0.lcssa = phi i64 [ %Aga.0, %for.cond ], !dbg !3531
  %Abu.0.lcssa = phi i64 [ %Abu.0, %for.cond ], !dbg !3531
  %Abo.0.lcssa = phi i64 [ %Abo.0, %for.cond ], !dbg !3531
  %Abi.0.lcssa = phi i64 [ %Abi.0, %for.cond ], !dbg !3531
  %Abe.0.lcssa = phi i64 [ %Abe.0, %for.cond ], !dbg !3531
  %Aba.0.lcssa = phi i64 [ %Aba.0, %for.cond ], !dbg !3531
  %Asu.0.lcssa = phi i64 [ %Asu.0, %for.cond ], !dbg !3531
  store i64 %Aba.0.lcssa, ptr %state, align 8, !dbg !3940
  %arrayidx450 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3941
  store i64 %Abe.0.lcssa, ptr %arrayidx450, align 8, !dbg !3942
  %arrayidx451 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3943
  store i64 %Abi.0.lcssa, ptr %arrayidx451, align 8, !dbg !3944
  %arrayidx452 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3945
  store i64 %Abo.0.lcssa, ptr %arrayidx452, align 8, !dbg !3946
  %arrayidx453 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3947
  store i64 %Abu.0.lcssa, ptr %arrayidx453, align 8, !dbg !3948
  %arrayidx454 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3949
  store i64 %Aga.0.lcssa, ptr %arrayidx454, align 8, !dbg !3950
  %arrayidx455 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3951
  store i64 %Age.0.lcssa, ptr %arrayidx455, align 8, !dbg !3952
  %arrayidx456 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3953
  store i64 %Agi.0.lcssa, ptr %arrayidx456, align 8, !dbg !3954
  %arrayidx457 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3955
  store i64 %Ago.0.lcssa, ptr %arrayidx457, align 8, !dbg !3956
  %arrayidx458 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3957
  store i64 %Agu.0.lcssa, ptr %arrayidx458, align 8, !dbg !3958
  %arrayidx459 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3959
  store i64 %Aka.0.lcssa, ptr %arrayidx459, align 8, !dbg !3960
  %arrayidx460 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3961
  store i64 %Ake.0.lcssa, ptr %arrayidx460, align 8, !dbg !3962
  %arrayidx461 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3963
  store i64 %Aki.0.lcssa, ptr %arrayidx461, align 8, !dbg !3964
  %arrayidx462 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3965
  store i64 %Ako.0.lcssa, ptr %arrayidx462, align 8, !dbg !3966
  %arrayidx463 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3967
  store i64 %Aku.0.lcssa, ptr %arrayidx463, align 8, !dbg !3968
  %arrayidx464 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3969
  store i64 %Ama.0.lcssa, ptr %arrayidx464, align 8, !dbg !3970
  %arrayidx465 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3971
  store i64 %Ame.0.lcssa, ptr %arrayidx465, align 8, !dbg !3972
  %arrayidx466 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3973
  store i64 %Ami.0.lcssa, ptr %arrayidx466, align 8, !dbg !3974
  %arrayidx467 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3975
  store i64 %Amo.0.lcssa, ptr %arrayidx467, align 8, !dbg !3976
  %arrayidx468 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3977
  store i64 %Amu.0.lcssa, ptr %arrayidx468, align 8, !dbg !3978
  %arrayidx469 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3979
  store i64 %Asa.0.lcssa, ptr %arrayidx469, align 8, !dbg !3980
  %arrayidx470 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3981
  store i64 %Ase.0.lcssa, ptr %arrayidx470, align 8, !dbg !3982
  %arrayidx471 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3983
  store i64 %Asi.0.lcssa, ptr %arrayidx471, align 8, !dbg !3984
  %arrayidx472 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3985
  store i64 %Aso.0.lcssa, ptr %arrayidx472, align 8, !dbg !3986
  %arrayidx473 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3987
  store i64 %Asu.0.lcssa, ptr %arrayidx473, align 8, !dbg !3988
  ret void, !dbg !3989
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !3990 {
entry:
    #dbg_value(ptr %state, !3991, !DIExpression(), !3992)
  %0 = load ptr, ptr %state, align 4, !dbg !3993
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 168, i8 noundef zeroext 31) #4, !dbg !3994
  ret void, !dbg !3995
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_finalize(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !3996 {
entry:
    #dbg_value(ptr %s_inc, !3999, !DIExpression(), !4000)
    #dbg_value(i32 %r, !4001, !DIExpression(), !4000)
    #dbg_value(i8 %p, !4002, !DIExpression(), !4000)
  %conv = zext nneg i8 %p to i64, !dbg !4003
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4004
  %0 = load i64, ptr %arrayidx, align 8, !dbg !4004
  %and = shl i64 %0, 3, !dbg !4005
  %mul = and i64 %and, 56, !dbg !4005
  %shl = shl nuw nsw i64 %conv, %mul, !dbg !4006
  %shr = lshr i64 %0, 3, !dbg !4007
  %idxprom = trunc i64 %shr to i32, !dbg !4008
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !4008
  %1 = load i64, ptr %arrayidx2, align 8, !dbg !4009
  %xor = xor i64 %1, %shl, !dbg !4009
  store i64 %xor, ptr %arrayidx2, align 8, !dbg !4009
  %sub = shl nuw nsw i32 %r, 3, !dbg !4010
  %and3 = add nuw nsw i32 %sub, 56, !dbg !4010
  %mul4 = and i32 %and3, 56, !dbg !4010
  %sh_prom = zext nneg i32 %mul4 to i64, !dbg !4011
  %shl5 = shl nuw i64 128, %sh_prom, !dbg !4011
  %sub6 = add nsw i32 %r, -1, !dbg !4012
  %shr7 = lshr i32 %sub6, 3, !dbg !4013
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr7, !dbg !4014
  %2 = load i64, ptr %arrayidx8, align 8, !dbg !4015
  %xor9 = xor i64 %2, %shl5, !dbg !4015
  store i64 %xor9, ptr %arrayidx8, align 8, !dbg !4015
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4016
  store i64 0, ptr %arrayidx10, align 8, !dbg !4017
  ret void, !dbg !4018
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !4019 {
entry:
    #dbg_value(ptr %output, !4022, !DIExpression(), !4023)
    #dbg_value(i32 %outlen, !4024, !DIExpression(), !4023)
    #dbg_value(ptr %state, !4025, !DIExpression(), !4023)
  %0 = load ptr, ptr %state, align 4, !dbg !4026
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 168) #4, !dbg !4027
  ret void, !dbg !4028
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_squeeze(ptr noundef %h, i32 noundef %outlen, ptr noundef %s_inc, i32 noundef range(i32 136, 169) %r) unnamed_addr #0 !dbg !4029 {
entry:
    #dbg_value(ptr %h, !4032, !DIExpression(), !4033)
    #dbg_value(i32 %outlen, !4034, !DIExpression(), !4033)
    #dbg_value(ptr %s_inc, !4035, !DIExpression(), !4033)
    #dbg_value(i32 %r, !4036, !DIExpression(), !4033)
    #dbg_value(i32 0, !4037, !DIExpression(), !4033)
  br label %for.cond, !dbg !4038

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4040
    #dbg_value(i32 %i.0, !4037, !DIExpression(), !4033)
  %exitcond = icmp ne i32 %i.0, %outlen, !dbg !4041
  br i1 %exitcond, label %land.rhs, label %for.end, !dbg !4043

land.rhs:                                         ; preds = %for.cond
  %conv = zext i32 %i.0 to i64, !dbg !4044
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4045
  %0 = load i64, ptr %arrayidx, align 8, !dbg !4045
  %cmp1 = icmp ugt i64 %0, %conv, !dbg !4046
  br i1 %cmp1, label %for.body, label %for.end, !dbg !4047

for.body:                                         ; preds = %land.rhs
  %conv3 = zext nneg i32 %r to i64, !dbg !4048
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4050
  %1 = load i64, ptr %arrayidx4, align 8, !dbg !4050
  %sub = sub i64 %conv3, %1, !dbg !4051
  %conv5 = zext i32 %i.0 to i64, !dbg !4052
  %add = add i64 %sub, %conv5, !dbg !4053
  %shr = lshr i64 %add, 3, !dbg !4054
  %idxprom = trunc i64 %shr to i32, !dbg !4055
  %arrayidx6 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !4055
  %2 = load i64, ptr %arrayidx6, align 8, !dbg !4055
  %conv7 = zext nneg i32 %r to i64, !dbg !4056
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4057
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !4057
  %sub9 = sub i64 %conv7, %3, !dbg !4058
  %conv10 = zext i32 %i.0 to i64, !dbg !4059
  %add11 = add i64 %sub9, %conv10, !dbg !4060
  %and = shl i64 %add11, 3, !dbg !4061
  %mul = and i64 %and, 56, !dbg !4061
  %shr12 = lshr i64 %2, %mul, !dbg !4062
  %conv13 = trunc i64 %shr12 to i8, !dbg !4063
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %h, i32 %i.0, !dbg !4064
  store i8 %conv13, ptr %arrayidx14, align 1, !dbg !4065
  %inc = add i32 %i.0, 1, !dbg !4066
    #dbg_value(i32 %inc, !4037, !DIExpression(), !4033)
  br label %for.cond, !dbg !4067, !llvm.loop !4068

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %outlen, %for.cond ], [ %i.0, %land.rhs ], !dbg !4040
  %add.ptr = getelementptr inbounds nuw i8, ptr %h, i32 %i.0.lcssa, !dbg !4070
    #dbg_value(ptr %add.ptr, !4032, !DIExpression(), !4033)
  %sub15 = sub i32 %outlen, %i.0.lcssa, !dbg !4071
    #dbg_value(i32 %sub15, !4034, !DIExpression(), !4033)
  %conv16 = zext i32 %i.0.lcssa to i64, !dbg !4072
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4073
  %4 = load i64, ptr %arrayidx17, align 8, !dbg !4074
  %sub18 = sub i64 %4, %conv16, !dbg !4074
  store i64 %sub18, ptr %arrayidx17, align 8, !dbg !4074
  br label %while.cond, !dbg !4075

while.cond:                                       ; preds = %for.end38, %for.end
  %outlen.addr.0 = phi i32 [ %sub15, %for.end ], [ %sub40, %for.end38 ], !dbg !4033
  %h.addr.0 = phi ptr [ %add.ptr, %for.end ], [ %add.ptr39, %for.end38 ], !dbg !4033
    #dbg_value(ptr %h.addr.0, !4032, !DIExpression(), !4033)
    #dbg_value(i32 %outlen.addr.0, !4034, !DIExpression(), !4033)
  %cmp19.not = icmp eq i32 %outlen.addr.0, 0, !dbg !4076
  br i1 %cmp19.not, label %while.end, label %while.body, !dbg !4075

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #4, !dbg !4077
    #dbg_value(i32 0, !4037, !DIExpression(), !4033)
  %5 = icmp ult i32 %outlen.addr.0, %r, !dbg !4079
  %6 = select i1 %5, i32 %outlen.addr.0, i32 %r, !dbg !4079
  br label %for.cond21, !dbg !4079

for.cond21:                                       ; preds = %for.body28, %while.body
  %i.1 = phi i32 [ 0, %while.body ], [ %inc37, %for.body28 ], !dbg !4081
    #dbg_value(i32 %i.1, !4037, !DIExpression(), !4033)
  %exitcond1 = icmp ne i32 %i.1, %6, !dbg !4082
  br i1 %exitcond1, label %for.body28, label %for.end38, !dbg !4084

for.body28:                                       ; preds = %for.cond21
  %shr29 = lshr i32 %i.1, 3, !dbg !4085
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr29, !dbg !4087
  %7 = load i64, ptr %arrayidx30, align 8, !dbg !4087
  %and31 = shl nuw nsw i32 %i.1, 3, !dbg !4088
  %mul32 = and i32 %and31, 56, !dbg !4088
  %sh_prom = zext nneg i32 %mul32 to i64, !dbg !4089
  %shr33 = lshr i64 %7, %sh_prom, !dbg !4089
  %conv34 = trunc i64 %shr33 to i8, !dbg !4090
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1, !dbg !4091
  store i8 %conv34, ptr %arrayidx35, align 1, !dbg !4092
  %inc37 = add nuw nsw i32 %i.1, 1, !dbg !4093
    #dbg_value(i32 %inc37, !4037, !DIExpression(), !4033)
  br label %for.cond21, !dbg !4094, !llvm.loop !4095

for.end38:                                        ; preds = %for.cond21
  %i.1.lcssa = phi i32 [ %i.1, %for.cond21 ], !dbg !4081
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1.lcssa, !dbg !4097
    #dbg_value(ptr %add.ptr39, !4032, !DIExpression(), !4033)
  %sub40 = sub i32 %outlen.addr.0, %i.1.lcssa, !dbg !4098
    #dbg_value(i32 %sub40, !4034, !DIExpression(), !4033)
  %sub41 = sub nsw i32 %r, %i.1.lcssa, !dbg !4099
  %conv42 = zext i32 %sub41 to i64, !dbg !4100
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4101
  store i64 %conv42, ptr %arrayidx43, align 8, !dbg !4102
  br label %while.cond, !dbg !4075, !llvm.loop !4103

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4105
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4106 {
entry:
    #dbg_value(ptr %dest, !4111, !DIExpression(), !4112)
    #dbg_value(ptr %src, !4113, !DIExpression(), !4112)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4114
  store ptr %call, ptr %dest, align 4, !dbg !4115
  %cmp = icmp eq ptr %call, null, !dbg !4116
  br i1 %cmp, label %if.then, label %if.end, !dbg !4116

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4118
  br label %if.end, !dbg !4120

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4121
  %1 = load ptr, ptr %src, align 4, !dbg !4122
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4123
  ret void, !dbg !4124
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4125 {
entry:
    #dbg_value(ptr %state, !4126, !DIExpression(), !4127)
  %0 = load ptr, ptr %state, align 4, !dbg !4128
  call void @free(ptr noundef %0) #6, !dbg !4129
  ret void, !dbg !4130
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4131 {
entry:
    #dbg_value(ptr %state, !4139, !DIExpression(), !4140)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4141
  store ptr %call, ptr %state, align 4, !dbg !4142
  %cmp = icmp eq ptr %call, null, !dbg !4143
  br i1 %cmp, label %if.then, label %if.end, !dbg !4143

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4145
  br label %if.end, !dbg !4147

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4148
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4149
  ret void, !dbg !4150
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4151 {
entry:
    #dbg_value(ptr %state, !4154, !DIExpression(), !4155)
    #dbg_value(ptr %input, !4156, !DIExpression(), !4155)
    #dbg_value(i32 %inlen, !4157, !DIExpression(), !4155)
  %0 = load ptr, ptr %state, align 4, !dbg !4158
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4159
  ret void, !dbg !4160
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !4161 {
entry:
    #dbg_value(ptr %state, !4162, !DIExpression(), !4163)
  %0 = load ptr, ptr %state, align 4, !dbg !4164
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 31) #4, !dbg !4165
  ret void, !dbg !4166
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !4167 {
entry:
    #dbg_value(ptr %output, !4170, !DIExpression(), !4171)
    #dbg_value(i32 %outlen, !4172, !DIExpression(), !4171)
    #dbg_value(ptr %state, !4173, !DIExpression(), !4171)
  %0 = load ptr, ptr %state, align 4, !dbg !4174
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 136) #4, !dbg !4175
  ret void, !dbg !4176
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4177 {
entry:
    #dbg_value(ptr %dest, !4182, !DIExpression(), !4183)
    #dbg_value(ptr %src, !4184, !DIExpression(), !4183)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4185
  store ptr %call, ptr %dest, align 4, !dbg !4186
  %cmp = icmp eq ptr %call, null, !dbg !4187
  br i1 %cmp, label %if.then, label %if.end, !dbg !4187

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4189
  br label %if.end, !dbg !4191

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4192
  %1 = load ptr, ptr %src, align 4, !dbg !4193
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4194
  ret void, !dbg !4195
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4196 {
entry:
    #dbg_value(ptr %state, !4197, !DIExpression(), !4198)
  %0 = load ptr, ptr %state, align 4, !dbg !4199
  call void @free(ptr noundef %0) #6, !dbg !4200
  ret void, !dbg !4201
}

; Function Attrs: nounwind
define dso_local void @shake128_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4202 {
entry:
    #dbg_value(ptr %state, !4210, !DIExpression(), !4211)
    #dbg_value(ptr %input, !4212, !DIExpression(), !4211)
    #dbg_value(i32 %inlen, !4213, !DIExpression(), !4211)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4214
  store ptr %call, ptr %state, align 4, !dbg !4215
  %cmp = icmp eq ptr %call, null, !dbg !4216
  br i1 %cmp, label %if.then, label %if.end, !dbg !4216

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4218
  br label %if.end, !dbg !4220

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4221
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !4222
  ret void, !dbg !4223
}

; Function Attrs: nounwind
define internal fastcc void @keccak_absorb(ptr noundef %s, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !4224 {
entry:
  %t = alloca [200 x i8], align 1
    #dbg_value(ptr %s, !4227, !DIExpression(), !4228)
    #dbg_value(i32 %r, !4229, !DIExpression(), !4228)
    #dbg_value(ptr %m, !4230, !DIExpression(), !4228)
    #dbg_value(i32 %mlen, !4231, !DIExpression(), !4228)
    #dbg_value(i8 %p, !4232, !DIExpression(), !4228)
    #dbg_declare(ptr %t, !4233, !DIExpression(), !4237)
    #dbg_value(i32 0, !4238, !DIExpression(), !4228)
  br label %for.cond, !dbg !4239

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4241
    #dbg_value(i32 %i.0, !4238, !DIExpression(), !4228)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !4242
  br i1 %exitcond, label %for.body, label %while.cond.preheader, !dbg !4244

while.cond.preheader:                             ; preds = %for.cond
  %0 = lshr i32 %r, 3, !dbg !4245
  br label %while.cond, !dbg !4245

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4246
  store i64 0, ptr %arrayidx, align 8, !dbg !4248
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4249
    #dbg_value(i32 %inc, !4238, !DIExpression(), !4228)
  br label %for.cond, !dbg !4250, !llvm.loop !4251

while.cond:                                       ; preds = %while.cond.preheader, %for.end8
  %m.addr.0 = phi ptr [ %add.ptr9, %for.end8 ], [ %m, %while.cond.preheader ]
  %mlen.addr.0 = phi i32 [ %sub, %for.end8 ], [ %mlen, %while.cond.preheader ]
    #dbg_value(i32 %mlen.addr.0, !4231, !DIExpression(), !4228)
    #dbg_value(ptr %m.addr.0, !4230, !DIExpression(), !4228)
  %cmp1.not = icmp ult i32 %mlen.addr.0, %r, !dbg !4253
  br i1 %cmp1.not, label %for.cond10.preheader, label %for.cond2.preheader, !dbg !4245

for.cond2.preheader:                              ; preds = %while.cond
  br label %for.cond2, !dbg !4254

for.cond10.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa5 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  br label %for.cond10, !dbg !4257

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %i.1 = phi i32 [ %inc7, %for.body4 ], [ 0, %for.cond2.preheader ], !dbg !4259
    #dbg_value(i32 %i.1, !4238, !DIExpression(), !4228)
  %exitcond3 = icmp ne i32 %i.1, %0, !dbg !4260
  br i1 %exitcond3, label %for.body4, label %for.end8, !dbg !4254

for.body4:                                        ; preds = %for.cond2
  %mul = shl nuw nsw i32 %i.1, 3, !dbg !4262
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %mul, !dbg !4264
  %call = call fastcc i64 @load64(ptr noundef %add.ptr) #4, !dbg !4265
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %s, i32 %i.1, !dbg !4266
  %1 = load i64, ptr %arrayidx5, align 8, !dbg !4267
  %xor = xor i64 %1, %call, !dbg !4267
  store i64 %xor, ptr %arrayidx5, align 8, !dbg !4267
  %inc7 = add nuw nsw i32 %i.1, 1, !dbg !4268
    #dbg_value(i32 %inc7, !4238, !DIExpression(), !4228)
  br label %for.cond2, !dbg !4269, !llvm.loop !4270

for.end8:                                         ; preds = %for.cond2
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !4272
  %sub = sub i32 %mlen.addr.0, %r, !dbg !4273
    #dbg_value(i32 %sub, !4231, !DIExpression(), !4228)
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %r, !dbg !4274
    #dbg_value(ptr %add.ptr9, !4230, !DIExpression(), !4228)
  br label %while.cond, !dbg !4245, !llvm.loop !4275

for.cond10:                                       ; preds = %for.cond10.preheader, %for.body12
  %i.2 = phi i32 [ %inc15, %for.body12 ], [ 0, %for.cond10.preheader ], !dbg !4277
    #dbg_value(i32 %i.2, !4238, !DIExpression(), !4228)
  %exitcond4 = icmp ne i32 %i.2, %r, !dbg !4278
  br i1 %exitcond4, label %for.body12, label %for.cond17.preheader, !dbg !4257

for.cond17.preheader:                             ; preds = %for.cond10
  br label %for.cond17, !dbg !4280

for.body12:                                       ; preds = %for.cond10
  %arrayidx13 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.2, !dbg !4282
  store i8 0, ptr %arrayidx13, align 1, !dbg !4284
  %inc15 = add nuw nsw i32 %i.2, 1, !dbg !4285
    #dbg_value(i32 %inc15, !4238, !DIExpression(), !4228)
  br label %for.cond10, !dbg !4286, !llvm.loop !4287

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body19
  %i.3 = phi i32 [ %inc23, %for.body19 ], [ 0, %for.cond17.preheader ], !dbg !4289
    #dbg_value(i32 %i.3, !4238, !DIExpression(), !4228)
  %exitcond6 = icmp ne i32 %i.3, %mlen.addr.0.lcssa5, !dbg !4290
  br i1 %exitcond6, label %for.body19, label %for.end24, !dbg !4280

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.3, !dbg !4292
  %2 = load i8, ptr %arrayidx20, align 1, !dbg !4292
  %arrayidx21 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3, !dbg !4294
  store i8 %2, ptr %arrayidx21, align 1, !dbg !4295
  %inc23 = add i32 %i.3, 1, !dbg !4296
    #dbg_value(i32 %inc23, !4238, !DIExpression(), !4228)
  br label %for.cond17, !dbg !4297, !llvm.loop !4298

for.end24:                                        ; preds = %for.cond17
  %i.3.lcssa = phi i32 [ %i.3, %for.cond17 ], !dbg !4289
  %arrayidx25 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3.lcssa, !dbg !4300
  store i8 %p, ptr %arrayidx25, align 1, !dbg !4301
  %sub26 = add nsw i32 %r, -1, !dbg !4302
  %arrayidx27 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %sub26, !dbg !4303
  %3 = load i8, ptr %arrayidx27, align 1, !dbg !4304
  %4 = or i8 %3, -128, !dbg !4304
  store i8 %4, ptr %arrayidx27, align 1, !dbg !4304
    #dbg_value(i32 0, !4238, !DIExpression(), !4228)
  br label %for.cond29, !dbg !4305

for.cond29:                                       ; preds = %for.body33, %for.end24
  %i.4 = phi i32 [ 0, %for.end24 ], [ %inc40, %for.body33 ], !dbg !4307
    #dbg_value(i32 %i.4, !4238, !DIExpression(), !4228)
  %exitcond7 = icmp ne i32 %i.4, %0, !dbg !4308
  br i1 %exitcond7, label %for.body33, label %for.end41, !dbg !4310

for.body33:                                       ; preds = %for.cond29
  %mul34 = shl nuw nsw i32 %i.4, 3, !dbg !4311
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %t, i32 %mul34, !dbg !4313
  %call36 = call fastcc i64 @load64(ptr noundef nonnull %add.ptr35) #4, !dbg !4314
  %arrayidx37 = getelementptr inbounds nuw i64, ptr %s, i32 %i.4, !dbg !4315
  %5 = load i64, ptr %arrayidx37, align 8, !dbg !4316
  %xor38 = xor i64 %5, %call36, !dbg !4316
  store i64 %xor38, ptr %arrayidx37, align 8, !dbg !4316
  %inc40 = add nuw nsw i32 %i.4, 1, !dbg !4317
    #dbg_value(i32 %inc40, !4238, !DIExpression(), !4228)
  br label %for.cond29, !dbg !4318, !llvm.loop !4319

for.end41:                                        ; preds = %for.cond29
  ret void, !dbg !4321
}

; Function Attrs: nounwind
define internal fastcc i64 @load64(ptr noundef %x) unnamed_addr #0 !dbg !4322 {
entry:
    #dbg_value(ptr %x, !4325, !DIExpression(), !4326)
    #dbg_value(i64 0, !4327, !DIExpression(), !4326)
    #dbg_value(i32 0, !4328, !DIExpression(), !4330)
  br label %for.cond, !dbg !4331

for.cond:                                         ; preds = %for.inc, %entry
  %r.0 = phi i64 [ 0, %entry ], [ %or, %for.inc ], !dbg !4326
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !4332
    #dbg_value(i32 %i.0, !4328, !DIExpression(), !4330)
    #dbg_value(i64 %r.0, !4327, !DIExpression(), !4326)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4333
  br i1 %exitcond, label %for.inc, label %for.end, !dbg !4335

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 poison, i8 poison, i32 poison), !4327, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4326)
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4336
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4336
    #dbg_value(!DIArgList(i64 %r.0, i8 %0, i32 %i.0), !4327, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4326)
  %conv = zext i8 %0 to i64, !dbg !4338
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %i.0), !4327, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4326)
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4339
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %mul), !4327, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4326)
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4340
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i64 %sh_prom), !4327, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4326)
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !4340
    #dbg_value(!DIArgList(i64 %r.0, i64 %shl), !4327, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !4326)
  %or = or i64 %r.0, %shl, !dbg !4341
    #dbg_value(i64 %or, !4327, !DIExpression(), !4326)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4342
    #dbg_value(i32 %inc, !4328, !DIExpression(), !4330)
  br label %for.cond, !dbg !4343, !llvm.loop !4344

for.end:                                          ; preds = %for.cond
  %r.0.lcssa = phi i64 [ %r.0, %for.cond ], !dbg !4326
  ret i64 %r.0.lcssa, !dbg !4346
}

; Function Attrs: nounwind
define dso_local void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4347 {
entry:
    #dbg_value(ptr %output, !4350, !DIExpression(), !4351)
    #dbg_value(i32 %nblocks, !4352, !DIExpression(), !4351)
    #dbg_value(ptr %state, !4353, !DIExpression(), !4351)
  %0 = load ptr, ptr %state, align 4, !dbg !4354
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 168) #4, !dbg !4355
  ret void, !dbg !4356
}

; Function Attrs: nounwind
define internal fastcc void @keccak_squeezeblocks(ptr noundef %h, i32 noundef %nblocks, ptr noundef %s, i32 noundef range(i32 72, 169) %r) unnamed_addr #0 !dbg !4357 {
entry:
    #dbg_value(ptr %h, !4358, !DIExpression(), !4359)
    #dbg_value(i32 %nblocks, !4360, !DIExpression(), !4359)
    #dbg_value(ptr %s, !4361, !DIExpression(), !4359)
    #dbg_value(i32 %r, !4362, !DIExpression(), !4359)
  %0 = lshr i32 %r, 3, !dbg !4363
  br label %while.cond, !dbg !4363

while.cond:                                       ; preds = %for.end, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %dec, %for.end ]
  %h.addr.0 = phi ptr [ %h, %entry ], [ %add.ptr2, %for.end ]
    #dbg_value(ptr %h.addr.0, !4358, !DIExpression(), !4359)
    #dbg_value(i32 %nblocks.addr.0, !4360, !DIExpression(), !4359)
  %cmp.not = icmp eq i32 %nblocks.addr.0, 0, !dbg !4364
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !4363

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !4365
    #dbg_value(i32 0, !4367, !DIExpression(), !4369)
  br label %for.cond, !dbg !4370

for.cond:                                         ; preds = %for.body, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc, %for.body ], !dbg !4371
    #dbg_value(i32 %i.0, !4367, !DIExpression(), !4369)
  %exitcond = icmp ne i32 %i.0, %0, !dbg !4372
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4374

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4375
  %add.ptr = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %mul, !dbg !4377
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4378
  %1 = load i64, ptr %arrayidx, align 8, !dbg !4378
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %1) #4, !dbg !4379
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4380
    #dbg_value(i32 %inc, !4367, !DIExpression(), !4369)
  br label %for.cond, !dbg !4381, !llvm.loop !4382

for.end:                                          ; preds = %for.cond
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %r, !dbg !4384
    #dbg_value(ptr %add.ptr2, !4358, !DIExpression(), !4359)
  %dec = add i32 %nblocks.addr.0, -1, !dbg !4385
    #dbg_value(i32 %dec, !4360, !DIExpression(), !4359)
  br label %while.cond, !dbg !4363, !llvm.loop !4386

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4388
}

; Function Attrs: nounwind
define internal fastcc void @store64(ptr noundef %x, i64 noundef %u) unnamed_addr #0 !dbg !4389 {
entry:
    #dbg_value(ptr %x, !4392, !DIExpression(), !4393)
    #dbg_value(i64 %u, !4394, !DIExpression(), !4393)
    #dbg_value(i32 0, !4395, !DIExpression(), !4397)
  br label %for.cond, !dbg !4398

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4399
    #dbg_value(i32 %i.0, !4395, !DIExpression(), !4397)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4400
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4402

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4403
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4405
  %shr = lshr i64 %u, %sh_prom, !dbg !4405
  %conv = trunc i64 %shr to i8, !dbg !4406
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4407
  store i8 %conv, ptr %arrayidx, align 1, !dbg !4408
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4409
    #dbg_value(i32 %inc, !4395, !DIExpression(), !4397)
  br label %for.cond, !dbg !4410, !llvm.loop !4411

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4413
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4414 {
entry:
    #dbg_value(ptr %dest, !4419, !DIExpression(), !4420)
    #dbg_value(ptr %src, !4421, !DIExpression(), !4420)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4422
  store ptr %call, ptr %dest, align 4, !dbg !4423
  %cmp = icmp eq ptr %call, null, !dbg !4424
  br i1 %cmp, label %if.then, label %if.end, !dbg !4424

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4426
  br label %if.end, !dbg !4428

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4429
  %1 = load ptr, ptr %src, align 4, !dbg !4430
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #6, !dbg !4431
  ret void, !dbg !4432
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4433 {
entry:
    #dbg_value(ptr %state, !4436, !DIExpression(), !4437)
  %0 = load ptr, ptr %state, align 4, !dbg !4438
  call void @free(ptr noundef %0) #6, !dbg !4439
  ret void, !dbg !4440
}

; Function Attrs: nounwind
define dso_local void @shake256_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4441 {
entry:
    #dbg_value(ptr %state, !4449, !DIExpression(), !4450)
    #dbg_value(ptr %input, !4451, !DIExpression(), !4450)
    #dbg_value(i32 %inlen, !4452, !DIExpression(), !4450)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4453
  store ptr %call, ptr %state, align 4, !dbg !4454
  %cmp = icmp eq ptr %call, null, !dbg !4455
  br i1 %cmp, label %if.then, label %if.end, !dbg !4455

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4457
  br label %if.end, !dbg !4459

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4460
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !4461
  ret void, !dbg !4462
}

; Function Attrs: nounwind
define dso_local void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4463 {
entry:
    #dbg_value(ptr %output, !4466, !DIExpression(), !4467)
    #dbg_value(i32 %nblocks, !4468, !DIExpression(), !4467)
    #dbg_value(ptr %state, !4469, !DIExpression(), !4467)
  %0 = load ptr, ptr %state, align 4, !dbg !4470
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 136) #4, !dbg !4471
  ret void, !dbg !4472
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4473 {
entry:
    #dbg_value(ptr %dest, !4478, !DIExpression(), !4479)
    #dbg_value(ptr %src, !4480, !DIExpression(), !4479)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4481
  store ptr %call, ptr %dest, align 4, !dbg !4482
  %cmp = icmp eq ptr %call, null, !dbg !4483
  br i1 %cmp, label %if.then, label %if.end, !dbg !4483

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4485
  br label %if.end, !dbg !4487

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4488
  %1 = load ptr, ptr %src, align 4, !dbg !4489
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #6, !dbg !4490
  ret void, !dbg !4491
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4492 {
entry:
    #dbg_value(ptr %state, !4495, !DIExpression(), !4496)
  %0 = load ptr, ptr %state, align 4, !dbg !4497
  call void @free(ptr noundef %0) #6, !dbg !4498
  ret void, !dbg !4499
}

; Function Attrs: nounwind
define dso_local void @shake128(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4500 {
entry:
  %t = alloca [168 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4503, !DIExpression(), !4504)
    #dbg_value(i32 %outlen, !4505, !DIExpression(), !4504)
    #dbg_value(ptr %input, !4506, !DIExpression(), !4504)
    #dbg_value(i32 %inlen, !4507, !DIExpression(), !4504)
  %div = udiv i32 %outlen, 168, !dbg !4508
    #dbg_value(i32 %div, !4509, !DIExpression(), !4504)
    #dbg_declare(ptr %t, !4510, !DIExpression(), !4514)
    #dbg_declare(ptr %s, !4515, !DIExpression(), !4516)
  call void @shake128_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4517
  call void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #4, !dbg !4518
  %mul = mul nuw i32 %div, 168, !dbg !4519
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4520
    #dbg_value(ptr %add.ptr, !4503, !DIExpression(), !4504)
  %mul1.neg = mul i32 %div, -168, !dbg !4521
  %sub = add i32 %mul1.neg, %outlen, !dbg !4522
    #dbg_value(i32 %sub, !4505, !DIExpression(), !4504)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4523
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4523

if.then:                                          ; preds = %entry
  call void @shake128_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #4, !dbg !4525
    #dbg_value(i32 0, !4527, !DIExpression(), !4529)
  br label %for.cond, !dbg !4530

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4531
    #dbg_value(i32 %i.0, !4527, !DIExpression(), !4529)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4532
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4534

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [168 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4535
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4535
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4537
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4538
  %inc = add i32 %i.0, 1, !dbg !4539
    #dbg_value(i32 %inc, !4527, !DIExpression(), !4529)
  br label %for.cond, !dbg !4540, !llvm.loop !4541

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4543

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake128_ctx_release(ptr noundef nonnull %s) #4, !dbg !4543
  ret void, !dbg !4544
}

; Function Attrs: nounwind
define dso_local void @shake256(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4545 {
entry:
  %t = alloca [136 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4546, !DIExpression(), !4547)
    #dbg_value(i32 %outlen, !4548, !DIExpression(), !4547)
    #dbg_value(ptr %input, !4549, !DIExpression(), !4547)
    #dbg_value(i32 %inlen, !4550, !DIExpression(), !4547)
  %div = udiv i32 %outlen, 136, !dbg !4551
    #dbg_value(i32 %div, !4552, !DIExpression(), !4547)
    #dbg_declare(ptr %t, !4553, !DIExpression(), !4557)
    #dbg_declare(ptr %s, !4558, !DIExpression(), !4559)
  call void @shake256_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4560
  call void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #4, !dbg !4561
  %mul = mul nuw i32 %div, 136, !dbg !4562
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4563
    #dbg_value(ptr %add.ptr, !4546, !DIExpression(), !4547)
  %mul1.neg = mul i32 %div, -136, !dbg !4564
  %sub = add i32 %mul1.neg, %outlen, !dbg !4565
    #dbg_value(i32 %sub, !4548, !DIExpression(), !4547)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4566
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4566

if.then:                                          ; preds = %entry
  call void @shake256_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #4, !dbg !4568
    #dbg_value(i32 0, !4570, !DIExpression(), !4572)
  br label %for.cond, !dbg !4573

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4574
    #dbg_value(i32 %i.0, !4570, !DIExpression(), !4572)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4575
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4577

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4578
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4578
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4580
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4581
  %inc = add i32 %i.0, 1, !dbg !4582
    #dbg_value(i32 %inc, !4570, !DIExpression(), !4572)
  br label %for.cond, !dbg !4583, !llvm.loop !4584

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4586

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake256_ctx_release(ptr noundef nonnull %s) #4, !dbg !4586
  ret void, !dbg !4587
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4588 {
entry:
    #dbg_value(ptr %state, !4596, !DIExpression(), !4597)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4598
  store ptr %call, ptr %state, align 4, !dbg !4599
  %cmp = icmp eq ptr %call, null, !dbg !4600
  br i1 %cmp, label %if.then, label %if.end, !dbg !4600

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4602
  br label %if.end, !dbg !4604

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4605
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4606
  ret void, !dbg !4607
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4608 {
entry:
    #dbg_value(ptr %dest, !4613, !DIExpression(), !4614)
    #dbg_value(ptr %src, !4615, !DIExpression(), !4614)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4616
  store ptr %call, ptr %dest, align 4, !dbg !4617
  %cmp = icmp eq ptr %call, null, !dbg !4618
  br i1 %cmp, label %if.then, label %if.end, !dbg !4618

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4620
  br label %if.end, !dbg !4622

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4623
  %1 = load ptr, ptr %src, align 4, !dbg !4624
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4625
  ret void, !dbg !4626
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4627 {
entry:
    #dbg_value(ptr %state, !4628, !DIExpression(), !4629)
  %0 = load ptr, ptr %state, align 4, !dbg !4630
  call void @free(ptr noundef %0) #6, !dbg !4631
  ret void, !dbg !4632
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4633 {
entry:
    #dbg_value(ptr %state, !4636, !DIExpression(), !4637)
    #dbg_value(ptr %input, !4638, !DIExpression(), !4637)
    #dbg_value(i32 %inlen, !4639, !DIExpression(), !4637)
  %0 = load ptr, ptr %state, align 4, !dbg !4640
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4641
  ret void, !dbg !4642
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4643 {
entry:
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4646, !DIExpression(), !4647)
    #dbg_value(ptr %state, !4648, !DIExpression(), !4647)
    #dbg_declare(ptr %t, !4649, !DIExpression(), !4650)
  %0 = load ptr, ptr %state, align 4, !dbg !4651
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 6) #4, !dbg !4652
  %1 = load ptr, ptr %state, align 4, !dbg !4653
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 136) #4, !dbg !4654
  call void @sha3_256_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4655
    #dbg_value(i32 0, !4656, !DIExpression(), !4658)
  br label %for.cond, !dbg !4659

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4660
    #dbg_value(i32 %i.0, !4656, !DIExpression(), !4658)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4661
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4663

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4664
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4664
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4666
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4667
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4668
    #dbg_value(i32 %inc, !4656, !DIExpression(), !4658)
  br label %for.cond, !dbg !4669, !llvm.loop !4670

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4672
}

; Function Attrs: nounwind
define dso_local void @sha3_256(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4673 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4676, !DIExpression(), !4677)
    #dbg_value(ptr %input, !4678, !DIExpression(), !4677)
    #dbg_value(i32 %inlen, !4679, !DIExpression(), !4677)
    #dbg_declare(ptr %s, !4680, !DIExpression(), !4684)
    #dbg_declare(ptr %t, !4685, !DIExpression(), !4686)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4687
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 136) #4, !dbg !4688
    #dbg_value(i32 0, !4689, !DIExpression(), !4691)
  br label %for.cond, !dbg !4692

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4693
    #dbg_value(i32 %i.0, !4689, !DIExpression(), !4691)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4694
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4696

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4697
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4697
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4699
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4700
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4701
    #dbg_value(i32 %inc, !4689, !DIExpression(), !4691)
  br label %for.cond, !dbg !4702, !llvm.loop !4703

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4705
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4706 {
entry:
    #dbg_value(ptr %state, !4714, !DIExpression(), !4715)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4716
  store ptr %call, ptr %state, align 4, !dbg !4717
  %cmp = icmp eq ptr %call, null, !dbg !4718
  br i1 %cmp, label %if.then, label %if.end, !dbg !4718

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4720
  br label %if.end, !dbg !4722

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4723
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4724
  ret void, !dbg !4725
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4726 {
entry:
    #dbg_value(ptr %dest, !4731, !DIExpression(), !4732)
    #dbg_value(ptr %src, !4733, !DIExpression(), !4732)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4734
  store ptr %call, ptr %dest, align 4, !dbg !4735
  %cmp = icmp eq ptr %call, null, !dbg !4736
  br i1 %cmp, label %if.then, label %if.end, !dbg !4736

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4738
  br label %if.end, !dbg !4740

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4741
  %1 = load ptr, ptr %src, align 4, !dbg !4742
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4743
  ret void, !dbg !4744
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4745 {
entry:
    #dbg_value(ptr %state, !4748, !DIExpression(), !4749)
    #dbg_value(ptr %input, !4750, !DIExpression(), !4749)
    #dbg_value(i32 %inlen, !4751, !DIExpression(), !4749)
  %0 = load ptr, ptr %state, align 4, !dbg !4752
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 104, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4753
  ret void, !dbg !4754
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4755 {
entry:
    #dbg_value(ptr %state, !4756, !DIExpression(), !4757)
  %0 = load ptr, ptr %state, align 4, !dbg !4758
  call void @free(ptr noundef %0) #6, !dbg !4759
  ret void, !dbg !4760
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4761 {
entry:
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4764, !DIExpression(), !4765)
    #dbg_value(ptr %state, !4766, !DIExpression(), !4765)
    #dbg_declare(ptr %t, !4767, !DIExpression(), !4771)
  %0 = load ptr, ptr %state, align 4, !dbg !4772
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 104, i8 noundef zeroext 6) #4, !dbg !4773
  %1 = load ptr, ptr %state, align 4, !dbg !4774
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 104) #4, !dbg !4775
  call void @sha3_384_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4776
    #dbg_value(i32 0, !4777, !DIExpression(), !4779)
  br label %for.cond, !dbg !4780

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4781
    #dbg_value(i32 %i.0, !4777, !DIExpression(), !4779)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4782
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4784

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4785
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4785
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4787
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4788
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4789
    #dbg_value(i32 %inc, !4777, !DIExpression(), !4779)
  br label %for.cond, !dbg !4790, !llvm.loop !4791

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4793
}

; Function Attrs: nounwind
define dso_local void @sha3_384(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4794 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4795, !DIExpression(), !4796)
    #dbg_value(ptr %input, !4797, !DIExpression(), !4796)
    #dbg_value(i32 %inlen, !4798, !DIExpression(), !4796)
    #dbg_declare(ptr %s, !4799, !DIExpression(), !4800)
    #dbg_declare(ptr %t, !4801, !DIExpression(), !4802)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 104, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4803
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 104) #4, !dbg !4804
    #dbg_value(i32 0, !4805, !DIExpression(), !4807)
  br label %for.cond, !dbg !4808

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4809
    #dbg_value(i32 %i.0, !4805, !DIExpression(), !4807)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4810
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4812

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4813
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4813
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4815
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4816
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4817
    #dbg_value(i32 %inc, !4805, !DIExpression(), !4807)
  br label %for.cond, !dbg !4818, !llvm.loop !4819

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4821
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4822 {
entry:
    #dbg_value(ptr %state, !4830, !DIExpression(), !4831)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4832
  store ptr %call, ptr %state, align 4, !dbg !4833
  %cmp = icmp eq ptr %call, null, !dbg !4834
  br i1 %cmp, label %if.then, label %if.end, !dbg !4834

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4836
  br label %if.end, !dbg !4838

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4839
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4840
  ret void, !dbg !4841
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4842 {
entry:
    #dbg_value(ptr %dest, !4847, !DIExpression(), !4848)
    #dbg_value(ptr %src, !4849, !DIExpression(), !4848)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4850
  store ptr %call, ptr %dest, align 4, !dbg !4851
  %cmp = icmp eq ptr %call, null, !dbg !4852
  br i1 %cmp, label %if.then, label %if.end, !dbg !4852

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4854
  br label %if.end, !dbg !4856

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4857
  %1 = load ptr, ptr %src, align 4, !dbg !4858
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4859
  ret void, !dbg !4860
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4861 {
entry:
    #dbg_value(ptr %state, !4864, !DIExpression(), !4865)
    #dbg_value(ptr %input, !4866, !DIExpression(), !4865)
    #dbg_value(i32 %inlen, !4867, !DIExpression(), !4865)
  %0 = load ptr, ptr %state, align 4, !dbg !4868
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 72, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4869
  ret void, !dbg !4870
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4871 {
entry:
    #dbg_value(ptr %state, !4872, !DIExpression(), !4873)
  %0 = load ptr, ptr %state, align 4, !dbg !4874
  call void @free(ptr noundef %0) #6, !dbg !4875
  ret void, !dbg !4876
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4877 {
entry:
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4880, !DIExpression(), !4881)
    #dbg_value(ptr %state, !4882, !DIExpression(), !4881)
    #dbg_declare(ptr %t, !4883, !DIExpression(), !4887)
  %0 = load ptr, ptr %state, align 4, !dbg !4888
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 72, i8 noundef zeroext 6) #4, !dbg !4889
  %1 = load ptr, ptr %state, align 4, !dbg !4890
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 72) #4, !dbg !4891
  call void @sha3_512_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4892
    #dbg_value(i32 0, !4893, !DIExpression(), !4895)
  br label %for.cond, !dbg !4896

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4897
    #dbg_value(i32 %i.0, !4893, !DIExpression(), !4895)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4898
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4900

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4901
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4901
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4903
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4904
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4905
    #dbg_value(i32 %inc, !4893, !DIExpression(), !4895)
  br label %for.cond, !dbg !4906, !llvm.loop !4907

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4909
}

; Function Attrs: nounwind
define dso_local void @sha3_512(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4910 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4911, !DIExpression(), !4912)
    #dbg_value(ptr %input, !4913, !DIExpression(), !4912)
    #dbg_value(i32 %inlen, !4914, !DIExpression(), !4912)
    #dbg_declare(ptr %s, !4915, !DIExpression(), !4916)
    #dbg_declare(ptr %t, !4917, !DIExpression(), !4918)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 72, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4919
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 72) #4, !dbg !4920
    #dbg_value(i32 0, !4921, !DIExpression(), !4923)
  br label %for.cond, !dbg !4924

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4925
    #dbg_value(i32 %i.0, !4921, !DIExpression(), !4923)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4926
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4928

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4929
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4929
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4931
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4932
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4933
    #dbg_value(i32 %inc, !4921, !DIExpression(), !4923)
  br label %for.cond, !dbg !4934, !llvm.loop !4935

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4937
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !4938 {
entry:
  %skey = alloca [22 x i64], align 8
    #dbg_value(ptr %r, !4946, !DIExpression(), !4947)
    #dbg_value(ptr %key, !4948, !DIExpression(), !4947)
    #dbg_declare(ptr %skey, !4949, !DIExpression(), !4953)
  %call = call dereferenceable_or_null(704) ptr @malloc(i32 noundef 704) #7, !dbg !4954
  store ptr %call, ptr %r, align 4, !dbg !4955
  %cmp = icmp eq ptr %call, null, !dbg !4956
  br i1 %cmp, label %if.then, label %if.end, !dbg !4956

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4958
  br label %if.end, !dbg !4960

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 16) #4, !dbg !4961
  %0 = load ptr, ptr %r, align 4, !dbg !4962
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 10) #4, !dbg !4963
  ret void, !dbg !4964
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %comp_skey, ptr noundef %key, i32 noundef range(i32 16, 33) %key_len) unnamed_addr #0 !dbg !4965 {
entry:
  %skey = alloca [60 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %comp_skey, !4968, !DIExpression(), !4969)
    #dbg_value(ptr %key, !4970, !DIExpression(), !4969)
    #dbg_value(i32 %key_len, !4971, !DIExpression(), !4969)
    #dbg_declare(ptr %skey, !4972, !DIExpression(), !4976)
  %0 = and i32 %key_len, 60, !dbg !4977
    #dbg_value(i32 %key_len, !4978, !DIExpression(DW_OP_constu, 16, DW_OP_minus, DW_OP_constu, 2, DW_OP_shr, DW_OP_plus_uconst, 10, DW_OP_stack_value), !4969)
  %shr1 = lshr i32 %key_len, 2, !dbg !4979
    #dbg_value(i32 %shr1, !4980, !DIExpression(), !4969)
  %shl = add nuw nsw i32 %0, 28, !dbg !4977
    #dbg_value(i32 %shl, !4981, !DIExpression(), !4969)
  %shr3 = lshr i32 %key_len, 2, !dbg !4982
  call fastcc void @br_range_dec32le(ptr noundef nonnull %skey, i32 noundef %shr3, ptr noundef %key) #4, !dbg !4983
  %shr4 = lshr i32 %key_len, 2, !dbg !4984
  %sub5 = add nsw i32 %shr4, -1, !dbg !4985
  %arrayidx = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub5, !dbg !4986
  %1 = load i32, ptr %arrayidx, align 4, !dbg !4986
    #dbg_value(i32 %1, !4987, !DIExpression(), !4969)
    #dbg_value(i32 %shr1, !4988, !DIExpression(), !4969)
    #dbg_value(i32 0, !4989, !DIExpression(), !4969)
    #dbg_value(i32 0, !4990, !DIExpression(), !4969)
  br label %for.cond, !dbg !4991

for.cond:                                         ; preds = %if.end16, %entry
  %i.0 = phi i32 [ %shr1, %entry ], [ %inc26, %if.end16 ], !dbg !4993
  %j.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end16 ], !dbg !4994
  %k.0 = phi i32 [ 0, %entry ], [ %spec.select1, %if.end16 ], !dbg !4994
  %tmp.0 = phi i32 [ %1, %entry ], [ %xor19, %if.end16 ], !dbg !4969
    #dbg_value(i32 %tmp.0, !4987, !DIExpression(), !4969)
    #dbg_value(i32 %k.0, !4990, !DIExpression(), !4969)
    #dbg_value(i32 %j.0, !4989, !DIExpression(), !4969)
    #dbg_value(i32 %i.0, !4988, !DIExpression(), !4969)
  %exitcond = icmp ne i32 %i.0, %shl, !dbg !4995
  br i1 %exitcond, label %for.body, label %for.cond27.preheader, !dbg !4997

for.cond27.preheader:                             ; preds = %for.cond
  br label %for.cond27, !dbg !4998

for.body:                                         ; preds = %for.cond
  %cmp6 = icmp eq i32 %j.0, 0, !dbg !5000
  br i1 %cmp6, label %if.then, label %if.else, !dbg !5000

if.then:                                          ; preds = %for.body
  %2 = shl i32 %tmp.0, 24, !dbg !5003
  %3 = lshr i32 %tmp.0, 8, !dbg !5003
  %4 = or i32 %2, %3, !dbg !5003
    #dbg_value(i32 %4, !4987, !DIExpression(), !4969)
  %call = call fastcc i32 @sub_word(i32 noundef %4) #4, !dbg !5005
  %arrayidx9 = getelementptr inbounds nuw [10 x i8], ptr @Rcon, i32 0, i32 %k.0, !dbg !5006
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !5006
  %conv = zext i8 %5 to i32, !dbg !5006
  %xor = xor i32 %call, %conv, !dbg !5007
    #dbg_value(i32 %xor, !4987, !DIExpression(), !4969)
  br label %if.end16, !dbg !5008

if.else:                                          ; preds = %for.body
  %cmp10 = icmp samesign ugt i32 %key_len, 27, !dbg !5009
  %cmp12 = icmp eq i32 %j.0, 4
  %or.cond = and i1 %cmp10, %cmp12, !dbg !5011
  br i1 %or.cond, label %if.then14, label %if.end16, !dbg !5011

if.then14:                                        ; preds = %if.else
  %call15 = call fastcc i32 @sub_word(i32 noundef %tmp.0) #4, !dbg !5012
    #dbg_value(i32 %call15, !4987, !DIExpression(), !4969)
  br label %if.end16, !dbg !5014

if.end16:                                         ; preds = %if.else, %if.then14, %if.then
  %tmp.2 = phi i32 [ %xor, %if.then ], [ %call15, %if.then14 ], [ %tmp.0, %if.else ], !dbg !5015
    #dbg_value(i32 %tmp.2, !4987, !DIExpression(), !4969)
  %sub17 = sub nuw nsw i32 %i.0, %shr1, !dbg !5016
  %arrayidx18 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub17, !dbg !5017
  %6 = load i32, ptr %arrayidx18, align 4, !dbg !5017
  %xor19 = xor i32 %tmp.2, %6, !dbg !5018
    #dbg_value(i32 %xor19, !4987, !DIExpression(), !4969)
  %arrayidx20 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %i.0, !dbg !5019
  store i32 %xor19, ptr %arrayidx20, align 4, !dbg !5020
  %inc = add i32 %j.0, 1, !dbg !5021
    #dbg_value(i32 %inc, !4989, !DIExpression(), !4969)
  %cmp21 = icmp eq i32 %inc, %shr1, !dbg !5023
  %spec.select = select i1 %cmp21, i32 0, i32 %inc, !dbg !5023
  %inc24 = zext i1 %cmp21 to i32, !dbg !5023
  %spec.select1 = add i32 %k.0, %inc24, !dbg !5023
    #dbg_value(i32 %spec.select1, !4990, !DIExpression(), !4969)
    #dbg_value(i32 %spec.select, !4989, !DIExpression(), !4969)
  %inc26 = add nuw nsw i32 %i.0, 1, !dbg !5024
    #dbg_value(i32 %inc26, !4988, !DIExpression(), !4969)
  br label %for.cond, !dbg !5025, !llvm.loop !5026

for.cond27:                                       ; preds = %for.cond27.preheader, %for.body30
  %i.1 = phi i32 [ %add73, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !5028
  %j.2 = phi i32 [ %add74, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !5028
    #dbg_value(i32 %j.2, !4989, !DIExpression(), !4969)
    #dbg_value(i32 %i.1, !4988, !DIExpression(), !4969)
  %cmp28 = icmp samesign ult i32 %i.1, %shl, !dbg !5029
  br i1 %cmp28, label %for.body30, label %for.end75, !dbg !4998

for.body30:                                       ; preds = %for.cond27
    #dbg_declare(ptr %q, !5031, !DIExpression(), !5036)
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5037
  %add.ptr = getelementptr inbounds nuw i32, ptr %skey, i32 %i.1, !dbg !5038
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q, ptr noundef nonnull %arrayidx32, ptr noundef nonnull %add.ptr) #4, !dbg !5039
  %7 = load i64, ptr %q, align 8, !dbg !5040
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5041
  store i64 %7, ptr %arrayidx35, align 8, !dbg !5042
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5043
  store i64 %7, ptr %arrayidx37, align 8, !dbg !5044
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5045
  store i64 %7, ptr %arrayidx39, align 8, !dbg !5046
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5047
  %8 = load i64, ptr %arrayidx40, align 8, !dbg !5047
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5048
  store i64 %8, ptr %arrayidx41, align 8, !dbg !5049
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5050
  store i64 %8, ptr %arrayidx43, align 8, !dbg !5051
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5052
  store i64 %8, ptr %arrayidx45, align 8, !dbg !5053
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5054
  %9 = load i64, ptr %q, align 8, !dbg !5055
  %and = and i64 %9, 1229782938247303441, !dbg !5056
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5057
  %10 = load i64, ptr %arrayidx48, align 8, !dbg !5057
  %and49 = and i64 %10, 2459565876494606882, !dbg !5058
  %or50 = or disjoint i64 %and, %and49, !dbg !5059
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5060
  %11 = load i64, ptr %arrayidx51, align 8, !dbg !5060
  %and52 = and i64 %11, 4919131752989213764, !dbg !5061
  %or53 = or disjoint i64 %or50, %and52, !dbg !5062
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5063
  %12 = load i64, ptr %arrayidx54, align 8, !dbg !5063
  %and55 = and i64 %12, -8608480567731124088, !dbg !5064
  %or56 = or disjoint i64 %or53, %and55, !dbg !5065
  %arrayidx58 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %j.2, !dbg !5066
  store i64 %or56, ptr %arrayidx58, align 8, !dbg !5067
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5068
  %13 = load i64, ptr %arrayidx59, align 8, !dbg !5068
  %and60 = and i64 %13, 1229782938247303441, !dbg !5069
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5070
  %14 = load i64, ptr %arrayidx61, align 8, !dbg !5070
  %and62 = and i64 %14, 2459565876494606882, !dbg !5071
  %or63 = or disjoint i64 %and60, %and62, !dbg !5072
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5073
  %15 = load i64, ptr %arrayidx64, align 8, !dbg !5073
  %and65 = and i64 %15, 4919131752989213764, !dbg !5074
  %or66 = or disjoint i64 %or63, %and65, !dbg !5075
  %arrayidx67 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5076
  %16 = load i64, ptr %arrayidx67, align 8, !dbg !5076
  %and68 = and i64 %16, -8608480567731124088, !dbg !5077
  %or69 = or disjoint i64 %or66, %and68, !dbg !5078
  %add70 = or disjoint i32 %j.2, 1, !dbg !5079
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %add70, !dbg !5080
  store i64 %or69, ptr %arrayidx71, align 8, !dbg !5081
  %add73 = add nuw nsw i32 %i.1, 4, !dbg !5082
    #dbg_value(i32 %add73, !4988, !DIExpression(), !4969)
  %add74 = add nuw nsw i32 %j.2, 2, !dbg !5083
    #dbg_value(i32 %add74, !4989, !DIExpression(), !4969)
  br label %for.cond27, !dbg !5084, !llvm.loop !5085

for.end75:                                        ; preds = %for.cond27
  ret void, !dbg !5087
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_skey_expand(ptr noundef %skey, ptr noundef nonnull %comp_skey, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5088 {
entry:
    #dbg_value(ptr %skey, !5091, !DIExpression(), !5092)
    #dbg_value(ptr %comp_skey, !5093, !DIExpression(), !5092)
    #dbg_value(i32 %nrounds, !5094, !DIExpression(), !5092)
  %add = shl nuw nsw i32 %nrounds, 1, !dbg !5095
  %shl = add nuw nsw i32 %add, 2, !dbg !5095
    #dbg_value(i32 %shl, !5096, !DIExpression(), !5092)
    #dbg_value(i32 0, !5097, !DIExpression(), !5092)
    #dbg_value(i32 0, !5098, !DIExpression(), !5092)
  br label %for.cond, !dbg !5099

for.cond:                                         ; preds = %for.body, %entry
  %u.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5101
  %v.0 = phi i32 [ 0, %entry ], [ %add21, %for.body ], !dbg !5101
    #dbg_value(i32 %v.0, !5098, !DIExpression(), !5092)
    #dbg_value(i32 %u.0, !5097, !DIExpression(), !5092)
  %exitcond = icmp ne i32 %u.0, %shl, !dbg !5102
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5104

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %u.0, !dbg !5105
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5105
    #dbg_value(i64 %0, !5107, !DIExpression(), !5108)
    #dbg_value(i64 %0, !5109, !DIExpression(), !5108)
    #dbg_value(i64 %0, !5110, !DIExpression(), !5108)
    #dbg_value(i64 %0, !5111, !DIExpression(), !5108)
  %and = and i64 %0, 1229782938247303441, !dbg !5112
    #dbg_value(i64 %and, !5111, !DIExpression(), !5108)
    #dbg_value(i64 %0, !5110, !DIExpression(DW_OP_constu, 2459565876494606882, DW_OP_and, DW_OP_stack_value), !5108)
    #dbg_value(i64 %0, !5109, !DIExpression(DW_OP_constu, 4919131752989213764, DW_OP_and, DW_OP_stack_value), !5108)
    #dbg_value(i64 %0, !5107, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !5108)
  %and1 = lshr i64 %0, 1, !dbg !5113
  %shr = and i64 %and1, 1229782938247303441, !dbg !5113
    #dbg_value(i64 %shr, !5110, !DIExpression(), !5108)
  %and2 = lshr i64 %0, 2, !dbg !5114
  %shr4 = and i64 %and2, 1229782938247303441, !dbg !5114
    #dbg_value(i64 %shr4, !5109, !DIExpression(), !5108)
  %and3 = lshr i64 %0, 3, !dbg !5115
  %shr5 = and i64 %and3, 1229782938247303441, !dbg !5115
    #dbg_value(i64 %shr5, !5107, !DIExpression(), !5108)
  %sub = mul nuw i64 %and, 15, !dbg !5116
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %skey, i32 %v.0, !dbg !5117
  store i64 %sub, ptr %arrayidx8, align 8, !dbg !5118
  %sub10 = mul nuw i64 %shr, 15, !dbg !5119
  %add11 = or disjoint i32 %v.0, 1, !dbg !5120
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %skey, i32 %add11, !dbg !5121
  store i64 %sub10, ptr %arrayidx12, align 8, !dbg !5122
  %sub14 = mul nuw i64 %shr4, 15, !dbg !5123
  %add15 = or disjoint i32 %v.0, 2, !dbg !5124
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %skey, i32 %add15, !dbg !5125
  store i64 %sub14, ptr %arrayidx16, align 8, !dbg !5126
  %sub18 = mul nuw i64 %shr5, 15, !dbg !5127
  %add19 = or disjoint i32 %v.0, 3, !dbg !5128
  %arrayidx20 = getelementptr inbounds nuw i64, ptr %skey, i32 %add19, !dbg !5129
  store i64 %sub18, ptr %arrayidx20, align 8, !dbg !5130
  %inc = add nuw nsw i32 %u.0, 1, !dbg !5131
    #dbg_value(i32 %inc, !5097, !DIExpression(), !5092)
  %add21 = add nuw nsw i32 %v.0, 4, !dbg !5132
    #dbg_value(i32 %add21, !5098, !DIExpression(), !5092)
  br label %for.cond, !dbg !5133, !llvm.loop !5134

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5136
}

; Function Attrs: nounwind
define internal fastcc void @br_range_dec32le(ptr noundef nonnull %v, i32 noundef range(i32 3, 17) %num, ptr noundef %src) unnamed_addr #0 !dbg !5137 {
entry:
    #dbg_value(ptr %v, !5141, !DIExpression(), !5142)
    #dbg_value(i32 %num, !5143, !DIExpression(), !5142)
    #dbg_value(ptr %src, !5144, !DIExpression(), !5142)
  br label %while.cond, !dbg !5145

while.cond:                                       ; preds = %while.body, %entry
  %src.addr.0 = phi ptr [ %src, %entry ], [ %add.ptr, %while.body ]
  %num.addr.0 = phi i32 [ %num, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
    #dbg_value(ptr %v.addr.0, !5141, !DIExpression(), !5142)
    #dbg_value(i32 %num.addr.0, !5143, !DIExpression(), !5142)
    #dbg_value(ptr %src.addr.0, !5144, !DIExpression(), !5142)
    #dbg_value(i32 %num.addr.0, !5143, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5142)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5146
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5145

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5147
    #dbg_value(i32 %dec, !5143, !DIExpression(), !5142)
  %call = call fastcc i32 @br_dec32le(ptr noundef %src.addr.0) #4, !dbg !5148
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5150
    #dbg_value(ptr %incdec.ptr, !5141, !DIExpression(), !5142)
  store i32 %call, ptr %v.addr.0, align 4, !dbg !5151
  %add.ptr = getelementptr inbounds nuw i8, ptr %src.addr.0, i32 4, !dbg !5152
    #dbg_value(ptr %add.ptr, !5144, !DIExpression(), !5142)
  br label %while.cond, !dbg !5145, !llvm.loop !5153

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5155
}

; Function Attrs: nounwind
define internal fastcc i32 @sub_word(i32 noundef %x) unnamed_addr #0 !dbg !5156 {
entry:
  %q = alloca [8 x i64], align 8
    #dbg_value(i32 %x, !5159, !DIExpression(), !5160)
    #dbg_declare(ptr %q, !5161, !DIExpression(), !5162)
  %call = call ptr @memset(ptr noundef nonnull %q, i32 noundef 0, i32 noundef 64) #6, !dbg !5163
  %conv = zext i32 %x to i64, !dbg !5164
  store i64 %conv, ptr %q, align 8, !dbg !5165
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5166
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5167
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5168
  %0 = load i64, ptr %q, align 8, !dbg !5169
  %conv5 = trunc i64 %0 to i32, !dbg !5170
  ret i32 %conv5, !dbg !5171
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q0, ptr noundef nonnull %q1, ptr noundef nonnull %w) unnamed_addr #0 !dbg !5172 {
entry:
    #dbg_value(ptr %q0, !5177, !DIExpression(), !5178)
    #dbg_value(ptr %q1, !5179, !DIExpression(), !5178)
    #dbg_value(ptr %w, !5180, !DIExpression(), !5178)
  %0 = load i32, ptr %w, align 4, !dbg !5181
  %conv = zext i32 %0 to i64, !dbg !5181
    #dbg_value(i64 %conv, !5182, !DIExpression(), !5178)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5183
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !5183
  %conv2 = zext i32 %1 to i64, !dbg !5183
    #dbg_value(i64 %conv2, !5184, !DIExpression(), !5178)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5185
  %2 = load i32, ptr %arrayidx3, align 4, !dbg !5185
  %conv4 = zext i32 %2 to i64, !dbg !5185
    #dbg_value(i64 %conv4, !5186, !DIExpression(), !5178)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5187
  %3 = load i32, ptr %arrayidx5, align 4, !dbg !5187
  %conv6 = zext i32 %3 to i64, !dbg !5187
    #dbg_value(i64 %conv6, !5188, !DIExpression(), !5178)
  %shl = shl nuw nsw i64 %conv, 16, !dbg !5189
  %or = or i64 %shl, %conv, !dbg !5190
    #dbg_value(i64 %or, !5182, !DIExpression(), !5178)
  %shl7 = shl nuw nsw i64 %conv2, 16, !dbg !5191
  %or8 = or i64 %shl7, %conv2, !dbg !5192
    #dbg_value(i64 %or8, !5184, !DIExpression(), !5178)
  %shl9 = shl nuw nsw i64 %conv4, 16, !dbg !5193
  %or10 = or i64 %shl9, %conv4, !dbg !5194
    #dbg_value(i64 %or10, !5186, !DIExpression(), !5178)
  %shl11 = shl nuw nsw i64 %conv6, 16, !dbg !5195
  %or12 = or i64 %shl11, %conv6, !dbg !5196
    #dbg_value(i64 %or12, !5188, !DIExpression(), !5178)
  %and = and i64 %or, 281470681808895, !dbg !5197
    #dbg_value(i64 %and, !5182, !DIExpression(), !5178)
  %and13 = and i64 %or8, 281470681808895, !dbg !5198
    #dbg_value(i64 %and13, !5184, !DIExpression(), !5178)
  %and14 = and i64 %or10, 281470681808895, !dbg !5199
    #dbg_value(i64 %and14, !5186, !DIExpression(), !5178)
  %and15 = and i64 %or12, 281470681808895, !dbg !5200
    #dbg_value(i64 %and15, !5188, !DIExpression(), !5178)
  %shl16 = shl nuw nsw i64 %and, 8, !dbg !5201
  %or17 = or i64 %and, %shl16, !dbg !5202
    #dbg_value(i64 %or17, !5182, !DIExpression(), !5178)
  %shl18 = shl nuw nsw i64 %and13, 8, !dbg !5203
  %or19 = or i64 %and13, %shl18, !dbg !5204
    #dbg_value(i64 %or19, !5184, !DIExpression(), !5178)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5186, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5178)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5188, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5178)
  %and24 = and i64 %or17, 71777214294589695, !dbg !5205
    #dbg_value(i64 %and24, !5182, !DIExpression(), !5178)
  %and25 = and i64 %or19, 71777214294589695, !dbg !5206
    #dbg_value(i64 %and25, !5184, !DIExpression(), !5178)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5186, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5178)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5188, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5178)
  %4 = shl nuw i64 %and14, 16, !dbg !5207
  %5 = shl nuw nsw i64 %and14, 8, !dbg !5207
  %and26 = or i64 %4, %5, !dbg !5207
  %shl28 = and i64 %and26, -71777214294589696, !dbg !5207
  %or29 = or disjoint i64 %and24, %shl28, !dbg !5208
  store i64 %or29, ptr %q0, align 8, !dbg !5209
  %6 = shl nuw i64 %and15, 16, !dbg !5210
  %7 = shl nuw nsw i64 %and15, 8, !dbg !5210
  %and27 = or i64 %6, %7, !dbg !5210
  %shl30 = and i64 %and27, -71777214294589696, !dbg !5210
  %or31 = or disjoint i64 %and25, %shl30, !dbg !5211
  store i64 %or31, ptr %q1, align 8, !dbg !5212
  ret void, !dbg !5213
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5214 {
entry:
    #dbg_value(ptr %q, !5215, !DIExpression(), !5216)
  %0 = load i64, ptr %q, align 8, !dbg !5217
    #dbg_value(i64 %0, !5219, !DIExpression(), !5220)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5217
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5217
    #dbg_value(i64 %1, !5221, !DIExpression(), !5220)
  %and = and i64 %0, 6148914691236517205, !dbg !5217
  %and2 = shl i64 %1, 1, !dbg !5217
  %shl = and i64 %and2, -6148914691236517206, !dbg !5217
  %or = or disjoint i64 %and, %shl, !dbg !5217
  store i64 %or, ptr %q, align 8, !dbg !5217
  %and4 = lshr i64 %0, 1, !dbg !5217
  %shr = and i64 %and4, 6148914691236517205, !dbg !5217
  %and5 = and i64 %1, -6148914691236517206, !dbg !5217
  %or6 = or disjoint i64 %shr, %and5, !dbg !5217
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5217
  store i64 %or6, ptr %arrayidx7, align 8, !dbg !5217
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5222
  %2 = load i64, ptr %arrayidx11, align 8, !dbg !5222
    #dbg_value(i64 %2, !5224, !DIExpression(), !5225)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5222
  %3 = load i64, ptr %arrayidx12, align 8, !dbg !5222
    #dbg_value(i64 %3, !5226, !DIExpression(), !5225)
  %and13 = and i64 %2, 6148914691236517205, !dbg !5222
  %and14 = shl i64 %3, 1, !dbg !5222
  %shl15 = and i64 %and14, -6148914691236517206, !dbg !5222
  %or16 = or disjoint i64 %and13, %shl15, !dbg !5222
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5222
  store i64 %or16, ptr %arrayidx17, align 8, !dbg !5222
  %and18 = lshr i64 %2, 1, !dbg !5222
  %shr19 = and i64 %and18, 6148914691236517205, !dbg !5222
  %and20 = and i64 %3, -6148914691236517206, !dbg !5222
  %or21 = or disjoint i64 %shr19, %and20, !dbg !5222
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5222
  store i64 %or21, ptr %arrayidx22, align 8, !dbg !5222
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5227
  %4 = load i64, ptr %arrayidx27, align 8, !dbg !5227
    #dbg_value(i64 %4, !5229, !DIExpression(), !5230)
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5227
  %5 = load i64, ptr %arrayidx28, align 8, !dbg !5227
    #dbg_value(i64 %5, !5231, !DIExpression(), !5230)
  %and29 = and i64 %4, 6148914691236517205, !dbg !5227
  %and30 = shl i64 %5, 1, !dbg !5227
  %shl31 = and i64 %and30, -6148914691236517206, !dbg !5227
  %or32 = or disjoint i64 %and29, %shl31, !dbg !5227
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5227
  store i64 %or32, ptr %arrayidx33, align 8, !dbg !5227
  %and34 = lshr i64 %4, 1, !dbg !5227
  %shr35 = and i64 %and34, 6148914691236517205, !dbg !5227
  %and36 = and i64 %5, -6148914691236517206, !dbg !5227
  %or37 = or disjoint i64 %shr35, %and36, !dbg !5227
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5227
  store i64 %or37, ptr %arrayidx38, align 8, !dbg !5227
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5232
  %6 = load i64, ptr %arrayidx43, align 8, !dbg !5232
    #dbg_value(i64 %6, !5234, !DIExpression(), !5235)
  %arrayidx44 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5232
  %7 = load i64, ptr %arrayidx44, align 8, !dbg !5232
    #dbg_value(i64 %7, !5236, !DIExpression(), !5235)
  %and45 = and i64 %6, 6148914691236517205, !dbg !5232
  %and46 = shl i64 %7, 1, !dbg !5232
  %shl47 = and i64 %and46, -6148914691236517206, !dbg !5232
  %or48 = or disjoint i64 %and45, %shl47, !dbg !5232
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5232
  store i64 %or48, ptr %arrayidx49, align 8, !dbg !5232
  %and50 = lshr i64 %6, 1, !dbg !5232
  %shr51 = and i64 %and50, 6148914691236517205, !dbg !5232
  %and52 = and i64 %7, -6148914691236517206, !dbg !5232
  %or53 = or disjoint i64 %shr51, %and52, !dbg !5232
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5232
  store i64 %or53, ptr %arrayidx54, align 8, !dbg !5232
  %8 = load i64, ptr %q, align 8, !dbg !5237
    #dbg_value(i64 %8, !5239, !DIExpression(), !5240)
  %arrayidx60 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5237
  %9 = load i64, ptr %arrayidx60, align 8, !dbg !5237
    #dbg_value(i64 %9, !5241, !DIExpression(), !5240)
  %and61 = and i64 %8, 3689348814741910323, !dbg !5237
  %and62 = shl i64 %9, 2, !dbg !5237
  %shl63 = and i64 %and62, -3689348814741910324, !dbg !5237
  %or64 = or disjoint i64 %and61, %shl63, !dbg !5237
  store i64 %or64, ptr %q, align 8, !dbg !5237
  %and66 = lshr i64 %8, 2, !dbg !5237
  %shr67 = and i64 %and66, 3689348814741910323, !dbg !5237
  %and68 = and i64 %9, -3689348814741910324, !dbg !5237
  %or69 = or disjoint i64 %shr67, %and68, !dbg !5237
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5237
  store i64 %or69, ptr %arrayidx70, align 8, !dbg !5237
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5242
  %10 = load i64, ptr %arrayidx75, align 8, !dbg !5242
    #dbg_value(i64 %10, !5244, !DIExpression(), !5245)
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5242
  %11 = load i64, ptr %arrayidx76, align 8, !dbg !5242
    #dbg_value(i64 %11, !5246, !DIExpression(), !5245)
  %and77 = and i64 %10, 3689348814741910323, !dbg !5242
  %and78 = shl i64 %11, 2, !dbg !5242
  %shl79 = and i64 %and78, -3689348814741910324, !dbg !5242
  %or80 = or disjoint i64 %and77, %shl79, !dbg !5242
  %arrayidx81 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5242
  store i64 %or80, ptr %arrayidx81, align 8, !dbg !5242
  %and82 = lshr i64 %10, 2, !dbg !5242
  %shr83 = and i64 %and82, 3689348814741910323, !dbg !5242
  %and84 = and i64 %11, -3689348814741910324, !dbg !5242
  %or85 = or disjoint i64 %shr83, %and84, !dbg !5242
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5242
  store i64 %or85, ptr %arrayidx86, align 8, !dbg !5242
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5247
  %12 = load i64, ptr %arrayidx91, align 8, !dbg !5247
    #dbg_value(i64 %12, !5249, !DIExpression(), !5250)
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5247
  %13 = load i64, ptr %arrayidx92, align 8, !dbg !5247
    #dbg_value(i64 %13, !5251, !DIExpression(), !5250)
  %and93 = and i64 %12, 3689348814741910323, !dbg !5247
  %and94 = shl i64 %13, 2, !dbg !5247
  %shl95 = and i64 %and94, -3689348814741910324, !dbg !5247
  %or96 = or disjoint i64 %and93, %shl95, !dbg !5247
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5247
  store i64 %or96, ptr %arrayidx97, align 8, !dbg !5247
  %and98 = lshr i64 %12, 2, !dbg !5247
  %shr99 = and i64 %and98, 3689348814741910323, !dbg !5247
  %and100 = and i64 %13, -3689348814741910324, !dbg !5247
  %or101 = or disjoint i64 %shr99, %and100, !dbg !5247
  %arrayidx102 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5247
  store i64 %or101, ptr %arrayidx102, align 8, !dbg !5247
  %arrayidx107 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5252
  %14 = load i64, ptr %arrayidx107, align 8, !dbg !5252
    #dbg_value(i64 %14, !5254, !DIExpression(), !5255)
  %arrayidx108 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5252
  %15 = load i64, ptr %arrayidx108, align 8, !dbg !5252
    #dbg_value(i64 %15, !5256, !DIExpression(), !5255)
  %and109 = and i64 %14, 3689348814741910323, !dbg !5252
  %and110 = shl i64 %15, 2, !dbg !5252
  %shl111 = and i64 %and110, -3689348814741910324, !dbg !5252
  %or112 = or disjoint i64 %and109, %shl111, !dbg !5252
  %arrayidx113 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5252
  store i64 %or112, ptr %arrayidx113, align 8, !dbg !5252
  %and114 = lshr i64 %14, 2, !dbg !5252
  %shr115 = and i64 %and114, 3689348814741910323, !dbg !5252
  %and116 = and i64 %15, -3689348814741910324, !dbg !5252
  %or117 = or disjoint i64 %shr115, %and116, !dbg !5252
  %arrayidx118 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5252
  store i64 %or117, ptr %arrayidx118, align 8, !dbg !5252
  %16 = load i64, ptr %q, align 8, !dbg !5257
    #dbg_value(i64 %16, !5259, !DIExpression(), !5260)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5257
  %17 = load i64, ptr %arrayidx124, align 8, !dbg !5257
    #dbg_value(i64 %17, !5261, !DIExpression(), !5260)
  %and125 = and i64 %16, 1085102592571150095, !dbg !5257
  %and126 = shl i64 %17, 4, !dbg !5257
  %shl127 = and i64 %and126, -1085102592571150096, !dbg !5257
  %or128 = or disjoint i64 %and125, %shl127, !dbg !5257
  store i64 %or128, ptr %q, align 8, !dbg !5257
  %and130 = lshr i64 %16, 4, !dbg !5257
  %shr131 = and i64 %and130, 1085102592571150095, !dbg !5257
  %and132 = and i64 %17, -1085102592571150096, !dbg !5257
  %or133 = or disjoint i64 %shr131, %and132, !dbg !5257
  %arrayidx134 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5257
  store i64 %or133, ptr %arrayidx134, align 8, !dbg !5257
  %arrayidx139 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5262
  %18 = load i64, ptr %arrayidx139, align 8, !dbg !5262
    #dbg_value(i64 %18, !5264, !DIExpression(), !5265)
  %arrayidx140 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5262
  %19 = load i64, ptr %arrayidx140, align 8, !dbg !5262
    #dbg_value(i64 %19, !5266, !DIExpression(), !5265)
  %and141 = and i64 %18, 1085102592571150095, !dbg !5262
  %and142 = shl i64 %19, 4, !dbg !5262
  %shl143 = and i64 %and142, -1085102592571150096, !dbg !5262
  %or144 = or disjoint i64 %and141, %shl143, !dbg !5262
  %arrayidx145 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5262
  store i64 %or144, ptr %arrayidx145, align 8, !dbg !5262
  %and146 = lshr i64 %18, 4, !dbg !5262
  %shr147 = and i64 %and146, 1085102592571150095, !dbg !5262
  %and148 = and i64 %19, -1085102592571150096, !dbg !5262
  %or149 = or disjoint i64 %shr147, %and148, !dbg !5262
  %arrayidx150 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5262
  store i64 %or149, ptr %arrayidx150, align 8, !dbg !5262
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5267
  %20 = load i64, ptr %arrayidx155, align 8, !dbg !5267
    #dbg_value(i64 %20, !5269, !DIExpression(), !5270)
  %arrayidx156 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5267
  %21 = load i64, ptr %arrayidx156, align 8, !dbg !5267
    #dbg_value(i64 %21, !5271, !DIExpression(), !5270)
  %and157 = and i64 %20, 1085102592571150095, !dbg !5267
  %and158 = shl i64 %21, 4, !dbg !5267
  %shl159 = and i64 %and158, -1085102592571150096, !dbg !5267
  %or160 = or disjoint i64 %and157, %shl159, !dbg !5267
  %arrayidx161 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5267
  store i64 %or160, ptr %arrayidx161, align 8, !dbg !5267
  %and162 = lshr i64 %20, 4, !dbg !5267
  %shr163 = and i64 %and162, 1085102592571150095, !dbg !5267
  %and164 = and i64 %21, -1085102592571150096, !dbg !5267
  %or165 = or disjoint i64 %shr163, %and164, !dbg !5267
  %arrayidx166 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5267
  store i64 %or165, ptr %arrayidx166, align 8, !dbg !5267
  %arrayidx171 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5272
  %22 = load i64, ptr %arrayidx171, align 8, !dbg !5272
    #dbg_value(i64 %22, !5274, !DIExpression(), !5275)
  %arrayidx172 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5272
  %23 = load i64, ptr %arrayidx172, align 8, !dbg !5272
    #dbg_value(i64 %23, !5276, !DIExpression(), !5275)
  %and173 = and i64 %22, 1085102592571150095, !dbg !5272
  %and174 = shl i64 %23, 4, !dbg !5272
  %shl175 = and i64 %and174, -1085102592571150096, !dbg !5272
  %or176 = or disjoint i64 %and173, %shl175, !dbg !5272
  %arrayidx177 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5272
  store i64 %or176, ptr %arrayidx177, align 8, !dbg !5272
  %and178 = lshr i64 %22, 4, !dbg !5272
  %shr179 = and i64 %and178, 1085102592571150095, !dbg !5272
  %and180 = and i64 %23, -1085102592571150096, !dbg !5272
  %or181 = or disjoint i64 %shr179, %and180, !dbg !5272
  %arrayidx182 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5272
  store i64 %or181, ptr %arrayidx182, align 8, !dbg !5272
  ret void, !dbg !5277
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5278 {
entry:
    #dbg_value(ptr %q, !5279, !DIExpression(), !5280)
  %arrayidx = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5281
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5281
    #dbg_value(i64 %0, !5282, !DIExpression(), !5280)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5283
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5283
    #dbg_value(i64 %1, !5284, !DIExpression(), !5280)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5285
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5285
    #dbg_value(i64 %2, !5286, !DIExpression(), !5280)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5287
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5287
    #dbg_value(i64 %3, !5288, !DIExpression(), !5280)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5289
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5289
    #dbg_value(i64 %4, !5290, !DIExpression(), !5280)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5291
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5291
    #dbg_value(i64 %5, !5292, !DIExpression(), !5280)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5293
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5293
    #dbg_value(i64 %6, !5294, !DIExpression(), !5280)
  %7 = load i64, ptr %q, align 8, !dbg !5295
    #dbg_value(i64 %7, !5296, !DIExpression(), !5280)
  %xor = xor i64 %3, %5, !dbg !5297
    #dbg_value(i64 %xor, !5298, !DIExpression(), !5280)
  %xor8 = xor i64 %0, %6, !dbg !5299
    #dbg_value(i64 %xor8, !5300, !DIExpression(), !5280)
  %xor9 = xor i64 %0, %3, !dbg !5301
    #dbg_value(i64 %xor9, !5302, !DIExpression(), !5280)
  %xor10 = xor i64 %0, %5, !dbg !5303
    #dbg_value(i64 %xor10, !5304, !DIExpression(), !5280)
  %xor11 = xor i64 %1, %2, !dbg !5305
    #dbg_value(i64 %xor11, !5306, !DIExpression(), !5280)
  %xor12 = xor i64 %xor11, %7, !dbg !5307
    #dbg_value(i64 %xor12, !5308, !DIExpression(), !5280)
  %xor13 = xor i64 %xor12, %3, !dbg !5309
    #dbg_value(i64 %xor13, !5310, !DIExpression(), !5280)
  %xor14 = xor i64 %xor8, %xor, !dbg !5311
    #dbg_value(i64 %xor14, !5312, !DIExpression(), !5280)
  %xor15 = xor i64 %xor12, %0, !dbg !5313
    #dbg_value(i64 %xor15, !5314, !DIExpression(), !5280)
  %xor16 = xor i64 %xor12, %6, !dbg !5315
    #dbg_value(i64 %xor16, !5316, !DIExpression(), !5280)
  %xor17 = xor i64 %xor16, %xor10, !dbg !5317
    #dbg_value(i64 %xor17, !5318, !DIExpression(), !5280)
  %xor18 = xor i64 %4, %xor14, !dbg !5319
    #dbg_value(i64 %xor18, !5320, !DIExpression(), !5280)
  %xor19 = xor i64 %xor18, %5, !dbg !5321
    #dbg_value(i64 %xor19, !5322, !DIExpression(), !5280)
  %xor20 = xor i64 %xor18, %1, !dbg !5323
    #dbg_value(i64 %xor20, !5324, !DIExpression(), !5280)
  %xor21 = xor i64 %xor19, %7, !dbg !5325
    #dbg_value(i64 %xor21, !5326, !DIExpression(), !5280)
  %xor22 = xor i64 %xor19, %xor11, !dbg !5327
    #dbg_value(i64 %xor22, !5328, !DIExpression(), !5280)
  %xor23 = xor i64 %xor20, %xor9, !dbg !5329
    #dbg_value(i64 %xor23, !5330, !DIExpression(), !5280)
  %xor24 = xor i64 %7, %xor23, !dbg !5331
    #dbg_value(i64 %xor24, !5332, !DIExpression(), !5280)
  %xor25 = xor i64 %xor22, %xor23, !dbg !5333
    #dbg_value(i64 %xor25, !5334, !DIExpression(), !5280)
    #dbg_value(!DIArgList(i64 %xor22, i64 %xor10), !5335, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5280)
  %xor27 = xor i64 %xor11, %xor23, !dbg !5336
    #dbg_value(i64 %xor27, !5337, !DIExpression(), !5280)
    #dbg_value(!DIArgList(i64 %xor8, i64 %xor27), !5338, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5280)
    #dbg_value(!DIArgList(i64 %0, i64 %xor27), !5339, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5280)
  %and = and i64 %xor14, %xor19, !dbg !5340
    #dbg_value(i64 %and, !5341, !DIExpression(), !5280)
  %and30 = and i64 %xor17, %xor21, !dbg !5342
    #dbg_value(i64 %and30, !5343, !DIExpression(), !5280)
  %xor31 = xor i64 %and30, %and, !dbg !5344
    #dbg_value(i64 %xor31, !5345, !DIExpression(), !5280)
  %and32 = and i64 %xor13, %7, !dbg !5346
    #dbg_value(i64 %and32, !5347, !DIExpression(), !5280)
    #dbg_value(!DIArgList(i64 %and32, i64 %and), !5348, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5280)
  %and34 = and i64 %xor8, %xor27, !dbg !5349
    #dbg_value(i64 %and34, !5350, !DIExpression(), !5280)
  %and35 = and i64 %xor16, %xor12, !dbg !5351
    #dbg_value(i64 %and35, !5352, !DIExpression(), !5280)
    #dbg_value(!DIArgList(i64 %and35, i64 %and34), !5353, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5280)
  %and37 = and i64 %xor15, %xor24, !dbg !5354
    #dbg_value(i64 %and37, !5355, !DIExpression(), !5280)
    #dbg_value(!DIArgList(i64 %and37, i64 %and34), !5356, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5280)
  %and39 = and i64 %xor9, %xor23, !dbg !5357
    #dbg_value(i64 %and39, !5358, !DIExpression(), !5280)
  %and40 = and i64 %xor, %xor25, !dbg !5359
    #dbg_value(i64 %and40, !5360, !DIExpression(), !5280)
  %xor41 = xor i64 %and40, %and39, !dbg !5361
    #dbg_value(i64 %xor41, !5362, !DIExpression(), !5280)
  %and42 = and i64 %xor10, %xor22, !dbg !5363
    #dbg_value(i64 %and42, !5364, !DIExpression(), !5280)
  %xor43 = xor i64 %and42, %and39, !dbg !5365
    #dbg_value(i64 %xor43, !5366, !DIExpression(), !5280)
  %xor44 = xor i64 %xor31, %xor41, !dbg !5367
    #dbg_value(i64 %xor44, !5368, !DIExpression(), !5280)
    #dbg_value(!DIArgList(i64 %and32, i64 %xor43, i64 %and), !5369, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5280)
    #dbg_value(!DIArgList(i64 %and35, i64 %xor41, i64 %and34), !5370, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5280)
    #dbg_value(!DIArgList(i64 %and37, i64 %xor43, i64 %and34), !5371, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5280)
  %xor48 = xor i64 %xor44, %xor20, !dbg !5372
    #dbg_value(i64 %xor48, !5373, !DIExpression(), !5280)
  %8 = xor i64 %xor10, %and32, !dbg !5374
  %9 = xor i64 %8, %xor22, !dbg !5374
  %10 = xor i64 %9, %and, !dbg !5374
  %xor49 = xor i64 %10, %xor43, !dbg !5374
    #dbg_value(i64 %xor49, !5375, !DIExpression(), !5280)
  %11 = xor i64 %xor27, %and35, !dbg !5376
  %12 = xor i64 %11, %xor8, !dbg !5376
  %13 = xor i64 %12, %and34, !dbg !5376
  %xor50 = xor i64 %13, %xor41, !dbg !5376
    #dbg_value(i64 %xor50, !5377, !DIExpression(), !5280)
  %14 = xor i64 %xor27, %and37, !dbg !5378
  %15 = xor i64 %14, %0, !dbg !5378
  %16 = xor i64 %15, %and34, !dbg !5378
  %xor51 = xor i64 %16, %xor43, !dbg !5378
    #dbg_value(i64 %xor51, !5379, !DIExpression(), !5280)
  %xor52 = xor i64 %xor48, %xor49, !dbg !5380
    #dbg_value(i64 %xor52, !5381, !DIExpression(), !5280)
  %and53 = and i64 %xor48, %xor50, !dbg !5382
    #dbg_value(i64 %and53, !5383, !DIExpression(), !5280)
  %xor54 = xor i64 %xor51, %and53, !dbg !5384
    #dbg_value(i64 %xor54, !5385, !DIExpression(), !5280)
  %and55 = and i64 %xor52, %xor54, !dbg !5386
    #dbg_value(i64 %and55, !5387, !DIExpression(), !5280)
  %xor56 = xor i64 %and55, %xor49, !dbg !5388
    #dbg_value(i64 %xor56, !5389, !DIExpression(), !5280)
  %xor57 = xor i64 %xor50, %xor51, !dbg !5390
    #dbg_value(i64 %xor57, !5391, !DIExpression(), !5280)
  %xor58 = xor i64 %xor49, %and53, !dbg !5392
    #dbg_value(i64 %xor58, !5393, !DIExpression(), !5280)
  %and59 = and i64 %xor58, %xor57, !dbg !5394
    #dbg_value(i64 %and59, !5395, !DIExpression(), !5280)
  %xor60 = xor i64 %and59, %xor51, !dbg !5396
    #dbg_value(i64 %xor60, !5397, !DIExpression(), !5280)
  %xor61 = xor i64 %xor50, %xor60, !dbg !5398
    #dbg_value(i64 %xor61, !5399, !DIExpression(), !5280)
  %xor62 = xor i64 %and59, %and53, !dbg !5400
    #dbg_value(i64 %xor62, !5401, !DIExpression(), !5280)
  %and63 = and i64 %xor51, %xor62, !dbg !5402
    #dbg_value(i64 %and63, !5403, !DIExpression(), !5280)
  %xor64 = xor i64 %and63, %xor61, !dbg !5404
    #dbg_value(i64 %xor64, !5405, !DIExpression(), !5280)
  %xor65 = xor i64 %xor54, %and63, !dbg !5406
    #dbg_value(i64 %xor65, !5407, !DIExpression(), !5280)
  %and66 = and i64 %xor56, %xor65, !dbg !5408
    #dbg_value(i64 %and66, !5409, !DIExpression(), !5280)
  %xor67 = xor i64 %xor52, %and66, !dbg !5410
    #dbg_value(i64 %xor67, !5411, !DIExpression(), !5280)
  %xor68 = xor i64 %xor67, %xor64, !dbg !5412
    #dbg_value(i64 %xor68, !5413, !DIExpression(), !5280)
  %xor69 = xor i64 %xor56, %xor60, !dbg !5414
    #dbg_value(i64 %xor69, !5415, !DIExpression(), !5280)
  %xor70 = xor i64 %xor56, %xor67, !dbg !5416
    #dbg_value(i64 %xor70, !5417, !DIExpression(), !5280)
  %xor71 = xor i64 %and63, %xor50, !dbg !5418
    #dbg_value(i64 %xor71, !5419, !DIExpression(), !5280)
  %xor72 = xor i64 %xor69, %xor68, !dbg !5420
    #dbg_value(i64 %xor72, !5421, !DIExpression(), !5280)
  %and73 = and i64 %xor71, %xor19, !dbg !5422
    #dbg_value(i64 %and73, !5423, !DIExpression(), !5280)
  %and74 = and i64 %xor64, %xor21, !dbg !5424
    #dbg_value(i64 %and74, !5425, !DIExpression(), !5280)
  %and75 = and i64 %xor60, %7, !dbg !5426
    #dbg_value(i64 %and75, !5427, !DIExpression(), !5280)
  %and76 = and i64 %xor70, %xor27, !dbg !5428
    #dbg_value(i64 %and76, !5429, !DIExpression(), !5280)
  %and77 = and i64 %xor67, %xor12, !dbg !5430
    #dbg_value(i64 %and77, !5431, !DIExpression(), !5280)
  %and78 = and i64 %xor56, %xor24, !dbg !5432
    #dbg_value(i64 %and78, !5433, !DIExpression(), !5280)
  %and79 = and i64 %xor69, %xor23, !dbg !5434
    #dbg_value(i64 %and79, !5435, !DIExpression(), !5280)
  %and80 = and i64 %xor72, %xor25, !dbg !5436
    #dbg_value(i64 %and80, !5437, !DIExpression(), !5280)
  %and81 = and i64 %xor68, %xor22, !dbg !5438
    #dbg_value(i64 %and81, !5439, !DIExpression(), !5280)
  %and82 = and i64 %xor71, %xor14, !dbg !5440
    #dbg_value(i64 %and82, !5441, !DIExpression(), !5280)
  %and83 = and i64 %xor64, %xor17, !dbg !5442
    #dbg_value(i64 %and83, !5443, !DIExpression(), !5280)
  %and84 = and i64 %xor60, %xor13, !dbg !5444
    #dbg_value(i64 %and84, !5445, !DIExpression(), !5280)
  %and85 = and i64 %xor70, %xor8, !dbg !5446
    #dbg_value(i64 %and85, !5447, !DIExpression(), !5280)
  %and86 = and i64 %xor67, %xor16, !dbg !5448
    #dbg_value(i64 %and86, !5449, !DIExpression(), !5280)
  %and87 = and i64 %xor56, %xor15, !dbg !5450
    #dbg_value(i64 %and87, !5451, !DIExpression(), !5280)
  %and88 = and i64 %xor69, %xor9, !dbg !5452
    #dbg_value(i64 %and88, !5453, !DIExpression(), !5280)
  %and89 = and i64 %xor72, %xor, !dbg !5454
    #dbg_value(i64 %and89, !5455, !DIExpression(), !5280)
  %and90 = and i64 %xor68, %xor10, !dbg !5456
    #dbg_value(i64 %and90, !5457, !DIExpression(), !5280)
  %xor91 = xor i64 %and88, %and89, !dbg !5458
    #dbg_value(i64 %xor91, !5459, !DIExpression(), !5280)
  %xor92 = xor i64 %and83, %and84, !dbg !5460
    #dbg_value(i64 %xor92, !5461, !DIExpression(), !5280)
  %xor93 = xor i64 %and78, %and86, !dbg !5462
    #dbg_value(i64 %xor93, !5463, !DIExpression(), !5280)
  %xor94 = xor i64 %and82, %and83, !dbg !5464
    #dbg_value(i64 %xor94, !5465, !DIExpression(), !5280)
  %xor95 = xor i64 %and75, %and85, !dbg !5466
    #dbg_value(i64 %xor95, !5467, !DIExpression(), !5280)
  %xor96 = xor i64 %and75, %and78, !dbg !5468
    #dbg_value(i64 %xor96, !5469, !DIExpression(), !5280)
  %xor97 = xor i64 %and80, %and81, !dbg !5470
    #dbg_value(i64 %xor97, !5471, !DIExpression(), !5280)
  %xor98 = xor i64 %and73, %and76, !dbg !5472
    #dbg_value(i64 %xor98, !5473, !DIExpression(), !5280)
  %xor99 = xor i64 %and79, %and80, !dbg !5474
    #dbg_value(i64 %xor99, !5475, !DIExpression(), !5280)
  %xor100 = xor i64 %and89, %and90, !dbg !5476
    #dbg_value(i64 %xor100, !5477, !DIExpression(), !5280)
  %xor101 = xor i64 %and85, %xor93, !dbg !5478
    #dbg_value(i64 %xor101, !5479, !DIExpression(), !5280)
  %xor102 = xor i64 %xor95, %xor98, !dbg !5480
    #dbg_value(i64 %xor102, !5481, !DIExpression(), !5280)
  %xor103 = xor i64 %and77, %xor91, !dbg !5482
    #dbg_value(i64 %xor103, !5483, !DIExpression(), !5280)
  %xor104 = xor i64 %and76, %xor99, !dbg !5484
    #dbg_value(i64 %xor104, !5485, !DIExpression(), !5280)
  %xor105 = xor i64 %xor91, %xor102, !dbg !5486
    #dbg_value(i64 %xor105, !5487, !DIExpression(), !5280)
  %xor106 = xor i64 %and87, %xor102, !dbg !5488
    #dbg_value(i64 %xor106, !5489, !DIExpression(), !5280)
  %xor107 = xor i64 %xor97, %xor103, !dbg !5490
    #dbg_value(i64 %xor107, !5491, !DIExpression(), !5280)
  %xor108 = xor i64 %xor94, %xor103, !dbg !5492
    #dbg_value(i64 %xor108, !5493, !DIExpression(), !5280)
  %xor109 = xor i64 %and77, %xor104, !dbg !5494
    #dbg_value(i64 %xor109, !5495, !DIExpression(), !5280)
  %xor110 = xor i64 %xor106, %xor107, !dbg !5496
    #dbg_value(i64 %xor110, !5497, !DIExpression(), !5280)
  %xor111 = xor i64 %and74, %xor108, !dbg !5498
    #dbg_value(i64 %xor111, !5499, !DIExpression(), !5280)
  %xor112 = xor i64 %xor104, %xor108, !dbg !5500
    #dbg_value(i64 %xor112, !5501, !DIExpression(), !5280)
  %17 = xor i64 %xor107, %xor101, !dbg !5502
  %xor113 = xor i64 %17, -1, !dbg !5502
    #dbg_value(i64 %xor113, !5503, !DIExpression(), !5280)
  %18 = xor i64 %xor105, %xor93, !dbg !5504
  %xor115 = xor i64 %18, -1, !dbg !5504
    #dbg_value(i64 %xor115, !5505, !DIExpression(), !5280)
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor110), !5506, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5280)
  %xor117 = xor i64 %xor98, %xor111, !dbg !5507
    #dbg_value(i64 %xor117, !5508, !DIExpression(), !5280)
  %xor118 = xor i64 %xor96, %xor111, !dbg !5509
    #dbg_value(i64 %xor118, !5510, !DIExpression(), !5280)
  %xor119 = xor i64 %xor92, %xor110, !dbg !5511
    #dbg_value(i64 %xor119, !5512, !DIExpression(), !5280)
  %19 = xor i64 %xor117, %xor109, !dbg !5513
  %xor121 = xor i64 %19, -1, !dbg !5513
    #dbg_value(i64 %xor121, !5514, !DIExpression(), !5280)
  %20 = xor i64 %xor110, %xor100, !dbg !5515
  %21 = xor i64 %20, %xor109, !dbg !5515
  %xor123 = xor i64 %21, -1, !dbg !5515
    #dbg_value(i64 %xor123, !5516, !DIExpression(), !5280)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5517
  store i64 %xor112, ptr %arrayidx124, align 8, !dbg !5518
  %arrayidx125 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5519
  store i64 %xor121, ptr %arrayidx125, align 8, !dbg !5520
  %arrayidx126 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5521
  store i64 %xor123, ptr %arrayidx126, align 8, !dbg !5522
  %arrayidx127 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5523
  store i64 %xor117, ptr %arrayidx127, align 8, !dbg !5524
  %arrayidx128 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5525
  store i64 %xor118, ptr %arrayidx128, align 8, !dbg !5526
  %arrayidx129 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5527
  store i64 %xor119, ptr %arrayidx129, align 8, !dbg !5528
  %arrayidx130 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5529
  store i64 %xor113, ptr %arrayidx130, align 8, !dbg !5530
  store i64 %xor115, ptr %q, align 8, !dbg !5531
  ret void, !dbg !5532
}

; Function Attrs: nounwind
define internal fastcc i32 @br_dec32le(ptr noundef %src) unnamed_addr #0 !dbg !5533 {
entry:
    #dbg_value(ptr %src, !5536, !DIExpression(), !5537)
  %0 = load i8, ptr %src, align 1, !dbg !5538
  %conv = zext i8 %0 to i32, !dbg !5539
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %src, i32 1, !dbg !5540
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !5540
  %conv2 = zext i8 %1 to i32, !dbg !5541
  %shl = shl nuw nsw i32 %conv2, 8, !dbg !5542
  %or = or disjoint i32 %shl, %conv, !dbg !5543
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %src, i32 2, !dbg !5544
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !5544
  %conv4 = zext i8 %2 to i32, !dbg !5545
  %shl5 = shl nuw nsw i32 %conv4, 16, !dbg !5546
  %or6 = or disjoint i32 %or, %shl5, !dbg !5547
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %src, i32 3, !dbg !5548
  %3 = load i8, ptr %arrayidx7, align 1, !dbg !5548
  %conv8 = zext i8 %3 to i32, !dbg !5549
  %shl9 = shl nuw i32 %conv8, 24, !dbg !5550
  %or10 = or disjoint i32 %or6, %shl9, !dbg !5551
  ret i32 %or10, !dbg !5552
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5553 {
entry:
    #dbg_value(ptr %r, !5554, !DIExpression(), !5555)
    #dbg_value(ptr %key, !5556, !DIExpression(), !5555)
  call void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5557
  ret void, !dbg !5558
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5559 {
entry:
  %skey = alloca [26 x i64], align 8
    #dbg_value(ptr %r, !5567, !DIExpression(), !5568)
    #dbg_value(ptr %key, !5569, !DIExpression(), !5568)
    #dbg_declare(ptr %skey, !5570, !DIExpression(), !5574)
  %call = call dereferenceable_or_null(832) ptr @malloc(i32 noundef 832) #7, !dbg !5575
  store ptr %call, ptr %r, align 4, !dbg !5576
  %cmp = icmp eq ptr %call, null, !dbg !5577
  br i1 %cmp, label %if.then, label %if.end, !dbg !5577

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !5579
  br label %if.end, !dbg !5581

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 24) #4, !dbg !5582
  %0 = load ptr, ptr %r, align 4, !dbg !5583
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 12) #4, !dbg !5584
  ret void, !dbg !5585
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5586 {
entry:
    #dbg_value(ptr %r, !5587, !DIExpression(), !5588)
    #dbg_value(ptr %key, !5589, !DIExpression(), !5588)
  call void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5590
  ret void, !dbg !5591
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5592 {
entry:
  %skey = alloca [30 x i64], align 8
    #dbg_value(ptr %r, !5600, !DIExpression(), !5601)
    #dbg_value(ptr %key, !5602, !DIExpression(), !5601)
    #dbg_declare(ptr %skey, !5603, !DIExpression(), !5607)
  %call = call dereferenceable_or_null(960) ptr @malloc(i32 noundef 960) #7, !dbg !5608
  store ptr %call, ptr %r, align 4, !dbg !5609
  %cmp = icmp eq ptr %call, null, !dbg !5610
  br i1 %cmp, label %if.then, label %if.end, !dbg !5610

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !5612
  br label %if.end, !dbg !5614

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 32) #4, !dbg !5615
  %0 = load ptr, ptr %r, align 4, !dbg !5616
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 14) #4, !dbg !5617
  ret void, !dbg !5618
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5619 {
entry:
    #dbg_value(ptr %r, !5620, !DIExpression(), !5621)
    #dbg_value(ptr %key, !5622, !DIExpression(), !5621)
  call void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5623
  ret void, !dbg !5624
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5625 {
entry:
    #dbg_value(ptr %out, !5630, !DIExpression(), !5631)
    #dbg_value(ptr %in, !5632, !DIExpression(), !5631)
    #dbg_value(i32 %nblocks, !5633, !DIExpression(), !5631)
    #dbg_value(ptr %ctx, !5634, !DIExpression(), !5631)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5635
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 10) #4, !dbg !5636
  ret void, !dbg !5637
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5638 {
entry:
  %blocks = alloca [16 x i32], align 4
  %t = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5641, !DIExpression(), !5642)
    #dbg_value(ptr %in, !5643, !DIExpression(), !5642)
    #dbg_value(i32 %nblocks, !5644, !DIExpression(), !5642)
    #dbg_value(ptr %rkeys, !5645, !DIExpression(), !5642)
    #dbg_value(i32 %nrounds, !5646, !DIExpression(), !5642)
    #dbg_declare(ptr %blocks, !5647, !DIExpression(), !5649)
    #dbg_declare(ptr %t, !5650, !DIExpression(), !5654)
  br label %while.cond, !dbg !5655

while.cond:                                       ; preds = %while.body, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %sub, %while.body ]
  %in.addr.0 = phi ptr [ %in, %entry ], [ %add.ptr, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr2, %while.body ]
    #dbg_value(ptr %out.addr.0, !5641, !DIExpression(), !5642)
    #dbg_value(ptr %in.addr.0, !5643, !DIExpression(), !5642)
    #dbg_value(i32 %nblocks.addr.0, !5644, !DIExpression(), !5642)
  %cmp = icmp ugt i32 %nblocks.addr.0, 3, !dbg !5656
  br i1 %cmp, label %while.body, label %while.end, !dbg !5655

while.body:                                       ; preds = %while.cond
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef 16, ptr noundef %in.addr.0) #4, !dbg !5657
  call fastcc void @aes_ecb4x(ptr noundef %out.addr.0, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !5659
  %sub = add i32 %nblocks.addr.0, -4, !dbg !5660
    #dbg_value(i32 %sub, !5644, !DIExpression(), !5642)
  %add.ptr = getelementptr inbounds nuw i8, ptr %in.addr.0, i32 64, !dbg !5661
    #dbg_value(ptr %add.ptr, !5643, !DIExpression(), !5642)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !5662
    #dbg_value(ptr %add.ptr2, !5641, !DIExpression(), !5642)
  br label %while.cond, !dbg !5655, !llvm.loop !5663

while.end:                                        ; preds = %while.cond
  %nblocks.addr.0.lcssa = phi i32 [ %nblocks.addr.0, %while.cond ]
  %in.addr.0.lcssa = phi ptr [ %in.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %tobool.not = icmp eq i32 %nblocks.addr.0.lcssa, 0, !dbg !5665
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !5665

if.then:                                          ; preds = %while.end
  %mul = shl nuw nsw i32 %nblocks.addr.0.lcssa, 2, !dbg !5667
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef %mul, ptr noundef %in.addr.0.lcssa) #4, !dbg !5669
  call fastcc void @aes_ecb4x(ptr noundef nonnull %t, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !5670
  %mul7 = shl nuw nsw i32 %nblocks.addr.0.lcssa, 4, !dbg !5671
  %call = call ptr @memcpy(ptr noundef %out.addr.0.lcssa, ptr noundef nonnull %t, i32 noundef %mul7) #6, !dbg !5672
  br label %if.end, !dbg !5673

if.end:                                           ; preds = %if.then, %while.end
  ret void, !dbg !5674
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5675 {
entry:
  %w = alloca [16 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %out, !5678, !DIExpression(), !5679)
    #dbg_value(ptr %ivw, !5680, !DIExpression(), !5679)
    #dbg_value(ptr %sk_exp, !5681, !DIExpression(), !5679)
    #dbg_value(i32 %nrounds, !5682, !DIExpression(), !5679)
    #dbg_declare(ptr %w, !5683, !DIExpression(), !5684)
    #dbg_declare(ptr %q, !5685, !DIExpression(), !5686)
  %call = call ptr @memcpy(ptr noundef nonnull %w, ptr noundef nonnull %ivw, i32 noundef 64) #6, !dbg !5687
    #dbg_value(i32 0, !5688, !DIExpression(), !5679)
  br label %for.cond, !dbg !5689

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5691
    #dbg_value(i32 %i.0, !5688, !DIExpression(), !5679)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !5692
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5694

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.0, !dbg !5695
  %add = or disjoint i32 %i.0, 4, !dbg !5697
  %arrayidx1 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add, !dbg !5698
  %add.ptr.idx = shl nuw nsw i32 %i.0, 4, !dbg !5699
  %add.ptr = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr.idx, !dbg !5699
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx1, ptr noundef nonnull %add.ptr) #4, !dbg !5700
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5701
    #dbg_value(i32 %inc, !5688, !DIExpression(), !5679)
  br label %for.cond, !dbg !5702, !llvm.loop !5703

for.end:                                          ; preds = %for.cond
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5705
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk_exp) #4, !dbg !5706
    #dbg_value(i32 1, !5688, !DIExpression(), !5679)
  br label %for.cond5, !dbg !5707

for.cond5:                                        ; preds = %for.body7, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc15, %for.body7 ], !dbg !5709
    #dbg_value(i32 %i.1, !5688, !DIExpression(), !5679)
  %exitcond1 = icmp ne i32 %i.1, %nrounds, !dbg !5710
  br i1 %exitcond1, label %for.body7, label %for.end16, !dbg !5712

for.body7:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5713
  call fastcc void @shift_rows(ptr noundef nonnull %q) #4, !dbg !5715
  call fastcc void @mix_columns(ptr noundef nonnull %q) #4, !dbg !5716
  %add.ptr13.idx = shl nuw nsw i32 %i.1, 6, !dbg !5717
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr13.idx, !dbg !5717
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr13) #4, !dbg !5718
  %inc15 = add nuw nsw i32 %i.1, 1, !dbg !5719
    #dbg_value(i32 %inc15, !5688, !DIExpression(), !5679)
  br label %for.cond5, !dbg !5720, !llvm.loop !5721

for.end16:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5723
  call fastcc void @shift_rows(ptr noundef nonnull %q) #4, !dbg !5724
  %add.ptr20.idx = shl nuw nsw i32 %nrounds, 6, !dbg !5725
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr20.idx, !dbg !5725
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr20) #4, !dbg !5726
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5727
    #dbg_value(i32 0, !5688, !DIExpression(), !5679)
  br label %for.cond22, !dbg !5728

for.cond22:                                       ; preds = %for.body24, %for.end16
  %i.2 = phi i32 [ 0, %for.end16 ], [ %inc32, %for.body24 ], !dbg !5730
    #dbg_value(i32 %i.2, !5688, !DIExpression(), !5679)
  %exitcond2 = icmp ne i32 %i.2, 4, !dbg !5731
  br i1 %exitcond2, label %for.body24, label %for.end33, !dbg !5733

for.body24:                                       ; preds = %for.cond22
  %add.ptr27.idx = shl nuw nsw i32 %i.2, 4, !dbg !5734
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr27.idx, !dbg !5734
  %arrayidx28 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.2, !dbg !5736
  %0 = load i64, ptr %arrayidx28, align 8, !dbg !5736
  %add29 = or disjoint i32 %i.2, 4, !dbg !5737
  %arrayidx30 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add29, !dbg !5738
  %1 = load i64, ptr %arrayidx30, align 8, !dbg !5738
  call fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %add.ptr27, i64 noundef %0, i64 noundef %1) #4, !dbg !5739
  %inc32 = add nuw nsw i32 %i.2, 1, !dbg !5740
    #dbg_value(i32 %inc32, !5688, !DIExpression(), !5679)
  br label %for.cond22, !dbg !5741, !llvm.loop !5742

for.end33:                                        ; preds = %for.cond22
  call fastcc void @br_range_enc32le(ptr noundef %out, ptr noundef nonnull %w, i32 noundef 16) #4, !dbg !5744
  ret void, !dbg !5745
}

; Function Attrs: nounwind
define internal fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk) unnamed_addr #0 !dbg !5746 {
entry:
    #dbg_value(ptr %q, !5749, !DIExpression(), !5750)
    #dbg_value(ptr %sk, !5751, !DIExpression(), !5750)
  %0 = load i64, ptr %sk, align 8, !dbg !5752
  %1 = load i64, ptr %q, align 8, !dbg !5753
  %xor = xor i64 %1, %0, !dbg !5753
  store i64 %xor, ptr %q, align 8, !dbg !5753
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %sk, i32 8, !dbg !5754
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5754
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5755
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5756
  %xor4 = xor i64 %3, %2, !dbg !5756
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !5756
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %sk, i32 16, !dbg !5757
  %4 = load i64, ptr %arrayidx5, align 8, !dbg !5757
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5758
  %5 = load i64, ptr %arrayidx6, align 8, !dbg !5759
  %xor7 = xor i64 %5, %4, !dbg !5759
  store i64 %xor7, ptr %arrayidx6, align 8, !dbg !5759
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %sk, i32 24, !dbg !5760
  %6 = load i64, ptr %arrayidx8, align 8, !dbg !5760
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5761
  %7 = load i64, ptr %arrayidx9, align 8, !dbg !5762
  %xor10 = xor i64 %7, %6, !dbg !5762
  store i64 %xor10, ptr %arrayidx9, align 8, !dbg !5762
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %sk, i32 32, !dbg !5763
  %8 = load i64, ptr %arrayidx11, align 8, !dbg !5763
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5764
  %9 = load i64, ptr %arrayidx12, align 8, !dbg !5765
  %xor13 = xor i64 %9, %8, !dbg !5765
  store i64 %xor13, ptr %arrayidx12, align 8, !dbg !5765
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %sk, i32 40, !dbg !5766
  %10 = load i64, ptr %arrayidx14, align 8, !dbg !5766
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5767
  %11 = load i64, ptr %arrayidx15, align 8, !dbg !5768
  %xor16 = xor i64 %11, %10, !dbg !5768
  store i64 %xor16, ptr %arrayidx15, align 8, !dbg !5768
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %sk, i32 48, !dbg !5769
  %12 = load i64, ptr %arrayidx17, align 8, !dbg !5769
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5770
  %13 = load i64, ptr %arrayidx18, align 8, !dbg !5771
  %xor19 = xor i64 %13, %12, !dbg !5771
  store i64 %xor19, ptr %arrayidx18, align 8, !dbg !5771
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %sk, i32 56, !dbg !5772
  %14 = load i64, ptr %arrayidx20, align 8, !dbg !5772
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5773
  %15 = load i64, ptr %arrayidx21, align 8, !dbg !5774
  %xor22 = xor i64 %15, %14, !dbg !5774
  store i64 %xor22, ptr %arrayidx21, align 8, !dbg !5774
  ret void, !dbg !5775
}

; Function Attrs: nounwind
define internal fastcc void @shift_rows(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5776 {
entry:
    #dbg_value(ptr %q, !5777, !DIExpression(), !5778)
    #dbg_value(i32 0, !5779, !DIExpression(), !5778)
  br label %for.cond, !dbg !5780

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5782
    #dbg_value(i32 %i.0, !5779, !DIExpression(), !5778)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !5783
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5785

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5786
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5786
    #dbg_value(i64 %0, !5788, !DIExpression(), !5789)
  %and = and i64 %0, 65535, !dbg !5790
  %and1 = lshr i64 %0, 4, !dbg !5791
  %shr = and i64 %and1, 268369920, !dbg !5791
  %or = or disjoint i64 %and, %shr, !dbg !5792
  %and2 = shl i64 %0, 12, !dbg !5793
  %shl = and i64 %and2, 4026531840, !dbg !5793
  %or3 = or disjoint i64 %or, %shl, !dbg !5794
  %and4 = lshr i64 %0, 8, !dbg !5795
  %shr5 = and i64 %and4, 1095216660480, !dbg !5795
  %or6 = or disjoint i64 %or3, %shr5, !dbg !5796
  %and7 = shl i64 %0, 8, !dbg !5797
  %shl8 = and i64 %and7, 280375465082880, !dbg !5797
  %or9 = or disjoint i64 %or6, %shl8, !dbg !5798
  %and10 = lshr i64 %0, 12, !dbg !5799
  %shr11 = and i64 %and10, 4222124650659840, !dbg !5799
  %or12 = or disjoint i64 %or9, %shr11, !dbg !5800
  %and13 = shl i64 %0, 4, !dbg !5801
  %shl14 = and i64 %and13, -4503599627370496, !dbg !5801
  %or15 = or i64 %or12, %shl14, !dbg !5802
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5803
  store i64 %or15, ptr %arrayidx16, align 8, !dbg !5804
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5805
    #dbg_value(i32 %inc, !5779, !DIExpression(), !5778)
  br label %for.cond, !dbg !5806, !llvm.loop !5807

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5809
}

; Function Attrs: nounwind
define internal fastcc void @mix_columns(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5810 {
entry:
    #dbg_value(ptr %q, !5811, !DIExpression(), !5812)
  %0 = load i64, ptr %q, align 8, !dbg !5813
    #dbg_value(i64 %0, !5814, !DIExpression(), !5812)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5815
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5815
    #dbg_value(i64 %1, !5816, !DIExpression(), !5812)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5817
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5817
    #dbg_value(i64 %2, !5818, !DIExpression(), !5812)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5819
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5819
    #dbg_value(i64 %3, !5820, !DIExpression(), !5812)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5821
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5821
    #dbg_value(i64 %4, !5822, !DIExpression(), !5812)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5823
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5823
    #dbg_value(i64 %5, !5824, !DIExpression(), !5812)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5825
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5825
    #dbg_value(i64 %6, !5826, !DIExpression(), !5812)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5827
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !5827
    #dbg_value(i64 %7, !5828, !DIExpression(), !5812)
  %8 = shl i64 %0, 48, !dbg !5829
  %9 = lshr i64 %0, 16, !dbg !5829
  %10 = or i64 %8, %9, !dbg !5829
    #dbg_value(i64 %10, !5830, !DIExpression(), !5812)
  %11 = shl i64 %1, 48, !dbg !5831
  %12 = lshr i64 %1, 16, !dbg !5831
  %13 = or i64 %11, %12, !dbg !5831
    #dbg_value(i64 %13, !5832, !DIExpression(), !5812)
  %14 = shl i64 %2, 48, !dbg !5833
  %15 = lshr i64 %2, 16, !dbg !5833
  %16 = or i64 %14, %15, !dbg !5833
    #dbg_value(i64 %16, !5834, !DIExpression(), !5812)
  %17 = shl i64 %3, 48, !dbg !5835
  %18 = lshr i64 %3, 16, !dbg !5835
  %19 = or i64 %17, %18, !dbg !5835
    #dbg_value(i64 %19, !5836, !DIExpression(), !5812)
  %20 = shl i64 %4, 48, !dbg !5837
  %21 = lshr i64 %4, 16, !dbg !5837
  %22 = or i64 %20, %21, !dbg !5837
    #dbg_value(i64 %22, !5838, !DIExpression(), !5812)
  %23 = shl i64 %5, 48, !dbg !5839
  %24 = lshr i64 %5, 16, !dbg !5839
  %25 = or i64 %23, %24, !dbg !5839
    #dbg_value(i64 %25, !5840, !DIExpression(), !5812)
  %26 = shl i64 %6, 48, !dbg !5841
  %27 = lshr i64 %6, 16, !dbg !5841
  %28 = or i64 %26, %27, !dbg !5841
    #dbg_value(i64 %28, !5842, !DIExpression(), !5812)
  %29 = shl i64 %7, 48, !dbg !5843
  %30 = lshr i64 %7, 16, !dbg !5843
  %31 = or i64 %29, %30, !dbg !5843
    #dbg_value(i64 %31, !5844, !DIExpression(), !5812)
  %xor30 = xor i64 %0, %10, !dbg !5845
  %call = call fastcc i64 @rotr32(i64 noundef %xor30) #4, !dbg !5846
  %32 = xor i64 %31, %call, !dbg !5847
  %33 = xor i64 %32, %7, !dbg !5847
  %xor31 = xor i64 %33, %10, !dbg !5847
  store i64 %xor31, ptr %q, align 8, !dbg !5848
  %xor37 = xor i64 %1, %13, !dbg !5849
  %call38 = call fastcc i64 @rotr32(i64 noundef %xor37) #4, !dbg !5850
  %34 = xor i64 %10, %call38, !dbg !5851
  %35 = xor i64 %34, %0, !dbg !5851
  %36 = xor i64 %35, %7, !dbg !5851
  %37 = xor i64 %36, %31, !dbg !5851
  %xor39 = xor i64 %37, %13, !dbg !5851
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5852
  store i64 %xor39, ptr %arrayidx40, align 8, !dbg !5853
  %xor43 = xor i64 %2, %16, !dbg !5854
  %call44 = call fastcc i64 @rotr32(i64 noundef %xor43) #4, !dbg !5855
  %38 = xor i64 %13, %call44, !dbg !5856
  %39 = xor i64 %38, %1, !dbg !5856
  %xor45 = xor i64 %39, %16, !dbg !5856
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5857
  store i64 %xor45, ptr %arrayidx46, align 8, !dbg !5858
  %xor51 = xor i64 %3, %19, !dbg !5859
  %call52 = call fastcc i64 @rotr32(i64 noundef %xor51) #4, !dbg !5860
  %40 = xor i64 %16, %call52, !dbg !5861
  %41 = xor i64 %40, %2, !dbg !5861
  %42 = xor i64 %41, %7, !dbg !5861
  %43 = xor i64 %42, %31, !dbg !5861
  %xor53 = xor i64 %43, %19, !dbg !5861
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5862
  store i64 %xor53, ptr %arrayidx54, align 8, !dbg !5863
  %xor59 = xor i64 %4, %22, !dbg !5864
  %call60 = call fastcc i64 @rotr32(i64 noundef %xor59) #4, !dbg !5865
  %44 = xor i64 %19, %call60, !dbg !5866
  %45 = xor i64 %44, %3, !dbg !5866
  %46 = xor i64 %45, %7, !dbg !5866
  %47 = xor i64 %46, %31, !dbg !5866
  %xor61 = xor i64 %47, %22, !dbg !5866
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5867
  store i64 %xor61, ptr %arrayidx62, align 8, !dbg !5868
  %xor65 = xor i64 %5, %25, !dbg !5869
  %call66 = call fastcc i64 @rotr32(i64 noundef %xor65) #4, !dbg !5870
  %48 = xor i64 %22, %call66, !dbg !5871
  %49 = xor i64 %48, %4, !dbg !5871
  %xor67 = xor i64 %49, %25, !dbg !5871
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5872
  store i64 %xor67, ptr %arrayidx68, align 8, !dbg !5873
  %xor71 = xor i64 %6, %28, !dbg !5874
  %call72 = call fastcc i64 @rotr32(i64 noundef %xor71) #4, !dbg !5875
  %50 = xor i64 %25, %call72, !dbg !5876
  %51 = xor i64 %50, %5, !dbg !5876
  %xor73 = xor i64 %51, %28, !dbg !5876
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5877
  store i64 %xor73, ptr %arrayidx74, align 8, !dbg !5878
  %xor77 = xor i64 %7, %31, !dbg !5879
  %call78 = call fastcc i64 @rotr32(i64 noundef %xor77) #4, !dbg !5880
  %52 = xor i64 %28, %call78, !dbg !5881
  %53 = xor i64 %52, %6, !dbg !5881
  %xor79 = xor i64 %53, %31, !dbg !5881
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5882
  store i64 %xor79, ptr %arrayidx80, align 8, !dbg !5883
  ret void, !dbg !5884
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %w, i64 noundef %q0, i64 noundef %q1) unnamed_addr #0 !dbg !5885 {
entry:
    #dbg_value(ptr %w, !5888, !DIExpression(), !5889)
    #dbg_value(i64 %q0, !5890, !DIExpression(), !5889)
    #dbg_value(i64 %q1, !5891, !DIExpression(), !5889)
  %and = and i64 %q0, 71777214294589695, !dbg !5892
    #dbg_value(i64 %and, !5893, !DIExpression(), !5889)
  %and1 = and i64 %q1, 71777214294589695, !dbg !5894
    #dbg_value(i64 %and1, !5895, !DIExpression(), !5889)
  %shr = lshr i64 %q0, 8, !dbg !5896
  %and2 = and i64 %shr, 71776119077928960, !dbg !5897
    #dbg_value(i64 %shr, !5898, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5889)
  %shr3 = lshr i64 %q1, 8, !dbg !5899
  %and4 = and i64 %shr3, 71776119077928960, !dbg !5900
    #dbg_value(i64 %shr3, !5901, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5889)
  %shr5 = lshr i64 %and, 8, !dbg !5902
  %or = or disjoint i64 %and, %shr5, !dbg !5903
    #dbg_value(i64 %or, !5893, !DIExpression(), !5889)
  %shr6 = lshr i64 %and1, 8, !dbg !5904
  %or7 = or disjoint i64 %and1, %shr6, !dbg !5905
    #dbg_value(i64 %or7, !5895, !DIExpression(), !5889)
  %0 = and i64 %q0, 280375465148160, !dbg !5906
  %1 = or disjoint i64 %and2, %0, !dbg !5906
  %or9 = lshr exact i64 %1, 8, !dbg !5906
    #dbg_value(!DIArgList(i64 %and2, i64 %0), !5898, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5889)
  %2 = and i64 %q1, 280375465148160, !dbg !5907
  %3 = or disjoint i64 %and4, %2, !dbg !5907
  %or11 = lshr exact i64 %3, 8, !dbg !5907
    #dbg_value(!DIArgList(i64 %and4, i64 %2), !5901, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5889)
  %and12 = and i64 %or, 281470681808895, !dbg !5908
    #dbg_value(i64 %and12, !5893, !DIExpression(), !5889)
  %and13 = and i64 %or7, 281470681808895, !dbg !5909
    #dbg_value(i64 %and13, !5895, !DIExpression(), !5889)
    #dbg_value(i64 %or9, !5898, !DIExpression(), !5889)
    #dbg_value(i64 %or11, !5901, !DIExpression(), !5889)
  %shr16 = lshr i64 %and12, 16, !dbg !5910
  %or181 = or disjoint i64 %and12, %shr16, !dbg !5911
  %or18 = trunc i64 %or181 to i32, !dbg !5911
  store i32 %or18, ptr %w, align 4, !dbg !5912
  %shr20 = lshr i64 %and13, 16, !dbg !5913
  %or222 = or disjoint i64 %and13, %shr20, !dbg !5914
  %or22 = trunc i64 %or222 to i32, !dbg !5914
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5915
  store i32 %or22, ptr %arrayidx23, align 4, !dbg !5916
  %shr25 = lshr i64 %1, 24, !dbg !5917
  %or273 = or disjoint i64 %or9, %shr25, !dbg !5918
  %or27 = trunc i64 %or273 to i32, !dbg !5918
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5919
  store i32 %or27, ptr %arrayidx28, align 4, !dbg !5920
  %shr30 = lshr i64 %3, 24, !dbg !5921
  %or324 = or disjoint i64 %or11, %shr30, !dbg !5922
  %or32 = trunc i64 %or324 to i32, !dbg !5922
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5923
  store i32 %or32, ptr %arrayidx33, align 4, !dbg !5924
  ret void, !dbg !5925
}

; Function Attrs: nounwind
define internal fastcc void @br_range_enc32le(ptr noundef %dst, ptr noundef nonnull %v, i32 noundef %num) unnamed_addr #0 !dbg !5926 {
entry:
    #dbg_value(ptr %dst, !5929, !DIExpression(), !5930)
    #dbg_value(ptr %v, !5931, !DIExpression(), !5930)
    #dbg_value(i32 16, !5932, !DIExpression(), !5930)
  br label %while.cond, !dbg !5933

while.cond:                                       ; preds = %while.body, %entry
  %num.addr.0 = phi i32 [ 16, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
  %dst.addr.0 = phi ptr [ %dst, %entry ], [ %add.ptr, %while.body ]
    #dbg_value(ptr %dst.addr.0, !5929, !DIExpression(), !5930)
    #dbg_value(ptr %v.addr.0, !5931, !DIExpression(), !5930)
    #dbg_value(i32 %num.addr.0, !5932, !DIExpression(), !5930)
    #dbg_value(i32 %num.addr.0, !5932, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5930)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5934
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5933

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5935
    #dbg_value(i32 %dec, !5932, !DIExpression(), !5930)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5936
    #dbg_value(ptr %incdec.ptr, !5931, !DIExpression(), !5930)
  %0 = load i32, ptr %v.addr.0, align 4, !dbg !5938
  call fastcc void @br_enc32le(ptr noundef %dst.addr.0, i32 noundef %0) #4, !dbg !5939
  %add.ptr = getelementptr inbounds nuw i8, ptr %dst.addr.0, i32 4, !dbg !5940
    #dbg_value(ptr %add.ptr, !5929, !DIExpression(), !5930)
  br label %while.cond, !dbg !5933, !llvm.loop !5941

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5943
}

; Function Attrs: nounwind
define internal fastcc void @br_enc32le(ptr noundef %dst, i32 noundef %x) unnamed_addr #0 !dbg !5944 {
entry:
    #dbg_value(ptr %dst, !5947, !DIExpression(), !5948)
    #dbg_value(i32 %x, !5949, !DIExpression(), !5948)
  %conv = trunc i32 %x to i8, !dbg !5950
  store i8 %conv, ptr %dst, align 1, !dbg !5951
  %shr = lshr i32 %x, 8, !dbg !5952
  %conv1 = trunc i32 %shr to i8, !dbg !5953
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %dst, i32 1, !dbg !5954
  store i8 %conv1, ptr %arrayidx2, align 1, !dbg !5955
  %shr3 = lshr i32 %x, 16, !dbg !5956
  %conv4 = trunc i32 %shr3 to i8, !dbg !5957
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %dst, i32 2, !dbg !5958
  store i8 %conv4, ptr %arrayidx5, align 1, !dbg !5959
  %shr6 = lshr i32 %x, 24, !dbg !5960
  %conv7 = trunc nuw i32 %shr6 to i8, !dbg !5961
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %dst, i32 3, !dbg !5962
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !5963
  ret void, !dbg !5964
}

; Function Attrs: nounwind
define internal fastcc i64 @rotr32(i64 noundef %x) unnamed_addr #0 !dbg !5965 {
entry:
    #dbg_value(i64 %x, !5968, !DIExpression(), !5969)
  %0 = shl i64 %x, 32, !dbg !5970
  %1 = lshr i64 %x, 32, !dbg !5970
  %2 = or i64 %0, %1, !dbg !5970
  ret i64 %2, !dbg !5971
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5972 {
entry:
    #dbg_value(ptr %out, !5975, !DIExpression(), !5976)
    #dbg_value(i32 %outlen, !5977, !DIExpression(), !5976)
    #dbg_value(ptr %iv, !5978, !DIExpression(), !5976)
    #dbg_value(ptr %ctx, !5979, !DIExpression(), !5976)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5980
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 10) #4, !dbg !5981
  ret void, !dbg !5982
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5983 {
entry:
  %ivw = alloca [16 x i32], align 4
  %tmp = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5986, !DIExpression(), !5987)
    #dbg_value(i32 %outlen, !5988, !DIExpression(), !5987)
    #dbg_value(ptr %iv, !5989, !DIExpression(), !5987)
    #dbg_value(ptr %rkeys, !5990, !DIExpression(), !5987)
    #dbg_value(i32 %nrounds, !5991, !DIExpression(), !5987)
    #dbg_declare(ptr %ivw, !5992, !DIExpression(), !5993)
    #dbg_value(i32 0, !5994, !DIExpression(), !5987)
  call fastcc void @br_range_dec32le(ptr noundef nonnull %ivw, i32 noundef 3, ptr noundef %iv) #4, !dbg !5995
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 16, !dbg !5996
  %call = call ptr @memcpy(ptr noundef nonnull %add.ptr, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !5997
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %ivw, i32 32, !dbg !5998
  %call6 = call ptr @memcpy(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !5999
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %ivw, i32 48, !dbg !6000
  %call10 = call ptr @memcpy(ptr noundef nonnull %add.ptr8, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !6001
  %call11 = call fastcc i32 @br_swap32(i32 noundef 0) #4, !dbg !6002
  %arrayidx = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !6003
  store i32 %call11, ptr %arrayidx, align 4, !dbg !6004
  %call12 = call fastcc i32 @br_swap32(i32 noundef 1) #4, !dbg !6005
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !6006
  store i32 %call12, ptr %arrayidx13, align 4, !dbg !6007
  %call15 = call fastcc i32 @br_swap32(i32 noundef 2) #4, !dbg !6008
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !6009
  store i32 %call15, ptr %arrayidx16, align 4, !dbg !6010
  %call18 = call fastcc i32 @br_swap32(i32 noundef 3) #4, !dbg !6011
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !6012
  store i32 %call18, ptr %arrayidx19, align 4, !dbg !6013
  br label %while.cond, !dbg !6014

while.cond:                                       ; preds = %while.body, %entry
  %outlen.addr.0 = phi i32 [ %outlen, %entry ], [ %sub, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr21, %while.body ]
    #dbg_value(ptr %out.addr.0, !5986, !DIExpression(), !5987)
    #dbg_value(i32 %outlen.addr.0, !5988, !DIExpression(), !5987)
  %cmp = icmp ugt i32 %outlen.addr.0, 64, !dbg !6015
  br i1 %cmp, label %while.body, label %while.end, !dbg !6014

while.body:                                       ; preds = %while.cond
  call fastcc void @aes_ctr4x(ptr noundef %out.addr.0, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !6016
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !6018
    #dbg_value(ptr %add.ptr21, !5986, !DIExpression(), !5987)
  %sub = add i32 %outlen.addr.0, -64, !dbg !6019
    #dbg_value(i32 %sub, !5988, !DIExpression(), !5987)
  br label %while.cond, !dbg !6014, !llvm.loop !6020

while.end:                                        ; preds = %while.cond
  %outlen.addr.0.lcssa = phi i32 [ %outlen.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %cmp22.not = icmp eq i32 %outlen.addr.0.lcssa, 0, !dbg !6022
  br i1 %cmp22.not, label %if.end, label %if.then, !dbg !6022

if.then:                                          ; preds = %while.end
    #dbg_declare(ptr %tmp, !6024, !DIExpression(), !6026)
  call fastcc void @aes_ctr4x(ptr noundef nonnull %tmp, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !6027
    #dbg_value(i32 0, !6028, !DIExpression(), !5987)
  br label %for.cond, !dbg !6029

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !6031
    #dbg_value(i32 %i.0, !6028, !DIExpression(), !5987)
  %cmp25 = icmp ult i32 %i.0, %outlen.addr.0.lcssa, !dbg !6032
  br i1 %cmp25, label %for.body, label %if.end.loopexit, !dbg !6034

for.body:                                         ; preds = %for.cond
  %arrayidx26 = getelementptr inbounds nuw [64 x i8], ptr %tmp, i32 0, i32 %i.0, !dbg !6035
  %0 = load i8, ptr %arrayidx26, align 1, !dbg !6035
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out.addr.0.lcssa, i32 %i.0, !dbg !6037
  store i8 %0, ptr %arrayidx27, align 1, !dbg !6038
  %inc = add nuw nsw i32 %i.0, 1, !dbg !6039
    #dbg_value(i32 %inc, !6028, !DIExpression(), !5987)
  br label %for.cond, !dbg !6040, !llvm.loop !6041

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !6043

if.end:                                           ; preds = %if.end.loopexit, %while.end
  ret void, !dbg !6043
}

; Function Attrs: nounwind
define internal fastcc i32 @br_swap32(i32 noundef %x) unnamed_addr #0 !dbg !6044 {
entry:
    #dbg_value(i32 %x, !6045, !DIExpression(), !6046)
    #dbg_value(!DIArgList(i32 %x, i32 %x), !6045, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 18446744073692839680, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shr, DW_OP_constu, 16711935, DW_OP_and, DW_OP_or, DW_OP_stack_value), !6046)
  %0 = and i32 %x, 255, !dbg !6047
  %1 = shl i32 %0, 24, !dbg !6047
  %2 = and i32 %x, 65280, !dbg !6047
  %3 = shl i32 %2, 8, !dbg !6047
  %4 = and i32 %x, 16711680, !dbg !6047
  %5 = lshr i32 %4, 8, !dbg !6047
  %6 = and i32 %x, -16777216, !dbg !6047
  %7 = lshr i32 %6, 24, !dbg !6047
  %8 = or i32 %1, %3, !dbg !6047
  %9 = or i32 %8, %5, !dbg !6047
  %10 = or i32 %9, %7, !dbg !6047
  ret i32 %10, !dbg !6048
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !6049 {
entry:
    #dbg_value(ptr %out, !6052, !DIExpression(), !6053)
    #dbg_value(ptr %ivw, !6054, !DIExpression(), !6053)
    #dbg_value(ptr %sk_exp, !6055, !DIExpression(), !6053)
    #dbg_value(i32 %nrounds, !6056, !DIExpression(), !6053)
  call fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef %ivw, ptr noundef %sk_exp, i32 noundef %nrounds) #4, !dbg !6057
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !6058
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr) #4, !dbg !6059
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !6060
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr1) #4, !dbg !6061
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !6062
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr2) #4, !dbg !6063
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !6064
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr3) #4, !dbg !6065
  ret void, !dbg !6066
}

; Function Attrs: nounwind
define internal fastcc void @inc4_be(ptr noundef nonnull %x) unnamed_addr #0 !dbg !6067 {
entry:
    #dbg_value(ptr %x, !6070, !DIExpression(), !6071)
  %0 = load i32, ptr %x, align 4, !dbg !6072
  %call = call fastcc i32 @br_swap32(i32 noundef %0) #4, !dbg !6073
  %add = add i32 %call, 4, !dbg !6074
    #dbg_value(i32 %add, !6075, !DIExpression(), !6071)
  %call1 = call fastcc i32 @br_swap32(i32 noundef %add) #4, !dbg !6076
  store i32 %call1, ptr %x, align 4, !dbg !6077
  ret void, !dbg !6078
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6079 {
entry:
    #dbg_value(ptr %out, !6084, !DIExpression(), !6085)
    #dbg_value(ptr %in, !6086, !DIExpression(), !6085)
    #dbg_value(i32 %nblocks, !6087, !DIExpression(), !6085)
    #dbg_value(ptr %ctx, !6088, !DIExpression(), !6085)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6089
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 12) #4, !dbg !6090
  ret void, !dbg !6091
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6092 {
entry:
    #dbg_value(ptr %out, !6095, !DIExpression(), !6096)
    #dbg_value(i32 %outlen, !6097, !DIExpression(), !6096)
    #dbg_value(ptr %iv, !6098, !DIExpression(), !6096)
    #dbg_value(ptr %ctx, !6099, !DIExpression(), !6096)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6100
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 12) #4, !dbg !6101
  ret void, !dbg !6102
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6103 {
entry:
    #dbg_value(ptr %out, !6108, !DIExpression(), !6109)
    #dbg_value(ptr %in, !6110, !DIExpression(), !6109)
    #dbg_value(i32 %nblocks, !6111, !DIExpression(), !6109)
    #dbg_value(ptr %ctx, !6112, !DIExpression(), !6109)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6113
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 14) #4, !dbg !6114
  ret void, !dbg !6115
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6116 {
entry:
    #dbg_value(ptr %out, !6119, !DIExpression(), !6120)
    #dbg_value(i32 %outlen, !6121, !DIExpression(), !6120)
    #dbg_value(ptr %iv, !6122, !DIExpression(), !6120)
    #dbg_value(ptr %ctx, !6123, !DIExpression(), !6120)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6124
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 14) #4, !dbg !6125
  ret void, !dbg !6126
}

; Function Attrs: nounwind
define dso_local void @aes128_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6127 {
entry:
    #dbg_value(ptr %r, !6130, !DIExpression(), !6131)
  %0 = load ptr, ptr %r, align 4, !dbg !6132
  call void @free(ptr noundef %0) #6, !dbg !6133
  ret void, !dbg !6134
}

; Function Attrs: nounwind
define dso_local void @aes192_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6135 {
entry:
    #dbg_value(ptr %r, !6138, !DIExpression(), !6139)
  %0 = load ptr, ptr %r, align 4, !dbg !6140
  call void @free(ptr noundef %0) #6, !dbg !6141
  ret void, !dbg !6142
}

; Function Attrs: nounwind
define dso_local void @aes256_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6143 {
entry:
    #dbg_value(ptr %r, !6146, !DIExpression(), !6147)
  %0 = load ptr, ptr %r, align 4, !dbg !6148
  call void @free(ptr noundef %0) #6, !dbg !6149
  ret void, !dbg !6150
}

; Function Attrs: nounwind
define dso_local i32 @AES_128_CTR(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef %input, i32 noundef %inputByteLen) local_unnamed_addr #0 !dbg !6151 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
  %iv = alloca [16 x i8], align 1
    #dbg_value(ptr %output, !6154, !DIExpression(), !6155)
    #dbg_value(i32 %outputByteLen, !6156, !DIExpression(), !6155)
    #dbg_value(ptr %input, !6157, !DIExpression(), !6155)
    #dbg_value(i32 %inputByteLen, !6158, !DIExpression(), !6155)
    #dbg_declare(ptr %ctx, !6159, !DIExpression(), !6160)
    #dbg_declare(ptr %iv, !6161, !DIExpression(), !6162)
  call void @mayo_memset(ptr %iv, i8 0, i32 16), !dbg !6162
  call void @aes128_ctr_keyexp(ptr noundef nonnull %ctx, ptr noundef %input) #4, !dbg !6163
  call void @aes128_ctr(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef nonnull %iv, ptr noundef nonnull %ctx) #4, !dbg !6164
  call void @aes128_ctx_release(ptr noundef nonnull %ctx) #4, !dbg !6165
  ret i32 %outputByteLen, !dbg !6166
}

; Function Attrs: nounwind
define dso_local void @AES_256_ECB(ptr noundef %input, ptr noundef %key, ptr noundef %output) local_unnamed_addr #0 !dbg !6167 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %input, !6170, !DIExpression(), !6171)
    #dbg_value(ptr %key, !6172, !DIExpression(), !6171)
    #dbg_value(ptr %output, !6173, !DIExpression(), !6171)
    #dbg_declare(ptr %ctx, !6174, !DIExpression(), !6175)
  call void @aes256_ecb_keyexp(ptr noundef nonnull %ctx, ptr noundef %key) #4, !dbg !6176
  call void @aes256_ecb(ptr noundef %output, ptr noundef %input, i32 noundef 1, ptr noundef nonnull %ctx) #4, !dbg !6177
  call void @aes256_ctx_release(ptr noundef nonnull %ctx) #4, !dbg !6178
  ret void, !dbg !6179
}

; Function Attrs: nounwind
define dso_local void @mayo_secure_free(ptr noundef %mem, i32 noundef %size) local_unnamed_addr #0 !dbg !86 {
entry:
    #dbg_value(ptr %mem, !6180, !DIExpression(), !6181)
    #dbg_value(i32 %size, !6182, !DIExpression(), !6181)
  %tobool.not = icmp eq ptr %mem, null, !dbg !6183
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !6183

if.then:                                          ; preds = %entry
  %0 = load volatile ptr, ptr @mayo_secure_free.memset_func, align 4, !dbg !6185
  %call = call ptr %0(ptr noundef nonnull %mem, i32 noundef 0, i32 noundef %size) #6, !dbg !6185
  call void @free(ptr noundef nonnull %mem) #6, !dbg !6187
  br label %if.end, !dbg !6188

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6189
}

; Function Attrs: nounwind
define dso_local void @mayo_secure_clear(ptr noundef %mem, i32 noundef %size) local_unnamed_addr #0 !dbg !94 {
entry:
    #dbg_value(ptr %mem, !6190, !DIExpression(), !6191)
    #dbg_value(i32 %size, !6192, !DIExpression(), !6191)
  %0 = load volatile ptr, ptr @mayo_secure_clear.memset_func, align 4, !dbg !6193
  %call = call ptr %0(ptr noundef %mem, i32 noundef 0, i32 noundef %size) #6, !dbg !6193
  ret void, !dbg !6194
}

; Function Attrs: nounwind
define dso_local void @AES256_CTR_DRBG_Update(ptr noundef %provided_data, ptr noundef %Key, ptr noundef %V) local_unnamed_addr #0 !dbg !6195 {
entry:
  %temp = alloca [48 x i8], align 1
    #dbg_value(ptr %provided_data, !6198, !DIExpression(), !6199)
    #dbg_value(ptr %Key, !6200, !DIExpression(), !6199)
    #dbg_value(ptr %V, !6201, !DIExpression(), !6199)
    #dbg_declare(ptr %temp, !6202, !DIExpression(), !6206)
    #dbg_value(i32 0, !6207, !DIExpression(), !6209)
  br label %for.cond, !dbg !6210

for.cond:                                         ; preds = %for.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.end ], !dbg !6211
    #dbg_value(i32 %i.0, !6207, !DIExpression(), !6209)
  %exitcond = icmp ne i32 %i.0, 3, !dbg !6212
  br i1 %exitcond, label %for.cond1.preheader, label %for.end10, !dbg !6214

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !6215

for.cond1:                                        ; preds = %for.cond1.preheader, %if.then
  %j.0 = phi i32 [ %dec, %if.then ], [ 15, %for.cond1.preheader ], !dbg !6218
    #dbg_value(i32 %j.0, !6219, !DIExpression(), !6220)
  %cmp2 = icmp sgt i32 %j.0, -1, !dbg !6221
  br i1 %cmp2, label %for.body3, label %for.end.loopexit, !dbg !6215

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw i8, ptr %V, i32 %j.0, !dbg !6223
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6223
  %cmp4 = icmp eq i8 %0, -1, !dbg !6226
  br i1 %cmp4, label %if.then, label %if.else, !dbg !6226

if.then:                                          ; preds = %for.body3
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %V, i32 %j.0, !dbg !6227
  store i8 0, ptr %arrayidx6, align 1, !dbg !6229
  %dec = add nsw i32 %j.0, -1, !dbg !6230
    #dbg_value(i32 %dec, !6219, !DIExpression(), !6220)
  br label %for.cond1, !dbg !6231, !llvm.loop !6232

if.else:                                          ; preds = %for.body3
  %j.0.lcssa2 = phi i32 [ %j.0, %for.body3 ], !dbg !6218
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %V, i32 %j.0.lcssa2, !dbg !6234
  %1 = load i8, ptr %arrayidx7, align 1, !dbg !6236
  %inc = add i8 %1, 1, !dbg !6236
  store i8 %inc, ptr %arrayidx7, align 1, !dbg !6236
  br label %for.end, !dbg !6237

for.end.loopexit:                                 ; preds = %for.cond1
  br label %for.end, !dbg !6238

for.end:                                          ; preds = %for.end.loopexit, %if.else
  %mul = shl nuw nsw i32 %i.0, 4, !dbg !6238
  %add.ptr = getelementptr inbounds nuw i8, ptr %temp, i32 %mul, !dbg !6239
  call fastcc void @AES256_ECB(ptr noundef %Key, ptr noundef %V, ptr noundef nonnull %add.ptr) #4, !dbg !6240
  %inc9 = add nuw nsw i32 %i.0, 1, !dbg !6241
    #dbg_value(i32 %inc9, !6207, !DIExpression(), !6209)
  br label %for.cond, !dbg !6242, !llvm.loop !6243

for.end10:                                        ; preds = %for.cond
  %cmp11.not = icmp eq ptr %provided_data, null, !dbg !6245
  br i1 %cmp11.not, label %if.end27, label %for.cond15.preheader, !dbg !6245

for.cond15.preheader:                             ; preds = %for.end10
  br label %for.cond15, !dbg !6247

for.cond15:                                       ; preds = %for.cond15.preheader, %for.body18
  %i14.0 = phi i32 [ %inc25, %for.body18 ], [ 0, %for.cond15.preheader ], !dbg !6249
    #dbg_value(i32 %i14.0, !6250, !DIExpression(), !6251)
  %exitcond3 = icmp ne i32 %i14.0, 48, !dbg !6252
  br i1 %exitcond3, label %for.body18, label %if.end27.loopexit, !dbg !6247

for.body18:                                       ; preds = %for.cond15
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %provided_data, i32 %i14.0, !dbg !6254
  %2 = load i8, ptr %arrayidx19, align 1, !dbg !6254
  %arrayidx21 = getelementptr inbounds nuw [48 x i8], ptr %temp, i32 0, i32 %i14.0, !dbg !6256
  %3 = load i8, ptr %arrayidx21, align 1, !dbg !6257
  %xor1 = xor i8 %3, %2, !dbg !6257
  store i8 %xor1, ptr %arrayidx21, align 1, !dbg !6257
  %inc25 = add nuw nsw i32 %i14.0, 1, !dbg !6258
    #dbg_value(i32 %inc25, !6250, !DIExpression(), !6251)
  br label %for.cond15, !dbg !6259, !llvm.loop !6260

if.end27.loopexit:                                ; preds = %for.cond15
  br label %if.end27, !dbg !6262

if.end27:                                         ; preds = %if.end27.loopexit, %for.end10
  %call = call ptr @memcpy(ptr noundef %Key, ptr noundef nonnull %temp, i32 noundef 32) #6, !dbg !6262
  %add.ptr30 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !6263
  %call31 = call ptr @memcpy(ptr noundef %V, ptr noundef nonnull %add.ptr30, i32 noundef 16) #6, !dbg !6264
  ret void, !dbg !6265
}

; Function Attrs: nounwind
define internal fastcc void @AES256_ECB(ptr noundef %key, ptr noundef %ctr, ptr noundef nonnull %buffer) unnamed_addr #0 !dbg !6266 {
entry:
    #dbg_value(ptr %key, !6267, !DIExpression(), !6268)
    #dbg_value(ptr %ctr, !6269, !DIExpression(), !6268)
    #dbg_value(ptr %buffer, !6270, !DIExpression(), !6268)
  call void @AES_256_ECB(ptr noundef %ctr, ptr noundef %key, ptr noundef nonnull %buffer) #4, !dbg !6271
  ret void, !dbg !6272
}

; Function Attrs: nounwind
define dso_local i32 @randombytes(ptr noundef %random_array, i32 noundef %nbytes) local_unnamed_addr #0 !dbg !6273 {
entry:
    #dbg_value(ptr %random_array, !6276, !DIExpression(), !6277)
    #dbg_value(i32 %nbytes, !6278, !DIExpression(), !6277)
  %call = call fastcc i32 @randombytes_nist(ptr noundef %random_array, i32 noundef %nbytes) #4, !dbg !6279
    #dbg_value(i32 0, !6280, !DIExpression(), !6277)
  ret i32 0, !dbg !6281
}

; Function Attrs: nounwind
define internal fastcc i32 @randombytes_nist(ptr noundef %x, i32 noundef %xlen) unnamed_addr #0 !dbg !6282 {
entry:
  %block = alloca [16 x i8], align 1
    #dbg_value(ptr %x, !6283, !DIExpression(), !6284)
    #dbg_value(i32 %xlen, !6285, !DIExpression(), !6284)
    #dbg_declare(ptr %block, !6286, !DIExpression(), !6287)
    #dbg_value(i32 0, !6288, !DIExpression(), !6284)
  br label %while.cond, !dbg !6289

while.cond:                                       ; preds = %if.end15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %i.1, %if.end15 ], !dbg !6284
  %xlen.addr.0 = phi i32 [ %xlen, %entry ], [ %xlen.addr.1, %if.end15 ]
    #dbg_value(i32 %xlen.addr.0, !6285, !DIExpression(), !6284)
    #dbg_value(i32 %i.0, !6288, !DIExpression(), !6284)
  %cmp.not = icmp eq i32 %xlen.addr.0, 0, !dbg !6290
  br i1 %cmp.not, label %while.end, label %for.cond.preheader, !dbg !6289

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !6291

for.cond:                                         ; preds = %for.cond.preheader, %if.then
  %j.0 = phi i32 [ %dec, %if.then ], [ 15, %for.cond.preheader ], !dbg !6294
    #dbg_value(i32 %j.0, !6295, !DIExpression(), !6296)
  %cmp1 = icmp sgt i32 %j.0, -1, !dbg !6297
  br i1 %cmp1, label %for.body, label %for.end.loopexit, !dbg !6291

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0, !dbg !6299
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6299
  %cmp2 = icmp eq i8 %0, -1, !dbg !6302
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6302

if.then:                                          ; preds = %for.body
  %arrayidx4 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0, !dbg !6303
  store i8 0, ptr %arrayidx4, align 1, !dbg !6305
  %dec = add nsw i32 %j.0, -1, !dbg !6306
    #dbg_value(i32 %dec, !6295, !DIExpression(), !6296)
  br label %for.cond, !dbg !6307, !llvm.loop !6308

if.else:                                          ; preds = %for.body
  %j.0.lcssa1 = phi i32 [ %j.0, %for.body ], !dbg !6294
  %arrayidx5 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0.lcssa1, !dbg !6310
  %1 = load i8, ptr %arrayidx5, align 1, !dbg !6312
  %inc = add i8 %1, 1, !dbg !6312
  store i8 %inc, ptr %arrayidx5, align 1, !dbg !6312
  br label %for.end, !dbg !6313

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !6314

for.end:                                          ; preds = %for.end.loopexit, %if.else
  call fastcc void @AES256_ECB(ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), ptr noundef nonnull %block) #4, !dbg !6314
  %cmp6 = icmp ugt i32 %xlen.addr.0, 15, !dbg !6315
  br i1 %cmp6, label %if.then8, label %if.else10, !dbg !6315

if.then8:                                         ; preds = %for.end
  %add.ptr = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !6317
  %call = call ptr @memcpy(ptr noundef %add.ptr, ptr noundef nonnull %block, i32 noundef 16) #6, !dbg !6319
  %add = add i32 %i.0, 16, !dbg !6320
    #dbg_value(i32 %add, !6288, !DIExpression(), !6284)
  %sub = add i32 %xlen.addr.0, -16, !dbg !6321
    #dbg_value(i32 %sub, !6285, !DIExpression(), !6284)
  br label %if.end15, !dbg !6322

if.else10:                                        ; preds = %for.end
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !6323
  %call13 = call ptr @memcpy(ptr noundef %add.ptr11, ptr noundef nonnull %block, i32 noundef %xlen.addr.0) #6, !dbg !6325
  %add14 = add i32 %i.0, %xlen.addr.0, !dbg !6326
    #dbg_value(i32 %add14, !6288, !DIExpression(), !6284)
    #dbg_value(i32 0, !6285, !DIExpression(), !6284)
  br label %if.end15

if.end15:                                         ; preds = %if.else10, %if.then8
  %i.1 = phi i32 [ %add, %if.then8 ], [ %add14, %if.else10 ], !dbg !6327
  %xlen.addr.1 = phi i32 [ %sub, %if.then8 ], [ 0, %if.else10 ], !dbg !6327
    #dbg_value(i32 %xlen.addr.1, !6285, !DIExpression(), !6284)
    #dbg_value(i32 %i.1, !6288, !DIExpression(), !6284)
  br label %while.cond, !dbg !6289, !llvm.loop !6328

while.end:                                        ; preds = %while.cond
  call void @AES256_CTR_DRBG_Update(ptr noundef null, ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32)) #4, !dbg !6330
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6331
  %inc16 = add nsw i32 %2, 1, !dbg !6331
  store i32 %inc16, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6331
  ret i32 poison, !dbg !6332
}

; Function Attrs: nounwind
define dso_local void @randombytes_init(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) local_unnamed_addr #0 !dbg !6333 {
entry:
    #dbg_value(ptr %entropy_input, !6336, !DIExpression(), !6337)
    #dbg_value(ptr %personalization_string, !6338, !DIExpression(), !6337)
    #dbg_value(i32 %security_strength, !6339, !DIExpression(), !6337)
  call fastcc void @randombytes_init_nist(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) #4, !dbg !6340
  ret void, !dbg !6341
}

; Function Attrs: nounwind
define internal fastcc void @randombytes_init_nist(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) unnamed_addr #0 !dbg !6342 {
entry:
  %seed_material = alloca [48 x i8], align 1
    #dbg_value(ptr %entropy_input, !6343, !DIExpression(), !6344)
    #dbg_value(ptr %personalization_string, !6345, !DIExpression(), !6344)
    #dbg_value(i32 %security_strength, !6346, !DIExpression(), !6344)
    #dbg_declare(ptr %seed_material, !6347, !DIExpression(), !6348)
  %call = call ptr @memcpy(ptr noundef nonnull %seed_material, ptr noundef %entropy_input, i32 noundef 48) #6, !dbg !6349
  %tobool.not = icmp eq ptr %personalization_string, null, !dbg !6350
  br i1 %tobool.not, label %if.end, label %for.cond.preheader, !dbg !6350

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !6352

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !6354
    #dbg_value(i32 %i.0, !6355, !DIExpression(), !6356)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !6357
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !6352

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %personalization_string, i32 %i.0, !dbg !6359
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6359
  %arrayidx1 = getelementptr inbounds nuw [48 x i8], ptr %seed_material, i32 0, i32 %i.0, !dbg !6361
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !6362
  %xor1 = xor i8 %1, %0, !dbg !6362
  store i8 %xor1, ptr %arrayidx1, align 1, !dbg !6362
  %inc = add nuw nsw i32 %i.0, 1, !dbg !6363
    #dbg_value(i32 %inc, !6355, !DIExpression(), !6356)
  br label %for.cond, !dbg !6364, !llvm.loop !6365

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !6367

if.end:                                           ; preds = %if.end.loopexit, %entry
  %call4 = call ptr @memset(ptr noundef nonnull @DRBG_ctx, i32 noundef 0, i32 noundef 32) #6, !dbg !6367
  %call5 = call ptr @memset(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 noundef 0, i32 noundef 16) #6, !dbg !6368
  call void @AES256_CTR_DRBG_Update(ptr noundef nonnull %seed_material, ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32)) #4, !dbg !6369
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6370
  ret void, !dbg !6371
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
!42 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_3_ref_uint32_t_blocker", scope: !43, file: !58, line: 126, type: !63, isLocal: false, isDefinition: true)
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
!57 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_3_ref_uint64_t_blocker", scope: !43, file: !58, line: 127, type: !59, isLocal: false, isDefinition: true)
!58 = !DIFile(filename: "../../../src/arithmetic.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!59 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_3_ref_unsigned_char_blocker", scope: !43, file: !58, line: 128, type: !62, isLocal: false, isDefinition: true)
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
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 3145408, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 49147)
!183 = !DILocation(line: 32, column: 10, scope: !134)
!184 = !DILocalVariable(name: "esk", scope: !134, file: !129, line: 33, type: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !36, line: 291, baseType: !186)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 3129408, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 48897)
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
!275 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_keypair", scope: !25, file: !25, line: 298, type: !276, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!315 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_keypair_compact", scope: !25, file: !25, line: 537, type: !276, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!316 = !DILocalVariable(name: "p", arg: 1, scope: !315, file: !25, line: 537, type: !278)
!317 = !DILocation(line: 0, scope: !315)
!318 = !DILocalVariable(name: "cpk", arg: 2, scope: !315, file: !25, line: 537, type: !18)
!319 = !DILocalVariable(name: "csk", arg: 3, scope: !315, file: !25, line: 538, type: !18)
!320 = !DILocalVariable(name: "ret", scope: !315, file: !25, line: 539, type: !45)
!321 = !DILocalVariable(name: "seed_sk", scope: !315, file: !25, line: 540, type: !18)
!322 = !DILocalVariable(name: "S", scope: !315, file: !25, line: 541, type: !323)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4448, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 556)
!326 = !DILocation(line: 541, column: 19, scope: !315)
!327 = !DILocalVariable(name: "P", scope: !315, file: !25, line: 542, type: !328)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 3120768, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 48762)
!331 = !DILocation(line: 542, column: 14, scope: !315)
!332 = !DILocalVariable(name: "P3", scope: !315, file: !25, line: 543, type: !333)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 44800, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 700)
!336 = !DILocation(line: 543, column: 14, scope: !315)
!337 = !DILocalVariable(name: "O", scope: !315, file: !25, line: 546, type: !338)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8640, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 1080)
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
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 24640, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 385)
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
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 448, elements: !682)
!682 = !{!683}
!683 = !DISubrange(count: 7)
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
!704 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_expand_sk", scope: !25, file: !25, line: 310, type: !705, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!801 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_sign_signature", scope: !25, file: !25, line: 359, type: !802, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 432, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 54)
!817 = !DILocation(line: 363, column: 19, scope: !801)
!818 = !DILocalVariable(name: "t", scope: !801, file: !25, line: 363, type: !819)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 864, elements: !820)
!820 = !{!821}
!821 = !DISubrange(count: 108)
!822 = !DILocation(line: 363, column: 38, scope: !801)
!823 = !DILocalVariable(name: "y", scope: !801, file: !25, line: 364, type: !819)
!824 = !DILocation(line: 364, column: 19, scope: !801)
!825 = !DILocalVariable(name: "salt", scope: !801, file: !25, line: 365, type: !112)
!826 = !DILocation(line: 365, column: 19, scope: !801)
!827 = !DILocalVariable(name: "V", scope: !801, file: !25, line: 366, type: !828)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 5192, elements: !829)
!829 = !{!830}
!830 = !DISubrange(count: 649)
!831 = !DILocation(line: 366, column: 19, scope: !801)
!832 = !DILocalVariable(name: "Vdec", scope: !801, file: !25, line: 366, type: !833)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 9504, elements: !834)
!834 = !{!835}
!835 = !DISubrange(count: 1188)
!836 = !DILocation(line: 366, column: 57, scope: !801)
!837 = !DILocalVariable(name: "A", scope: !801, file: !25, line: 367, type: !838)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 99456, elements: !839)
!839 = !{!840}
!840 = !DISubrange(count: 12432)
!841 = !DILocation(line: 367, column: 19, scope: !801)
!842 = !DILocalVariable(name: "x", scope: !801, file: !25, line: 368, type: !843)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 10384, elements: !844)
!844 = !{!845}
!845 = !DISubrange(count: 1298)
!846 = !DILocation(line: 368, column: 19, scope: !801)
!847 = !DILocalVariable(name: "r", scope: !801, file: !25, line: 369, type: !848)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 888, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 111)
!851 = !DILocation(line: 369, column: 19, scope: !801)
!852 = !DILocalVariable(name: "s", scope: !801, file: !25, line: 370, type: !843)
!853 = !DILocation(line: 370, column: 19, scope: !801)
!854 = !DILocalVariable(name: "sk", scope: !801, file: !25, line: 372, type: !185, align: 256)
!855 = !DILocation(line: 372, column: 22, scope: !801)
!856 = !DILocalVariable(name: "Ox", scope: !801, file: !25, line: 373, type: !819)
!857 = !DILocation(line: 373, column: 19, scope: !801)
!858 = !DILocalVariable(name: "tmp", scope: !801, file: !25, line: 374, type: !859)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 904, elements: !860)
!860 = !{!861}
!861 = !DISubrange(count: 113)
!862 = !DILocation(line: 374, column: 19, scope: !801)
!863 = !DILocalVariable(name: "param_m", scope: !801, file: !25, line: 378, type: !343)
!864 = !DILocalVariable(name: "param_n", scope: !801, file: !25, line: 379, type: !343)
!865 = !DILocalVariable(name: "param_o", scope: !801, file: !25, line: 380, type: !343)
!866 = !DILocalVariable(name: "param_k", scope: !801, file: !25, line: 381, type: !343)
!867 = !DILocalVariable(name: "param_v", scope: !801, file: !25, line: 382, type: !343)
!868 = !DILocalVariable(name: "param_m_bytes", scope: !801, file: !25, line: 383, type: !343)
!869 = !DILocalVariable(name: "param_v_bytes", scope: !801, file: !25, line: 384, type: !343)
!870 = !DILocalVariable(name: "param_r_bytes", scope: !801, file: !25, line: 385, type: !343)
!871 = !DILocalVariable(name: "param_sig_bytes", scope: !801, file: !25, line: 386, type: !343)
!872 = !DILocalVariable(name: "param_A_cols", scope: !801, file: !25, line: 387, type: !343)
!873 = !DILocalVariable(name: "param_digest_bytes", scope: !801, file: !25, line: 388, type: !343)
!874 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !801, file: !25, line: 389, type: !343)
!875 = !DILocalVariable(name: "param_salt_bytes", scope: !801, file: !25, line: 390, type: !343)
!876 = !DILocation(line: 392, column: 11, scope: !801)
!877 = !DILocalVariable(name: "seed_sk", scope: !801, file: !25, line: 371, type: !49)
!878 = !DILocation(line: 401, column: 5, scope: !801)
!879 = !DILocalVariable(name: "P1", scope: !801, file: !25, line: 403, type: !5)
!880 = !DILocalVariable(name: "L", scope: !801, file: !25, line: 404, type: !5)
!881 = !DILocalVariable(name: "Mtmp", scope: !801, file: !25, line: 405, type: !882)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 49280, elements: !883)
!883 = !{!884}
!884 = !DISubrange(count: 770)
!885 = !DILocation(line: 405, column: 14, scope: !801)
!886 = !DILocation(line: 420, column: 25, scope: !887)
!887 = distinct !DILexicalBlock(scope: !801, file: !25, line: 420, column: 9)
!888 = !DILocation(line: 420, column: 9, scope: !887)
!889 = !DILocation(line: 427, column: 37, scope: !801)
!890 = !DILocation(line: 427, column: 5, scope: !801)
!891 = !DILocation(line: 429, column: 5, scope: !801)
!892 = !DILocation(line: 437, column: 16, scope: !801)
!893 = !DILocation(line: 437, column: 5, scope: !801)
!894 = !DILocation(line: 438, column: 59, scope: !801)
!895 = !DILocalVariable(name: "ctrbyte", scope: !801, file: !25, line: 375, type: !18)
!896 = !DILocation(line: 440, column: 5, scope: !801)
!897 = !DILocation(line: 442, column: 5, scope: !801)
!898 = !DILocation(line: 445, column: 18, scope: !801)
!899 = !DILocation(line: 447, column: 9, scope: !801)
!900 = !DILocalVariable(name: "i", scope: !901, file: !25, line: 451, type: !45)
!901 = distinct !DILexicalBlock(scope: !801, file: !25, line: 451, column: 9)
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
!918 = !DILocation(line: 404, column: 23, scope: !801)
!919 = !DILocation(line: 455, column: 9, scope: !801)
!920 = !DILocation(line: 457, column: 9, scope: !801)
!921 = !DILocation(line: 458, column: 9, scope: !801)
!922 = !DILocalVariable(name: "i", scope: !923, file: !25, line: 460, type: !45)
!923 = distinct !DILexicalBlock(scope: !801, file: !25, line: 460, column: 9)
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
!939 = !DILocation(line: 465, column: 18, scope: !801)
!940 = !DILocation(line: 465, column: 9, scope: !801)
!941 = !DILocation(line: 469, column: 13, scope: !942)
!942 = distinct !DILexicalBlock(scope: !801, file: !25, line: 469, column: 13)
!943 = !DILocation(line: 472, column: 13, scope: !944)
!944 = distinct !DILexicalBlock(scope: !942, file: !25, line: 471, column: 16)
!945 = !DILocation(line: 473, column: 13, scope: !944)
!946 = !DILocalVariable(name: "i", scope: !947, file: !25, line: 477, type: !45)
!947 = distinct !DILexicalBlock(scope: !801, file: !25, line: 477, column: 5)
!948 = !DILocation(line: 0, scope: !947)
!949 = !DILocation(line: 477, column: 10, scope: !947)
!950 = !DILocation(line: 477, scope: !947)
!951 = !DILocation(line: 477, column: 23, scope: !952)
!952 = distinct !DILexicalBlock(scope: !947, file: !25, line: 477, column: 5)
!953 = !DILocation(line: 477, column: 5, scope: !947)
!954 = !DILocation(line: 478, column: 23, scope: !955)
!955 = distinct !DILexicalBlock(scope: !952, file: !25, line: 477, column: 44)
!956 = !DILocation(line: 478, column: 19, scope: !955)
!957 = !DILocalVariable(name: "vi", scope: !801, file: !25, line: 376, type: !18)
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
!975 = !DILocation(line: 483, column: 5, scope: !801)
!976 = !DILocation(line: 485, column: 34, scope: !801)
!977 = !DILocation(line: 485, column: 5, scope: !801)
!978 = !DILocation(line: 486, column: 13, scope: !801)
!979 = !DILabel(scope: !801, name: "err", file: !25, line: 488)
!980 = !DILocation(line: 488, column: 1, scope: !801)
!981 = !DILocation(line: 489, column: 5, scope: !801)
!982 = !DILocation(line: 490, column: 5, scope: !801)
!983 = !DILocation(line: 491, column: 5, scope: !801)
!984 = !DILocation(line: 492, column: 5, scope: !801)
!985 = !DILocation(line: 493, column: 23, scope: !801)
!986 = !DILocation(line: 493, column: 5, scope: !801)
!987 = !DILocation(line: 494, column: 5, scope: !801)
!988 = !DILocation(line: 495, column: 5, scope: !801)
!989 = !DILocation(line: 496, column: 5, scope: !801)
!990 = !DILocation(line: 497, column: 5, scope: !801)
!991 = !DILocation(line: 498, column: 5, scope: !801)
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
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 532224, elements: !1008)
!1008 = !{!1009}
!1009 = !DISubrange(count: 8316)
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
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 100352, elements: !1192)
!1192 = !{!1193}
!1193 = !DISubrange(count: 1568)
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
!1949 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_sign", scope: !25, file: !25, line: 501, type: !802, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1950 = !DILocalVariable(name: "p", arg: 1, scope: !1949, file: !25, line: 501, type: !278)
!1951 = !DILocation(line: 0, scope: !1949)
!1952 = !DILocalVariable(name: "sm", arg: 2, scope: !1949, file: !25, line: 501, type: !18)
!1953 = !DILocalVariable(name: "smlen", arg: 3, scope: !1949, file: !25, line: 502, type: !804)
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
!1978 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_open", scope: !25, file: !25, line: 519, type: !802, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1979 = !DILocalVariable(name: "p", arg: 1, scope: !1978, file: !25, line: 519, type: !278)
!1980 = !DILocation(line: 0, scope: !1978)
!1981 = !DILocalVariable(name: "m", arg: 2, scope: !1978, file: !25, line: 519, type: !18)
!1982 = !DILocalVariable(name: "mlen", arg: 3, scope: !1978, file: !25, line: 520, type: !804)
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
!2002 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_verify", scope: !25, file: !25, line: 616, type: !2003, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!45, !278, !49, !15, !49, !49}
!2005 = !DILocalVariable(name: "p", arg: 1, scope: !2002, file: !25, line: 616, type: !278)
!2006 = !DILocation(line: 0, scope: !2002)
!2007 = !DILocalVariable(name: "m", arg: 2, scope: !2002, file: !25, line: 616, type: !49)
!2008 = !DILocalVariable(name: "mlen", arg: 3, scope: !2002, file: !25, line: 617, type: !15)
!2009 = !DILocalVariable(name: "sig", arg: 4, scope: !2002, file: !25, line: 617, type: !49)
!2010 = !DILocalVariable(name: "cpk", arg: 5, scope: !2002, file: !25, line: 618, type: !49)
!2011 = !DILocalVariable(name: "tEnc", scope: !2002, file: !25, line: 619, type: !814)
!2012 = !DILocation(line: 619, column: 19, scope: !2002)
!2013 = !DILocalVariable(name: "t", scope: !2002, file: !25, line: 620, type: !819)
!2014 = !DILocation(line: 620, column: 19, scope: !2002)
!2015 = !DILocalVariable(name: "y", scope: !2002, file: !25, line: 621, type: !2016)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1728, elements: !2017)
!2017 = !{!2018}
!2018 = !DISubrange(count: 216)
!2019 = !DILocation(line: 621, column: 19, scope: !2002)
!2020 = !DILocalVariable(name: "s", scope: !2002, file: !25, line: 622, type: !843)
!2021 = !DILocation(line: 622, column: 19, scope: !2002)
!2022 = !DILocalVariable(name: "pk", scope: !2002, file: !25, line: 623, type: !180)
!2023 = !DILocation(line: 623, column: 14, scope: !2002)
!2024 = !DILocalVariable(name: "tmp", scope: !2002, file: !25, line: 624, type: !2025)
!2025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 640, elements: !2026)
!2026 = !{!2027}
!2027 = !DISubrange(count: 80)
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
!2055 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_expand_pk", scope: !25, file: !25, line: 607, type: !705, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 54208, elements: !2077)
!2077 = !{!2078}
!2078 = !DISubrange(count: 847)
!2079 = !DILocation(line: 289, column: 14, scope: !2065)
!2080 = !DILocation(line: 291, column: 5, scope: !2065)
!2081 = !DILocalVariable(name: "zero", scope: !2065, file: !25, line: 292, type: !819)
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
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 581504, elements: !2097)
!2097 = !{!2098}
!2098 = !DISubrange(count: 9086)
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
!2119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 9304064, elements: !2120)
!2120 = !{!2121}
!2121 = !DISubrange(count: 145376)
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
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 867328, elements: !2278)
!2278 = !{!2279}
!2279 = !DISubrange(count: 13552)
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
!2497 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_m_upper", scope: !58, file: !58, line: 14, type: !2498, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
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
!2621 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2622, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
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
!2899 = !DILocalVariable(name: "_pivot_row", scope: !2891, file: !2892, line: 62, type: !681, align: 256)
!2900 = !DILocation(line: 62, column: 27, scope: !2891)
!2901 = !DILocalVariable(name: "_pivot_row2", scope: !2891, file: !2892, line: 63, type: !681, align: 256)
!2902 = !DILocation(line: 63, column: 27, scope: !2891)
!2903 = !DILocalVariable(name: "packed_A", scope: !2891, file: !2892, line: 64, type: !2904, align: 256)
!2904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 48384, elements: !2905)
!2905 = !{!2906}
!2906 = !DISubrange(count: 756)
!2907 = !DILocation(line: 64, column: 27, scope: !2891)
!2908 = !DILocation(line: 66, column: 26, scope: !2891)
!2909 = !DILocation(line: 66, column: 32, scope: !2891)
!2910 = !DILocalVariable(name: "row_len", scope: !2891, file: !2892, line: 66, type: !45)
!2911 = !DILocalVariable(name: "i", scope: !2912, file: !2892, line: 69, type: !45)
!2912 = distinct !DILexicalBlock(scope: !2891, file: !2892, line: 69, column: 5)
!2913 = !DILocation(line: 0, scope: !2912)
!2914 = !DILocation(line: 69, column: 10, scope: !2912)
!2915 = !DILocation(line: 69, scope: !2912)
!2916 = !DILocation(line: 69, column: 23, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2912, file: !2892, line: 69, column: 5)
!2918 = !DILocation(line: 69, column: 5, scope: !2912)
!2919 = !DILocation(line: 77, column: 5, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2891, file: !2892, line: 77, column: 5)
!2921 = !DILocation(line: 70, column: 29, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2917, file: !2892, line: 69, column: 37)
!2923 = !DILocation(line: 70, column: 25, scope: !2922)
!2924 = !DILocation(line: 70, column: 51, scope: !2922)
!2925 = !DILocation(line: 70, column: 47, scope: !2922)
!2926 = !DILocation(line: 70, column: 9, scope: !2922)
!2927 = !DILocation(line: 69, column: 33, scope: !2917)
!2928 = !DILocation(line: 69, column: 5, scope: !2917)
!2929 = distinct !{!2929, !2918, !2930, !244}
!2930 = !DILocation(line: 71, column: 5, scope: !2912)
!2931 = !DILocation(line: 77, scope: !2920)
!2932 = !DILocalVariable(name: "pivot_row", scope: !2891, file: !2892, line: 76, type: !45)
!2933 = !DILocalVariable(name: "pivot_col", scope: !2920, file: !2892, line: 77, type: !45)
!2934 = !DILocation(line: 0, scope: !2920)
!2935 = !DILocation(line: 77, column: 39, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2920, file: !2892, line: 77, column: 5)
!2937 = !DILocation(line: 138, column: 5, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2891, file: !2892, line: 138, column: 5)
!2939 = !DILocation(line: 79, column: 37, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2936, file: !2892, line: 77, column: 61)
!2941 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2940, file: !2892, line: 79, type: !45)
!2942 = !DILocation(line: 0, scope: !2940)
!2943 = !DILocation(line: 80, column: 37, scope: !2940)
!2944 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2940, file: !2892, line: 80, type: !45)
!2945 = !DILocalVariable(name: "i", scope: !2946, file: !2892, line: 85, type: !45)
!2946 = distinct !DILexicalBlock(scope: !2940, file: !2892, line: 85, column: 9)
!2947 = !DILocation(line: 0, scope: !2946)
!2948 = !DILocation(line: 85, column: 14, scope: !2946)
!2949 = !DILocation(line: 85, scope: !2946)
!2950 = !DILocation(line: 85, column: 27, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2946, file: !2892, line: 85, column: 9)
!2952 = !DILocation(line: 85, column: 9, scope: !2946)
!2953 = !DILocation(line: 93, column: 9, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2940, file: !2892, line: 93, column: 9)
!2955 = !DILocation(line: 86, column: 13, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2951, file: !2892, line: 85, column: 43)
!2957 = !DILocation(line: 86, column: 27, scope: !2956)
!2958 = !DILocation(line: 87, column: 13, scope: !2956)
!2959 = !DILocation(line: 87, column: 28, scope: !2956)
!2960 = !DILocation(line: 85, column: 39, scope: !2951)
!2961 = !DILocation(line: 85, column: 9, scope: !2951)
!2962 = distinct !{!2962, !2952, !2963, !244}
!2963 = !DILocation(line: 88, column: 9, scope: !2946)
!2964 = !DILocation(line: 0, scope: !2954)
!2965 = !DILocalVariable(name: "row", scope: !2954, file: !2892, line: 93, type: !45)
!2966 = !DILocalVariable(name: "pivot", scope: !2940, file: !2892, line: 91, type: !14)
!2967 = !DILocalVariable(name: "pivot_is_zero", scope: !2940, file: !2892, line: 92, type: !6)
!2968 = !DILocation(line: 94, column: 24, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2954, file: !2892, line: 93, column: 9)
!2970 = !DILocation(line: 94, column: 21, scope: !2969)
!2971 = !DILocation(line: 96, column: 38, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2969, file: !2892, line: 94, column: 80)
!2973 = !DILocation(line: 96, column: 37, scope: !2972)
!2974 = !DILocalVariable(name: "is_pivot_row", scope: !2972, file: !2892, line: 96, type: !6)
!2975 = !DILocation(line: 0, scope: !2972)
!2976 = !DILocation(line: 97, column: 40, scope: !2972)
!2977 = !DILocalVariable(name: "below_pivot_row", scope: !2972, file: !2892, line: 97, type: !6)
!2978 = !DILocalVariable(name: "j", scope: !2979, file: !2892, line: 99, type: !45)
!2979 = distinct !DILexicalBlock(scope: !2972, file: !2892, line: 99, column: 13)
!2980 = !DILocation(line: 0, scope: !2979)
!2981 = !DILocation(line: 99, column: 18, scope: !2979)
!2982 = !DILocation(line: 99, scope: !2979)
!2983 = !DILocation(line: 99, column: 31, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2979, file: !2892, line: 99, column: 13)
!2985 = !DILocation(line: 99, column: 13, scope: !2979)
!2986 = !DILocation(line: 100, column: 67, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2984, file: !2892, line: 99, column: 47)
!2988 = !DILocation(line: 100, column: 48, scope: !2987)
!2989 = !DILocation(line: 101, column: 47, scope: !2987)
!2990 = !DILocation(line: 101, column: 57, scope: !2987)
!2991 = !DILocation(line: 101, column: 34, scope: !2987)
!2992 = !DILocation(line: 100, column: 85, scope: !2987)
!2993 = !DILocation(line: 100, column: 17, scope: !2987)
!2994 = !DILocation(line: 100, column: 31, scope: !2987)
!2995 = !DILocation(line: 99, column: 43, scope: !2984)
!2996 = !DILocation(line: 99, column: 13, scope: !2984)
!2997 = distinct !{!2997, !2985, !2998, !244}
!2998 = !DILocation(line: 102, column: 13, scope: !2979)
!2999 = !DILocation(line: 103, column: 21, scope: !2972)
!3000 = !DILocation(line: 104, column: 44, scope: !2972)
!3001 = !DILocation(line: 104, column: 30, scope: !2972)
!3002 = !DILocation(line: 104, column: 29, scope: !2972)
!3003 = !DILocation(line: 94, column: 76, scope: !2969)
!3004 = !DILocation(line: 93, column: 9, scope: !2969)
!3005 = distinct !{!3005, !2953, !3006, !244}
!3006 = !DILocation(line: 105, column: 9, scope: !2954)
!3007 = !DILocation(line: 108, column: 19, scope: !2940)
!3008 = !DILocalVariable(name: "inverse", scope: !2891, file: !2892, line: 75, type: !14)
!3009 = !DILocation(line: 109, column: 9, scope: !2940)
!3010 = !DILocalVariable(name: "row", scope: !3011, file: !2892, line: 113, type: !45)
!3011 = distinct !DILexicalBlock(scope: !2940, file: !2892, line: 113, column: 9)
!3012 = !DILocation(line: 0, scope: !3011)
!3013 = !DILocation(line: 113, column: 14, scope: !3011)
!3014 = !DILocation(line: 113, scope: !3011)
!3015 = !DILocation(line: 113, column: 51, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3011, file: !2892, line: 113, column: 9)
!3017 = !DILocation(line: 113, column: 9, scope: !3011)
!3018 = !DILocation(line: 124, column: 9, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2940, file: !2892, line: 124, column: 9)
!3020 = !DILocation(line: 114, column: 33, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3016, file: !2892, line: 113, column: 84)
!3022 = !DILocation(line: 114, column: 63, scope: !3021)
!3023 = !DILocalVariable(name: "do_copy", scope: !3021, file: !2892, line: 114, type: !6)
!3024 = !DILocation(line: 0, scope: !3021)
!3025 = !DILocalVariable(name: "do_not_copy", scope: !3021, file: !2892, line: 115, type: !6)
!3026 = !DILocalVariable(name: "col", scope: !3027, file: !2892, line: 116, type: !45)
!3027 = distinct !DILexicalBlock(scope: !3021, file: !2892, line: 116, column: 13)
!3028 = !DILocation(line: 0, scope: !3027)
!3029 = !DILocation(line: 116, column: 18, scope: !3027)
!3030 = !DILocation(line: 116, scope: !3027)
!3031 = !DILocation(line: 116, column: 35, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3027, file: !2892, line: 116, column: 13)
!3033 = !DILocation(line: 116, column: 13, scope: !3027)
!3034 = !DILocation(line: 118, column: 49, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3032, file: !2892, line: 116, column: 53)
!3036 = !DILocation(line: 118, column: 59, scope: !3035)
!3037 = !DILocation(line: 118, column: 36, scope: !3035)
!3038 = !DILocation(line: 118, column: 34, scope: !3035)
!3039 = !DILocation(line: 119, column: 32, scope: !3035)
!3040 = !DILocation(line: 119, column: 30, scope: !3035)
!3041 = !DILocation(line: 118, column: 67, scope: !3035)
!3042 = !DILocation(line: 117, column: 30, scope: !3035)
!3043 = !DILocation(line: 117, column: 40, scope: !3035)
!3044 = !DILocation(line: 117, column: 17, scope: !3035)
!3045 = !DILocation(line: 117, column: 47, scope: !3035)
!3046 = !DILocation(line: 116, column: 49, scope: !3032)
!3047 = !DILocation(line: 116, column: 13, scope: !3032)
!3048 = distinct !{!3048, !3033, !3049, !244}
!3049 = !DILocation(line: 120, column: 13, scope: !3027)
!3050 = !DILocation(line: 113, column: 80, scope: !3016)
!3051 = !DILocation(line: 113, column: 9, scope: !3016)
!3052 = distinct !{!3052, !3017, !3053, !244}
!3053 = !DILocation(line: 121, column: 9, scope: !3011)
!3054 = !DILocation(line: 124, scope: !3019)
!3055 = !DILocalVariable(name: "row", scope: !3019, file: !2892, line: 124, type: !45)
!3056 = !DILocation(line: 0, scope: !3019)
!3057 = !DILocation(line: 124, column: 51, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3019, file: !2892, line: 124, column: 9)
!3059 = !DILocation(line: 125, column: 46, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3058, file: !2892, line: 124, column: 67)
!3061 = !DILocalVariable(name: "below_pivot", scope: !3060, file: !2892, line: 125, type: !14)
!3062 = !DILocation(line: 0, scope: !3060)
!3063 = !DILocation(line: 126, column: 74, scope: !3060)
!3064 = !DILocation(line: 126, column: 68, scope: !3060)
!3065 = !DILocation(line: 126, column: 41, scope: !3060)
!3066 = !DILocalVariable(name: "elt_to_elim", scope: !3060, file: !2892, line: 126, type: !14)
!3067 = !DILocation(line: 128, column: 63, scope: !3060)
!3068 = !DILocation(line: 129, column: 52, scope: !3060)
!3069 = !DILocation(line: 129, column: 46, scope: !3060)
!3070 = !DILocation(line: 128, column: 13, scope: !3060)
!3071 = !DILocation(line: 124, column: 63, scope: !3058)
!3072 = !DILocation(line: 124, column: 9, scope: !3058)
!3073 = distinct !{!3073, !3018, !3074, !244}
!3074 = !DILocation(line: 130, column: 9, scope: !3019)
!3075 = !DILocation(line: 132, column: 19, scope: !2940)
!3076 = !DILocation(line: 77, column: 57, scope: !2936)
!3077 = !DILocation(line: 77, column: 5, scope: !2936)
!3078 = distinct !{!3078, !2919, !3079, !244}
!3079 = !DILocation(line: 133, column: 5, scope: !2920)
!3080 = !DILocation(line: 138, scope: !2938)
!3081 = !DILocalVariable(name: "i", scope: !2938, file: !2892, line: 138, type: !45)
!3082 = !DILocation(line: 0, scope: !2938)
!3083 = !DILocation(line: 138, column: 23, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !2938, file: !2892, line: 138, column: 5)
!3085 = !DILocation(line: 139, column: 47, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3084, file: !2892, line: 138, column: 37)
!3087 = !DILocation(line: 139, column: 43, scope: !3086)
!3088 = !DILocation(line: 139, column: 9, scope: !3086)
!3089 = !DILocalVariable(name: "j", scope: !3090, file: !2892, line: 140, type: !45)
!3090 = distinct !DILexicalBlock(scope: !3086, file: !2892, line: 140, column: 9)
!3091 = !DILocation(line: 0, scope: !3090)
!3092 = !DILocation(line: 140, column: 14, scope: !3090)
!3093 = !DILocation(line: 140, scope: !3090)
!3094 = !DILocation(line: 140, column: 27, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3090, file: !2892, line: 140, column: 9)
!3096 = !DILocation(line: 140, column: 9, scope: !3090)
!3097 = !DILocation(line: 141, column: 32, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3095, file: !2892, line: 140, column: 41)
!3099 = !DILocation(line: 141, column: 17, scope: !3098)
!3100 = !DILocation(line: 141, column: 13, scope: !3098)
!3101 = !DILocation(line: 141, column: 30, scope: !3098)
!3102 = !DILocation(line: 140, column: 37, scope: !3095)
!3103 = !DILocation(line: 140, column: 9, scope: !3095)
!3104 = distinct !{!3104, !3096, !3105, !244}
!3105 = !DILocation(line: 142, column: 9, scope: !3090)
!3106 = !DILocation(line: 138, column: 33, scope: !3084)
!3107 = !DILocation(line: 138, column: 5, scope: !3084)
!3108 = distinct !{!3108, !2937, !3109, !244}
!3109 = !DILocation(line: 143, column: 5, scope: !2938)
!3110 = !DILocation(line: 145, column: 5, scope: !2891)
!3111 = !DILocation(line: 146, column: 5, scope: !2891)
!3112 = !DILocation(line: 147, column: 5, scope: !2891)
!3113 = !DILocation(line: 148, column: 5, scope: !2891)
!3114 = !DILocation(line: 149, column: 1, scope: !2891)
!3115 = distinct !DISubprogram(name: "ct_compare_8", scope: !3116, file: !3116, line: 51, type: !1631, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3116 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3117 = !DILocalVariable(name: "a", arg: 1, scope: !3115, file: !3116, line: 51, type: !14)
!3118 = !DILocation(line: 0, scope: !3115)
!3119 = !DILocalVariable(name: "b", arg: 2, scope: !3115, file: !3116, line: 51, type: !14)
!3120 = !DILocation(line: 52, column: 42, scope: !3115)
!3121 = !DILocation(line: 52, column: 13, scope: !3115)
!3122 = !DILocation(line: 52, column: 71, scope: !3115)
!3123 = !DILocation(line: 52, column: 69, scope: !3115)
!3124 = !DILocation(line: 52, column: 5, scope: !3115)
!3125 = distinct !DISubprogram(name: "mul_fx8", scope: !595, file: !595, line: 28, type: !3126, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!6, !14, !6}
!3128 = !DILocalVariable(name: "a", arg: 1, scope: !3125, file: !595, line: 28, type: !14)
!3129 = !DILocation(line: 0, scope: !3125)
!3130 = !DILocalVariable(name: "b", arg: 2, scope: !3125, file: !595, line: 28, type: !6)
!3131 = !DILocation(line: 31, column: 13, scope: !3125)
!3132 = !DILocation(line: 31, column: 10, scope: !3125)
!3133 = !DILocation(line: 31, column: 17, scope: !3125)
!3134 = !DILocalVariable(name: "p", scope: !3125, file: !595, line: 30, type: !6)
!3135 = !DILocation(line: 32, column: 13, scope: !3125)
!3136 = !DILocation(line: 32, column: 10, scope: !3125)
!3137 = !DILocation(line: 32, column: 17, scope: !3125)
!3138 = !DILocation(line: 32, column: 7, scope: !3125)
!3139 = !DILocation(line: 33, column: 13, scope: !3125)
!3140 = !DILocation(line: 33, column: 10, scope: !3125)
!3141 = !DILocation(line: 33, column: 17, scope: !3125)
!3142 = !DILocation(line: 33, column: 7, scope: !3125)
!3143 = !DILocation(line: 34, column: 13, scope: !3125)
!3144 = !DILocation(line: 34, column: 10, scope: !3125)
!3145 = !DILocation(line: 34, column: 17, scope: !3125)
!3146 = !DILocation(line: 34, column: 7, scope: !3125)
!3147 = !DILocalVariable(name: "top_p", scope: !3125, file: !595, line: 37, type: !6)
!3148 = !DILocation(line: 38, column: 32, scope: !3125)
!3149 = !DILocation(line: 38, column: 47, scope: !3125)
!3150 = !DILocation(line: 38, column: 38, scope: !3125)
!3151 = !DILocation(line: 38, column: 54, scope: !3125)
!3152 = !DILocalVariable(name: "out", scope: !3125, file: !595, line: 38, type: !6)
!3153 = !DILocation(line: 39, column: 5, scope: !3125)
!3154 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2892, file: !2892, line: 24, type: !3155, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{null, !49, !5, !45}
!3157 = !DILocalVariable(name: "in", arg: 1, scope: !3154, file: !2892, line: 24, type: !49)
!3158 = !DILocation(line: 0, scope: !3154)
!3159 = !DILocalVariable(name: "out", arg: 2, scope: !3154, file: !2892, line: 24, type: !5)
!3160 = !DILocalVariable(name: "ncols", arg: 3, scope: !3154, file: !2892, line: 24, type: !45)
!3161 = !DILocalVariable(name: "out8", scope: !3154, file: !2892, line: 26, type: !18)
!3162 = !DILocalVariable(name: "i", scope: !3154, file: !2892, line: 25, type: !45)
!3163 = !DILocation(line: 27, column: 9, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3154, file: !2892, line: 27, column: 5)
!3165 = !DILocation(line: 27, scope: !3164)
!3166 = !DILocation(line: 27, column: 17, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3164, file: !2892, line: 27, column: 5)
!3168 = !DILocation(line: 27, column: 20, scope: !3167)
!3169 = !DILocation(line: 27, column: 5, scope: !3164)
!3170 = !DILocation(line: 31, column: 23, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3167, file: !2892, line: 27, column: 36)
!3172 = !DILocation(line: 31, column: 44, scope: !3171)
!3173 = !DILocation(line: 31, column: 40, scope: !3171)
!3174 = !DILocation(line: 31, column: 48, scope: !3171)
!3175 = !DILocation(line: 31, column: 37, scope: !3171)
!3176 = !DILocation(line: 31, column: 15, scope: !3171)
!3177 = !DILocation(line: 31, column: 9, scope: !3171)
!3178 = !DILocation(line: 31, column: 20, scope: !3171)
!3179 = !DILocation(line: 27, column: 31, scope: !3167)
!3180 = !DILocation(line: 27, column: 5, scope: !3167)
!3181 = distinct !{!3181, !3169, !3182, !244}
!3182 = !DILocation(line: 33, column: 5, scope: !3164)
!3183 = !DILocation(line: 34, column: 19, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3154, file: !2892, line: 34, column: 9)
!3185 = !DILocation(line: 38, column: 23, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3184, file: !2892, line: 34, column: 24)
!3187 = !DILocation(line: 38, column: 15, scope: !3186)
!3188 = !DILocation(line: 38, column: 9, scope: !3186)
!3189 = !DILocation(line: 38, column: 20, scope: !3186)
!3190 = !DILocation(line: 40, column: 5, scope: !3186)
!3191 = !DILocation(line: 41, column: 1, scope: !3154)
!3192 = distinct !DISubprogram(name: "ct_compare_64", scope: !3116, file: !3116, line: 46, type: !3193, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!6, !45, !45}
!3195 = !DILocalVariable(name: "a", arg: 1, scope: !3192, file: !3116, line: 46, type: !45)
!3196 = !DILocation(line: 0, scope: !3192)
!3197 = !DILocalVariable(name: "b", arg: 2, scope: !3192, file: !3116, line: 46, type: !45)
!3198 = !DILocation(line: 47, column: 38, scope: !3192)
!3199 = !DILocation(line: 47, column: 44, scope: !3192)
!3200 = !DILocation(line: 47, column: 73, scope: !3192)
!3201 = !DILocation(line: 47, column: 71, scope: !3192)
!3202 = !DILocation(line: 47, column: 5, scope: !3192)
!3203 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3116, file: !3116, line: 35, type: !3193, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3204 = !DILocalVariable(name: "a", arg: 1, scope: !3203, file: !3116, line: 35, type: !45)
!3205 = !DILocation(line: 0, scope: !3203)
!3206 = !DILocalVariable(name: "b", arg: 2, scope: !3203, file: !3116, line: 35, type: !45)
!3207 = !DILocalVariable(name: "diff", scope: !3203, file: !3116, line: 36, type: !46)
!3208 = !DILocation(line: 37, column: 30, scope: !3203)
!3209 = !DILocation(line: 37, column: 59, scope: !3203)
!3210 = !DILocation(line: 37, column: 57, scope: !3203)
!3211 = !DILocation(line: 37, column: 5, scope: !3203)
!3212 = distinct !DISubprogram(name: "m_extract_element", scope: !2892, file: !2892, line: 16, type: !3213, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!14, !428, !45}
!3215 = !DILocalVariable(name: "in", arg: 1, scope: !3212, file: !2892, line: 16, type: !428)
!3216 = !DILocation(line: 0, scope: !3212)
!3217 = !DILocalVariable(name: "index", arg: 2, scope: !3212, file: !2892, line: 16, type: !45)
!3218 = !DILocation(line: 17, column: 27, scope: !3212)
!3219 = !DILocalVariable(name: "leg", scope: !3212, file: !2892, line: 17, type: !343)
!3220 = !DILocation(line: 18, column: 30, scope: !3212)
!3221 = !DILocalVariable(name: "offset", scope: !3212, file: !2892, line: 18, type: !343)
!3222 = !DILocation(line: 20, column: 13, scope: !3212)
!3223 = !DILocation(line: 20, column: 31, scope: !3212)
!3224 = !DILocation(line: 20, column: 21, scope: !3212)
!3225 = !DILocation(line: 20, column: 12, scope: !3212)
!3226 = !DILocation(line: 20, column: 5, scope: !3212)
!3227 = distinct !DISubprogram(name: "inverse_f", scope: !595, file: !595, line: 57, type: !3228, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!14, !14}
!3230 = !DILocalVariable(name: "a", arg: 1, scope: !3227, file: !595, line: 57, type: !14)
!3231 = !DILocation(line: 0, scope: !3227)
!3232 = !DILocation(line: 61, column: 24, scope: !3227)
!3233 = !DILocalVariable(name: "a2", scope: !3227, file: !595, line: 61, type: !14)
!3234 = !DILocation(line: 62, column: 24, scope: !3227)
!3235 = !DILocalVariable(name: "a4", scope: !3227, file: !595, line: 62, type: !14)
!3236 = !DILocation(line: 63, column: 24, scope: !3227)
!3237 = !DILocalVariable(name: "a8", scope: !3227, file: !595, line: 63, type: !14)
!3238 = !DILocation(line: 64, column: 24, scope: !3227)
!3239 = !DILocalVariable(name: "a6", scope: !3227, file: !595, line: 64, type: !14)
!3240 = !DILocation(line: 65, column: 25, scope: !3227)
!3241 = !DILocalVariable(name: "a14", scope: !3227, file: !595, line: 65, type: !14)
!3242 = !DILocation(line: 67, column: 5, scope: !3227)
!3243 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3116, file: !3116, line: 94, type: !3244, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{null, !343, !428, !14, !5}
!3246 = !DILocalVariable(name: "legs", arg: 1, scope: !3243, file: !3116, line: 94, type: !343)
!3247 = !DILocation(line: 0, scope: !3243)
!3248 = !DILocalVariable(name: "in", arg: 2, scope: !3243, file: !3116, line: 94, type: !428)
!3249 = !DILocalVariable(name: "a", arg: 3, scope: !3243, file: !3116, line: 94, type: !14)
!3250 = !DILocalVariable(name: "acc", arg: 4, scope: !3243, file: !3116, line: 94, type: !5)
!3251 = !DILocation(line: 95, column: 20, scope: !3243)
!3252 = !DILocalVariable(name: "tab", scope: !3243, file: !3116, line: 95, type: !19)
!3253 = !DILocalVariable(name: "lsb_ask", scope: !3243, file: !3116, line: 97, type: !6)
!3254 = !DILocalVariable(name: "i", scope: !3255, file: !3116, line: 99, type: !45)
!3255 = distinct !DILexicalBlock(scope: !3243, file: !3116, line: 99, column: 5)
!3256 = !DILocation(line: 0, scope: !3255)
!3257 = !DILocation(line: 99, column: 9, scope: !3255)
!3258 = !DILocation(line: 99, scope: !3255)
!3259 = !DILocation(line: 99, column: 20, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3255, file: !3116, line: 99, column: 5)
!3261 = !DILocation(line: 99, column: 5, scope: !3255)
!3262 = !DILocation(line: 100, column: 21, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3260, file: !3116, line: 99, column: 32)
!3264 = !DILocation(line: 100, column: 33, scope: !3263)
!3265 = !DILocation(line: 100, column: 51, scope: !3263)
!3266 = !DILocation(line: 100, column: 46, scope: !3263)
!3267 = !DILocation(line: 100, column: 44, scope: !3263)
!3268 = !DILocation(line: 101, column: 27, scope: !3263)
!3269 = !DILocation(line: 101, column: 33, scope: !3263)
!3270 = !DILocation(line: 101, column: 52, scope: !3263)
!3271 = !DILocation(line: 101, column: 59, scope: !3263)
!3272 = !DILocation(line: 101, column: 46, scope: !3263)
!3273 = !DILocation(line: 101, column: 44, scope: !3263)
!3274 = !DILocation(line: 101, column: 17, scope: !3263)
!3275 = !DILocation(line: 102, column: 21, scope: !3263)
!3276 = !DILocation(line: 102, column: 27, scope: !3263)
!3277 = !DILocation(line: 102, column: 33, scope: !3263)
!3278 = !DILocation(line: 102, column: 52, scope: !3263)
!3279 = !DILocation(line: 102, column: 59, scope: !3263)
!3280 = !DILocation(line: 102, column: 46, scope: !3263)
!3281 = !DILocation(line: 102, column: 44, scope: !3263)
!3282 = !DILocation(line: 102, column: 17, scope: !3263)
!3283 = !DILocation(line: 103, column: 21, scope: !3263)
!3284 = !DILocation(line: 103, column: 27, scope: !3263)
!3285 = !DILocation(line: 103, column: 33, scope: !3263)
!3286 = !DILocation(line: 103, column: 52, scope: !3263)
!3287 = !DILocation(line: 103, column: 59, scope: !3263)
!3288 = !DILocation(line: 103, column: 46, scope: !3263)
!3289 = !DILocation(line: 103, column: 44, scope: !3263)
!3290 = !DILocation(line: 103, column: 17, scope: !3263)
!3291 = !DILocation(line: 100, column: 9, scope: !3263)
!3292 = !DILocation(line: 100, column: 16, scope: !3263)
!3293 = !DILocation(line: 99, column: 29, scope: !3260)
!3294 = !DILocation(line: 99, column: 5, scope: !3260)
!3295 = distinct !{!3295, !3261, !3296, !244}
!3296 = !DILocation(line: 104, column: 5, scope: !3255)
!3297 = !DILocation(line: 105, column: 1, scope: !3243)
!3298 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2892, file: !2892, line: 44, type: !3299, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{null, !45, !428, !18}
!3301 = !DILocalVariable(name: "legs", arg: 1, scope: !3298, file: !2892, line: 44, type: !45)
!3302 = !DILocation(line: 0, scope: !3298)
!3303 = !DILocalVariable(name: "in", arg: 2, scope: !3298, file: !2892, line: 44, type: !428)
!3304 = !DILocalVariable(name: "out", arg: 3, scope: !3298, file: !2892, line: 44, type: !18)
!3305 = !DILocalVariable(name: "in8", scope: !3298, file: !2892, line: 45, type: !49)
!3306 = !DILocalVariable(name: "i", scope: !3307, file: !2892, line: 46, type: !45)
!3307 = distinct !DILexicalBlock(scope: !3298, file: !2892, line: 46, column: 5)
!3308 = !DILocation(line: 0, scope: !3307)
!3309 = !DILocation(line: 46, column: 9, scope: !3307)
!3310 = !DILocation(line: 46, scope: !3307)
!3311 = !DILocation(line: 46, column: 29, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3307, file: !2892, line: 46, column: 5)
!3313 = !DILocation(line: 46, column: 22, scope: !3312)
!3314 = !DILocation(line: 46, column: 5, scope: !3307)
!3315 = !DILocation(line: 51, column: 26, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3312, file: !2892, line: 46, column: 42)
!3317 = !DILocation(line: 51, column: 21, scope: !3316)
!3318 = !DILocation(line: 51, column: 31, scope: !3316)
!3319 = !DILocation(line: 51, column: 9, scope: !3316)
!3320 = !DILocation(line: 51, column: 18, scope: !3316)
!3321 = !DILocation(line: 52, column: 26, scope: !3316)
!3322 = !DILocation(line: 52, column: 21, scope: !3316)
!3323 = !DILocation(line: 52, column: 30, scope: !3316)
!3324 = !DILocation(line: 52, column: 14, scope: !3316)
!3325 = !DILocation(line: 52, column: 9, scope: !3316)
!3326 = !DILocation(line: 52, column: 18, scope: !3316)
!3327 = !DILocation(line: 46, column: 37, scope: !3312)
!3328 = !DILocation(line: 46, column: 5, scope: !3312)
!3329 = distinct !{!3329, !3314, !3330, !244}
!3330 = !DILocation(line: 54, column: 5, scope: !3307)
!3331 = !DILocation(line: 55, column: 1, scope: !3298)
!3332 = distinct !DISubprogram(name: "mul_table", scope: !595, file: !595, line: 129, type: !596, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3333 = !DILocalVariable(name: "b", arg: 1, scope: !3332, file: !595, line: 129, type: !12)
!3334 = !DILocation(line: 0, scope: !3332)
!3335 = !DILocation(line: 130, column: 19, scope: !3332)
!3336 = !DILocation(line: 130, column: 33, scope: !3332)
!3337 = !DILocalVariable(name: "x", scope: !3332, file: !595, line: 130, type: !19)
!3338 = !DILocalVariable(name: "high_nibble_mask", scope: !3332, file: !595, line: 132, type: !19)
!3339 = !DILocation(line: 134, column: 28, scope: !3332)
!3340 = !DILocalVariable(name: "high_half", scope: !3332, file: !595, line: 134, type: !19)
!3341 = !DILocation(line: 135, column: 28, scope: !3332)
!3342 = !DILocation(line: 135, column: 47, scope: !3332)
!3343 = !DILocation(line: 135, column: 34, scope: !3332)
!3344 = !DILocation(line: 135, column: 5, scope: !3332)
!3345 = distinct !DISubprogram(name: "mul_f", scope: !595, file: !595, line: 9, type: !1631, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3346 = !DILocalVariable(name: "a", arg: 1, scope: !3345, file: !595, line: 9, type: !14)
!3347 = !DILocation(line: 0, scope: !3345)
!3348 = !DILocalVariable(name: "b", arg: 2, scope: !3345, file: !595, line: 9, type: !14)
!3349 = !DILocation(line: 14, column: 10, scope: !3345)
!3350 = !DILocation(line: 14, column: 7, scope: !3345)
!3351 = !DILocation(line: 17, column: 17, scope: !3345)
!3352 = !DILocalVariable(name: "p", scope: !3345, file: !595, line: 11, type: !14)
!3353 = !DILocation(line: 18, column: 13, scope: !3345)
!3354 = !DILocation(line: 18, column: 17, scope: !3345)
!3355 = !DILocation(line: 18, column: 7, scope: !3345)
!3356 = !DILocation(line: 19, column: 13, scope: !3345)
!3357 = !DILocation(line: 19, column: 17, scope: !3345)
!3358 = !DILocation(line: 19, column: 7, scope: !3345)
!3359 = !DILocation(line: 20, column: 13, scope: !3345)
!3360 = !DILocation(line: 20, column: 17, scope: !3345)
!3361 = !DILocation(line: 20, column: 7, scope: !3345)
!3362 = !DILocalVariable(name: "top_p", scope: !3345, file: !595, line: 23, type: !14)
!3363 = !DILocation(line: 24, column: 37, scope: !3345)
!3364 = !DILocation(line: 24, column: 52, scope: !3345)
!3365 = !DILocation(line: 24, column: 43, scope: !3345)
!3366 = !DILocation(line: 24, column: 59, scope: !3345)
!3367 = !DILocalVariable(name: "out", scope: !3345, file: !595, line: 24, type: !14)
!3368 = !DILocation(line: 25, column: 5, scope: !3345)
!3369 = distinct !DISubprogram(name: "lincomb", scope: !595, file: !595, line: 70, type: !1639, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3370 = !DILocalVariable(name: "a", arg: 1, scope: !3369, file: !595, line: 70, type: !49)
!3371 = !DILocation(line: 0, scope: !3369)
!3372 = !DILocalVariable(name: "b", arg: 2, scope: !3369, file: !595, line: 71, type: !49)
!3373 = !DILocalVariable(name: "n", arg: 3, scope: !3369, file: !595, line: 71, type: !45)
!3374 = !DILocalVariable(name: "m", arg: 4, scope: !3369, file: !595, line: 71, type: !45)
!3375 = !DILocalVariable(name: "ret", scope: !3369, file: !595, line: 72, type: !14)
!3376 = !DILocalVariable(name: "i", scope: !3377, file: !595, line: 73, type: !45)
!3377 = distinct !DILexicalBlock(scope: !3369, file: !595, line: 73, column: 5)
!3378 = !DILocation(line: 0, scope: !3377)
!3379 = !DILocation(line: 73, column: 10, scope: !3377)
!3380 = !DILocation(line: 73, scope: !3377)
!3381 = !DILocation(line: 73, column: 23, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3377, file: !595, line: 73, column: 5)
!3383 = !DILocation(line: 73, column: 5, scope: !3377)
!3384 = !DILocation(line: 74, column: 27, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3382, file: !595, line: 73, column: 41)
!3386 = !DILocation(line: 74, column: 33, scope: !3385)
!3387 = !DILocation(line: 74, column: 21, scope: !3385)
!3388 = !DILocation(line: 74, column: 15, scope: !3385)
!3389 = !DILocation(line: 73, column: 28, scope: !3382)
!3390 = !DILocation(line: 73, column: 35, scope: !3382)
!3391 = !DILocation(line: 73, column: 5, scope: !3382)
!3392 = distinct !{!3392, !3383, !3393, !244}
!3393 = !DILocation(line: 75, column: 5, scope: !3377)
!3394 = !DILocation(line: 76, column: 5, scope: !3369)
!3395 = distinct !DISubprogram(name: "add_f", scope: !595, file: !595, line: 43, type: !1631, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3396 = !DILocalVariable(name: "a", arg: 1, scope: !3395, file: !595, line: 43, type: !14)
!3397 = !DILocation(line: 0, scope: !3395)
!3398 = !DILocalVariable(name: "b", arg: 2, scope: !3395, file: !595, line: 43, type: !14)
!3399 = !DILocation(line: 44, column: 14, scope: !3395)
!3400 = !DILocation(line: 44, column: 5, scope: !3395)
!3401 = distinct !DISubprogram(name: "shake128_inc_init", scope: !71, file: !71, line: 688, type: !3402, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{null, !3404}
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 32)
!3405 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128incctx", file: !71, line: 31, baseType: !3406)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 29, size: 32, elements: !3407)
!3407 = !{!3408}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3406, file: !71, line: 30, baseType: !5, size: 32)
!3409 = !DILocalVariable(name: "state", arg: 1, scope: !3401, file: !71, line: 688, type: !3404)
!3410 = !DILocation(line: 0, scope: !3401)
!3411 = !DILocation(line: 689, column: 18, scope: !3401)
!3412 = !DILocation(line: 689, column: 16, scope: !3401)
!3413 = !DILocation(line: 690, column: 20, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3401, file: !71, line: 690, column: 9)
!3415 = !DILocation(line: 691, column: 9, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3414, file: !71, line: 690, column: 29)
!3417 = !DILocation(line: 692, column: 5, scope: !3416)
!3418 = !DILocation(line: 693, column: 28, scope: !3401)
!3419 = !DILocation(line: 693, column: 5, scope: !3401)
!3420 = !DILocation(line: 694, column: 1, scope: !3401)
!3421 = distinct !DISubprogram(name: "keccak_inc_init", scope: !71, file: !71, line: 580, type: !26, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3422 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3421, file: !71, line: 580, type: !5)
!3423 = !DILocation(line: 0, scope: !3421)
!3424 = !DILocalVariable(name: "i", scope: !3421, file: !71, line: 581, type: !15)
!3425 = !DILocation(line: 583, column: 10, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3421, file: !71, line: 583, column: 5)
!3427 = !DILocation(line: 583, scope: !3426)
!3428 = !DILocation(line: 583, column: 19, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3426, file: !71, line: 583, column: 5)
!3430 = !DILocation(line: 583, column: 5, scope: !3426)
!3431 = !DILocation(line: 584, column: 9, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3429, file: !71, line: 583, column: 30)
!3433 = !DILocation(line: 584, column: 18, scope: !3432)
!3434 = !DILocation(line: 583, column: 25, scope: !3429)
!3435 = !DILocation(line: 583, column: 5, scope: !3429)
!3436 = distinct !{!3436, !3430, !3437, !244}
!3437 = !DILocation(line: 585, column: 5, scope: !3426)
!3438 = !DILocation(line: 586, column: 5, scope: !3421)
!3439 = !DILocation(line: 586, column: 15, scope: !3421)
!3440 = !DILocation(line: 587, column: 1, scope: !3421)
!3441 = distinct !DISubprogram(name: "shake128_inc_absorb", scope: !71, file: !71, line: 696, type: !3442, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{null, !3404, !257, !15}
!3444 = !DILocalVariable(name: "state", arg: 1, scope: !3441, file: !71, line: 696, type: !3404)
!3445 = !DILocation(line: 0, scope: !3441)
!3446 = !DILocalVariable(name: "input", arg: 2, scope: !3441, file: !71, line: 696, type: !257)
!3447 = !DILocalVariable(name: "inlen", arg: 3, scope: !3441, file: !71, line: 696, type: !15)
!3448 = !DILocation(line: 697, column: 30, scope: !3441)
!3449 = !DILocation(line: 697, column: 5, scope: !3441)
!3450 = !DILocation(line: 698, column: 1, scope: !3441)
!3451 = distinct !DISubprogram(name: "keccak_inc_absorb", scope: !71, file: !71, line: 603, type: !3452, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{null, !5, !19, !257, !15}
!3454 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3451, file: !71, line: 603, type: !5)
!3455 = !DILocation(line: 0, scope: !3451)
!3456 = !DILocalVariable(name: "r", arg: 2, scope: !3451, file: !71, line: 603, type: !19)
!3457 = !DILocalVariable(name: "m", arg: 3, scope: !3451, file: !71, line: 603, type: !257)
!3458 = !DILocalVariable(name: "mlen", arg: 4, scope: !3451, file: !71, line: 604, type: !15)
!3459 = !DILocation(line: 608, column: 5, scope: !3451)
!3460 = !DILocation(line: 608, column: 12, scope: !3451)
!3461 = !DILocation(line: 608, column: 19, scope: !3451)
!3462 = !DILocation(line: 608, column: 17, scope: !3451)
!3463 = !DILocation(line: 608, column: 32, scope: !3451)
!3464 = !DILocation(line: 608, column: 29, scope: !3451)
!3465 = !DILocation(line: 609, column: 9, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3467, file: !71, line: 609, column: 9)
!3467 = distinct !DILexicalBlock(scope: !3451, file: !71, line: 608, column: 35)
!3468 = !DILocation(line: 621, column: 5, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3451, file: !71, line: 621, column: 5)
!3470 = !DILocation(line: 609, scope: !3466)
!3471 = !DILocalVariable(name: "i", scope: !3451, file: !71, line: 605, type: !15)
!3472 = !DILocation(line: 609, column: 39, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3466, file: !71, line: 609, column: 9)
!3474 = !DILocation(line: 609, column: 29, scope: !3473)
!3475 = !DILocation(line: 609, column: 27, scope: !3473)
!3476 = !DILocation(line: 609, column: 23, scope: !3473)
!3477 = !DILocation(line: 612, column: 54, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3473, file: !71, line: 609, column: 55)
!3479 = !DILocation(line: 612, column: 44, scope: !3478)
!3480 = !DILocation(line: 612, column: 69, scope: !3478)
!3481 = !DILocation(line: 612, column: 81, scope: !3478)
!3482 = !DILocation(line: 612, column: 79, scope: !3478)
!3483 = !DILocation(line: 612, column: 65, scope: !3478)
!3484 = !DILocation(line: 612, column: 59, scope: !3478)
!3485 = !DILocation(line: 612, column: 20, scope: !3478)
!3486 = !DILocation(line: 612, column: 32, scope: !3478)
!3487 = !DILocation(line: 612, column: 30, scope: !3478)
!3488 = !DILocation(line: 612, column: 35, scope: !3478)
!3489 = !DILocation(line: 612, column: 13, scope: !3478)
!3490 = !DILocation(line: 612, column: 41, scope: !3478)
!3491 = !DILocation(line: 609, column: 51, scope: !3473)
!3492 = !DILocation(line: 609, column: 9, scope: !3473)
!3493 = distinct !{!3493, !3465, !3494, !244}
!3494 = !DILocation(line: 613, column: 9, scope: !3466)
!3495 = !DILocation(line: 614, column: 30, scope: !3467)
!3496 = !DILocation(line: 614, column: 17, scope: !3467)
!3497 = !DILocation(line: 614, column: 14, scope: !3467)
!3498 = !DILocation(line: 615, column: 11, scope: !3467)
!3499 = !DILocation(line: 616, column: 9, scope: !3467)
!3500 = !DILocation(line: 616, column: 19, scope: !3467)
!3501 = !DILocation(line: 618, column: 9, scope: !3467)
!3502 = distinct !{!3502, !3459, !3503, !244}
!3503 = !DILocation(line: 619, column: 5, scope: !3451)
!3504 = !DILocation(line: 621, scope: !3469)
!3505 = !DILocation(line: 621, column: 19, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3469, file: !71, line: 621, column: 5)
!3507 = !DILocation(line: 622, column: 50, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3506, file: !71, line: 621, column: 32)
!3509 = !DILocation(line: 622, column: 40, scope: !3508)
!3510 = !DILocation(line: 622, column: 65, scope: !3508)
!3511 = !DILocation(line: 622, column: 77, scope: !3508)
!3512 = !DILocation(line: 622, column: 75, scope: !3508)
!3513 = !DILocation(line: 622, column: 61, scope: !3508)
!3514 = !DILocation(line: 622, column: 55, scope: !3508)
!3515 = !DILocation(line: 622, column: 16, scope: !3508)
!3516 = !DILocation(line: 622, column: 28, scope: !3508)
!3517 = !DILocation(line: 622, column: 26, scope: !3508)
!3518 = !DILocation(line: 622, column: 31, scope: !3508)
!3519 = !DILocation(line: 622, column: 9, scope: !3508)
!3520 = !DILocation(line: 622, column: 37, scope: !3508)
!3521 = !DILocation(line: 621, column: 28, scope: !3506)
!3522 = !DILocation(line: 621, column: 5, scope: !3506)
!3523 = distinct !{!3523, !3468, !3524, !244}
!3524 = !DILocation(line: 623, column: 5, scope: !3469)
!3525 = !DILocation(line: 624, column: 18, scope: !3451)
!3526 = !DILocation(line: 624, column: 5, scope: !3451)
!3527 = !DILocation(line: 624, column: 15, scope: !3451)
!3528 = !DILocation(line: 625, column: 1, scope: !3451)
!3529 = distinct !DISubprogram(name: "KeccakF1600_StatePermute", scope: !71, file: !71, line: 236, type: !26, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3530 = !DILocalVariable(name: "state", arg: 1, scope: !3529, file: !71, line: 236, type: !5)
!3531 = !DILocation(line: 0, scope: !3529)
!3532 = !DILocation(line: 253, column: 11, scope: !3529)
!3533 = !DILocalVariable(name: "Aba", scope: !3529, file: !71, line: 239, type: !6)
!3534 = !DILocation(line: 254, column: 11, scope: !3529)
!3535 = !DILocalVariable(name: "Abe", scope: !3529, file: !71, line: 239, type: !6)
!3536 = !DILocation(line: 255, column: 11, scope: !3529)
!3537 = !DILocalVariable(name: "Abi", scope: !3529, file: !71, line: 239, type: !6)
!3538 = !DILocation(line: 256, column: 11, scope: !3529)
!3539 = !DILocalVariable(name: "Abo", scope: !3529, file: !71, line: 239, type: !6)
!3540 = !DILocation(line: 257, column: 11, scope: !3529)
!3541 = !DILocalVariable(name: "Abu", scope: !3529, file: !71, line: 239, type: !6)
!3542 = !DILocation(line: 258, column: 11, scope: !3529)
!3543 = !DILocalVariable(name: "Aga", scope: !3529, file: !71, line: 240, type: !6)
!3544 = !DILocation(line: 259, column: 11, scope: !3529)
!3545 = !DILocalVariable(name: "Age", scope: !3529, file: !71, line: 240, type: !6)
!3546 = !DILocation(line: 260, column: 11, scope: !3529)
!3547 = !DILocalVariable(name: "Agi", scope: !3529, file: !71, line: 240, type: !6)
!3548 = !DILocation(line: 261, column: 11, scope: !3529)
!3549 = !DILocalVariable(name: "Ago", scope: !3529, file: !71, line: 240, type: !6)
!3550 = !DILocation(line: 262, column: 11, scope: !3529)
!3551 = !DILocalVariable(name: "Agu", scope: !3529, file: !71, line: 240, type: !6)
!3552 = !DILocation(line: 263, column: 11, scope: !3529)
!3553 = !DILocalVariable(name: "Aka", scope: !3529, file: !71, line: 241, type: !6)
!3554 = !DILocation(line: 264, column: 11, scope: !3529)
!3555 = !DILocalVariable(name: "Ake", scope: !3529, file: !71, line: 241, type: !6)
!3556 = !DILocation(line: 265, column: 11, scope: !3529)
!3557 = !DILocalVariable(name: "Aki", scope: !3529, file: !71, line: 241, type: !6)
!3558 = !DILocation(line: 266, column: 11, scope: !3529)
!3559 = !DILocalVariable(name: "Ako", scope: !3529, file: !71, line: 241, type: !6)
!3560 = !DILocation(line: 267, column: 11, scope: !3529)
!3561 = !DILocalVariable(name: "Aku", scope: !3529, file: !71, line: 241, type: !6)
!3562 = !DILocation(line: 268, column: 11, scope: !3529)
!3563 = !DILocalVariable(name: "Ama", scope: !3529, file: !71, line: 242, type: !6)
!3564 = !DILocation(line: 269, column: 11, scope: !3529)
!3565 = !DILocalVariable(name: "Ame", scope: !3529, file: !71, line: 242, type: !6)
!3566 = !DILocation(line: 270, column: 11, scope: !3529)
!3567 = !DILocalVariable(name: "Ami", scope: !3529, file: !71, line: 242, type: !6)
!3568 = !DILocation(line: 271, column: 11, scope: !3529)
!3569 = !DILocalVariable(name: "Amo", scope: !3529, file: !71, line: 242, type: !6)
!3570 = !DILocation(line: 272, column: 11, scope: !3529)
!3571 = !DILocalVariable(name: "Amu", scope: !3529, file: !71, line: 242, type: !6)
!3572 = !DILocation(line: 273, column: 11, scope: !3529)
!3573 = !DILocalVariable(name: "Asa", scope: !3529, file: !71, line: 243, type: !6)
!3574 = !DILocation(line: 274, column: 11, scope: !3529)
!3575 = !DILocalVariable(name: "Ase", scope: !3529, file: !71, line: 243, type: !6)
!3576 = !DILocation(line: 275, column: 11, scope: !3529)
!3577 = !DILocalVariable(name: "Asi", scope: !3529, file: !71, line: 243, type: !6)
!3578 = !DILocation(line: 276, column: 11, scope: !3529)
!3579 = !DILocalVariable(name: "Aso", scope: !3529, file: !71, line: 243, type: !6)
!3580 = !DILocation(line: 277, column: 11, scope: !3529)
!3581 = !DILocalVariable(name: "Asu", scope: !3529, file: !71, line: 243, type: !6)
!3582 = !DILocalVariable(name: "round", scope: !3529, file: !71, line: 237, type: !45)
!3583 = !DILocation(line: 279, column: 10, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3529, file: !71, line: 279, column: 5)
!3585 = !DILocation(line: 279, scope: !3584)
!3586 = !DILocation(line: 279, column: 27, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3584, file: !71, line: 279, column: 5)
!3588 = !DILocation(line: 279, column: 5, scope: !3584)
!3589 = !DILocalVariable(name: "BCa", scope: !3529, file: !71, line: 244, type: !6)
!3590 = !DILocalVariable(name: "BCe", scope: !3529, file: !71, line: 244, type: !6)
!3591 = !DILocalVariable(name: "BCi", scope: !3529, file: !71, line: 244, type: !6)
!3592 = !DILocalVariable(name: "BCo", scope: !3529, file: !71, line: 244, type: !6)
!3593 = !DILocalVariable(name: "BCu", scope: !3529, file: !71, line: 244, type: !6)
!3594 = !DILocalVariable(name: "Da", scope: !3529, file: !71, line: 245, type: !6)
!3595 = !DILocalVariable(name: "De", scope: !3529, file: !71, line: 245, type: !6)
!3596 = !DILocalVariable(name: "Di", scope: !3529, file: !71, line: 245, type: !6)
!3597 = !DILocalVariable(name: "Do", scope: !3529, file: !71, line: 245, type: !6)
!3598 = !DILocalVariable(name: "Du", scope: !3529, file: !71, line: 245, type: !6)
!3599 = !DILocalVariable(name: "Eba", scope: !3529, file: !71, line: 246, type: !6)
!3600 = !DILocalVariable(name: "Ebe", scope: !3529, file: !71, line: 246, type: !6)
!3601 = !DILocalVariable(name: "Ebi", scope: !3529, file: !71, line: 246, type: !6)
!3602 = !DILocalVariable(name: "Ebo", scope: !3529, file: !71, line: 246, type: !6)
!3603 = !DILocalVariable(name: "Ebu", scope: !3529, file: !71, line: 246, type: !6)
!3604 = !DILocalVariable(name: "Ega", scope: !3529, file: !71, line: 247, type: !6)
!3605 = !DILocalVariable(name: "Ege", scope: !3529, file: !71, line: 247, type: !6)
!3606 = !DILocalVariable(name: "Egi", scope: !3529, file: !71, line: 247, type: !6)
!3607 = !DILocalVariable(name: "Ego", scope: !3529, file: !71, line: 247, type: !6)
!3608 = !DILocalVariable(name: "Egu", scope: !3529, file: !71, line: 247, type: !6)
!3609 = !DILocalVariable(name: "Eka", scope: !3529, file: !71, line: 248, type: !6)
!3610 = !DILocalVariable(name: "Eke", scope: !3529, file: !71, line: 248, type: !6)
!3611 = !DILocalVariable(name: "Eki", scope: !3529, file: !71, line: 248, type: !6)
!3612 = !DILocalVariable(name: "Eko", scope: !3529, file: !71, line: 248, type: !6)
!3613 = !DILocalVariable(name: "Eku", scope: !3529, file: !71, line: 248, type: !6)
!3614 = !DILocalVariable(name: "Ema", scope: !3529, file: !71, line: 249, type: !6)
!3615 = !DILocalVariable(name: "Eme", scope: !3529, file: !71, line: 249, type: !6)
!3616 = !DILocalVariable(name: "Emi", scope: !3529, file: !71, line: 249, type: !6)
!3617 = !DILocalVariable(name: "Emo", scope: !3529, file: !71, line: 249, type: !6)
!3618 = !DILocalVariable(name: "Emu", scope: !3529, file: !71, line: 249, type: !6)
!3619 = !DILocalVariable(name: "Esa", scope: !3529, file: !71, line: 250, type: !6)
!3620 = !DILocalVariable(name: "Ese", scope: !3529, file: !71, line: 250, type: !6)
!3621 = !DILocalVariable(name: "Esi", scope: !3529, file: !71, line: 250, type: !6)
!3622 = !DILocalVariable(name: "Eso", scope: !3529, file: !71, line: 250, type: !6)
!3623 = !DILocalVariable(name: "Esu", scope: !3529, file: !71, line: 250, type: !6)
!3624 = !DILocation(line: 283, column: 19, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3587, file: !71, line: 279, column: 50)
!3626 = !DILocation(line: 283, column: 25, scope: !3625)
!3627 = !DILocation(line: 283, column: 31, scope: !3625)
!3628 = !DILocation(line: 283, column: 37, scope: !3625)
!3629 = !DILocation(line: 285, column: 19, scope: !3625)
!3630 = !DILocation(line: 285, column: 25, scope: !3625)
!3631 = !DILocation(line: 285, column: 31, scope: !3625)
!3632 = !DILocation(line: 285, column: 37, scope: !3625)
!3633 = !DILocation(line: 291, column: 20, scope: !3625)
!3634 = !DILocation(line: 291, column: 18, scope: !3625)
!3635 = !DILocation(line: 361, column: 13, scope: !3625)
!3636 = !DILocation(line: 362, column: 15, scope: !3625)
!3637 = !DILocation(line: 282, column: 19, scope: !3625)
!3638 = !DILocation(line: 282, column: 25, scope: !3625)
!3639 = !DILocation(line: 282, column: 31, scope: !3625)
!3640 = !DILocation(line: 282, column: 37, scope: !3625)
!3641 = !DILocation(line: 288, column: 20, scope: !3625)
!3642 = !DILocation(line: 288, column: 18, scope: !3625)
!3643 = !DILocation(line: 365, column: 13, scope: !3625)
!3644 = !DILocation(line: 366, column: 15, scope: !3625)
!3645 = !DILocation(line: 284, column: 19, scope: !3625)
!3646 = !DILocation(line: 284, column: 25, scope: !3625)
!3647 = !DILocation(line: 284, column: 31, scope: !3625)
!3648 = !DILocation(line: 284, column: 37, scope: !3625)
!3649 = !DILocation(line: 281, column: 19, scope: !3625)
!3650 = !DILocation(line: 281, column: 25, scope: !3625)
!3651 = !DILocation(line: 281, column: 31, scope: !3625)
!3652 = !DILocation(line: 281, column: 37, scope: !3625)
!3653 = !DILocation(line: 292, column: 20, scope: !3625)
!3654 = !DILocation(line: 292, column: 18, scope: !3625)
!3655 = !DILocation(line: 363, column: 13, scope: !3625)
!3656 = !DILocation(line: 364, column: 15, scope: !3625)
!3657 = !DILocation(line: 370, column: 23, scope: !3625)
!3658 = !DILocation(line: 370, column: 29, scope: !3625)
!3659 = !DILocation(line: 370, column: 19, scope: !3625)
!3660 = !DILocation(line: 290, column: 20, scope: !3625)
!3661 = !DILocation(line: 290, column: 18, scope: !3625)
!3662 = !DILocation(line: 298, column: 13, scope: !3625)
!3663 = !DILocation(line: 299, column: 15, scope: !3625)
!3664 = !DILocation(line: 289, column: 20, scope: !3625)
!3665 = !DILocation(line: 289, column: 18, scope: !3625)
!3666 = !DILocation(line: 296, column: 13, scope: !3625)
!3667 = !DILocation(line: 297, column: 15, scope: !3625)
!3668 = !DILocation(line: 304, column: 23, scope: !3625)
!3669 = !DILocation(line: 304, column: 29, scope: !3625)
!3670 = !DILocation(line: 305, column: 16, scope: !3625)
!3671 = !DILocation(line: 305, column: 13, scope: !3625)
!3672 = !DILocation(line: 294, column: 13, scope: !3625)
!3673 = !DILocation(line: 311, column: 13, scope: !3625)
!3674 = !DILocation(line: 312, column: 15, scope: !3625)
!3675 = !DILocation(line: 315, column: 13, scope: !3625)
!3676 = !DILocation(line: 316, column: 15, scope: !3625)
!3677 = !DILocation(line: 313, column: 13, scope: !3625)
!3678 = !DILocation(line: 314, column: 15, scope: !3625)
!3679 = !DILocation(line: 321, column: 23, scope: !3625)
!3680 = !DILocation(line: 321, column: 29, scope: !3625)
!3681 = !DILocation(line: 321, column: 19, scope: !3625)
!3682 = !DILocation(line: 376, column: 19, scope: !3625)
!3683 = !DILocation(line: 327, column: 13, scope: !3625)
!3684 = !DILocation(line: 328, column: 15, scope: !3625)
!3685 = !DILocation(line: 331, column: 13, scope: !3625)
!3686 = !DILocation(line: 332, column: 15, scope: !3625)
!3687 = !DILocation(line: 329, column: 13, scope: !3625)
!3688 = !DILocation(line: 330, column: 15, scope: !3625)
!3689 = !DILocation(line: 337, column: 23, scope: !3625)
!3690 = !DILocation(line: 337, column: 29, scope: !3625)
!3691 = !DILocation(line: 337, column: 19, scope: !3625)
!3692 = !DILocation(line: 376, column: 25, scope: !3625)
!3693 = !DILocation(line: 343, column: 13, scope: !3625)
!3694 = !DILocation(line: 344, column: 15, scope: !3625)
!3695 = !DILocation(line: 347, column: 13, scope: !3625)
!3696 = !DILocation(line: 348, column: 15, scope: !3625)
!3697 = !DILocation(line: 345, column: 13, scope: !3625)
!3698 = !DILocation(line: 346, column: 15, scope: !3625)
!3699 = !DILocation(line: 353, column: 23, scope: !3625)
!3700 = !DILocation(line: 353, column: 29, scope: !3625)
!3701 = !DILocation(line: 353, column: 19, scope: !3625)
!3702 = !DILocation(line: 376, column: 31, scope: !3625)
!3703 = !DILocation(line: 359, column: 13, scope: !3625)
!3704 = !DILocation(line: 360, column: 15, scope: !3625)
!3705 = !DILocation(line: 369, column: 23, scope: !3625)
!3706 = !DILocation(line: 369, column: 29, scope: !3625)
!3707 = !DILocation(line: 369, column: 19, scope: !3625)
!3708 = !DILocation(line: 376, column: 37, scope: !3625)
!3709 = !DILocation(line: 302, column: 13, scope: !3625)
!3710 = !DILocation(line: 303, column: 15, scope: !3625)
!3711 = !DILocation(line: 300, column: 13, scope: !3625)
!3712 = !DILocation(line: 301, column: 15, scope: !3625)
!3713 = !DILocation(line: 307, column: 23, scope: !3625)
!3714 = !DILocation(line: 307, column: 29, scope: !3625)
!3715 = !DILocation(line: 307, column: 19, scope: !3625)
!3716 = !DILocation(line: 319, column: 13, scope: !3625)
!3717 = !DILocation(line: 320, column: 15, scope: !3625)
!3718 = !DILocation(line: 317, column: 13, scope: !3625)
!3719 = !DILocation(line: 318, column: 15, scope: !3625)
!3720 = !DILocation(line: 323, column: 23, scope: !3625)
!3721 = !DILocation(line: 323, column: 29, scope: !3625)
!3722 = !DILocation(line: 323, column: 19, scope: !3625)
!3723 = !DILocation(line: 378, column: 19, scope: !3625)
!3724 = !DILocation(line: 335, column: 13, scope: !3625)
!3725 = !DILocation(line: 336, column: 15, scope: !3625)
!3726 = !DILocation(line: 333, column: 13, scope: !3625)
!3727 = !DILocation(line: 334, column: 15, scope: !3625)
!3728 = !DILocation(line: 339, column: 23, scope: !3625)
!3729 = !DILocation(line: 339, column: 29, scope: !3625)
!3730 = !DILocation(line: 339, column: 19, scope: !3625)
!3731 = !DILocation(line: 378, column: 25, scope: !3625)
!3732 = !DILocation(line: 351, column: 13, scope: !3625)
!3733 = !DILocation(line: 352, column: 15, scope: !3625)
!3734 = !DILocation(line: 349, column: 13, scope: !3625)
!3735 = !DILocation(line: 350, column: 15, scope: !3625)
!3736 = !DILocation(line: 355, column: 23, scope: !3625)
!3737 = !DILocation(line: 355, column: 29, scope: !3625)
!3738 = !DILocation(line: 355, column: 19, scope: !3625)
!3739 = !DILocation(line: 378, column: 31, scope: !3625)
!3740 = !DILocation(line: 367, column: 13, scope: !3625)
!3741 = !DILocation(line: 368, column: 15, scope: !3625)
!3742 = !DILocation(line: 371, column: 23, scope: !3625)
!3743 = !DILocation(line: 371, column: 29, scope: !3625)
!3744 = !DILocation(line: 371, column: 19, scope: !3625)
!3745 = !DILocation(line: 378, column: 37, scope: !3625)
!3746 = !DILocation(line: 384, column: 20, scope: !3625)
!3747 = !DILocation(line: 384, column: 18, scope: !3625)
!3748 = !DILocation(line: 462, column: 13, scope: !3625)
!3749 = !DILocation(line: 463, column: 15, scope: !3625)
!3750 = !DILocation(line: 324, column: 23, scope: !3625)
!3751 = !DILocation(line: 324, column: 29, scope: !3625)
!3752 = !DILocation(line: 324, column: 19, scope: !3625)
!3753 = !DILocation(line: 309, column: 23, scope: !3625)
!3754 = !DILocation(line: 309, column: 29, scope: !3625)
!3755 = !DILocation(line: 309, column: 19, scope: !3625)
!3756 = !DILocation(line: 325, column: 23, scope: !3625)
!3757 = !DILocation(line: 325, column: 29, scope: !3625)
!3758 = !DILocation(line: 325, column: 19, scope: !3625)
!3759 = !DILocation(line: 380, column: 19, scope: !3625)
!3760 = !DILocation(line: 341, column: 23, scope: !3625)
!3761 = !DILocation(line: 341, column: 29, scope: !3625)
!3762 = !DILocation(line: 341, column: 19, scope: !3625)
!3763 = !DILocation(line: 380, column: 25, scope: !3625)
!3764 = !DILocation(line: 357, column: 23, scope: !3625)
!3765 = !DILocation(line: 357, column: 29, scope: !3625)
!3766 = !DILocation(line: 357, column: 19, scope: !3625)
!3767 = !DILocation(line: 380, column: 31, scope: !3625)
!3768 = !DILocation(line: 373, column: 23, scope: !3625)
!3769 = !DILocation(line: 373, column: 29, scope: !3625)
!3770 = !DILocation(line: 373, column: 19, scope: !3625)
!3771 = !DILocation(line: 380, column: 37, scope: !3625)
!3772 = !DILocation(line: 386, column: 20, scope: !3625)
!3773 = !DILocation(line: 386, column: 18, scope: !3625)
!3774 = !DILocation(line: 456, column: 13, scope: !3625)
!3775 = !DILocation(line: 457, column: 15, scope: !3625)
!3776 = !DILocation(line: 306, column: 23, scope: !3625)
!3777 = !DILocation(line: 306, column: 29, scope: !3625)
!3778 = !DILocation(line: 306, column: 19, scope: !3625)
!3779 = !DILocation(line: 322, column: 23, scope: !3625)
!3780 = !DILocation(line: 322, column: 29, scope: !3625)
!3781 = !DILocation(line: 322, column: 19, scope: !3625)
!3782 = !DILocation(line: 377, column: 19, scope: !3625)
!3783 = !DILocation(line: 338, column: 23, scope: !3625)
!3784 = !DILocation(line: 338, column: 29, scope: !3625)
!3785 = !DILocation(line: 338, column: 19, scope: !3625)
!3786 = !DILocation(line: 377, column: 25, scope: !3625)
!3787 = !DILocation(line: 354, column: 23, scope: !3625)
!3788 = !DILocation(line: 354, column: 29, scope: !3625)
!3789 = !DILocation(line: 354, column: 19, scope: !3625)
!3790 = !DILocation(line: 377, column: 31, scope: !3625)
!3791 = !DILocation(line: 377, column: 37, scope: !3625)
!3792 = !DILocation(line: 308, column: 23, scope: !3625)
!3793 = !DILocation(line: 308, column: 29, scope: !3625)
!3794 = !DILocation(line: 308, column: 19, scope: !3625)
!3795 = !DILocation(line: 379, column: 19, scope: !3625)
!3796 = !DILocation(line: 340, column: 23, scope: !3625)
!3797 = !DILocation(line: 340, column: 29, scope: !3625)
!3798 = !DILocation(line: 340, column: 19, scope: !3625)
!3799 = !DILocation(line: 379, column: 25, scope: !3625)
!3800 = !DILocation(line: 356, column: 23, scope: !3625)
!3801 = !DILocation(line: 356, column: 29, scope: !3625)
!3802 = !DILocation(line: 356, column: 19, scope: !3625)
!3803 = !DILocation(line: 379, column: 31, scope: !3625)
!3804 = !DILocation(line: 372, column: 23, scope: !3625)
!3805 = !DILocation(line: 372, column: 29, scope: !3625)
!3806 = !DILocation(line: 372, column: 19, scope: !3625)
!3807 = !DILocation(line: 379, column: 37, scope: !3625)
!3808 = !DILocation(line: 385, column: 20, scope: !3625)
!3809 = !DILocation(line: 385, column: 18, scope: !3625)
!3810 = !DILocation(line: 454, column: 13, scope: !3625)
!3811 = !DILocation(line: 455, column: 15, scope: !3625)
!3812 = !DILocation(line: 468, column: 23, scope: !3625)
!3813 = !DILocation(line: 468, column: 29, scope: !3625)
!3814 = !DILocation(line: 468, column: 19, scope: !3625)
!3815 = !DILocation(line: 383, column: 20, scope: !3625)
!3816 = !DILocation(line: 383, column: 18, scope: !3625)
!3817 = !DILocation(line: 460, column: 13, scope: !3625)
!3818 = !DILocation(line: 461, column: 15, scope: !3625)
!3819 = !DILocation(line: 467, column: 23, scope: !3625)
!3820 = !DILocation(line: 467, column: 29, scope: !3625)
!3821 = !DILocation(line: 467, column: 19, scope: !3625)
!3822 = !DILocation(line: 387, column: 20, scope: !3625)
!3823 = !DILocation(line: 387, column: 18, scope: !3625)
!3824 = !DILocation(line: 458, column: 13, scope: !3625)
!3825 = !DILocation(line: 459, column: 15, scope: !3625)
!3826 = !DILocation(line: 466, column: 23, scope: !3625)
!3827 = !DILocation(line: 466, column: 29, scope: !3625)
!3828 = !DILocation(line: 466, column: 19, scope: !3625)
!3829 = !DILocation(line: 465, column: 23, scope: !3625)
!3830 = !DILocation(line: 465, column: 29, scope: !3625)
!3831 = !DILocation(line: 465, column: 19, scope: !3625)
!3832 = !DILocation(line: 464, column: 23, scope: !3625)
!3833 = !DILocation(line: 464, column: 29, scope: !3625)
!3834 = !DILocation(line: 464, column: 19, scope: !3625)
!3835 = !DILocation(line: 446, column: 13, scope: !3625)
!3836 = !DILocation(line: 447, column: 15, scope: !3625)
!3837 = !DILocation(line: 440, column: 13, scope: !3625)
!3838 = !DILocation(line: 441, column: 15, scope: !3625)
!3839 = !DILocation(line: 438, column: 13, scope: !3625)
!3840 = !DILocation(line: 439, column: 15, scope: !3625)
!3841 = !DILocation(line: 452, column: 23, scope: !3625)
!3842 = !DILocation(line: 452, column: 29, scope: !3625)
!3843 = !DILocation(line: 452, column: 19, scope: !3625)
!3844 = !DILocation(line: 444, column: 13, scope: !3625)
!3845 = !DILocation(line: 445, column: 15, scope: !3625)
!3846 = !DILocation(line: 451, column: 23, scope: !3625)
!3847 = !DILocation(line: 451, column: 29, scope: !3625)
!3848 = !DILocation(line: 451, column: 19, scope: !3625)
!3849 = !DILocation(line: 442, column: 13, scope: !3625)
!3850 = !DILocation(line: 443, column: 15, scope: !3625)
!3851 = !DILocation(line: 450, column: 23, scope: !3625)
!3852 = !DILocation(line: 450, column: 29, scope: !3625)
!3853 = !DILocation(line: 450, column: 19, scope: !3625)
!3854 = !DILocation(line: 449, column: 23, scope: !3625)
!3855 = !DILocation(line: 449, column: 29, scope: !3625)
!3856 = !DILocation(line: 449, column: 19, scope: !3625)
!3857 = !DILocation(line: 448, column: 23, scope: !3625)
!3858 = !DILocation(line: 448, column: 29, scope: !3625)
!3859 = !DILocation(line: 448, column: 19, scope: !3625)
!3860 = !DILocation(line: 430, column: 13, scope: !3625)
!3861 = !DILocation(line: 431, column: 15, scope: !3625)
!3862 = !DILocation(line: 424, column: 13, scope: !3625)
!3863 = !DILocation(line: 425, column: 15, scope: !3625)
!3864 = !DILocation(line: 422, column: 13, scope: !3625)
!3865 = !DILocation(line: 423, column: 15, scope: !3625)
!3866 = !DILocation(line: 436, column: 23, scope: !3625)
!3867 = !DILocation(line: 436, column: 29, scope: !3625)
!3868 = !DILocation(line: 436, column: 19, scope: !3625)
!3869 = !DILocation(line: 428, column: 13, scope: !3625)
!3870 = !DILocation(line: 429, column: 15, scope: !3625)
!3871 = !DILocation(line: 435, column: 23, scope: !3625)
!3872 = !DILocation(line: 435, column: 29, scope: !3625)
!3873 = !DILocation(line: 435, column: 19, scope: !3625)
!3874 = !DILocation(line: 426, column: 13, scope: !3625)
!3875 = !DILocation(line: 427, column: 15, scope: !3625)
!3876 = !DILocation(line: 434, column: 23, scope: !3625)
!3877 = !DILocation(line: 434, column: 29, scope: !3625)
!3878 = !DILocation(line: 434, column: 19, scope: !3625)
!3879 = !DILocation(line: 433, column: 23, scope: !3625)
!3880 = !DILocation(line: 433, column: 29, scope: !3625)
!3881 = !DILocation(line: 433, column: 19, scope: !3625)
!3882 = !DILocation(line: 432, column: 23, scope: !3625)
!3883 = !DILocation(line: 432, column: 29, scope: !3625)
!3884 = !DILocation(line: 432, column: 19, scope: !3625)
!3885 = !DILocation(line: 414, column: 13, scope: !3625)
!3886 = !DILocation(line: 415, column: 15, scope: !3625)
!3887 = !DILocation(line: 408, column: 13, scope: !3625)
!3888 = !DILocation(line: 409, column: 15, scope: !3625)
!3889 = !DILocation(line: 406, column: 13, scope: !3625)
!3890 = !DILocation(line: 407, column: 15, scope: !3625)
!3891 = !DILocation(line: 420, column: 23, scope: !3625)
!3892 = !DILocation(line: 420, column: 29, scope: !3625)
!3893 = !DILocation(line: 420, column: 19, scope: !3625)
!3894 = !DILocation(line: 412, column: 13, scope: !3625)
!3895 = !DILocation(line: 413, column: 15, scope: !3625)
!3896 = !DILocation(line: 419, column: 23, scope: !3625)
!3897 = !DILocation(line: 419, column: 29, scope: !3625)
!3898 = !DILocation(line: 419, column: 19, scope: !3625)
!3899 = !DILocation(line: 410, column: 13, scope: !3625)
!3900 = !DILocation(line: 411, column: 15, scope: !3625)
!3901 = !DILocation(line: 418, column: 23, scope: !3625)
!3902 = !DILocation(line: 418, column: 29, scope: !3625)
!3903 = !DILocation(line: 418, column: 19, scope: !3625)
!3904 = !DILocation(line: 417, column: 23, scope: !3625)
!3905 = !DILocation(line: 417, column: 29, scope: !3625)
!3906 = !DILocation(line: 417, column: 19, scope: !3625)
!3907 = !DILocation(line: 416, column: 23, scope: !3625)
!3908 = !DILocation(line: 416, column: 29, scope: !3625)
!3909 = !DILocation(line: 416, column: 19, scope: !3625)
!3910 = !DILocation(line: 397, column: 13, scope: !3625)
!3911 = !DILocation(line: 398, column: 15, scope: !3625)
!3912 = !DILocation(line: 391, column: 13, scope: !3625)
!3913 = !DILocation(line: 392, column: 15, scope: !3625)
!3914 = !DILocation(line: 389, column: 13, scope: !3625)
!3915 = !DILocation(line: 404, column: 23, scope: !3625)
!3916 = !DILocation(line: 404, column: 29, scope: !3625)
!3917 = !DILocation(line: 404, column: 19, scope: !3625)
!3918 = !DILocation(line: 395, column: 13, scope: !3625)
!3919 = !DILocation(line: 396, column: 15, scope: !3625)
!3920 = !DILocation(line: 403, column: 23, scope: !3625)
!3921 = !DILocation(line: 403, column: 29, scope: !3625)
!3922 = !DILocation(line: 403, column: 19, scope: !3625)
!3923 = !DILocation(line: 393, column: 13, scope: !3625)
!3924 = !DILocation(line: 394, column: 15, scope: !3625)
!3925 = !DILocation(line: 402, column: 23, scope: !3625)
!3926 = !DILocation(line: 402, column: 29, scope: !3625)
!3927 = !DILocation(line: 402, column: 19, scope: !3625)
!3928 = !DILocation(line: 401, column: 23, scope: !3625)
!3929 = !DILocation(line: 401, column: 29, scope: !3625)
!3930 = !DILocation(line: 401, column: 19, scope: !3625)
!3931 = !DILocation(line: 400, column: 45, scope: !3625)
!3932 = !DILocation(line: 400, column: 16, scope: !3625)
!3933 = !DILocation(line: 399, column: 23, scope: !3625)
!3934 = !DILocation(line: 399, column: 29, scope: !3625)
!3935 = !DILocation(line: 400, column: 13, scope: !3625)
!3936 = !DILocation(line: 279, column: 44, scope: !3587)
!3937 = !DILocation(line: 279, column: 5, scope: !3587)
!3938 = distinct !{!3938, !3588, !3939, !244}
!3939 = !DILocation(line: 469, column: 5, scope: !3584)
!3940 = !DILocation(line: 472, column: 14, scope: !3529)
!3941 = !DILocation(line: 473, column: 5, scope: !3529)
!3942 = !DILocation(line: 473, column: 14, scope: !3529)
!3943 = !DILocation(line: 474, column: 5, scope: !3529)
!3944 = !DILocation(line: 474, column: 14, scope: !3529)
!3945 = !DILocation(line: 475, column: 5, scope: !3529)
!3946 = !DILocation(line: 475, column: 14, scope: !3529)
!3947 = !DILocation(line: 476, column: 5, scope: !3529)
!3948 = !DILocation(line: 476, column: 14, scope: !3529)
!3949 = !DILocation(line: 477, column: 5, scope: !3529)
!3950 = !DILocation(line: 477, column: 14, scope: !3529)
!3951 = !DILocation(line: 478, column: 5, scope: !3529)
!3952 = !DILocation(line: 478, column: 14, scope: !3529)
!3953 = !DILocation(line: 479, column: 5, scope: !3529)
!3954 = !DILocation(line: 479, column: 14, scope: !3529)
!3955 = !DILocation(line: 480, column: 5, scope: !3529)
!3956 = !DILocation(line: 480, column: 14, scope: !3529)
!3957 = !DILocation(line: 481, column: 5, scope: !3529)
!3958 = !DILocation(line: 481, column: 14, scope: !3529)
!3959 = !DILocation(line: 482, column: 5, scope: !3529)
!3960 = !DILocation(line: 482, column: 15, scope: !3529)
!3961 = !DILocation(line: 483, column: 5, scope: !3529)
!3962 = !DILocation(line: 483, column: 15, scope: !3529)
!3963 = !DILocation(line: 484, column: 5, scope: !3529)
!3964 = !DILocation(line: 484, column: 15, scope: !3529)
!3965 = !DILocation(line: 485, column: 5, scope: !3529)
!3966 = !DILocation(line: 485, column: 15, scope: !3529)
!3967 = !DILocation(line: 486, column: 5, scope: !3529)
!3968 = !DILocation(line: 486, column: 15, scope: !3529)
!3969 = !DILocation(line: 487, column: 5, scope: !3529)
!3970 = !DILocation(line: 487, column: 15, scope: !3529)
!3971 = !DILocation(line: 488, column: 5, scope: !3529)
!3972 = !DILocation(line: 488, column: 15, scope: !3529)
!3973 = !DILocation(line: 489, column: 5, scope: !3529)
!3974 = !DILocation(line: 489, column: 15, scope: !3529)
!3975 = !DILocation(line: 490, column: 5, scope: !3529)
!3976 = !DILocation(line: 490, column: 15, scope: !3529)
!3977 = !DILocation(line: 491, column: 5, scope: !3529)
!3978 = !DILocation(line: 491, column: 15, scope: !3529)
!3979 = !DILocation(line: 492, column: 5, scope: !3529)
!3980 = !DILocation(line: 492, column: 15, scope: !3529)
!3981 = !DILocation(line: 493, column: 5, scope: !3529)
!3982 = !DILocation(line: 493, column: 15, scope: !3529)
!3983 = !DILocation(line: 494, column: 5, scope: !3529)
!3984 = !DILocation(line: 494, column: 15, scope: !3529)
!3985 = !DILocation(line: 495, column: 5, scope: !3529)
!3986 = !DILocation(line: 495, column: 15, scope: !3529)
!3987 = !DILocation(line: 496, column: 5, scope: !3529)
!3988 = !DILocation(line: 496, column: 15, scope: !3529)
!3989 = !DILocation(line: 497, column: 1, scope: !3529)
!3990 = distinct !DISubprogram(name: "shake128_inc_finalize", scope: !71, file: !71, line: 700, type: !3402, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3991 = !DILocalVariable(name: "state", arg: 1, scope: !3990, file: !71, line: 700, type: !3404)
!3992 = !DILocation(line: 0, scope: !3990)
!3993 = !DILocation(line: 701, column: 32, scope: !3990)
!3994 = !DILocation(line: 701, column: 5, scope: !3990)
!3995 = !DILocation(line: 702, column: 1, scope: !3990)
!3996 = distinct !DISubprogram(name: "keccak_inc_finalize", scope: !71, file: !71, line: 640, type: !3997, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{null, !5, !19, !12}
!3999 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3996, file: !71, line: 640, type: !5)
!4000 = !DILocation(line: 0, scope: !3996)
!4001 = !DILocalVariable(name: "r", arg: 2, scope: !3996, file: !71, line: 640, type: !19)
!4002 = !DILocalVariable(name: "p", arg: 3, scope: !3996, file: !71, line: 640, type: !12)
!4003 = !DILocation(line: 643, column: 30, scope: !3996)
!4004 = !DILocation(line: 643, column: 51, scope: !3996)
!4005 = !DILocation(line: 643, column: 48, scope: !3996)
!4006 = !DILocation(line: 643, column: 42, scope: !3996)
!4007 = !DILocation(line: 643, column: 21, scope: !3996)
!4008 = !DILocation(line: 643, column: 5, scope: !3996)
!4009 = !DILocation(line: 643, column: 27, scope: !3996)
!4010 = !DILocation(line: 644, column: 48, scope: !3996)
!4011 = !DILocation(line: 644, column: 42, scope: !3996)
!4012 = !DILocation(line: 644, column: 14, scope: !3996)
!4013 = !DILocation(line: 644, column: 19, scope: !3996)
!4014 = !DILocation(line: 644, column: 5, scope: !3996)
!4015 = !DILocation(line: 644, column: 25, scope: !3996)
!4016 = !DILocation(line: 645, column: 5, scope: !3996)
!4017 = !DILocation(line: 645, column: 15, scope: !3996)
!4018 = !DILocation(line: 646, column: 1, scope: !3996)
!4019 = distinct !DISubprogram(name: "shake128_inc_squeeze", scope: !71, file: !71, line: 704, type: !4020, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{null, !11, !15, !3404}
!4022 = !DILocalVariable(name: "output", arg: 1, scope: !4019, file: !71, line: 704, type: !11)
!4023 = !DILocation(line: 0, scope: !4019)
!4024 = !DILocalVariable(name: "outlen", arg: 2, scope: !4019, file: !71, line: 704, type: !15)
!4025 = !DILocalVariable(name: "state", arg: 3, scope: !4019, file: !71, line: 704, type: !3404)
!4026 = !DILocation(line: 705, column: 47, scope: !4019)
!4027 = !DILocation(line: 705, column: 5, scope: !4019)
!4028 = !DILocation(line: 706, column: 1, scope: !4019)
!4029 = distinct !DISubprogram(name: "keccak_inc_squeeze", scope: !71, file: !71, line: 661, type: !4030, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{null, !11, !15, !5, !19}
!4032 = !DILocalVariable(name: "h", arg: 1, scope: !4029, file: !71, line: 661, type: !11)
!4033 = !DILocation(line: 0, scope: !4029)
!4034 = !DILocalVariable(name: "outlen", arg: 2, scope: !4029, file: !71, line: 661, type: !15)
!4035 = !DILocalVariable(name: "s_inc", arg: 3, scope: !4029, file: !71, line: 662, type: !5)
!4036 = !DILocalVariable(name: "r", arg: 4, scope: !4029, file: !71, line: 662, type: !19)
!4037 = !DILocalVariable(name: "i", scope: !4029, file: !71, line: 663, type: !15)
!4038 = !DILocation(line: 666, column: 10, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4029, file: !71, line: 666, column: 5)
!4040 = !DILocation(line: 666, scope: !4039)
!4041 = !DILocation(line: 666, column: 19, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4039, file: !71, line: 666, column: 5)
!4043 = !DILocation(line: 666, column: 28, scope: !4042)
!4044 = !DILocation(line: 666, column: 31, scope: !4042)
!4045 = !DILocation(line: 666, column: 35, scope: !4042)
!4046 = !DILocation(line: 666, column: 33, scope: !4042)
!4047 = !DILocation(line: 666, column: 5, scope: !4039)
!4048 = !DILocation(line: 669, column: 33, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4042, file: !71, line: 666, column: 51)
!4050 = !DILocation(line: 669, column: 37, scope: !4049)
!4051 = !DILocation(line: 669, column: 35, scope: !4049)
!4052 = !DILocation(line: 669, column: 49, scope: !4049)
!4053 = !DILocation(line: 669, column: 47, scope: !4049)
!4054 = !DILocation(line: 669, column: 52, scope: !4049)
!4055 = !DILocation(line: 669, column: 26, scope: !4049)
!4056 = !DILocation(line: 669, column: 68, scope: !4049)
!4057 = !DILocation(line: 669, column: 72, scope: !4049)
!4058 = !DILocation(line: 669, column: 70, scope: !4049)
!4059 = !DILocation(line: 669, column: 84, scope: !4049)
!4060 = !DILocation(line: 669, column: 82, scope: !4049)
!4061 = !DILocation(line: 669, column: 64, scope: !4049)
!4062 = !DILocation(line: 669, column: 58, scope: !4049)
!4063 = !DILocation(line: 669, column: 16, scope: !4049)
!4064 = !DILocation(line: 669, column: 9, scope: !4049)
!4065 = !DILocation(line: 669, column: 14, scope: !4049)
!4066 = !DILocation(line: 666, column: 47, scope: !4042)
!4067 = !DILocation(line: 666, column: 5, scope: !4042)
!4068 = distinct !{!4068, !4047, !4069, !244}
!4069 = !DILocation(line: 670, column: 5, scope: !4039)
!4070 = !DILocation(line: 671, column: 7, scope: !4029)
!4071 = !DILocation(line: 672, column: 12, scope: !4029)
!4072 = !DILocation(line: 673, column: 18, scope: !4029)
!4073 = !DILocation(line: 673, column: 5, scope: !4029)
!4074 = !DILocation(line: 673, column: 15, scope: !4029)
!4075 = !DILocation(line: 676, column: 5, scope: !4029)
!4076 = !DILocation(line: 676, column: 19, scope: !4029)
!4077 = !DILocation(line: 677, column: 9, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4029, file: !71, line: 676, column: 24)
!4079 = !DILocation(line: 679, column: 14, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4078, file: !71, line: 679, column: 9)
!4081 = !DILocation(line: 679, scope: !4080)
!4082 = !DILocation(line: 679, column: 32, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4080, file: !71, line: 679, column: 9)
!4084 = !DILocation(line: 679, column: 9, scope: !4080)
!4085 = !DILocation(line: 680, column: 38, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4083, file: !71, line: 679, column: 47)
!4087 = !DILocation(line: 680, column: 30, scope: !4086)
!4088 = !DILocation(line: 680, column: 50, scope: !4086)
!4089 = !DILocation(line: 680, column: 44, scope: !4086)
!4090 = !DILocation(line: 680, column: 20, scope: !4086)
!4091 = !DILocation(line: 680, column: 13, scope: !4086)
!4092 = !DILocation(line: 680, column: 18, scope: !4086)
!4093 = !DILocation(line: 679, column: 43, scope: !4083)
!4094 = !DILocation(line: 679, column: 9, scope: !4083)
!4095 = distinct !{!4095, !4084, !4096, !244}
!4096 = !DILocation(line: 681, column: 9, scope: !4080)
!4097 = !DILocation(line: 682, column: 11, scope: !4078)
!4098 = !DILocation(line: 683, column: 16, scope: !4078)
!4099 = !DILocation(line: 684, column: 23, scope: !4078)
!4100 = !DILocation(line: 684, column: 21, scope: !4078)
!4101 = !DILocation(line: 684, column: 9, scope: !4078)
!4102 = !DILocation(line: 684, column: 19, scope: !4078)
!4103 = distinct !{!4103, !4075, !4104, !244}
!4104 = !DILocation(line: 685, column: 5, scope: !4029)
!4105 = !DILocation(line: 686, column: 1, scope: !4029)
!4106 = distinct !DISubprogram(name: "shake128_inc_ctx_clone", scope: !71, file: !71, line: 708, type: !4107, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{null, !3404, !4109}
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 32)
!4110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3405)
!4111 = !DILocalVariable(name: "dest", arg: 1, scope: !4106, file: !71, line: 708, type: !3404)
!4112 = !DILocation(line: 0, scope: !4106)
!4113 = !DILocalVariable(name: "src", arg: 2, scope: !4106, file: !71, line: 708, type: !4109)
!4114 = !DILocation(line: 709, column: 17, scope: !4106)
!4115 = !DILocation(line: 709, column: 15, scope: !4106)
!4116 = !DILocation(line: 710, column: 19, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4106, file: !71, line: 710, column: 9)
!4118 = !DILocation(line: 711, column: 9, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4117, file: !71, line: 710, column: 28)
!4120 = !DILocation(line: 712, column: 5, scope: !4119)
!4121 = !DILocation(line: 713, column: 18, scope: !4106)
!4122 = !DILocation(line: 713, column: 28, scope: !4106)
!4123 = !DILocation(line: 713, column: 5, scope: !4106)
!4124 = !DILocation(line: 714, column: 1, scope: !4106)
!4125 = distinct !DISubprogram(name: "shake128_inc_ctx_release", scope: !71, file: !71, line: 716, type: !3402, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4126 = !DILocalVariable(name: "state", arg: 1, scope: !4125, file: !71, line: 716, type: !3404)
!4127 = !DILocation(line: 0, scope: !4125)
!4128 = !DILocation(line: 717, column: 17, scope: !4125)
!4129 = !DILocation(line: 717, column: 5, scope: !4125)
!4130 = !DILocation(line: 718, column: 1, scope: !4125)
!4131 = distinct !DISubprogram(name: "shake256_inc_init", scope: !71, file: !71, line: 720, type: !4132, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{null, !4134}
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 32)
!4135 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256incctx", file: !71, line: 41, baseType: !4136)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 39, size: 32, elements: !4137)
!4137 = !{!4138}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4136, file: !71, line: 40, baseType: !5, size: 32)
!4139 = !DILocalVariable(name: "state", arg: 1, scope: !4131, file: !71, line: 720, type: !4134)
!4140 = !DILocation(line: 0, scope: !4131)
!4141 = !DILocation(line: 721, column: 18, scope: !4131)
!4142 = !DILocation(line: 721, column: 16, scope: !4131)
!4143 = !DILocation(line: 722, column: 20, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4131, file: !71, line: 722, column: 9)
!4145 = !DILocation(line: 723, column: 9, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4144, file: !71, line: 722, column: 29)
!4147 = !DILocation(line: 724, column: 5, scope: !4146)
!4148 = !DILocation(line: 725, column: 28, scope: !4131)
!4149 = !DILocation(line: 725, column: 5, scope: !4131)
!4150 = !DILocation(line: 726, column: 1, scope: !4131)
!4151 = distinct !DISubprogram(name: "shake256_inc_absorb", scope: !71, file: !71, line: 728, type: !4152, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{null, !4134, !257, !15}
!4154 = !DILocalVariable(name: "state", arg: 1, scope: !4151, file: !71, line: 728, type: !4134)
!4155 = !DILocation(line: 0, scope: !4151)
!4156 = !DILocalVariable(name: "input", arg: 2, scope: !4151, file: !71, line: 728, type: !257)
!4157 = !DILocalVariable(name: "inlen", arg: 3, scope: !4151, file: !71, line: 728, type: !15)
!4158 = !DILocation(line: 729, column: 30, scope: !4151)
!4159 = !DILocation(line: 729, column: 5, scope: !4151)
!4160 = !DILocation(line: 730, column: 1, scope: !4151)
!4161 = distinct !DISubprogram(name: "shake256_inc_finalize", scope: !71, file: !71, line: 732, type: !4132, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4162 = !DILocalVariable(name: "state", arg: 1, scope: !4161, file: !71, line: 732, type: !4134)
!4163 = !DILocation(line: 0, scope: !4161)
!4164 = !DILocation(line: 733, column: 32, scope: !4161)
!4165 = !DILocation(line: 733, column: 5, scope: !4161)
!4166 = !DILocation(line: 734, column: 1, scope: !4161)
!4167 = distinct !DISubprogram(name: "shake256_inc_squeeze", scope: !71, file: !71, line: 736, type: !4168, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{null, !11, !15, !4134}
!4170 = !DILocalVariable(name: "output", arg: 1, scope: !4167, file: !71, line: 736, type: !11)
!4171 = !DILocation(line: 0, scope: !4167)
!4172 = !DILocalVariable(name: "outlen", arg: 2, scope: !4167, file: !71, line: 736, type: !15)
!4173 = !DILocalVariable(name: "state", arg: 3, scope: !4167, file: !71, line: 736, type: !4134)
!4174 = !DILocation(line: 737, column: 47, scope: !4167)
!4175 = !DILocation(line: 737, column: 5, scope: !4167)
!4176 = !DILocation(line: 738, column: 1, scope: !4167)
!4177 = distinct !DISubprogram(name: "shake256_inc_ctx_clone", scope: !71, file: !71, line: 740, type: !4178, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{null, !4134, !4180}
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 32)
!4181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4135)
!4182 = !DILocalVariable(name: "dest", arg: 1, scope: !4177, file: !71, line: 740, type: !4134)
!4183 = !DILocation(line: 0, scope: !4177)
!4184 = !DILocalVariable(name: "src", arg: 2, scope: !4177, file: !71, line: 740, type: !4180)
!4185 = !DILocation(line: 741, column: 17, scope: !4177)
!4186 = !DILocation(line: 741, column: 15, scope: !4177)
!4187 = !DILocation(line: 742, column: 19, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4177, file: !71, line: 742, column: 9)
!4189 = !DILocation(line: 743, column: 9, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4188, file: !71, line: 742, column: 28)
!4191 = !DILocation(line: 744, column: 5, scope: !4190)
!4192 = !DILocation(line: 745, column: 18, scope: !4177)
!4193 = !DILocation(line: 745, column: 28, scope: !4177)
!4194 = !DILocation(line: 745, column: 5, scope: !4177)
!4195 = !DILocation(line: 746, column: 1, scope: !4177)
!4196 = distinct !DISubprogram(name: "shake256_inc_ctx_release", scope: !71, file: !71, line: 748, type: !4132, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4197 = !DILocalVariable(name: "state", arg: 1, scope: !4196, file: !71, line: 748, type: !4134)
!4198 = !DILocation(line: 0, scope: !4196)
!4199 = !DILocation(line: 749, column: 17, scope: !4196)
!4200 = !DILocation(line: 749, column: 5, scope: !4196)
!4201 = !DILocation(line: 750, column: 1, scope: !4196)
!4202 = distinct !DISubprogram(name: "shake128_absorb", scope: !71, file: !71, line: 764, type: !4203, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{null, !4205, !257, !15}
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 32)
!4206 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128ctx", file: !71, line: 36, baseType: !4207)
!4207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 34, size: 32, elements: !4208)
!4208 = !{!4209}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4207, file: !71, line: 35, baseType: !5, size: 32)
!4210 = !DILocalVariable(name: "state", arg: 1, scope: !4202, file: !71, line: 764, type: !4205)
!4211 = !DILocation(line: 0, scope: !4202)
!4212 = !DILocalVariable(name: "input", arg: 2, scope: !4202, file: !71, line: 764, type: !257)
!4213 = !DILocalVariable(name: "inlen", arg: 3, scope: !4202, file: !71, line: 764, type: !15)
!4214 = !DILocation(line: 765, column: 18, scope: !4202)
!4215 = !DILocation(line: 765, column: 16, scope: !4202)
!4216 = !DILocation(line: 766, column: 20, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4202, file: !71, line: 766, column: 9)
!4218 = !DILocation(line: 767, column: 9, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4217, file: !71, line: 766, column: 29)
!4220 = !DILocation(line: 768, column: 5, scope: !4219)
!4221 = !DILocation(line: 769, column: 26, scope: !4202)
!4222 = !DILocation(line: 769, column: 5, scope: !4202)
!4223 = !DILocation(line: 770, column: 1, scope: !4202)
!4224 = distinct !DISubprogram(name: "keccak_absorb", scope: !71, file: !71, line: 512, type: !4225, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{null, !5, !19, !257, !15, !12}
!4227 = !DILocalVariable(name: "s", arg: 1, scope: !4224, file: !71, line: 512, type: !5)
!4228 = !DILocation(line: 0, scope: !4224)
!4229 = !DILocalVariable(name: "r", arg: 2, scope: !4224, file: !71, line: 512, type: !19)
!4230 = !DILocalVariable(name: "m", arg: 3, scope: !4224, file: !71, line: 512, type: !257)
!4231 = !DILocalVariable(name: "mlen", arg: 4, scope: !4224, file: !71, line: 513, type: !15)
!4232 = !DILocalVariable(name: "p", arg: 5, scope: !4224, file: !71, line: 513, type: !12)
!4233 = !DILocalVariable(name: "t", scope: !4224, file: !71, line: 515, type: !4234)
!4234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1600, elements: !4235)
!4235 = !{!4236}
!4236 = !DISubrange(count: 200)
!4237 = !DILocation(line: 515, column: 13, scope: !4224)
!4238 = !DILocalVariable(name: "i", scope: !4224, file: !71, line: 514, type: !15)
!4239 = !DILocation(line: 518, column: 10, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4224, file: !71, line: 518, column: 5)
!4241 = !DILocation(line: 518, scope: !4240)
!4242 = !DILocation(line: 518, column: 19, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4240, file: !71, line: 518, column: 5)
!4244 = !DILocation(line: 518, column: 5, scope: !4240)
!4245 = !DILocation(line: 522, column: 5, scope: !4224)
!4246 = !DILocation(line: 519, column: 9, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4243, file: !71, line: 518, column: 30)
!4248 = !DILocation(line: 519, column: 14, scope: !4247)
!4249 = !DILocation(line: 518, column: 25, scope: !4243)
!4250 = !DILocation(line: 518, column: 5, scope: !4243)
!4251 = distinct !{!4251, !4244, !4252, !244}
!4252 = !DILocation(line: 520, column: 5, scope: !4240)
!4253 = !DILocation(line: 522, column: 17, scope: !4224)
!4254 = !DILocation(line: 523, column: 9, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4256, file: !71, line: 523, column: 9)
!4256 = distinct !DILexicalBlock(scope: !4224, file: !71, line: 522, column: 23)
!4257 = !DILocation(line: 532, column: 5, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4224, file: !71, line: 532, column: 5)
!4259 = !DILocation(line: 523, scope: !4255)
!4260 = !DILocation(line: 523, column: 23, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4255, file: !71, line: 523, column: 9)
!4262 = !DILocation(line: 524, column: 34, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4261, file: !71, line: 523, column: 37)
!4264 = !DILocation(line: 524, column: 30, scope: !4263)
!4265 = !DILocation(line: 524, column: 21, scope: !4263)
!4266 = !DILocation(line: 524, column: 13, scope: !4263)
!4267 = !DILocation(line: 524, column: 18, scope: !4263)
!4268 = !DILocation(line: 523, column: 32, scope: !4261)
!4269 = !DILocation(line: 523, column: 9, scope: !4261)
!4270 = distinct !{!4270, !4254, !4271, !244}
!4271 = !DILocation(line: 525, column: 9, scope: !4255)
!4272 = !DILocation(line: 527, column: 9, scope: !4256)
!4273 = !DILocation(line: 528, column: 14, scope: !4256)
!4274 = !DILocation(line: 529, column: 11, scope: !4256)
!4275 = distinct !{!4275, !4245, !4276, !244}
!4276 = !DILocation(line: 530, column: 5, scope: !4224)
!4277 = !DILocation(line: 532, scope: !4258)
!4278 = !DILocation(line: 532, column: 19, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4258, file: !71, line: 532, column: 5)
!4280 = !DILocation(line: 535, column: 5, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4224, file: !71, line: 535, column: 5)
!4282 = !DILocation(line: 533, column: 9, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4279, file: !71, line: 532, column: 29)
!4284 = !DILocation(line: 533, column: 14, scope: !4283)
!4285 = !DILocation(line: 532, column: 24, scope: !4279)
!4286 = !DILocation(line: 532, column: 5, scope: !4279)
!4287 = distinct !{!4287, !4257, !4288, !244}
!4288 = !DILocation(line: 534, column: 5, scope: !4258)
!4289 = !DILocation(line: 535, scope: !4281)
!4290 = !DILocation(line: 535, column: 19, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4281, file: !71, line: 535, column: 5)
!4292 = !DILocation(line: 536, column: 16, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4291, file: !71, line: 535, column: 32)
!4294 = !DILocation(line: 536, column: 9, scope: !4293)
!4295 = !DILocation(line: 536, column: 14, scope: !4293)
!4296 = !DILocation(line: 535, column: 27, scope: !4291)
!4297 = !DILocation(line: 535, column: 5, scope: !4291)
!4298 = distinct !{!4298, !4280, !4299, !244}
!4299 = !DILocation(line: 537, column: 5, scope: !4281)
!4300 = !DILocation(line: 538, column: 5, scope: !4224)
!4301 = !DILocation(line: 538, column: 10, scope: !4224)
!4302 = !DILocation(line: 539, column: 9, scope: !4224)
!4303 = !DILocation(line: 539, column: 5, scope: !4224)
!4304 = !DILocation(line: 539, column: 14, scope: !4224)
!4305 = !DILocation(line: 540, column: 10, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4224, file: !71, line: 540, column: 5)
!4307 = !DILocation(line: 540, scope: !4306)
!4308 = !DILocation(line: 540, column: 19, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4306, file: !71, line: 540, column: 5)
!4310 = !DILocation(line: 540, column: 5, scope: !4306)
!4311 = !DILocation(line: 541, column: 30, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4309, file: !71, line: 540, column: 33)
!4313 = !DILocation(line: 541, column: 26, scope: !4312)
!4314 = !DILocation(line: 541, column: 17, scope: !4312)
!4315 = !DILocation(line: 541, column: 9, scope: !4312)
!4316 = !DILocation(line: 541, column: 14, scope: !4312)
!4317 = !DILocation(line: 540, column: 28, scope: !4309)
!4318 = !DILocation(line: 540, column: 5, scope: !4309)
!4319 = distinct !{!4319, !4310, !4320, !244}
!4320 = !DILocation(line: 542, column: 5, scope: !4306)
!4321 = !DILocation(line: 543, column: 1, scope: !4224)
!4322 = distinct !DISubprogram(name: "load64", scope: !71, file: !71, line: 190, type: !4323, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!6, !257}
!4325 = !DILocalVariable(name: "x", arg: 1, scope: !4322, file: !71, line: 190, type: !257)
!4326 = !DILocation(line: 0, scope: !4322)
!4327 = !DILocalVariable(name: "r", scope: !4322, file: !71, line: 191, type: !6)
!4328 = !DILocalVariable(name: "i", scope: !4329, file: !71, line: 192, type: !15)
!4329 = distinct !DILexicalBlock(scope: !4322, file: !71, line: 192, column: 5)
!4330 = !DILocation(line: 0, scope: !4329)
!4331 = !DILocation(line: 192, column: 10, scope: !4329)
!4332 = !DILocation(line: 192, scope: !4329)
!4333 = !DILocation(line: 192, column: 26, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4329, file: !71, line: 192, column: 5)
!4335 = !DILocation(line: 192, column: 5, scope: !4329)
!4336 = !DILocation(line: 193, column: 24, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4334, file: !71, line: 192, column: 36)
!4338 = !DILocation(line: 193, column: 14, scope: !4337)
!4339 = !DILocation(line: 193, column: 34, scope: !4337)
!4340 = !DILocation(line: 193, column: 29, scope: !4337)
!4341 = !DILocation(line: 193, column: 11, scope: !4337)
!4342 = !DILocation(line: 192, column: 31, scope: !4334)
!4343 = !DILocation(line: 192, column: 5, scope: !4334)
!4344 = distinct !{!4344, !4335, !4345, !244}
!4345 = !DILocation(line: 194, column: 5, scope: !4329)
!4346 = !DILocation(line: 196, column: 5, scope: !4322)
!4347 = distinct !DISubprogram(name: "shake128_squeezeblocks", scope: !71, file: !71, line: 784, type: !4348, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{null, !11, !15, !4205}
!4350 = !DILocalVariable(name: "output", arg: 1, scope: !4347, file: !71, line: 784, type: !11)
!4351 = !DILocation(line: 0, scope: !4347)
!4352 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4347, file: !71, line: 784, type: !15)
!4353 = !DILocalVariable(name: "state", arg: 3, scope: !4347, file: !71, line: 784, type: !4205)
!4354 = !DILocation(line: 785, column: 50, scope: !4347)
!4355 = !DILocation(line: 785, column: 5, scope: !4347)
!4356 = !DILocation(line: 786, column: 1, scope: !4347)
!4357 = distinct !DISubprogram(name: "keccak_squeezeblocks", scope: !71, file: !71, line: 558, type: !4030, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4358 = !DILocalVariable(name: "h", arg: 1, scope: !4357, file: !71, line: 558, type: !11)
!4359 = !DILocation(line: 0, scope: !4357)
!4360 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4357, file: !71, line: 558, type: !15)
!4361 = !DILocalVariable(name: "s", arg: 3, scope: !4357, file: !71, line: 559, type: !5)
!4362 = !DILocalVariable(name: "r", arg: 4, scope: !4357, file: !71, line: 559, type: !19)
!4363 = !DILocation(line: 560, column: 5, scope: !4357)
!4364 = !DILocation(line: 560, column: 20, scope: !4357)
!4365 = !DILocation(line: 561, column: 9, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4357, file: !71, line: 560, column: 25)
!4367 = !DILocalVariable(name: "i", scope: !4368, file: !71, line: 562, type: !15)
!4368 = distinct !DILexicalBlock(scope: !4366, file: !71, line: 562, column: 9)
!4369 = !DILocation(line: 0, scope: !4368)
!4370 = !DILocation(line: 562, column: 14, scope: !4368)
!4371 = !DILocation(line: 562, scope: !4368)
!4372 = !DILocation(line: 562, column: 30, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4368, file: !71, line: 562, column: 9)
!4374 = !DILocation(line: 562, column: 9, scope: !4368)
!4375 = !DILocation(line: 563, column: 27, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4373, file: !71, line: 562, column: 47)
!4377 = !DILocation(line: 563, column: 23, scope: !4376)
!4378 = !DILocation(line: 563, column: 32, scope: !4376)
!4379 = !DILocation(line: 563, column: 13, scope: !4376)
!4380 = !DILocation(line: 562, column: 43, scope: !4373)
!4381 = !DILocation(line: 562, column: 9, scope: !4373)
!4382 = distinct !{!4382, !4374, !4383, !244}
!4383 = !DILocation(line: 564, column: 9, scope: !4368)
!4384 = !DILocation(line: 565, column: 11, scope: !4366)
!4385 = !DILocation(line: 566, column: 16, scope: !4366)
!4386 = distinct !{!4386, !4363, !4387, !244}
!4387 = !DILocation(line: 567, column: 5, scope: !4357)
!4388 = !DILocation(line: 568, column: 1, scope: !4357)
!4389 = distinct !DISubprogram(name: "store64", scope: !71, file: !71, line: 207, type: !4390, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{null, !11, !6}
!4392 = !DILocalVariable(name: "x", arg: 1, scope: !4389, file: !71, line: 207, type: !11)
!4393 = !DILocation(line: 0, scope: !4389)
!4394 = !DILocalVariable(name: "u", arg: 2, scope: !4389, file: !71, line: 207, type: !6)
!4395 = !DILocalVariable(name: "i", scope: !4396, file: !71, line: 208, type: !15)
!4396 = distinct !DILexicalBlock(scope: !4389, file: !71, line: 208, column: 5)
!4397 = !DILocation(line: 0, scope: !4396)
!4398 = !DILocation(line: 208, column: 10, scope: !4396)
!4399 = !DILocation(line: 208, scope: !4396)
!4400 = !DILocation(line: 208, column: 26, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4396, file: !71, line: 208, column: 5)
!4402 = !DILocation(line: 208, column: 5, scope: !4396)
!4403 = !DILocation(line: 209, column: 34, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4401, file: !71, line: 208, column: 36)
!4405 = !DILocation(line: 209, column: 29, scope: !4404)
!4406 = !DILocation(line: 209, column: 16, scope: !4404)
!4407 = !DILocation(line: 209, column: 9, scope: !4404)
!4408 = !DILocation(line: 209, column: 14, scope: !4404)
!4409 = !DILocation(line: 208, column: 31, scope: !4401)
!4410 = !DILocation(line: 208, column: 5, scope: !4401)
!4411 = distinct !{!4411, !4402, !4412, !244}
!4412 = !DILocation(line: 210, column: 5, scope: !4396)
!4413 = !DILocation(line: 211, column: 1, scope: !4389)
!4414 = distinct !DISubprogram(name: "shake128_ctx_clone", scope: !71, file: !71, line: 788, type: !4415, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{null, !4205, !4417}
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 32)
!4418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4206)
!4419 = !DILocalVariable(name: "dest", arg: 1, scope: !4414, file: !71, line: 788, type: !4205)
!4420 = !DILocation(line: 0, scope: !4414)
!4421 = !DILocalVariable(name: "src", arg: 2, scope: !4414, file: !71, line: 788, type: !4417)
!4422 = !DILocation(line: 789, column: 17, scope: !4414)
!4423 = !DILocation(line: 789, column: 15, scope: !4414)
!4424 = !DILocation(line: 790, column: 19, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4414, file: !71, line: 790, column: 9)
!4426 = !DILocation(line: 791, column: 9, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4425, file: !71, line: 790, column: 28)
!4428 = !DILocation(line: 792, column: 5, scope: !4427)
!4429 = !DILocation(line: 793, column: 18, scope: !4414)
!4430 = !DILocation(line: 793, column: 28, scope: !4414)
!4431 = !DILocation(line: 793, column: 5, scope: !4414)
!4432 = !DILocation(line: 794, column: 1, scope: !4414)
!4433 = distinct !DISubprogram(name: "shake128_ctx_release", scope: !71, file: !71, line: 797, type: !4434, scopeLine: 797, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{null, !4205}
!4436 = !DILocalVariable(name: "state", arg: 1, scope: !4433, file: !71, line: 797, type: !4205)
!4437 = !DILocation(line: 0, scope: !4433)
!4438 = !DILocation(line: 798, column: 17, scope: !4433)
!4439 = !DILocation(line: 798, column: 5, scope: !4433)
!4440 = !DILocation(line: 799, column: 1, scope: !4433)
!4441 = distinct !DISubprogram(name: "shake256_absorb", scope: !71, file: !71, line: 812, type: !4442, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{null, !4444, !257, !15}
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 32)
!4445 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256ctx", file: !71, line: 46, baseType: !4446)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 44, size: 32, elements: !4447)
!4447 = !{!4448}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4446, file: !71, line: 45, baseType: !5, size: 32)
!4449 = !DILocalVariable(name: "state", arg: 1, scope: !4441, file: !71, line: 812, type: !4444)
!4450 = !DILocation(line: 0, scope: !4441)
!4451 = !DILocalVariable(name: "input", arg: 2, scope: !4441, file: !71, line: 812, type: !257)
!4452 = !DILocalVariable(name: "inlen", arg: 3, scope: !4441, file: !71, line: 812, type: !15)
!4453 = !DILocation(line: 813, column: 18, scope: !4441)
!4454 = !DILocation(line: 813, column: 16, scope: !4441)
!4455 = !DILocation(line: 814, column: 20, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4441, file: !71, line: 814, column: 9)
!4457 = !DILocation(line: 815, column: 9, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4456, file: !71, line: 814, column: 29)
!4459 = !DILocation(line: 816, column: 5, scope: !4458)
!4460 = !DILocation(line: 817, column: 26, scope: !4441)
!4461 = !DILocation(line: 817, column: 5, scope: !4441)
!4462 = !DILocation(line: 818, column: 1, scope: !4441)
!4463 = distinct !DISubprogram(name: "shake256_squeezeblocks", scope: !71, file: !71, line: 832, type: !4464, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{null, !11, !15, !4444}
!4466 = !DILocalVariable(name: "output", arg: 1, scope: !4463, file: !71, line: 832, type: !11)
!4467 = !DILocation(line: 0, scope: !4463)
!4468 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4463, file: !71, line: 832, type: !15)
!4469 = !DILocalVariable(name: "state", arg: 3, scope: !4463, file: !71, line: 832, type: !4444)
!4470 = !DILocation(line: 833, column: 50, scope: !4463)
!4471 = !DILocation(line: 833, column: 5, scope: !4463)
!4472 = !DILocation(line: 834, column: 1, scope: !4463)
!4473 = distinct !DISubprogram(name: "shake256_ctx_clone", scope: !71, file: !71, line: 836, type: !4474, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{null, !4444, !4476}
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 32)
!4477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4445)
!4478 = !DILocalVariable(name: "dest", arg: 1, scope: !4473, file: !71, line: 836, type: !4444)
!4479 = !DILocation(line: 0, scope: !4473)
!4480 = !DILocalVariable(name: "src", arg: 2, scope: !4473, file: !71, line: 836, type: !4476)
!4481 = !DILocation(line: 837, column: 17, scope: !4473)
!4482 = !DILocation(line: 837, column: 15, scope: !4473)
!4483 = !DILocation(line: 838, column: 19, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4473, file: !71, line: 838, column: 9)
!4485 = !DILocation(line: 839, column: 9, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4484, file: !71, line: 838, column: 28)
!4487 = !DILocation(line: 840, column: 5, scope: !4486)
!4488 = !DILocation(line: 841, column: 18, scope: !4473)
!4489 = !DILocation(line: 841, column: 28, scope: !4473)
!4490 = !DILocation(line: 841, column: 5, scope: !4473)
!4491 = !DILocation(line: 842, column: 1, scope: !4473)
!4492 = distinct !DISubprogram(name: "shake256_ctx_release", scope: !71, file: !71, line: 845, type: !4493, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{null, !4444}
!4495 = !DILocalVariable(name: "state", arg: 1, scope: !4492, file: !71, line: 845, type: !4444)
!4496 = !DILocation(line: 0, scope: !4492)
!4497 = !DILocation(line: 846, column: 17, scope: !4492)
!4498 = !DILocation(line: 846, column: 5, scope: !4492)
!4499 = !DILocation(line: 847, column: 1, scope: !4492)
!4500 = distinct !DISubprogram(name: "shake128", scope: !71, file: !71, line: 859, type: !4501, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{null, !11, !15, !257, !15}
!4503 = !DILocalVariable(name: "output", arg: 1, scope: !4500, file: !71, line: 859, type: !11)
!4504 = !DILocation(line: 0, scope: !4500)
!4505 = !DILocalVariable(name: "outlen", arg: 2, scope: !4500, file: !71, line: 859, type: !15)
!4506 = !DILocalVariable(name: "input", arg: 3, scope: !4500, file: !71, line: 860, type: !257)
!4507 = !DILocalVariable(name: "inlen", arg: 4, scope: !4500, file: !71, line: 860, type: !15)
!4508 = !DILocation(line: 861, column: 29, scope: !4500)
!4509 = !DILocalVariable(name: "nblocks", scope: !4500, file: !71, line: 861, type: !15)
!4510 = !DILocalVariable(name: "t", scope: !4500, file: !71, line: 862, type: !4511)
!4511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1344, elements: !4512)
!4512 = !{!4513}
!4513 = !DISubrange(count: 168)
!4514 = !DILocation(line: 862, column: 13, scope: !4500)
!4515 = !DILocalVariable(name: "s", scope: !4500, file: !71, line: 863, type: !4206)
!4516 = !DILocation(line: 863, column: 17, scope: !4500)
!4517 = !DILocation(line: 865, column: 5, scope: !4500)
!4518 = !DILocation(line: 866, column: 5, scope: !4500)
!4519 = !DILocation(line: 868, column: 23, scope: !4500)
!4520 = !DILocation(line: 868, column: 12, scope: !4500)
!4521 = !DILocation(line: 869, column: 23, scope: !4500)
!4522 = !DILocation(line: 869, column: 12, scope: !4500)
!4523 = !DILocation(line: 871, column: 9, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4500, file: !71, line: 871, column: 9)
!4525 = !DILocation(line: 872, column: 9, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4524, file: !71, line: 871, column: 17)
!4527 = !DILocalVariable(name: "i", scope: !4528, file: !71, line: 873, type: !15)
!4528 = distinct !DILexicalBlock(scope: !4526, file: !71, line: 873, column: 9)
!4529 = !DILocation(line: 0, scope: !4528)
!4530 = !DILocation(line: 873, column: 14, scope: !4528)
!4531 = !DILocation(line: 873, scope: !4528)
!4532 = !DILocation(line: 873, column: 30, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4528, file: !71, line: 873, column: 9)
!4534 = !DILocation(line: 873, column: 9, scope: !4528)
!4535 = !DILocation(line: 874, column: 25, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4533, file: !71, line: 873, column: 45)
!4537 = !DILocation(line: 874, column: 13, scope: !4536)
!4538 = !DILocation(line: 874, column: 23, scope: !4536)
!4539 = !DILocation(line: 873, column: 40, scope: !4533)
!4540 = !DILocation(line: 873, column: 9, scope: !4533)
!4541 = distinct !{!4541, !4534, !4542, !244}
!4542 = !DILocation(line: 875, column: 9, scope: !4528)
!4543 = !DILocation(line: 877, column: 5, scope: !4500)
!4544 = !DILocation(line: 878, column: 1, scope: !4500)
!4545 = distinct !DISubprogram(name: "shake256", scope: !71, file: !71, line: 890, type: !4501, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4546 = !DILocalVariable(name: "output", arg: 1, scope: !4545, file: !71, line: 890, type: !11)
!4547 = !DILocation(line: 0, scope: !4545)
!4548 = !DILocalVariable(name: "outlen", arg: 2, scope: !4545, file: !71, line: 890, type: !15)
!4549 = !DILocalVariable(name: "input", arg: 3, scope: !4545, file: !71, line: 891, type: !257)
!4550 = !DILocalVariable(name: "inlen", arg: 4, scope: !4545, file: !71, line: 891, type: !15)
!4551 = !DILocation(line: 892, column: 29, scope: !4545)
!4552 = !DILocalVariable(name: "nblocks", scope: !4545, file: !71, line: 892, type: !15)
!4553 = !DILocalVariable(name: "t", scope: !4545, file: !71, line: 893, type: !4554)
!4554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1088, elements: !4555)
!4555 = !{!4556}
!4556 = !DISubrange(count: 136)
!4557 = !DILocation(line: 893, column: 13, scope: !4545)
!4558 = !DILocalVariable(name: "s", scope: !4545, file: !71, line: 894, type: !4445)
!4559 = !DILocation(line: 894, column: 17, scope: !4545)
!4560 = !DILocation(line: 896, column: 5, scope: !4545)
!4561 = !DILocation(line: 897, column: 5, scope: !4545)
!4562 = !DILocation(line: 899, column: 23, scope: !4545)
!4563 = !DILocation(line: 899, column: 12, scope: !4545)
!4564 = !DILocation(line: 900, column: 23, scope: !4545)
!4565 = !DILocation(line: 900, column: 12, scope: !4545)
!4566 = !DILocation(line: 902, column: 9, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4545, file: !71, line: 902, column: 9)
!4568 = !DILocation(line: 903, column: 9, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4567, file: !71, line: 902, column: 17)
!4570 = !DILocalVariable(name: "i", scope: !4571, file: !71, line: 904, type: !15)
!4571 = distinct !DILexicalBlock(scope: !4569, file: !71, line: 904, column: 9)
!4572 = !DILocation(line: 0, scope: !4571)
!4573 = !DILocation(line: 904, column: 14, scope: !4571)
!4574 = !DILocation(line: 904, scope: !4571)
!4575 = !DILocation(line: 904, column: 30, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4571, file: !71, line: 904, column: 9)
!4577 = !DILocation(line: 904, column: 9, scope: !4571)
!4578 = !DILocation(line: 905, column: 25, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4576, file: !71, line: 904, column: 45)
!4580 = !DILocation(line: 905, column: 13, scope: !4579)
!4581 = !DILocation(line: 905, column: 23, scope: !4579)
!4582 = !DILocation(line: 904, column: 40, scope: !4576)
!4583 = !DILocation(line: 904, column: 9, scope: !4576)
!4584 = distinct !{!4584, !4577, !4585, !244}
!4585 = !DILocation(line: 906, column: 9, scope: !4571)
!4586 = !DILocation(line: 908, column: 5, scope: !4545)
!4587 = !DILocation(line: 909, column: 1, scope: !4545)
!4588 = distinct !DISubprogram(name: "sha3_256_inc_init", scope: !71, file: !71, line: 911, type: !4589, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{null, !4591}
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 32)
!4592 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_256incctx", file: !71, line: 51, baseType: !4593)
!4593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 49, size: 32, elements: !4594)
!4594 = !{!4595}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4593, file: !71, line: 50, baseType: !5, size: 32)
!4596 = !DILocalVariable(name: "state", arg: 1, scope: !4588, file: !71, line: 911, type: !4591)
!4597 = !DILocation(line: 0, scope: !4588)
!4598 = !DILocation(line: 912, column: 18, scope: !4588)
!4599 = !DILocation(line: 912, column: 16, scope: !4588)
!4600 = !DILocation(line: 913, column: 20, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4588, file: !71, line: 913, column: 9)
!4602 = !DILocation(line: 914, column: 9, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4601, file: !71, line: 913, column: 29)
!4604 = !DILocation(line: 915, column: 5, scope: !4603)
!4605 = !DILocation(line: 916, column: 28, scope: !4588)
!4606 = !DILocation(line: 916, column: 5, scope: !4588)
!4607 = !DILocation(line: 917, column: 1, scope: !4588)
!4608 = distinct !DISubprogram(name: "sha3_256_inc_ctx_clone", scope: !71, file: !71, line: 919, type: !4609, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{null, !4591, !4611}
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 32)
!4612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4592)
!4613 = !DILocalVariable(name: "dest", arg: 1, scope: !4608, file: !71, line: 919, type: !4591)
!4614 = !DILocation(line: 0, scope: !4608)
!4615 = !DILocalVariable(name: "src", arg: 2, scope: !4608, file: !71, line: 919, type: !4611)
!4616 = !DILocation(line: 920, column: 17, scope: !4608)
!4617 = !DILocation(line: 920, column: 15, scope: !4608)
!4618 = !DILocation(line: 921, column: 19, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4608, file: !71, line: 921, column: 9)
!4620 = !DILocation(line: 922, column: 9, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4619, file: !71, line: 921, column: 28)
!4622 = !DILocation(line: 923, column: 5, scope: !4621)
!4623 = !DILocation(line: 924, column: 18, scope: !4608)
!4624 = !DILocation(line: 924, column: 28, scope: !4608)
!4625 = !DILocation(line: 924, column: 5, scope: !4608)
!4626 = !DILocation(line: 925, column: 1, scope: !4608)
!4627 = distinct !DISubprogram(name: "sha3_256_inc_ctx_release", scope: !71, file: !71, line: 927, type: !4589, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4628 = !DILocalVariable(name: "state", arg: 1, scope: !4627, file: !71, line: 927, type: !4591)
!4629 = !DILocation(line: 0, scope: !4627)
!4630 = !DILocation(line: 928, column: 17, scope: !4627)
!4631 = !DILocation(line: 928, column: 5, scope: !4627)
!4632 = !DILocation(line: 929, column: 1, scope: !4627)
!4633 = distinct !DISubprogram(name: "sha3_256_inc_absorb", scope: !71, file: !71, line: 931, type: !4634, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{null, !4591, !257, !15}
!4636 = !DILocalVariable(name: "state", arg: 1, scope: !4633, file: !71, line: 931, type: !4591)
!4637 = !DILocation(line: 0, scope: !4633)
!4638 = !DILocalVariable(name: "input", arg: 2, scope: !4633, file: !71, line: 931, type: !257)
!4639 = !DILocalVariable(name: "inlen", arg: 3, scope: !4633, file: !71, line: 931, type: !15)
!4640 = !DILocation(line: 932, column: 30, scope: !4633)
!4641 = !DILocation(line: 932, column: 5, scope: !4633)
!4642 = !DILocation(line: 933, column: 1, scope: !4633)
!4643 = distinct !DISubprogram(name: "sha3_256_inc_finalize", scope: !71, file: !71, line: 935, type: !4644, scopeLine: 935, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{null, !11, !4591}
!4646 = !DILocalVariable(name: "output", arg: 1, scope: !4643, file: !71, line: 935, type: !11)
!4647 = !DILocation(line: 0, scope: !4643)
!4648 = !DILocalVariable(name: "state", arg: 2, scope: !4643, file: !71, line: 935, type: !4591)
!4649 = !DILocalVariable(name: "t", scope: !4643, file: !71, line: 936, type: !4554)
!4650 = !DILocation(line: 936, column: 13, scope: !4643)
!4651 = !DILocation(line: 937, column: 32, scope: !4643)
!4652 = !DILocation(line: 937, column: 5, scope: !4643)
!4653 = !DILocation(line: 939, column: 39, scope: !4643)
!4654 = !DILocation(line: 939, column: 5, scope: !4643)
!4655 = !DILocation(line: 941, column: 5, scope: !4643)
!4656 = !DILocalVariable(name: "i", scope: !4657, file: !71, line: 943, type: !15)
!4657 = distinct !DILexicalBlock(scope: !4643, file: !71, line: 943, column: 5)
!4658 = !DILocation(line: 0, scope: !4657)
!4659 = !DILocation(line: 943, column: 10, scope: !4657)
!4660 = !DILocation(line: 943, scope: !4657)
!4661 = !DILocation(line: 943, column: 26, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4657, file: !71, line: 943, column: 5)
!4663 = !DILocation(line: 943, column: 5, scope: !4657)
!4664 = !DILocation(line: 944, column: 21, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4662, file: !71, line: 943, column: 37)
!4666 = !DILocation(line: 944, column: 9, scope: !4665)
!4667 = !DILocation(line: 944, column: 19, scope: !4665)
!4668 = !DILocation(line: 943, column: 33, scope: !4662)
!4669 = !DILocation(line: 943, column: 5, scope: !4662)
!4670 = distinct !{!4670, !4663, !4671, !244}
!4671 = !DILocation(line: 945, column: 5, scope: !4657)
!4672 = !DILocation(line: 946, column: 1, scope: !4643)
!4673 = distinct !DISubprogram(name: "sha3_256", scope: !71, file: !71, line: 957, type: !4674, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{null, !11, !257, !15}
!4676 = !DILocalVariable(name: "output", arg: 1, scope: !4673, file: !71, line: 957, type: !11)
!4677 = !DILocation(line: 0, scope: !4673)
!4678 = !DILocalVariable(name: "input", arg: 2, scope: !4673, file: !71, line: 957, type: !257)
!4679 = !DILocalVariable(name: "inlen", arg: 3, scope: !4673, file: !71, line: 957, type: !15)
!4680 = !DILocalVariable(name: "s", scope: !4673, file: !71, line: 958, type: !4681)
!4681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1600, elements: !4682)
!4682 = !{!4683}
!4683 = !DISubrange(count: 25)
!4684 = !DILocation(line: 958, column: 14, scope: !4673)
!4685 = !DILocalVariable(name: "t", scope: !4673, file: !71, line: 959, type: !4554)
!4686 = !DILocation(line: 959, column: 13, scope: !4673)
!4687 = !DILocation(line: 962, column: 5, scope: !4673)
!4688 = !DILocation(line: 965, column: 5, scope: !4673)
!4689 = !DILocalVariable(name: "i", scope: !4690, file: !71, line: 967, type: !15)
!4690 = distinct !DILexicalBlock(scope: !4673, file: !71, line: 967, column: 5)
!4691 = !DILocation(line: 0, scope: !4690)
!4692 = !DILocation(line: 967, column: 10, scope: !4690)
!4693 = !DILocation(line: 967, scope: !4690)
!4694 = !DILocation(line: 967, column: 26, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4690, file: !71, line: 967, column: 5)
!4696 = !DILocation(line: 967, column: 5, scope: !4690)
!4697 = !DILocation(line: 968, column: 21, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4695, file: !71, line: 967, column: 37)
!4699 = !DILocation(line: 968, column: 9, scope: !4698)
!4700 = !DILocation(line: 968, column: 19, scope: !4698)
!4701 = !DILocation(line: 967, column: 33, scope: !4695)
!4702 = !DILocation(line: 967, column: 5, scope: !4695)
!4703 = distinct !{!4703, !4696, !4704, !244}
!4704 = !DILocation(line: 969, column: 5, scope: !4690)
!4705 = !DILocation(line: 970, column: 1, scope: !4673)
!4706 = distinct !DISubprogram(name: "sha3_384_inc_init", scope: !71, file: !71, line: 972, type: !4707, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{null, !4709}
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 32)
!4710 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_384incctx", file: !71, line: 56, baseType: !4711)
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 54, size: 32, elements: !4712)
!4712 = !{!4713}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4711, file: !71, line: 55, baseType: !5, size: 32)
!4714 = !DILocalVariable(name: "state", arg: 1, scope: !4706, file: !71, line: 972, type: !4709)
!4715 = !DILocation(line: 0, scope: !4706)
!4716 = !DILocation(line: 973, column: 18, scope: !4706)
!4717 = !DILocation(line: 973, column: 16, scope: !4706)
!4718 = !DILocation(line: 974, column: 20, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4706, file: !71, line: 974, column: 9)
!4720 = !DILocation(line: 975, column: 9, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4719, file: !71, line: 974, column: 29)
!4722 = !DILocation(line: 976, column: 5, scope: !4721)
!4723 = !DILocation(line: 977, column: 28, scope: !4706)
!4724 = !DILocation(line: 977, column: 5, scope: !4706)
!4725 = !DILocation(line: 978, column: 1, scope: !4706)
!4726 = distinct !DISubprogram(name: "sha3_384_inc_ctx_clone", scope: !71, file: !71, line: 980, type: !4727, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{null, !4709, !4729}
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 32)
!4730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4710)
!4731 = !DILocalVariable(name: "dest", arg: 1, scope: !4726, file: !71, line: 980, type: !4709)
!4732 = !DILocation(line: 0, scope: !4726)
!4733 = !DILocalVariable(name: "src", arg: 2, scope: !4726, file: !71, line: 980, type: !4729)
!4734 = !DILocation(line: 981, column: 17, scope: !4726)
!4735 = !DILocation(line: 981, column: 15, scope: !4726)
!4736 = !DILocation(line: 982, column: 19, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4726, file: !71, line: 982, column: 9)
!4738 = !DILocation(line: 983, column: 9, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4737, file: !71, line: 982, column: 28)
!4740 = !DILocation(line: 984, column: 5, scope: !4739)
!4741 = !DILocation(line: 985, column: 18, scope: !4726)
!4742 = !DILocation(line: 985, column: 28, scope: !4726)
!4743 = !DILocation(line: 985, column: 5, scope: !4726)
!4744 = !DILocation(line: 986, column: 1, scope: !4726)
!4745 = distinct !DISubprogram(name: "sha3_384_inc_absorb", scope: !71, file: !71, line: 988, type: !4746, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{null, !4709, !257, !15}
!4748 = !DILocalVariable(name: "state", arg: 1, scope: !4745, file: !71, line: 988, type: !4709)
!4749 = !DILocation(line: 0, scope: !4745)
!4750 = !DILocalVariable(name: "input", arg: 2, scope: !4745, file: !71, line: 988, type: !257)
!4751 = !DILocalVariable(name: "inlen", arg: 3, scope: !4745, file: !71, line: 988, type: !15)
!4752 = !DILocation(line: 989, column: 30, scope: !4745)
!4753 = !DILocation(line: 989, column: 5, scope: !4745)
!4754 = !DILocation(line: 990, column: 1, scope: !4745)
!4755 = distinct !DISubprogram(name: "sha3_384_inc_ctx_release", scope: !71, file: !71, line: 992, type: !4707, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4756 = !DILocalVariable(name: "state", arg: 1, scope: !4755, file: !71, line: 992, type: !4709)
!4757 = !DILocation(line: 0, scope: !4755)
!4758 = !DILocation(line: 993, column: 17, scope: !4755)
!4759 = !DILocation(line: 993, column: 5, scope: !4755)
!4760 = !DILocation(line: 994, column: 1, scope: !4755)
!4761 = distinct !DISubprogram(name: "sha3_384_inc_finalize", scope: !71, file: !71, line: 996, type: !4762, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{null, !11, !4709}
!4764 = !DILocalVariable(name: "output", arg: 1, scope: !4761, file: !71, line: 996, type: !11)
!4765 = !DILocation(line: 0, scope: !4761)
!4766 = !DILocalVariable(name: "state", arg: 2, scope: !4761, file: !71, line: 996, type: !4709)
!4767 = !DILocalVariable(name: "t", scope: !4761, file: !71, line: 997, type: !4768)
!4768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 832, elements: !4769)
!4769 = !{!4770}
!4770 = !DISubrange(count: 104)
!4771 = !DILocation(line: 997, column: 13, scope: !4761)
!4772 = !DILocation(line: 998, column: 32, scope: !4761)
!4773 = !DILocation(line: 998, column: 5, scope: !4761)
!4774 = !DILocation(line: 1000, column: 39, scope: !4761)
!4775 = !DILocation(line: 1000, column: 5, scope: !4761)
!4776 = !DILocation(line: 1002, column: 5, scope: !4761)
!4777 = !DILocalVariable(name: "i", scope: !4778, file: !71, line: 1004, type: !15)
!4778 = distinct !DILexicalBlock(scope: !4761, file: !71, line: 1004, column: 5)
!4779 = !DILocation(line: 0, scope: !4778)
!4780 = !DILocation(line: 1004, column: 10, scope: !4778)
!4781 = !DILocation(line: 1004, scope: !4778)
!4782 = !DILocation(line: 1004, column: 26, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4778, file: !71, line: 1004, column: 5)
!4784 = !DILocation(line: 1004, column: 5, scope: !4778)
!4785 = !DILocation(line: 1005, column: 21, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4783, file: !71, line: 1004, column: 37)
!4787 = !DILocation(line: 1005, column: 9, scope: !4786)
!4788 = !DILocation(line: 1005, column: 19, scope: !4786)
!4789 = !DILocation(line: 1004, column: 33, scope: !4783)
!4790 = !DILocation(line: 1004, column: 5, scope: !4783)
!4791 = distinct !{!4791, !4784, !4792, !244}
!4792 = !DILocation(line: 1006, column: 5, scope: !4778)
!4793 = !DILocation(line: 1007, column: 1, scope: !4761)
!4794 = distinct !DISubprogram(name: "sha3_384", scope: !71, file: !71, line: 1018, type: !4674, scopeLine: 1018, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4795 = !DILocalVariable(name: "output", arg: 1, scope: !4794, file: !71, line: 1018, type: !11)
!4796 = !DILocation(line: 0, scope: !4794)
!4797 = !DILocalVariable(name: "input", arg: 2, scope: !4794, file: !71, line: 1018, type: !257)
!4798 = !DILocalVariable(name: "inlen", arg: 3, scope: !4794, file: !71, line: 1018, type: !15)
!4799 = !DILocalVariable(name: "s", scope: !4794, file: !71, line: 1019, type: !4681)
!4800 = !DILocation(line: 1019, column: 14, scope: !4794)
!4801 = !DILocalVariable(name: "t", scope: !4794, file: !71, line: 1020, type: !4768)
!4802 = !DILocation(line: 1020, column: 13, scope: !4794)
!4803 = !DILocation(line: 1023, column: 5, scope: !4794)
!4804 = !DILocation(line: 1026, column: 5, scope: !4794)
!4805 = !DILocalVariable(name: "i", scope: !4806, file: !71, line: 1028, type: !15)
!4806 = distinct !DILexicalBlock(scope: !4794, file: !71, line: 1028, column: 5)
!4807 = !DILocation(line: 0, scope: !4806)
!4808 = !DILocation(line: 1028, column: 10, scope: !4806)
!4809 = !DILocation(line: 1028, scope: !4806)
!4810 = !DILocation(line: 1028, column: 26, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4806, file: !71, line: 1028, column: 5)
!4812 = !DILocation(line: 1028, column: 5, scope: !4806)
!4813 = !DILocation(line: 1029, column: 21, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4811, file: !71, line: 1028, column: 37)
!4815 = !DILocation(line: 1029, column: 9, scope: !4814)
!4816 = !DILocation(line: 1029, column: 19, scope: !4814)
!4817 = !DILocation(line: 1028, column: 33, scope: !4811)
!4818 = !DILocation(line: 1028, column: 5, scope: !4811)
!4819 = distinct !{!4819, !4812, !4820, !244}
!4820 = !DILocation(line: 1030, column: 5, scope: !4806)
!4821 = !DILocation(line: 1031, column: 1, scope: !4794)
!4822 = distinct !DISubprogram(name: "sha3_512_inc_init", scope: !71, file: !71, line: 1033, type: !4823, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{null, !4825}
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 32)
!4826 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_512incctx", file: !71, line: 61, baseType: !4827)
!4827 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 59, size: 32, elements: !4828)
!4828 = !{!4829}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4827, file: !71, line: 60, baseType: !5, size: 32)
!4830 = !DILocalVariable(name: "state", arg: 1, scope: !4822, file: !71, line: 1033, type: !4825)
!4831 = !DILocation(line: 0, scope: !4822)
!4832 = !DILocation(line: 1034, column: 18, scope: !4822)
!4833 = !DILocation(line: 1034, column: 16, scope: !4822)
!4834 = !DILocation(line: 1035, column: 20, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4822, file: !71, line: 1035, column: 9)
!4836 = !DILocation(line: 1036, column: 9, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4835, file: !71, line: 1035, column: 29)
!4838 = !DILocation(line: 1037, column: 5, scope: !4837)
!4839 = !DILocation(line: 1038, column: 28, scope: !4822)
!4840 = !DILocation(line: 1038, column: 5, scope: !4822)
!4841 = !DILocation(line: 1039, column: 1, scope: !4822)
!4842 = distinct !DISubprogram(name: "sha3_512_inc_ctx_clone", scope: !71, file: !71, line: 1041, type: !4843, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{null, !4825, !4845}
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 32)
!4846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4826)
!4847 = !DILocalVariable(name: "dest", arg: 1, scope: !4842, file: !71, line: 1041, type: !4825)
!4848 = !DILocation(line: 0, scope: !4842)
!4849 = !DILocalVariable(name: "src", arg: 2, scope: !4842, file: !71, line: 1041, type: !4845)
!4850 = !DILocation(line: 1042, column: 17, scope: !4842)
!4851 = !DILocation(line: 1042, column: 15, scope: !4842)
!4852 = !DILocation(line: 1043, column: 19, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4842, file: !71, line: 1043, column: 9)
!4854 = !DILocation(line: 1044, column: 9, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4853, file: !71, line: 1043, column: 28)
!4856 = !DILocation(line: 1045, column: 5, scope: !4855)
!4857 = !DILocation(line: 1046, column: 18, scope: !4842)
!4858 = !DILocation(line: 1046, column: 28, scope: !4842)
!4859 = !DILocation(line: 1046, column: 5, scope: !4842)
!4860 = !DILocation(line: 1047, column: 1, scope: !4842)
!4861 = distinct !DISubprogram(name: "sha3_512_inc_absorb", scope: !71, file: !71, line: 1049, type: !4862, scopeLine: 1049, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{null, !4825, !257, !15}
!4864 = !DILocalVariable(name: "state", arg: 1, scope: !4861, file: !71, line: 1049, type: !4825)
!4865 = !DILocation(line: 0, scope: !4861)
!4866 = !DILocalVariable(name: "input", arg: 2, scope: !4861, file: !71, line: 1049, type: !257)
!4867 = !DILocalVariable(name: "inlen", arg: 3, scope: !4861, file: !71, line: 1049, type: !15)
!4868 = !DILocation(line: 1050, column: 30, scope: !4861)
!4869 = !DILocation(line: 1050, column: 5, scope: !4861)
!4870 = !DILocation(line: 1051, column: 1, scope: !4861)
!4871 = distinct !DISubprogram(name: "sha3_512_inc_ctx_release", scope: !71, file: !71, line: 1053, type: !4823, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4872 = !DILocalVariable(name: "state", arg: 1, scope: !4871, file: !71, line: 1053, type: !4825)
!4873 = !DILocation(line: 0, scope: !4871)
!4874 = !DILocation(line: 1054, column: 17, scope: !4871)
!4875 = !DILocation(line: 1054, column: 5, scope: !4871)
!4876 = !DILocation(line: 1055, column: 1, scope: !4871)
!4877 = distinct !DISubprogram(name: "sha3_512_inc_finalize", scope: !71, file: !71, line: 1057, type: !4878, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{null, !11, !4825}
!4880 = !DILocalVariable(name: "output", arg: 1, scope: !4877, file: !71, line: 1057, type: !11)
!4881 = !DILocation(line: 0, scope: !4877)
!4882 = !DILocalVariable(name: "state", arg: 2, scope: !4877, file: !71, line: 1057, type: !4825)
!4883 = !DILocalVariable(name: "t", scope: !4877, file: !71, line: 1058, type: !4884)
!4884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 576, elements: !4885)
!4885 = !{!4886}
!4886 = !DISubrange(count: 72)
!4887 = !DILocation(line: 1058, column: 13, scope: !4877)
!4888 = !DILocation(line: 1059, column: 32, scope: !4877)
!4889 = !DILocation(line: 1059, column: 5, scope: !4877)
!4890 = !DILocation(line: 1061, column: 39, scope: !4877)
!4891 = !DILocation(line: 1061, column: 5, scope: !4877)
!4892 = !DILocation(line: 1063, column: 5, scope: !4877)
!4893 = !DILocalVariable(name: "i", scope: !4894, file: !71, line: 1065, type: !15)
!4894 = distinct !DILexicalBlock(scope: !4877, file: !71, line: 1065, column: 5)
!4895 = !DILocation(line: 0, scope: !4894)
!4896 = !DILocation(line: 1065, column: 10, scope: !4894)
!4897 = !DILocation(line: 1065, scope: !4894)
!4898 = !DILocation(line: 1065, column: 26, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4894, file: !71, line: 1065, column: 5)
!4900 = !DILocation(line: 1065, column: 5, scope: !4894)
!4901 = !DILocation(line: 1066, column: 21, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4899, file: !71, line: 1065, column: 37)
!4903 = !DILocation(line: 1066, column: 9, scope: !4902)
!4904 = !DILocation(line: 1066, column: 19, scope: !4902)
!4905 = !DILocation(line: 1065, column: 33, scope: !4899)
!4906 = !DILocation(line: 1065, column: 5, scope: !4899)
!4907 = distinct !{!4907, !4900, !4908, !244}
!4908 = !DILocation(line: 1067, column: 5, scope: !4894)
!4909 = !DILocation(line: 1068, column: 1, scope: !4877)
!4910 = distinct !DISubprogram(name: "sha3_512", scope: !71, file: !71, line: 1079, type: !4674, scopeLine: 1079, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4911 = !DILocalVariable(name: "output", arg: 1, scope: !4910, file: !71, line: 1079, type: !11)
!4912 = !DILocation(line: 0, scope: !4910)
!4913 = !DILocalVariable(name: "input", arg: 2, scope: !4910, file: !71, line: 1079, type: !257)
!4914 = !DILocalVariable(name: "inlen", arg: 3, scope: !4910, file: !71, line: 1079, type: !15)
!4915 = !DILocalVariable(name: "s", scope: !4910, file: !71, line: 1080, type: !4681)
!4916 = !DILocation(line: 1080, column: 14, scope: !4910)
!4917 = !DILocalVariable(name: "t", scope: !4910, file: !71, line: 1081, type: !4884)
!4918 = !DILocation(line: 1081, column: 13, scope: !4910)
!4919 = !DILocation(line: 1084, column: 5, scope: !4910)
!4920 = !DILocation(line: 1087, column: 5, scope: !4910)
!4921 = !DILocalVariable(name: "i", scope: !4922, file: !71, line: 1089, type: !15)
!4922 = distinct !DILexicalBlock(scope: !4910, file: !71, line: 1089, column: 5)
!4923 = !DILocation(line: 0, scope: !4922)
!4924 = !DILocation(line: 1089, column: 10, scope: !4922)
!4925 = !DILocation(line: 1089, scope: !4922)
!4926 = !DILocation(line: 1089, column: 26, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4922, file: !71, line: 1089, column: 5)
!4928 = !DILocation(line: 1089, column: 5, scope: !4922)
!4929 = !DILocation(line: 1090, column: 21, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4927, file: !71, line: 1089, column: 37)
!4931 = !DILocation(line: 1090, column: 9, scope: !4930)
!4932 = !DILocation(line: 1090, column: 19, scope: !4930)
!4933 = !DILocation(line: 1089, column: 33, scope: !4927)
!4934 = !DILocation(line: 1089, column: 5, scope: !4927)
!4935 = distinct !{!4935, !4928, !4936, !244}
!4936 = !DILocation(line: 1091, column: 5, scope: !4922)
!4937 = !DILocation(line: 1092, column: 1, scope: !4910)
!4938 = distinct !DISubprogram(name: "aes128_ecb_keyexp", scope: !80, file: !80, line: 635, type: !4939, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{null, !4941, !49}
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 32)
!4942 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes128ctx", file: !80, line: 46, baseType: !4943)
!4943 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 44, size: 32, elements: !4944)
!4944 = !{!4945}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !4943, file: !80, line: 45, baseType: !5, size: 32)
!4946 = !DILocalVariable(name: "r", arg: 1, scope: !4938, file: !80, line: 635, type: !4941)
!4947 = !DILocation(line: 0, scope: !4938)
!4948 = !DILocalVariable(name: "key", arg: 2, scope: !4938, file: !80, line: 635, type: !49)
!4949 = !DILocalVariable(name: "skey", scope: !4938, file: !80, line: 636, type: !4950)
!4950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1408, elements: !4951)
!4951 = !{!4952}
!4952 = !DISubrange(count: 22)
!4953 = !DILocation(line: 636, column: 14, scope: !4938)
!4954 = !DILocation(line: 638, column: 17, scope: !4938)
!4955 = !DILocation(line: 638, column: 15, scope: !4938)
!4956 = !DILocation(line: 639, column: 19, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4938, file: !80, line: 639, column: 9)
!4958 = !DILocation(line: 640, column: 9, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4957, file: !80, line: 639, column: 28)
!4960 = !DILocation(line: 641, column: 5, scope: !4959)
!4961 = !DILocation(line: 643, column: 5, scope: !4938)
!4962 = !DILocation(line: 644, column: 32, scope: !4938)
!4963 = !DILocation(line: 644, column: 5, scope: !4938)
!4964 = !DILocation(line: 645, column: 1, scope: !4938)
!4965 = distinct !DISubprogram(name: "br_aes_ct64_keysched", scope: !80, file: !80, line: 403, type: !4966, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{null, !5, !49, !17}
!4968 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !4965, file: !80, line: 403, type: !5)
!4969 = !DILocation(line: 0, scope: !4965)
!4970 = !DILocalVariable(name: "key", arg: 2, scope: !4965, file: !80, line: 403, type: !49)
!4971 = !DILocalVariable(name: "key_len", arg: 3, scope: !4965, file: !80, line: 403, type: !17)
!4972 = !DILocalVariable(name: "skey", scope: !4965, file: !80, line: 406, type: !4973)
!4973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1920, elements: !4974)
!4974 = !{!4975}
!4975 = !DISubrange(count: 60)
!4976 = !DILocation(line: 406, column: 14, scope: !4965)
!4977 = !DILocation(line: 410, column: 26, scope: !4965)
!4978 = !DILocalVariable(name: "nrounds", scope: !4965, file: !80, line: 407, type: !17)
!4979 = !DILocation(line: 409, column: 19, scope: !4965)
!4980 = !DILocalVariable(name: "nk", scope: !4965, file: !80, line: 404, type: !17)
!4981 = !DILocalVariable(name: "nkf", scope: !4965, file: !80, line: 404, type: !17)
!4982 = !DILocation(line: 411, column: 37, scope: !4965)
!4983 = !DILocation(line: 411, column: 5, scope: !4965)
!4984 = !DILocation(line: 412, column: 25, scope: !4965)
!4985 = !DILocation(line: 412, column: 31, scope: !4965)
!4986 = !DILocation(line: 412, column: 11, scope: !4965)
!4987 = !DILocalVariable(name: "tmp", scope: !4965, file: !80, line: 405, type: !19)
!4988 = !DILocalVariable(name: "i", scope: !4965, file: !80, line: 404, type: !17)
!4989 = !DILocalVariable(name: "j", scope: !4965, file: !80, line: 404, type: !17)
!4990 = !DILocalVariable(name: "k", scope: !4965, file: !80, line: 404, type: !17)
!4991 = !DILocation(line: 413, column: 10, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4965, file: !80, line: 413, column: 5)
!4993 = !DILocation(line: 413, scope: !4992)
!4994 = !DILocation(line: 0, scope: !4992)
!4995 = !DILocation(line: 413, column: 34, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4992, file: !80, line: 413, column: 5)
!4997 = !DILocation(line: 413, column: 5, scope: !4992)
!4998 = !DILocation(line: 428, column: 5, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4965, file: !80, line: 428, column: 5)
!5000 = !DILocation(line: 414, column: 15, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !5002, file: !80, line: 414, column: 13)
!5002 = distinct !DILexicalBlock(scope: !4996, file: !80, line: 413, column: 47)
!5003 = !DILocation(line: 415, column: 31, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !5001, file: !80, line: 414, column: 21)
!5005 = !DILocation(line: 416, column: 19, scope: !5004)
!5006 = !DILocation(line: 416, column: 35, scope: !5004)
!5007 = !DILocation(line: 416, column: 33, scope: !5004)
!5008 = !DILocation(line: 417, column: 9, scope: !5004)
!5009 = !DILocation(line: 417, column: 23, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5001, file: !80, line: 417, column: 20)
!5011 = !DILocation(line: 417, column: 27, scope: !5010)
!5012 = !DILocation(line: 418, column: 19, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5010, file: !80, line: 417, column: 38)
!5014 = !DILocation(line: 419, column: 9, scope: !5013)
!5015 = !DILocation(line: 0, scope: !5001)
!5016 = !DILocation(line: 420, column: 23, scope: !5002)
!5017 = !DILocation(line: 420, column: 16, scope: !5002)
!5018 = !DILocation(line: 420, column: 13, scope: !5002)
!5019 = !DILocation(line: 421, column: 9, scope: !5002)
!5020 = !DILocation(line: 421, column: 17, scope: !5002)
!5021 = !DILocation(line: 422, column: 13, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5002, file: !80, line: 422, column: 13)
!5023 = !DILocation(line: 422, column: 18, scope: !5022)
!5024 = !DILocation(line: 413, column: 43, scope: !4996)
!5025 = !DILocation(line: 413, column: 5, scope: !4996)
!5026 = distinct !{!5026, !4997, !5027, !244}
!5027 = !DILocation(line: 426, column: 5, scope: !4992)
!5028 = !DILocation(line: 428, scope: !4999)
!5029 = !DILocation(line: 428, column: 26, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !4999, file: !80, line: 428, column: 5)
!5031 = !DILocalVariable(name: "q", scope: !5032, file: !80, line: 429, type: !5033)
!5032 = distinct !DILexicalBlock(scope: !5030, file: !80, line: 428, column: 49)
!5033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !5034)
!5034 = !{!5035}
!5035 = !DISubrange(count: 8)
!5036 = !DILocation(line: 429, column: 18, scope: !5032)
!5037 = !DILocation(line: 431, column: 43, scope: !5032)
!5038 = !DILocation(line: 431, column: 54, scope: !5032)
!5039 = !DILocation(line: 431, column: 9, scope: !5032)
!5040 = !DILocation(line: 432, column: 16, scope: !5032)
!5041 = !DILocation(line: 432, column: 9, scope: !5032)
!5042 = !DILocation(line: 432, column: 14, scope: !5032)
!5043 = !DILocation(line: 433, column: 9, scope: !5032)
!5044 = !DILocation(line: 433, column: 14, scope: !5032)
!5045 = !DILocation(line: 434, column: 9, scope: !5032)
!5046 = !DILocation(line: 434, column: 14, scope: !5032)
!5047 = !DILocation(line: 435, column: 16, scope: !5032)
!5048 = !DILocation(line: 435, column: 9, scope: !5032)
!5049 = !DILocation(line: 435, column: 14, scope: !5032)
!5050 = !DILocation(line: 436, column: 9, scope: !5032)
!5051 = !DILocation(line: 436, column: 14, scope: !5032)
!5052 = !DILocation(line: 437, column: 9, scope: !5032)
!5053 = !DILocation(line: 437, column: 14, scope: !5032)
!5054 = !DILocation(line: 438, column: 9, scope: !5032)
!5055 = !DILocation(line: 440, column: 14, scope: !5032)
!5056 = !DILocation(line: 440, column: 19, scope: !5032)
!5057 = !DILocation(line: 441, column: 16, scope: !5032)
!5058 = !DILocation(line: 441, column: 21, scope: !5032)
!5059 = !DILocation(line: 441, column: 13, scope: !5032)
!5060 = !DILocation(line: 442, column: 16, scope: !5032)
!5061 = !DILocation(line: 442, column: 21, scope: !5032)
!5062 = !DILocation(line: 442, column: 13, scope: !5032)
!5063 = !DILocation(line: 443, column: 16, scope: !5032)
!5064 = !DILocation(line: 443, column: 21, scope: !5032)
!5065 = !DILocation(line: 443, column: 13, scope: !5032)
!5066 = !DILocation(line: 439, column: 9, scope: !5032)
!5067 = !DILocation(line: 439, column: 26, scope: !5032)
!5068 = !DILocation(line: 445, column: 14, scope: !5032)
!5069 = !DILocation(line: 445, column: 19, scope: !5032)
!5070 = !DILocation(line: 446, column: 16, scope: !5032)
!5071 = !DILocation(line: 446, column: 21, scope: !5032)
!5072 = !DILocation(line: 446, column: 13, scope: !5032)
!5073 = !DILocation(line: 447, column: 16, scope: !5032)
!5074 = !DILocation(line: 447, column: 21, scope: !5032)
!5075 = !DILocation(line: 447, column: 13, scope: !5032)
!5076 = !DILocation(line: 448, column: 16, scope: !5032)
!5077 = !DILocation(line: 448, column: 21, scope: !5032)
!5078 = !DILocation(line: 448, column: 13, scope: !5032)
!5079 = !DILocation(line: 444, column: 21, scope: !5032)
!5080 = !DILocation(line: 444, column: 9, scope: !5032)
!5081 = !DILocation(line: 444, column: 26, scope: !5032)
!5082 = !DILocation(line: 428, column: 35, scope: !5030)
!5083 = !DILocation(line: 428, column: 43, scope: !5030)
!5084 = !DILocation(line: 428, column: 5, scope: !5030)
!5085 = distinct !{!5085, !4998, !5086, !244}
!5086 = !DILocation(line: 449, column: 5, scope: !4999)
!5087 = !DILocation(line: 450, column: 1, scope: !4965)
!5088 = distinct !DISubprogram(name: "br_aes_ct64_skey_expand", scope: !80, file: !80, line: 452, type: !5089, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5089 = !DISubroutineType(types: !5090)
!5090 = !{null, !5, !428, !17}
!5091 = !DILocalVariable(name: "skey", arg: 1, scope: !5088, file: !80, line: 452, type: !5)
!5092 = !DILocation(line: 0, scope: !5088)
!5093 = !DILocalVariable(name: "comp_skey", arg: 2, scope: !5088, file: !80, line: 452, type: !428)
!5094 = !DILocalVariable(name: "nrounds", arg: 3, scope: !5088, file: !80, line: 452, type: !17)
!5095 = !DILocation(line: 455, column: 23, scope: !5088)
!5096 = !DILocalVariable(name: "n", scope: !5088, file: !80, line: 453, type: !17)
!5097 = !DILocalVariable(name: "u", scope: !5088, file: !80, line: 453, type: !17)
!5098 = !DILocalVariable(name: "v", scope: !5088, file: !80, line: 453, type: !17)
!5099 = !DILocation(line: 456, column: 10, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5088, file: !80, line: 456, column: 5)
!5101 = !DILocation(line: 456, scope: !5100)
!5102 = !DILocation(line: 456, column: 26, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5100, file: !80, line: 456, column: 5)
!5104 = !DILocation(line: 456, column: 5, scope: !5100)
!5105 = !DILocation(line: 459, column: 29, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5103, file: !80, line: 456, column: 45)
!5107 = !DILocalVariable(name: "x3", scope: !5106, file: !80, line: 457, type: !6)
!5108 = !DILocation(line: 0, scope: !5106)
!5109 = !DILocalVariable(name: "x2", scope: !5106, file: !80, line: 457, type: !6)
!5110 = !DILocalVariable(name: "x1", scope: !5106, file: !80, line: 457, type: !6)
!5111 = !DILocalVariable(name: "x0", scope: !5106, file: !80, line: 457, type: !6)
!5112 = !DILocation(line: 460, column: 12, scope: !5106)
!5113 = !DILocation(line: 464, column: 12, scope: !5106)
!5114 = !DILocation(line: 465, column: 12, scope: !5106)
!5115 = !DILocation(line: 466, column: 12, scope: !5106)
!5116 = !DILocation(line: 467, column: 33, scope: !5106)
!5117 = !DILocation(line: 467, column: 9, scope: !5106)
!5118 = !DILocation(line: 467, column: 21, scope: !5106)
!5119 = !DILocation(line: 468, column: 33, scope: !5106)
!5120 = !DILocation(line: 468, column: 16, scope: !5106)
!5121 = !DILocation(line: 468, column: 9, scope: !5106)
!5122 = !DILocation(line: 468, column: 21, scope: !5106)
!5123 = !DILocation(line: 469, column: 33, scope: !5106)
!5124 = !DILocation(line: 469, column: 16, scope: !5106)
!5125 = !DILocation(line: 469, column: 9, scope: !5106)
!5126 = !DILocation(line: 469, column: 21, scope: !5106)
!5127 = !DILocation(line: 470, column: 33, scope: !5106)
!5128 = !DILocation(line: 470, column: 16, scope: !5106)
!5129 = !DILocation(line: 470, column: 9, scope: !5106)
!5130 = !DILocation(line: 470, column: 21, scope: !5106)
!5131 = !DILocation(line: 456, column: 33, scope: !5103)
!5132 = !DILocation(line: 456, column: 39, scope: !5103)
!5133 = !DILocation(line: 456, column: 5, scope: !5103)
!5134 = distinct !{!5134, !5104, !5135, !244}
!5135 = !DILocation(line: 471, column: 5, scope: !5100)
!5136 = !DILocation(line: 472, column: 1, scope: !5088)
!5137 = distinct !DISubprogram(name: "br_range_dec32le", scope: !80, file: !80, line: 104, type: !5138, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5138 = !DISubroutineType(types: !5139)
!5139 = !{null, !5140, !15, !49}
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!5141 = !DILocalVariable(name: "v", arg: 1, scope: !5137, file: !80, line: 104, type: !5140)
!5142 = !DILocation(line: 0, scope: !5137)
!5143 = !DILocalVariable(name: "num", arg: 2, scope: !5137, file: !80, line: 104, type: !15)
!5144 = !DILocalVariable(name: "src", arg: 3, scope: !5137, file: !80, line: 104, type: !49)
!5145 = !DILocation(line: 105, column: 5, scope: !5137)
!5146 = !DILocation(line: 105, column: 18, scope: !5137)
!5147 = !DILocation(line: 105, column: 15, scope: !5137)
!5148 = !DILocation(line: 106, column: 17, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5137, file: !80, line: 105, column: 23)
!5150 = !DILocation(line: 106, column: 12, scope: !5149)
!5151 = !DILocation(line: 106, column: 15, scope: !5149)
!5152 = !DILocation(line: 107, column: 13, scope: !5149)
!5153 = distinct !{!5153, !5145, !5154, !244}
!5154 = !DILocation(line: 108, column: 5, scope: !5137)
!5155 = !DILocation(line: 109, column: 1, scope: !5137)
!5156 = distinct !DISubprogram(name: "sub_word", scope: !80, file: !80, line: 392, type: !5157, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!19, !19}
!5159 = !DILocalVariable(name: "x", arg: 1, scope: !5156, file: !80, line: 392, type: !19)
!5160 = !DILocation(line: 0, scope: !5156)
!5161 = !DILocalVariable(name: "q", scope: !5156, file: !80, line: 393, type: !5033)
!5162 = !DILocation(line: 393, column: 14, scope: !5156)
!5163 = !DILocation(line: 395, column: 5, scope: !5156)
!5164 = !DILocation(line: 396, column: 12, scope: !5156)
!5165 = !DILocation(line: 396, column: 10, scope: !5156)
!5166 = !DILocation(line: 397, column: 5, scope: !5156)
!5167 = !DILocation(line: 398, column: 5, scope: !5156)
!5168 = !DILocation(line: 399, column: 5, scope: !5156)
!5169 = !DILocation(line: 400, column: 22, scope: !5156)
!5170 = !DILocation(line: 400, column: 12, scope: !5156)
!5171 = !DILocation(line: 400, column: 5, scope: !5156)
!5172 = distinct !DISubprogram(name: "br_aes_ct64_interleave_in", scope: !80, file: !80, line: 339, type: !5173, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5173 = !DISubroutineType(types: !5174)
!5174 = !{null, !5, !5, !5175}
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 32)
!5176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!5177 = !DILocalVariable(name: "q0", arg: 1, scope: !5172, file: !80, line: 339, type: !5)
!5178 = !DILocation(line: 0, scope: !5172)
!5179 = !DILocalVariable(name: "q1", arg: 2, scope: !5172, file: !80, line: 339, type: !5)
!5180 = !DILocalVariable(name: "w", arg: 3, scope: !5172, file: !80, line: 339, type: !5175)
!5181 = !DILocation(line: 342, column: 10, scope: !5172)
!5182 = !DILocalVariable(name: "x0", scope: !5172, file: !80, line: 340, type: !6)
!5183 = !DILocation(line: 343, column: 10, scope: !5172)
!5184 = !DILocalVariable(name: "x1", scope: !5172, file: !80, line: 340, type: !6)
!5185 = !DILocation(line: 344, column: 10, scope: !5172)
!5186 = !DILocalVariable(name: "x2", scope: !5172, file: !80, line: 340, type: !6)
!5187 = !DILocation(line: 345, column: 10, scope: !5172)
!5188 = !DILocalVariable(name: "x3", scope: !5172, file: !80, line: 340, type: !6)
!5189 = !DILocation(line: 346, column: 15, scope: !5172)
!5190 = !DILocation(line: 346, column: 8, scope: !5172)
!5191 = !DILocation(line: 347, column: 15, scope: !5172)
!5192 = !DILocation(line: 347, column: 8, scope: !5172)
!5193 = !DILocation(line: 348, column: 15, scope: !5172)
!5194 = !DILocation(line: 348, column: 8, scope: !5172)
!5195 = !DILocation(line: 349, column: 15, scope: !5172)
!5196 = !DILocation(line: 349, column: 8, scope: !5172)
!5197 = !DILocation(line: 350, column: 8, scope: !5172)
!5198 = !DILocation(line: 351, column: 8, scope: !5172)
!5199 = !DILocation(line: 352, column: 8, scope: !5172)
!5200 = !DILocation(line: 353, column: 8, scope: !5172)
!5201 = !DILocation(line: 354, column: 15, scope: !5172)
!5202 = !DILocation(line: 354, column: 8, scope: !5172)
!5203 = !DILocation(line: 355, column: 15, scope: !5172)
!5204 = !DILocation(line: 355, column: 8, scope: !5172)
!5205 = !DILocation(line: 358, column: 8, scope: !5172)
!5206 = !DILocation(line: 359, column: 8, scope: !5172)
!5207 = !DILocation(line: 362, column: 20, scope: !5172)
!5208 = !DILocation(line: 362, column: 14, scope: !5172)
!5209 = !DILocation(line: 362, column: 9, scope: !5172)
!5210 = !DILocation(line: 363, column: 20, scope: !5172)
!5211 = !DILocation(line: 363, column: 14, scope: !5172)
!5212 = !DILocation(line: 363, column: 9, scope: !5172)
!5213 = !DILocation(line: 364, column: 1, scope: !5172)
!5214 = distinct !DISubprogram(name: "br_aes_ct64_ortho", scope: !80, file: !80, line: 309, type: !26, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5215 = !DILocalVariable(name: "q", arg: 1, scope: !5214, file: !80, line: 309, type: !5)
!5216 = !DILocation(line: 0, scope: !5214)
!5217 = !DILocation(line: 322, column: 5, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5214, file: !80, line: 322, column: 5)
!5219 = !DILocalVariable(name: "a", scope: !5218, file: !80, line: 322, type: !6)
!5220 = !DILocation(line: 0, scope: !5218)
!5221 = !DILocalVariable(name: "b", scope: !5218, file: !80, line: 322, type: !6)
!5222 = !DILocation(line: 323, column: 5, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5214, file: !80, line: 323, column: 5)
!5224 = !DILocalVariable(name: "a", scope: !5223, file: !80, line: 323, type: !6)
!5225 = !DILocation(line: 0, scope: !5223)
!5226 = !DILocalVariable(name: "b", scope: !5223, file: !80, line: 323, type: !6)
!5227 = !DILocation(line: 324, column: 5, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5214, file: !80, line: 324, column: 5)
!5229 = !DILocalVariable(name: "a", scope: !5228, file: !80, line: 324, type: !6)
!5230 = !DILocation(line: 0, scope: !5228)
!5231 = !DILocalVariable(name: "b", scope: !5228, file: !80, line: 324, type: !6)
!5232 = !DILocation(line: 325, column: 5, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5214, file: !80, line: 325, column: 5)
!5234 = !DILocalVariable(name: "a", scope: !5233, file: !80, line: 325, type: !6)
!5235 = !DILocation(line: 0, scope: !5233)
!5236 = !DILocalVariable(name: "b", scope: !5233, file: !80, line: 325, type: !6)
!5237 = !DILocation(line: 327, column: 5, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5214, file: !80, line: 327, column: 5)
!5239 = !DILocalVariable(name: "a", scope: !5238, file: !80, line: 327, type: !6)
!5240 = !DILocation(line: 0, scope: !5238)
!5241 = !DILocalVariable(name: "b", scope: !5238, file: !80, line: 327, type: !6)
!5242 = !DILocation(line: 328, column: 5, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5214, file: !80, line: 328, column: 5)
!5244 = !DILocalVariable(name: "a", scope: !5243, file: !80, line: 328, type: !6)
!5245 = !DILocation(line: 0, scope: !5243)
!5246 = !DILocalVariable(name: "b", scope: !5243, file: !80, line: 328, type: !6)
!5247 = !DILocation(line: 329, column: 5, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5214, file: !80, line: 329, column: 5)
!5249 = !DILocalVariable(name: "a", scope: !5248, file: !80, line: 329, type: !6)
!5250 = !DILocation(line: 0, scope: !5248)
!5251 = !DILocalVariable(name: "b", scope: !5248, file: !80, line: 329, type: !6)
!5252 = !DILocation(line: 330, column: 5, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5214, file: !80, line: 330, column: 5)
!5254 = !DILocalVariable(name: "a", scope: !5253, file: !80, line: 330, type: !6)
!5255 = !DILocation(line: 0, scope: !5253)
!5256 = !DILocalVariable(name: "b", scope: !5253, file: !80, line: 330, type: !6)
!5257 = !DILocation(line: 332, column: 5, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5214, file: !80, line: 332, column: 5)
!5259 = !DILocalVariable(name: "a", scope: !5258, file: !80, line: 332, type: !6)
!5260 = !DILocation(line: 0, scope: !5258)
!5261 = !DILocalVariable(name: "b", scope: !5258, file: !80, line: 332, type: !6)
!5262 = !DILocation(line: 333, column: 5, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5214, file: !80, line: 333, column: 5)
!5264 = !DILocalVariable(name: "a", scope: !5263, file: !80, line: 333, type: !6)
!5265 = !DILocation(line: 0, scope: !5263)
!5266 = !DILocalVariable(name: "b", scope: !5263, file: !80, line: 333, type: !6)
!5267 = !DILocation(line: 334, column: 5, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5214, file: !80, line: 334, column: 5)
!5269 = !DILocalVariable(name: "a", scope: !5268, file: !80, line: 334, type: !6)
!5270 = !DILocation(line: 0, scope: !5268)
!5271 = !DILocalVariable(name: "b", scope: !5268, file: !80, line: 334, type: !6)
!5272 = !DILocation(line: 335, column: 5, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5214, file: !80, line: 335, column: 5)
!5274 = !DILocalVariable(name: "a", scope: !5273, file: !80, line: 335, type: !6)
!5275 = !DILocation(line: 0, scope: !5273)
!5276 = !DILocalVariable(name: "b", scope: !5273, file: !80, line: 335, type: !6)
!5277 = !DILocation(line: 336, column: 1, scope: !5214)
!5278 = distinct !DISubprogram(name: "br_aes_ct64_bitslice_Sbox", scope: !80, file: !80, line: 135, type: !26, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5279 = !DILocalVariable(name: "q", arg: 1, scope: !5278, file: !80, line: 135, type: !5)
!5280 = !DILocation(line: 0, scope: !5278)
!5281 = !DILocation(line: 161, column: 10, scope: !5278)
!5282 = !DILocalVariable(name: "x0", scope: !5278, file: !80, line: 146, type: !6)
!5283 = !DILocation(line: 162, column: 10, scope: !5278)
!5284 = !DILocalVariable(name: "x1", scope: !5278, file: !80, line: 146, type: !6)
!5285 = !DILocation(line: 163, column: 10, scope: !5278)
!5286 = !DILocalVariable(name: "x2", scope: !5278, file: !80, line: 146, type: !6)
!5287 = !DILocation(line: 164, column: 10, scope: !5278)
!5288 = !DILocalVariable(name: "x3", scope: !5278, file: !80, line: 146, type: !6)
!5289 = !DILocation(line: 165, column: 10, scope: !5278)
!5290 = !DILocalVariable(name: "x4", scope: !5278, file: !80, line: 146, type: !6)
!5291 = !DILocation(line: 166, column: 10, scope: !5278)
!5292 = !DILocalVariable(name: "x5", scope: !5278, file: !80, line: 146, type: !6)
!5293 = !DILocation(line: 167, column: 10, scope: !5278)
!5294 = !DILocalVariable(name: "x6", scope: !5278, file: !80, line: 146, type: !6)
!5295 = !DILocation(line: 168, column: 10, scope: !5278)
!5296 = !DILocalVariable(name: "x7", scope: !5278, file: !80, line: 146, type: !6)
!5297 = !DILocation(line: 173, column: 14, scope: !5278)
!5298 = !DILocalVariable(name: "y14", scope: !5278, file: !80, line: 148, type: !6)
!5299 = !DILocation(line: 174, column: 14, scope: !5278)
!5300 = !DILocalVariable(name: "y13", scope: !5278, file: !80, line: 148, type: !6)
!5301 = !DILocation(line: 175, column: 13, scope: !5278)
!5302 = !DILocalVariable(name: "y9", scope: !5278, file: !80, line: 147, type: !6)
!5303 = !DILocation(line: 176, column: 13, scope: !5278)
!5304 = !DILocalVariable(name: "y8", scope: !5278, file: !80, line: 147, type: !6)
!5305 = !DILocation(line: 177, column: 13, scope: !5278)
!5306 = !DILocalVariable(name: "t0", scope: !5278, file: !80, line: 152, type: !6)
!5307 = !DILocation(line: 178, column: 13, scope: !5278)
!5308 = !DILocalVariable(name: "y1", scope: !5278, file: !80, line: 147, type: !6)
!5309 = !DILocation(line: 179, column: 13, scope: !5278)
!5310 = !DILocalVariable(name: "y4", scope: !5278, file: !80, line: 147, type: !6)
!5311 = !DILocation(line: 180, column: 15, scope: !5278)
!5312 = !DILocalVariable(name: "y12", scope: !5278, file: !80, line: 148, type: !6)
!5313 = !DILocation(line: 181, column: 13, scope: !5278)
!5314 = !DILocalVariable(name: "y2", scope: !5278, file: !80, line: 147, type: !6)
!5315 = !DILocation(line: 182, column: 13, scope: !5278)
!5316 = !DILocalVariable(name: "y5", scope: !5278, file: !80, line: 147, type: !6)
!5317 = !DILocation(line: 183, column: 13, scope: !5278)
!5318 = !DILocalVariable(name: "y3", scope: !5278, file: !80, line: 147, type: !6)
!5319 = !DILocation(line: 184, column: 13, scope: !5278)
!5320 = !DILocalVariable(name: "t1", scope: !5278, file: !80, line: 152, type: !6)
!5321 = !DILocation(line: 185, column: 14, scope: !5278)
!5322 = !DILocalVariable(name: "y15", scope: !5278, file: !80, line: 148, type: !6)
!5323 = !DILocation(line: 186, column: 14, scope: !5278)
!5324 = !DILocalVariable(name: "y20", scope: !5278, file: !80, line: 149, type: !6)
!5325 = !DILocation(line: 187, column: 14, scope: !5278)
!5326 = !DILocalVariable(name: "y6", scope: !5278, file: !80, line: 147, type: !6)
!5327 = !DILocation(line: 188, column: 15, scope: !5278)
!5328 = !DILocalVariable(name: "y10", scope: !5278, file: !80, line: 148, type: !6)
!5329 = !DILocation(line: 189, column: 15, scope: !5278)
!5330 = !DILocalVariable(name: "y11", scope: !5278, file: !80, line: 148, type: !6)
!5331 = !DILocation(line: 190, column: 13, scope: !5278)
!5332 = !DILocalVariable(name: "y7", scope: !5278, file: !80, line: 147, type: !6)
!5333 = !DILocation(line: 191, column: 15, scope: !5278)
!5334 = !DILocalVariable(name: "y17", scope: !5278, file: !80, line: 148, type: !6)
!5335 = !DILocalVariable(name: "y19", scope: !5278, file: !80, line: 148, type: !6)
!5336 = !DILocation(line: 193, column: 14, scope: !5278)
!5337 = !DILocalVariable(name: "y16", scope: !5278, file: !80, line: 148, type: !6)
!5338 = !DILocalVariable(name: "y21", scope: !5278, file: !80, line: 149, type: !6)
!5339 = !DILocalVariable(name: "y18", scope: !5278, file: !80, line: 148, type: !6)
!5340 = !DILocation(line: 200, column: 14, scope: !5278)
!5341 = !DILocalVariable(name: "t2", scope: !5278, file: !80, line: 152, type: !6)
!5342 = !DILocation(line: 201, column: 13, scope: !5278)
!5343 = !DILocalVariable(name: "t3", scope: !5278, file: !80, line: 152, type: !6)
!5344 = !DILocation(line: 202, column: 13, scope: !5278)
!5345 = !DILocalVariable(name: "t4", scope: !5278, file: !80, line: 152, type: !6)
!5346 = !DILocation(line: 203, column: 13, scope: !5278)
!5347 = !DILocalVariable(name: "t5", scope: !5278, file: !80, line: 152, type: !6)
!5348 = !DILocalVariable(name: "t6", scope: !5278, file: !80, line: 152, type: !6)
!5349 = !DILocation(line: 205, column: 14, scope: !5278)
!5350 = !DILocalVariable(name: "t7", scope: !5278, file: !80, line: 152, type: !6)
!5351 = !DILocation(line: 206, column: 13, scope: !5278)
!5352 = !DILocalVariable(name: "t8", scope: !5278, file: !80, line: 152, type: !6)
!5353 = !DILocalVariable(name: "t9", scope: !5278, file: !80, line: 152, type: !6)
!5354 = !DILocation(line: 208, column: 14, scope: !5278)
!5355 = !DILocalVariable(name: "t10", scope: !5278, file: !80, line: 153, type: !6)
!5356 = !DILocalVariable(name: "t11", scope: !5278, file: !80, line: 153, type: !6)
!5357 = !DILocation(line: 210, column: 14, scope: !5278)
!5358 = !DILocalVariable(name: "t12", scope: !5278, file: !80, line: 153, type: !6)
!5359 = !DILocation(line: 211, column: 15, scope: !5278)
!5360 = !DILocalVariable(name: "t13", scope: !5278, file: !80, line: 153, type: !6)
!5361 = !DILocation(line: 212, column: 15, scope: !5278)
!5362 = !DILocalVariable(name: "t14", scope: !5278, file: !80, line: 153, type: !6)
!5363 = !DILocation(line: 213, column: 14, scope: !5278)
!5364 = !DILocalVariable(name: "t15", scope: !5278, file: !80, line: 153, type: !6)
!5365 = !DILocation(line: 214, column: 15, scope: !5278)
!5366 = !DILocalVariable(name: "t16", scope: !5278, file: !80, line: 153, type: !6)
!5367 = !DILocation(line: 215, column: 14, scope: !5278)
!5368 = !DILocalVariable(name: "t17", scope: !5278, file: !80, line: 153, type: !6)
!5369 = !DILocalVariable(name: "t18", scope: !5278, file: !80, line: 153, type: !6)
!5370 = !DILocalVariable(name: "t19", scope: !5278, file: !80, line: 153, type: !6)
!5371 = !DILocalVariable(name: "t20", scope: !5278, file: !80, line: 154, type: !6)
!5372 = !DILocation(line: 219, column: 15, scope: !5278)
!5373 = !DILocalVariable(name: "t21", scope: !5278, file: !80, line: 154, type: !6)
!5374 = !DILocation(line: 220, column: 15, scope: !5278)
!5375 = !DILocalVariable(name: "t22", scope: !5278, file: !80, line: 154, type: !6)
!5376 = !DILocation(line: 221, column: 15, scope: !5278)
!5377 = !DILocalVariable(name: "t23", scope: !5278, file: !80, line: 154, type: !6)
!5378 = !DILocation(line: 222, column: 15, scope: !5278)
!5379 = !DILocalVariable(name: "t24", scope: !5278, file: !80, line: 154, type: !6)
!5380 = !DILocation(line: 224, column: 15, scope: !5278)
!5381 = !DILocalVariable(name: "t25", scope: !5278, file: !80, line: 154, type: !6)
!5382 = !DILocation(line: 225, column: 15, scope: !5278)
!5383 = !DILocalVariable(name: "t26", scope: !5278, file: !80, line: 154, type: !6)
!5384 = !DILocation(line: 226, column: 15, scope: !5278)
!5385 = !DILocalVariable(name: "t27", scope: !5278, file: !80, line: 154, type: !6)
!5386 = !DILocation(line: 227, column: 15, scope: !5278)
!5387 = !DILocalVariable(name: "t28", scope: !5278, file: !80, line: 154, type: !6)
!5388 = !DILocation(line: 228, column: 15, scope: !5278)
!5389 = !DILocalVariable(name: "t29", scope: !5278, file: !80, line: 154, type: !6)
!5390 = !DILocation(line: 229, column: 15, scope: !5278)
!5391 = !DILocalVariable(name: "t30", scope: !5278, file: !80, line: 155, type: !6)
!5392 = !DILocation(line: 230, column: 15, scope: !5278)
!5393 = !DILocalVariable(name: "t31", scope: !5278, file: !80, line: 155, type: !6)
!5394 = !DILocation(line: 231, column: 15, scope: !5278)
!5395 = !DILocalVariable(name: "t32", scope: !5278, file: !80, line: 155, type: !6)
!5396 = !DILocation(line: 232, column: 15, scope: !5278)
!5397 = !DILocalVariable(name: "t33", scope: !5278, file: !80, line: 155, type: !6)
!5398 = !DILocation(line: 233, column: 15, scope: !5278)
!5399 = !DILocalVariable(name: "t34", scope: !5278, file: !80, line: 155, type: !6)
!5400 = !DILocation(line: 234, column: 15, scope: !5278)
!5401 = !DILocalVariable(name: "t35", scope: !5278, file: !80, line: 155, type: !6)
!5402 = !DILocation(line: 235, column: 15, scope: !5278)
!5403 = !DILocalVariable(name: "t36", scope: !5278, file: !80, line: 155, type: !6)
!5404 = !DILocation(line: 236, column: 15, scope: !5278)
!5405 = !DILocalVariable(name: "t37", scope: !5278, file: !80, line: 155, type: !6)
!5406 = !DILocation(line: 237, column: 15, scope: !5278)
!5407 = !DILocalVariable(name: "t38", scope: !5278, file: !80, line: 155, type: !6)
!5408 = !DILocation(line: 238, column: 15, scope: !5278)
!5409 = !DILocalVariable(name: "t39", scope: !5278, file: !80, line: 155, type: !6)
!5410 = !DILocation(line: 239, column: 15, scope: !5278)
!5411 = !DILocalVariable(name: "t40", scope: !5278, file: !80, line: 156, type: !6)
!5412 = !DILocation(line: 241, column: 15, scope: !5278)
!5413 = !DILocalVariable(name: "t41", scope: !5278, file: !80, line: 156, type: !6)
!5414 = !DILocation(line: 242, column: 15, scope: !5278)
!5415 = !DILocalVariable(name: "t42", scope: !5278, file: !80, line: 156, type: !6)
!5416 = !DILocation(line: 243, column: 15, scope: !5278)
!5417 = !DILocalVariable(name: "t43", scope: !5278, file: !80, line: 156, type: !6)
!5418 = !DILocation(line: 244, column: 15, scope: !5278)
!5419 = !DILocalVariable(name: "t44", scope: !5278, file: !80, line: 156, type: !6)
!5420 = !DILocation(line: 245, column: 15, scope: !5278)
!5421 = !DILocalVariable(name: "t45", scope: !5278, file: !80, line: 156, type: !6)
!5422 = !DILocation(line: 246, column: 14, scope: !5278)
!5423 = !DILocalVariable(name: "z0", scope: !5278, file: !80, line: 150, type: !6)
!5424 = !DILocation(line: 247, column: 14, scope: !5278)
!5425 = !DILocalVariable(name: "z1", scope: !5278, file: !80, line: 150, type: !6)
!5426 = !DILocation(line: 248, column: 14, scope: !5278)
!5427 = !DILocalVariable(name: "z2", scope: !5278, file: !80, line: 150, type: !6)
!5428 = !DILocation(line: 249, column: 14, scope: !5278)
!5429 = !DILocalVariable(name: "z3", scope: !5278, file: !80, line: 150, type: !6)
!5430 = !DILocation(line: 250, column: 14, scope: !5278)
!5431 = !DILocalVariable(name: "z4", scope: !5278, file: !80, line: 150, type: !6)
!5432 = !DILocation(line: 251, column: 14, scope: !5278)
!5433 = !DILocalVariable(name: "z5", scope: !5278, file: !80, line: 150, type: !6)
!5434 = !DILocation(line: 252, column: 14, scope: !5278)
!5435 = !DILocalVariable(name: "z6", scope: !5278, file: !80, line: 150, type: !6)
!5436 = !DILocation(line: 253, column: 14, scope: !5278)
!5437 = !DILocalVariable(name: "z7", scope: !5278, file: !80, line: 150, type: !6)
!5438 = !DILocation(line: 254, column: 14, scope: !5278)
!5439 = !DILocalVariable(name: "z8", scope: !5278, file: !80, line: 150, type: !6)
!5440 = !DILocation(line: 255, column: 14, scope: !5278)
!5441 = !DILocalVariable(name: "z9", scope: !5278, file: !80, line: 150, type: !6)
!5442 = !DILocation(line: 256, column: 15, scope: !5278)
!5443 = !DILocalVariable(name: "z10", scope: !5278, file: !80, line: 151, type: !6)
!5444 = !DILocation(line: 257, column: 15, scope: !5278)
!5445 = !DILocalVariable(name: "z11", scope: !5278, file: !80, line: 151, type: !6)
!5446 = !DILocation(line: 258, column: 15, scope: !5278)
!5447 = !DILocalVariable(name: "z12", scope: !5278, file: !80, line: 151, type: !6)
!5448 = !DILocation(line: 259, column: 15, scope: !5278)
!5449 = !DILocalVariable(name: "z13", scope: !5278, file: !80, line: 151, type: !6)
!5450 = !DILocation(line: 260, column: 15, scope: !5278)
!5451 = !DILocalVariable(name: "z14", scope: !5278, file: !80, line: 151, type: !6)
!5452 = !DILocation(line: 261, column: 15, scope: !5278)
!5453 = !DILocalVariable(name: "z15", scope: !5278, file: !80, line: 151, type: !6)
!5454 = !DILocation(line: 262, column: 15, scope: !5278)
!5455 = !DILocalVariable(name: "z16", scope: !5278, file: !80, line: 151, type: !6)
!5456 = !DILocation(line: 263, column: 15, scope: !5278)
!5457 = !DILocalVariable(name: "z17", scope: !5278, file: !80, line: 151, type: !6)
!5458 = !DILocation(line: 268, column: 15, scope: !5278)
!5459 = !DILocalVariable(name: "t46", scope: !5278, file: !80, line: 156, type: !6)
!5460 = !DILocation(line: 269, column: 15, scope: !5278)
!5461 = !DILocalVariable(name: "t47", scope: !5278, file: !80, line: 156, type: !6)
!5462 = !DILocation(line: 270, column: 14, scope: !5278)
!5463 = !DILocalVariable(name: "t48", scope: !5278, file: !80, line: 156, type: !6)
!5464 = !DILocation(line: 271, column: 14, scope: !5278)
!5465 = !DILocalVariable(name: "t49", scope: !5278, file: !80, line: 156, type: !6)
!5466 = !DILocation(line: 272, column: 14, scope: !5278)
!5467 = !DILocalVariable(name: "t50", scope: !5278, file: !80, line: 157, type: !6)
!5468 = !DILocation(line: 273, column: 14, scope: !5278)
!5469 = !DILocalVariable(name: "t51", scope: !5278, file: !80, line: 157, type: !6)
!5470 = !DILocation(line: 274, column: 14, scope: !5278)
!5471 = !DILocalVariable(name: "t52", scope: !5278, file: !80, line: 157, type: !6)
!5472 = !DILocation(line: 275, column: 14, scope: !5278)
!5473 = !DILocalVariable(name: "t53", scope: !5278, file: !80, line: 157, type: !6)
!5474 = !DILocation(line: 276, column: 14, scope: !5278)
!5475 = !DILocalVariable(name: "t54", scope: !5278, file: !80, line: 157, type: !6)
!5476 = !DILocation(line: 277, column: 15, scope: !5278)
!5477 = !DILocalVariable(name: "t55", scope: !5278, file: !80, line: 157, type: !6)
!5478 = !DILocation(line: 278, column: 15, scope: !5278)
!5479 = !DILocalVariable(name: "t56", scope: !5278, file: !80, line: 157, type: !6)
!5480 = !DILocation(line: 279, column: 15, scope: !5278)
!5481 = !DILocalVariable(name: "t57", scope: !5278, file: !80, line: 157, type: !6)
!5482 = !DILocation(line: 280, column: 14, scope: !5278)
!5483 = !DILocalVariable(name: "t58", scope: !5278, file: !80, line: 157, type: !6)
!5484 = !DILocation(line: 281, column: 14, scope: !5278)
!5485 = !DILocalVariable(name: "t59", scope: !5278, file: !80, line: 157, type: !6)
!5486 = !DILocation(line: 282, column: 15, scope: !5278)
!5487 = !DILocalVariable(name: "t60", scope: !5278, file: !80, line: 158, type: !6)
!5488 = !DILocation(line: 283, column: 15, scope: !5278)
!5489 = !DILocalVariable(name: "t61", scope: !5278, file: !80, line: 158, type: !6)
!5490 = !DILocation(line: 284, column: 15, scope: !5278)
!5491 = !DILocalVariable(name: "t62", scope: !5278, file: !80, line: 158, type: !6)
!5492 = !DILocation(line: 285, column: 15, scope: !5278)
!5493 = !DILocalVariable(name: "t63", scope: !5278, file: !80, line: 158, type: !6)
!5494 = !DILocation(line: 286, column: 14, scope: !5278)
!5495 = !DILocalVariable(name: "t64", scope: !5278, file: !80, line: 158, type: !6)
!5496 = !DILocation(line: 287, column: 15, scope: !5278)
!5497 = !DILocalVariable(name: "t65", scope: !5278, file: !80, line: 158, type: !6)
!5498 = !DILocation(line: 288, column: 14, scope: !5278)
!5499 = !DILocalVariable(name: "t66", scope: !5278, file: !80, line: 158, type: !6)
!5500 = !DILocation(line: 289, column: 14, scope: !5278)
!5501 = !DILocalVariable(name: "s0", scope: !5278, file: !80, line: 159, type: !6)
!5502 = !DILocation(line: 290, column: 14, scope: !5278)
!5503 = !DILocalVariable(name: "s6", scope: !5278, file: !80, line: 159, type: !6)
!5504 = !DILocation(line: 291, column: 14, scope: !5278)
!5505 = !DILocalVariable(name: "s7", scope: !5278, file: !80, line: 159, type: !6)
!5506 = !DILocalVariable(name: "t67", scope: !5278, file: !80, line: 158, type: !6)
!5507 = !DILocation(line: 293, column: 14, scope: !5278)
!5508 = !DILocalVariable(name: "s3", scope: !5278, file: !80, line: 159, type: !6)
!5509 = !DILocation(line: 294, column: 14, scope: !5278)
!5510 = !DILocalVariable(name: "s4", scope: !5278, file: !80, line: 159, type: !6)
!5511 = !DILocation(line: 295, column: 14, scope: !5278)
!5512 = !DILocalVariable(name: "s5", scope: !5278, file: !80, line: 159, type: !6)
!5513 = !DILocation(line: 296, column: 14, scope: !5278)
!5514 = !DILocalVariable(name: "s1", scope: !5278, file: !80, line: 159, type: !6)
!5515 = !DILocation(line: 297, column: 14, scope: !5278)
!5516 = !DILocalVariable(name: "s2", scope: !5278, file: !80, line: 159, type: !6)
!5517 = !DILocation(line: 299, column: 5, scope: !5278)
!5518 = !DILocation(line: 299, column: 10, scope: !5278)
!5519 = !DILocation(line: 300, column: 5, scope: !5278)
!5520 = !DILocation(line: 300, column: 10, scope: !5278)
!5521 = !DILocation(line: 301, column: 5, scope: !5278)
!5522 = !DILocation(line: 301, column: 10, scope: !5278)
!5523 = !DILocation(line: 302, column: 5, scope: !5278)
!5524 = !DILocation(line: 302, column: 10, scope: !5278)
!5525 = !DILocation(line: 303, column: 5, scope: !5278)
!5526 = !DILocation(line: 303, column: 10, scope: !5278)
!5527 = !DILocation(line: 304, column: 5, scope: !5278)
!5528 = !DILocation(line: 304, column: 10, scope: !5278)
!5529 = !DILocation(line: 305, column: 5, scope: !5278)
!5530 = !DILocation(line: 305, column: 10, scope: !5278)
!5531 = !DILocation(line: 306, column: 10, scope: !5278)
!5532 = !DILocation(line: 307, column: 1, scope: !5278)
!5533 = distinct !DISubprogram(name: "br_dec32le", scope: !80, file: !80, line: 96, type: !5534, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5534 = !DISubroutineType(types: !5535)
!5535 = !{!19, !49}
!5536 = !DILocalVariable(name: "src", arg: 1, scope: !5533, file: !80, line: 96, type: !49)
!5537 = !DILocation(line: 0, scope: !5533)
!5538 = !DILocation(line: 97, column: 22, scope: !5533)
!5539 = !DILocation(line: 97, column: 12, scope: !5533)
!5540 = !DILocation(line: 98, column: 25, scope: !5533)
!5541 = !DILocation(line: 98, column: 15, scope: !5533)
!5542 = !DILocation(line: 98, column: 32, scope: !5533)
!5543 = !DILocation(line: 98, column: 12, scope: !5533)
!5544 = !DILocation(line: 99, column: 25, scope: !5533)
!5545 = !DILocation(line: 99, column: 15, scope: !5533)
!5546 = !DILocation(line: 99, column: 32, scope: !5533)
!5547 = !DILocation(line: 99, column: 12, scope: !5533)
!5548 = !DILocation(line: 100, column: 25, scope: !5533)
!5549 = !DILocation(line: 100, column: 15, scope: !5533)
!5550 = !DILocation(line: 100, column: 32, scope: !5533)
!5551 = !DILocation(line: 100, column: 12, scope: !5533)
!5552 = !DILocation(line: 97, column: 5, scope: !5533)
!5553 = distinct !DISubprogram(name: "aes128_ctr_keyexp", scope: !80, file: !80, line: 647, type: !4939, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5554 = !DILocalVariable(name: "r", arg: 1, scope: !5553, file: !80, line: 647, type: !4941)
!5555 = !DILocation(line: 0, scope: !5553)
!5556 = !DILocalVariable(name: "key", arg: 2, scope: !5553, file: !80, line: 647, type: !49)
!5557 = !DILocation(line: 648, column: 5, scope: !5553)
!5558 = !DILocation(line: 649, column: 1, scope: !5553)
!5559 = distinct !DISubprogram(name: "aes192_ecb_keyexp", scope: !80, file: !80, line: 652, type: !5560, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5560 = !DISubroutineType(types: !5561)
!5561 = !{null, !5562, !49}
!5562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5563, size: 32)
!5563 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes192ctx", file: !80, line: 51, baseType: !5564)
!5564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 49, size: 32, elements: !5565)
!5565 = !{!5566}
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5564, file: !80, line: 50, baseType: !5, size: 32)
!5567 = !DILocalVariable(name: "r", arg: 1, scope: !5559, file: !80, line: 652, type: !5562)
!5568 = !DILocation(line: 0, scope: !5559)
!5569 = !DILocalVariable(name: "key", arg: 2, scope: !5559, file: !80, line: 652, type: !49)
!5570 = !DILocalVariable(name: "skey", scope: !5559, file: !80, line: 653, type: !5571)
!5571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1664, elements: !5572)
!5572 = !{!5573}
!5573 = !DISubrange(count: 26)
!5574 = !DILocation(line: 653, column: 14, scope: !5559)
!5575 = !DILocation(line: 654, column: 17, scope: !5559)
!5576 = !DILocation(line: 654, column: 15, scope: !5559)
!5577 = !DILocation(line: 655, column: 19, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5559, file: !80, line: 655, column: 9)
!5579 = !DILocation(line: 656, column: 9, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5578, file: !80, line: 655, column: 28)
!5581 = !DILocation(line: 657, column: 5, scope: !5580)
!5582 = !DILocation(line: 659, column: 5, scope: !5559)
!5583 = !DILocation(line: 660, column: 32, scope: !5559)
!5584 = !DILocation(line: 660, column: 5, scope: !5559)
!5585 = !DILocation(line: 661, column: 1, scope: !5559)
!5586 = distinct !DISubprogram(name: "aes192_ctr_keyexp", scope: !80, file: !80, line: 664, type: !5560, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5587 = !DILocalVariable(name: "r", arg: 1, scope: !5586, file: !80, line: 664, type: !5562)
!5588 = !DILocation(line: 0, scope: !5586)
!5589 = !DILocalVariable(name: "key", arg: 2, scope: !5586, file: !80, line: 664, type: !49)
!5590 = !DILocation(line: 665, column: 5, scope: !5586)
!5591 = !DILocation(line: 666, column: 1, scope: !5586)
!5592 = distinct !DISubprogram(name: "aes256_ecb_keyexp", scope: !80, file: !80, line: 669, type: !5593, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5593 = !DISubroutineType(types: !5594)
!5594 = !{null, !5595, !49}
!5595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5596, size: 32)
!5596 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes256ctx", file: !80, line: 56, baseType: !5597)
!5597 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 54, size: 32, elements: !5598)
!5598 = !{!5599}
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5597, file: !80, line: 55, baseType: !5, size: 32)
!5600 = !DILocalVariable(name: "r", arg: 1, scope: !5592, file: !80, line: 669, type: !5595)
!5601 = !DILocation(line: 0, scope: !5592)
!5602 = !DILocalVariable(name: "key", arg: 2, scope: !5592, file: !80, line: 669, type: !49)
!5603 = !DILocalVariable(name: "skey", scope: !5592, file: !80, line: 670, type: !5604)
!5604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1920, elements: !5605)
!5605 = !{!5606}
!5606 = !DISubrange(count: 30)
!5607 = !DILocation(line: 670, column: 14, scope: !5592)
!5608 = !DILocation(line: 671, column: 17, scope: !5592)
!5609 = !DILocation(line: 671, column: 15, scope: !5592)
!5610 = !DILocation(line: 672, column: 19, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5592, file: !80, line: 672, column: 9)
!5612 = !DILocation(line: 673, column: 9, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5611, file: !80, line: 672, column: 28)
!5614 = !DILocation(line: 674, column: 5, scope: !5613)
!5615 = !DILocation(line: 676, column: 5, scope: !5592)
!5616 = !DILocation(line: 677, column: 32, scope: !5592)
!5617 = !DILocation(line: 677, column: 5, scope: !5592)
!5618 = !DILocation(line: 678, column: 1, scope: !5592)
!5619 = distinct !DISubprogram(name: "aes256_ctr_keyexp", scope: !80, file: !80, line: 681, type: !5593, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5620 = !DILocalVariable(name: "r", arg: 1, scope: !5619, file: !80, line: 681, type: !5595)
!5621 = !DILocation(line: 0, scope: !5619)
!5622 = !DILocalVariable(name: "key", arg: 2, scope: !5619, file: !80, line: 681, type: !49)
!5623 = !DILocation(line: 682, column: 5, scope: !5619)
!5624 = !DILocation(line: 683, column: 1, scope: !5619)
!5625 = distinct !DISubprogram(name: "aes128_ecb", scope: !80, file: !80, line: 686, type: !5626, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5626 = !DISubroutineType(types: !5627)
!5627 = !{null, !18, !49, !15, !5628}
!5628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5629, size: 32)
!5629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4942)
!5630 = !DILocalVariable(name: "out", arg: 1, scope: !5625, file: !80, line: 686, type: !18)
!5631 = !DILocation(line: 0, scope: !5625)
!5632 = !DILocalVariable(name: "in", arg: 2, scope: !5625, file: !80, line: 686, type: !49)
!5633 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5625, file: !80, line: 686, type: !15)
!5634 = !DILocalVariable(name: "ctx", arg: 4, scope: !5625, file: !80, line: 686, type: !5628)
!5635 = !DILocation(line: 687, column: 36, scope: !5625)
!5636 = !DILocation(line: 687, column: 5, scope: !5625)
!5637 = !DILocation(line: 688, column: 1, scope: !5625)
!5638 = distinct !DISubprogram(name: "aes_ecb", scope: !80, file: !80, line: 587, type: !5639, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5639 = !DISubroutineType(types: !5640)
!5640 = !{null, !18, !49, !15, !428, !17}
!5641 = !DILocalVariable(name: "out", arg: 1, scope: !5638, file: !80, line: 587, type: !18)
!5642 = !DILocation(line: 0, scope: !5638)
!5643 = !DILocalVariable(name: "in", arg: 2, scope: !5638, file: !80, line: 587, type: !49)
!5644 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5638, file: !80, line: 587, type: !15)
!5645 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5638, file: !80, line: 587, type: !428)
!5646 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5638, file: !80, line: 587, type: !17)
!5647 = !DILocalVariable(name: "blocks", scope: !5638, file: !80, line: 588, type: !5648)
!5648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !117)
!5649 = !DILocation(line: 588, column: 14, scope: !5638)
!5650 = !DILocalVariable(name: "t", scope: !5638, file: !80, line: 589, type: !5651)
!5651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !5652)
!5652 = !{!5653}
!5653 = !DISubrange(count: 64)
!5654 = !DILocation(line: 589, column: 19, scope: !5638)
!5655 = !DILocation(line: 591, column: 5, scope: !5638)
!5656 = !DILocation(line: 591, column: 20, scope: !5638)
!5657 = !DILocation(line: 592, column: 9, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5638, file: !80, line: 591, column: 26)
!5659 = !DILocation(line: 593, column: 9, scope: !5658)
!5660 = !DILocation(line: 594, column: 17, scope: !5658)
!5661 = !DILocation(line: 595, column: 12, scope: !5658)
!5662 = !DILocation(line: 596, column: 13, scope: !5658)
!5663 = distinct !{!5663, !5655, !5664, !244}
!5664 = !DILocation(line: 597, column: 5, scope: !5638)
!5665 = !DILocation(line: 599, column: 9, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5638, file: !80, line: 599, column: 9)
!5667 = !DILocation(line: 600, column: 42, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5666, file: !80, line: 599, column: 18)
!5669 = !DILocation(line: 600, column: 9, scope: !5668)
!5670 = !DILocation(line: 601, column: 9, scope: !5668)
!5671 = !DILocation(line: 602, column: 32, scope: !5668)
!5672 = !DILocation(line: 602, column: 9, scope: !5668)
!5673 = !DILocation(line: 603, column: 5, scope: !5668)
!5674 = !DILocation(line: 604, column: 1, scope: !5638)
!5675 = distinct !DISubprogram(name: "aes_ecb4x", scope: !80, file: !80, line: 545, type: !5676, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{null, !18, !5175, !428, !17}
!5678 = !DILocalVariable(name: "out", arg: 1, scope: !5675, file: !80, line: 545, type: !18)
!5679 = !DILocation(line: 0, scope: !5675)
!5680 = !DILocalVariable(name: "ivw", arg: 2, scope: !5675, file: !80, line: 545, type: !5175)
!5681 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !5675, file: !80, line: 545, type: !428)
!5682 = !DILocalVariable(name: "nrounds", arg: 4, scope: !5675, file: !80, line: 545, type: !17)
!5683 = !DILocalVariable(name: "w", scope: !5675, file: !80, line: 546, type: !5648)
!5684 = !DILocation(line: 546, column: 14, scope: !5675)
!5685 = !DILocalVariable(name: "q", scope: !5675, file: !80, line: 547, type: !5033)
!5686 = !DILocation(line: 547, column: 14, scope: !5675)
!5687 = !DILocation(line: 550, column: 5, scope: !5675)
!5688 = !DILocalVariable(name: "i", scope: !5675, file: !80, line: 548, type: !17)
!5689 = !DILocation(line: 551, column: 10, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5675, file: !80, line: 551, column: 5)
!5691 = !DILocation(line: 551, scope: !5690)
!5692 = !DILocation(line: 551, column: 19, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5690, file: !80, line: 551, column: 5)
!5694 = !DILocation(line: 551, column: 5, scope: !5690)
!5695 = !DILocation(line: 552, column: 36, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5693, file: !80, line: 551, column: 29)
!5697 = !DILocation(line: 552, column: 47, scope: !5696)
!5698 = !DILocation(line: 552, column: 43, scope: !5696)
!5699 = !DILocation(line: 552, column: 55, scope: !5696)
!5700 = !DILocation(line: 552, column: 9, scope: !5696)
!5701 = !DILocation(line: 551, column: 25, scope: !5693)
!5702 = !DILocation(line: 551, column: 5, scope: !5693)
!5703 = distinct !{!5703, !5694, !5704, !244}
!5704 = !DILocation(line: 553, column: 5, scope: !5690)
!5705 = !DILocation(line: 554, column: 5, scope: !5675)
!5706 = !DILocation(line: 557, column: 5, scope: !5675)
!5707 = !DILocation(line: 558, column: 10, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5675, file: !80, line: 558, column: 5)
!5709 = !DILocation(line: 558, scope: !5708)
!5710 = !DILocation(line: 558, column: 19, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5708, file: !80, line: 558, column: 5)
!5712 = !DILocation(line: 558, column: 5, scope: !5708)
!5713 = !DILocation(line: 559, column: 9, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5711, file: !80, line: 558, column: 35)
!5715 = !DILocation(line: 560, column: 9, scope: !5714)
!5716 = !DILocation(line: 561, column: 9, scope: !5714)
!5717 = !DILocation(line: 562, column: 33, scope: !5714)
!5718 = !DILocation(line: 562, column: 9, scope: !5714)
!5719 = !DILocation(line: 558, column: 31, scope: !5711)
!5720 = !DILocation(line: 558, column: 5, scope: !5711)
!5721 = distinct !{!5721, !5712, !5722, !244}
!5722 = !DILocation(line: 563, column: 5, scope: !5708)
!5723 = !DILocation(line: 564, column: 5, scope: !5675)
!5724 = !DILocation(line: 565, column: 5, scope: !5675)
!5725 = !DILocation(line: 566, column: 29, scope: !5675)
!5726 = !DILocation(line: 566, column: 5, scope: !5675)
!5727 = !DILocation(line: 568, column: 5, scope: !5675)
!5728 = !DILocation(line: 569, column: 10, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5675, file: !80, line: 569, column: 5)
!5730 = !DILocation(line: 569, scope: !5729)
!5731 = !DILocation(line: 569, column: 19, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5729, file: !80, line: 569, column: 5)
!5733 = !DILocation(line: 569, column: 5, scope: !5729)
!5734 = !DILocation(line: 570, column: 38, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5732, file: !80, line: 569, column: 30)
!5736 = !DILocation(line: 570, column: 50, scope: !5735)
!5737 = !DILocation(line: 570, column: 60, scope: !5735)
!5738 = !DILocation(line: 570, column: 56, scope: !5735)
!5739 = !DILocation(line: 570, column: 9, scope: !5735)
!5740 = !DILocation(line: 569, column: 26, scope: !5732)
!5741 = !DILocation(line: 569, column: 5, scope: !5732)
!5742 = distinct !{!5742, !5733, !5743, !244}
!5743 = !DILocation(line: 571, column: 5, scope: !5729)
!5744 = !DILocation(line: 572, column: 5, scope: !5675)
!5745 = !DILocation(line: 573, column: 1, scope: !5675)
!5746 = distinct !DISubprogram(name: "add_round_key", scope: !80, file: !80, line: 475, type: !5747, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5747 = !DISubroutineType(types: !5748)
!5748 = !{null, !5, !428}
!5749 = !DILocalVariable(name: "q", arg: 1, scope: !5746, file: !80, line: 475, type: !5)
!5750 = !DILocation(line: 0, scope: !5746)
!5751 = !DILocalVariable(name: "sk", arg: 2, scope: !5746, file: !80, line: 475, type: !428)
!5752 = !DILocation(line: 476, column: 13, scope: !5746)
!5753 = !DILocation(line: 476, column: 10, scope: !5746)
!5754 = !DILocation(line: 477, column: 13, scope: !5746)
!5755 = !DILocation(line: 477, column: 5, scope: !5746)
!5756 = !DILocation(line: 477, column: 10, scope: !5746)
!5757 = !DILocation(line: 478, column: 13, scope: !5746)
!5758 = !DILocation(line: 478, column: 5, scope: !5746)
!5759 = !DILocation(line: 478, column: 10, scope: !5746)
!5760 = !DILocation(line: 479, column: 13, scope: !5746)
!5761 = !DILocation(line: 479, column: 5, scope: !5746)
!5762 = !DILocation(line: 479, column: 10, scope: !5746)
!5763 = !DILocation(line: 480, column: 13, scope: !5746)
!5764 = !DILocation(line: 480, column: 5, scope: !5746)
!5765 = !DILocation(line: 480, column: 10, scope: !5746)
!5766 = !DILocation(line: 481, column: 13, scope: !5746)
!5767 = !DILocation(line: 481, column: 5, scope: !5746)
!5768 = !DILocation(line: 481, column: 10, scope: !5746)
!5769 = !DILocation(line: 482, column: 13, scope: !5746)
!5770 = !DILocation(line: 482, column: 5, scope: !5746)
!5771 = !DILocation(line: 482, column: 10, scope: !5746)
!5772 = !DILocation(line: 483, column: 13, scope: !5746)
!5773 = !DILocation(line: 483, column: 5, scope: !5746)
!5774 = !DILocation(line: 483, column: 10, scope: !5746)
!5775 = !DILocation(line: 484, column: 1, scope: !5746)
!5776 = distinct !DISubprogram(name: "shift_rows", scope: !80, file: !80, line: 486, type: !26, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5777 = !DILocalVariable(name: "q", arg: 1, scope: !5776, file: !80, line: 486, type: !5)
!5778 = !DILocation(line: 0, scope: !5776)
!5779 = !DILocalVariable(name: "i", scope: !5776, file: !80, line: 487, type: !45)
!5780 = !DILocation(line: 489, column: 10, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5776, file: !80, line: 489, column: 5)
!5782 = !DILocation(line: 489, scope: !5781)
!5783 = !DILocation(line: 489, column: 19, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5781, file: !80, line: 489, column: 5)
!5785 = !DILocation(line: 489, column: 5, scope: !5781)
!5786 = !DILocation(line: 492, column: 13, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5784, file: !80, line: 489, column: 30)
!5788 = !DILocalVariable(name: "x", scope: !5787, file: !80, line: 490, type: !6)
!5789 = !DILocation(line: 0, scope: !5787)
!5790 = !DILocation(line: 493, column: 19, scope: !5787)
!5791 = !DILocation(line: 494, column: 54, scope: !5787)
!5792 = !DILocation(line: 494, column: 16, scope: !5787)
!5793 = !DILocation(line: 495, column: 54, scope: !5787)
!5794 = !DILocation(line: 495, column: 16, scope: !5787)
!5795 = !DILocation(line: 496, column: 54, scope: !5787)
!5796 = !DILocation(line: 496, column: 16, scope: !5787)
!5797 = !DILocation(line: 497, column: 54, scope: !5787)
!5798 = !DILocation(line: 497, column: 16, scope: !5787)
!5799 = !DILocation(line: 498, column: 54, scope: !5787)
!5800 = !DILocation(line: 498, column: 16, scope: !5787)
!5801 = !DILocation(line: 499, column: 54, scope: !5787)
!5802 = !DILocation(line: 499, column: 16, scope: !5787)
!5803 = !DILocation(line: 493, column: 9, scope: !5787)
!5804 = !DILocation(line: 493, column: 14, scope: !5787)
!5805 = !DILocation(line: 489, column: 26, scope: !5784)
!5806 = !DILocation(line: 489, column: 5, scope: !5784)
!5807 = distinct !{!5807, !5785, !5808, !244}
!5808 = !DILocation(line: 500, column: 5, scope: !5781)
!5809 = !DILocation(line: 501, column: 1, scope: !5776)
!5810 = distinct !DISubprogram(name: "mix_columns", scope: !80, file: !80, line: 507, type: !26, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5811 = !DILocalVariable(name: "q", arg: 1, scope: !5810, file: !80, line: 507, type: !5)
!5812 = !DILocation(line: 0, scope: !5810)
!5813 = !DILocation(line: 511, column: 10, scope: !5810)
!5814 = !DILocalVariable(name: "q0", scope: !5810, file: !80, line: 508, type: !6)
!5815 = !DILocation(line: 512, column: 10, scope: !5810)
!5816 = !DILocalVariable(name: "q1", scope: !5810, file: !80, line: 508, type: !6)
!5817 = !DILocation(line: 513, column: 10, scope: !5810)
!5818 = !DILocalVariable(name: "q2", scope: !5810, file: !80, line: 508, type: !6)
!5819 = !DILocation(line: 514, column: 10, scope: !5810)
!5820 = !DILocalVariable(name: "q3", scope: !5810, file: !80, line: 508, type: !6)
!5821 = !DILocation(line: 515, column: 10, scope: !5810)
!5822 = !DILocalVariable(name: "q4", scope: !5810, file: !80, line: 508, type: !6)
!5823 = !DILocation(line: 516, column: 10, scope: !5810)
!5824 = !DILocalVariable(name: "q5", scope: !5810, file: !80, line: 508, type: !6)
!5825 = !DILocation(line: 517, column: 10, scope: !5810)
!5826 = !DILocalVariable(name: "q6", scope: !5810, file: !80, line: 508, type: !6)
!5827 = !DILocation(line: 518, column: 10, scope: !5810)
!5828 = !DILocalVariable(name: "q7", scope: !5810, file: !80, line: 508, type: !6)
!5829 = !DILocation(line: 519, column: 21, scope: !5810)
!5830 = !DILocalVariable(name: "r0", scope: !5810, file: !80, line: 509, type: !6)
!5831 = !DILocation(line: 520, column: 21, scope: !5810)
!5832 = !DILocalVariable(name: "r1", scope: !5810, file: !80, line: 509, type: !6)
!5833 = !DILocation(line: 521, column: 21, scope: !5810)
!5834 = !DILocalVariable(name: "r2", scope: !5810, file: !80, line: 509, type: !6)
!5835 = !DILocation(line: 522, column: 21, scope: !5810)
!5836 = !DILocalVariable(name: "r3", scope: !5810, file: !80, line: 509, type: !6)
!5837 = !DILocation(line: 523, column: 21, scope: !5810)
!5838 = !DILocalVariable(name: "r4", scope: !5810, file: !80, line: 509, type: !6)
!5839 = !DILocation(line: 524, column: 21, scope: !5810)
!5840 = !DILocalVariable(name: "r5", scope: !5810, file: !80, line: 509, type: !6)
!5841 = !DILocation(line: 525, column: 21, scope: !5810)
!5842 = !DILocalVariable(name: "r6", scope: !5810, file: !80, line: 509, type: !6)
!5843 = !DILocation(line: 526, column: 21, scope: !5810)
!5844 = !DILocalVariable(name: "r7", scope: !5810, file: !80, line: 509, type: !6)
!5845 = !DILocation(line: 528, column: 37, scope: !5810)
!5846 = !DILocation(line: 528, column: 27, scope: !5810)
!5847 = !DILocation(line: 528, column: 25, scope: !5810)
!5848 = !DILocation(line: 528, column: 10, scope: !5810)
!5849 = !DILocation(line: 529, column: 47, scope: !5810)
!5850 = !DILocation(line: 529, column: 37, scope: !5810)
!5851 = !DILocation(line: 529, column: 35, scope: !5810)
!5852 = !DILocation(line: 529, column: 5, scope: !5810)
!5853 = !DILocation(line: 529, column: 10, scope: !5810)
!5854 = !DILocation(line: 530, column: 37, scope: !5810)
!5855 = !DILocation(line: 530, column: 27, scope: !5810)
!5856 = !DILocation(line: 530, column: 25, scope: !5810)
!5857 = !DILocation(line: 530, column: 5, scope: !5810)
!5858 = !DILocation(line: 530, column: 10, scope: !5810)
!5859 = !DILocation(line: 531, column: 47, scope: !5810)
!5860 = !DILocation(line: 531, column: 37, scope: !5810)
!5861 = !DILocation(line: 531, column: 35, scope: !5810)
!5862 = !DILocation(line: 531, column: 5, scope: !5810)
!5863 = !DILocation(line: 531, column: 10, scope: !5810)
!5864 = !DILocation(line: 532, column: 47, scope: !5810)
!5865 = !DILocation(line: 532, column: 37, scope: !5810)
!5866 = !DILocation(line: 532, column: 35, scope: !5810)
!5867 = !DILocation(line: 532, column: 5, scope: !5810)
!5868 = !DILocation(line: 532, column: 10, scope: !5810)
!5869 = !DILocation(line: 533, column: 37, scope: !5810)
!5870 = !DILocation(line: 533, column: 27, scope: !5810)
!5871 = !DILocation(line: 533, column: 25, scope: !5810)
!5872 = !DILocation(line: 533, column: 5, scope: !5810)
!5873 = !DILocation(line: 533, column: 10, scope: !5810)
!5874 = !DILocation(line: 534, column: 37, scope: !5810)
!5875 = !DILocation(line: 534, column: 27, scope: !5810)
!5876 = !DILocation(line: 534, column: 25, scope: !5810)
!5877 = !DILocation(line: 534, column: 5, scope: !5810)
!5878 = !DILocation(line: 534, column: 10, scope: !5810)
!5879 = !DILocation(line: 535, column: 37, scope: !5810)
!5880 = !DILocation(line: 535, column: 27, scope: !5810)
!5881 = !DILocation(line: 535, column: 25, scope: !5810)
!5882 = !DILocation(line: 535, column: 5, scope: !5810)
!5883 = !DILocation(line: 535, column: 10, scope: !5810)
!5884 = !DILocation(line: 536, column: 1, scope: !5810)
!5885 = distinct !DISubprogram(name: "br_aes_ct64_interleave_out", scope: !80, file: !80, line: 367, type: !5886, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5886 = !DISubroutineType(types: !5887)
!5887 = !{null, !5140, !6, !6}
!5888 = !DILocalVariable(name: "w", arg: 1, scope: !5885, file: !80, line: 367, type: !5140)
!5889 = !DILocation(line: 0, scope: !5885)
!5890 = !DILocalVariable(name: "q0", arg: 2, scope: !5885, file: !80, line: 367, type: !6)
!5891 = !DILocalVariable(name: "q1", arg: 3, scope: !5885, file: !80, line: 367, type: !6)
!5892 = !DILocation(line: 370, column: 13, scope: !5885)
!5893 = !DILocalVariable(name: "x0", scope: !5885, file: !80, line: 368, type: !6)
!5894 = !DILocation(line: 371, column: 13, scope: !5885)
!5895 = !DILocalVariable(name: "x1", scope: !5885, file: !80, line: 368, type: !6)
!5896 = !DILocation(line: 372, column: 14, scope: !5885)
!5897 = !DILocation(line: 372, column: 20, scope: !5885)
!5898 = !DILocalVariable(name: "x2", scope: !5885, file: !80, line: 368, type: !6)
!5899 = !DILocation(line: 373, column: 14, scope: !5885)
!5900 = !DILocation(line: 373, column: 20, scope: !5885)
!5901 = !DILocalVariable(name: "x3", scope: !5885, file: !80, line: 368, type: !6)
!5902 = !DILocation(line: 374, column: 15, scope: !5885)
!5903 = !DILocation(line: 374, column: 8, scope: !5885)
!5904 = !DILocation(line: 375, column: 15, scope: !5885)
!5905 = !DILocation(line: 375, column: 8, scope: !5885)
!5906 = !DILocation(line: 376, column: 8, scope: !5885)
!5907 = !DILocation(line: 377, column: 8, scope: !5885)
!5908 = !DILocation(line: 378, column: 8, scope: !5885)
!5909 = !DILocation(line: 379, column: 8, scope: !5885)
!5910 = !DILocation(line: 382, column: 41, scope: !5885)
!5911 = !DILocation(line: 382, column: 25, scope: !5885)
!5912 = !DILocation(line: 382, column: 10, scope: !5885)
!5913 = !DILocation(line: 383, column: 41, scope: !5885)
!5914 = !DILocation(line: 383, column: 25, scope: !5885)
!5915 = !DILocation(line: 383, column: 5, scope: !5885)
!5916 = !DILocation(line: 383, column: 10, scope: !5885)
!5917 = !DILocation(line: 384, column: 41, scope: !5885)
!5918 = !DILocation(line: 384, column: 25, scope: !5885)
!5919 = !DILocation(line: 384, column: 5, scope: !5885)
!5920 = !DILocation(line: 384, column: 10, scope: !5885)
!5921 = !DILocation(line: 385, column: 41, scope: !5885)
!5922 = !DILocation(line: 385, column: 25, scope: !5885)
!5923 = !DILocation(line: 385, column: 5, scope: !5885)
!5924 = !DILocation(line: 385, column: 10, scope: !5885)
!5925 = !DILocation(line: 386, column: 1, scope: !5885)
!5926 = distinct !DISubprogram(name: "br_range_enc32le", scope: !80, file: !80, line: 127, type: !5927, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5927 = !DISubroutineType(types: !5928)
!5928 = !{null, !18, !5175, !15}
!5929 = !DILocalVariable(name: "dst", arg: 1, scope: !5926, file: !80, line: 127, type: !18)
!5930 = !DILocation(line: 0, scope: !5926)
!5931 = !DILocalVariable(name: "v", arg: 2, scope: !5926, file: !80, line: 127, type: !5175)
!5932 = !DILocalVariable(name: "num", arg: 3, scope: !5926, file: !80, line: 127, type: !15)
!5933 = !DILocation(line: 128, column: 5, scope: !5926)
!5934 = !DILocation(line: 128, column: 18, scope: !5926)
!5935 = !DILocation(line: 128, column: 15, scope: !5926)
!5936 = !DILocation(line: 129, column: 28, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5926, file: !80, line: 128, column: 23)
!5938 = !DILocation(line: 129, column: 25, scope: !5937)
!5939 = !DILocation(line: 129, column: 9, scope: !5937)
!5940 = !DILocation(line: 130, column: 13, scope: !5937)
!5941 = distinct !{!5941, !5933, !5942, !244}
!5942 = !DILocation(line: 131, column: 5, scope: !5926)
!5943 = !DILocation(line: 132, column: 1, scope: !5926)
!5944 = distinct !DISubprogram(name: "br_enc32le", scope: !80, file: !80, line: 119, type: !5945, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5945 = !DISubroutineType(types: !5946)
!5946 = !{null, !18, !19}
!5947 = !DILocalVariable(name: "dst", arg: 1, scope: !5944, file: !80, line: 119, type: !18)
!5948 = !DILocation(line: 0, scope: !5944)
!5949 = !DILocalVariable(name: "x", arg: 2, scope: !5944, file: !80, line: 119, type: !19)
!5950 = !DILocation(line: 120, column: 14, scope: !5944)
!5951 = !DILocation(line: 120, column: 12, scope: !5944)
!5952 = !DILocation(line: 121, column: 32, scope: !5944)
!5953 = !DILocation(line: 121, column: 14, scope: !5944)
!5954 = !DILocation(line: 121, column: 5, scope: !5944)
!5955 = !DILocation(line: 121, column: 12, scope: !5944)
!5956 = !DILocation(line: 122, column: 32, scope: !5944)
!5957 = !DILocation(line: 122, column: 14, scope: !5944)
!5958 = !DILocation(line: 122, column: 5, scope: !5944)
!5959 = !DILocation(line: 122, column: 12, scope: !5944)
!5960 = !DILocation(line: 123, column: 32, scope: !5944)
!5961 = !DILocation(line: 123, column: 14, scope: !5944)
!5962 = !DILocation(line: 123, column: 5, scope: !5944)
!5963 = !DILocation(line: 123, column: 12, scope: !5944)
!5964 = !DILocation(line: 124, column: 1, scope: !5944)
!5965 = distinct !DISubprogram(name: "rotr32", scope: !80, file: !80, line: 503, type: !5966, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5966 = !DISubroutineType(types: !5967)
!5967 = !{!6, !6}
!5968 = !DILocalVariable(name: "x", arg: 1, scope: !5965, file: !80, line: 503, type: !6)
!5969 = !DILocation(line: 0, scope: !5965)
!5970 = !DILocation(line: 504, column: 22, scope: !5965)
!5971 = !DILocation(line: 504, column: 5, scope: !5965)
!5972 = distinct !DISubprogram(name: "aes128_ctr", scope: !80, file: !80, line: 690, type: !5973, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5973 = !DISubroutineType(types: !5974)
!5974 = !{null, !18, !15, !49, !5628}
!5975 = !DILocalVariable(name: "out", arg: 1, scope: !5972, file: !80, line: 690, type: !18)
!5976 = !DILocation(line: 0, scope: !5972)
!5977 = !DILocalVariable(name: "outlen", arg: 2, scope: !5972, file: !80, line: 690, type: !15)
!5978 = !DILocalVariable(name: "iv", arg: 3, scope: !5972, file: !80, line: 690, type: !49)
!5979 = !DILocalVariable(name: "ctx", arg: 4, scope: !5972, file: !80, line: 690, type: !5628)
!5980 = !DILocation(line: 691, column: 35, scope: !5972)
!5981 = !DILocation(line: 691, column: 5, scope: !5972)
!5982 = !DILocation(line: 692, column: 1, scope: !5972)
!5983 = distinct !DISubprogram(name: "aes_ctr", scope: !80, file: !80, line: 607, type: !5984, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5984 = !DISubroutineType(types: !5985)
!5985 = !{null, !18, !15, !49, !428, !17}
!5986 = !DILocalVariable(name: "out", arg: 1, scope: !5983, file: !80, line: 607, type: !18)
!5987 = !DILocation(line: 0, scope: !5983)
!5988 = !DILocalVariable(name: "outlen", arg: 2, scope: !5983, file: !80, line: 607, type: !15)
!5989 = !DILocalVariable(name: "iv", arg: 3, scope: !5983, file: !80, line: 607, type: !49)
!5990 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5983, file: !80, line: 607, type: !428)
!5991 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5983, file: !80, line: 607, type: !17)
!5992 = !DILocalVariable(name: "ivw", scope: !5983, file: !80, line: 608, type: !5648)
!5993 = !DILocation(line: 608, column: 14, scope: !5983)
!5994 = !DILocalVariable(name: "cc", scope: !5983, file: !80, line: 610, type: !19)
!5995 = !DILocation(line: 612, column: 5, scope: !5983)
!5996 = !DILocation(line: 613, column: 16, scope: !5983)
!5997 = !DILocation(line: 613, column: 5, scope: !5983)
!5998 = !DILocation(line: 614, column: 16, scope: !5983)
!5999 = !DILocation(line: 614, column: 5, scope: !5983)
!6000 = !DILocation(line: 615, column: 16, scope: !5983)
!6001 = !DILocation(line: 615, column: 5, scope: !5983)
!6002 = !DILocation(line: 616, column: 15, scope: !5983)
!6003 = !DILocation(line: 616, column: 5, scope: !5983)
!6004 = !DILocation(line: 616, column: 13, scope: !5983)
!6005 = !DILocation(line: 617, column: 15, scope: !5983)
!6006 = !DILocation(line: 617, column: 5, scope: !5983)
!6007 = !DILocation(line: 617, column: 13, scope: !5983)
!6008 = !DILocation(line: 618, column: 15, scope: !5983)
!6009 = !DILocation(line: 618, column: 5, scope: !5983)
!6010 = !DILocation(line: 618, column: 13, scope: !5983)
!6011 = !DILocation(line: 619, column: 15, scope: !5983)
!6012 = !DILocation(line: 619, column: 5, scope: !5983)
!6013 = !DILocation(line: 619, column: 13, scope: !5983)
!6014 = !DILocation(line: 621, column: 5, scope: !5983)
!6015 = !DILocation(line: 621, column: 19, scope: !5983)
!6016 = !DILocation(line: 622, column: 9, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !5983, file: !80, line: 621, column: 25)
!6018 = !DILocation(line: 623, column: 13, scope: !6017)
!6019 = !DILocation(line: 624, column: 16, scope: !6017)
!6020 = distinct !{!6020, !6014, !6021, !244}
!6021 = !DILocation(line: 625, column: 5, scope: !5983)
!6022 = !DILocation(line: 626, column: 16, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !5983, file: !80, line: 626, column: 9)
!6024 = !DILocalVariable(name: "tmp", scope: !6025, file: !80, line: 627, type: !5651)
!6025 = distinct !DILexicalBlock(scope: !6023, file: !80, line: 626, column: 21)
!6026 = !DILocation(line: 627, column: 23, scope: !6025)
!6027 = !DILocation(line: 628, column: 9, scope: !6025)
!6028 = !DILocalVariable(name: "i", scope: !5983, file: !80, line: 609, type: !15)
!6029 = !DILocation(line: 629, column: 14, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !6025, file: !80, line: 629, column: 9)
!6031 = !DILocation(line: 629, scope: !6030)
!6032 = !DILocation(line: 629, column: 23, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6030, file: !80, line: 629, column: 9)
!6034 = !DILocation(line: 629, column: 9, scope: !6030)
!6035 = !DILocation(line: 630, column: 22, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !6033, file: !80, line: 629, column: 38)
!6037 = !DILocation(line: 630, column: 13, scope: !6036)
!6038 = !DILocation(line: 630, column: 20, scope: !6036)
!6039 = !DILocation(line: 629, column: 34, scope: !6033)
!6040 = !DILocation(line: 629, column: 9, scope: !6033)
!6041 = distinct !{!6041, !6034, !6042, !244}
!6042 = !DILocation(line: 631, column: 9, scope: !6030)
!6043 = !DILocation(line: 633, column: 1, scope: !5983)
!6044 = distinct !DISubprogram(name: "br_swap32", scope: !80, file: !80, line: 112, type: !5157, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6045 = !DILocalVariable(name: "x", arg: 1, scope: !6044, file: !80, line: 112, type: !19)
!6046 = !DILocation(line: 0, scope: !6044)
!6047 = !DILocation(line: 115, column: 22, scope: !6044)
!6048 = !DILocation(line: 115, column: 5, scope: !6044)
!6049 = distinct !DISubprogram(name: "aes_ctr4x", scope: !80, file: !80, line: 576, type: !6050, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6050 = !DISubroutineType(types: !6051)
!6051 = !{null, !18, !5140, !428, !17}
!6052 = !DILocalVariable(name: "out", arg: 1, scope: !6049, file: !80, line: 576, type: !18)
!6053 = !DILocation(line: 0, scope: !6049)
!6054 = !DILocalVariable(name: "ivw", arg: 2, scope: !6049, file: !80, line: 576, type: !5140)
!6055 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !6049, file: !80, line: 576, type: !428)
!6056 = !DILocalVariable(name: "nrounds", arg: 4, scope: !6049, file: !80, line: 576, type: !17)
!6057 = !DILocation(line: 577, column: 5, scope: !6049)
!6058 = !DILocation(line: 580, column: 17, scope: !6049)
!6059 = !DILocation(line: 580, column: 5, scope: !6049)
!6060 = !DILocation(line: 581, column: 17, scope: !6049)
!6061 = !DILocation(line: 581, column: 5, scope: !6049)
!6062 = !DILocation(line: 582, column: 17, scope: !6049)
!6063 = !DILocation(line: 582, column: 5, scope: !6049)
!6064 = !DILocation(line: 583, column: 17, scope: !6049)
!6065 = !DILocation(line: 583, column: 5, scope: !6049)
!6066 = !DILocation(line: 584, column: 1, scope: !6049)
!6067 = distinct !DISubprogram(name: "inc4_be", scope: !80, file: !80, line: 539, type: !6068, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6068 = !DISubroutineType(types: !6069)
!6069 = !{null, !5140}
!6070 = !DILocalVariable(name: "x", arg: 1, scope: !6067, file: !80, line: 539, type: !5140)
!6071 = !DILocation(line: 0, scope: !6067)
!6072 = !DILocation(line: 540, column: 28, scope: !6067)
!6073 = !DILocation(line: 540, column: 18, scope: !6067)
!6074 = !DILocation(line: 540, column: 32, scope: !6067)
!6075 = !DILocalVariable(name: "t", scope: !6067, file: !80, line: 540, type: !19)
!6076 = !DILocation(line: 541, column: 10, scope: !6067)
!6077 = !DILocation(line: 541, column: 8, scope: !6067)
!6078 = !DILocation(line: 542, column: 1, scope: !6067)
!6079 = distinct !DISubprogram(name: "aes192_ecb", scope: !80, file: !80, line: 694, type: !6080, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6080 = !DISubroutineType(types: !6081)
!6081 = !{null, !18, !49, !15, !6082}
!6082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6083, size: 32)
!6083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5563)
!6084 = !DILocalVariable(name: "out", arg: 1, scope: !6079, file: !80, line: 694, type: !18)
!6085 = !DILocation(line: 0, scope: !6079)
!6086 = !DILocalVariable(name: "in", arg: 2, scope: !6079, file: !80, line: 694, type: !49)
!6087 = !DILocalVariable(name: "nblocks", arg: 3, scope: !6079, file: !80, line: 694, type: !15)
!6088 = !DILocalVariable(name: "ctx", arg: 4, scope: !6079, file: !80, line: 694, type: !6082)
!6089 = !DILocation(line: 695, column: 36, scope: !6079)
!6090 = !DILocation(line: 695, column: 5, scope: !6079)
!6091 = !DILocation(line: 696, column: 1, scope: !6079)
!6092 = distinct !DISubprogram(name: "aes192_ctr", scope: !80, file: !80, line: 698, type: !6093, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6093 = !DISubroutineType(types: !6094)
!6094 = !{null, !18, !15, !49, !6082}
!6095 = !DILocalVariable(name: "out", arg: 1, scope: !6092, file: !80, line: 698, type: !18)
!6096 = !DILocation(line: 0, scope: !6092)
!6097 = !DILocalVariable(name: "outlen", arg: 2, scope: !6092, file: !80, line: 698, type: !15)
!6098 = !DILocalVariable(name: "iv", arg: 3, scope: !6092, file: !80, line: 698, type: !49)
!6099 = !DILocalVariable(name: "ctx", arg: 4, scope: !6092, file: !80, line: 698, type: !6082)
!6100 = !DILocation(line: 699, column: 35, scope: !6092)
!6101 = !DILocation(line: 699, column: 5, scope: !6092)
!6102 = !DILocation(line: 700, column: 1, scope: !6092)
!6103 = distinct !DISubprogram(name: "aes256_ecb", scope: !80, file: !80, line: 702, type: !6104, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6104 = !DISubroutineType(types: !6105)
!6105 = !{null, !18, !49, !15, !6106}
!6106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6107, size: 32)
!6107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5596)
!6108 = !DILocalVariable(name: "out", arg: 1, scope: !6103, file: !80, line: 702, type: !18)
!6109 = !DILocation(line: 0, scope: !6103)
!6110 = !DILocalVariable(name: "in", arg: 2, scope: !6103, file: !80, line: 702, type: !49)
!6111 = !DILocalVariable(name: "nblocks", arg: 3, scope: !6103, file: !80, line: 702, type: !15)
!6112 = !DILocalVariable(name: "ctx", arg: 4, scope: !6103, file: !80, line: 702, type: !6106)
!6113 = !DILocation(line: 703, column: 36, scope: !6103)
!6114 = !DILocation(line: 703, column: 5, scope: !6103)
!6115 = !DILocation(line: 704, column: 1, scope: !6103)
!6116 = distinct !DISubprogram(name: "aes256_ctr", scope: !80, file: !80, line: 706, type: !6117, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6117 = !DISubroutineType(types: !6118)
!6118 = !{null, !18, !15, !49, !6106}
!6119 = !DILocalVariable(name: "out", arg: 1, scope: !6116, file: !80, line: 706, type: !18)
!6120 = !DILocation(line: 0, scope: !6116)
!6121 = !DILocalVariable(name: "outlen", arg: 2, scope: !6116, file: !80, line: 706, type: !15)
!6122 = !DILocalVariable(name: "iv", arg: 3, scope: !6116, file: !80, line: 706, type: !49)
!6123 = !DILocalVariable(name: "ctx", arg: 4, scope: !6116, file: !80, line: 706, type: !6106)
!6124 = !DILocation(line: 707, column: 35, scope: !6116)
!6125 = !DILocation(line: 707, column: 5, scope: !6116)
!6126 = !DILocation(line: 708, column: 1, scope: !6116)
!6127 = distinct !DISubprogram(name: "aes128_ctx_release", scope: !80, file: !80, line: 710, type: !6128, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6128 = !DISubroutineType(types: !6129)
!6129 = !{null, !4941}
!6130 = !DILocalVariable(name: "r", arg: 1, scope: !6127, file: !80, line: 710, type: !4941)
!6131 = !DILocation(line: 0, scope: !6127)
!6132 = !DILocation(line: 711, column: 13, scope: !6127)
!6133 = !DILocation(line: 711, column: 5, scope: !6127)
!6134 = !DILocation(line: 712, column: 1, scope: !6127)
!6135 = distinct !DISubprogram(name: "aes192_ctx_release", scope: !80, file: !80, line: 714, type: !6136, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6136 = !DISubroutineType(types: !6137)
!6137 = !{null, !5562}
!6138 = !DILocalVariable(name: "r", arg: 1, scope: !6135, file: !80, line: 714, type: !5562)
!6139 = !DILocation(line: 0, scope: !6135)
!6140 = !DILocation(line: 715, column: 13, scope: !6135)
!6141 = !DILocation(line: 715, column: 5, scope: !6135)
!6142 = !DILocation(line: 716, column: 1, scope: !6135)
!6143 = distinct !DISubprogram(name: "aes256_ctx_release", scope: !80, file: !80, line: 718, type: !6144, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6144 = !DISubroutineType(types: !6145)
!6145 = !{null, !5595}
!6146 = !DILocalVariable(name: "r", arg: 1, scope: !6143, file: !80, line: 718, type: !5595)
!6147 = !DILocation(line: 0, scope: !6143)
!6148 = !DILocation(line: 719, column: 13, scope: !6143)
!6149 = !DILocation(line: 719, column: 5, scope: !6143)
!6150 = !DILocation(line: 720, column: 1, scope: !6143)
!6151 = distinct !DISubprogram(name: "AES_128_CTR", scope: !80, file: !80, line: 722, type: !6152, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6152 = !DISubroutineType(types: !6153)
!6153 = !{!45, !18, !15, !49, !15}
!6154 = !DILocalVariable(name: "output", arg: 1, scope: !6151, file: !80, line: 722, type: !18)
!6155 = !DILocation(line: 0, scope: !6151)
!6156 = !DILocalVariable(name: "outputByteLen", arg: 2, scope: !6151, file: !80, line: 722, type: !15)
!6157 = !DILocalVariable(name: "input", arg: 3, scope: !6151, file: !80, line: 723, type: !49)
!6158 = !DILocalVariable(name: "inputByteLen", arg: 4, scope: !6151, file: !80, line: 723, type: !15)
!6159 = !DILocalVariable(name: "ctx", scope: !6151, file: !80, line: 724, type: !4942)
!6160 = !DILocation(line: 724, column: 15, scope: !6151)
!6161 = !DILocalVariable(name: "iv", scope: !6151, file: !80, line: 725, type: !116)
!6162 = !DILocation(line: 725, column: 19, scope: !6151)
!6163 = !DILocation(line: 727, column: 5, scope: !6151)
!6164 = !DILocation(line: 728, column: 5, scope: !6151)
!6165 = !DILocation(line: 729, column: 5, scope: !6151)
!6166 = !DILocation(line: 731, column: 5, scope: !6151)
!6167 = distinct !DISubprogram(name: "AES_256_ECB", scope: !80, file: !80, line: 734, type: !6168, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6168 = !DISubroutineType(types: !6169)
!6169 = !{null, !257, !49, !18}
!6170 = !DILocalVariable(name: "input", arg: 1, scope: !6167, file: !80, line: 734, type: !257)
!6171 = !DILocation(line: 0, scope: !6167)
!6172 = !DILocalVariable(name: "key", arg: 2, scope: !6167, file: !80, line: 734, type: !49)
!6173 = !DILocalVariable(name: "output", arg: 3, scope: !6167, file: !80, line: 734, type: !18)
!6174 = !DILocalVariable(name: "ctx", scope: !6167, file: !80, line: 735, type: !5596)
!6175 = !DILocation(line: 735, column: 15, scope: !6167)
!6176 = !DILocation(line: 737, column: 5, scope: !6167)
!6177 = !DILocation(line: 738, column: 5, scope: !6167)
!6178 = !DILocation(line: 739, column: 5, scope: !6167)
!6179 = !DILocation(line: 740, column: 1, scope: !6167)
!6180 = !DILocalVariable(name: "mem", arg: 1, scope: !86, file: !87, line: 7, type: !69)
!6181 = !DILocation(line: 0, scope: !86)
!6182 = !DILocalVariable(name: "size", arg: 2, scope: !86, file: !87, line: 7, type: !15)
!6183 = !DILocation(line: 8, column: 9, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !86, file: !87, line: 8, column: 9)
!6185 = !DILocation(line: 11, column: 9, scope: !6186)
!6186 = distinct !DILexicalBlock(scope: !6184, file: !87, line: 8, column: 14)
!6187 = !DILocation(line: 12, column: 9, scope: !6186)
!6188 = !DILocation(line: 13, column: 5, scope: !6186)
!6189 = !DILocation(line: 14, column: 1, scope: !86)
!6190 = !DILocalVariable(name: "mem", arg: 1, scope: !94, file: !87, line: 15, type: !69)
!6191 = !DILocation(line: 0, scope: !94)
!6192 = !DILocalVariable(name: "size", arg: 2, scope: !94, file: !87, line: 15, type: !15)
!6193 = !DILocation(line: 18, column: 5, scope: !94)
!6194 = !DILocation(line: 19, column: 1, scope: !94)
!6195 = distinct !DISubprogram(name: "AES256_CTR_DRBG_Update", scope: !107, file: !107, line: 101, type: !6196, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6196 = !DISubroutineType(types: !6197)
!6197 = !{null, !18, !18, !18}
!6198 = !DILocalVariable(name: "provided_data", arg: 1, scope: !6195, file: !107, line: 101, type: !18)
!6199 = !DILocation(line: 0, scope: !6195)
!6200 = !DILocalVariable(name: "Key", arg: 2, scope: !6195, file: !107, line: 102, type: !18)
!6201 = !DILocalVariable(name: "V", arg: 3, scope: !6195, file: !107, line: 103, type: !18)
!6202 = !DILocalVariable(name: "temp", scope: !6195, file: !107, line: 104, type: !6203)
!6203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 384, elements: !6204)
!6204 = !{!6205}
!6205 = !DISubrange(count: 48)
!6206 = !DILocation(line: 104, column: 21, scope: !6195)
!6207 = !DILocalVariable(name: "i", scope: !6208, file: !107, line: 106, type: !45)
!6208 = distinct !DILexicalBlock(scope: !6195, file: !107, line: 106, column: 5)
!6209 = !DILocation(line: 0, scope: !6208)
!6210 = !DILocation(line: 106, column: 10, scope: !6208)
!6211 = !DILocation(line: 106, scope: !6208)
!6212 = !DILocation(line: 106, column: 23, scope: !6213)
!6213 = distinct !DILexicalBlock(scope: !6208, file: !107, line: 106, column: 5)
!6214 = !DILocation(line: 106, column: 5, scope: !6208)
!6215 = !DILocation(line: 108, column: 9, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !6217, file: !107, line: 108, column: 9)
!6217 = distinct !DILexicalBlock(scope: !6213, file: !107, line: 106, column: 33)
!6218 = !DILocation(line: 108, scope: !6216)
!6219 = !DILocalVariable(name: "j", scope: !6216, file: !107, line: 108, type: !45)
!6220 = !DILocation(line: 0, scope: !6216)
!6221 = !DILocation(line: 108, column: 28, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6216, file: !107, line: 108, column: 9)
!6223 = !DILocation(line: 109, column: 18, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6225, file: !107, line: 109, column: 18)
!6225 = distinct !DILexicalBlock(scope: !6222, file: !107, line: 108, column: 39)
!6226 = !DILocation(line: 109, column: 23, scope: !6224)
!6227 = !DILocation(line: 110, column: 17, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6224, file: !107, line: 109, column: 33)
!6229 = !DILocation(line: 110, column: 22, scope: !6228)
!6230 = !DILocation(line: 108, column: 35, scope: !6222)
!6231 = !DILocation(line: 108, column: 9, scope: !6222)
!6232 = distinct !{!6232, !6215, !6233, !244}
!6233 = !DILocation(line: 115, column: 9, scope: !6216)
!6234 = !DILocation(line: 112, column: 17, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6224, file: !107, line: 111, column: 20)
!6236 = !DILocation(line: 112, column: 21, scope: !6235)
!6237 = !DILocation(line: 113, column: 17, scope: !6235)
!6238 = !DILocation(line: 117, column: 38, scope: !6217)
!6239 = !DILocation(line: 117, column: 33, scope: !6217)
!6240 = !DILocation(line: 117, column: 9, scope: !6217)
!6241 = !DILocation(line: 106, column: 29, scope: !6213)
!6242 = !DILocation(line: 106, column: 5, scope: !6213)
!6243 = distinct !{!6243, !6214, !6244, !244}
!6244 = !DILocation(line: 118, column: 5, scope: !6208)
!6245 = !DILocation(line: 119, column: 24, scope: !6246)
!6246 = distinct !DILexicalBlock(scope: !6195, file: !107, line: 119, column: 10)
!6247 = !DILocation(line: 120, column: 9, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6246, file: !107, line: 120, column: 9)
!6249 = !DILocation(line: 120, scope: !6248)
!6250 = !DILocalVariable(name: "i", scope: !6248, file: !107, line: 120, type: !45)
!6251 = !DILocation(line: 0, scope: !6248)
!6252 = !DILocation(line: 120, column: 27, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6248, file: !107, line: 120, column: 9)
!6254 = !DILocation(line: 121, column: 24, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6253, file: !107, line: 120, column: 38)
!6256 = !DILocation(line: 121, column: 13, scope: !6255)
!6257 = !DILocation(line: 121, column: 21, scope: !6255)
!6258 = !DILocation(line: 120, column: 34, scope: !6253)
!6259 = !DILocation(line: 120, column: 9, scope: !6253)
!6260 = distinct !{!6260, !6247, !6261, !244}
!6261 = !DILocation(line: 122, column: 9, scope: !6248)
!6262 = !DILocation(line: 123, column: 5, scope: !6195)
!6263 = !DILocation(line: 124, column: 20, scope: !6195)
!6264 = !DILocation(line: 124, column: 5, scope: !6195)
!6265 = !DILocation(line: 125, column: 1, scope: !6195)
!6266 = distinct !DISubprogram(name: "AES256_ECB", scope: !107, file: !107, line: 24, type: !6196, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6267 = !DILocalVariable(name: "key", arg: 1, scope: !6266, file: !107, line: 24, type: !18)
!6268 = !DILocation(line: 0, scope: !6266)
!6269 = !DILocalVariable(name: "ctr", arg: 2, scope: !6266, file: !107, line: 24, type: !18)
!6270 = !DILocalVariable(name: "buffer", arg: 3, scope: !6266, file: !107, line: 24, type: !18)
!6271 = !DILocation(line: 25, column: 5, scope: !6266)
!6272 = !DILocation(line: 26, column: 1, scope: !6266)
!6273 = distinct !DISubprogram(name: "randombytes", scope: !107, file: !107, line: 127, type: !6274, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6274 = !DISubroutineType(types: !6275)
!6275 = !{!45, !18, !15}
!6276 = !DILocalVariable(name: "random_array", arg: 1, scope: !6273, file: !107, line: 127, type: !18)
!6277 = !DILocation(line: 0, scope: !6273)
!6278 = !DILocalVariable(name: "nbytes", arg: 2, scope: !6273, file: !107, line: 127, type: !15)
!6279 = !DILocation(line: 128, column: 15, scope: !6273)
!6280 = !DILocalVariable(name: "ret", scope: !6273, file: !107, line: 128, type: !45)
!6281 = !DILocation(line: 132, column: 5, scope: !6273)
!6282 = distinct !DISubprogram(name: "randombytes_nist", scope: !107, file: !107, line: 69, type: !6274, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6283 = !DILocalVariable(name: "x", arg: 1, scope: !6282, file: !107, line: 69, type: !18)
!6284 = !DILocation(line: 0, scope: !6282)
!6285 = !DILocalVariable(name: "xlen", arg: 2, scope: !6282, file: !107, line: 69, type: !15)
!6286 = !DILocalVariable(name: "block", scope: !6282, file: !107, line: 70, type: !116)
!6287 = !DILocation(line: 70, column: 21, scope: !6282)
!6288 = !DILocalVariable(name: "i", scope: !6282, file: !107, line: 71, type: !15)
!6289 = !DILocation(line: 73, column: 5, scope: !6282)
!6290 = !DILocation(line: 73, column: 18, scope: !6282)
!6291 = !DILocation(line: 75, column: 9, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6293, file: !107, line: 75, column: 9)
!6293 = distinct !DILexicalBlock(scope: !6282, file: !107, line: 73, column: 24)
!6294 = !DILocation(line: 75, scope: !6292)
!6295 = !DILocalVariable(name: "j", scope: !6292, file: !107, line: 75, type: !45)
!6296 = !DILocation(line: 0, scope: !6292)
!6297 = !DILocation(line: 75, column: 28, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6292, file: !107, line: 75, column: 9)
!6299 = !DILocation(line: 76, column: 18, scope: !6300)
!6300 = distinct !DILexicalBlock(scope: !6301, file: !107, line: 76, column: 18)
!6301 = distinct !DILexicalBlock(scope: !6298, file: !107, line: 75, column: 39)
!6302 = !DILocation(line: 76, column: 32, scope: !6300)
!6303 = !DILocation(line: 77, column: 17, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6300, file: !107, line: 76, column: 42)
!6305 = !DILocation(line: 77, column: 31, scope: !6304)
!6306 = !DILocation(line: 75, column: 35, scope: !6298)
!6307 = !DILocation(line: 75, column: 9, scope: !6298)
!6308 = distinct !{!6308, !6291, !6309, !244}
!6309 = !DILocation(line: 82, column: 9, scope: !6292)
!6310 = !DILocation(line: 79, column: 17, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6300, file: !107, line: 78, column: 20)
!6312 = !DILocation(line: 79, column: 30, scope: !6311)
!6313 = !DILocation(line: 80, column: 17, scope: !6311)
!6314 = !DILocation(line: 83, column: 9, scope: !6293)
!6315 = !DILocation(line: 84, column: 19, scope: !6316)
!6316 = distinct !DILexicalBlock(scope: !6293, file: !107, line: 84, column: 14)
!6317 = !DILocation(line: 85, column: 22, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6316, file: !107, line: 84, column: 26)
!6319 = !DILocation(line: 85, column: 13, scope: !6318)
!6320 = !DILocation(line: 86, column: 15, scope: !6318)
!6321 = !DILocation(line: 87, column: 18, scope: !6318)
!6322 = !DILocation(line: 88, column: 9, scope: !6318)
!6323 = !DILocation(line: 89, column: 22, scope: !6324)
!6324 = distinct !DILexicalBlock(scope: !6316, file: !107, line: 88, column: 16)
!6325 = !DILocation(line: 89, column: 13, scope: !6324)
!6326 = !DILocation(line: 90, column: 15, scope: !6324)
!6327 = !DILocation(line: 0, scope: !6316)
!6328 = distinct !{!6328, !6289, !6329, !244}
!6329 = !DILocation(line: 93, column: 5, scope: !6282)
!6330 = !DILocation(line: 94, column: 5, scope: !6282)
!6331 = !DILocation(line: 95, column: 28, scope: !6282)
!6332 = !DILocation(line: 97, column: 5, scope: !6282)
!6333 = distinct !DISubprogram(name: "randombytes_init", scope: !107, file: !107, line: 136, type: !6334, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6334 = !DISubroutineType(types: !6335)
!6335 = !{null, !18, !18, !45}
!6336 = !DILocalVariable(name: "entropy_input", arg: 1, scope: !6333, file: !107, line: 136, type: !18)
!6337 = !DILocation(line: 0, scope: !6333)
!6338 = !DILocalVariable(name: "personalization_string", arg: 2, scope: !6333, file: !107, line: 137, type: !18)
!6339 = !DILocalVariable(name: "security_strength", arg: 3, scope: !6333, file: !107, line: 138, type: !45)
!6340 = !DILocation(line: 139, column: 12, scope: !6333)
!6341 = !DILocation(line: 139, column: 5, scope: !6333)
!6342 = distinct !DISubprogram(name: "randombytes_init_nist", scope: !107, file: !107, line: 51, type: !6334, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6343 = !DILocalVariable(name: "entropy_input", arg: 1, scope: !6342, file: !107, line: 51, type: !18)
!6344 = !DILocation(line: 0, scope: !6342)
!6345 = !DILocalVariable(name: "personalization_string", arg: 2, scope: !6342, file: !107, line: 52, type: !18)
!6346 = !DILocalVariable(name: "security_strength", arg: 3, scope: !6342, file: !107, line: 53, type: !45)
!6347 = !DILocalVariable(name: "seed_material", scope: !6342, file: !107, line: 54, type: !6203)
!6348 = !DILocation(line: 54, column: 21, scope: !6342)
!6349 = !DILocation(line: 57, column: 5, scope: !6342)
!6350 = !DILocation(line: 58, column: 9, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6342, file: !107, line: 58, column: 9)
!6352 = !DILocation(line: 59, column: 9, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6351, file: !107, line: 59, column: 9)
!6354 = !DILocation(line: 59, scope: !6353)
!6355 = !DILocalVariable(name: "i", scope: !6353, file: !107, line: 59, type: !45)
!6356 = !DILocation(line: 0, scope: !6353)
!6357 = !DILocation(line: 59, column: 27, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6353, file: !107, line: 59, column: 9)
!6359 = !DILocation(line: 60, column: 33, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6358, file: !107, line: 59, column: 38)
!6361 = !DILocation(line: 60, column: 13, scope: !6360)
!6362 = !DILocation(line: 60, column: 30, scope: !6360)
!6363 = !DILocation(line: 59, column: 34, scope: !6358)
!6364 = !DILocation(line: 59, column: 9, scope: !6358)
!6365 = distinct !{!6365, !6352, !6366, !244}
!6366 = !DILocation(line: 61, column: 9, scope: !6353)
!6367 = !DILocation(line: 62, column: 5, scope: !6342)
!6368 = !DILocation(line: 63, column: 5, scope: !6342)
!6369 = !DILocation(line: 64, column: 5, scope: !6342)
!6370 = !DILocation(line: 65, column: 29, scope: !6342)
!6371 = !DILocation(line: 66, column: 1, scope: !6342)
